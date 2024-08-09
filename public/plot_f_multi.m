function [GD,HV]=plot_f_multi(pro,chromosome,V)
switch pro
    case 1
        plot(chromosome(:,V + 1),chromosome(:,V + 2),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        grid on;
        GD  = Generational_Distance( 'MOP4_Kursawe.txt',chromosome(:,V + 1:V + 2) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 2));
    case 2
        plot3(chromosome(:,V + 1),chromosome(:,V + 2),chromosome(:,V + 3),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        zlabel('f(x_3)');
        grid on;
        GD  = Generational_Distance( 'MOP1_DTLZ2.txt',chromosome(:,V + 1:V + 3) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 3));
    case 3
        plot3(chromosome(:,V + 1),chromosome(:,V + 2),chromosome(:,V + 3),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        zlabel('f(x_3)');
        grid on;
        GD  = Generational_Distance( 'MOP2_Viennet3.txt',chromosome(:,V + 1:V + 3) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 3));
    case 4
        plot(chromosome(:,V + 1),chromosome(:,V + 2),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        grid on;
        GD  = Generational_Distance( 'MOP3_ZDT3.txt',chromosome(:,V + 1:V + 2) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 2));
    case 5
        plot(chromosome(:,V + 1),chromosome(:,V + 2),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        grid on;
        GD  = Generational_Distance( 'MOP5_ZDT6.txt',chromosome(:,V + 1:V + 2) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 2));
    case 6
        plot(chromosome(:,V + 1),chromosome(:,V + 2),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        grid on;
        GD  = Generational_Distance( 'MOP6_schaffer2.txt',chromosome(:,V + 1:V + 2) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 2));
    case 7
        %a=find(chromosome(:,V+3)==1);
        %a=a(1:200);
        plot(chromosome(:,V+1),chromosome(:,V+2),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        grid on;
        HV  = Hypervolume(chromosome(:,V + 1:V + 2));
    case 8
        plot(chromosome(:,V + 1),chromosome(:,V + 2),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        grid on;
        GD  = Generational_Distance( 'MOP8_ZDT1.txt',chromosome(:,V + 1:V + 2) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 2));
    case 9
        plot(chromosome(:,V + 1),chromosome(:,V + 2),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        grid on;
        GD  = Generational_Distance( 'MOP9_ZDT2.txt',chromosome(:,V + 1:V + 2) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 2));
    case 10
        plot(chromosome(:,V + 1),chromosome(:,V + 2),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        grid on;
        GD  = Generational_Distance( 'ZDT4.txt',chromosome(:,V + 1:V + 2) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 2));
    case 11
        plot3(chromosome(:,V + 1),chromosome(:,V + 2),chromosome(:,V + 3),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        zlabel('f(x_3)');
        grid on;
        GD  = Generational_Distance( 'DTLZ1.txt',chromosome(:,V + 1:V + 3) ); 
        HV  = Hypervolume(chromosome(:,V + 1:V + 3));
    case 12
        plot3(chromosome(:,V + 1),chromosome(:,V + 2),chromosome(:,V + 3),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        zlabel('f(x_3)');
        grid on;
        GD  = Generational_Distance( 'DTLZ3.txt',chromosome(:,V + 1:V + 3) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 3));
    case 13
        plot3(chromosome(:,V + 1),chromosome(:,V + 2),chromosome(:,V + 3),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        zlabel('f(x_3)');
        grid on;
        GD  = Generational_Distance( 'DTLZ4.txt',chromosome(:,V + 1:V + 3) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 3));
    case 14
        plot3(chromosome(:,V + 1),chromosome(:,V + 2),chromosome(:,V + 3),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        zlabel('f(x_3)');
        grid on;
        GD  = Generational_Distance( 'DTLZ5.txt',chromosome(:,V + 1:V + 3) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 3));
    case 15
        plot3(chromosome(:,V + 1),chromosome(:,V + 2),chromosome(:,V + 3),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        zlabel('f(x_3)');
        grid on;
        GD  = Generational_Distance( 'DTLZ6.txt',chromosome(:,V + 1:V + 3) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 3));
    case 16
        plot3(chromosome(:,V + 1),chromosome(:,V + 2),chromosome(:,V + 3),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        zlabel('f(x_3)');
        grid on;
        GD  = Generational_Distance( 'DTLZ7.txt',chromosome(:,V + 1:V + 3) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 3));
    case 17
        plot(chromosome(:,V + 1),chromosome(:,V + 2),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        grid on;
        GD  = Generational_Distance( 'Fonseca.txt',chromosome(:,V + 1:V + 2) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 2));
    case 18
        plot3(chromosome(:,V + 1),chromosome(:,V + 2),chromosome(:,V + 3),'*');
        xlabel('f(x_1)');
        ylabel('f(x_2)');
        zlabel('f(x_3)');
        grid on;
        GD  = Generational_Distance( 'Viennet2.txt',chromosome(:,V + 1:V + 3) );
        HV  = Hypervolume(chromosome(:,V + 1:V + 3));
end
end