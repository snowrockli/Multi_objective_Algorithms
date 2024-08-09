function GD  = Generational_Distance( pf,glo_solution )
%GD 此处显示有关此函数的摘要
%   此处显示详细说明
A=importdata(pf);
d=pdist2(A,glo_solution,'euclidean','Smallest',1);
id=pdist2(glo_solution,A,'euclidean','Smallest',1);
[m1,~]=size(glo_solution);
[m2,~]=size(A);
GD(1)=sqrt(sum(d.*d))/m1;
GD(2)=sqrt(sum(id.*id))/m2;
end

