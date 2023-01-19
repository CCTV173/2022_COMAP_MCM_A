clear all;
clc;
%% beigium_TT
CP=261; %critical power (Watt)
W=32000; % size of the battery (Joule)
p0=3.48;t0=0.3448;k0=7.51;
N=20000000;
L=[9900 2800 5100 5800 12700 5900 1100];
v_in=[1 10.36 10.36 10.36 10.36 10.24 10.36];
[p_acc1,t_acc1,vtq1,t_total1]=velocity_dis(p0,k0,t0,CP,W,N,v_in(1),L(1));
[p_acc2,t_acc2,vtq2,t_total2]=velocity_dis_2(p0,k0,t0,CP,W,N,v_in(2),L(2));
[p_acc3,t_acc3,vtq3,t_total3]=velocity_dis_2(p0,k0,t0,CP,W,N,v_in(3),L(3));
[p_acc4,t_acc4,vtq4,t_total4]=velocity_dis_2(p0,k0,t0,CP,W,N,v_in(4),L(4));
[p_acc5,t_acc5,vtq5,t_total5]=velocity_dis_2(p0,k0,t0,CP,W,N,v_in(5),L(5));
[p_acc6,t_acc6,vtq6,t_total6]=velocity_dis_2(p0,k0,t0,CP,W,N,v_in(6),L(6));
[p_acc7,t_acc7,vtq7,t_total7]=velocity_dis_2(p0,k0,t0,CP,W,N,v_in(7),L(7));
