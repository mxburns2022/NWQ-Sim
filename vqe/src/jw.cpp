#include <iostream>
#include "transform/transform.hpp"

namespace NWQSim {
  namespace VQE {
    void jwFermionToPauliSingle (
    IdxType n_occ,
    IdxType n_virt,
    FermionOperator ferm_op,
    std::vector<PauliOperator>& output) {
  size_t qubit_index = ferm_op.qubitIndex(n_occ, n_virt);
  std::stringstream ss1;
  std::stringstream ss2;
  for (size_t i = 0; i < qubit_index; i++) {
    ss1 << "Z";
    ss2 << "Z";
  }
  ss1 << "X";
  ss2 << "Y";
  for (size_t i = qubit_index + 1; i < 2 * (n_occ + n_virt); i++) {
    ss1 << "I";
    ss2 << "I";
  }
  std::string str1 = ss1.str();
  std::reverse(str1.begin(), str1.end());
  std::string str2 = ss2.str();
  std::reverse(str2.begin(), str2.end());
  // we also want to subtract a, adagger
  output.push_back(PauliOperator(str1, 0.5));
  int sign = (ferm_op.getType() == Annihilation) - (ferm_op.getType() == Creation);
  output.push_back(PauliOperator(str2, std::complex(0.0, 0.5 * sign)));
}

void jwFermionToPauliSinglePair (
    size_t n_occ,
    size_t n_virt,
    const FermionOperator& ap_dagger,
    const FermionOperator& aq,
    std::vector<std::vector<PauliOperator> >& output,
    bool hermitian) {
  assert(ap_dagger.getType() == Creation);
  assert(aq.getType() == Annihilation);
  std::vector<PauliOperator> local_result;
  local_result.reserve(4);
  std::vector<PauliOperator> ap_dag_paulis;
  jwFermionToPauliSingle(n_occ, n_virt, ap_dagger, ap_dag_paulis);
  std::vector<PauliOperator> aq_paulis;
  jwFermionToPauliSingle(n_occ, n_virt, aq, aq_paulis);
  std::complex<ValType> fermicoeff = ap_dagger.getCoeff();
  for (size_t i = 0; i < 4; i ++) {
    int i1 = (i & (1 << 0)) >> 0;
    int i2 = (i & (1 << 1)) >> 1;
    PauliOperator p_op = ap_dag_paulis[i1] * 
                         aq_paulis[i2];
    std::complex<ValType> p_coeff = fermicoeff * p_op.getCoeff();
    if (hermitian) {
      p_op.setCoeff(std::complex(0.0,  p_coeff.imag() * 2) * std::complex(0.0, -1.0));
    } else {
      p_op.setCoeff(p_coeff);
    }
    local_result.push_back(p_op);
  }
  output.push_back(local_result);
}

void jwFermionToPauliDoublePair (
    size_t n_occ,
    size_t n_virt,
    FermionOperator ap_dagger,
    FermionOperator aq_dagger,
    FermionOperator ar,
    FermionOperator as,
    std::vector<std::vector<PauliOperator> >& output,
    bool hermitian = false) {
  std::vector<PauliOperator> local_result;
  local_result.reserve(16);
  assert(ap_dagger.getType() == Creation);
  assert(aq_dagger.getType() == Creation);
  assert(ar.getType() == Annihilation);
  assert(as.getType() == Annihilation);
  std::vector<PauliOperator> ap_dag_paulis;
  jwFermionToPauliSingle(n_occ, n_virt, ap_dagger, ap_dag_paulis);
  std::vector<PauliOperator> aq_dag_paulis;
  jwFermionToPauliSingle(n_occ, n_virt, aq_dagger, aq_dag_paulis);
  std::vector<PauliOperator> ar_paulis;
  jwFermionToPauliSingle(n_occ, n_virt, ar, ar_paulis);
  std::vector<PauliOperator> as_paulis;
  jwFermionToPauliSingle(n_occ, n_virt, as, as_paulis);
  std::complex<ValType> fermicoeff = ap_dagger.getCoeff();
  // std::cout << fermicoeff << std::endl;
  for (size_t i = 0; i < 16; i ++) {
    int i1 = (i & (1 << 0)) >> 0;
    int i2 = (i & (1 << 1)) >> 1;
    int i4 = (i & (1 << 2)) >> 2;
    int i3 = (i & (1 << 3)) >> 3;

    PauliOperator p_op = ap_dag_paulis[i1] * 
                         aq_dag_paulis[i2] * 
                         ar_paulis[i3] *
                         as_paulis[i4];
    std::complex<ValType> p_coeff = fermicoeff * p_op.getCoeff();
    if (hermitian) {
      p_op.setCoeff(std::complex(0.0,  p_coeff.imag() * 2) * std::complex(0.0, 1.0));
    } else {
      p_op.setCoeff(p_coeff);
    }
    local_result.push_back(p_op);
  }
  output.push_back(local_result);
}
void getJordanWignerTransform(
    const MolecularEnvironment& env,
    const std::vector<std::vector<FermionOperator> >& input,
    std::vector<std::vector<PauliOperator> >& output,
    bool hermitian
    ) {
  std::vector<std::vector<PauliOperator> > temp_output = output;
  for (auto& fermion_product: input) {
    if (fermion_product.size() == 2) {
      // continue;
      jwFermionToPauliSinglePair(
        env.n_occ,
        env.n_virt,
        fermion_product[0], 
        fermion_product[1],
        temp_output,
        hermitian);
    } else if (fermion_product.size() == 4) {
      jwFermionToPauliDoublePair(
        env.n_occ,
        env.n_virt,
        fermion_product[0], 
        fermion_product[1],
        fermion_product[2],
        fermion_product[3],
        temp_output,
        hermitian);
    }
  }
  if (hermitian) {
    output = temp_output;
    return;
  }
  PauliMap coeffmap;
  output.resize(1);
  for (auto& paulilist: temp_output) {
    
    for (PauliOperator& op: paulilist) {
      if (coeffmap.find(op) == coeffmap.end()) {
        coeffmap[op] = 0.0;  
      }
      coeffmap[op] += op.getCoeff();
    }
  }
  for (auto& op_pair: coeffmap) {
    if (op_pair.second == std::complex<ValType>(0.0, 0.0)) {
      continue;
    }
    output[0].push_back(op_pair.first);
    output[0].back().setCoeff(op_pair.second);
  }
}
  }; // namespace VQE 
}; // namespace NWQSim