clear;  figure('Position',[100 100 600 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-2.5 2.5 -4.5 3];
xx=linspace(-3,3,600);  ym1=xx.^2-3;  
h(1)=plot(xx,ym1,'k','LineWidth',2)
ym1=2*xx;  
h(2)=plot(xx,ym1,'k--','LineWidth',2)
%xx=linspace(-pi/2+.1,.1,300);  ym1=cot(xx);  plot(xx,ym1,'k--','LineWidth',2)
%xx=linspace(.1,pi-.1,600);  ym1=cot(xx);  plot(xx,ym1,'k--','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;

plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[-4.5 -3],'k-.','LineWidth',2); plot([0 0],[0 3],'k-.','LineWidth',2);

set(gca,'XTick',[-2 -1 0 1 2 ],'YTick',[-4 -2 0 2 4],'FontSize',20,'FontWeight','bold');

scatter([-1.5 0 1],[1.5^2-3 -3 -2],150,'k','filled');
scatter([-1.5 0 1],[-3 0 2],150,'k','filled');

plot([-1.5 -1.5],[-3 1.5^2-3],'k:','LineWidth',2);
plot([0 0],[-3 0],'k:','LineWidth',2);
plot([1 1],[-2 2],'k:','LineWidth',2);
dx=0.4;  plot([-1.5-dx*.85 -1.5+dx*.85],[1.5^2-3+3*dx*.85,1.5^2-3-3*dx*.85],'k','LineWidth',3);
plot([-1.5*dx +1.5*dx],[-3 -3],'k','LineWidth',3); plot([1-dx 1.+dx],[-2-2*dx,-2+2*dx],'k','LineWidth',3);

%assign labels for handles
g=legend(h,'y=x^{2}','y''=2x',4);
set(g,'Color','none')
%export to eps (change path and file name accordingly)
print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\BootCampFig_1203\\BC_2003\\matlab\\fig18'));
