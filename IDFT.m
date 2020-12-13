x = [4 0 0 0]
n = [0 1 2 3]
k = [0 1 2 3]
N = 4
wn = exp((-j*2*pi)/N)
for i=1:length(k)
  for j=1:length(n)
    w(j,i) = wn.^(k(i)*n(j))
  endfor
endfor
y = x*w
z = (1/N)*y
subplot(2,1,1)
stem(n,x)
xlabel("frequency")
ylabel("mag")
title("input signal")
subplot(2,1,2)
stem(n,z)
xlabel("time")
ylabel("magnitude")
title("IDFT of a signal")
