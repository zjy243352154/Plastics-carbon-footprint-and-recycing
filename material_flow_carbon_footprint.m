clc
clear all
tecs = ['PE', 'PP', 'PVC', 'PS','ABS'];

%% SSP1
% production = [49.62 50.85 49.88 13.59 8.70];
% maun_amount = [67.1750   45.4806   36.0777   11.7129   11.6352];
% total_LF = [29.7513   19.5018    8.3011    3.2195    1.6657];
% total_I = [ 7.4532    6.2129    2.7064    0.8758    0.4675 ];
% total_recycle1 = [10.2646    7.0696    5.4792    3.2490    4.0677];
% total_u = [10.2162    9.5013    3.4903    1.6421    0.4455];

%% SSP2
production = [37.40 38.33 37.60 10.24 6.56];
maun_amount = [50.6269   34.2820   27.1921    8.8273    8.7666];
total_LF = [22.4222   14.6999    6.2566    2.4264    1.2550];
total_I = [5.6172    4.6831    2.0398    0.6601    0.3523];
total_recycle1 = [7.7360    5.3289    4.1297    2.4486    3.0648];
total_u = [ 7.6995    7.1618    2.6307    1.2375    0.3357];
%% SSP3
% production = [26.11 26.76 26.24 7.15 4.58];
% maun_amount = [ 35.3397   23.9328   18.9809    6.1667    6.1180];
% total_LF = [ 15.6517   10.2623    4.3673    1.6951    0.8759];
% total_I = [ 3.9210    3.2694    1.4238    0.4611    0.2458];
% total_recycle1 = [ 5.4001    3.7202    2.8827    1.7106    2.1389];
% total_u = [ 5.3746    4.9998    1.8363    0.8645    0.2343];

%% SSP4
% production = [38.11 39.05 38.3 10.44 6.68];
% maun_amount = [51.5849   34.9273   27.6997    8.9980    8.9358];
% total_LF = [22.8465   14.9766    6.3734    2.4733    1.2793];
% total_I = [5.7235    4.7713    2.0779    0.6728    0.3591];
% total_recycle1 = [7.8824    5.4292    4.2068    2.4959    3.1240];
% total_u = [ 7.8452    7.2966    2.6798    1.2615    0.3421];

%% SSP5
% production = [64.17 65.75 64.49 17.57 11.25];
% maun_amount = [ 86.8509   58.8111   46.6459   15.1492   15.0369];
% total_LF = [ 38.4656   25.2179   10.7328    4.1641    2.1527];
% total_I = [ 9.6363    8.0339    3.4991    1.1328    0.6042];
% total_recycle1 = [13.2712    9.1417    7.0842    4.2022    5.2569];
% total_u = [13.2086   12.2861    4.5127    2.1238    0.5757];
%% Improving by 20%
%% SSP1
% total_recycle = [10.2646    7.0696    5.4792    3.2490    4.0677]
% total_recycle1 = total_recycle*(1+2.5)
% production = [49.62 50.85 49.88 13.59 8.70] -total_recycle*2.5.*0.7
% % maun_amount = [49.62 50.85 49.88 13.59 8.70] -total_recycle*0.8944070796
% maun_amount = production*0.8944070796
% % maun_amount = ([49.62 50.85 49.88 13.59 8.70] -total_recycle)*0.998209873
% total_LF = [29.7513   19.5018    8.3011    3.2195    1.6657]
% total_I = [ 7.4532    6.2129    2.7064    0.8758    0.4675 ]
% total_u = [10.2162    9.5013    3.4903    1.6421    0.4455] 

%% SSP2
% total_recycle= [7.7360    5.3289    4.1297    2.4486    3.0648]
% total_recycle1 = [7.7360    5.3289    4.1297    2.4486    3.0648]*(1+2.5)
% production = [37.40 38.33 37.60 10.24 6.56]-total_recycle*2.5.*0.7
% maun_amount =production*0.8944 ;
% % maun_amount =production*0.9966564205 ;
% total_LF = [22.4222   14.6999    6.2566    2.4264    1.2550]
% total_I = [5.6172    4.6831    2.0398    0.6601    0.3523]
% total_u = [ 7.6995    7.1618    2.6307    1.2375    0.3357]

%% 测试无差异曲线部分， 仍以SSP2为例，调整不同回收率 基准回收率为22% 其余回收率为与22%的比值，减小/增大回收量并对应调整生产量

% total_recycle= [7.7360    5.3289    4.1297    2.4486    3.0648]
% total_recycle1 = [7.7360    5.3289    4.1297    2.4486    3.0648].*(0.455)
% production = [37.40 38.33 37.60 10.24 6.56]+total_recycle.*(1-0.455).*0.7
% maun_amount =production*0.8944 ;
% % maun_amount =production*0.9966564205 ;
% total_LF = [22.4222   14.6999    6.2566    2.4264    1.2550]
% total_I = [5.6172    4.6831    2.0398    0.6601    0.3523]
% total_u = [ 7.6995    7.1618    2.6307    1.2375    0.3357]

