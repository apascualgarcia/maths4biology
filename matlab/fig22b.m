clear;  figure('Position',[100 100 600 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-1.2 1.2 -1.5 1.5];
xx=linspace(xy(1),xy(2),1000);  yy=xx.^3;
plot(xx(1:1000),yy(1:1000),'k','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-1 -0.5 0 0.5 1],'YTick',[-1 -0.5 0 .5 1],'FontSize',20,'FontWeight','bold');
xp=find(xx>=-1&xx<=1); xh=xx(xp); yh=yy(xp); sp=length(xh);
xh(sp+1)=1; xh(sp+2)=-1; xh(sp+3)=-1; yh(sp+1)=0; yh(sp+2)=0; yh(sp+3)=-1;
ll=line(xh,yh,'Color','k','LineWidth',2);  
HATCH(ll,45,[0 0 0],'-',5,1); 

g=text(.8,.25,'+','FontSize',20,'FontWeight','bold')
set(g,'BackgroundColor','White')

g=text(-.9,-.25,'-','FontSize',20,'FontWeight','bold')
set(g,'BackgroundColor','White')

print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\BootCampFig_1203\\BC_2003\\matlab\\fig22b'));