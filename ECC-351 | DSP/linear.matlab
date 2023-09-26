clc;
close all;
clear all;
x=input(&#39;enter the first sequence x(n)&#39;);
h=input(&#39;enter the second sequence h(n)&#39;);
m=length(x);
n=length(h);
N=max(m,n);
x=[x,zeros(1,N-m)];
h=[h,zeros(1,N-n)];
for n=1:N y(n)=0;
for i=1:N j=n-i+1;
if(j&lt;=0)j=N+j;
end
y(n)=[y(n)+x(i)*h(j)];
end
end
n=0:N-1;
subplot(3,1,1)
disp(&#39;first sequence x is:&#39;);
disp(x);
stem(n,x);
xlabel(&#39;n&#39;);
ylabel(&#39;x(n)&#39;);
title(&#39;first sequnce&#39;);
grid on;
subplot(3,1,2);
disp (&#39;second sequence&#39;);
disp(h);
stem(n,h);
xlabel(&#39;n&#39;);
ylabel(&#39;h(n)&#39;);
title(&#39;second sequence&#39;);
grid on;
subplot(3,1,3);
disp(&#39;convoluted sequence y(n) is&#39;);
disp(y);
stem(n,y);
xlabel(&#39;n&#39;);
ylabel(&#39;y(n)&#39;);
title(&#39;circular convoluted sequence&#39;);
grid on;