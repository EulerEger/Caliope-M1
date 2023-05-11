a = 2;
x= a/2;
disp(['Valeur approchée de sqrt(a) pour a =', num2str(a)]);
for i =1:6
    x=(x+a/x)/2;
    disp(x)
end
