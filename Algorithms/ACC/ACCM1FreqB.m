function f = ACCM1FreqB();
start1()
start2()
start3()
start4()
start5()
start6()
start7()
start8()
start9()
start10()
start11()
start12()


function f = start1()
clear;
clc;
sims = 0;
resultM = [];
datapoint = 1;
for m = 1:1:7
    
    datasetFolder = sprintf('dataset_%d',m)
    cd(datasetFolder);
    
%     %for frequency a
%     for n = sims+1:1:sims+55
%         simFolder = sprintf('sim_%d_%da',n,m);
%         cd(simFolder);
%         for day = 1:1:7
%             [finalPilferer, TP, TN, FP, FN] = AC1(day, n);
%             tempM = [finalPilferer; TP; TN; FP; FN];
%             resultM(:,datapoint) = tempM(:,1);
%             datapoint = datapoint + 1;
%         end
%         cd ..
%     end
%     %end of freq a
    
    %for frequency b
    for n = sims+56:1:sims+110
        simFolder = sprintf('sim_%d_%db',n,m);
        cd(simFolder);
        for day = 1:1:7
            [finalPilferer, TP, TN, FP, FN] = AC1(day, n);
            tempM = [finalPilferer; TP; TN; FP; FN];
            resultM(:,datapoint) = tempM(:,1);
            datapoint = datapoint + 1;
        end
        cd ..
    end
    % end of freq b
    
    cd ..
    sims = sims + 110;
end %AC1

%writing for dataset

count = 0;
for i = 1:1:7 
    filename = sprintf('2AF_FreqB_Dataset%d_ben.csv',i);
    %resultMcut = resultM(:,1+count:770+count);   % for running both freqs
        resultMcut = resultM(:,1+count:385+count);     % for running one freq
    resultMcut = [resultMcut sum(resultMcut,2)];
    csvwrite(filename, resultMcut);
    %count = count + 770; % for running both freq
          count = count + 385; % for running one freq
end

end %2BenfreqB

function f = start2()
clear;
clc;
sims = 0;
resultM = [];
datapoint = 1;
for m = 1:1:7
    
    datasetFolder = sprintf('dataset_%d',m)
    cd(datasetFolder);
    
%     %for frequency a
%     for n = sims+1:1:sims+55
%         simFolder = sprintf('sim_%d_%da',n,m);
%         cd(simFolder);
%         for day = 1:1:7
%             [finalPilferer, TP, TN, FP, FN] = AC2(day, n);
%             tempM = [finalPilferer; TP; TN; FP; FN];
%             resultM(:,datapoint) = tempM(:,1);
%             datapoint = datapoint + 1;
%         end
%         cd ..
%     end
%     %end of freq a
    
    %for frequency b
    for n = sims+56:1:sims+110
        simFolder = sprintf('sim_%d_%db',n,m);
        cd(simFolder);
        for day = 1:1:7
            [finalPilferer, TP, TN, FP, FN] = AC2(day, n);
            tempM = [finalPilferer; TP; TN; FP; FN];
            resultM(:,datapoint) = tempM(:,1);
            datapoint = datapoint + 1;
        end
        cd ..
    end
    % end of freq b
    
    cd ..
    sims = sims + 110;
end %AC2

%writing for dataset

count = 0;
for i = 1:1:7 
    filename = sprintf('2AF_FreqB_Dataset%d_mal.csv',i);
    %resultMcut = resultM(:,1+count:770+count);   % for running both freqs
        resultMcut = resultM(:,1+count:385+count);     % for running one freq
    resultMcut = [resultMcut sum(resultMcut,2)];
    csvwrite(filename, resultMcut);
    %count = count + 770; % for running both freq
         count = count + 385; % for running one freq
end

end %2MalfreqB

function f = start3()
clear;
clc;
sims = 0;
resultM = [];
datapoint = 1;
for m = 1:1:7
    
    datasetFolder = sprintf('dataset_%d',m)
    cd(datasetFolder);
    
%     %for frequency a
%     for n = sims+1:1:sims+55
%         simFolder = sprintf('sim_%d_%da',n,m);
%         cd(simFolder);
%         for day = 1:1:7
%             [finalPilferer, TP, TN, FP, FN] = AC3(day, n);
%             tempM = [finalPilferer; TP; TN; FP; FN];
%             resultM(:,datapoint) = tempM(:,1);
%             datapoint = datapoint + 1;
%         end
%         cd ..
%     end
%     %end of freq a
    
    %for frequency b
    for n = sims+56:1:sims+110
        simFolder = sprintf('sim_%d_%db',n,m);
        cd(simFolder);
        for day = 1:1:7
            [finalPilferer, TP, TN, FP, FN] = AC3(day, n);
            tempM = [finalPilferer; TP; TN; FP; FN];
            resultM(:,datapoint) = tempM(:,1);
            datapoint = datapoint + 1;
        end
        cd ..
    end
    % end of freq b
    
    cd ..
    sims = sims + 110;
end %AC3

%writing for dataset

count = 0;
for i = 1:1:7 
    filename = sprintf('2.5AF_FreqB_Dataset%d_ben.csv',i);
    %resultMcut = resultM(:,1+count:770+count);   % for running both freqs
        resultMcut = resultM(:,1+count:385+count);     % for running one freq
    resultMcut = [resultMcut sum(resultMcut,2)];
    csvwrite(filename, resultMcut);
    %count = count + 770; % for running both freq
          count = count + 385; % for running one freq
end

end %2.5BenfreqB

function f = start4()
clear;
clc;
sims = 0;
resultM = [];
datapoint = 1;
for m = 1:1:7
    
    datasetFolder = sprintf('dataset_%d',m)
    cd(datasetFolder);
    
%     %for frequency a
%     for n = sims+1:1:sims+55
%         simFolder = sprintf('sim_%d_%da',n,m);
%         cd(simFolder);
%         for day = 1:1:7
%             [finalPilferer, TP, TN, FP, FN] = AC4(day, n);
%             tempM = [finalPilferer; TP; TN; FP; FN];
%             resultM(:,datapoint) = tempM(:,1);
%             datapoint = datapoint + 1;
%         end
%         cd ..
%     end
%     %end of freq a
    
    %for frequency b
    for n = sims+56:1:sims+110
        simFolder = sprintf('sim_%d_%db',n,m);
        cd(simFolder);
        for day = 1:1:7
            [finalPilferer, TP, TN, FP, FN] = AC4(day, n);
            tempM = [finalPilferer; TP; TN; FP; FN];
            resultM(:,datapoint) = tempM(:,1);
            datapoint = datapoint + 1;
        end
        cd ..
    end
    %end of freq b
    
    cd ..
    sims = sims + 110;
end %AC4

%writing for dataset

count = 0;
for i = 1:1:7 
    filename = sprintf('2.5AF_FreqB_Dataset%d_mal.csv',i);
    %resultMcut = resultM(:,1+count:770+count);   % for running both freqs
        resultMcut = resultM(:,1+count:385+count);     % for running one freq
    resultMcut = [resultMcut sum(resultMcut,2)];
    csvwrite(filename, resultMcut);
    %count = count + 770; % for running both freq
          count = count + 385; % for running one freq
