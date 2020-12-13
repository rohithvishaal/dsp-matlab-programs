n = input("number of samples")
w = 0:((2*pi)/n):(2*pi)
b = input("input co-eff:")
a = input("output co-eff:")
l = 0:length(b)-1
m = 0:length(a)-1
e = b*exp(-j*l'*w)
f = a*exp(-j*m'*w)
h=e./f
subplot(2,1,1)
plot(w/pi,abs(h),'b')
ylabel("mag")
subplot(2,1,2)
plot(w/pi,angle(h),'r')
ylabel("phase")