clear;  figure('Position',[100 100 700 600],'Color',[1 1 1]); clf;  hold on; 

xy=[-2.5 2.5 -.5 4.5];
xx=linspace(xy(1),xy(2),1000);  y1=xx.^2;
plot(xx(1:1000),y1(1:1000),'k','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-2 -1 0 1 2],'YTick',[0 1 2 3 4],'FontSize',20,'FontWeight','bold');
xlabel('variable x','FontName','Times New Roman','FontWeight','bold','FontSize',30);  
ylabel('function y','FontName','Times New Roman','FontWeight','bold','FontSize',30);