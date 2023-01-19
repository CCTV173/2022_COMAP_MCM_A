close all
clear all
c1=0.128; %c 1
c2=3.924; %c 2
c3=78; %c 3
umax=800; %maximum power (Watt)
CP=300; %critical power (Watt)
W=20000; % size of the battery (Joule)
a=1; %initial velocity (m/s)
xt(1)=1; %initial velocity (m/s)
N=200000;
dt=0.01; % time step
t_acc=10.67; %choose t 1!!
% umax is exerted up to time te
vtq(1)=1;
for i=1:(floor(t_acc/dt))
vtq(i+1)=(-(c2/c3)+umax/(c3*vtq(i))-(c1*vtq(i)^2)/c3)*dt+vtq(i);
end

%The used energy is now (umax-CP)*te. So there is W-(umax-CP)*te energy
%left. Therefore t 2 is determined by (using-CP)*t 2=W-(umax-CP)*te.
%u sing is such that xt(floor(te/dt)) stays constant. Beta is chosen such
%that this is the case. Then lambda 2 is fixed and we can determine T.

p_sin=(c1*(vtq(floor(t_acc/dt)))^2+c2)*vtq(floor(t_acc/dt))
t_plate=(W-t_acc*(umax-CP))/(p_sin-CP) %t 2

for i=floor(t_acc/dt):floor(t_plate/dt)+(floor(t_acc/dt))
vtq(i+1)=(-(c2/c3)+p_sin/(c3*vtq(i))-(c1*vtq(i)^2)/c3)*dt+vtq(i);
end

for i=(floor(t_plate/dt)+(floor(t_acc/dt))):N
vtq(i+1)=(-(c2/c3)+CP/(c3*vtq(i))-(c1*vtq(i)^2)/c3)*dt+vtq(i);
end

%Build x 1, the travelled distance
xeq(1)=0;
for i=1:N
xeq(i+1)=vtq(i)*dt+xeq(i);
end
syms bet positive
beta=double(solve((c1*(vtq(floor(t_acc/dt)))^2+c2)*vtq(floor(t_acc/dt))==(c3+2*c2*bet)*sqrt((c3-c2*bet)/(c1*bet))/(3*sqrt(3)*bet),bet))

%Build lambda 2
lq(floor(t_acc/dt))=beta*vtq(floor(t_acc/dt));
for i=1:(floor(t_acc/dt))-1
lq(floor(t_acc/dt)-i)=(lq(floor(t_acc/dt)-i+1)+dt)/((umax*dt)/(c3*vtq(floor(t_acc/dt)-i)^2)-(2*c1*vtq(floor(t_acc/dt)-i)*dt)/(c3)+1);
end
for i=(floor(t_acc/dt)):floor(t_plate/dt)+floor(floor(t_acc/dt))
lq(i)=lq(floor(t_acc/dt));
end
for i=(floor(t_plate/dt)+floor(t_acc/dt)):N
if lq(i)<0
break
else
lq(i+1)=(-1+lq(i)*CP/(c3*vtq(i)^2)+2*c1*lq(i)*vtq(i)/c3)*dt+lq(i);
end
end
T=prod(size(lq))

%Repeat everything up to T
xt(1)=1;
for i=1:(floor(t_acc/dt))
xt(i+1)=(-(c2/c3)+umax/(c3*xt(i))-(c1*xt(i)^2)/c3)*dt+xt(i);
end
for i=floor(t_acc/dt):floor(t_plate/dt)+(floor(t_acc/dt))
xt(i+1)=(-(c2/c3)+p_sin/(c3*xt(i))-(c1*xt(i)^2)/c3)*dt+xt(i);
end
for i=(floor(t_plate/dt)+(floor(t_acc/dt))):T
xt(i+1)=(-(c2/c3)+CP/(c3*xt(i))-(c1*xt(i)^2)/c3)*dt+xt(i);
end

xe(1)=0;
for i=1:T
xe(i+1)=xt(i)*dt+xe(i);
end
l(floor(t_acc/dt))=beta*xt(floor(t_acc/dt));
for i=1:(floor(t_acc/dt))-1
l(floor(t_acc/dt)-i)=(l(floor(t_acc/dt)-i+1)+dt)/((umax*dt)/(c3*vtq(floor(t_acc/dt)-i)^2)-(2*c1*vtq(floor(t_acc/dt)-i)*dt)/(c3)+1);
end
for i=(floor(t_acc/dt)):floor(t_plate/dt)+floor(floor(t_acc/dt))
l(i)=l(floor(t_acc/dt));
end
for i=(floor(t_plate/dt)+floor(t_acc/dt)):T
l(i+1)=(-1+l(i)*CP/(c3*vtq(i)^2)+2*c1*l(i)*vtq(i)/c3)*dt+l(i);
end
USTER=zeros(1,T);
for i=1:floor(t_acc/dt)
USTER(i)=800;
end
for i=floor(t_acc/dt):floor(t_plate/dt)+floor(t_acc/dt)
USTER(i)=p_sin;
end
for i=(floor(t_plate/dt)+floor(t_acc/dt)):T
USTER(i)=300;
end
finaltime=T*dt
finaldistance=xe(T)

%Build x 3, the battery
xd(1)=W;
for i=1:floor(t_acc/dt)
xd(i+1)=xd(i)-(umax-CP)*dt;
end

for i=floor(t_acc/dt):floor(t_plate/dt)+floor(t_acc/dt)
xd(i+1)=xd(i)-(p_sin-CP)*dt;
end

for i=(floor(t_plate/dt)+floor(t_acc/dt)):T
xd(i)=0;
end

sw=zeros(1,T);
for i=1:T
sw(i)=l(i)/xt(i);
end
plot(xe/1000)
hold on
plot(xt)
hold on
plot(xd/1000)
legend('distance (*100 m)','velocity (m/s)','battery (*1000 Joule)')
xlabel('Time (*100 s)')
figure
plot(l)
hold on
plot(sw)
hold on
plot(USTER/100)
legend('\lambda 2','\lambda 2/x 2','optimal u (*100 Watt)')
xlabel('Time (*100 s)')