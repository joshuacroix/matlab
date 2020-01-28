load('normtemp.txt');
temp=normtemp(1:130,1); %recalling only first column data that belongs to temperature
 
Mean=mean(temp);
x='Mean=';
disp(x);
disp(Mean);
 
Median=median(temp);
P='Median=';
disp(P);
disp(Median);
 
Mode=mode(temp);
T='Mode=';
disp(T);
disp(Mode);
 
Variance=var(temp);
T='Variance=';
disp(T);
disp(Variance);
 
St_Dev=std(temp);
R='Standard Deviation=';
disp(R);
disp(St_Dev);
 
Minimum=min(temp);
A='Minimum=';
disp(A);
disp(Minimum);
 
Maximum=max(temp);
B='Maximum=';
disp(B);
disp(Maximum);
 
Count = length(temp);
N= 'Count=';
disp(N);
disp(Count);

 %we need to write the results into a mystat file
function mystat(temp)
    disp('----------statistics----------');
    fprintf('Mean = %.2f\n',mean(temp));
    fprintf('Median = %.2f\n',median(temp));
    fprintf('Mode = %.2f\n',mode(temp));
    fprintf('Var = %.2f\n',var(temp));
    fprintf('Std = %.2f\n',std(temp));
    fprintf('Min = %.2f\n',min(temp));
    fprintf('Max = %.2f\n',max(temp));
    fprintf('Count = %d\n',length(temp));
end
