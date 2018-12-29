clear;  figure('Position',[100 100 700 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-3 3 -2 15];
xx=linspace(-3,3,1000);  ym1=exp(xx);  
h(1)=plot(xx,ym1,'k','LineWidth',2)
xx=linspace(-3,3,1000);  ym1=exp(-xx);  
h(2)=plot(xx,ym1,'k--','LineWidth',2)
xx=linspace(-3,3,1000);  ym1=2.^xx;  
h(3)=plot(xx,ym1,'k-.','LineWidth',2)
xx=linspace(-3,3,1000);  ym1=10.^xx;  
h(4)=plot(xx,ym1,'k:','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-2 -1 0 1 2 ],'YTick',[0 5 10],'FontSize',20,'FontWeight','bold');


%assign labels for handles
legend(h,'e^{x}','e^{-x}','10^{x}','2^{x}',2);
%export to eps (change path and file name accordingly)
%print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\BootCampFig_1203\\BC_2003\\matlab\\fig13'));


