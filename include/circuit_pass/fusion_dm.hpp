// ---------------------------------------------------------------------------
// NWQsim: Northwest Quantum Circuit Simulation Environment
// ---------------------------------------------------------------------------
// Ang Li, Senior Computer Scientist
// Pacific Northwest National Laboratory(PNNL), U.S.
// Homepage: http://www.angliphd.com
// GitHub repo: http://www.github.com/pnnl/DM-Sim
// PNNL-IPID: 31919-E, ECCN: EAR99, IR: PNNL-SA-143160
// GitHub repo: http://www.github.com/pnnl/DM-Sim
// PNNL-IPID: 32166, ECCN: EAR99, IR: PNNL-SA-161181
// BSD Lincese.
// ---------------------------------------------------------------------------
// File: fusion.h
// Define gate fusion functions for DM-Sim
// This is only for density matrix.
// ---------------------------------------------------------------------------
#pragma once

#include <vector>
// #include <cstring>
// #include <algorithm>

#include "../private/sim_gate.hpp"
#include "../private/config.hpp"
#include "../public/circuit.hpp"
#include "../public/util.hpp"

#include "../public/gate.hpp"

#include "../private/gate_factory/dm_gates.hpp"

namespace NWQSim
{

    // This is essentially matrix multiplication
    void fuse_gate_dm(const DMGate &g0, const DMGate &g1, DMGate &g, const IdxType dim)
    {
        for (IdxType m = 0; m < dim; m++)
        {
            for (IdxType n = 0; n < dim; n++)
            {
                g.gm_real[m * dim + n] = 0;
                g.gm_imag[m * dim + n] = 0;
                for (IdxType k = 0; k < dim; k++)
                {
                    g.gm_real[m * dim + n] += g0.gm_real[m * dim + k] * g1.gm_real[k * dim + n] -
                                              g0.gm_imag[m * dim + k] * g1.gm_imag[k * dim + n];
                    g.gm_imag[m * dim + n] += g0.gm_real[m * dim + k] * g1.gm_imag[k * dim + n] +
                                              g0.gm_imag[m * dim + k] * g1.gm_real[k * dim + n];
                }
            }
        }
    }
    // This is kronecker product
    void kron(const DMGate &g0, const DMGate &g1, DMGate &g, const IdxType dim)
    {
        for (IdxType r = 0; r < dim; r++)
        {
            for (IdxType s = 0; s < dim; s++)
            {
                for (IdxType v = 0; v < dim; v++)
                {
                    for (IdxType w = 0; w < dim; w++)
                    {
                        g.gm_real[(dim * r + v) * dim * dim + (dim * s + w)] = g0.gm_real[r * dim + s] * g1.gm_real[v * dim + w] -
                                                                               g0.gm_imag[r * dim + s] * g1.gm_imag[v * dim + w];
                        g.gm_imag[(dim * r + v) * dim * dim + (dim * s + w)] = g0.gm_real[r * dim + s] * g1.gm_imag[v * dim + w] +
                                                                               g0.gm_imag[r * dim + s] * g1.gm_real[v * dim + w];
                    }
                }
            }
        }
    }

    // This function is to fuse C4 gates
    void gate_fusion_2q_dm(const std::vector<DMGate> &circuit_in, std::vector<DMGate> &circuit_out, const IdxType n_qubits)
    {
        // prepare
        IdxType *table = new IdxType[n_qubits * n_qubits];
        bool *canfuse = new bool[n_qubits * n_qubits];
        for (IdxType i = 0; i < n_qubits * n_qubits; i++)
            table[i] = -1;
        for (IdxType i = 0; i < n_qubits * n_qubits; i++)
            canfuse[i] = false;
        circuit_out.clear();

        for (IdxType i = 0; i < circuit_in.size(); i++)
        {
            if (circuit_in[i].op_name == C2) // 1-qubit gate
            {
                IdxType qubit = circuit_in[i].qubit;
                DMGate g(circuit_in[i]);
                for (IdxType j = 0; j < n_qubits; j++)
                {
                    canfuse[j * n_qubits + qubit] = false;
                    canfuse[qubit * n_qubits + j] = false;
                }
                circuit_out.push_back(g);
            }
            if (circuit_in[i].op_name == C4) // 2-qubit gate
            {
                IdxType qubit = circuit_in[i].qubit;
                IdxType ctrl = circuit_in[i].ctrl;
                DMGate g0(circuit_in[i]);

                if (canfuse[ctrl * n_qubits + qubit] == false) // cannot fuse
                {
                    DMGate g(g0);
                    circuit_out.push_back(g);
                    table[ctrl * n_qubits + qubit] = circuit_out.size() - 1; // point for later fusion
                    for (IdxType j = 0; j < n_qubits; j++)
                    {
                        canfuse[qubit * n_qubits + j] = false;
                        canfuse[ctrl * n_qubits + j] = false;
                        canfuse[j * n_qubits + qubit] = false;
                        canfuse[j * n_qubits + ctrl] = false;
                    }
                    canfuse[ctrl * n_qubits + qubit] = true;
                }
                else // able to fuse
                {
                    DMGate &g1 = circuit_out[table[ctrl * n_qubits + qubit]];
                    DMGate final_g(C4, -1, -1);
                    fuse_gate_dm(g0, g1, final_g, 16);
                    memcpy(g1.gm_real, final_g.gm_real, 256 * sizeof(ValType));
                    memcpy(g1.gm_imag, final_g.gm_imag, 256 * sizeof(ValType));
                }
            }
            if (circuit_in[i].op_name == M) // 1-qubit measure gate
            {
                IdxType qubit = circuit_in[i].qubit;
                DMGate g(circuit_in[i]);
                for (IdxType j = 0; j < n_qubits; j++)
                {
                    canfuse[j * n_qubits + qubit] = false;
                    canfuse[qubit * n_qubits + j] = false;
                }
                circuit_out.push_back(g);
            }
            if (circuit_in[i].op_name == RESET) // 1-qubit reset gate
            {
                IdxType qubit = circuit_in[i].qubit;
                DMGate g(circuit_in[i]);
                for (IdxType j = 0; j < n_qubits; j++)
                {
                    canfuse[j * n_qubits + qubit] = false;
                    canfuse[qubit * n_qubits + j] = false;
                }
                circuit_out.push_back(g);
            }
            if (circuit_in[i].op_name == MA) // all-qubit measure gate
            {
                DMGate g(circuit_in[i]);
                for (IdxType j = 0; j < n_qubits; j++)
                    for (IdxType k = 0; k < n_qubits; k++)
                        canfuse[j * n_qubits + k] = false;
                circuit_out.push_back(g);
            }
            //*/
        }
        // clean
        delete[] table;
        delete[] canfuse;
    }

