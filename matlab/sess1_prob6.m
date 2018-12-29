%
%  Section 1,  problem 6
%
x=linspace(-10*pi,10*pi,2000);  figure('Position',[100 100 600 700],'Color',[1 1 1]);
xtl=[0 0 0 0 1 1 1];  ytl=[1 0 0 1 0 0 1];
xw=[.1 .4 .7 .1 .4 .7 .1 .1 .55];
yw=[.79 .79 .79 .57 .57 .57 .35 .05 .05];

p(1,:)=-sin(x);             p(2,:)=2*sin(x);    p(3,:)=sin(x)/2;
p(4,:)=sin(x).*(x-pi/4);           p(5,:)=sin(2*x);      p(6,:)=sin(x).*(2*x-pi/2);
p(7,:)=3+sin(x); 

for k=1:7
    h(k)=subplot(1,12,k);  plot(x,p(k,:),'k','LineWidth',2); grid on; axis([-2*pi 2*pi -5 5]);
    set(gca,'XTick',[-4 -2 0 2 4],'YTick',[-4 -2 0 2 4],'LineWidth',1)
    if xtl(k)==1 set(gca,'XTickLabel',{'-4','-2','0','2','5'}); else set(gca,'XTickLabel',{'','','','',''}); end  
    if ytl(k)==1 set(gca,'YTickLabel',{'-4','-2','0','2','4'}); else set(gca,'YTickLabel',{'','','','',''}); end  
end;
h(8)=subplot(1,12,8);  plot(x,p(4,:),'k','LineWidth',2); grid on; axis([-8*pi 8*pi -50 50]);
set(gca,'XTick',[-20 -10 0 10 20],'YTick',[-40 -20 0 20 40],'LineWidth',1)
set(gca,'XTickLabel',{'-4','-2','0','2','5'},'YTickLabel',{'-40','-20','0','20','40'});
h(9)=subplot(1,12,9);  plot(x,p(6,:),'k','LineWidth',2); grid on; axis([-8*pi 8*pi -50 50]);
set(gca,'XTick',[-20 -10 0 10 20],'YTick',[-40 -20 0 20 40],'LineWidth',1)
set(gca,'XTickLabel',{'-4','-2','0','2','5'},'YTickLabel',{'-40','-20','0','20','40'});

for k=1:7 set(h(k),'Position',[xw(k) yw(k) .28 .2]); end
for k=8:9 set(h(k),'Position',[xw(k) yw(k) .38 .25]); end



