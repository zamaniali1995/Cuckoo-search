function [ Population1,index,Fitness] = Kill_P(Fitness,Population,index,p)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
[Nmax,Nvar]=size(Population);
Population1=zeros(Nmax,Nvar);
[Fitness,idx]=sort(Fitness);
for i=1:index
Population1(i,:)=Population(idx(Nmax-i+1,1),:);
Fitness(i,1)=Fitness(Nmax-i+1);
end    
index=index-floor(index*p);
end

