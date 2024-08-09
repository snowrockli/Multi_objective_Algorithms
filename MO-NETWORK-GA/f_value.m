function f= f_value(x,pro)
switch pro
    case 1
        f = [];
        %% Objective function one
        f(1) = -10*exp(-0.2*sqrt(x(1)^2+x(2)^2))-10*exp(-0.2*sqrt(x(2)^2+x(3)^2));
        summ = 0;
        for i = 1 : 3
            summ = summ + abs(x(i))^0.8+5*sin(x(i)^3);
        end
        %% Objective function two
        f(2) = summ;
    case 2
        f = [];
        %% Intermediate function
        g_x = 0;
        for i = 3 : 12
            g_x = g_x + (x(i) - 0.5)^2;
        end
        %% Objective function one
        f(1) = (1 + g_x)*cos(0.5*pi*x(1))*cos(0.5*pi*x(2));
        %% Objective function two
        f(2) = (1 + g_x)*cos(0.5*pi*x(1))*sin(0.5*pi*x(2));
        %% Objective function three
        f(3) = (1 + g_x)*sin(0.5*pi*x(1));
    case 3
        f = [];
        f(1)=0.5*(x(1)^2+x(2)^2)+sin(x(1)^2+x(2)^2);
        f(2)=(3*x(1)-2*x(2)+4)^2/8+(x(1)-x(2)+1)^2/27+15;
        f(3)=1/(x(1)^2+x(2)^2+1)-1.1*exp(-(x(1)^2+x(2)^2));
    case 4
        f=[];
        f(1)=x(1);
        summ = 0;
        for i = 2 : 30
            summ = summ + x(i);
        end
        f(2)=(1+9*summ/29)*(1-sqrt(x(1)/(1+9*summ/29))-(x(1)/(1+9*summ/29))*sin(10*pi*x(1)));
    case 5
        f = [];
        %% Objective function one
        f(1) = 1 - exp(-4*x(1))*(sin(6*pi*x(1)))^6;
        summ = 0;
        for i = 2 : 6
            summ = summ + x(i)/4;
        end
        %% Intermediate function
        g_x = 1 + 9*(summ)^(0.25);
        %% Objective function one
        f(2) = g_x*(1 - ((f(1))/(g_x))^2);
    case 6
        f = [];
        if x(1)<=1
            f(1)=-x(1);
        elseif x(1)>1&&x(1)<=3
            f(1)=x(1)-2;
        elseif x(1)>3&&x(1)<=4
            f(1)=4-x(1);
        elseif x(1)>4
            f(1)=x(1)-4;
        end
        f(2)=(x(1)-5)^2;
    case 7
