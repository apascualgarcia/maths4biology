clear;  
figure('Position',[100 100 700 400],'Color',[1 1 1]); clf;  hold on; 

xy=[-0.5 5 -2 3];
xx=linspace(0,5,1000);  ym1=log(xx);  
h(1)=plot(xx,ym1,'k','LineWidth',2)
ym1=-log(xx);  
h(2)=plot(xx,ym1,'k--','LineWidth',2)
ym1=log2(xx);  
h(3)=plot(xx,ym1,'k-.','LineWidth',2)
ym1=log10(xx);  
h(4)=plot(xx,ym1,'k:','LineWidth',2)
set(gca,'LineWidth',2); 
axis(xy); axis manual;
plot([xy(1) xy(2)],[0 0],'k-.','LineWidth',2);
plot([0 0],[xy(3) xy(4)],'k-.','LineWidth',2);
set(gca,'XTick',[0 1 2 3 4 ],'YTick',[-1 0 1 2],'FontSize',20,'FontWeight','bold');

%assign labels for handles
g=legend(h,' ln x','-ln x',' ld x',' lg x',2);
set(g,'Color','none')
%export to eps (change path and file name accordingly)
print('-depsc2',sprintf('C:\\Documents and Settings\\ajay\\Desktop\\BootCampFig_1203\\BC_2003\\matlab\\fig15'));