%% SSP3
% total_recycle = [ 5.4001    3.7202    2.8827    1.7106    2.1389]
% total_recycle1 = [ 5.4001    3.7202    2.8827    1.7106    2.1389]*(1+2.5);
% production = [26.11 26.76 26.24 7.15 4.58]-total_recycle*2.5.*0.7
%  maun_amount = production*0.894349;
%  %maun_amount = production*0.9966765742;
% total_LF = [ 15.6517   10.2623    4.3673    1.6951    0.8759];
% total_I = [ 3.9210    3.2694    1.4238    0.4611    0.2458];
% total_u = [ 5.3746    4.9998    1.8363    0.8645    0.2343];

%% SSP4
% total_recycle = [7.8824    5.4292    4.2068    2.4959    3.1240];
% total_recycle1 = [7.8824    5.4292    4.2068    2.4959    3.1240]*(1+2.5);
% production = [38.11 39.05 38.3 10.44 6.68]-total_recycle.*2.5.*0.7;
% maun_amount = production*0.8944251;
% %maun_amount = production*0.9967994267;
% total_LF = [22.8465   14.9766    6.3734    2.4733    1.2793];
% total_I = [5.7235    4.7713    2.0779    0.6728    0.3591];
% total_u = [ 7.8452    7.2966    2.6798    1.2615    0.3421];

%% SSP5
% total_recycle = [13.2712    9.1417    7.0842    4.2022    5.2569];
% total_recycle1 = [13.2712    9.1417    7.0842    4.2022    5.2569]*(1+2.5);
% production = [64.17 65.75 64.49 17.57 11.25]-total_recycle.*2.5.*0.7
% maun_amount =production*0.894465 ;
% % maun_amount =production*0.9967029521;
% total_LF = [ 38.4656   25.2179   10.7328    4.1641    2.1527];
% total_I = [ 9.6363    8.0339    3.4991    1.1328    0.6042];
% total_u = [13.2086   12.2861    4.5127    2.1238    0.5757];

%% 排放
% emif_p = [4.16 4.98 4.25 4.35 5.23];% CTO baseline
% emif_p = [4.16 4.98 4.25 4.35 5.23].*0.496;% CTO higher RPS
% emif_p = [1.41 1.23 1.41 2.64 2.64].*1.5;% PTO SSP1
emif_p = [1.412 1.24 1.412 2.65 2.65].*1.5;% PTO SSP2
% emif_p = [1.42 1.24 1.42 2.66 2.66].*1.5;% PTO SSP3
% emif_p = [1.41 1.24 1.41 2.65 2.65].*1.5;% PTO SSP4
% emif_p = [1.434 1.256 1.434 2.69 2.69].*1.5;% PTO SSP5
% emif_p = [-0.7367 -0.6533 -0.7367 -1.39 -1.39];% PTO 60%  RPS 
% emif_p = [-0.3021 -0.2679 -0.3021 -0.57 -0.57];% PTO 1.5 ^C 48%  RPS 
% emif_p = [-1.466 -1.284 -1.466 -2.75 -2.75];% PTO 2 ^C 60%  RPS 
% emif_p = [-1.102 -0.965 -1.102 -2.07 -2.07];% PTO 2 ^C 70%  RPS 
% emif_p = [-0.5716 -0.5006 -0.5716 -1.0723 -1.0723];% PTO 2℃-SSP1，对应AR6 GCAM5.3 SSP1 no DACCS- 2p6 3pctHR 2060年数据
% emif_p = [-0.4699 -0.4116 -0.4699 -0.8815 -0.8815];% PTO 2℃-SSP2，对应AR6 GCAM5.3 SSP2 no DACCS- 2p6 3pctHR 2060年数据
% emif_p = [-0.3018 -0.2643 -0.3018 -0.5661 -0.5661];% PTO 2℃-SSP3，AR6 GCAM5.3 SSP3 无数据，对应Global Energy Interation 论文数据 48% RPS
% emif_p = [-0.3999 -0.3502 -0.3999 -0.7501 -0.7501];% PTO 2℃-SSP4，对应AR6 GCAM5.3 SSP4 no DACCS- 2p63pctHR 2060年数据
% emif_p = [-0.2184 -0.1913 -0.2184  -0.4097 -0.4097];% PTO 2℃-SSP5，对应AR6 GCAM5.3 SSP5  no DACCS -2p6 3pctHR 2060年数据

%% 2023/09/21 维护后重新测试 （这部分在2023/10/11讨论后废弃 O.504是SSP2下的数值）
% emif_p = [-0.9002 -0.7884 -0.9002 -1.6886 -1.6886];% PTO 2℃-SSP1，对应AR6 GCAM5.3 SSP1 no DACCS- 2p6 3pctHR 2060年数据
% emif_m = [0.71 0.71 0.84 0.92 1.42].*0.504;%  higher RPS 2℃
% emif_i = [3.14 3.14 1.32 1.33 1.33].*0.504;%  higher RPS 2℃;
% emif_r = [2.00 2.04 2.31 2.11 2.21].*0.504;%  higher RPS 2℃
% emif_m = [0.71 0.71 0.84 0.92 1.42].*0.392;%  higher RPS 80%
% emif_i = [3.14 3.14 1.32 1.33 1.33].*0.392;%  higher RPS 80%
% emif_r = [2.00 2.04 2.31 2.11 2.21].*0.392;%  higher RPS 80%

