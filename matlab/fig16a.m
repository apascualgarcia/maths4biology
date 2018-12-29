clear;  figure('Position',[100 100 400 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-2.8 2.8 -3 3];
xx=linspace(-2.8,2.8,1000);  ym1=-xx;  
h(1)=plot(xx,ym1,'k:','LineWidth',2)
ym1=xx*0+1;  
h(2)=plot(xx,ym1,'k--','LineWidth',2)
ym1=xx*0+1-xx;  
h(3)=plot(xx,ym1,'k','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-2 -1 0 1 2],'YTick',[-2 -1 0 1 2],'FontSize',20,'FontWeight','bold');

%assign labels for handles
g=legend(h,'f_{1}(x) = -x','f_{2}(x) = 1','f_{1}(x) + f_{2}(x)',3);
set(g,'Color','none')
%export to eps (change path and file name accordingly)
 print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\BootCampFig_1203\\BC_2003\\matlab\\fig16a'));