end

end %2.5MalfreqB

function f = start5()
clear;
clc;
sims = 0;
resultM = [];
datapoint = 1;
for m = 1:1:7
    
    datasetFolder = sprintf('dataset_%d',m)
    cd(datasetFolder);
    
%     %for frequency a
%     for n = sims+1:1:sims+55
%         simFolder = sprintf('sim_%d_%da',n,m);
%         cd(simFolder);
%         for day = 1:1:7
%             [finalPilferer, TP, TN, FP, FN] = AC5(day, n);
%             tempM = [finalPilferer; TP; TN; FP; FN];
%             resultM(:,datapoint) = tempM(:,1);
%             datapoint = datapoint + 1;
%         end
%         cd ..
%     end
%     %end of freq a
    
    %for frequency b
    for n = sims+56:1:sims+110
        simFolder = sprintf('sim_%d_%db',n,m);
        cd(simFolder);
        for day = 1:1:7
            [finalPilferer, TP, TN, FP, FN] = AC5(day, n);
            tempM = [finalPilferer; TP; TN; FP; FN];
            resultM(:,datapoint) = tempM(:,1);
            datapoint = datapoint + 1;
        end
        cd ..
    end
    % end of freq b
    
    cd ..
    sims = sims + 110;
end %AC5

%writing for dataset

count = 0;
for i = 1:1:7 
    filename = sprintf('1.67AF_FreqB_Dataset%d_ben.csv',i);
    %resultMcut = resultM(:,1+count:770+count);   % for running both freqs
        resultMcut = resultM(:,1+count:385+count);     % for running one freq
    resultMcut = [resultMcut sum(resultMcut,2)];
    csvwrite(filename, resultMcut);
    %count = count + 770; % for running both freq
          count = count + 385; % for running one freq
end

end %1.67BenfreqB

function f = start6()
clear;
clc;
sims = 0;
resultM = [];
datapoint = 1;
for m = 1:1:7
    
    datasetFolder = sprintf('dataset_%d',m)
    cd(datasetFolder);
    
%     %for frequency a
%     for n = sims+1:1:sims+55
%         simFolder = sprintf('sim_%d_%da',n,m);
%         cd(simFolder);
%         for day = 1:1:7
%             [finalPilferer, TP, TN, FP, FN] = AC6(day, n);
%             tempM = [finalPilferer; TP; TN; FP; FN];
%             resultM(:,datapoint) = tempM(:,1);
%             datapoint = datapoint + 1;
%         end
%         cd ..
%     end
%     %end of freq a
    
    %for frequency b
    for n = sims+56:1:sims+110
        simFolder = sprintf('sim_%d_%db',n,m);
        cd(simFolder);
        for day = 1:1:7
            [finalPilferer, TP, TN, FP, FN] = AC6(day, n);
            tempM = [finalPilferer; TP; TN; FP; FN];
            resultM(:,datapoint) = tempM(:,1);
            datapoint = datapoint + 1;
        end
        cd ..
    end
    % end of freq b
    
    cd ..
    sims = sims + 110;
end %AC6

%writing for dataset

count = 0;
for i = 1:1:7 
    filename = sprintf('1.67AF_FreqB_Dataset%d_mal.csv',i);
    %resultMcut = resultM(:,1+count:770+count);   % for running both freqs
        resultMcut = resultM(:,1+count:385+count);     % for running one freq
    resultMcut = [resultMcut sum(resultMcut,2)];
    csvwrite(filename, resultMcut);
    %count = count + 770; % for running both freq
          count = count + 385; % for running one freq
end

end %1.67MalfreqB

function f = start7()
clear;
clc;
sims = 0;
resultM = [];
datapoint = 1;
for m = 1:1:7
    
    datasetFolder = sprintf('dataset_%d',m)
    cd(datasetFolder);
    
%     %for frequency a
%     for n = sims+1:1:sims+55
%         simFolder = sprintf('sim_%d_%da',n,m);
%         cd(simFolder);
%         for day = 1:1:7
%             [finalPilferer, TP, TN, FP, FN] = AC7(day, n);
%             tempM = [finalPilferer; TP; TN; FP; FN];
%             resultM(:,datapoint) = tempM(:,1);
%             datapoint = datapoint + 1;
%         end
%         cd ..
%     end
%     %end of freq a
    
    %for frequency b
    for n = sims+56:1:sims+110
        simFolder = sprintf('sim_%d_%db',n,m);
        cd(simFolder);
        for day = 1:1:7
            [finalPilferer, TP, TN, FP, FN] = AC7(day, n);
            tempM = [finalPilferer; TP; TN; FP; FN];
            resultM(:,datapoint) = tempM(:,1);
            datapoint = datapoint + 1;
        end
        cd ..
    end
    %end of freq b
    
    cd ..
    sims = sims + 110;
end %AC7

%writing for dataset

count = 0;
for i = 1:1:7 
    filename = sprintf('1.43AF_FreqB_Dataset%d_ben.csv',i);
    %resultMcut = resultM(:,1+count:770+count);   % for running both freqs
        resultMcut = resultM(:,1+count:385+count);     % for running one freq
    resultMcut = [resultMcut sum(resultMcut,2)];
    csvwrite(filename, resultMcut);
    %count = count + 770; % for running both freq
          count = count + 385; % for running one freq
end

end %1.43BenfreqB

function f = start8()
clear;
clc;
sims = 0;
resultM = [];
datapoint = 1;
for m = 1:1:7
    
    datasetFolder = sprintf('dataset_%d',m)
    cd(datasetFolder);
    
%     %for frequency a
%     for n = sims+1:1:sims+55
%         simFolder = sprintf('sim_%d_%da',n,m);
%         cd(simFolder);
%         for day = 1:1:7
%             [finalPilferer, TP, TN, FP, FN] = AC8(day, n);
%             tempM = [finalPilferer; TP; TN; FP; FN];
%             resultM(:,datapoint) = tempM(:,1);
%             datapoint = datapoint + 1;
%         end
%         cd ..
%     end
%     %end of freq a
    
    %for frequency b
    for n = sims+56:1:sims+110
        simFolder = sprintf('sim_%d_%db',n,m);
        cd(simFolder);
        for day = 1:1:7
            [finalPilferer, TP, TN, FP, FN] = AC8(day, n);
            tempM = [finalPilferer; TP; TN; FP; FN];
            resultM(:,datapoint) = tempM(:,1);
            datapoint = datapoint + 1;
        end
        cd ..
    end
    % end of freq b
    
    cd ..
    sims = sims + 110;
end %AC8

%writing for dataset

count = 0;
for i = 1:1:7 
    filename = sprintf('1.43AF_FreqB_Dataset%d_mal.csv',i);
    %resultMcut = resultM(:,1+count:770+count);   % for running both freqs
        resultMcut = resultM(:,1+count:385+count);     % for running one freq
    resultMcut = [resultMcut sum(resultMcut,2)];
    csvwrite(filename, resultMcut);
    %count = count + 770; % for running both freq
          count = count + 385; % for running one freq
