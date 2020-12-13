x = input("enter sequence")
N = input("enter N point DFT:")
x = [x zeros(1,N-length(x))]
z = fft(x)
M = log2(N)
for m=1:M
  s = 2^(M-m+1)
  for r=1:s:N-1
    for k=0:(s/2)-1
    w = exp(-j*2*pi*k/s)
    z1 = x(r+k)
    z2 = x(r+k+s/2)
    x(r+k) = (z1+z2)
    x(r+k+s/2) = (z1-z2).*w
    endfor
  endfor
endfor
disp(x)
y = bitrevorder(x)
z = fft(x)
disp(z)