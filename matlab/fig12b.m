clear;  figure('Position',[100 100 400 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-pi/2 pi -5 5];
xx=linspace(-pi/2+.1,pi/2-.1,600);  ym1=tan(xx);  
h(1)=plot(xx,ym1,'k','LineWidth',2)
xx=linspace(pi/2+.1,pi,300);  ym1=tan(xx);  
plot(xx,ym1,'k','LineWidth',2)
xx=linspace(-pi/2+.1,.1,300);  ym1=cot(xx);  
h(2)=plot(xx,ym1,'k--','LineWidth',2)
xx=linspace(.1,pi-.1,600);  ym1=cot(xx);  
plot(xx,ym1,'k--','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-1 0 1 2 3],'YTick',[-4 -2 0 2 4],'FontSize',20,'FontWeight','bold');
plot([pi pi],[-5 5],'k:','LineWidth',2);
plot([pi/2 pi/2],[-5 5],'k:','LineWidth',2);

%assign labels for handles
legend(h,'tan x','cot x',1);
%export to eps (change path and file name accordingly)
print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\BootCampFig_1203\\BC_2003\\matlab\\fig12b'));
