%JS Ketteringham 
%Energy Dissipation of AQFP circuits
%27 Sep 2023
csvFile = 'C:\Users\wayne\Desktop\Engineering\Skripsie\executable\JKtest1.csv';

data = readmatrix(csvFile); 
I = 5*10-6;
P = zeros(size(data));

for x = 1:length(data)
    P(x) = I * data(x,2);
end

TotPow = sum(abs(P));
%AvPow = avg(abs(P));
b = data(14999,1);

EnDisTot = 0.5*TotPow*(data(14999, 1)^2);
%EnDisAvg = 0.5*AvgPow*(data(14999, 1)^2);

