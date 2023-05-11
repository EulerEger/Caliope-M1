P0=[1 1 1 1];
options=optimset('Display','Iter','PlotFcns',@optimplotfval)
Popt=fminsearch(@Holst,P0,options)

function F=Holst(P)
GlyK=[288.15	0.04122	0.00018	1024.6	1.225
293.15	0.04122	0.00018	1023.5	1.084
298.15	0.04122	0.00018	1022.1	0.969
303.15	0.04122	0.00018	1020.6	0.871
308.15	0.04122	0.00018	1018.8	0.789
313.15	0.04122	0.00018	1016.9	0.717
318.15	0.04122	0.00018	1014.8	0.655
323.15	0.04122	0.00018	1012.5	0.603
288.15	0.06241	 0.00023 	1032.6	1.272
293.15	0.06241	 0.00023 	1031.3	1.122
298.15	0.06241	 0.00023 	1029.9	1.001
303.15	0.06241	 0.00023 	1028.2	0.900
308.15	0.06241	 0.00023 	1026.4	0.818
313.15	0.06241	 0.00023 	1024.4	0.742
318.15	0.06241	 0.00023 	1022.3	0.676
323.15	0.06241	 0.00023 	1020	0.620
288.15	0.07164	0.00025	1040.8	1.315
293.15	0.07164	0.00025	1039.5	1.165
298.15	0.07164	0.00025	1038	1.041
303.15	0.07164	0.00025	1036.3	0.937
308.15	0.07164	0.00025	1034.4	0.850
313.15	0.07164	0.00025	1032.4	0.773
318.15	0.07164	0.00025	1030.3	0.708
323.15	0.07164	0.00025	1027.9	0.652
288.15	0.10116	0.00033	1054	1.371
293.15	0.10116	0.00033	1052.6	1.214
298.15	0.10116	0.00033	1050.9	1.085
303.15	0.10116	0.00033	1049.2	0.978
308.15	0.10116	0.00033	1047.2	0.889
313.15	0.10116	0.00033	1045.1	0.810
318.15	0.10116	0.00033	1042.9	0.743
323.15	0.10116	0.00033	1040.6	0.685
288.15	0.11904	0.00038	1067.2	1.4558
293.15	0.11904	0.00038	1065.7	1.2910
298.15	0.11904	0.00038	1064	1.1548
303.15	0.11904	0.00038	1062.1	1.0398
308.15	0.11904	0.00038	1060.1	0.94218
313.15	0.11904	0.00038	1058	0.85927
318.15	0.11904	0.00038	1055.9	0.78577
323.15	0.11904	0.00038	1053.5	0.7223
288.15	0.15170	0.00047	1086.4	1.5745
293.15	0.15170	0.00047	1084.7	1.3942
298.15	0.15170	0.00047	1082.9	1.2473
303.15	0.15170	0.00047	1080.9	1.1241
308.15	0.15170	0.00047	1078.8	1.0177
313.15	0.15170	0.00047	1076.6	0.9275
318.15	0.15170	0.00047	1074.3	0.8502
323.15	0.15170	0.00047	1071.8	0.7834
288.15	0.19913	0.00062	1109.9	1.7635
293.15	0.19913	0.00062	1108.0	1.5620
298.15	0.19913	0.00062	1106.1	1.3979
303.15	0.19913	0.00062	1104.0	1.2618
308.15	0.19913	0.00062	1101.7	1.1470
313.15	0.19913	0.00062	1099.4	1.0492
318.15	0.19913	0.00062	1097.0	0.9597
323.15	0.19913	0.00062	1094.5	0.8829
288.15	0.25105	0.00077	1140.5	2.0446
293.15	0.25105	0.00077	1138.4	1.8074
298.15	0.25105	0.00077	1136.3	1.6131
303.15	0.25105	0.00077	1134.0	1.4481
308.15	0.25105	0.00077	1131.7	1.3108
313.15	0.25105	0.00077	1129.3	1.1933
318.15	0.25105	0.00077	1126.8	1.0909
323.15	0.25105	0.00077	1124.2	1.0024
288.15	0.29900	0.00091	1169.3	2.4214
293.15	0.29900	0.00091	1167.1	2.1278
298.15	0.29900	0.00091	1164.8	1.8919
303.15	0.29900	0.00091	1162.5	1.7139
308.15	0.29900	0.00091	1160.0	1.5444
313.15	0.29900	0.00091	1157.5	1.4075
318.15	0.29900	0.00091	1154.9	1.3024
323.15	0.29900	0.00091	1152.3	1.1803
288.15	0.40342	0.00122	1234.7	3.7136
293.15	0.40342	0.00122	1232.2	3.2425
298.15	0.40342	0.00122	1229.6	2.8557
303.15	0.40342	0.00122	1227.0	2.5377
308.15	0.40342	0.00122	1224.3	2.2704
313.15	0.40342	0.00122	1221.6	2.0467
318.15	0.40342	0.00122	1218.8	1.8542
323.15	0.40342	0.00122	1216.0	1.6891];



A1=P(1);A2=P(2);A3=P(3);A4=P(4);
T=GlyK(:,1);
C=GlyK(:,2);
MVexp=GlyK(:,5);
R=8.314;
MVm=A1.*exp(A2.*exp(A3.*C)./(R.*T)).*exp(A4.*C);
F=sum(abs(MVexp-MVm));
RMSE=sqrt(sum((MVexp-MVm).^2)./length(T))
AARD=100/length(T)*sum(abs((MVexp-MVm)./MVexp))
end
