function cell_link(link)
[cell_length,~]=size(link);
figure;
axis([0,cell_length+1,0,cell_length+1]);
for i=1:cell_length
    for j=1:cell_length
        for p=1:cell_length
            for q=1:cell_length
                if link(p,q,i,j)==1&&link(i,j,p,q)==1
                    a=[i p];
                    b=[j q];
                    line(a,b);
                end
            end
        end
    end
end
end