clear;  figure('Position',[100 100 600 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-0.1 1.4 -0.5 5.75];
xx=linspace(0.,1.4,600);  ym1=exp(xx.^2);  plot(xx,ym1,'k','LineWidth',2.5)
%xx=linspace(-pi/2+.1,.1,300);  ym1=cot(xx);  plot(xx,ym1,'k--','LineWidth',2)
%xx=linspace(.1,pi-.1,600);  ym1=cot(xx);  plot(xx,ym1,'k--','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
set(gca,'XTick',[],'YTick',[],'FontSize',20,'FontWeight','bold');
x0=0.5; scatter(x0,exp(x0^2),150,'k','filled');
plot([x0-0.45 x0+0.45],[exp(x0^2)-2*x0*exp(x0^2)*0.45,exp(x0^2)+2*x0*exp(x0^2)*0.45],'k','LineWidth',3)
plot([-0.1 x0 x0],[exp(x0^2) exp(x0^2) -0.5],'k:','LineWidth',2);
plot([-0.1 1.25 1.25],[exp(1.25^2) exp(1.25^2) -0.5],'k:','LineWidth',2);
m=4.6489; plot([x0-0.23 1.4],[exp(x0^2)-m*0.23 exp(x0^2)+m*0.9],'k--','LineWidth',2)
m=2.8; plot([x0-0.3 1.4],[exp(x0^2)-m*0.3 exp(x0^2)+m*0.9],'k-.','LineWidth',2)

