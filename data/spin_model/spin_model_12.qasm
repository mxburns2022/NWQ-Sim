OPENQASM 2.0;
include "qelib1.inc";
gate gate_U3_t q0,q1,q2 { sx q0; rz(-pi) q1; sx q1; rz(-pi/2) q1; cx q1,q0; rz(-0.9853981633974489) q0; sx q1; rz(2.5561944901923463) q1; cx q1,q0; rz(0.9853981633974491) q0; sx q1; cx q1,q0; rz(-pi) q0; sx q0; rz(-pi/2) q1; sx q1; rz(-pi) q1; rz(-pi) q2; sx q2; rz(-pi/2) q2; cx q2,q1; rz(-0.8000000000000002) q1; sx q2; rz(2.3707963267948977) q2; cx q2,q1; rz(0.8000000000000002) q1; sx q2; cx q2,q1; sx q1; rz(pi/2) q1; cx q1,q0; rz(0.5853981633974495) q0; sx q1; rz(2.1561944901923473) q1; cx q1,q0; rz(0.5853981633974499) q0; sx q1; cx q1,q0; rz(-pi) q0; sx q1; sx q1; rz(-pi/2) q1; sx q2; sx q2; rz(-pi/2) q2; }
qreg q60[24];
creg c12[24];
x q60[0];
x q60[2];
x q60[4];
x q60[6];
x q60[8];
x q60[10];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[0],q60[1],q60[2];
gate_U3_t q60[4],q60[5],q60[6];
gate_U3_t q60[8],q60[9],q60[10];
gate_U3_t q60[3],q60[14],q60[15];
gate_U3_t q60[7],q60[18],q60[19];
gate_U3_t q60[11],q60[22],q60[23];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[2],q60[3],q60[4];
gate_U3_t q60[6],q60[7],q60[8];
gate_U3_t q60[10],q60[11],q60[0];
gate_U3_t q60[1],q60[12],q60[13];
gate_U3_t q60[5],q60[16],q60[17];
gate_U3_t q60[9],q60[20],q60[21];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[0],q60[1],q60[2];
gate_U3_t q60[4],q60[5],q60[6];
gate_U3_t q60[8],q60[9],q60[10];
gate_U3_t q60[3],q60[14],q60[15];
gate_U3_t q60[7],q60[18],q60[19];
gate_U3_t q60[11],q60[22],q60[23];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[2],q60[3],q60[4];
gate_U3_t q60[6],q60[7],q60[8];
gate_U3_t q60[10],q60[11],q60[0];
gate_U3_t q60[1],q60[12],q60[13];
gate_U3_t q60[5],q60[16],q60[17];
gate_U3_t q60[9],q60[20],q60[21];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[0],q60[1],q60[2];
gate_U3_t q60[4],q60[5],q60[6];
gate_U3_t q60[8],q60[9],q60[10];
gate_U3_t q60[3],q60[14],q60[15];
gate_U3_t q60[7],q60[18],q60[19];
gate_U3_t q60[11],q60[22],q60[23];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[2],q60[3],q60[4];
gate_U3_t q60[6],q60[7],q60[8];
gate_U3_t q60[10],q60[11],q60[0];
gate_U3_t q60[1],q60[12],q60[13];
gate_U3_t q60[5],q60[16],q60[17];
gate_U3_t q60[9],q60[20],q60[21];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[0],q60[1],q60[2];
gate_U3_t q60[4],q60[5],q60[6];
gate_U3_t q60[8],q60[9],q60[10];
gate_U3_t q60[3],q60[14],q60[15];
gate_U3_t q60[7],q60[18],q60[19];
gate_U3_t q60[11],q60[22],q60[23];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[2],q60[3],q60[4];
gate_U3_t q60[6],q60[7],q60[8];
gate_U3_t q60[10],q60[11],q60[0];
gate_U3_t q60[1],q60[12],q60[13];
gate_U3_t q60[5],q60[16],q60[17];
gate_U3_t q60[9],q60[20],q60[21];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[0],q60[1],q60[2];
gate_U3_t q60[4],q60[5],q60[6];
gate_U3_t q60[8],q60[9],q60[10];
gate_U3_t q60[3],q60[14],q60[15];
gate_U3_t q60[7],q60[18],q60[19];
gate_U3_t q60[11],q60[22],q60[23];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[2],q60[3],q60[4];
gate_U3_t q60[6],q60[7],q60[8];
gate_U3_t q60[10],q60[11],q60[0];
gate_U3_t q60[1],q60[12],q60[13];
gate_U3_t q60[5],q60[16],q60[17];
gate_U3_t q60[9],q60[20],q60[21];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[0],q60[1],q60[2];
gate_U3_t q60[4],q60[5],q60[6];
gate_U3_t q60[8],q60[9],q60[10];
gate_U3_t q60[3],q60[14],q60[15];
gate_U3_t q60[7],q60[18],q60[19];
gate_U3_t q60[11],q60[22],q60[23];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[2],q60[3],q60[4];
gate_U3_t q60[6],q60[7],q60[8];
gate_U3_t q60[10],q60[11],q60[0];
gate_U3_t q60[1],q60[12],q60[13];
gate_U3_t q60[5],q60[16],q60[17];
gate_U3_t q60[9],q60[20],q60[21];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[0],q60[1],q60[2];
gate_U3_t q60[4],q60[5],q60[6];
gate_U3_t q60[8],q60[9],q60[10];
gate_U3_t q60[3],q60[14],q60[15];
gate_U3_t q60[7],q60[18],q60[19];
gate_U3_t q60[11],q60[22],q60[23];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[2],q60[3],q60[4];
gate_U3_t q60[6],q60[7],q60[8];
gate_U3_t q60[10],q60[11],q60[0];
gate_U3_t q60[1],q60[12],q60[13];
gate_U3_t q60[5],q60[16],q60[17];
gate_U3_t q60[9],q60[20],q60[21];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[0],q60[1],q60[2];
gate_U3_t q60[4],q60[5],q60[6];
gate_U3_t q60[8],q60[9],q60[10];
gate_U3_t q60[3],q60[14],q60[15];
gate_U3_t q60[7],q60[18],q60[19];
gate_U3_t q60[11],q60[22],q60[23];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[2],q60[3],q60[4];
gate_U3_t q60[6],q60[7],q60[8];
gate_U3_t q60[10],q60[11],q60[0];
gate_U3_t q60[1],q60[12],q60[13];
gate_U3_t q60[5],q60[16],q60[17];
gate_U3_t q60[9],q60[20],q60[21];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[0],q60[1],q60[2];
gate_U3_t q60[4],q60[5],q60[6];
gate_U3_t q60[8],q60[9],q60[10];
gate_U3_t q60[3],q60[14],q60[15];
gate_U3_t q60[7],q60[18],q60[19];
gate_U3_t q60[11],q60[22],q60[23];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[2],q60[3],q60[4];
gate_U3_t q60[6],q60[7],q60[8];
gate_U3_t q60[10],q60[11],q60[0];
gate_U3_t q60[1],q60[12],q60[13];
gate_U3_t q60[5],q60[16],q60[17];
gate_U3_t q60[9],q60[20],q60[21];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[0],q60[1],q60[2];
gate_U3_t q60[4],q60[5],q60[6];
gate_U3_t q60[8],q60[9],q60[10];
gate_U3_t q60[3],q60[14],q60[15];
gate_U3_t q60[7],q60[18],q60[19];
gate_U3_t q60[11],q60[22],q60[23];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[2],q60[3],q60[4];
gate_U3_t q60[6],q60[7],q60[8];
gate_U3_t q60[10],q60[11],q60[0];
gate_U3_t q60[1],q60[12],q60[13];
gate_U3_t q60[5],q60[16],q60[17];
gate_U3_t q60[9],q60[20],q60[21];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[0],q60[1],q60[2];
gate_U3_t q60[4],q60[5],q60[6];
gate_U3_t q60[8],q60[9],q60[10];
gate_U3_t q60[3],q60[14],q60[15];
gate_U3_t q60[7],q60[18],q60[19];
gate_U3_t q60[11],q60[22],q60[23];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[2],q60[3],q60[4];
gate_U3_t q60[6],q60[7],q60[8];
gate_U3_t q60[10],q60[11],q60[0];
gate_U3_t q60[1],q60[12],q60[13];
gate_U3_t q60[5],q60[16],q60[17];
gate_U3_t q60[9],q60[20],q60[21];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[0],q60[1],q60[2];
gate_U3_t q60[4],q60[5],q60[6];
gate_U3_t q60[8],q60[9],q60[10];
gate_U3_t q60[3],q60[14],q60[15];
gate_U3_t q60[7],q60[18],q60[19];
gate_U3_t q60[11],q60[22],q60[23];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
gate_U3_t q60[2],q60[3],q60[4];
gate_U3_t q60[6],q60[7],q60[8];
gate_U3_t q60[10],q60[11],q60[0];
gate_U3_t q60[1],q60[12],q60[13];
gate_U3_t q60[5],q60[16],q60[17];
gate_U3_t q60[9],q60[20],q60[21];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
barrier q60[0],q60[1],q60[2],q60[3],q60[4],q60[5],q60[6],q60[7],q60[8],q60[9],q60[10],q60[11],q60[12],q60[13],q60[14],q60[15],q60[16],q60[17],q60[18],q60[19],q60[20],q60[21],q60[22],q60[23];
measure q60[0] -> c12[0];
measure q60[1] -> c12[1];
measure q60[2] -> c12[2];
measure q60[3] -> c12[3];
measure q60[4] -> c12[4];
measure q60[5] -> c12[5];
measure q60[6] -> c12[6];
measure q60[7] -> c12[7];
measure q60[8] -> c12[8];
measure q60[9] -> c12[9];
measure q60[10] -> c12[10];
measure q60[11] -> c12[11];
measure q60[12] -> c12[12];
measure q60[13] -> c12[13];
measure q60[14] -> c12[14];
measure q60[15] -> c12[15];
measure q60[16] -> c12[16];
measure q60[17] -> c12[17];
measure q60[18] -> c12[18];
measure q60[19] -> c12[19];
measure q60[20] -> c12[20];
measure q60[21] -> c12[21];
measure q60[22] -> c12[22];
measure q60[23] -> c12[23];