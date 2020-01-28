clear;
clc;
 
%First Part


x = load('concrete.txt');
load = x(:,1);
strength = x(:,2);
 
figure;
histogram(load,5)
figure;
histogram(strength,5)

disp('------------------Mean:');
Mmean=mean(load)
Mmean2=mean(strength)

disp('------------------Median:');
Median=median(load)
Median2=median(strength)

disp('------------------Mode:');
Mode=mode(load)
Mode2=mode(strength)

disp('------------------Max:');
Max=max(load)
Max2=max(strength)

disp('------------------Min:');
Minimum=min(load)
Minimum2=min(strength)

disp('------------------Variance:');
Variance=var(load)
Variance2=var(strength)

disp('------------------Standard Deviation:');
SD=std(load)
SD2=std(strength)

disp('------------------Range:');
Range=range(load)
Range2=range(strength)

figure;
scatter(load,strength, 'filled');