end

end %1.43MalfreqB

function f = start9()
clear;
clc;
sims = 0;
resultM = [];
datapoint = 1;
for m = 1:1:7
    
    datasetFolder = sprintf('dataset_%d',m)
    cd(datasetFolder);
    
%     %for frequency a
%     for n = sims+1:1:sims+55
%         simFolder = sprintf('sim_%d_%da',n,m);
%         cd(simFolder);
%         for day = 1:1:7
%             [finalPilferer, TP, TN, FP, FN] = AC9(day, n);
%             tempM = [finalPilferer; TP; TN; FP; FN];
%             resultM(:,datapoint) = tempM(:,1);
%             datapoint = datapoint + 1;
%         end
%         cd ..
%     end
%     %end of freq a
    
    %for frequency b
    for n = sims+56:1:sims+110
        simFolder = sprintf('sim_%d_%db',n,m);
        cd(simFolder);
        for day = 1:1:7
            [finalPilferer, TP, TN, FP, FN] = AC9(day, n);
            tempM = [finalPilferer; TP; TN; FP; FN];
            resultM(:,datapoint) = tempM(:,1);
            datapoint = datapoint + 1;
        end
        cd ..
    end
    % end of freq b
    
    cd ..
    sims = sims + 110;
end %AC9

%writing for dataset

count = 0;
for i = 1:1:7 
    filename = sprintf('1.25AF_FreqB_Dataset%d_ben.csv',i);
    %resultMcut = resultM(:,1+count:770+count);   % for running both freqs
        resultMcut = resultM(:,1+count:385+count);     % for running one freq
    resultMcut = [resultMcut sum(resultMcut,2)];
    csvwrite(filename, resultMcut);
    %count = count + 770; % for running both freq
          count = count + 385; % for running one freq
end

end %1.25BenfreqB

function f = start10()
clear;
clc;
sims = 0;
resultM = [];
datapoint = 1;
for m = 1:1:7
    
    datasetFolder = sprintf('dataset_%d',m)
    cd(datasetFolder);
    
%     %for frequency a
%     for n = sims+1:1:sims+55
%         simFolder = sprintf('sim_%d_%da',n,m);
%         cd(simFolder);
%         for day = 1:1:7
%             [finalPilferer, TP, TN, FP, FN] = AC10(day, n);
%             tempM = [finalPilferer; TP; TN; FP; FN];
%             resultM(:,datapoint) = tempM(:,1);
%             datapoint = datapoint + 1;
%         end
%         cd ..
%     end
%     %end of freq a
    
    %for frequency b
    for n = sims+56:1:sims+110
        simFolder = sprintf('sim_%d_%db',n,m);
        cd(simFolder);
        for day = 1:1:7
            [finalPilferer, TP, TN, FP, FN] = AC10(day, n);
            tempM = [finalPilferer; TP; TN; FP; FN];
            resultM(:,datapoint) = tempM(:,1);
            datapoint = datapoint + 1;
        end
        cd ..
    end
    % end of freq b
    
    cd ..
    sims = sims + 110;
end %AC10

%writing for dataset

count = 0;
for i = 1:1:7 
    filename = sprintf('1.25AF_FreqB_Dataset%d_mal.csv',i);
    %resultMcut = resultM(:,1+count:770+count);   % for running both freqs
        resultMcut = resultM(:,1+count:385+count);     % for running one freq
    resultMcut = [resultMcut sum(resultMcut,2)];
    csvwrite(filename, resultMcut);
    %count = count + 770; % for running both freq
          count = count + 385; % for running one freq
end

end %1.25MalfreqB

function f = start11()
clear;
clc;
sims = 0;
resultM = [];
datapoint = 1;
for m = 1:1:7
    
    datasetFolder = sprintf('dataset_%d',m)
    cd(datasetFolder);
    
%     %for frequency a
%     for n = sims+1:1:sims+55
%         simFolder = sprintf('sim_%d_%da',n,m);
%         cd(simFolder);
%         for day = 1:1:7
%             [finalPilferer, TP, TN, FP, FN] = AC11(day, n);
%             tempM = [finalPilferer; TP; TN; FP; FN];
%             resultM(:,datapoint) = tempM(:,1);
%             datapoint = datapoint + 1;
%         end
%         cd ..
%     end
%     %end of freq a
    
    %for frequency b
    for n = sims+56:1:sims+110
        simFolder = sprintf('sim_%d_%db',n,m);
        cd(simFolder);
        for day = 1:1:7
            [finalPilferer, TP, TN, FP, FN] = AC11(day, n);
            tempM = [finalPilferer; TP; TN; FP; FN];
            resultM(:,datapoint) = tempM(:,1);
            datapoint = datapoint + 1;
        end
        cd ..
    end
    % end of freq b
    
    cd ..
    sims = sims + 110;
end %AC11

%writing for dataset

count = 0;
for i = 1:1:7 
    filename = sprintf('1.11AF_FreqB_Dataset%d_ben.csv',i);
    %resultMcut = resultM(:,1+count:770+count);   % for running both freqs
        resultMcut = resultM(:,1+count:385+count);     % for running one freq
    resultMcut = [resultMcut sum(resultMcut,2)];
    csvwrite(filename, resultMcut);
    %count = count + 770; % for running both freq
          count = count + 385; % for running one freq
end

end %1.11BenfreqB

function f = start12()
clear;
clc;
sims = 0;
resultM = [];
datapoint = 1;
for m = 1:1:7
    
    datasetFolder = sprintf('dataset_%d',m)
    cd(datasetFolder);
    
%     %for frequency a
%     for n = sims+1:1:sims+55
%         simFolder = sprintf('sim_%d_%da',n,m);
%         cd(simFolder);
%         for day = 1:1:7
%             [finalPilferer, TP, TN, FP, FN] = AC12(day, n);
%             tempM = [finalPilferer; TP; TN; FP; FN];
%             resultM(:,datapoint) = tempM(:,1);
%             datapoint = datapoint + 1;
%         end
%         cd ..
%     end
%     %end of freq a
    
    %for frequency b
    for n = sims+56:1:sims+110
        simFolder = sprintf('sim_%d_%db',n,m);
        cd(simFolder);
        for day = 1:1:7
            [finalPilferer, TP, TN, FP, FN] = AC12(day, n);
            tempM = [finalPilferer; TP; TN; FP; FN];
            resultM(:,datapoint) = tempM(:,1);
            datapoint = datapoint + 1;
        end
        cd ..
    end
    % end of freq b
    
    cd ..
    sims = sims + 110;
end %AC12

%writing for dataset

count = 0;
for i = 1:1:7 
    filename = sprintf('1.11AF_FreqB_Dataset%d_mal.csv',i);
    %resultMcut = resultM(:,1+count:770+count);   % for running both freqs
        resultMcut = resultM(:,1+count:385+count);     % for running one freq
    resultMcut = [resultMcut sum(resultMcut,2)];
    csvwrite(filename, resultMcut);
    %count = count + 770; % for running both freq
          count = count + 385; % for running one freq
