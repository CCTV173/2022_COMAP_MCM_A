%% sm sp fm
clear all;
clc;
CP=170.5; %critical power (Watt)
W=19655; % size of the battery (Joule)
p0=3.1;t0=0.3451;k0=5.81;
N=20000000;
L=[2400 2100 3400 2100 6800 1600 2900];
v_in=[1 10.36 10.36 10.36 12 12 10.36];
[p_acc1,t_acc1,vtq1,t_total1]=velocity_dis_fm_sm_sp_0_0(p0,k0,t0,CP,W,N,v_in(1),L(1));
[p_acc2,t_acc2,vtq2,t_total2]=velocity_dis_fm_sm_sp_0(p0,k0,t0,CP,W,N,v_in(2),L(2));
[p_acc3,t_acc3,vtq3,t_total3]=velocity_dis_fm_sm_sp_0(p0,k0,t0,CP,W,N,v_in(3),L(3));
[p_acc4,t_acc4,vtq4,t_total4]=velocity_dis_fm_sm_sp_218(p0,k0,t0,CP,W,N,v_in(4),L(4));
[p_acc5,t_acc5,vtq5,t_total5]=velocity_dis_fm_sm_sp_0(p0,k0,t0,CP,W,N,v_in(5),L(5));
[p_acc6,t_acc6,vtq6,t_total6]=velocity_dis_fm_sm_sp_minus286(p0,k0,t0,CP,W,N,v_in(6),L(6));
[p_acc7,t_acc7,vtq7,t_total7]=velocity_dis_fm_sm_sp_0(p0,k0,t0,CP,W,N,v_in(7),L(7));
