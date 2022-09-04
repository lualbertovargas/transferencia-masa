clc
clear

    D1=12.5*10^-3;
    D2=25*10^-3;
    l=1;
    Dab=28;
    
    zz=D2-D1
    pasos=zz/10;
    z=0.001:pasos:zz;
    
    spr=((Dab*l*zz)/(log(D2/D1)))
    
    sol=0.053;
    Na=(sol*2)/22.4;
    Ca=Na*1000000
    
    Dab2=1.8e-10;
   
    w=((Dab2*spr*Ca)./z(1,:))
    
    L=1.1:0.1:2;
    
    %gráficas
nexttile
plot(w,L)
grid on
xlabel('W')
ylabel('L');
title('w vs L')
legend('w vs L')

nexttile
plot(w,z)
grid on
xlabel('W')
ylabel('z');
title('w vs z')
legend('w vs z')

nexttile
plot(L,z)
grid on
xlabel('L')
ylabel('z');
title('L vs z')
legend('L vs z')
    
    
    
    
    