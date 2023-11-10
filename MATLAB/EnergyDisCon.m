%JS Ketteringham 
%Energy Dissipation of AQFP circuits
%27 Sep 2023
csvFile = 'C:\Users\wayne\Desktop\Engineering\Skripsie\executable\JKtest2.csv';

data2 = readmatrix(csvFile); 
P = zeros(size(data2));
I = 50e-6;

for x = 1:length(data2)
    P(x) = (abs(data1(x,4))*abs(data1(x, 2))) + (abs(data1(x,5))*abs(data1(x, 3)));
end

TotPow = sum(P);
TotPow1 = sum(P1)
%AvPow = avg(abs(P));
b = data2(14999,1);

E = 0.5*TotPow1*(data2(14999, 1)^2);
EnDisCon0 = 0.5*TotPow*(data2(14999, 1)^2);
%EnDisAvg = 0.5*AvgPow*(data(14999, 1)^2);

