clc
clear all
RPS = 0.105:0.01:0.805

production1= -6.9 * RPS + 4.3774

production2 = [5.13 4.88 4.84 4.79 4.75 4.70 4.66 4.61 4.56 4.52 4.48 4.43 4.39 4.34 4.30 4.25 4.21 4.16 4.12 4.08 4.03 3.99 3.94 3.90 3.86 3.81 3.77 3.73 3.68 3.64 3.60 3.56 3.51 3.47 3.43 3.38 3.34 3.30 3.26 3.22 3.17 3.13 3.09 3.05 3.01 2.97 2.93 2.88 2.84 2.80 2.76 2.72 2.68 2.64 2.60 2.56 2.52 2.48 2.43 2.40 2.35 2.32 2.28 2.23 2.20 2.16 2.12 2.08 2.04 2.00 1.9];

Recycle = [3.00	2.75	2.72	2.70	2.68	2.65	2.63	2.61	2.58	2.56	2.54	2.52	2.49	2.47	2.45	2.42	2.40	2.38	2.36	2.33	2.31	2.29	2.27	2.24	2.22	2.20	2.18	2.15	2.13	2.11	2.08	2.06	2.04	2.01	1.99	1.97	1.95	1.92	1.90	1.88	1.85	1.83	1.81	1.78	1.76	1.74	1.72	1.69	1.67	1.65	1.62	1.60	1.58	1.56	1.53	1.51	1.49	1.47	1.44	1.42	1.40	1.37	1.35	1.33	1.31	1.28	1.26	1.24	1.21	1.19	1.17];

% Adjusting Recycle values
initial_point = Recycle(1) * 0.7; % Decrease initial point by 20%
descent_rate = (((Recycle(1) - Recycle(71))/Recycle(1)))/71 * 2.6; % Increase descent rate by 10%
adjusted_Recycle = initial_point - (descent_rate) * (0:length(RPS)-1);

initial_point = production2(2) * 1.2; % Decrease initial point by 20%
descent_rate = (((production2(1) - production2(71))/production2(1)))/71 *4.6; % Increase descent rate by 10%
production2_increase = initial_point - (descent_rate) * (0:length(RPS)-1);

production1_increase = [4.05	3.97	3.95	3.93	3.9	3.88	3.85	3.82	3.79	3.76	3.73	3.69	3.65	3.62	3.58	3.54	3.49	3.45	3.4	3.36	3.31	3.26	3.21	3.15	3.1	3.04	2.98	2.92	2.86	2.8	2.73	2.67	2.6	2.53	2.46	2.39	2.32	2.24	2.17	2.09	2.01	1.93	1.85	1.76	1.68	1.59	1.5	1.41	1.32	1.22	1.13	1.03	0.93	0.83	0.73	0.63	0.53	0.42	0.31	0.21	0.09	-0.02	-0.13	-0.25	-0.36	-0.48	-0.6	-0.72	-0.84	-0.97	-1.1];


% plot
figure;
plot(RPS, production1, 'Color', '#20a5d4', 'LineWidth', 2);
hold on;
plot(RPS, production2, 'Color', '#b3a2c7', 'LineWidth', 2);
hold on;
plot(RPS, Recycle, 'Color', '#c0504d', 'LineWidth', 2);
hold on 
% plot(RPS,adjusted_Recycle,'--','Color','#c0504d','LineWidth', 2)
% hold on
% plot(RPS,production2_increase,'--','Color','#b3a2c7','LineWidth', 2)
% hold on 
% plot(RPS,production1_increase,'--','Color','#20a5d4','LineWidth', 2)

xlabel('RPS');
ylabel('Carbon Footprint (Mt)')
% ylabel('Carbon Intensity (t/t)');
legend('PTP', 'FTP','WTP');
xlim([0.115, 0.8]);
% ylim([-2, 3.5]);
% yticks([-2, -1, 0,1.5,3 ]);
% % % 
% % % % 设置 y 轴刻度
xticks([0.20, 0.30, 0.40, 0.50,0.60,0.70, 0.80]);

% title('Production vs. Recycle');

% Custom xticks and xticklabels
% xticks([0.105, 0.125, 0.155, 0.185, 0.395, 0.465, 0.535, 0.585, 0.625]);
% xticklabels({'2020', '2025', '2030', '2035', '2040', '2045', '2050', '2055', '2060'});



% 找到交点坐标
[~, idx] = min(abs(production1 - 0));
RPS_intersection = RPS(idx);
Value_intersection = production1(idx);

% 显示交点坐标
fprintf('交点坐标：RPS = %.3f, Value = %.3f\n', RPS_intersection, Value_intersection);

% 找到 production1 与 y = 0 的交点
RPS_zero_production1 = interp1(production1, RPS, 0);

