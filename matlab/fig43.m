clear;  figure('Position',[100 100 600 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-2*pi 2*pi -2.75 3];
xx=linspace(xy(1),xy(2),600);  
ym1=2*sin(xx-pi/3);  
h(1)=plot(xx,ym1,'k--','LineWidth',2)
ym1=-sin(2*xx+pi/6); 
h(2)=plot(xx,ym1,'k:','LineWidth',2)
ym1=2*sin(xx-pi/3)-sin(2*xx+pi/6);  
h(3)=plot(xx,ym1,'k','LineWidth',2.5)

set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-6 -4 -2 0 2 4 6],'YTick',[-2 -1 0 1 2],'FontSize',20,'FontWeight','bold');

%assign labels for handles
g=legend(h,'f_{1}(x)=2sin(x-\pi/3)','f_{2}(x)=-sin(2x+\pi/6)','f_{1}(x)+f_{2}(x)',4);
set(g,'Color','none')
set(g,'FontSize',18)
%export to eps (change path and file name accordingly)
print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\matlab\\fig43'));
