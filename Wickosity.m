
clear

x = load('wickosity.txt');
c1 = x(:,1);
c2 = x(:,2);
c3 = x(:,3);
c4 = x(:,4);
c5 = x(:,5);
c6 = x(:,6);
% Q1
% get means and standard deviations to make the plots
for i = 1:6
    sad = mean(x(:,i));
    sda = std(x(:,i));
end
% Loop for creating normplot and organizing them in a 3X3 subplot matrix.
figure
for i = 1:6
    subplot(3,3,i)
    normplot(x(:,i))
end
 
subplot(3,3,1)
title('Monday')
subplot(3,3,2)
title('Tuesday')
subplot(3,3,3)
title('Wednesday')
subplot(3,3,4)
title('Thursday')
subplot(3,3,5)
title('Friday')
subplot(3,3,6)
title('Saturday')
 
subplot(3,3,[7 8 9])
x = 0:0.01:20;
for i = 1:6
    y = normpdf(x,(i),sad(i));
    plot(x,y)
    hold on
end
xlabel('wickosity')
ylabel('probability')
legend('Mon','Tues','Wed','Thurs','Fri','Sat')

 
