function [ Fitness ] = Calculation_Of_Fitness(Population,Fitness,index)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
for i=1:index
    Fitness(i,1)=Cost_Function(Population(i,:));
end

end

