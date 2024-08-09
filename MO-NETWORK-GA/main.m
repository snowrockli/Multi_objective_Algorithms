%========================MOMCNA====================
clc
clear
close all
ttt=1;
for ttt=1:1
    
    cell_length=20;%空间长度
    gen=100;%演化代数
    pro=18;%优化问题编号
    p_cut=0.9;%断点重连概率
    [p.M,p.V,p.min,p.max]=set_pro_multi(pro);
    
    capacity_ind=50;%局部非支配解容量
    capacity_glo=200;%全局非支配解容量
    
    cell = initialize_variables(cell_length,pro,p);%种群初始化
    [cell,link]= set_network(cell,p_cut);%构建网络
    global_dic_dy=[];%全局非支配解字典
    for i=1:gen
        cell=non_domination_ind(cell,capacity_ind,p);%更新个体非支配解
        global_dic_dy=non_domination(cell,global_dic_dy,p);%更新全局非支配解
        global_dic_dy=delete_table(global_dic_dy,capacity_glo,p);%限制字典容量
        cell = genetic_operator(cell,global_dic_dy,p,pro);
    end
    [GD(ttt,:),HV(ttt,:)]=plot_f_multi(pro,global_dic_dy,p.V);
    %HV(ttt,:)=plot_f(pro,global_dic_dy,p.V);
end
%save ZDT3_GD_MOPSO.mat GD
%save MOMCNA9.mat global_dic_dy;
%cell_link(link);%画出网络