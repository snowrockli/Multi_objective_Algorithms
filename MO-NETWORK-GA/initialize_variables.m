function cell = initialize_variables(N,pro,p)
for i=1:N
    for j=1:N
        for k=1:p.V
            cell{i,j}.solution(k)=rand*(p.max(k)-p.min(k))+p.min(k);
        end
        cell{i,j}.neighbor=[];
        cell{i,j}.dic_dy=[];
        cell{i,j}.solution(p.V+1:p.V+p.M)=f_value(cell{i,j}.solution(1:p.V),pro);
    end
end
end