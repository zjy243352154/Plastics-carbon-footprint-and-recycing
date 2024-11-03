clc
clear all
%% Levilized cost for CTO
coal_price = 200:10:800; 
% Define the linear relationship for CTO cost 
CTO_cost = 4.3157 * coal_price + 4192.2;
% Data for coal consumption amounts and values of rest cost items are from
% the reference doi.org/10.1016/j.esr.2021.100754

%%  Levilzed cost of OTO
oil_price = 50:10:100;
% Define the linear relationship for CTO cost 
OTO_cost =  (1527/40)*oil_price+(83583/20); 
% Data for oil cost calculation are from the reference doi.org/10.1016/j.esr.2021.100754

%%  Levilzed cost of PTO
% electiricity price fixed 
co2_price = -150:250:4500;
PTO_price_a = 3674+993+0.35*13453.9+2.7*co2_price; % electricity price 0.35
PTO_price_b = 3674+993+0.15*13453.9+2.7*co2_price; % electricity price 0.15
% co2 price fixed
electricity_price = 0.05:0.05:0.55;
PTO_price_c = 3674+993+3450*2.7+15453.9*electricity_price; % carbon source from DAC
PTO_price_d = 3674+993+30*2.7*7.5+13453.9*electricity_price; %carbon source from PSC
% price is calculated based on the reference doi.org/10.1016/j.jechem.2020.04.021
