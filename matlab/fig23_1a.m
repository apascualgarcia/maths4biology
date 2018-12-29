
clear;  figure('Position',[100 100 400 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-0.5 3.5 -0.5 3.5];
xx=linspace(xy(1),xy(2),1000);  yy=1./xx.^2;
plot(xx,yy,'k','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[0 1 2 3],'YTick',[0 1 2 3],'FontSize',30,'FontWeight','bold');
xp=find(xx>=1); xh=xx(xp); yh=yy(xp); sp=length(xp);
xh(sp+1)=xy(2); xh(sp+2)=1; xh(sp+3)=1; yh(sp+1)=0; yh(sp+2)=0; yh(sp+3)=1;
ll=line(xh,yh,'Color','k','LineWidth',2);  
HATCH(ll,45,[0 0 0],'-',5,1); 