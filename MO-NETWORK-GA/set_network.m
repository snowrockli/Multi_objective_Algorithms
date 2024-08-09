function [cell,link] = set_network(cell,p_cut)
%=============建立规则网络============
[N,~]=size(cell);
for i=1:N
    [i_start,i_end]=get_start_end(i,N);
    for j=1:N
        [j_start,j_end]=get_start_end(j,N);
        k_num=1;
        for p=i_start:i_end
            for q=j_start:j_end
                if (i==p)*(j==q)==0
                    link(i,j,p,q)=1;
                    link(p,q,i,j)=1;
                    cell{i,j}.neighbor(k_num,:)=[p,q];%记录邻居
                    k_num=k_num+1;
                end
            end
        end
    end
end

%===============建立复杂网络==========================
for i=1:N
    for j=1:N
%         fri_x=[];
%         fri_y=[];
%         for p=1:N
%             for q=1:N
%                 if link(i,j,p,q)==1&&link(p,q,i,j)==1&&((i==p)*(j==q)==0)
%                     fri_x=[fri_x,p];
%                     fri_y=[fri_y,q];
%                 end
%             end
%         end
        [mm,~]=size(cell{i,j}.neighbor);
        if rand<p_cut
%             index_sel=randi([1,length(fri_x)],1,1);
%             link(i,j,fri_x(index_sel),fri_y(index_sel))=0;
%             link(fri_x(index_sel),fri_y(index_sel),i,j)=0;
            index_sel=randi([1,mm],1,1);
            link(i,j,cell{i,j}.neighbor(index_sel,1),cell{i,j}.neighbor(index_sel,2))=0;
            link(cell{i,j}.neighbor(index_sel,1),cell{i,j}.neighbor(index_sel,2),i,j)=0;
            for k=1:N
                pos_comb((k-1)*N+1:k*N,1)=k;
                pos_comb((k-1)*N+1:k*N,2)=[1:N];
            end
            new_pos_comb=setdiff(pos_comb,cell{i,j}.neighbor,'rows');
            new_sel=randi([1,length(new_pos_comb)],1,1);
            link(i,j,new_pos_comb(new_sel,1),new_pos_comb(new_sel,2))=1;
            link(new_pos_comb(new_sel,1),new_pos_comb(new_sel,2),i,j)=1;
        end
    end
end
%==================更新邻居=======================
for i=1:N
    for j=1:N
        k=1;
        for m=1:N
            for n=1:N
                if link(i,j,m,n)==1&&link(m,n,i,j)==1&&any([i-m,j-n])~=0
                    cell{i,j}.neighbor(k,1)=m;
                    cell{i,j}.neighbor(k,2)=n;
                    k=k+1;
                end
            end
        end
    end
end
end
function [x_start,x_end]=get_start_end(x,N)%判定邻居范围
    x_start=max(x-1,1);
    x_end=min(x+1,N);
end