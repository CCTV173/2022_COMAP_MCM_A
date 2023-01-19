function [p_acc0,t_acc0,vtq0,t_total0]=velocity_dis_sp_187(p0,k0,t0,CP,W,N,v_in,L)
t_total=1000000;
c1=0.140; %c 1
c2=6.19; %c 2
c3=83.9; %c 3
dt=0.1;dp=0.1;
vtq=zeros(1,15000);
for t_acc=3.3:dt:14
   for p_acc=p0+k0/((t_acc+5)/60+t0):dp:p0+k0/((t_acc+2)/60+t0)
       vtq(1)=v_in;
       for i=1:(floor(t_acc/dt))
           vtq(i+1)=(-(c2/c3)+p_acc*75/(c3*vtq(i))-(c1*vtq(i)^2)/c3)*dt+vtq(i);
       end
       p_sin=(c1*(vtq(floor(t_acc/dt)))^2+c2)*vtq(floor(t_acc/dt));
       t_plate=(W-t_acc*(p_acc*75-CP))/(p_sin-CP);
       for i=floor(t_acc/dt):floor(t_plate/dt)+(floor(t_acc/dt))
           if (sum(vtq)-vtq(i+1))*dt>=L
               count=i;
               if count*dt<t_total
                   t_total0=count*dt;
                   count0=count;
                   t_total=count*dt;
                   t_acc0=t_acc;
                   p_acc0=p_acc;
               end
               vtq(:)=0;
               break;
           end
           vtq(i+1)=vtq(i);
       end
       if sum(vtq)==0
           continue;
       end
       for i=(floor(t_plate/dt)+(floor(t_acc/dt))):N
           vtq(i+1)=(-(c2/c3)+CP/(c3*vtq(i))-(c1*vtq(i)^2)/c3)*dt+vtq(i);
           if (sum(vtq)-vtq(i+1))*dt>=L
               vtq(:)=0;
               count=i;
               break;
           end
       end
       if count*dt<t_total
           t_total0=count*dt;
           count0=count;
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
        if count0<=i
            break;
        end
        vtq0(i+1)=vtq0(i);
    end
    if count0>=(floor(t_plate/dt)+(floor(t_acc/dt)))
        for i=(floor(t_plate/dt)+(floor(t_acc/dt))):count0
            vtq0(i+1)=(-(c2/c3)+CP/(c3*vtq0(i))-(c1*vtq0(i)^2)/c3)*dt+vtq0(i);
        end
    end
end