end

end %1.11MalfreqB


function [finalPilferer, TP, TN, FP, FN] = AC1(day, n)
cm_1 = [1; 2; 3; 4; 5; 6; 0; 0; 0; 0];
cm_2 = [7; 8; 9; 10; 11; 12; 0; 0; 0; 0];
cm_3 = [13; 14; 15; 16; 17; 0; 0; 0; 0; 0];
cm_4 = [18; 19; 20; 21; 22; 23; 0; 0; 0; 0];
cm_5 = [24; 26; 27; 28; 32; 38; 44; 0; 0; 0];
cm_6 = [25; 29; 30; 31; 33; 34; 35; 36; 37; 0];
cm_7 = [39; 40; 41; 42; 45; 46; 48; 49; 51; 54];
cm_8 = [43; 47; 50; 52; 53; 55; 0; 0; 0; 0];
CMsize = [cm_1 cm_2 cm_3 cm_4 cm_5 cm_6 cm_7 cm_8];
CMsizeNew = [1:1:55];
CMsizeNew = transpose(CMsizeNew);
addLoad = zeros(48,8);

%read data from csv files

masterM = readmatrix('d' + string(day) + '.csv'); %_mal.csv if using mal
isMal = 0; %1 if using mal

CM = [];
Load = [];
CM = [masterM(:,1) + masterM(:,2) + masterM(:,3) + masterM(:,4) + masterM(:,5) + masterM(:,6) + masterM(:,7) + masterM(:,8)];

for i = 9:1:63 %read all loads 1-55
    Load = [Load masterM(:,i)];
end

lb = 1*ones(55,1);
ub = 2.8571*ones(55,1);
finalk = zeros(55,7);     

k = lsqlin(Load(13:36,1:55),CM(13:36,1),[],[],[],[],lb,ub);
finalk(1:length(k),1) = finalk(1:length(k),1) + k; %concat of k

pilferers = 0;
counter = 0;
houseN = [];

[out,idx] = sort(finalk(:,1),'descend');
if out(1) > 2 %change for threshold
    pilferers = idx(1);
end

%%performance metrics calculation part

TP = 0;
TN = 0;
FP = 0;
FN = 0;

modSim = mod(n,55);
if modSim == 0
    modSim = 55;
end

%for TP

if (isMal == 1 && modSim == pilferers)
    TP = TP + 1;
end

%for TN

if (isMal == 0 && pilferers == 0)
    TN = TN + 1;
end

%for FP

if ((isMal == 1 && modSim ~= pilferers && pilferers ~= 0) || (isMal == 0 && pilferers ~= 0))
    FP = FP + 1;
end

%for FN

if (isMal == 1 && pilferers == 0)
    FN = FN + 1;
end


% printing part
if pilferers == 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': No theft Detected at any household');
    finalPilferer = 0;
end

if pilferers ~= 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': Theft detected at Household ' + string(pilferers));
    finalPilferer = pilferers;
end
end %2Ben 

function [finalPilferer, TP, TN, FP, FN] = AC2(day, n)
cm_1 = [1; 2; 3; 4; 5; 6; 0; 0; 0; 0];
cm_2 = [7; 8; 9; 10; 11; 12; 0; 0; 0; 0];
cm_3 = [13; 14; 15; 16; 17; 0; 0; 0; 0; 0];
cm_4 = [18; 19; 20; 21; 22; 23; 0; 0; 0; 0];
cm_5 = [24; 26; 27; 28; 32; 38; 44; 0; 0; 0];
cm_6 = [25; 29; 30; 31; 33; 34; 35; 36; 37; 0];
cm_7 = [39; 40; 41; 42; 45; 46; 48; 49; 51; 54];
cm_8 = [43; 47; 50; 52; 53; 55; 0; 0; 0; 0];
CMsize = [cm_1 cm_2 cm_3 cm_4 cm_5 cm_6 cm_7 cm_8];
CMsizeNew = [1:1:55];
CMsizeNew = transpose(CMsizeNew);
addLoad = zeros(48,8);

%read data from csv files

masterM = readmatrix('d' + string(day) + '_mal.csv'); %_mal.csv if using mal
isMal = 1; %1 if using mal

CM = [];
Load = [];
CM = [masterM(:,1) + masterM(:,2) + masterM(:,3) + masterM(:,4) + masterM(:,5) + masterM(:,6) + masterM(:,7) + masterM(:,8)];

for i = 9:1:63 %read all loads 1-55
    Load = [Load masterM(:,i)];
end

lb = 1*ones(55,1);
ub = 2.8571*ones(55,1);
finalk = zeros(55,7);     

k = lsqlin(Load(13:36,1:55),CM(13:36,1),[],[],[],[],lb,ub);
finalk(1:length(k),1) = finalk(1:length(k),1) + k; %concat of k

pilferers = 0;
counter = 0;
houseN = [];

[out,idx] = sort(finalk(:,1),'descend');
if out(1) > 2 %change for threshold
    pilferers = idx(1);
end

%%performance metrics calculation part

TP = 0;
TN = 0;
FP = 0;
FN = 0;

modSim = mod(n,55);
if modSim == 0
    modSim = 55;
end

%for TP

if (isMal == 1 && modSim == pilferers)
    TP = TP + 1;
end

%for TN

if (isMal == 0 && pilferers == 0)
    TN = TN + 1;
end

%for FP

if ((isMal == 1 && modSim ~= pilferers && pilferers ~= 0) || (isMal == 0 && pilferers ~= 0))
    FP = FP + 1;
end

%for FN

if (isMal == 1 && pilferers == 0)
    FN = FN + 1;
end


% printing part
if pilferers == 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': No theft Detected at any household');
    finalPilferer = 0;
end

if pilferers ~= 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': Theft detected at Household ' + string(pilferers));
    finalPilferer = pilferers;
end
end %2Mal

function [finalPilferer, TP, TN, FP, FN] = AC3(day, n)
cm_1 = [1; 2; 3; 4; 5; 6; 0; 0; 0; 0];
cm_2 = [7; 8; 9; 10; 11; 12; 0; 0; 0; 0];
cm_3 = [13; 14; 15; 16; 17; 0; 0; 0; 0; 0];
cm_4 = [18; 19; 20; 21; 22; 23; 0; 0; 0; 0];
cm_5 = [24; 26; 27; 28; 32; 38; 44; 0; 0; 0];
cm_6 = [25; 29; 30; 31; 33; 34; 35; 36; 37; 0];
cm_7 = [39; 40; 41; 42; 45; 46; 48; 49; 51; 54];
cm_8 = [43; 47; 50; 52; 53; 55; 0; 0; 0; 0];
CMsize = [cm_1 cm_2 cm_3 cm_4 cm_5 cm_6 cm_7 cm_8];
CMsizeNew = [1:1:55];
CMsizeNew = transpose(CMsizeNew);
addLoad = zeros(48,8);

