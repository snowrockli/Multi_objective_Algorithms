function cell = genetic_operator(cell,x,p,pro)
[N,NM] = size(cell);
rpc=0.5;
pc=0.6;
pm=0.05;
% rpc=1;
% pm=0;
for i=1:N
    for j=1:NM
        x_glo=selection_ind(x,p);%全局最优
        x_local=selection_ind(cell{i,j}.dic_dy,p);%局部最优
        if rand<rpc
            mu=(x_glo(1:p.V)+x_local(1:p.V))/2;%均值
            sigma=abs(x_glo(1:p.V)-x_local(1:p.V));%方差
            new_solution=normrnd(mu,sigma);
            logic=rand(1,p.V)<0.25;
            new_solution(logic)=x_local(logic);
            logic=rand(1,p.V)<0.25;
            new_solution(logic)=x_glo(logic);
        else
            logic=rand(1,p.V)<pc;
            new_solution=zeros(1,p.V);
            new_solution(logic)=x_local(logic);%交叉
        end
        new_solution_pc=new_solution;%交叉后的结果
        %============变异操作==========
%         if rand<pm
%             for k=1:p.V
%                 new_solution(k)=(new_solution(k)-p.min(k))/(p.max(k)-p.min(k));
%                 x_tent(1)=new_solution(k);
%                 for tt=2:50
%                     x_tent(tt)=2*x_tent(tt-1)-floor(2*x_tent(tt-1));
%                     if x_tent(tt)==x_tent(tt-1)
%                         x_tent(tt)=x_tent(tt)+rand*(1-x_tent(tt));
%                     end
%                 end
%                 new_solution(k)=p.min(k)+x_tent(tt)*(p.max(k)-p.min(k));
%             end
%             new_solution_pm=new_solution;%变异后的结果
%             new_result_pm=f_value(new_solution_pm(1:p.V),pro);
%             new_result_pc=f_value(new_solution_pc(1:p.V),pro);
%             dom_less=0;
%             for m=1:p.M
%                 if new_result_pm(m)<=new_result_pc(m)
%                     dom_less=dom_less+1;
%                 end
%             end
%             if dom_less==p.M
%                 new_solution=new_solution_pm;
%             else
%                 new_solution=new_solution_pc;
%             end
%         end
        
        logic=(new_solution<p.min);
        temp_solution=rand(1,p.V).*(p.max-p.min)+p.min;
        new_solution(logic)=temp_solution(logic);
        logic=(new_solution>p.max);
        temp_solution=rand(1,p.V).*(p.max-p.min)+p.min;
        new_solution(logic)=temp_solution(logic);
        new_solution(p.V+1:p.V+p.M)=f_value(new_solution(1:p.V),pro);
        cell{i,j}.solution=new_solution;
        
    end
end
end
function x_glo = selection_ind(x,p)
x_inf=x(x(:,p.V+p.M+1)==inf,:);
x_non_inf=x(x(:,p.V+p.M+1)~=inf,:);
if isempty(x_non_inf)||rand<0.5
    x_glo=x_inf(randi(size(x_inf,1)),:);
else
    index=1;
    p_distance=x_non_inf(:,p.V+p.M+1)/sum(x_non_inf(:,p.V+p.M+1));
    p_accumulate=p_distance(1);
    p_rand=rand;
    while p_accumulate<p_rand
        index=index+1;
        p_accumulate=p_accumulate+p_distance(index);
    end
    x_glo=x_non_inf(index,:);
end
end