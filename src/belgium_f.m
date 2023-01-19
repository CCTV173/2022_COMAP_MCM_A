clear all;
clc;
%% beigium female sp
CP=170.5; %critical power (Watt)
W=19655; % size of the battery (Joule)
p0=3.1;t0=0.3451;k0=5.81;
N=20000000;
L=[9900 2800 4900 3600 9100];
v_in=[1 8.39 8.39 8.39 8.39];
[p_acc1,t_acc1,vtq1,t_total1]=velocity_dis_f_0(p0,k0,t0,CP,W,N,v_in(1),L(1));
[p_acc2,t_acc2,vtq2,t_total2]=velocity_dis_f(p0,k0,t0,CP,W,N,v_in(2),L(2));
[p_acc3,t_acc3,vtq3,t_total3]=velocity_dis_f(p0,k0,t0,CP,W,N,v_in(3),L(3));
[p_acc4,t_acc4,vtq4,t_total4]=velocity_dis_f(p0,k0,t0,CP,W,N,v_in(4),L(4));
