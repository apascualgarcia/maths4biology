clear;  figure('Position',[100 100 400 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-pi 2*pi -1.1 1.1];
xx=linspace(-pi,2*pi,1000);  ym1=sin(xx);  
h(1)=plot(xx,ym1,'k','LineWidth',2)
ym1=cos(xx);  
h(2)=plot(xx,ym1,'k--','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-2 0 2 4],'YTick',[-1 -0.5 0 0.5 1],'FontSize',20,'FontWeight','bold');
plot([pi pi],[-1.1 1.1],'k:','LineWidth',2);
plot([2*pi 2*pi],[-1.1 1.1],'k:','LineWidth',2);

%assign labels for handles
legend(h,'sin x','cos x',1);
%export to eps (change path and file name accordingly)
print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\BootCampFig_1203\\BC_2003\\matlab\\fig12a'));
