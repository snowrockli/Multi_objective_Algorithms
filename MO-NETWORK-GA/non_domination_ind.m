function cell=non_domination_ind(cell,capacity_ind,p)
[N,~]=size(cell);
for i=1:N
    for j=1:N
        xx=[];
        [K,~]=size(cell{i,j}.neighbor);
        for k=1:K
            xx{k}=cell{cell{i,j}.neighbor(k,1),cell{i,j}.neighbor(k,2)};
        end
        cell{i,j}.dic_dy=non_domination(xx,cell{i,j}.dic_dy,p);
        cell{i,j}.dic_dy=delete_table(cell{i,j}.dic_dy,capacity_ind,p);
    end
end
end