    // This function is to fuse C2 gates in a circuit
    void gate_fusion_1q_dm(const std::vector<DMGate> &circuit_in, std::vector<DMGate> &circuit_out, const IdxType n_qubits)
    {
        // prepare
        IdxType *table = new IdxType[n_qubits];
        bool *canfuse = new bool[n_qubits];
        for (IdxType i = 0; i < n_qubits; i++)
            table[i] = -1;
        for (IdxType i = 0; i < n_qubits; i++)
            canfuse[i] = false;
        circuit_out.clear();
        // parse
        for (IdxType i = 0; i < circuit_in.size(); i++)
        {
            if (circuit_in[i].op_name == C2) // 1-qubit gate
            {
                IdxType qubit = circuit_in[i].qubit;
                if (canfuse[qubit] == false) // cannot fuse
                {
                    DMGate g(circuit_in[i]);
                    circuit_out.push_back(g);
                    canfuse[qubit] = true;
                    table[qubit] = circuit_out.size() - 1; // point to this gate for later fusion
                }
                else // able to fuse
                {
                    // start to fuse circuit_in[i] and circuit_out[table[qubit]]
                    const DMGate &g0 = circuit_in[i];
                    DMGate &g1 = circuit_out[table[qubit]];

                    ValType res_real[16] = {0};
                    ValType res_imag[16] = {0};
                    for (int m = 0; m < 4; m++)
                        for (int n = 0; n < 4; n++)
                            for (int k = 0; k < 4; k++)
                            {
                                res_real[m * 4 + n] += g0.gm_real[m * 4 + k] * g1.gm_real[k * 4 + n] -
                                                       g0.gm_imag[m * 4 + k] * g1.gm_imag[k * 4 + n];
                                res_imag[m * 4 + n] += g0.gm_real[m * 4 + k] * g1.gm_imag[k * 4 + n] +
                                                       g0.gm_imag[m * 4 + k] * g1.gm_real[k * 4 + n];
                            }
                    memcpy(g1.gm_real, res_real, 16 * sizeof(ValType));
                    memcpy(g1.gm_imag, res_imag, 16 * sizeof(ValType));
                }
            }
            if (circuit_in[i].op_name == C4) // 2-qubit gate
            {
                canfuse[circuit_in[i].qubit] = false;
                canfuse[circuit_in[i].ctrl] = false;
                DMGate g(circuit_in[i]);
                circuit_out.push_back(g);
            }
            if (circuit_in[i].op_name == M) // 1-qubit measure gate
            {
                canfuse[circuit_in[i].qubit] = false;
                DMGate g(circuit_in[i]);
                circuit_out.push_back(g);
            }
            if (circuit_in[i].op_name == RESET) // 1-qubit reset gate
            {
                canfuse[circuit_in[i].qubit] = false;
                DMGate g(circuit_in[i]);
                circuit_out.push_back(g);
            }
            if (circuit_in[i].op_name == MA) // all-qubit measure gate
            {
                DMGate g(circuit_in[i]);
                circuit_out.push_back(g);
                for (IdxType q = 0; q < n_qubits; q++)
                    canfuse[q] = false;
            }
        }
        // clean
        delete[] table;
        delete[] canfuse;
    }

    std::vector<DMGate> fuse_circuit_dm(Circuit *circuit)
    {
        std::vector<DMGate> gates = getDMGates(circuit->get_gates(), circuit->num_qubits());

        if (!Config::ENABLE_FUSION)
        {
            return gates;
        }

        IdxType n_qubits = circuit->num_qubits();

        //====================== Fuse ========================
        std::vector<DMGate> tmp_circuit;
        std::vector<DMGate> fused_circuit;

        gate_fusion_1q_dm(gates, tmp_circuit, n_qubits);
        gate_fusion_2q_dm(tmp_circuit, fused_circuit, n_qubits);

        return fused_circuit;
    }

} // end of NWQSim