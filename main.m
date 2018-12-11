Nmax=10000;
Nvar=3;
p=0.2;
Population=zeros(Nmax,Nvar);
Cuckoo_Num=5;
VarHi=1;
VarLo=0;
Alfa=2;
w=pi/6;
Cluster_Size=5;
Max_Num_Eggs=15;
Min_Num_Eggs=5;
Eggs_Num=zeros(Nmax,1);
Fitness=zeros(Nmax,1);
ELR=zeros(Nmax,1);
[Population,index]=Init_Population(Population,Cuckoo_Num,Nvar,VarHi,VarLo);
for iteration=1:20
    if index<150
        [Eggs_Num,Sum_Of_Eggs]=Assignment_Of_Eggs(Eggs_Num,index,Max_Num_Eggs,Min_Num_Eggs);
        ELR=Caculation_Of_ELR(ELR,Eggs_Num,Sum_Of_Eggs,index,Alfa,VarHi,VarLo);
        [Population,index]=Placements_Of_Eggs(Population,ELR,Eggs_Num,index,Nvar,VarHi,VarLo);
    end
    Fitness=Calculation_Of_Fitness(Population,Fitness,index);
    [Population,index,Fitness]=Kill_P(Fitness,Population,index,p);
    Population=Kmeans_and_Movement(Population,Fitness,index,Cluster_Size,w);
end