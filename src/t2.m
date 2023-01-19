
%% beigium
CP=261; %critical power (Watt)
W=32000; % size of the battery (Joule)
p0=3.48;t0=0.3448;k0=7.51;
N=20000000;
L=[9900 2800 5100 5800 12700 5900 1100];
v_in=[1 10.36 10.36 10.36 10.36 10.24 10.36];
[p_acc1,t_acc1,vtq1,t_total1]=velocity_dis(p0,k0,t0,CP,W,N,v_in(1),L(1));
[p_acc2,t_acc2,vtq2,t_total2]=velocity_dis_first(p0,k0,t0,CP,W,N,v_in(2),L(2));
[p_acc3,t_acc3,vtq3,t_total3]=velocity_dis_first(p0,k0,t0,CP,W,N,v_in(3),L(3));
[p_acc4,t_acc4,vtq4,t_total4]=velocity_dis_first(p0,k0,t0,CP,W,N,v_in(4),L(4));
[p_acc5,t_acc5,vtq5,t_total5]=velocity_dis_first(p0,k0,t0,CP,W,N,v_in(5),L(5));
[p_acc6,t_acc6,vtq6,t_total6]=velocity_dis_first(p0,k0,t0,CP,W,N,v_in(6),L(6));
[p_acc7,t_acc7,vtq7,t_total7]=velocity_dis_first(p0,k0,t0,CP,W,N,v_in(7),L(7));
% %% initial value(make sprinter as an example)

% c1=0.140; %c 1
% c2=3.675; %c 2
% c3=83.9; %c 3
% CP=261; %critical power (Watt)
% W=32000; % size of the battery (Joule)
% % %initial velocity (m/s)
% N=20000000;
% dt=0.1; % time step
% dp=0.01;
% % Tem=10000;
% % maxgen=1000;
% % perkgen=5000;
% % alpha=0.95;
% vtpair0=zeros(2);
% result0=100000;
% rresult=100000;
% vtq=zeros(1,15000);
% L=9000;
% p0=3.48;t0=0.3448;k0=7.51;
% v_in=1;
% t_total=1000000;
% j=1;
% for t_acc=5:dt:20
%     for p_acc=p0+k0/((t_acc+5)/60+t0):dp:p0+k0/((t_acc+2)/60+t0)
%         vtq(1)=v_in;
%         for i=1:(floor(t_acc/dt))
%             vtq(i+1)=(-(c2/c3)+p_acc*75/(c3*vtq(i))-(c1*vtq(i)^2)/c3)*dt+vtq(i);
%         end
%         p_sin=(c1*(vtq(floor(t_acc/dt)))^2+c2)*vtq(floor(t_acc/dt));
%         t_plate=(W-t_acc*(p_acc*75-CP))/(p_sin-CP);
%         for i=floor(t_acc/dt):floor(t_plate/dt)+(floor(t_acc/dt))
%             vtq(i+1)=vtq(i);
%         end
%         for i=(floor(t_plate/dt)+(floor(t_acc/dt))):N
%             count=i;
%             vtq(i+1)=(-(c2/c3)+CP/(c3*vtq(i))-(c1*vtq(i)^2)/c3)*dt+vtq(i);
%             if (sum(vtq)-vtq(i+1))*dt>=L
%                 vtq(:)=0;
%                 break;
%             end
%         end
%         if count*dt<t_total
%             t_total=count*dt;
%             t_acc0=t_acc;
%             p_acc0=p_acc;
%         end
%     end
% end
% t_acc=t_acc0;
% p_acc=p_acc0;
% vtq0(1)=v_in;
% for i=1:(floor(t_acc/dt))
%     vtq0(i+1)=(-(c2/c3)+p_acc*75/(c3*vtq0(i))-(c1*vtq0(i)^2)/c3)*dt+vtq0(i);
% end
% p_sin=(c1*(vtq0(floor(t_acc/dt)))^2+c2)*vtq0(floor(t_acc/dt));
% t_plate=(W-t_acc*(p_acc*75-CP))/(p_sin-CP);
% for i=floor(t_acc/dt):floor(t_plate/dt)+(floor(t_acc/dt))
%     vtq0(i+1)=vtq0(i);
% end
% for i=(floor(t_plate/dt)+(floor(t_acc/dt))):N
%     count=i;
%     vtq0(i+1)=(-(c2/c3)+CP/(c3*vtq0(i))-(c1*vtq0(i)^2)/c3)*dt+vtq0(i);
%     if sum(vtq0)*dt>=L
%         break;
%     end
% end
% %% Simulated Annealing
% for i=1:maxgen
%     for j=1:LK
%         t_acc=12.5+15*(rand(1)-0.5);
%         p_acc=;
%         vtpair=[p_acc,t_acc];
%         result=;
%         if result<result0
%             vtpair0=vtpair;
%             result0=result;
%         else
%             p =exp((-result-result0)/Tem);
%             if rand(1)<p
%                 vtpair0=vtpair;
%                 result0=result;
%             end
%             if result0<rresult
%                 rvtpair=vtpair0;
%                 rresult=result0;
%             end
%         end
%     end
%     Tem=alpha*Tem;
% end
% 
% disp('best answer=');disp(rresult);
% %%
% function result=vqueue(vtpair)
%     
% 
% 
% end



