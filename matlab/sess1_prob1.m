%
%  Section 1,  problem 1
%
x=linspace(-10,10,500);  figure('Position',[100 100 600 700],'Color',[1 1 1]);
xtl=[0 0 0 0 0 0 0 0 0 1 1 1];  ytl=[1 0 0 1 0 0 1 0 0 1 0 0];
xw=[.1 .4 .7 .1 .4 .7 .1 .4 .7 .1 .4 .7];
yw=[.76 .76 .76 .54 .54 .54 .32 .32 .32 .1 .1 .1];

p(1,:)=x.^2;             p(2,:)=(x-2).^2;    p(3,:)=(x+4).^2;
p(4,:)=x.^2-9;           p(5,:)=x.^2/2;      p(6,:)=3*(x-2).^2;
p(7,:)=3*(x-2).^2-5;     p(8,:)=-2*x.^2;     p(9,:)=-x.^2+5;
p(10,:)=x.^3+x.^2-6*x;   p(11,:)=(x+4).^3;   p(12,:)=x-x.^3;

for k=1:12  
    h(k)=subplot(1,12,k);  plot(x,p(k,:),'k','LineWidth',2); grid on; axis([-5 5 -10 10]);
    set(gca,'XTick',[-3 0 3],'YTick',[-5 0 5],'LineWidth',1)
    if xtl(k)==1 set(gca,'XTickLabel',{'-3','0','3'}); else set(gca,'XTickLabel',{'','',''}); end  
    if ytl(k)==1 set(gca,'YTickLabel',{'-5','0','5'}); else set(gca,'YTickLabel',{'','',''}); end  
end;
for k=1:12 set(h(k),'Position',[xw(k) yw(k) .28 .2]); end



