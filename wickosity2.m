clear
z = load('wickosity.txt');
% Q1
% get means and standard deviations to make the plots
for i = 1:6
    muhat(i) = mean(z(:,i));
    sigmahat(i) = std(z(:,i));
end
% Loop for creating normplot and organizing them in a 3X3 subplot matrix.
figure
for i = 1:6
    subplot(3,3,i)
    normplot(z(:,i))
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
    yy = normpdf(x,muhat(i),sigmahat(i));
    plot(x,yy)
    hold on
end
begin = vertcat(z(:,1),z(:,2),z(:,3));
far = vertcat(z(:,4),z(:,5),z(:,6));
xlabel('wickosity')
ylabel('probability')
legend('Mon','Tues','Wed','Thurs','Fri','Sat')
first = mean(begin);
last = mean(far);
first2 = std(begin);
last2 = std(far);
fprintf('Mean for Mon-Tues-Wed is %f; ', first)
fprintf('standard deviation for Mon-Tues-Wed is %f \n', first2)
fprintf('Mean for Thurs-Fri-Sat is %f; ', last)
fprintf('standard deviation for Thurs-Fri-Sat is %f \n', last2)
norm = normcdf(