%read data from csv files

masterM = readmatrix('d' + string(day) + '.csv'); %_mal.csv if using mal
isMal = 0; %1 if using mal

CM = [];
Load = [];
CM = [masterM(:,1) + masterM(:,2) + masterM(:,3) + masterM(:,4) + masterM(:,5) + masterM(:,6) + masterM(:,7) + masterM(:,8)];

for i = 9:1:63 %read all loads 1-55
    Load = [Load masterM(:,i)];
end

lb = 1*ones(55,1);
ub = 2.8571*ones(55,1);
finalk = zeros(55,7);     

k = lsqlin(Load(13:36,1:55),CM(13:36,1),[],[],[],[],lb,ub);
finalk(1:length(k),1) = finalk(1:length(k),1) + k; %concat of k

pilferers = 0;
counter = 0;
houseN = [];

[out,idx] = sort(finalk(:,1),'descend');
if out(1) > 2.5 %change for threshold
    pilferers = idx(1);
end

%%performance metrics calculation part

TP = 0;
TN = 0;
FP = 0;
FN = 0;

modSim = mod(n,55);
if modSim == 0
    modSim = 55;
end

%for TP

if (isMal == 1 && modSim == pilferers)
    TP = TP + 1;
end

%for TN

if (isMal == 0 && pilferers == 0)
    TN = TN + 1;
end

%for FP

if ((isMal == 1 && modSim ~= pilferers && pilferers ~= 0) || (isMal == 0 && pilferers ~= 0))
    FP = FP + 1;
end

%for FN

if (isMal == 1 && pilferers == 0)
    FN = FN + 1;
end


% printing part
if pilferers == 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': No theft Detected at any household');
    finalPilferer = 0;
end

if pilferers ~= 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': Theft detected at Household ' + string(pilferers));
    finalPilferer = pilferers;
end
end %2.5Ben 

function [finalPilferer, TP, TN, FP, FN] = AC4(day, n)
cm_1 = [1; 2; 3; 4; 5; 6; 0; 0; 0; 0];
cm_2 = [7; 8; 9; 10; 11; 12; 0; 0; 0; 0];
cm_3 = [13; 14; 15; 16; 17; 0; 0; 0; 0; 0];
cm_4 = [18; 19; 20; 21; 22; 23; 0; 0; 0; 0];
cm_5 = [24; 26; 27; 28; 32; 38; 44; 0; 0; 0];
cm_6 = [25; 29; 30; 31; 33; 34; 35; 36; 37; 0];
cm_7 = [39; 40; 41; 42; 45; 46; 48; 49; 51; 54];
cm_8 = [43; 47; 50; 52; 53; 55; 0; 0; 0; 0];
CMsize = [cm_1 cm_2 cm_3 cm_4 cm_5 cm_6 cm_7 cm_8];
CMsizeNew = [1:1:55];
CMsizeNew = transpose(CMsizeNew);
addLoad = zeros(48,8);

%read data from csv files

masterM = readmatrix('d' + string(day) + '_mal.csv'); %_mal.csv if using mal
isMal = 1; %1 if using mal

CM = [];
Load = [];
CM = [masterM(:,1) + masterM(:,2) + masterM(:,3) + masterM(:,4) + masterM(:,5) + masterM(:,6) + masterM(:,7) + masterM(:,8)];

for i = 9:1:63 %read all loads 1-55
    Load = [Load masterM(:,i)];
end

lb = 1*ones(55,1);
ub = 2.8571*ones(55,1);
finalk = zeros(55,7);     

k = lsqlin(Load(13:36,1:55),CM(13:36,1),[],[],[],[],lb,ub);
finalk(1:length(k),1) = finalk(1:length(k),1) + k; %concat of k

pilferers = 0;
counter = 0;
houseN = [];

[out,idx] = sort(finalk(:,1),'descend');
if out(1) > 2.5 %change for threshold
    pilferers = idx(1);
end

%%performance metrics calculation part

TP = 0;
TN = 0;
FP = 0;
FN = 0;

modSim = mod(n,55);
if modSim == 0
    modSim = 55;
end

%for TP

if (isMal == 1 && modSim == pilferers)
    TP = TP + 1;
end

%for TN

if (isMal == 0 && pilferers == 0)
    TN = TN + 1;
end

%for FP

if ((isMal == 1 && modSim ~= pilferers && pilferers ~= 0) || (isMal == 0 && pilferers ~= 0))
    FP = FP + 1;
end

%for FN

if (isMal == 1 && pilferers == 0)
    FN = FN + 1;
end


% printing part
if pilferers == 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': No theft Detected at any household');
    finalPilferer = 0;
end

if pilferers ~= 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': Theft detected at Household ' + string(pilferers));
    finalPilferer = pilferers;
end
end %2.5Mal

function [finalPilferer, TP, TN, FP, FN] = AC5(day, n)
cm_1 = [1; 2; 3; 4; 5; 6; 0; 0; 0; 0];
cm_2 = [7; 8; 9; 10; 11; 12; 0; 0; 0; 0];
cm_3 = [13; 14; 15; 16; 17; 0; 0; 0; 0; 0];
cm_4 = [18; 19; 20; 21; 22; 23; 0; 0; 0; 0];
cm_5 = [24; 26; 27; 28; 32; 38; 44; 0; 0; 0];
cm_6 = [25; 29; 30; 31; 33; 34; 35; 36; 37; 0];
cm_7 = [39; 40; 41; 42; 45; 46; 48; 49; 51; 54];
cm_8 = [43; 47; 50; 52; 53; 55; 0; 0; 0; 0];
CMsize = [cm_1 cm_2 cm_3 cm_4 cm_5 cm_6 cm_7 cm_8];
CMsizeNew = [1:1:55];
CMsizeNew = transpose(CMsizeNew);
addLoad = zeros(48,8);

%read data from csv files

masterM = readmatrix('d' + string(day) + '.csv'); %_mal.csv if using mal
isMal = 0; %1 if using mal

CM = [];
Load = [];
CM = [masterM(:,1) + masterM(:,2) + masterM(:,3) + masterM(:,4) + masterM(:,5) + masterM(:,6) + masterM(:,7) + masterM(:,8)];

for i = 9:1:63 %read all loads 1-55
    Load = [Load masterM(:,i)];
end

lb = 1*ones(55,1);
ub = 2.8571*ones(55,1);
finalk = zeros(55,7);     

k = lsqlin(Load(13:36,1:55),CM(13:36,1),[],[],[],[],lb,ub);
finalk(1:length(k),1) = finalk(1:length(k),1) + k; %concat of k

pilferers = 0;
counter = 0;
houseN = [];

[out,idx] = sort(finalk(:,1),'descend');
if out(1) > 1.67 %change for threshold
    pilferers = idx(1);
end

%%performance metrics calculation part

TP = 0;
TN = 0;
FP = 0;
FN = 0;

modSim = mod(n,55);
if modSim == 0
    modSim = 55;
end

%for TP

