%% Tokyo male_tt
clear all;
clc;
CP=345.75; %critical power (Watt)
W=22700; % size of the battery (Joule)
p0=4.61;t0=0.3752;k0=5.63;
N=20000000;
L=[1000 1600 700 900 500 200 5000 500 4400 600 1600 400 4700 1000 1600 700 900 500 200 5000 500 4400 600 1600 400 4700];
v_in=[1 10.36 10.36 12 10.36 12 10.36 10.36 10.36 10.36 12 10.36 12 14 10.36 10.36 12 10.36 12 10.36 10.36 10.36 10.36 12 10.36 12];
[p_acc1,t_acc1,vtq1,t_total1]=velocity_dis_sp_minus145_0(p0,k0,t0,CP,W,N,v_in(1),L(1));
[p_acc2,t_acc2,vtq2,t_total2]=velocity_dis_sp_minus145(p0,k0,t0,CP,W,N,v_in(2),L(2));
[p_acc3,t_acc3,vtq3,t_total3]=velocity_dis_sp_minus145(p0,k0,t0,CP,W,N,v_in(3),L(3));
[p_acc4,t_acc4,vtq4,t_total4]=velocity_dis_sp_0(p0,k0,t0,CP,W,N,v_in(4),L(4));
[p_acc5,t_acc5,vtq5,t_total5]=velocity_dis_sp_0(p0,k0,t0,CP,W,N,v_in(5),L(5));
[p_acc6,t_acc6,vtq6,t_total6]=velocity_dis_sp_0(p0,k0,t0,CP,W,N,v_in(6),L(6));
[p_acc7,t_acc7,vtq7,t_total7]=velocity_dis_sp_187(p0,k0,t0,CP,W,N,v_in(7),L(7));
[p_acc8,t_acc8,vtq8,t_total8]=velocity_dis_sp_187(p0,k0,t0,CP,W,N,v_in(8),L(8));
[p_acc9,t_acc9,vtq9,t_total9]=velocity_dis_sp_minus129(p0,k0,t0,CP,W,N,v_in(9),L(9));
[p_acc10,t_acc10,vtq10,t_total10]=velocity_dis_sp_minus129(p0,k0,t0,CP,W,N,v_in(10),L(10));
[p_acc11,t_acc11,vtq11,t_total11]=velocity_dis_sp_258(p0,k0,t0,CP,W,N,v_in(11),L(11));
[p_acc12,t_acc12,vtq12,t_total12]=velocity_dis_sp_258(p0,k0,t0,CP,W,N,v_in(12),L(12));
[p_acc13,t_acc13,vtq13,t_total13]=velocity_dis_sp_0(p0,k0,t0,CP,W,N,v_in(13),L(13));
[p_acc14,t_acc14,vtq14,t_total14]=velocity_dis_sp_minus145(p0,k0,t0,CP,W,N,v_in(14),L(14));
[p_acc15,t_acc15,vtq15,t_total15]=velocity_dis_sp_minus145(p0,k0,t0,CP,W,N,v_in(15),L(15));
[p_acc16,t_acc16,vtq16,t_total16]=velocity_dis_sp_minus145(p0,k0,t0,CP,W,N,v_in(16),L(16));
[p_acc17,t_acc17,vtq17,t_total17]=velocity_dis_sp_0(p0,k0,t0,CP,W,N,v_in(17),L(17));
[p_acc18,t_acc18,vtq18,t_total18]=velocity_dis_sp_0(p0,k0,t0,CP,W,N,v_in(18),L(18));
[p_acc19,t_acc19,vtq19,t_total19]=velocity_dis_sp_0(p0,k0,t0,CP,W,N,v_in(19),L(19));
[p_acc20,t_acc20,vtq20,t_total20]=velocity_dis_sp_187(p0,k0,t0,CP,W,N,v_in(20),L(20));
[p_acc21,t_acc21,vtq21,t_total21]=velocity_dis_sp_187(p0,k0,t0,CP,W,N,v_in(21),L(21));
[p_acc22,t_acc22,vtq22,t_total22]=velocity_dis_sp_minus129(p0,k0,t0,CP,W,N,v_in(22),L(22));
[p_acc23,t_acc23,vtq23,t_total23]=velocity_dis_sp_minus129(p0,k0,t0,CP,W,N,v_in(23),L(23));
[p_acc24,t_acc24,vtq24,t_total24]=velocity_dis_sp_258(p0,k0,t0,CP,W,N,v_in(24),L(24));
[p_acc25,t_acc25,vtq25,t_total25]=velocity_dis_sp_258(p0,k0,t0,CP,W,N,v_in(25),L(25));
[p_acc26,t_acc26,vtq26,t_total26]=velocity_dis_sp_0(p0,k0,t0,CP,W,N,v_in(26),L(26));


