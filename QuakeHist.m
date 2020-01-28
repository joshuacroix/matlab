clear;
clc;
 
%First Part


x = load('quake.txt');
rden = x(:,1);
accel = x(:,2);
 
figure;
histogram(rden,20)
figure;
histogram(accel,20)

disp('------------------Mean:');
Mmean=mean(rden)
Mmean2=mean(accel)

disp('------------------Median:');
Median=median(rden)
Median2=median(accel)

disp('------------------Mode:');
Mode=mode(rden)
Mode2=mode(accel)

disp('------------------Max:');
Max=max(rden)
Max2=max(accel)

disp('------------------Min:');
Minimum=min(rden)
Minimum2=min(accel)

disp('------------------Variance:');
Variance=var(rden)
Variance2=var(accel)

disp('------------------Standard Deviation:');
SD=std(rden)
SD2=std(accel)

disp('------------------Range:');
Range=range(rden)
Range2=range(accel)

figure;
scatter(rden,accel, 'filled');
