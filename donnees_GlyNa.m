clear all
clc

GlyNa=[288.15	0.03555	 0.00015   	1021.5	1.281
293.15	0.03555	 0.00015   	1020.3	1.130
298.15	0.03555	 0.00015   	1019.0	1.007
303.15	0.03555	 0.00015   	1017.4	0.903
308.15	0.03555	 0.00015   	1015.6	0.816
313.15	0.03555	 0.00015   	1013.6	0.741
318.15	0.03555	 0.00015   	1011.5	0.676
323.15	0.03555	 0.00015   	1009.3	0.621
288.15	0.05881	 0.00021   	1033.7	1.379
293.15	0.05881	 0.00021   	1032.3	1.216
298.15	0.05881	 0.00021   	1030.8	1.080
303.15	0.05881	 0.00021   	1029.1	0.967
308.15	0.05881	 0.00021   	1027.2	0.873
313.15	0.05881	 0.00021   	1025.2	0.793
318.15	0.05881	 0.00021   	1023.0	0.722
323.15	0.05881	 0.00021   	1020.7	0.663
288.15	0.06069	 0.00021   	1035.6	1.395
293.15	0.06069	 0.00021   	1034.3	1.230
298.15	0.06069	 0.00021   	1032.7	1.095
303.15	0.06069	 0.00021   	1031.0	0.980
308.15	0.06069	 0.00021   	1029.1	0.885
313.15	0.06069	 0.00021   	1027.1	0.803
318.15	0.06069	 0.00021   	1024.9	0.732
323.15	0.06069	 0.00021   	1022.6	0.672
288.15	0.08657	 0.00028   	1049.7	1.566
293.15	0.08657	 0.00028   	1048.1	1.369
298.15	0.08657	 0.00028   	1046.3	1.214
303.15	0.08657	 0.00028   	1044.4	1.086
308.15	0.08657	 0.00028   	1042.4	0.978
313.15	0.08657	 0.00028   	1040.1	0.887
318.15	0.08657	 0.00028   	1038.0	0.808
323.15	0.08657	 0.00028   	1035.7	0.741
288.15	0.09956	 0.00032   	1060.5	1.652
293.15	0.09956	 0.00032   	1058.9	1.451
298.15	0.09956	 0.00032   	1057.1	1.291
303.15	0.09956	 0.00032   	1055.2	1.155
308.15	0.09956	 0.00032   	1053.1	1.043
313.15	0.09956	 0.00032   	1050.9	0.945
318.15	0.09956	 0.00032   	1048.6	0.860
323.15	0.09956	 0.00032   	1045.8	0.787
288.15	0.10506	0.00033	1064.1	1.671
293.15	0.10506	0.00033	1062.4	1.484
298.15	0.10506	0.00033	1060.6	1.323
303.15	0.10506	0.00033	1058.7	1.184
308.15	0.10506	0.00033	1056.6	1.063
313.15	0.10506	0.00033	1054.4	0.958
318.15	0.10506	0.00033	1052.1	0.866
323.15	0.10506	0.00033	1049.7	0.785
288.15	0.13832	0.000430002	1083.3	1.919
293.15	0.13832	0.000430002	1081.5	1.700
298.15	0.13832	0.000430002	1079.5	1.513
303.15	0.13832	0.000430002	1077.4	1.351
308.15	0.13832	0.000430002	1075.2	1.211
313.15	0.13832	0.000430002	1072.9	1.090
318.15	0.13832	0.000430002	1070.5	0.983
323.15	0.13832	0.000430002	1068	0.890
288.15	0.19743	0.00061	1116.0	2.637
293.15	0.19743	0.00061	1113.866667	2.364
298.15	0.19743	0.00061	1111.7	2.071
303.15	0.19743	0.00061	1109.4	1.817
308.15	0.19743	0.00061	1106.8	1.605
313.15	0.19743	0.00061	1104.3	1.432
318.15	0.19743	0.00061	1101.7	1.299
323.15	0.19743	0.00061	1099.1	1.183
288.15	0.24637	0.00076	1146.4	3.501
293.15	0.24637	0.00076	1144.0	3.001
298.15	0.24637	0.00076	1141.6	2.603
303.15	0.24637	0.00076	1139.0	2.281
308.15	0.24637	0.00076	1136.5	2.018
313.15	0.24637	0.00076	1133.8	1.801
318.15	0.24637	0.00076	1131.1	1.617
323.15	0.24637	0.00076	1128.3	1.462
288.15	0.29332	0.00090	1175.6	4.856
293.15	0.29332	0.00090	1173.0	4.099
298.15	0.29332	0.00090	1170.4	3.513
303.15	0.29332	0.00090	1167.7	3.043
308.15	0.29332	0.00090	1164.9	2.664
313.15	0.29332	0.00090	1162.1	2.349
318.15	0.29332	0.00090	1159.3	2.089
323.15	0.29332	0.00090	1156.4	1.881
288.15	0.3906	 0.0012   	1236.6	10.532
293.15	0.3906	 0.0012   	1233.6	8.505
298.15	0.3906	 0.0012   	1230.6	6.996
303.15	0.3906	 0.0012   	1227.6	5.846
308.15	0.3906	 0.0012   	1224.6	4.959
313.15	0.3906	 0.0012   	1221.5	4.256
318.15	0.3906	 0.0012   	1218.4	3.708
323.15	0.3906	 0.0012   	1215.2	3.255
];


% GlyNa288=GlyNa(find(GlyNa(:,1)==288.15),:);
% 
% Nu288=GlyNa288(:,5);
% 
% for T=288.15:5:323.15
%    i=find(GlyNa(:,1)==b(i));
%    GlyNaT=GlyNa(i,:)
%    plot(GlyNaT(:,2),GlyNaT(:,5))
%    hold on
%end

% a=unique(GlyNa(:,1));
% 
% for b=1:length(a)
%     c=find(GlyNa(:,1)==a(b));
%     GlyNaN=GlyNa(c,:);
%     plot(GlyNaN(:,2),GlyNaN(:,5))
%     hold on
% end

P= [2.3417  664.8621  265.3172];
A1=P(1);A2=P(2);A3=P(3);

T = GlyNa(:,1);
W = GlyNa(:,2);
Mv_model=A1*T+A2*W+A3;
Mv_exp=GlyNa(:,4);

RMS=sqrt((sum(Mv_exp-Mv_model)).^2/length(GlyNa))
AARD=(100/length(GlyNa))*sum(abs(((Mv_exp-Mv_model)/Mv_exp)));