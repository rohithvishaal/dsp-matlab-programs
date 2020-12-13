x = input("enter input sequence:")
N = input("enter N points")
x = [x zeros(1,N-length(x))]
y = bitrevorder(x)
s = log2(M)
for m=1:M
  s = 2^m
  for r=1:s:N-1
    for k=0:(s/2)-1
      w = exp(-j*2*pi*k/s)
      z1 = y(r+k)
      z2 = y(r+k+s/2)
      y(r+k) = (z1+z2)*w
      y(r+k+s/2) = (z1-z2)*w   
    endfor
  endfor
endfor
disp(y)
z = fft(x)
disp(z)