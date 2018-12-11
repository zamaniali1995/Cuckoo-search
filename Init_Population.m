function [ Population,index ] = Init_Population(Population,Cuckoo_Num,Nvar,VarHi,VarLo)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
index=Cuckoo_Num;
for i=1:index
Population(i,:) = ( VarHi-VarLo )*rand(1,Nvar) + VarLo;
end
end

