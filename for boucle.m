clc
clear all

a = 0;
for i=1:6
    a1 = a+1/i*(-1)^(i+1);
    a=a1;
    disp([a,i]);
end