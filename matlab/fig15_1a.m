clear;  figure('Position',[100 100 400 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-1.1 1.1 -1.8 3.2];
xx=linspace(-1,1,1000);  ym1=asin(xx);  
h(1)=plot(xx,ym1,'k','LineWidth',2)
xx=linspace(-1,0,1000);  ym1=asin(xx);  plot(-xx,ym1+pi,'k:','LineWidth',2)
xx=linspace(-1,1,1000);  ym1=acos(xx);  
h(2)=plot(xx,ym1,'k--','LineWidth',2)
xx=linspace(0,1,1000);  ym1=acos(xx);  plot(xx,-ym1,'k:','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-1 -0.5 0 0.5 1],'YTick',[-1 0 1 2],'FontSize',20,'FontWeight','bold');
plot([-1.1 1.1],[pi/2 pi/2],'k:','LineWidth',2);  plot([-1.1 1.1],[-pi/2 -pi/2],'k:','LineWidth',2);
plot([-1.1 1.1],[pi pi],'k:','LineWidth',2);

%assign labels for handles
g=legend(h,' asin x','acos x',2);
set(g,'Color','none')
%export to eps (change path and file name accordingly)
% print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\BootCampFig_1203\\BC_2003\\matlab\\fig15_1a'));