if (isMal == 1 && modSim == pilferers)
    TP = TP + 1;
end

%for TN

if (isMal == 0 && pilferers == 0)
    TN = TN + 1;
end

%for FP

if ((isMal == 1 && modSim ~= pilferers && pilferers ~= 0) || (isMal == 0 && pilferers ~= 0))
    FP = FP + 1;
end

%for FN

if (isMal == 1 && pilferers == 0)
    FN = FN + 1;
end


% printing part
if pilferers == 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': No theft Detected at any household');
    finalPilferer = 0;
end

if pilferers ~= 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': Theft detected at Household ' + string(pilferers));
    finalPilferer = pilferers;
end
end %1.67Ben 

function [finalPilferer, TP, TN, FP, FN] = AC6(day, n)
cm_1 = [1; 2; 3; 4; 5; 6; 0; 0; 0; 0];
cm_2 = [7; 8; 9; 10; 11; 12; 0; 0; 0; 0];
cm_3 = [13; 14; 15; 16; 17; 0; 0; 0; 0; 0];
cm_4 = [18; 19; 20; 21; 22; 23; 0; 0; 0; 0];
cm_5 = [24; 26; 27; 28; 32; 38; 44; 0; 0; 0];
cm_6 = [25; 29; 30; 31; 33; 34; 35; 36; 37; 0];
cm_7 = [39; 40; 41; 42; 45; 46; 48; 49; 51; 54];
cm_8 = [43; 47; 50; 52; 53; 55; 0; 0; 0; 0];
CMsize = [cm_1 cm_2 cm_3 cm_4 cm_5 cm_6 cm_7 cm_8];
CMsizeNew = [1:1:55];
CMsizeNew = transpose(CMsizeNew);
addLoad = zeros(48,8);

%read data from csv files

masterM = readmatrix('d' + string(day) + '_mal.csv'); %_mal.csv if using mal
isMal = 1; %1 if using mal

CM = [];
Load = [];
CM = [masterM(:,1) + masterM(:,2) + masterM(:,3) + masterM(:,4) + masterM(:,5) + masterM(:,6) + masterM(:,7) + masterM(:,8)];

for i = 9:1:63 %read all loads 1-55
    Load = [Load masterM(:,i)];
end

lb = 1*ones(55,1);
ub = 2.8571*ones(55,1);
finalk = zeros(55,7);     

k = lsqlin(Load(13:36,1:55),CM(13:36,1),[],[],[],[],lb,ub);
finalk(1:length(k),1) = finalk(1:length(k),1) + k; %concat of k

pilferers = 0;
counter = 0;
houseN = [];

[out,idx] = sort(finalk(:,1),'descend');
if out(1) > 1.67 %change for threshold
    pilferers = idx(1);
end

%%performance metrics calculation part

TP = 0;
TN = 0;
FP = 0;
FN = 0;

modSim = mod(n,55);
if modSim == 0
    modSim = 55;
end

%for TP

if (isMal == 1 && modSim == pilferers)
    TP = TP + 1;
end

%for TN

if (isMal == 0 && pilferers == 0)
    TN = TN + 1;
end

%for FP

if ((isMal == 1 && modSim ~= pilferers && pilferers ~= 0) || (isMal == 0 && pilferers ~= 0))
    FP = FP + 1;
end

%for FN

if (isMal == 1 && pilferers == 0)
    FN = FN + 1;
end


% printing part
if pilferers == 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': No theft Detected at any household');
    finalPilferer = 0;
end

if pilferers ~= 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': Theft detected at Household ' + string(pilferers));
    finalPilferer = pilferers;
end
end %1.67Mal

function [finalPilferer, TP, TN, FP, FN] = AC7(day, n)
cm_1 = [1; 2; 3; 4; 5; 6; 0; 0; 0; 0];
cm_2 = [7; 8; 9; 10; 11; 12; 0; 0; 0; 0];
cm_3 = [13; 14; 15; 16; 17; 0; 0; 0; 0; 0];
cm_4 = [18; 19; 20; 21; 22; 23; 0; 0; 0; 0];
cm_5 = [24; 26; 27; 28; 32; 38; 44; 0; 0; 0];
cm_6 = [25; 29; 30; 31; 33; 34; 35; 36; 37; 0];
cm_7 = [39; 40; 41; 42; 45; 46; 48; 49; 51; 54];
cm_8 = [43; 47; 50; 52; 53; 55; 0; 0; 0; 0];
CMsize = [cm_1 cm_2 cm_3 cm_4 cm_5 cm_6 cm_7 cm_8];
CMsizeNew = [1:1:55];
CMsizeNew = transpose(CMsizeNew);
addLoad = zeros(48,8);

%read data from csv files

masterM = readmatrix('d' + string(day) + '.csv'); %_mal.csv if using mal
isMal = 0; %1 if using mal

CM = [];
Load = [];
CM = [masterM(:,1) + masterM(:,2) + masterM(:,3) + masterM(:,4) + masterM(:,5) + masterM(:,6) + masterM(:,7) + masterM(:,8)];

for i = 9:1:63 %read all loads 1-55
    Load = [Load masterM(:,i)];
end

lb = 1*ones(55,1);
ub = 2.8571*ones(55,1);
finalk = zeros(55,7);     

k = lsqlin(Load(13:36,1:55),CM(13:36,1),[],[],[],[],lb,ub);
finalk(1:length(k),1) = finalk(1:length(k),1) + k; %concat of k

pilferers = 0;
counter = 0;
houseN = [];

[out,idx] = sort(finalk(:,1),'descend');
if out(1) > 1.43 %change for threshold
    pilferers = idx(1);
end

%%performance metrics calculation part

TP = 0;
TN = 0;
FP = 0;
FN = 0;

modSim = mod(n,55);
if modSim == 0
    modSim = 55;
end

%for TP

if (isMal == 1 && modSim == pilferers)
    TP = TP + 1;
end

%for TN

if (isMal == 0 && pilferers == 0)
    TN = TN + 1;
end

%for FP

if ((isMal == 1 && modSim ~= pilferers && pilferers ~= 0) || (isMal == 0 && pilferers ~= 0))
    FP = FP + 1;
end

%for FN

if (isMal == 1 && pilferers == 0)
    FN = FN + 1;
end


% printing part
if pilferers == 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': No theft Detected at any household');
    finalPilferer = 0;
end

if pilferers ~= 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': Theft detected at Household ' + string(pilferers));
    finalPilferer = pilferers;
end
end %1.43Ben 

function [finalPilferer, TP, TN, FP, FN] = AC8(day, n)
cm_1 = [1; 2; 3; 4; 5; 6; 0; 0; 0; 0];
cm_2 = [7; 8; 9; 10; 11; 12; 0; 0; 0; 0];
cm_3 = [13; 14; 15; 16; 17; 0; 0; 0; 0; 0];
cm_4 = [18; 19; 20; 21; 22; 23; 0; 0; 0; 0];
cm_5 = [24; 26; 27; 28; 32; 38; 44; 0; 0; 0];
cm_6 = [25; 29; 30; 31; 33; 34; 35; 36; 37; 0];
cm_7 = [39; 40; 41; 42; 45; 46; 48; 49; 51; 54];
cm_8 = [43; 47; 50; 52; 53; 55; 0; 0; 0; 0];
CMsize = [cm_1 cm_2 cm_3 cm_4 cm_5 cm_6 cm_7 cm_8];
CMsizeNew = [1:1:55];
CMsizeNew = transpose(CMsizeNew);
addLoad = zeros(48,8);

