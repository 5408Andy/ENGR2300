% original A matrix with extracted coefficients and constants
A = [59 -13 -1 50; -13 33 -5 0; -1 -5 16 0];

% elementary matrices
% R_1 = R_1 * (1/59)
E1 = [1/59 0 0; 0 1 0; 0 0 1];
A_2 = E1 * A;
% R_2 = R_2 * 13R_1
E2 = [1 0 0; 13 1 0; 0 0 1];
A_3 = E2*A_2;
% R_3 = R_3 + R_1
E3 = [1 0 0; 0 1 0; 1 0 1];
A_4 = E3*A_3;
% R_2 = (59/1778) * R_2 
E4 = [1 0 0; 0 59/1778 0; 0 0 1];
A_5 = E4 * A_4;
% R1 = R1 + (13/59) * R2 
E5 = [1 13/59 0; 0 1 0; 0 0 1];
A_6 = E5 * A_5;
% R3 = R3 + (308/59) * R2 
E6 = [1 0 0; 0  1 0; 0 308/59 1];
A_7 = E6 * A_6;
% R3 = (127/1915) * R3 
E7 = [1 0 0; 0 1 0; 0 0 127/1915];
A_8 = E7 * A_7;
%  R1 = R1 + (7/127) * R3 
E8 = [1 0 7/127; 0 1 0; 0 0 1];
A_9 = E8 * A_8;
% R2 = R2 + (22/127) * R3 
E9 = [1 0 0; 0 1 22/127; 0 0 1];
A_10 = E9 * A_9;

disp('The elementary matrix result is:')
disp(A_10)

% rref command which obtains are missing currents the quickest
B = rref(A);

disp('The rref() command matrix result is:')
disp(B)



