clear;  figure('Position',[100 100 600 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-pi-.3 pi -1.2 1.2];
xx=linspace(-pi,xy(2),600);  ym1=sin(xx);  
h(1)=plot(xx,ym1,'k','LineWidth',2.5)
ym1=xx;  
h(2)=plot(xx,ym1,'k:','LineWidth',2)
ym1=ym1-xx.^3/6;  
h(3)=plot(xx,ym1,'k-.','LineWidth',2)
ym1=ym1+xx.^5/120;  
h(4)=plot(xx,ym1,'k:','LineWidth',2)
ym1=ym1-xx.^7/factorial(7);  
h(5)=plot(xx,ym1,'k--','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[-3 -2 -1 0 1 2 3],'YTick',[-1 0 1],'FontSize',20,'FontWeight','bold');

%assign labels for handles
g=legend(h,'y= sin x','x','x-1/3! x^{3}','x-1/3! x^{3}+1/5! x^{5}','x-1/3! x^{3}+1/5! x^{5}-1/7! x^{7}',4);
set(g,'Color','none');
set(g,'FontSize',16);
%export to eps (change path and file name accordingly)
 print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\matlab\\fig49'));