%read data from csv files

masterM = readmatrix('d' + string(day) + '_mal.csv'); %_mal.csv if using mal
isMal = 1; %1 if using mal

CM = [];
Load = [];
CM = [masterM(:,1) + masterM(:,2) + masterM(:,3) + masterM(:,4) + masterM(:,5) + masterM(:,6) + masterM(:,7) + masterM(:,8)];

for i = 9:1:63 %read all loads 1-55
    Load = [Load masterM(:,i)];
end

lb = 1*ones(55,1);
ub = 2.8571*ones(55,1);
finalk = zeros(55,7);     

k = lsqlin(Load(13:36,1:55),CM(13:36,1),[],[],[],[],lb,ub);
finalk(1:length(k),1) = finalk(1:length(k),1) + k; %concat of k

pilferers = 0;
counter = 0;
houseN = [];

[out,idx] = sort(finalk(:,1),'descend');
if out(1) > 1.43 %change for threshold
    pilferers = idx(1);
end

%%performance metrics calculation part

TP = 0;
TN = 0;
FP = 0;
FN = 0;

modSim = mod(n,55);
if modSim == 0
    modSim = 55;
end

%for TP

if (isMal == 1 && modSim == pilferers)
    TP = TP + 1;
end

%for TN

if (isMal == 0 && pilferers == 0)
    TN = TN + 1;
end

%for FP

if ((isMal == 1 && modSim ~= pilferers && pilferers ~= 0) || (isMal == 0 && pilferers ~= 0))
    FP = FP + 1;
end

%for FN

if (isMal == 1 && pilferers == 0)
    FN = FN + 1;
end


% printing part
if pilferers == 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': No theft Detected at any household');
    finalPilferer = 0;
end

if pilferers ~= 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': Theft detected at Household ' + string(pilferers));
    finalPilferer = pilferers;
end
end %1.43Mal

function [finalPilferer, TP, TN, FP, FN] = AC9(day, n)
cm_1 = [1; 2; 3; 4; 5; 6; 0; 0; 0; 0];
cm_2 = [7; 8; 9; 10; 11; 12; 0; 0; 0; 0];
cm_3 = [13; 14; 15; 16; 17; 0; 0; 0; 0; 0];
cm_4 = [18; 19; 20; 21; 22; 23; 0; 0; 0; 0];
cm_5 = [24; 26; 27; 28; 32; 38; 44; 0; 0; 0];
cm_6 = [25; 29; 30; 31; 33; 34; 35; 36; 37; 0];
cm_7 = [39; 40; 41; 42; 45; 46; 48; 49; 51; 54];
cm_8 = [43; 47; 50; 52; 53; 55; 0; 0; 0; 0];
CMsize = [cm_1 cm_2 cm_3 cm_4 cm_5 cm_6 cm_7 cm_8];
CMsizeNew = [1:1:55];
CMsizeNew = transpose(CMsizeNew);
addLoad = zeros(48,8);

%read data from csv files

masterM = readmatrix('d' + string(day) + '.csv'); %_mal.csv if using mal
isMal = 0; %1 if using mal

CM = [];
Load = [];
CM = [masterM(:,1) + masterM(:,2) + masterM(:,3) + masterM(:,4) + masterM(:,5) + masterM(:,6) + masterM(:,7) + masterM(:,8)];

for i = 9:1:63 %read all loads 1-55
    Load = [Load masterM(:,i)];
end

lb = 1*ones(55,1);
ub = 2.8571*ones(55,1);
finalk = zeros(55,7);     

k = lsqlin(Load(13:36,1:55),CM(13:36,1),[],[],[],[],lb,ub);
finalk(1:length(k),1) = finalk(1:length(k),1) + k; %concat of k

pilferers = 0;
counter = 0;
houseN = [];

[out,idx] = sort(finalk(:,1),'descend');
if out(1) > 1.25 %change for threshold
    pilferers = idx(1);
end

%%performance metrics calculation part

TP = 0;
TN = 0;
FP = 0;
FN = 0;

modSim = mod(n,55);
if modSim == 0
    modSim = 55;
end

%for TP

if (isMal == 1 && modSim == pilferers)
    TP = TP + 1;
end

%for TN

if (isMal == 0 && pilferers == 0)
    TN = TN + 1;
end

%for FP

if ((isMal == 1 && modSim ~= pilferers && pilferers ~= 0) || (isMal == 0 && pilferers ~= 0))
    FP = FP + 1;
end

%for FN

if (isMal == 1 && pilferers == 0)
    FN = FN + 1;
end


% printing part
if pilferers == 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': No theft Detected at any household');
    finalPilferer = 0;
end

if pilferers ~= 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': Theft detected at Household ' + string(pilferers));
    finalPilferer = pilferers;
end
end %1.25Ben 

function [finalPilferer, TP, TN, FP, FN] = AC10(day, n)
cm_1 = [1; 2; 3; 4; 5; 6; 0; 0; 0; 0];
cm_2 = [7; 8; 9; 10; 11; 12; 0; 0; 0; 0];
cm_3 = [13; 14; 15; 16; 17; 0; 0; 0; 0; 0];
cm_4 = [18; 19; 20; 21; 22; 23; 0; 0; 0; 0];
cm_5 = [24; 26; 27; 28; 32; 38; 44; 0; 0; 0];
cm_6 = [25; 29; 30; 31; 33; 34; 35; 36; 37; 0];
cm_7 = [39; 40; 41; 42; 45; 46; 48; 49; 51; 54];
cm_8 = [43; 47; 50; 52; 53; 55; 0; 0; 0; 0];
CMsize = [cm_1 cm_2 cm_3 cm_4 cm_5 cm_6 cm_7 cm_8];
CMsizeNew = [1:1:55];
CMsizeNew = transpose(CMsizeNew);
addLoad = zeros(48,8);

%read data from csv files

masterM = readmatrix('d' + string(day) + '_mal.csv'); %_mal.csv if using mal
isMal = 1; %1 if using mal

CM = [];
Load = [];
CM = [masterM(:,1) + masterM(:,2) + masterM(:,3) + masterM(:,4) + masterM(:,5) + masterM(:,6) + masterM(:,7) + masterM(:,8)];

for i = 9:1:63 %read all loads 1-55
    Load = [Load masterM(:,i)];
end

lb = 1*ones(55,1);
ub = 2.8571*ones(55,1);
finalk = zeros(55,7);     

k = lsqlin(Load(13:36,1:55),CM(13:36,1),[],[],[],[],lb,ub);
finalk(1:length(k),1) = finalk(1:length(k),1) + k; %concat of k

