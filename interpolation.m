x = input("enter sequence:")
N = length(x)
I = input("Enter interpolation factor:")
n1 = 0:N-1
M = N*I
n1 = 0:M-1
y = zeros(1,M)
y([1:I:M]) = x
subplot(2,1,1)
stem(n,x)
xlabel("time")
ylabel("amplitude")
title("input signal")
subplot(2,1,2)
stem(n1,y)
xlabel("time")
ylabel("amplitude")
title("Interpolation sequence")