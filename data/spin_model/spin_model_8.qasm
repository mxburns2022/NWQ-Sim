OPENQASM 2.0;
include "qelib1.inc";
gate gate_U3_t q0,q1,q2 { sx q0; rz(-pi) q1; sx q1; rz(-pi/2) q1; cx q1,q0; rz(-0.9853981633974489) q0; sx q1; rz(2.5561944901923463) q1; cx q1,q0; rz(0.9853981633974491) q0; sx q1; cx q1,q0; rz(-pi) q0; sx q0; rz(-pi/2) q1; sx q1; rz(-pi) q1; rz(-pi) q2; sx q2; rz(-pi/2) q2; cx q2,q1; rz(-0.8000000000000002) q1; sx q2; rz(2.3707963267948977) q2; cx q2,q1; rz(0.8000000000000002) q1; sx q2; cx q2,q1; sx q1; rz(pi/2) q1; cx q1,q0; rz(0.5853981633974495) q0; sx q1; rz(2.1561944901923473) q1; cx q1,q0; rz(0.5853981633974499) q0; sx q1; cx q1,q0; rz(-pi) q0; sx q1; sx q1; rz(-pi/2) q1; sx q2; sx q2; rz(-pi/2) q2; }
qreg q56[24];
creg c8[24];
x q56[0];
x q56[2];
x q56[4];
x q56[6];
x q56[8];
x q56[10];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[0],q56[1],q56[2];
gate_U3_t q56[4],q56[5],q56[6];
gate_U3_t q56[8],q56[9],q56[10];
gate_U3_t q56[3],q56[14],q56[15];
gate_U3_t q56[7],q56[18],q56[19];
gate_U3_t q56[11],q56[22],q56[23];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[2],q56[3],q56[4];
gate_U3_t q56[6],q56[7],q56[8];
gate_U3_t q56[10],q56[11],q56[0];
gate_U3_t q56[1],q56[12],q56[13];
gate_U3_t q56[5],q56[16],q56[17];
gate_U3_t q56[9],q56[20],q56[21];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[0],q56[1],q56[2];
gate_U3_t q56[4],q56[5],q56[6];
gate_U3_t q56[8],q56[9],q56[10];
gate_U3_t q56[3],q56[14],q56[15];
gate_U3_t q56[7],q56[18],q56[19];
gate_U3_t q56[11],q56[22],q56[23];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[2],q56[3],q56[4];
gate_U3_t q56[6],q56[7],q56[8];
gate_U3_t q56[10],q56[11],q56[0];
gate_U3_t q56[1],q56[12],q56[13];
gate_U3_t q56[5],q56[16],q56[17];
gate_U3_t q56[9],q56[20],q56[21];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[0],q56[1],q56[2];
gate_U3_t q56[4],q56[5],q56[6];
gate_U3_t q56[8],q56[9],q56[10];
gate_U3_t q56[3],q56[14],q56[15];
gate_U3_t q56[7],q56[18],q56[19];
gate_U3_t q56[11],q56[22],q56[23];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[2],q56[3],q56[4];
gate_U3_t q56[6],q56[7],q56[8];
gate_U3_t q56[10],q56[11],q56[0];
gate_U3_t q56[1],q56[12],q56[13];
gate_U3_t q56[5],q56[16],q56[17];
gate_U3_t q56[9],q56[20],q56[21];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[0],q56[1],q56[2];
gate_U3_t q56[4],q56[5],q56[6];
gate_U3_t q56[8],q56[9],q56[10];
gate_U3_t q56[3],q56[14],q56[15];
gate_U3_t q56[7],q56[18],q56[19];
gate_U3_t q56[11],q56[22],q56[23];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[2],q56[3],q56[4];
gate_U3_t q56[6],q56[7],q56[8];
gate_U3_t q56[10],q56[11],q56[0];
gate_U3_t q56[1],q56[12],q56[13];
gate_U3_t q56[5],q56[16],q56[17];
gate_U3_t q56[9],q56[20],q56[21];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[0],q56[1],q56[2];
gate_U3_t q56[4],q56[5],q56[6];
gate_U3_t q56[8],q56[9],q56[10];
gate_U3_t q56[3],q56[14],q56[15];
gate_U3_t q56[7],q56[18],q56[19];
gate_U3_t q56[11],q56[22],q56[23];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[2],q56[3],q56[4];
gate_U3_t q56[6],q56[7],q56[8];
gate_U3_t q56[10],q56[11],q56[0];
gate_U3_t q56[1],q56[12],q56[13];
gate_U3_t q56[5],q56[16],q56[17];
gate_U3_t q56[9],q56[20],q56[21];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[0],q56[1],q56[2];
gate_U3_t q56[4],q56[5],q56[6];
gate_U3_t q56[8],q56[9],q56[10];
gate_U3_t q56[3],q56[14],q56[15];
gate_U3_t q56[7],q56[18],q56[19];
gate_U3_t q56[11],q56[22],q56[23];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[2],q56[3],q56[4];
gate_U3_t q56[6],q56[7],q56[8];
gate_U3_t q56[10],q56[11],q56[0];
gate_U3_t q56[1],q56[12],q56[13];
gate_U3_t q56[5],q56[16],q56[17];
gate_U3_t q56[9],q56[20],q56[21];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[0],q56[1],q56[2];
gate_U3_t q56[4],q56[5],q56[6];
gate_U3_t q56[8],q56[9],q56[10];
gate_U3_t q56[3],q56[14],q56[15];
gate_U3_t q56[7],q56[18],q56[19];
gate_U3_t q56[11],q56[22],q56[23];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[2],q56[3],q56[4];
gate_U3_t q56[6],q56[7],q56[8];
gate_U3_t q56[10],q56[11],q56[0];
gate_U3_t q56[1],q56[12],q56[13];
gate_U3_t q56[5],q56[16],q56[17];
gate_U3_t q56[9],q56[20],q56[21];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[0],q56[1],q56[2];
gate_U3_t q56[4],q56[5],q56[6];
gate_U3_t q56[8],q56[9],q56[10];
gate_U3_t q56[3],q56[14],q56[15];
gate_U3_t q56[7],q56[18],q56[19];
gate_U3_t q56[11],q56[22],q56[23];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
gate_U3_t q56[2],q56[3],q56[4];
gate_U3_t q56[6],q56[7],q56[8];
gate_U3_t q56[10],q56[11],q56[0];
gate_U3_t q56[1],q56[12],q56[13];
gate_U3_t q56[5],q56[16],q56[17];
gate_U3_t q56[9],q56[20],q56[21];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
barrier q56[0],q56[1],q56[2],q56[3],q56[4],q56[5],q56[6],q56[7],q56[8],q56[9],q56[10],q56[11],q56[12],q56[13],q56[14],q56[15],q56[16],q56[17],q56[18],q56[19],q56[20],q56[21],q56[22],q56[23];
measure q56[0] -> c8[0];
measure q56[1] -> c8[1];
measure q56[2] -> c8[2];
measure q56[3] -> c8[3];
measure q56[4] -> c8[4];
measure q56[5] -> c8[5];
measure q56[6] -> c8[6];
measure q56[7] -> c8[7];
measure q56[8] -> c8[8];
measure q56[9] -> c8[9];
measure q56[10] -> c8[10];
measure q56[11] -> c8[11];
measure q56[12] -> c8[12];
measure q56[13] -> c8[13];
measure q56[14] -> c8[14];
measure q56[15] -> c8[15];
measure q56[16] -> c8[16];
measure q56[17] -> c8[17];
measure q56[18] -> c8[18];
measure q56[19] -> c8[19];
measure q56[20] -> c8[20];
measure q56[21] -> c8[21];
measure q56[22] -> c8[22];
measure q56[23] -> c8[23];