%========================MOMCNA====================
clc
clear
close all
ttt=1;
for ttt=1:1
    
    cell_length=20;%�ռ䳤��
    gen=100;%�ݻ�����
    pro=18;%�Ż�������
    p_cut=0.9;%�ϵ���������
    [p.M,p.V,p.min,p.max]=set_pro_multi(pro);
    
    capacity_ind=50;%�ֲ���֧�������
    capacity_glo=200;%ȫ�ַ�֧�������
    
    cell = initialize_variables(cell_length,pro,p);%��Ⱥ��ʼ��
    [cell,link]= set_network(cell,p_cut);%��������
    global_dic_dy=[];%ȫ�ַ�֧����ֵ�
    for i=1:gen
        cell=non_domination_ind(cell,capacity_ind,p);%���¸����֧���
        global_dic_dy=non_domination(cell,global_dic_dy,p);%����ȫ�ַ�֧���
        global_dic_dy=delete_table(global_dic_dy,capacity_glo,p);%�����ֵ�����
        cell = genetic_operator(cell,global_dic_dy,p,pro);
    end
    [GD(ttt,:),HV(ttt,:)]=plot_f_multi(pro,global_dic_dy,p.V);
    %HV(ttt,:)=plot_f(pro,global_dic_dy,p.V);
end
%save ZDT3_GD_MOPSO.mat GD
%save MOMCNA9.mat global_dic_dy;
%cell_link(link);%��������