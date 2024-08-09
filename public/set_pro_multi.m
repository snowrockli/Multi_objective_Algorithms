function [M,V,min_a,max_b]=set_pro_multi(pro)
switch pro
    case 1
        % M is the number of objectives.
        M = 2;V = 3;min_a(1:V)=-5;max_b(1:V)=5;
        % V is the number of decision variables. In this case it is
        % difficult to visualize the decision variables space while the
        % objective space is just two dimensional.
    case 2
        M = 3;V = 12;min_a(1:V)=0;max_b(1:V)=1;
    case 3
        M=3;V=2;min_a(1:V)=-3;max_b(1:V)=3;
    case 4
        M=2;V=30;min_a(1:V)=0;max_b(1:V)=1;
    case 5
        M=2;V=6;min_a(1:V)=0;max_b(1:V)=1;
    case 6
        M=2;V=1;min_a(1:V)=-5;max_b(1:V)=10;
    case 7
        M=2;V=20;min_a(1:V)=0;max_b(1:V)=1;
    case 8
        M=2;V=30;min_a(1:V)=0;max_b(1:V)=1;
    case 9
        M=2;V=30;min_a(1:V)=0;max_b(1:V)=1;
    case 10
        M=2;V=10;min_a(1)=0;max_b(1)=1;min_a(2:V)=-5;max_b(2:V)=5;
    case 11
        M = 3;V = 7;min_a(1:V)=0;max_b(1:V)=1;
    case 12
        M = 3;V = 12;min_a(1:V)=0;max_b(1:V)=1;
    case 13
        M = 3;V = 12;min_a(1:V)=0;max_b(1:V)=1;
    case 14
        M = 3;V = 12;min_a(1:V)=0;max_b(1:V)=1;
    case 15
        M = 3;V = 12;min_a(1:V)=0;max_b(1:V)=1;
    case 16
        M = 3;V = 22;min_a(1:V)=0;max_b(1:V)=1;
    case 17
        M = 2;V = 3;min_a(1:V)=-4;max_b(1:V)=4;
    case 18
        M = 3;V = 2;min_a(1:V)=-4;max_b(1:V)=4;
end
end