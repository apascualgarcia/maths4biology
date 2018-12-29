clear;  figure('Position',[100 100 600 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-.5 4*pi -1.4 1.4];
xx=linspace(0,pi,300);  ym1=xx*0+1;  plot(xx,ym1,'k:','LineWidth',2.5)
xx=linspace(pi,2*pi,300);  ym1=xx*0-1;  plot(xx,ym1,'k:','LineWidth',2.5)
xx=linspace(2*pi,3*pi,300);  ym1=xx*0+1;  plot(xx,ym1,'k:','LineWidth',2.5)
xx=linspace(3*pi,4*pi,300);  ym1=xx*0-1;  plot(xx,ym1,'k:','LineWidth',2.5)
xx=linspace(0,4*pi,1200);  ym1=4/pi*sin(xx);  plot(xx,ym1,'k--','LineWidth',2)
ym1=ym1+4/3/pi*sin(3*xx);  plot(xx,ym1,'k-.','LineWidth',2)
ym1=xx*0;  for n=1:2:40 ym1=ym1+4/n/pi*sin(n*xx); end; plot(xx,ym1,'k','LineWidth',2)
%ym1=ym1-xx.^7/factorial(7);  plot(xx,ym1,'k--','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[0 2 4 6 8 10],'YTick',[-1 0 1],'FontSize',20,'FontWeight','bold');