%% carbon sink 1.5 部分 （这部分已经可以考虑放弃）
%  emif_p = [-0.6438 -0.5639 -0.6438 -1.21 -1.21];% PTO 1.5℃-SSP1，对应AR6 GCAM5.3 SSP1-noDACCS-1p9-3pctHR 2060年数据 
%  emif_p = [-0.6373 -0.5581 -0.6373 -1.20 -1.20];% PTO 1.5℃-SSP2，对应AR6 GCAM5.3 SSP2-noDACCS-2p6-3pctHR 2060年数据 +5%
%  emif_p = [-0.4837 -0.4237 -0.4837 -0.91 -0.91];% % PTO 2℃-SSP3，AR6 GCAM5.3 SSP3 无数据，对应Global Energy Interation 论文数据 48% RPS+5%
%  emif_p = [-0.4881 -0.4275 -0.4881 -0.92 -0.92];% PTO 1.5℃-SSP1，对应AR6 GCAM5.3 SSP4-noDACCS-1p9-3pctHR 2060年数据
%  emif_p = [-0.4011 -0.3513 -0.4011  -0.7525 -0.7525];% PTO 2℃-SSP5，对应AR6 GCAM5.3 SSP5  no DACCS -2p6 3pctHR 2060年数据 +5%

%%carbon sink 80% 部分
%  emif_p = [-1.4662 -1.2841 -1.4662 -2.75 -2.75];% PTO 80% RPS

%% emif_m 
 emif_m = [0.71 0.71 0.84 0.92 1.42];% baseline
%  emif_m = [0.71 0.71 0.84 0.92 1.42].*0.478;%  higher RPS 2℃ SSP1
%  emif_m = [0.71 0.71 0.84 0.92 1.42].*0.431;%  higher RPS 1.5℃
%  emif_m = [0.71 0.71 0.84 0.92 1.42].*0.21;%  higher RPS 80%
%% emif_i 
emif_i = [3.14 3.14 1.32 1.33 1.33];
%  emif_i = [3.14 3.14 1.32 1.33 1.33].*0.478;%  higher RPS 2℃;
%  emif_i = [3.14 3.14 1.32 1.33 1.33].*0.431;%  higher RPS 1.5℃;
%  emif_i = [3.14 3.14 1.32 1.33 1.33].*0.21;%  higher RPS 80%;
%% emf_r  
 emif_r = [2.00 2.04 2.31 2.11 2.21]; % baseline
%  emif_r = [2.00 2.04 2.31 2.11 2.21].*0.478;%  higher RPS 2℃
%  emif_r = [2.00 2.04 2.31 2.11 2.21].*0.431;%  higher RPS 1.5℃
%  emif_r = [2.00 2.04 2.31 2.11 2.21].*0.21;%  higher RPS 80%
%% emif_ unchanged
emif_l = [0.09 0.09 0.09 0.09 0.09];
emif_u = [0.1 0.32 0.28 0.3 0.29];
%% SSP factor
SSP_factor = 1; 
% SSP_factor = 0.476; %SSP1
% SSP_factor = 0.504; %SSP2
% SSP_factor = 0.392; %SSP2 80%
% SSP_factor = 0.517; %SSP3
% SSP_factor = 0.522; %SSP4   
% SSP_factor = 0.569; %SSP5
E_P = emif_p.*production;
E_M = emif_m.*maun_amount.*SSP_factor;
E_L = emif_l.*total_LF;
E_I = emif_i.*total_I.*SSP_factor;
E_R = emif_r.*total_recycle1.*SSP_factor;
E_U = emif_u.*total_u;
E_WR = E_L+E_I+E_R+E_U;
emf_p = emif_p.*production + emif_m.*maun_amount.*SSP_factor+ emif_l.*total_LF + emif_i.*total_I.*SSP_factor + emif_r.*total_recycle1.*SSP_factor+emif_u.*total_u

%% Sum
totalP=sum(E_P,2)
totalM=sum(E_M,2)
totalL=sum(E_L,2);
totalI=sum(E_I,2);
totalR=sum(E_R,2);
totalU=sum(E_U);
totalWR=totalL+totalI+totalR+totalU
totalemf=sum(emf_p,2)
total_production = sum(production);
total_recycle_amount = sum(total_recycle1);
total_waste = sum(total_recycle1)+sum(total_LF)+sum(total_I)+sum(total_u);
share_recycle = total_recycle_amount./total_waste;
%% Intensity 
efff=totalemf./0.103891;
