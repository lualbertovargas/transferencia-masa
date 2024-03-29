a=[
[0, 1.35158, 1, 1],
[0.1, 1.28704, 0.9, 1.0026],
[0.2, 1.22926, 0.8, 1.01079],
[0.3, 1.17799, 0.7, 1.02528],
[0.4, 1.13304, 0.6, 1.04702],
[0.5, 1.09434, 0.5, 1.07728],
[0.6, 1.06189, 0.4, 1.11772],
[0.7, 1.03585, 0.3, 1.1706],
[0.8, 1.01648, 0.2, 1.2389],
[0.9, 1.00429, 0.1, 1.32711], 
[1, 1, 0, 1.44094]
] ;
x1=a (:,1) ;
gamma1=a (:,2) ;
x2=a (:,3) ;x
gamma2=a (:,4) ;
Pvap1=357.091;%mmhg
Pvap2=74.0185;%mmhg
P1=Pvap1.*x1.*gamma1 ;
P2=Pvap2.*x2.*gamma2 ;
y1=P1./(P1+P2);
y2=P2./(P1+P2);
datos=[x1,y1,gamma1,P1,x2,y2,gamma2,P2]
plot(x1,P1,y1,P1,x1,P2,y1,P2); 
grid minor; 
axis square ;
title('Diagrama P−x−y ');
xlabel('Composicion x−y') ; 
ylabel('P en [mmHg]') ;
