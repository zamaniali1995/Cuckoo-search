function [ Population] = Kmeans_and_Movement(Population,Fitness,index,Cluster_Size,w)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
tmp=0;
cnt=0;
[~,Nvar]=size(Population);
Best_Centroid=zeros(1,Nvar);
Distanc=zeros(Cluster_Size,Nvar);
Kmeans_Fitness=zeros(Cluster_Size,1);
[idx_Kmeans,Centroid]=kmeans(Population(1:index,:),Cluster_Size);
%fitness
for i=1:Cluster_Size
    for j=1:index 
        if idx_Kmeans(j,1)==i
            tmp=tmp+Fitness(j);
            cnt=cnt+1;
        end
    end
        Kmeans_Fitness(i,1)=tmp/cnt;
        tmp=0;
        cnt=0;
end    
[~,idx_Fitness]=sort(Kmeans_Fitness);
Best_Centroid=Centroid(idx_Fitness(Cluster_Size,1),:);
for i=1:Cluster_Size
    Distanc(i,:)=Best_Centroid(1,:)-Centroid(i,:);
end
for i=1:Cluster_Size
    for j=1:index
        if idx_Kmeans(j,1)==i
            for k=1:Nvar
                a=Distanc(i,k)*rand;
                Population(j,k)=Population(j,k)+(a*cos(w))+(a*sin(w));
            end
        end
    end
end    
end