%         x_temp=x(1:10);
%         x_temp=x_temp./sum(x_temp);
%         Q=400;
%         %===========路段通行能力=================
%         ca(1)=500;ca(2)=320;ca(3)=500;ca(4)=640;ca(5)=500;ca(6)=640;
%         ca(7)=500;ca(8)=640;ca(9)=320;ca(10)=320;ca(11)=640;ca(12)=320;
%         ca(13)=500;ca(14)=640;ca(15)=320;ca(16)=320;ca(17)=640;
%         %===========路段自由流时间===============
%         t0(1)=10;t0(2)=10;t0(3)=12;t0(4)=10;t0(5)=14;t0(6)=10;
%         t0(7)=10;t0(8)=12;t0(9)=10;t0(10)=12;t0(11)=8;t0(12)=10;
%         t0(13)=10;t0(14)=12;t0(15)=10;t0(16)=12;t0(17)=8;
%         %===========路段费用===============
%         c0(1)=13;c0(2)=13;c0(3)=9;c0(4)=13;c0(5)=7;c0(6)=13;
%         c0(7)=13;c0(8)=9;c0(9)=13;c0(10)=9;c0(11)=10;c0(12)=13;
%         c0(13)=13;c0(14)=9;c0(15)=13;c0(16)=9;c0(17)=10;
%         %========================计算每个路段流量=================
%         v(1)=Q*(x_temp(1)+x_temp(2)+x_temp(3)+x_temp(4)+x_temp(5)+x_temp(6));
%         v(2)=Q*(x_temp(1)+x_temp(2)+x_temp(3));v(3)=Q*(x_temp(1));v(4)=Q*(x_temp(8)+x_temp(9)+x_temp(10));
%         v(5)=Q*(x_temp(4)+x_temp(5)+x_temp(9)+x_temp(10));v(6)=Q*(x_temp(4));v(7)=Q*(x_temp(7));
%         v(8)=Q*(x_temp(6)+x_temp(7)+x_temp(8));
%         v(9)=Q*(x_temp(3)+x_temp(5)+x_temp(6)+x_temp(7)+x_temp(8)+x_temp(9));
%         v(10)=Q*(x_temp(7)+x_temp(8)+x_temp(9)+x_temp(10));v(11)=Q*(x_temp(4)+x_temp(5)+x_temp(6));
%         v(12)=Q*(x_temp(2)+x_temp(3));v(13)=Q*(x_temp(1));v(14)=Q*(x_temp(7));v(15)=Q*(x_temp(6)+x_temp(8));
%         v(16)=Q*(x_temp(5)+x_temp(9));v(17)=Q*(x_temp(1)+x_temp(2)+x_temp(4)+x_temp(10));
%         for i=1:17
%             ta(i)=t0(i)*(1+0.15*(v(i)/ca(i))^4);
%             %tt1(i)=t0(i)*v(i)+0.03*t0(i)*(v(i)^5/ca(i));
%             tt1(i)=v(i)*c0(i);
%             tt2(i)=v(i)*ta(i);
%         end
%         
%         f(1)=sum(tt1(:));
%         f(2)=sum(tt2(:));
        
        
        x_temp=x(1:20);
        x_temp=x_temp./sum(x_temp);
        Q=400;
        %===========路段通行能力=================
        ca(1)=500;ca(2)=320;ca(3)=500;ca(4)=640;ca(5)=500;ca(6)=640;
        ca(7)=500;ca(8)=640;ca(9)=320;ca(10)=320;ca(11)=640;ca(12)=320;
        ca(13)=500;ca(14)=640;ca(15)=320;ca(16)=320;ca(17)=640;
        ca(18)=500;ca(19)=320;ca(20)=500;ca(21)=640;ca(22)=500;ca(23)=640;ca(24)=500;
        %===========路段自由流时间===============
        t0(1)=10;t0(2)=10;t0(3)=12;t0(4)=10;t0(5)=14;t0(6)=10;
        t0(7)=10;t0(8)=12;t0(9)=10;t0(10)=12;t0(11)=8;t0(12)=10;
        t0(13)=10;t0(14)=12;t0(15)=10;t0(16)=12;t0(17)=8;
        t0(18)=10;t0(19)=10;t0(20)=12;t0(21)=10;t0(22)=14;t0(23)=10;t0(24)=12;
        %=========路段费用=================
        c0(1)=13;c0(2)=13;c0(3)=9;c0(4)=10;c0(5)=8;c0(6)=13;
        c0(7)=13;c0(8)=9;c0(9)=11;c0(10)=12;c0(11)=8;c0(12)=13;
        c0(13)=13;c0(14)=9;c0(15)=10;c0(16)=9;c0(17)=8;
        c0(18)=13;c0(19)=10;c0(20)=9;c0(21)=13;c0(22)=8;c0(23)=13;c0(24)=9;
        %========================计算每个路段流量=================
        v(1)=Q*(x_temp(1)+x_temp(2)+x_temp(3)+x_temp(4)+x_temp(5)+x_temp(6)+x_temp(7)+x_temp(8)+x_temp(9)+x_temp(10));
        v(2)=Q*(x_temp(1)+x_temp(2)+x_temp(3)+x_temp(4));v(3)=Q*(x_temp(1));v(4)=Q*(x_temp(11)+x_temp(12)+x_temp(13)+x_temp(14)+x_temp(15)+x_temp(16));
        v(5)=Q*(x_temp(5)+x_temp(6)+x_temp(7)+x_temp(11)+x_temp(12)+x_temp(13));v(6)=Q*(x_temp(2)+x_temp(5)+x_temp(11));v(7)=Q*(x_temp(17)+x_temp(18)+x_temp(19));
        v(8)=Q*(x_temp(8)+x_temp(9)+x_temp(14)+x_temp(15)+x_temp(17)+x_temp(18));
        v(9)=Q*(x_temp(3)+x_temp(6)+x_temp(8)+x_temp(12)+x_temp(14)+x_temp(17));
        v(10)=Q*(x_temp(20));v(11)=Q*(x_temp(10)+x_temp(16)+x_temp(19)+x_temp(20));
        v(12)=Q*(x_temp(4)+x_temp(7)+x_temp(9)+x_temp(10)+x_temp(13)+x_temp(15)+x_temp(16)+x_temp(18)+x_temp(19)+x_temp(20));
        v(13)=Q*(x_temp(11)+x_temp(12)+x_temp(13)+x_temp(14)+x_temp(15)+x_temp(16)+x_temp(17)+x_temp(18)+x_temp(19)+x_temp(20));
        v(14)=Q*(x_temp(5)+x_temp(6)+x_temp(7)+x_temp(8)+x_temp(9)+x_temp(10));v(15)=Q*(x_temp(2)+x_temp(3)+x_temp(4));
        v(16)=Q*(x_temp(1));v(17)=Q*(x_temp(17)+x_temp(18)+x_temp(19)+x_temp(20));
        v(18)=Q*(x_temp(8)+x_temp(9)+x_temp(10)+x_temp(14)+x_temp(15)+x_temp(16));
        v(19)=Q*(x_temp(3)+x_temp(4)+x_temp(6)+x_temp(7)+x_temp(12)+x_temp(13));
        v(20)=Q*(x_temp(1)+x_temp(2)+x_temp(5)+x_temp(11));v(21)=Q*(x_temp(20));
        v(22)=Q*(x_temp(10)+x_temp(16)+x_temp(19));v(23)=Q*(x_temp(4)+x_temp(7)+x_temp(9)+x_temp(13)+x_temp(15)+x_temp(18));
        v(24)=Q*(x_temp(1)+x_temp(2)+x_temp(3)+x_temp(5)+x_temp(6)+x_temp(8)+x_temp(11)+x_temp(12)+x_temp(14)+x_temp(17));
        for i=1:24
            ta(i)=t0(i)*(1+0.15*(v(i)/ca(i))^4);
            %tt1(i)=t0(i)*v(i)+0.03*t0(i)*(v(i)^5/ca(i));
            tt1(i)=v(i)*c0(i);
            tt2(i)=v(i)*ta(i);
        end  
        f(1)=sum(tt1(:));
        f(2)=sum(tt2(:));
    case 8
        f=[];
        f(1)=x(1);
        summ = 0;
        for i = 2 : 30
            summ = summ + x(i);
        end
        f(2)=(1+9*summ/29)*(1-sqrt(x(1)/(1+9*summ/29)));
    case 9
        f=[];
        f(1)=x(1);
        summ = 0;
        for i = 2 : 30
            summ = summ + x(i);
        end
        f(2)=(1+9*summ/29)*(1-(x(1)/(1+9*summ/29))^2);
    case 10%ZDT4
        f=[];
        f(1)=x(1);
        summ = 0;
        for i = 2 : 10
            summ = summ + x(i)^2-10*cos(4*pi*x(i));
        end
        f(2)=(91+summ)*(1-sqrt(x(1)/(91+summ)));
    case 11%DTLZ1
        f = [];
        %% Intermediate function
        g_x = 0;
        for i = 3 : 7
            g_x = g_x + (x(i) - 0.5)^2-cos(20*pi*(x(i)-0.5));
        end
        %% Objective function one
        f(1) = 0.5*x(1)*x(2)*(1+100*(5+g_x));
        %% Objective function two
        f(2) = 0.5*x(1)*(1-x(2))*(1+100*(5+g_x));
        %% Objective function three
        f(3) = 0.5*(1-x(1))*(1+100*(5+g_x));
    case 12
        f = [];
        %% Intermediate function
        g_x = 0;
        for i = 3 : 12
            g_x = g_x + (x(i) - 0.5)^2-cos(20*pi*(x(i)-0.5));
        end
        f(1) = (1 + 0.05*(10+g_x))*cos(0.5*pi*x(1))*cos(0.5*pi*x(2));
        %% Objective function two
        f(2) = (1 + 0.05*(10+g_x))*cos(0.5*pi*x(1))*sin(0.5*pi*x(2));
        %% Objective function three
        f(3) = (1 + 0.05*(10+g_x))*sin(0.5*pi*x(1));
    case 13
        f = [];
        %% Intermediate function
        g_x = 0;
        for i = 3 : 12
            g_x = g_x + (x(i) - 0.5)^2;
        end
        %% Objective function one
        f(1) = (1 + g_x)*cos(0.5*pi*x(1)^100)*cos(0.5*pi*x(2)^100);
        %% Objective function two
        f(2) = (1 + g_x)*cos(0.5*pi*x(1)^100)*sin(0.5*pi*x(2)^100);
        %% Objective function three
        f(3) = (1 + g_x)*sin(0.5*pi*x(1)^100);
    case 14
        f = [];
        %% Intermediate function
        g_x = 0;
        for i = 3 : 12
            g_x = g_x + (x(i) - 0.5)^2;
        end
        %% Objective function one
        f(1) = (1 + g_x)*cos(0.5*pi*x(1))*cos(0.5*pi*(1+2*g_x*x(2))/(2*(1+g_x)));
        %% Objective function two
        f(2) = (1 + g_x)*cos(0.5*pi*x(1))*sin(0.5*pi*(1+2*g_x*x(2))/(2*(1+g_x)));
        %% Objective function three
        f(3) = (1 + g_x)*sin(0.5*pi*x(1));
    case 15
        f = [];
        %% Intermediate function
        g_x = 0;
        for i = 3 : 12
            g_x = g_x + x(i)^0.1;
        end
        %% Objective function one
        f(1) = (1 + g_x)*cos(0.5*pi*x(1))*cos(0.5*pi*(1+2*g_x*x(2))/(2*(1+g_x)));
        %% Objective function two
        f(2) = (1 + g_x)*cos(0.5*pi*x(1))*sin(0.5*pi*(1+2*g_x*x(2))/(2*(1+g_x)));
        %% Objective function three
        f(3) = (1 + g_x)*sin(0.5*pi*x(1));
    case 16
        summ=0;
        for i=3:22
            summ=summ+x(i);
        end
        f(1) =x(1);
        f(2)=x(2);
        summ1=0;
        for i=1:2
            summ1=summ1+f(i)*(1+sin(3*pi*f(i)))/(2+(9/20)*summ);
        end
        f(3)=(2+(9/20)*summ)*(3-summ1);
    case 17
        summ1=0;summ2=0;
        for i=1:3
            summ1=summ1+(x(i)-1/sqrt(3))^2;
            summ2=summ2+(x(i)+1/sqrt(3))^2;
        end
        f(1)=1-exp(-summ1);
        f(2)=1-exp(-summ2);
    case 18
        f(1)=(x(1)-2)^2/2+(x(2)+1)^2/13+3;
        f(2)=(x(1)+x(2)-3)^2/36+(-x(1)+x(2)+2)^2/8-17;
        f(3)=(x(1)+2*x(2)-1)^2/175+(2*x(2)-x(1))^2/17-13;
end
end