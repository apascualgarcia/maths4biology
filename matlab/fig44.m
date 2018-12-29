clear;  figure('Position',[100 100 600 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-pi-.3 pi -2 10];
xx=linspace(-pi,xy(2),600);  ym1=xx.^2;  
h(1)=plot(xx,ym1,'k','LineWidth',2.5)
ym1=pi^2/3+xx.*0;  
h(2)=plot(xx,ym1,'k:','LineWidth',2)
ym1=ym1-4*cos(xx);  
h(3)=plot(xx,ym1,'k-.','LineWidth',2)
ym1=ym1+cos(2*xx);  
h(4)=plot(xx,ym1,'k--','LineWidth',2)
ym1=ym1-4*cos(3*xx)/9;  
h(5)=plot(xx,ym1,'k:','LineWidth',2)
set(gca,'LineWidth',2);
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-3 -2 -1 0 1 2 3],'YTick',[0 2 4 6 8],'FontSize',20,'FontWeight','bold');

%assign labels for handles
g=legend(h,'y=x^{2}','n=0','n=1','n=2','n=3',0);
set(g,'Color','none');
set(g,'FontSize',18);
%export to eps (change path and file name accordingly)
%  print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\matlab\\fig44'));
