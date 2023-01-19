function [p_acc0,t_acc0,vtq0,t_total0]=velocity_dis_f_0(p0,k0,t0,CP,W,N,v_in,L)
t_total=1000000;
c1=0.140; %c 1
c2=3.195; %c 2
c3=63.9; %c 3
dt=0.1;dp=0.1;
vtq=zeros(1,15000);
for t_acc=3:dt:5
   for p_acc=p0+k0/((t_acc+5)/60+t0):dp:p0+k0/((t_acc+2)/60+t0)
       vtq(1)=v_in;
       for i=1:(floor(t_acc/dt))
           vtq(i+1)=(-(c2/c3)+p_acc*75/(c3*vtq(i))-(c1*vtq(i)^2)/c3)*dt+vtq(i);
       end
       p_sin=(c1*(vtq(floor(t_acc/dt)))^2+c2)*vtq(floor(t_acc/dt));
       t_plate=(W-t_acc*(p_acc*75-CP))/(p_sin-CP);
       for i=floor(t_acc/dt):floor(t_plate/dt)+(floor(t_acc/dt))
           vtq(i+1)=vtq(i);
       end
       for i=(floor(t_plate/dt)+(floor(t_acc/dt))):N
           count=i;
           vtq(i+1)=(-(c2/c3)+CP/(c3*vtq(i))-(c1*vtq(i)^2)/c3)*dt+vtq(i);
           if (sum(vtq)-vtq(i+1))*dt>=L
               vtq(:)=0;
               break;
           end
       end
       if count*dt<t_total
           t_total0=count*dt;
           t_total=count*dt;
           t_acc0=t_acc;
           p_acc0=p_acc;
       end
   end
end
t_acc=t_acc0;
p_acc=p_acc0;
vtq0(1)=v_in;
    for i=1:(floor(t_acc/dt))
        vtq0(i+1)=(-(c2/c3)+p_acc*75/(c3*vtq0(i))-(c1*vtq0(i)^2)/c3)*dt+vtq0(i);
    end
    p_sin=(c1*(vtq0(floor(t_acc/dt)))^2+c2)*vtq0(floor(t_acc/dt));
    t_plate=(W-t_acc*(p_acc*75-CP))/(p_sin-CP);
    for i=floor(t_acc/dt):floor(t_plate/dt)+(floor(t_acc/dt))
        vtq0(i+1)=vtq0(i);
    end
    for i=(floor(t_plate/dt)+(floor(t_acc/dt))):N
        count=i;
        vtq0(i+1)=(-(c2/c3)+CP/(c3*vtq0(i))-(c1*vtq0(i)^2)/c3)*dt+vtq0(i);
        if sum(vtq0)*dt>=L
            break;
        end
    end
end
