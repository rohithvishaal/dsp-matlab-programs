x = [5 4 3 2 1]
n = [0 1 2 3 4]
d= input("enter decimation factor")
y = x(1:d:length(x))
n1 = 0:(length(n)-1)/d
subplot(2,1,1)
stem(n,x)
xlabel("time")
ylabel("amplitude")
title("input signal")
subplot(2,1,2)
stem(n1,y)
xlabel("time")
ylabel("amplitude")
title("Decimation sequence")