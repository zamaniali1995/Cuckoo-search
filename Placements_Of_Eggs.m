function [ Population,index ] = Placements_Of_Eggs(Population,ELR,Eggs_Num,index,Nvar,VarHi,VarLo)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
for i=1:index
    for j=1:Eggs_Num(i)
        for k=1:Nvar
            Population(index+j,k)=(ELR(i,1)*((2*rand)-1))+Population(i,k);
            if(Population(index+j,k)>VarHi )
                Population(index+j,k)=VarHi;
            else if Population(index+j,k)<VarLo
                Population(index+j,k)=VarLo;
            end
        end    
    end    
    index=index+Eggs_Num(i);    
end    
    
end    


