OPENQASM 2.0;
include "qelib1.inc";
gate gate_U3_t q0,q1,q2 { sx q0; rz(-pi) q1; sx q1; rz(-pi/2) q1; cx q1,q0; rz(-0.9853981633974489) q0; sx q1; rz(2.5561944901923463) q1; cx q1,q0; rz(0.9853981633974491) q0; sx q1; cx q1,q0; rz(-pi) q0; sx q0; rz(-pi/2) q1; sx q1; rz(-pi) q1; rz(-pi) q2; sx q2; rz(-pi/2) q2; cx q2,q1; rz(-0.8000000000000002) q1; sx q2; rz(2.3707963267948977) q2; cx q2,q1; rz(0.8000000000000002) q1; sx q2; cx q2,q1; sx q1; rz(pi/2) q1; cx q1,q0; rz(0.5853981633974495) q0; sx q1; rz(2.1561944901923473) q1; cx q1,q0; rz(0.5853981633974499) q0; sx q1; cx q1,q0; rz(-pi) q0; sx q1; sx q1; rz(-pi/2) q1; sx q2; sx q2; rz(-pi/2) q2; }
qreg q49[24];
creg c1[24];
x q49[0];
x q49[2];
x q49[4];
x q49[6];
x q49[8];
x q49[10];
barrier q49[0],q49[1],q49[2],q49[3],q49[4],q49[5],q49[6],q49[7],q49[8],q49[9],q49[10],q49[11],q49[12],q49[13],q49[14],q49[15],q49[16],q49[17],q49[18],q49[19],q49[20],q49[21],q49[22],q49[23];
gate_U3_t q49[0],q49[1],q49[2];
gate_U3_t q49[4],q49[5],q49[6];
gate_U3_t q49[8],q49[9],q49[10];
gate_U3_t q49[3],q49[14],q49[15];
gate_U3_t q49[7],q49[18],q49[19];
gate_U3_t q49[11],q49[22],q49[23];
barrier q49[0],q49[1],q49[2],q49[3],q49[4],q49[5],q49[6],q49[7],q49[8],q49[9],q49[10],q49[11],q49[12],q49[13],q49[14],q49[15],q49[16],q49[17],q49[18],q49[19],q49[20],q49[21],q49[22],q49[23];
gate_U3_t q49[2],q49[3],q49[4];
gate_U3_t q49[6],q49[7],q49[8];
gate_U3_t q49[10],q49[11],q49[0];
gate_U3_t q49[1],q49[12],q49[13];
gate_U3_t q49[5],q49[16],q49[17];
gate_U3_t q49[9],q49[20],q49[21];
barrier q49[0],q49[1],q49[2],q49[3],q49[4],q49[5],q49[6],q49[7],q49[8],q49[9],q49[10],q49[11],q49[12],q49[13],q49[14],q49[15],q49[16],q49[17],q49[18],q49[19],q49[20],q49[21],q49[22],q49[23];
barrier q49[0],q49[1],q49[2],q49[3],q49[4],q49[5],q49[6],q49[7],q49[8],q49[9],q49[10],q49[11],q49[12],q49[13],q49[14],q49[15],q49[16],q49[17],q49[18],q49[19],q49[20],q49[21],q49[22],q49[23];
measure q49[0] -> c1[0];
measure q49[1] -> c1[1];
measure q49[2] -> c1[2];
measure q49[3] -> c1[3];
measure q49[4] -> c1[4];
measure q49[5] -> c1[5];
measure q49[6] -> c1[6];
measure q49[7] -> c1[7];
measure q49[8] -> c1[8];
measure q49[9] -> c1[9];
measure q49[10] -> c1[10];
measure q49[11] -> c1[11];
measure q49[12] -> c1[12];
measure q49[13] -> c1[13];
measure q49[14] -> c1[14];
measure q49[15] -> c1[15];
measure q49[16] -> c1[16];
measure q49[17] -> c1[17];
measure q49[18] -> c1[18];
measure q49[19] -> c1[19];
measure q49[20] -> c1[20];
measure q49[21] -> c1[21];
measure q49[22] -> c1[22];
measure q49[23] -> c1[23];
