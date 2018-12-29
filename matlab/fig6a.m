clear;  figure('Position',[100 100 400 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-2.5 2.5 -2.5 2.5];
xx=linspace(xy(1),xy(2),1000);  y0=xx;  y1=2*xx+1;  ym1=(xx-1)/2;
plot(xx(1:1000),y0(1:1000),'k:','LineWidth',2)

%get handles for lines
h(1)=plot(xx(1:1000),y1(1:1000),'k--','LineWidth',2)
h(2)=plot(xx(1:1000),ym1(1:1000),'k','LineWidth',2)

set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-2 -1 0 1 2],'YTick',[-2 -1 0 1 2],'FontSize',20,'FontWeight','bold');

%assign labels for handles
legend(h,'y=2x +1','y=1/2(x-1)',4);
%export to eps (change path and file name accordingly)
print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\BootCampFig_1203\\BC_2003\\matlab\\fig6a'));


