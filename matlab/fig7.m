clear;  figure('Position',[100 100 400 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-1.15 1.15 -1.15 1.15];
xx=linspace(-1,1,1000);  ym1=sqrt(1-xx.^2);
plot(xx,ym1,'k','LineWidth',2)
plot(xx,-ym1,'k','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-1 -0.5 0 0.5 1],'YTick',[-1 -0.5 0 0.5 1],'FontSize',20,'FontWeight','bold');
