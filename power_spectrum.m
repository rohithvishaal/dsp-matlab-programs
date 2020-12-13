f1 = 0.48
f2 = 0.56
del = 100 % number of samples
n = 0:del-1
x = cos(2*pi*f1*n) + cos(2*pi*f2*n)
del1 = 10 % number of samples to be considered
n1 = 0:del1-1
x1 = x(1:del1)
N = input("enter length of DFT")
if length(x1)<N
  x1 = [x1 zeros(1,N-length(x1))]
  n1 = [n1 max(n1)+1:N-1]
endif
k = n1
x1 = fft(x1)
p = (1/N)*abs(x1).^2
subplot(3,1,1)
plot(n,x)
title("original signal")
subplot(3,1,2)
plot(n1,x1)
title("FFT")
subplot(3,1,3)
stem(k,p)
title("power spectrum")


