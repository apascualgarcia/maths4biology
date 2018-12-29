clear;  figure('Position',[100 100 400 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-3.5 5 -1 11];
xx=linspace(-3,3,1000);  ym1=xx.^2;  plot(xx,ym1,'k--','LineWidth',2)
xx=linspace(-3,3,1000);  ym1=xx.^2+2;  plot(xx,ym1,'k','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-2 0 2 4],'YTick',[-10 -5 0 5 10 15],'FontSize',20,'FontWeight','bold');
