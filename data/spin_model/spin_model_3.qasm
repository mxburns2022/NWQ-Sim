OPENQASM 2.0;
include "qelib1.inc";
gate gate_U3_t q0,q1,q2 { sx q0; rz(-pi) q1; sx q1; rz(-pi/2) q1; cx q1,q0; rz(-0.9853981633974489) q0; sx q1; rz(2.5561944901923463) q1; cx q1,q0; rz(0.9853981633974491) q0; sx q1; cx q1,q0; rz(-pi) q0; sx q0; rz(-pi/2) q1; sx q1; rz(-pi) q1; rz(-pi) q2; sx q2; rz(-pi/2) q2; cx q2,q1; rz(-0.8000000000000002) q1; sx q2; rz(2.3707963267948977) q2; cx q2,q1; rz(0.8000000000000002) q1; sx q2; cx q2,q1; sx q1; rz(pi/2) q1; cx q1,q0; rz(0.5853981633974495) q0; sx q1; rz(2.1561944901923473) q1; cx q1,q0; rz(0.5853981633974499) q0; sx q1; cx q1,q0; rz(-pi) q0; sx q1; sx q1; rz(-pi/2) q1; sx q2; sx q2; rz(-pi/2) q2; }
qreg q51[24];
creg c3[24];
x q51[0];
x q51[2];
x q51[4];
x q51[6];
x q51[8];
x q51[10];
barrier q51[0],q51[1],q51[2],q51[3],q51[4],q51[5],q51[6],q51[7],q51[8],q51[9],q51[10],q51[11],q51[12],q51[13],q51[14],q51[15],q51[16],q51[17],q51[18],q51[19],q51[20],q51[21],q51[22],q51[23];
gate_U3_t q51[0],q51[1],q51[2];
gate_U3_t q51[4],q51[5],q51[6];
gate_U3_t q51[8],q51[9],q51[10];
gate_U3_t q51[3],q51[14],q51[15];
gate_U3_t q51[7],q51[18],q51[19];
gate_U3_t q51[11],q51[22],q51[23];
barrier q51[0],q51[1],q51[2],q51[3],q51[4],q51[5],q51[6],q51[7],q51[8],q51[9],q51[10],q51[11],q51[12],q51[13],q51[14],q51[15],q51[16],q51[17],q51[18],q51[19],q51[20],q51[21],q51[22],q51[23];
gate_U3_t q51[2],q51[3],q51[4];
gate_U3_t q51[6],q51[7],q51[8];
gate_U3_t q51[10],q51[11],q51[0];
gate_U3_t q51[1],q51[12],q51[13];
gate_U3_t q51[5],q51[16],q51[17];
gate_U3_t q51[9],q51[20],q51[21];
barrier q51[0],q51[1],q51[2],q51[3],q51[4],q51[5],q51[6],q51[7],q51[8],q51[9],q51[10],q51[11],q51[12],q51[13],q51[14],q51[15],q51[16],q51[17],q51[18],q51[19],q51[20],q51[21],q51[22],q51[23];
gate_U3_t q51[0],q51[1],q51[2];
gate_U3_t q51[4],q51[5],q51[6];
gate_U3_t q51[8],q51[9],q51[10];
gate_U3_t q51[3],q51[14],q51[15];
gate_U3_t q51[7],q51[18],q51[19];
gate_U3_t q51[11],q51[22],q51[23];
barrier q51[0],q51[1],q51[2],q51[3],q51[4],q51[5],q51[6],q51[7],q51[8],q51[9],q51[10],q51[11],q51[12],q51[13],q51[14],q51[15],q51[16],q51[17],q51[18],q51[19],q51[20],q51[21],q51[22],q51[23];
gate_U3_t q51[2],q51[3],q51[4];
gate_U3_t q51[6],q51[7],q51[8];
gate_U3_t q51[10],q51[11],q51[0];
gate_U3_t q51[1],q51[12],q51[13];
gate_U3_t q51[5],q51[16],q51[17];
gate_U3_t q51[9],q51[20],q51[21];
barrier q51[0],q51[1],q51[2],q51[3],q51[4],q51[5],q51[6],q51[7],q51[8],q51[9],q51[10],q51[11],q51[12],q51[13],q51[14],q51[15],q51[16],q51[17],q51[18],q51[19],q51[20],q51[21],q51[22],q51[23];
gate_U3_t q51[0],q51[1],q51[2];
gate_U3_t q51[4],q51[5],q51[6];
gate_U3_t q51[8],q51[9],q51[10];
gate_U3_t q51[3],q51[14],q51[15];
gate_U3_t q51[7],q51[18],q51[19];
gate_U3_t q51[11],q51[22],q51[23];
barrier q51[0],q51[1],q51[2],q51[3],q51[4],q51[5],q51[6],q51[7],q51[8],q51[9],q51[10],q51[11],q51[12],q51[13],q51[14],q51[15],q51[16],q51[17],q51[18],q51[19],q51[20],q51[21],q51[22],q51[23];
gate_U3_t q51[2],q51[3],q51[4];
gate_U3_t q51[6],q51[7],q51[8];
gate_U3_t q51[10],q51[11],q51[0];
gate_U3_t q51[1],q51[12],q51[13];
gate_U3_t q51[5],q51[16],q51[17];
gate_U3_t q51[9],q51[20],q51[21];
barrier q51[0],q51[1],q51[2],q51[3],q51[4],q51[5],q51[6],q51[7],q51[8],q51[9],q51[10],q51[11],q51[12],q51[13],q51[14],q51[15],q51[16],q51[17],q51[18],q51[19],q51[20],q51[21],q51[22],q51[23];
barrier q51[0],q51[1],q51[2],q51[3],q51[4],q51[5],q51[6],q51[7],q51[8],q51[9],q51[10],q51[11],q51[12],q51[13],q51[14],q51[15],q51[16],q51[17],q51[18],q51[19],q51[20],q51[21],q51[22],q51[23];
measure q51[0] -> c3[0];
measure q51[1] -> c3[1];
measure q51[2] -> c3[2];
measure q51[3] -> c3[3];
measure q51[4] -> c3[4];
measure q51[5] -> c3[5];
measure q51[6] -> c3[6];
measure q51[7] -> c3[7];
measure q51[8] -> c3[8];
measure q51[9] -> c3[9];
measure q51[10] -> c3[10];
measure q51[11] -> c3[11];
measure q51[12] -> c3[12];
measure q51[13] -> c3[13];
measure q51[14] -> c3[14];
measure q51[15] -> c3[15];
measure q51[16] -> c3[16];
measure q51[17] -> c3[17];
measure q51[18] -> c3[18];
measure q51[19] -> c3[19];
measure q51[20] -> c3[20];
measure q51[21] -> c3[21];
measure q51[22] -> c3[22];
measure q51[23] -> c3[23];
