%% sm tt m
clear;
clc;
CP=345.75; %critical power (Watt)
W=22700; % size of the battery (Joule)
p0=4.61;t0=0.3752;k0=5.63;
N=20000000;
L=[2400 2100 3400 2100 6800 1600 5300 2100 3400 2100 6800 1600 2900];
v_in=[1 10.36 10.36 10.36 12 12 10.36 10.36 10.36 10.36 12 12 10.36];
[p_acc1,t_acc1,vtq1,t_total1]=velocity_dis_m_sm_sp_0_0(p0,k0,t0,CP,W,N,v_in(1),L(1));
[p_acc2,t_acc2,vtq2,t_total2]=velocity_dis_m_sm_sp_0(p0,k0,t0,CP,W,N,v_in(2),L(2));
[p_acc3,t_acc3,vtq3,t_total3]=velocity_dis_m_sm_sp_0(p0,k0,t0,CP,W,N,v_in(3),L(3));
[p_acc4,t_acc4,vtq4,t_total4]=velocity_dis_m_sm_sp_218(p0,k0,t0,CP,W,N,v_in(4),L(4));
[p_acc5,t_acc5,vtq5,t_total5]=velocity_dis_m_sm_sp_0(p0,k0,t0,CP,W,N,v_in(5),L(5));
[p_acc6,t_acc6,vtq6,t_total6]=velocity_dis_m_sm_sp_minus286(p0,k0,t0,CP,W,N,v_in(6),L(6));
[p_acc7,t_acc7,vtq7,t_total7]=velocity_dis_m_sm_sp_0(p0,k0,t0,CP,W,N,v_in(7),L(7));
[p_acc8,t_acc8,vtq8,t_total8]=velocity_dis_m_sm_sp_0(p0,k0,t0,CP,W,N,v_in(8),L(8));
[p_acc9,t_acc9,vtq9,t_total9]=velocity_dis_m_sm_sp_0(p0,k0,t0,CP,W,N,v_in(9),L(9));
[p_acc10,t_acc10,vtq10,t_total10]=velocity_dis_m_sm_sp_218(p0,k0,t0,CP,W,N,v_in(10),L(10));
[p_acc11,t_acc11,vtq11,t_total11]=velocity_dis_m_sm_sp_0(p0,k0,t0,CP,W,N,v_in(11),L(11));
[p_acc12,t_acc12,vtq12,t_total12]=velocity_dis_m_sm_sp_minus286(p0,k0,t0,CP,W,N,v_in(12),L(12));
[p_acc13,t_acc13,vtq13,t_total13]=velocity_dis_m_sm_sp_0(p0,k0,t0,CP,W,N,v_in(13),L(13));