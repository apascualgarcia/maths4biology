clear;  figure('Position',[100 100 400 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-3.5 0.5 -0.5 3.5];
xx=linspace(xy(1),xy(2),1000);  ym1=xx.^2+3*xx+2;
plot(xx,ym1,'k','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-3 -2 -1 0],'YTick',[0 1 2 3 4],'FontSize',20,'FontWeight','bold');
scatter([-2 -1 0],[0 0 2],180,'k','filled');