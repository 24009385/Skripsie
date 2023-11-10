%JS Ketteringham 
%Energy Dissipation of AQFP circuits
%27 Sep 2023
csvFile = 'C:\Users\wayne\Desktop\Engineering\Skripsie\executable\JKtest1.csv';

data1 = readmatrix(csvFile); 
P = zeros(size(data1));
I = 50e-6;

for x = 1:length(data1)
     P1(x) = (abs(data1(x,4))+abs(data1(x, 5))) * (abs(data1(x,2))+abs(data1(x, 3)));
     P2(x) = (abs(data1(x,4))*abs(data1(x, 2))) + (abs(data1(x,5))*abs(data1(x, 3)));
     P3(x) = ((abs(data1(x,3)))+(abs(data1(x,2))))*I;
     P4(x) = ((abs(data1(x,3)))*I)+((abs(data1(x,2)))*I);
end

TotPow1 = sum(abs(P1));
TotPow2 = sum(abs(P2));
TotPow3 = sum(abs(P3));
TotPow4 = sum(abs(P4));

b = data1(14999,1);

E1 = 0.5*TotPow1*(data1(14999, 1)^2);
E2 = 0.5*TotPow2*(data1(14999, 1)^2);
E3 = 0.5*TotPow3*(data1(14999, 1)^2);
E4 = 0.5*TotPow4*(data1(14999, 1)^2);


