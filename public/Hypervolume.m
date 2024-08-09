function HV  = Hypervolume(chromosome)
[m,n]=size(chromosome);
if n==2
    max_f1=max(chromosome(:,1));
    max_f2=max(chromosome(:,2));
    for i=1:m
        area(i)=abs(chromosome(i,1)-max_f1)*abs(chromosome(i,2)-max_f2);
    end
    HV=sum(area(:))/100;
elseif n==3
    max_f1=max(chromosome(:,1));
    max_f2=max(chromosome(:,2));
    max_f3=max(chromosome(:,3));
    for i=1:m
        area(i)=abs(chromosome(i,1)-max_f1)*abs(chromosome(i,2)-max_f2)*abs(chromosome(i,3)-max_f3);
    end
    HV=sum(area(:))/100;
end
end