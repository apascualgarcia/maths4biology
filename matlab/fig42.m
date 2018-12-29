clear;  figure('Position',[100 100 600 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-2*pi 2*pi -2.5 2.5];
xx=linspace(xy(1),xy(2),600);  ym1=2*sin(xx-pi/3);  
h(1)=plot(xx,ym1,'k','LineWidth',2.5)
ym1=-sqrt(3)*cos(xx);  
h(2)=plot(xx,ym1,'k--','LineWidth',2)
ym1=sin(xx);  
h(3)=plot(xx,ym1,'k:','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-6 -4 -2 0 2 4 6],'YTick',[-2 -1 0 1 2],'FontSize',20,'FontWeight','bold');

%assign labels for handles
g=legend(h,'2sinx-\pi/3','\surd{3} cos x','sin x',0);
set(g,'Color','none')
%export to eps (change path and file name accordingly)
% print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\matlab\\fig42'));
