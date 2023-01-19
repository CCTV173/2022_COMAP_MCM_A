%% make weather into consideration
clear;
clc;
%% 输入的参数（在这里改动）
v_w=0;%风速
CP=345.75; %critical power (Watt)
W=22700; % size of the battery (Joule)
p0=4.61;t0=0.3752;k0=5.63;%power-curve
N=20000000;
L=[2400 2100 2000 1400 2100 6800 1600 5300 2100 2000 1400 2100 6800 1600 2900];
v_in=[1 9.97 9.97 9.97 12 12 9.97 9.97 9.97 9.97 12 12 9.97];
alpha=0;%降雨损失
v_in(2:13)=v_in(2:13)*sqrt((1-alpha));
cos=[cos(15/180*pi) -cos(75/180*pi) -cos(15/180*pi) -cos(75/180*pi) -cos(15/180*pi) cos(75/180*pi) cos(15/180*pi)];
slope=[0 2.18 -2.86];
c1=0.14*0.95;%Ka！！！！！！！
%% calculation （不用动！！）
[p_acc1,t_acc1,vtq1,t_total1]=velocity_wea_tt_0(p0,k0,t0,CP,W,N,v_in(1),L(1),cos(1),v_w,alpha,slope(1),c1);
[p_acc2,t_acc2,vtq2,t_total2]=velocity_win_tt(p0,k0,t0,CP,W,N,v_in(2),L(2),cos(2),v_w,alpha,slope(1),c1);
[p_acc3,t_acc3,vtq3,t_total3]=velocity_win_tt(p0,k0,t0,CP,W,N,v_in(3),L(3),cos(3),v_w,alpha,slope(1),c1);
n1=size(vtq3);
[p_acc4,t_acc4,vtq4,t_total4]=velocity_win_tt(p0,k0,t0,CP,W,N,vtq3(n1(2)),L(4),cos(4),v_w,alpha,slope(1),c1);
[p_acc5,t_acc5,vtq5,t_total5]=velocity_win_tt(p0,k0,t0,CP,W,N,v_in(4),L(5),cos(5),v_w,alpha,slope(2),c1);
[p_acc6,t_acc6,vtq6,t_total6]=velocity_win_tt(p0,k0,t0,CP,W,N,v_in(5),L(6),cos(5),v_w,alpha,slope(1),c1);
[p_acc7,t_acc7,vtq7,t_total7]=velocity_win_tt(p0,k0,t0,CP,W,N,v_in(6),L(7),cos(6),v_w,alpha,slope(3),c1);
[p_acc8,t_acc8,vtq8,t_total8]=velocity_win_tt(p0,k0,t0,CP,W,N,v_in(7),L(8),cos(7),v_w,alpha,slope(1),c1);
[p_acc9,t_acc9,vtq9,t_total9]=velocity_win_tt(p0,k0,t0,CP,W,N,v_in(8),L(9),cos(2),v_w,alpha,slope(1),c1);
[p_acc10,t_acc10,vtq10,t_total10]=velocity_win_tt(p0,k0,t0,CP,W,N,v_in(9),L(10),cos(3),v_w,alpha,slope(1),c1);
n2=size(vtq10);
[p_acc11,t_acc11,vtq11,t_total11]=velocity_win_tt(p0,k0,t0,CP,W,N,vtq10(n2(2)),L(11),cos(4),v_w,alpha,slope(1),c1);
[p_acc12,t_acc12,vtq12,t_total12]=velocity_win_tt(p0,k0,t0,CP,W,N,v_in(10),L(12),cos(5),v_w,alpha,slope(2),c1);
[p_acc13,t_acc13,vtq13,t_total13]=velocity_win_tt(p0,k0,t0,CP,W,N,v_in(11),L(13),cos(5),v_w,alpha,slope(1),c1);
[p_acc14,t_acc14,vtq14,t_total14]=velocity_win_tt(p0,k0,t0,CP,W,N,v_in(12),L(14),cos(6),v_w,alpha,slope(2),c1);
[p_acc15,t_acc15,vtq15,t_total15]=velocity_win_tt(p0,k0,t0,CP,W,N,v_in(13),L(15),cos(7),v_w,alpha,slope(3),c1);
a=t_total1+t_total1+t_total1+t_total1+t_total1+t_total1


