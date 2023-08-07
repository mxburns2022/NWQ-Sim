OPENQASM 2.0;
include "qelib1.inc";
gate gate_U3_t q0,q1,q2 { sx q0; rz(-pi) q1; sx q1; rz(-pi/2) q1; cx q1,q0; rz(-0.9853981633974489) q0; sx q1; rz(2.5561944901923463) q1; cx q1,q0; rz(0.9853981633974491) q0; sx q1; cx q1,q0; rz(-pi) q0; sx q0; rz(-pi/2) q1; sx q1; rz(-pi) q1; rz(-pi) q2; sx q2; rz(-pi/2) q2; cx q2,q1; rz(-0.8000000000000002) q1; sx q2; rz(2.3707963267948977) q2; cx q2,q1; rz(0.8000000000000002) q1; sx q2; cx q2,q1; sx q1; rz(pi/2) q1; cx q1,q0; rz(0.5853981633974495) q0; sx q1; rz(2.1561944901923473) q1; cx q1,q0; rz(0.5853981633974499) q0; sx q1; cx q1,q0; rz(-pi) q0; sx q1; sx q1; rz(-pi/2) q1; sx q2; sx q2; rz(-pi/2) q2; }
qreg q52[24];
creg c4[24];
x q52[0];
x q52[2];
x q52[4];
x q52[6];
x q52[8];
x q52[10];
barrier q52[0],q52[1],q52[2],q52[3],q52[4],q52[5],q52[6],q52[7],q52[8],q52[9],q52[10],q52[11],q52[12],q52[13],q52[14],q52[15],q52[16],q52[17],q52[18],q52[19],q52[20],q52[21],q52[22],q52[23];
gate_U3_t q52[0],q52[1],q52[2];
gate_U3_t q52[4],q52[5],q52[6];
gate_U3_t q52[8],q52[9],q52[10];
gate_U3_t q52[3],q52[14],q52[15];
gate_U3_t q52[7],q52[18],q52[19];
gate_U3_t q52[11],q52[22],q52[23];
barrier q52[0],q52[1],q52[2],q52[3],q52[4],q52[5],q52[6],q52[7],q52[8],q52[9],q52[10],q52[11],q52[12],q52[13],q52[14],q52[15],q52[16],q52[17],q52[18],q52[19],q52[20],q52[21],q52[22],q52[23];
gate_U3_t q52[2],q52[3],q52[4];
gate_U3_t q52[6],q52[7],q52[8];
gate_U3_t q52[10],q52[11],q52[0];
gate_U3_t q52[1],q52[12],q52[13];
gate_U3_t q52[5],q52[16],q52[17];
gate_U3_t q52[9],q52[20],q52[21];
barrier q52[0],q52[1],q52[2],q52[3],q52[4],q52[5],q52[6],q52[7],q52[8],q52[9],q52[10],q52[11],q52[12],q52[13],q52[14],q52[15],q52[16],q52[17],q52[18],q52[19],q52[20],q52[21],q52[22],q52[23];
gate_U3_t q52[0],q52[1],q52[2];
gate_U3_t q52[4],q52[5],q52[6];
gate_U3_t q52[8],q52[9],q52[10];
gate_U3_t q52[3],q52[14],q52[15];
gate_U3_t q52[7],q52[18],q52[19];
gate_U3_t q52[11],q52[22],q52[23];
barrier q52[0],q52[1],q52[2],q52[3],q52[4],q52[5],q52[6],q52[7],q52[8],q52[9],q52[10],q52[11],q52[12],q52[13],q52[14],q52[15],q52[16],q52[17],q52[18],q52[19],q52[20],q52[21],q52[22],q52[23];
gate_U3_t q52[2],q52[3],q52[4];
gate_U3_t q52[6],q52[7],q52[8];
gate_U3_t q52[10],q52[11],q52[0];
gate_U3_t q52[1],q52[12],q52[13];
gate_U3_t q52[5],q52[16],q52[17];
gate_U3_t q52[9],q52[20],q52[21];
barrier q52[0],q52[1],q52[2],q52[3],q52[4],q52[5],q52[6],q52[7],q52[8],q52[9],q52[10],q52[11],q52[12],q52[13],q52[14],q52[15],q52[16],q52[17],q52[18],q52[19],q52[20],q52[21],q52[22],q52[23];
gate_U3_t q52[0],q52[1],q52[2];
gate_U3_t q52[4],q52[5],q52[6];
gate_U3_t q52[8],q52[9],q52[10];
gate_U3_t q52[3],q52[14],q52[15];
gate_U3_t q52[7],q52[18],q52[19];
gate_U3_t q52[11],q52[22],q52[23];
barrier q52[0],q52[1],q52[2],q52[3],q52[4],q52[5],q52[6],q52[7],q52[8],q52[9],q52[10],q52[11],q52[12],q52[13],q52[14],q52[15],q52[16],q52[17],q52[18],q52[19],q52[20],q52[21],q52[22],q52[23];
gate_U3_t q52[2],q52[3],q52[4];
gate_U3_t q52[6],q52[7],q52[8];
gate_U3_t q52[10],q52[11],q52[0];
gate_U3_t q52[1],q52[12],q52[13];
gate_U3_t q52[5],q52[16],q52[17];
gate_U3_t q52[9],q52[20],q52[21];
barrier q52[0],q52[1],q52[2],q52[3],q52[4],q52[5],q52[6],q52[7],q52[8],q52[9],q52[10],q52[11],q52[12],q52[13],q52[14],q52[15],q52[16],q52[17],q52[18],q52[19],q52[20],q52[21],q52[22],q52[23];
gate_U3_t q52[0],q52[1],q52[2];
gate_U3_t q52[4],q52[5],q52[6];
gate_U3_t q52[8],q52[9],q52[10];
gate_U3_t q52[3],q52[14],q52[15];
gate_U3_t q52[7],q52[18],q52[19];
gate_U3_t q52[11],q52[22],q52[23];
barrier q52[0],q52[1],q52[2],q52[3],q52[4],q52[5],q52[6],q52[7],q52[8],q52[9],q52[10],q52[11],q52[12],q52[13],q52[14],q52[15],q52[16],q52[17],q52[18],q52[19],q52[20],q52[21],q52[22],q52[23];
gate_U3_t q52[2],q52[3],q52[4];
gate_U3_t q52[6],q52[7],q52[8];
gate_U3_t q52[10],q52[11],q52[0];
gate_U3_t q52[1],q52[12],q52[13];
gate_U3_t q52[5],q52[16],q52[17];
gate_U3_t q52[9],q52[20],q52[21];
barrier q52[0],q52[1],q52[2],q52[3],q52[4],q52[5],q52[6],q52[7],q52[8],q52[9],q52[10],q52[11],q52[12],q52[13],q52[14],q52[15],q52[16],q52[17],q52[18],q52[19],q52[20],q52[21],q52[22],q52[23];
barrier q52[0],q52[1],q52[2],q52[3],q52[4],q52[5],q52[6],q52[7],q52[8],q52[9],q52[10],q52[11],q52[12],q52[13],q52[14],q52[15],q52[16],q52[17],q52[18],q52[19],q52[20],q52[21],q52[22],q52[23];
measure q52[0] -> c4[0];
measure q52[1] -> c4[1];
measure q52[2] -> c4[2];
measure q52[3] -> c4[3];
measure q52[4] -> c4[4];
measure q52[5] -> c4[5];
measure q52[6] -> c4[6];
measure q52[7] -> c4[7];
measure q52[8] -> c4[8];
measure q52[9] -> c4[9];
measure q52[10] -> c4[10];
measure q52[11] -> c4[11];
measure q52[12] -> c4[12];
measure q52[13] -> c4[13];
measure q52[14] -> c4[14];
measure q52[15] -> c4[15];
measure q52[16] -> c4[16];
measure q52[17] -> c4[17];
measure q52[18] -> c4[18];
measure q52[19] -> c4[19];
measure q52[20] -> c4[20];
measure q52[21] -> c4[21];
measure q52[22] -> c4[22];
measure q52[23] -> c4[23];
