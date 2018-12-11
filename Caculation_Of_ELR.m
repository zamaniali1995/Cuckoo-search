function [ ELR ] = Caculation_Of_ELR(ELR,Eggs_Num,Sum_Of_Eggs,index,Alfa,VarHi,VarLo)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
for i=1:index
    ELR(i,1)=Alfa*((Eggs_Num(i,1))/(Sum_Of_Eggs))*(VarHi-VarLo);
end    

end