pilferers = 0;
counter = 0;
houseN = [];

[out,idx] = sort(finalk(:,1),'descend');
if out(1) > 1.25 %change for threshold
    pilferers = idx(1);
end

%%performance metrics calculation part

TP = 0;
TN = 0;
FP = 0;
FN = 0;

modSim = mod(n,55);
if modSim == 0
    modSim = 55;
end

%for TP

if (isMal == 1 && modSim == pilferers)
    TP = TP + 1;
end

%for TN

if (isMal == 0 && pilferers == 0)
    TN = TN + 1;
end

%for FP

if ((isMal == 1 && modSim ~= pilferers && pilferers ~= 0) || (isMal == 0 && pilferers ~= 0))
    FP = FP + 1;
end

%for FN

if (isMal == 1 && pilferers == 0)
    FN = FN + 1;
end


% printing part
if pilferers == 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': No theft Detected at any household');
    finalPilferer = 0;
end

if pilferers ~= 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': Theft detected at Household ' + string(pilferers));
    finalPilferer = pilferers;
end
end %1.25Mal

function [finalPilferer, TP, TN, FP, FN] = AC11(day, n)
cm_1 = [1; 2; 3; 4; 5; 6; 0; 0; 0; 0];
cm_2 = [7; 8; 9; 10; 11; 12; 0; 0; 0; 0];
cm_3 = [13; 14; 15; 16; 17; 0; 0; 0; 0; 0];
cm_4 = [18; 19; 20; 21; 22; 23; 0; 0; 0; 0];
cm_5 = [24; 26; 27; 28; 32; 38; 44; 0; 0; 0];
cm_6 = [25; 29; 30; 31; 33; 34; 35; 36; 37; 0];
cm_7 = [39; 40; 41; 42; 45; 46; 48; 49; 51; 54];
cm_8 = [43; 47; 50; 52; 53; 55; 0; 0; 0; 0];
CMsize = [cm_1 cm_2 cm_3 cm_4 cm_5 cm_6 cm_7 cm_8];
CMsizeNew = [1:1:55];
CMsizeNew = transpose(CMsizeNew);
addLoad = zeros(48,8);

%read data from csv files

masterM = readmatrix('d' + string(day) + '.csv'); %_mal.csv if using mal
isMal = 0; %1 if using mal

CM = [];
Load = [];
CM = [masterM(:,1) + masterM(:,2) + masterM(:,3) + masterM(:,4) + masterM(:,5) + masterM(:,6) + masterM(:,7) + masterM(:,8)];

for i = 9:1:63 %read all loads 1-55
    Load = [Load masterM(:,i)];
end

lb = 1*ones(55,1);
ub = 2.8571*ones(55,1);
finalk = zeros(55,7);     

k = lsqlin(Load(13:36,1:55),CM(13:36,1),[],[],[],[],lb,ub);
finalk(1:length(k),1) = finalk(1:length(k),1) + k; %concat of k

pilferers = 0;
counter = 0;
houseN = [];

[out,idx] = sort(finalk(:,1),'descend');
if out(1) > 1.11 %change for threshold
    pilferers = idx(1);
end

%%performance metrics calculation part

TP = 0;
TN = 0;
FP = 0;
FN = 0;

modSim = mod(n,55);
if modSim == 0
    modSim = 55;
end

%for TP

if (isMal == 1 && modSim == pilferers)
    TP = TP + 1;
end

%for TN

if (isMal == 0 && pilferers == 0)
    TN = TN + 1;
end

%for FP

if ((isMal == 1 && modSim ~= pilferers && pilferers ~= 0) || (isMal == 0 && pilferers ~= 0))
    FP = FP + 1;
end

%for FN

if (isMal == 1 && pilferers == 0)
    FN = FN + 1;
end


% printing part
if pilferers == 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': No theft Detected at any household');
    finalPilferer = 0;
end

if pilferers ~= 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': Theft detected at Household ' + string(pilferers));
    finalPilferer = pilferers;
end
end %1.11Ben 

function [finalPilferer, TP, TN, FP, FN] = AC12(day, n)
cm_1 = [1; 2; 3; 4; 5; 6; 0; 0; 0; 0];
cm_2 = [7; 8; 9; 10; 11; 12; 0; 0; 0; 0];
cm_3 = [13; 14; 15; 16; 17; 0; 0; 0; 0; 0];
cm_4 = [18; 19; 20; 21; 22; 23; 0; 0; 0; 0];
cm_5 = [24; 26; 27; 28; 32; 38; 44; 0; 0; 0];
cm_6 = [25; 29; 30; 31; 33; 34; 35; 36; 37; 0];
cm_7 = [39; 40; 41; 42; 45; 46; 48; 49; 51; 54];
cm_8 = [43; 47; 50; 52; 53; 55; 0; 0; 0; 0];
CMsize = [cm_1 cm_2 cm_3 cm_4 cm_5 cm_6 cm_7 cm_8];
CMsizeNew = [1:1:55];
CMsizeNew = transpose(CMsizeNew);
addLoad = zeros(48,8);

%read data from csv files

masterM = readmatrix('d' + string(day) + '_mal.csv'); %_mal.csv if using mal
isMal = 1; %1 if using mal

CM = [];
Load = [];
CM = [masterM(:,1) + masterM(:,2) + masterM(:,3) + masterM(:,4) + masterM(:,5) + masterM(:,6) + masterM(:,7) + masterM(:,8)];

for i = 9:1:63 %read all loads 1-55
    Load = [Load masterM(:,i)];
end

lb = 1*ones(55,1);
ub = 2.8571*ones(55,1);
finalk = zeros(55,7);     

k = lsqlin(Load(13:36,1:55),CM(13:36,1),[],[],[],[],lb,ub);
finalk(1:length(k),1) = finalk(1:length(k),1) + k; %concat of k

pilferers = 0;
counter = 0;
houseN = [];

[out,idx] = sort(finalk(:,1),'descend');
if out(1) > 1.11 %change for threshold
    pilferers = idx(1);
end

%%performance metrics calculation part

TP = 0;
TN = 0;
FP = 0;
FN = 0;

modSim = mod(n,55);
if modSim == 0
    modSim = 55;
end

%for TP

if (isMal == 1 && modSim == pilferers)
    TP = TP + 1;
end

%for TN

if (isMal == 0 && pilferers == 0)
    TN = TN + 1;
end

%for FP

if ((isMal == 1 && modSim ~= pilferers && pilferers ~= 0) || (isMal == 0 && pilferers ~= 0))
    FP = FP + 1;
end

%for FN

if (isMal == 1 && pilferers == 0)
    FN = FN + 1;
end


% printing part
if pilferers == 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': No theft Detected at any household');
    finalPilferer = 0;
end

if pilferers ~= 0
    disp('Sim' + string(n) + 'Day' + string(day) + ': Theft detected at Household ' + string(pilferers));
    finalPilferer = pilferers;
end
end %1.11Mal

end
