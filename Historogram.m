x = load('normtemp.txt');
temp = x(:,1);
figure;
histogram(temp,12);
xlabel('Temperature');
ylabel('Frequency');
title('Temperature for Adult Males and Females');
