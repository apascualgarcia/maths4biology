clear;  figure('Position',[100 100 400 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-1.25 3 -3.5 3.5];
xx=linspace(-1.25,3.5,1000);  ym1=exp(-xx);  
h(1)=plot(xx,ym1,'k:','LineWidth',2)
xx=linspace(-1.25,3.5,1000);  ym1=-exp(-xx);  
h(2)=plot(xx,ym1,'k:','LineWidth',2)
xx=linspace(-1.25,3.5,1000);  ym1=exp(-xx).*cos(10*xx);  
h(3)=plot(xx,ym1,'k','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-1 0 1 2 ],'YTick',[-3 -2 -1 0 1 2 3],'FontSize',20,'FontWeight','bold');

%assign labels for handles
g=legend(h,'e^{-x}','-e^{-x}','e^{-x}.cos 10x',1);
set(g,'Color','none')
%export to eps (change path and file name accordingly)
  print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\BootCampFig_1203\\BC_2003\\matlab\\fig17a'));
