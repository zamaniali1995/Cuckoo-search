function [ Eggs_Num,Sum_Of_Eggs ] = Assignment_Of_Eggs(Eggs_Num,index,Max_Num_Eggs,Min_Num_Eggs)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
Sum_Of_Eggs=0;
for i=1:index
    Eggs_Num(i,1)=floor( (Max_Num_Eggs - Min_Num_Eggs) * rand + Min_Num_Eggs );
end
for i = 1:index
    Sum_Of_Eggs = Sum_Of_Eggs +Eggs_Num(i,1);
end
end

