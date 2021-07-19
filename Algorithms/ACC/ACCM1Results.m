function f = ACCM1Results();

% T%i_BF_D%j_ben 1
% T%i_BF_D%j_mal 2
% T%i_FA_D%j_ben 3
% T%i_FA_D%j_mal 4
% T%i_FB_D%j_ben 5
% T%i_FB_D%j_mal 6

for i = 1:1:6
    if i == 1
        for j = 1:1:7
            if j == 1
                R1 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R2 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R3 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R4 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R5 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R6 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R1(2:5,end);
                MasterResult(:,k + 2) = R2(2:5,end);
                MasterResult(:,k + 3) = R3(2:5,end);
                MasterResult(:,k + 4) = R4(2:5,end);
                MasterResult(:,k + 5) = R5(2:5,end);
                MasterResult(:,k + 6) = R6(2:5,end);
            end
            if j == 2
                R7 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R8 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R9 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R10 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R11 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R12 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R7(2:5,end);
                MasterResult(:,k + 2) = R8(2:5,end);
                MasterResult(:,k + 3) = R9(2:5,end);
                MasterResult(:,k + 4) = R10(2:5,end);
                MasterResult(:,k + 5) = R11(2:5,end);
                MasterResult(:,k + 6) = R12(2:5,end);
            end
            if j == 3
                R13 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R14 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R15 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R16 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R17 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R18 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R13(2:5,end);
                MasterResult(:,k + 2) = R14(2:5,end);
                MasterResult(:,k + 3) = R15(2:5,end);
                MasterResult(:,k + 4) = R16(2:5,end);
                MasterResult(:,k + 5) = R17(2:5,end);
                MasterResult(:,k + 6) = R18(2:5,end);
            end
            if j == 4
                R19 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R20 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R21 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R22 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R23 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R24 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R19(2:5,end);
                MasterResult(:,k + 2) = R20(2:5,end);
                MasterResult(:,k + 3) = R21(2:5,end);
                MasterResult(:,k + 4) = R22(2:5,end);
                MasterResult(:,k + 5) = R23(2:5,end);
                MasterResult(:,k + 6) = R24(2:5,end);
            end
            if j == 5
                R25 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R26 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R27 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R28 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R29 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R30 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R25(2:5,end);
                MasterResult(:,k + 2) = R26(2:5,end);
                MasterResult(:,k + 3) = R27(2:5,end);
                MasterResult(:,k + 4) = R28(2:5,end);
                MasterResult(:,k + 5) = R29(2:5,end);
                MasterResult(:,k + 6) = R30(2:5,end);
            end
            if j == 6
                R31 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R32 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R33 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R34 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R35 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R36 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R31(2:5,end);
                MasterResult(:,k + 2) = R32(2:5,end);
                MasterResult(:,k + 3) = R33(2:5,end);
                MasterResult(:,k + 4) = R34(2:5,end);
                MasterResult(:,k + 5) = R35(2:5,end);
                MasterResult(:,k + 6) = R36(2:5,end);
            end
            if j == 7
                R37 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R38 = readmatrix('1.11AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R39 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R40 = readmatrix('1.11AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R41 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R42 = readmatrix('1.11AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R37(2:5,end);
                MasterResult(:,k + 2) = R38(2:5,end);
                MasterResult(:,k + 3) = R39(2:5,end);
                MasterResult(:,k + 4) = R40(2:5,end);
                MasterResult(:,k + 5) = R41(2:5,end);
                MasterResult(:,k + 6) = R42(2:5,end);
            end
        end
    end
    if i == 2
        for j = 1:1:7
            if j == 1
                R43 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R44 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R45 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R46 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R47 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R48 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R43(2:5,end);
                MasterResult(:,k + 2) = R44(2:5,end);
                MasterResult(:,k + 3) = R45(2:5,end);
                MasterResult(:,k + 4) = R46(2:5,end);
                MasterResult(:,k + 5) = R47(2:5,end);
                MasterResult(:,k + 6) = R48(2:5,end);
            end
            if j == 2
                R49 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R50 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R51 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R52 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R53 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R54 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R49(2:5,end);
                MasterResult(:,k + 2) = R50(2:5,end);
                MasterResult(:,k + 3) = R51(2:5,end);
                MasterResult(:,k + 4) = R52(2:5,end);
                MasterResult(:,k + 5) = R53(2:5,end);
                MasterResult(:,k + 6) = R54(2:5,end);
            end
            if j == 3
                R55 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R56 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R57 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R58 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R59 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R60 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R55(2:5,end);
                MasterResult(:,k + 2) = R56(2:5,end);
                MasterResult(:,k + 3) = R57(2:5,end);
                MasterResult(:,k + 4) = R58(2:5,end);
                MasterResult(:,k + 5) = R59(2:5,end);
                MasterResult(:,k + 6) = R60(2:5,end);
            end
            if j == 4
                R61 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R62 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R63 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R64 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R65 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R66 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R61(2:5,end);
                MasterResult(:,k + 2) = R62(2:5,end);
                MasterResult(:,k + 3) = R63(2:5,end);
                MasterResult(:,k + 4) = R64(2:5,end);
                MasterResult(:,k + 5) = R65(2:5,end);
                MasterResult(:,k + 6) = R66(2:5,end);
            end
            if j == 5
                R67 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R68 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R69 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R70 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R71 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R72 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R67(2:5,end);
                MasterResult(:,k + 2) = R68(2:5,end);
                MasterResult(:,k + 3) = R69(2:5,end);
                MasterResult(:,k + 4) = R70(2:5,end);
                MasterResult(:,k + 5) = R71(2:5,end);
                MasterResult(:,k + 6) = R72(2:5,end);
            end
            if j == 6
                R73 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R74 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R75 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R76 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R77 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R78 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R73(2:5,end);
                MasterResult(:,k + 2) = R74(2:5,end);
                MasterResult(:,k + 3) = R75(2:5,end);
                MasterResult(:,k + 4) = R76(2:5,end);
                MasterResult(:,k + 5) = R77(2:5,end);
                MasterResult(:,k + 6) = R78(2:5,end);
            end
            if j == 7
                R79 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R80 = readmatrix('1.25AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R81 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R82 = readmatrix('1.25AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R83 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R84 = readmatrix('1.25AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R79(2:5,end);
                MasterResult(:,k + 2) = R80(2:5,end);
                MasterResult(:,k + 3) = R81(2:5,end);
                MasterResult(:,k + 4) = R82(2:5,end);
                MasterResult(:,k + 5) = R83(2:5,end);
                MasterResult(:,k + 6) = R84(2:5,end);
            end
        end
    end
    if i == 3
        for j = 1:1:7
            if j == 1
                R85 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R86 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R87 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R88 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R89 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R90 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R85(2:5,end);
                MasterResult(:,k + 2) = R86(2:5,end);
                MasterResult(:,k + 3) = R87(2:5,end);
                MasterResult(:,k + 4) = R88(2:5,end);
                MasterResult(:,k + 5) = R89(2:5,end);
                MasterResult(:,k + 6) = R90(2:5,end);
            end
            if j == 2
                R91 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R92 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R93 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R94 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R95 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R96 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R91(2:5,end);
                MasterResult(:,k + 2) = R92(2:5,end);
                MasterResult(:,k + 3) = R93(2:5,end);
                MasterResult(:,k + 4) = R94(2:5,end);
                MasterResult(:,k + 5) = R95(2:5,end);
                MasterResult(:,k + 6) = R96(2:5,end);
            end
            if j == 3
                R97 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R98 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R99 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R100 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R101 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R102 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R97(2:5,end);
                MasterResult(:,k + 2) = R98(2:5,end);
                MasterResult(:,k + 3) = R99(2:5,end);
                MasterResult(:,k + 4) = R100(2:5,end);
                MasterResult(:,k + 5) = R101(2:5,end);
                MasterResult(:,k + 6) = R102(2:5,end);
            end
            if j == 4
                R103 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R104 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R105 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R106 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R107 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R108 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R103(2:5,end);
                MasterResult(:,k + 2) = R104(2:5,end);
                MasterResult(:,k + 3) = R105(2:5,end);
                MasterResult(:,k + 4) = R106(2:5,end);
                MasterResult(:,k + 5) = R107(2:5,end);
                MasterResult(:,k + 6) = R108(2:5,end);
            end
            if j == 5
                R109 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R110 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R111 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R112 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R113 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R114 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R109(2:5,end);
                MasterResult(:,k + 2) = R110(2:5,end);
                MasterResult(:,k + 3) = R111(2:5,end);
                MasterResult(:,k + 4) = R112(2:5,end);
                MasterResult(:,k + 5) = R113(2:5,end);
                MasterResult(:,k + 6) = R114(2:5,end);
            end
            if j == 6
                R115 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R116 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R117 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R118 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R119 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R120 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R115(2:5,end);
                MasterResult(:,k + 2) = R116(2:5,end);
                MasterResult(:,k + 3) = R117(2:5,end);
                MasterResult(:,k + 4) = R118(2:5,end);
                MasterResult(:,k + 5) = R119(2:5,end);
                MasterResult(:,k + 6) = R120(2:5,end);
            end
            if j == 7
                R121 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R122 = readmatrix('1.43AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R123 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R124 = readmatrix('1.43AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R125 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R126 = readmatrix('1.43AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R121(2:5,end);
                MasterResult(:,k + 2) = R122(2:5,end);
                MasterResult(:,k + 3) = R123(2:5,end);
                MasterResult(:,k + 4) = R124(2:5,end);
                MasterResult(:,k + 5) = R125(2:5,end);
                MasterResult(:,k + 6) = R126(2:5,end);
            end
        end
    end
    if i == 4
        for j = 1:1:7
            if j == 1
                R127 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R128 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R129 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R130 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R131 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R132 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R121(2:5,end);
                MasterResult(:,k + 2) = R122(2:5,end);
                MasterResult(:,k + 3) = R123(2:5,end);
                MasterResult(:,k + 4) = R124(2:5,end);
                MasterResult(:,k + 5) = R125(2:5,end);
                MasterResult(:,k + 6) = R126(2:5,end);
            end
            if j == 2
                R133 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R134 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R135 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R136 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R137 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R138 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R133(2:5,end);
                MasterResult(:,k + 2) = R134(2:5,end);
                MasterResult(:,k + 3) = R135(2:5,end);
                MasterResult(:,k + 4) = R136(2:5,end);
                MasterResult(:,k + 5) = R137(2:5,end);
                MasterResult(:,k + 6) = R138(2:5,end);
            end
            if j == 3
                R139 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R140 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R141 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R142 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R143 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R144 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R139(2:5,end);
                MasterResult(:,k + 2) = R140(2:5,end);
                MasterResult(:,k + 3) = R141(2:5,end);
                MasterResult(:,k + 4) = R142(2:5,end);
                MasterResult(:,k + 5) = R143(2:5,end);
                MasterResult(:,k + 6) = R144(2:5,end);
            end
            if j == 4
                R145 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R146 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R147 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R148 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R149 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R150 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R145(2:5,end);
                MasterResult(:,k + 2) = R146(2:5,end);
                MasterResult(:,k + 3) = R147(2:5,end);
                MasterResult(:,k + 4) = R148(2:5,end);
                MasterResult(:,k + 5) = R149(2:5,end);
                MasterResult(:,k + 6) = R150(2:5,end);
            end
            if j == 5
                R151 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R152 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R153 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R154 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R155 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R156 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R151(2:5,end);
                MasterResult(:,k + 2) = R152(2:5,end);
                MasterResult(:,k + 3) = R153(2:5,end);
                MasterResult(:,k + 4) = R154(2:5,end);
                MasterResult(:,k + 5) = R155(2:5,end);
                MasterResult(:,k + 6) = R156(2:5,end);
            end
            if j == 6
                R157 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R158 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R159 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R160 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R161 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R162 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R157(2:5,end);
                MasterResult(:,k + 2) = R158(2:5,end);
                MasterResult(:,k + 3) = R159(2:5,end);
                MasterResult(:,k + 4) = R160(2:5,end);
                MasterResult(:,k + 5) = R161(2:5,end);
                MasterResult(:,k + 6) = R162(2:5,end);
            end
            if j == 7
                R163 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R164 = readmatrix('1.67AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R165 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R166 = readmatrix('1.67AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R167 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R168 = readmatrix('1.67AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R163(2:5,end);
                MasterResult(:,k + 2) = R164(2:5,end);
                MasterResult(:,k + 3) = R165(2:5,end);
                MasterResult(:,k + 4) = R166(2:5,end);
                MasterResult(:,k + 5) = R167(2:5,end);
                MasterResult(:,k + 6) = R168(2:5,end);
            end
        end
    end
    if i == 5
        for j = 1:1:7
            if j == 1
                R169 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R170 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R171 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R172 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R173 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R174 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R169(2:5,end);
                MasterResult(:,k + 2) = R170(2:5,end);
                MasterResult(:,k + 3) = R171(2:5,end);
                MasterResult(:,k + 4) = R172(2:5,end);
                MasterResult(:,k + 5) = R173(2:5,end);
                MasterResult(:,k + 6) = R174(2:5,end);
            end
            if j == 2
                R175 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R176 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R177 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R178 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R179 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R180 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R175(2:5,end);
                MasterResult(:,k + 2) = R176(2:5,end);
                MasterResult(:,k + 3) = R177(2:5,end);
                MasterResult(:,k + 4) = R178(2:5,end);
                MasterResult(:,k + 5) = R179(2:5,end);
                MasterResult(:,k + 6) = R180(2:5,end);
            end
            if j == 3
                R181 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R182 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R183 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R184 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R185 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R186 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R181(2:5,end);
                MasterResult(:,k + 2) = R182(2:5,end);
                MasterResult(:,k + 3) = R183(2:5,end);
                MasterResult(:,k + 4) = R184(2:5,end);
                MasterResult(:,k + 5) = R185(2:5,end);
                MasterResult(:,k + 6) = R186(2:5,end);
            end
            if j == 4
                R187 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R188 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R189 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R190 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R191 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R192 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R187(2:5,end);
                MasterResult(:,k + 2) = R188(2:5,end);
                MasterResult(:,k + 3) = R189(2:5,end);
                MasterResult(:,k + 4) = R190(2:5,end);
                MasterResult(:,k + 5) = R191(2:5,end);
                MasterResult(:,k + 6) = R192(2:5,end);
            end
            if j == 5
                R193 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R194 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R195 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R196 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R197 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R198 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R193(2:5,end);
                MasterResult(:,k + 2) = R194(2:5,end);
                MasterResult(:,k + 3) = R195(2:5,end);
                MasterResult(:,k + 4) = R196(2:5,end);
                MasterResult(:,k + 5) = R197(2:5,end);
                MasterResult(:,k + 6) = R198(2:5,end);
            end
            if j == 6
                R199 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R200 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R201 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R202 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R203 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R204 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R199(2:5,end);
                MasterResult(:,k + 2) = R200(2:5,end);
                MasterResult(:,k + 3) = R201(2:5,end);
                MasterResult(:,k + 4) = R202(2:5,end);
                MasterResult(:,k + 5) = R203(2:5,end);
                MasterResult(:,k + 6) = R204(2:5,end);
            end
            if j == 7
                R205 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R206 = readmatrix('2AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R207 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R208 = readmatrix('2AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R209 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R210 = readmatrix('2AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R205(2:5,end);
                MasterResult(:,k + 2) = R206(2:5,end);
                MasterResult(:,k + 3) = R207(2:5,end);
                MasterResult(:,k + 4) = R208(2:5,end);
                MasterResult(:,k + 5) = R209(2:5,end);
                MasterResult(:,k + 6) = R210(2:5,end);
            end
        end
    end
    if i == 6
        for j = 1:1:7
            if j == 1
                R211 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R212 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R213 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R214 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R215 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R216 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R211(2:5,end);
                MasterResult(:,k + 2) = R212(2:5,end);
                MasterResult(:,k + 3) = R213(2:5,end);
                MasterResult(:,k + 4) = R214(2:5,end);
                MasterResult(:,k + 5) = R215(2:5,end);
                MasterResult(:,k + 6) = R216(2:5,end);
            end
            if j == 2
                R217 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R218 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R219 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R220 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R221 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R222 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R217(2:5,end);
                MasterResult(:,k + 2) = R218(2:5,end);
                MasterResult(:,k + 3) = R219(2:5,end);
                MasterResult(:,k + 4) = R220(2:5,end);
                MasterResult(:,k + 5) = R221(2:5,end);
                MasterResult(:,k + 6) = R222(2:5,end);
            end
            if j == 3
                R223 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R224 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R225 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R226 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R227 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R228 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R223(2:5,end);
                MasterResult(:,k + 2) = R224(2:5,end);
                MasterResult(:,k + 3) = R225(2:5,end);
                MasterResult(:,k + 4) = R226(2:5,end);
                MasterResult(:,k + 5) = R227(2:5,end);
                MasterResult(:,k + 6) = R228(2:5,end);
            end
            if j == 4
                R229 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R230 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R231 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R232 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R233 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R234 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R229(2:5,end);
                MasterResult(:,k + 2) = R230(2:5,end);
                MasterResult(:,k + 3) = R231(2:5,end);
                MasterResult(:,k + 4) = R232(2:5,end);
                MasterResult(:,k + 5) = R233(2:5,end);
                MasterResult(:,k + 6) = R234(2:5,end);
            end
            if j == 5
                R235 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R236 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R237 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R238 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R239 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R240 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R235(2:5,end);
                MasterResult(:,k + 2) = R236(2:5,end);
                MasterResult(:,k + 3) = R237(2:5,end);
                MasterResult(:,k + 4) = R238(2:5,end);
                MasterResult(:,k + 5) = R239(2:5,end);
                MasterResult(:,k + 6) = R240(2:5,end);
            end
            if j == 6
                R241 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R242 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R243 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R244 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R245 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R246 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R241(2:5,end);
                MasterResult(:,k + 2) = R242(2:5,end);
                MasterResult(:,k + 3) = R243(2:5,end);
                MasterResult(:,k + 4) = R244(2:5,end);
                MasterResult(:,k + 5) = R245(2:5,end);
                MasterResult(:,k + 6) = R246(2:5,end);
            end
            if j == 7
                R247 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_ben.csv');
                R248 = readmatrix('2.5AF_BothFreq_Dataset' + string(j) + '_mal.csv');
                R249 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_ben.csv');
                R250 = readmatrix('2.5AF_FreqA_Dataset' + string(j) + '_mal.csv');
                R251 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_ben.csv');
                R252 = readmatrix('2.5AF_FreqB_Dataset' + string(j) + '_mal.csv');
                k = 6*(j + i*7) - 48; 
                MasterResult(:,k + 1) = R247(2:5,end);
                MasterResult(:,k + 2) = R248(2:5,end);
                MasterResult(:,k + 3) = R249(2:5,end);
                MasterResult(:,k + 4) = R250(2:5,end);
                MasterResult(:,k + 5) = R251(2:5,end);
                MasterResult(:,k + 6) = R252(2:5,end);
            end
        end
    end
end %read all csv

%% Transpose Result
MasterResultTranspose = transpose(MasterResult);

%% Reshape
MasterResultOdd      = MasterResultTranspose(1:2:end,:);  % odd matrix
MasterResultEven     = MasterResultTranspose(2:2:end,:);  % even matrix
MasterResultReshaped = [MasterResultOdd MasterResultEven];
MasterResultD1BF     = MasterResultReshaped(1:21:end,:);
MasterResultD2BF     = MasterResultReshaped(4:21:end,:);
MasterResultD3BF     = MasterResultReshaped(7:21:end,:);
MasterResultD4BF     = MasterResultReshaped(10:21:end,:);
MasterResultD5BF     = MasterResultReshaped(13:21:end,:);
MasterResultD6BF     = MasterResultReshaped(16:21:end,:);
MasterResultD7BF     = MasterResultReshaped(19:21:end,:);
MasterResultBF       = [MasterResultD1BF; MasterResultD2BF; MasterResultD3BF; MasterResultD4BF; MasterResultD5BF; MasterResultD6BF; MasterResultD7BF];
MasterResultD1FA     = MasterResultReshaped(2:21:end,:);
MasterResultD2FA     = MasterResultReshaped(5:21:end,:);
MasterResultD3FA     = MasterResultReshaped(8:21:end,:);
MasterResultD4FA     = MasterResultReshaped(11:21:end,:);
MasterResultD5FA     = MasterResultReshaped(14:21:end,:);
MasterResultD6FA     = MasterResultReshaped(17:21:end,:);
MasterResultD7FA     = MasterResultReshaped(20:21:end,:);
MasterResultFA       = [MasterResultD1FA; MasterResultD2FA; MasterResultD3FA; MasterResultD4FA; MasterResultD5FA; MasterResultD6FA; MasterResultD7FA];
MasterResultD1FB     = MasterResultReshaped(3:21:end,:);
MasterResultD2FB     = MasterResultReshaped(6:21:end,:);
MasterResultD3FB     = MasterResultReshaped(9:21:end,:);
MasterResultD4FB     = MasterResultReshaped(12:21:end,:);
MasterResultD5FB     = MasterResultReshaped(15:21:end,:);
MasterResultD6FB     = MasterResultReshaped(18:21:end,:);
MasterResultD7FB     = MasterResultReshaped(21:21:end,:);
MasterResultFB       = [MasterResultD1FB; MasterResultD2FB; MasterResultD3FB; MasterResultD4FB; MasterResultD5FB; MasterResultD6FB; MasterResultD7FB]; 
MasterResultEnd      = [MasterResultBF; MasterResultFA; MasterResultFB];

%% CSV write

csvwrite('MasterResult.csv', MasterResultEnd);

end

