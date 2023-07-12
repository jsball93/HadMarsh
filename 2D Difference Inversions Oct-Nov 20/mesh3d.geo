//3D half space problem mesh for ResIPy - no topography
cl=3.00;//define characteristic length for fine mesh region
//Fine mesh region.
Point (1) = {580636.45,185310.98,0.00, cl*1.2};
Point (2) = {580636.45,185173.39,0.00, cl*1.2};
Point (3) = {580436.89,185173.39,0.00, cl*1.2};
Point (4) = {580436.89,185310.98,0.00, cl*1.2};
Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,1};
cl2=cl*10.00;//define characteristic length for base of fine mesh region
Point (5) = {580636.45,185310.98,-49.55, cl2};
Point (6) = {580636.45,185173.39,-49.55, cl2};
Point (7) = {580436.89,185173.39,-49.55, cl2};
Point (8) = {580436.89,185310.98,-49.55, cl2};
Line(5) = {5,6};
Line(6) = {6,7};
Line(7) = {7,8};
Line(8) = {8,5};
Line(9) = {1,5};
Line(10) = {2,6};
Line(11) = {3,7};
Line(12) = {4,8};
//End fine mesh region points
//Neumannn boundary points
cln = 300.00;//characteristic length for background region
Point (9) = {581379.65,186054.18,0.00, cln};
Point (10) = {581379.65,184430.19,0.00, cln};
Point (11) = {579693.69,184430.19,0.00, cln};
Point (12) = {579693.69,186054.18,0.00, cln};
Line(13) = {9,10};
Line(14) = {10,11};
Line(15) = {11,12};
Line(16) = {12,9};
Point (13) = {581379.65,186054.18,-198.21, cln};
Point (14) = {581379.65,184430.19,-198.21, cln};
Point (15) = {579693.69,184430.19,-198.21, cln};
Point (16) = {579693.69,186054.18,-198.21, cln};
Line(17) = {13,14};
Line(18) = {14,15};
Line(19) = {15,16};
Line(20) = {16,13};
Line(21) = {9,13};
Line(22) = {10,14};
Line(23) = {11,15};
Line(24) = {12,16};
//End of nuemmon boundary points
Line Loop(1) = {1,2,3,4};
Line Loop(2) = {13,14,15,16};
Plane Surface(1) = {1};
Plane Surface(2) = {2,1};
//Below ground fine mesh surfaces
Line Loop(3) = {5,6,7,8};
Line Loop(4) = {5,-10,-1,9};
Line Loop(5) = {11,-6,-10,2};
Line Loop(6) = {11,7,-12,-3};
Line Loop(7) = {8,-9,-4,12};
Plane Surface(3) = {3};
Plane Surface(4) = {4};
Plane Surface(5) = {5};
Plane Surface(6) = {6};
Plane Surface(7) = {7};
Surface Loop (1) = {1,3,4,5,6,7};
Volume(1) = {1};//End Fine mesh region surfaces.
//Below ground background surfaces
Line Loop(8) = {20, 17, 18, 19};
Line Loop(9) = {24, -19, -23, 15};
Line Loop(10) = {16, 21, -20, -24};
Line Loop(11) = {17, -22, -13, 21};
Line Loop(12) = {18, -23, -14, 22};
Plane Surface(8) = {8};
Plane Surface(9) = {9};
Plane Surface(10) = {10};
Plane Surface(11) = {11};
Plane Surface(12) = {12};
Surface Loop (2) = {2,3,4,5,6,7,8,9,10,11,12};
Volume(2) = {2};//End background mesh surfaces
//Electrode positions.
Point (17) = {580478.29,185223.88,0.00, cl};
Point{17} In Surface{1};//surface electrode
Point (18) = {580493.89,185220.28,0.00, cl};
Point{18} In Surface{1};//surface electrode
Point (19) = {580476.33,185224.27,0.00, cl};
Point{19} In Surface{1};//surface electrode
Point (20) = {580491.96,185220.76,0.00, cl};
Point{20} In Surface{1};//surface electrode
Point (21) = {580474.38,185224.64,0.00, cl};
Point{21} In Surface{1};//surface electrode
Point (22) = {580490.01,185221.18,0.00, cl};
Point{22} In Surface{1};//surface electrode
Point (23) = {580472.43,185225.20,0.00, cl};
Point{23} In Surface{1};//surface electrode
Point (24) = {580488.05,185221.66,0.00, cl};
Point{24} In Surface{1};//surface electrode
Point (25) = {580470.51,185225.83,0.00, cl};
Point{25} In Surface{1};//surface electrode
Point (26) = {580486.11,185222.08,0.00, cl};
Point{26} In Surface{1};//surface electrode
Point (27) = {580468.75,185226.83,0.00, cl};
Point{27} In Surface{1};//surface electrode
Point (28) = {580484.18,185222.54,0.00, cl};
Point{28} In Surface{1};//surface electrode
Point (29) = {580467.08,185227.92,0.00, cl};
Point{29} In Surface{1};//surface electrode
Point (30) = {580482.19,185222.99,0.00, cl};
Point{30} In Surface{1};//surface electrode
Point (31) = {580465.40,185228.98,0.00, cl};
Point{31} In Surface{1};//surface electrode
Point (32) = {580480.25,185223.41,0.00, cl};
Point{32} In Surface{1};//surface electrode
Point (33) = {580509.50,185216.70,0.00, cl};
Point{33} In Surface{1};//surface electrode
Point (34) = {580525.15,185213.46,0.00, cl};
Point{34} In Surface{1};//surface electrode
Point (35) = {580507.51,185217.05,0.00, cl};
Point{35} In Surface{1};//surface electrode
Point (36) = {580523.20,185213.84,0.00, cl};
Point{36} In Surface{1};//surface electrode
Point (37) = {580505.59,185217.56,0.00, cl};
Point{37} In Surface{1};//surface electrode
Point (38) = {580521.28,185214.37,0.00, cl};
Point{38} In Surface{1};//surface electrode
Point (39) = {580503.61,185217.92,0.00, cl};
Point{39} In Surface{1};//surface electrode
Point (40) = {580519.29,185214.66,0.00, cl};
Point{40} In Surface{1};//surface electrode
Point (41) = {580501.67,185218.31,0.00, cl};
Point{41} In Surface{1};//surface electrode
Point (42) = {580517.33,185215.11,0.00, cl};
Point{42} In Surface{1};//surface electrode
Point (43) = {580499.73,185218.85,0.00, cl};
Point{43} In Surface{1};//surface electrode
Point (44) = {580515.34,185215.46,0.00, cl};
Point{44} In Surface{1};//surface electrode
Point (45) = {580497.80,185219.38,0.00, cl};
Point{45} In Surface{1};//surface electrode
Point (46) = {580513.39,185215.90,0.00, cl};
Point{46} In Surface{1};//surface electrode
Point (47) = {580495.82,185219.82,0.00, cl};
Point{47} In Surface{1};//surface electrode
Point (48) = {580511.46,185216.39,0.00, cl};
Point{48} In Surface{1};//surface electrode
Point (49) = {580581.73,185200.86,0.00, cl};
Point{49} In Surface{1};//surface electrode
Point (50) = {580566.12,185204.36,0.00, cl};
Point{50} In Surface{1};//surface electrode
Point (51) = {580583.66,185200.35,0.00, cl};
Point{51} In Surface{1};//surface electrode
Point (52) = {580568.09,185203.93,0.00, cl};
Point{52} In Surface{1};//surface electrode
Point (53) = {580585.62,185199.95,0.00, cl};
Point{53} In Surface{1};//surface electrode
Point (54) = {580570.03,185203.50,0.00, cl};
Point{54} In Surface{1};//surface electrode
Point (55) = {580587.58,185199.56,0.00, cl};
Point{55} In Surface{1};//surface electrode
Point (56) = {580571.99,185203.09,0.00, cl};
Point{56} In Surface{1};//surface electrode
Point (57) = {580589.60,185199.49,0.00, cl};
Point{57} In Surface{1};//surface electrode
Point (58) = {580573.96,185202.58,0.00, cl};
Point{58} In Surface{1};//surface electrode
Point (59) = {580591.57,185199.30,0.00, cl};
Point{59} In Surface{1};//surface electrode
Point (60) = {580575.85,185202.11,0.00, cl};
Point{60} In Surface{1};//surface electrode
Point (61) = {580593.61,185199.23,0.00, cl};
Point{61} In Surface{1};//surface electrode
Point (62) = {580577.81,185201.63,0.00, cl};
Point{62} In Surface{1};//surface electrode
Point (63) = {580595.58,185198.98,0.00, cl};
Point{63} In Surface{1};//surface electrode
Point (64) = {580579.80,185201.25,0.00, cl};
Point{64} In Surface{1};//surface electrode
Point (65) = {580550.47,185207.77,0.00, cl};
Point{65} In Surface{1};//surface electrode
Point (66) = {580534.84,185211.08,0.00, cl};
Point{66} In Surface{1};//surface electrode
Point (67) = {580552.46,185207.36,0.00, cl};
Point{67} In Surface{1};//surface electrode
Point (68) = {580536.79,185210.64,0.00, cl};
Point{68} In Surface{1};//surface electrode
Point (69) = {580554.44,185206.88,0.00, cl};
Point{69} In Surface{1};//surface electrode
Point (70) = {580538.75,185210.21,0.00, cl};
Point{70} In Surface{1};//surface electrode
Point (71) = {580556.38,185206.51,0.00, cl};
Point{71} In Surface{1};//surface electrode
Point (72) = {580540.76,185209.88,0.00, cl};
Point{72} In Surface{1};//surface electrode
Point (73) = {580558.37,185206.13,0.00, cl};
Point{73} In Surface{1};//surface electrode
Point (74) = {580542.66,185209.40,0.00, cl};
Point{74} In Surface{1};//surface electrode
Point (75) = {580560.28,185205.67,0.00, cl};
Point{75} In Surface{1};//surface electrode
Point (76) = {580544.61,185208.98,0.00, cl};
Point{76} In Surface{1};//surface electrode
Point (77) = {580562.20,185205.20,0.00, cl};
Point{77} In Surface{1};//surface electrode
Point (78) = {580546.58,185208.46,0.00, cl};
Point{78} In Surface{1};//surface electrode
Point (79) = {580564.16,185204.76,0.00, cl};
Point{79} In Surface{1};//surface electrode
Point (80) = {580548.52,185208.15,0.00, cl};
Point{80} In Surface{1};//surface electrode
Point (81) = {580490.31,185284.30,0.00, cl};
Point{81} In Surface{1};//surface electrode
Point (82) = {580505.44,185279.19,0.00, cl};
Point{82} In Surface{1};//surface electrode
Point (83) = {580488.41,185284.91,0.00, cl};
Point{83} In Surface{1};//surface electrode
Point (84) = {580503.58,185279.87,0.00, cl};
Point{84} In Surface{1};//surface electrode
Point (85) = {580486.52,185285.56,0.00, cl};
Point{85} In Surface{1};//surface electrode
Point (86) = {580501.67,185280.45,0.00, cl};
Point{86} In Surface{1};//surface electrode
Point (87) = {580484.64,185286.18,0.00, cl};
Point{87} In Surface{1};//surface electrode
Point (88) = {580499.80,185281.11,0.00, cl};
Point{88} In Surface{1};//surface electrode
Point (89) = {580482.73,185286.80,0.00, cl};
Point{89} In Surface{1};//surface electrode
Point (90) = {580497.91,185281.74,0.00, cl};
Point{90} In Surface{1};//surface electrode
Point (91) = {580480.84,185287.43,0.00, cl};
Point{91} In Surface{1};//surface electrode
Point (92) = {580496.02,185282.35,0.00, cl};
Point{92} In Surface{1};//surface electrode
Point (93) = {580478.94,185288.08,0.00, cl};
Point{93} In Surface{1};//surface electrode
Point (94) = {580494.14,185283.09,0.00, cl};
Point{94} In Surface{1};//surface electrode
Point (95) = {580477.12,185288.77,0.00, cl};
Point{95} In Surface{1};//surface electrode
Point (96) = {580492.24,185283.73,0.00, cl};
Point{96} In Surface{1};//surface electrode
Point (97) = {580520.67,185274.10,0.00, cl};
Point{97} In Surface{1};//surface electrode
Point (98) = {580535.84,185268.96,0.00, cl};
Point{98} In Surface{1};//surface electrode
Point (99) = {580518.78,185274.78,0.00, cl};
Point{99} In Surface{1};//surface electrode
Point (100) = {580533.91,185269.55,0.00, cl};
Point{100} In Surface{1};//surface electrode
Point (101) = {580516.88,185275.38,0.00, cl};
Point{101} In Surface{1};//surface electrode
Point (102) = {580532.03,185270.29,0.00, cl};
Point{102} In Surface{1};//surface electrode
Point (103) = {580514.98,185276.06,0.00, cl};
Point{103} In Surface{1};//surface electrode
Point (104) = {580530.17,185270.94,0.00, cl};
Point{104} In Surface{1};//surface electrode
Point (105) = {580513.05,185276.67,0.00, cl};
Point{105} In Surface{1};//surface electrode
Point (106) = {580528.21,185271.49,0.00, cl};
Point{106} In Surface{1};//surface electrode
Point (107) = {580511.20,185277.35,0.00, cl};
Point{107} In Surface{1};//surface electrode
Point (108) = {580526.33,185272.12,0.00, cl};
Point{108} In Surface{1};//surface electrode
Point (109) = {580509.25,185277.91,0.00, cl};
Point{109} In Surface{1};//surface electrode
Point (110) = {580524.42,185272.71,0.00, cl};
Point{110} In Surface{1};//surface electrode
Point (111) = {580507.30,185278.52,0.00, cl};
Point{111} In Surface{1};//surface electrode
Point (112) = {580522.55,185273.40,0.00, cl};
Point{112} In Surface{1};//surface electrode
Point (113) = {580594.69,185249.46,0.00, cl};
Point{113} In Surface{1};//surface electrode
Point (114) = {580579.49,185254.38,0.00, cl};
Point{114} In Surface{1};//surface electrode
Point (115) = {580596.59,185248.80,0.00, cl};
Point{115} In Surface{1};//surface electrode
Point (116) = {580581.37,185253.74,0.00, cl};
Point{116} In Surface{1};//surface electrode
Point (117) = {580598.47,185248.09,0.00, cl};
Point{117} In Surface{1};//surface electrode
Point (118) = {580583.31,185253.20,0.00, cl};
Point{118} In Surface{1};//surface electrode
Point (119) = {580600.37,185247.53,0.00, cl};
Point{119} In Surface{1};//surface electrode
Point (120) = {580585.22,185252.57,0.00, cl};
Point{120} In Surface{1};//surface electrode
Point (121) = {580602.25,185246.82,0.00, cl};
Point{121} In Surface{1};//surface electrode
Point (122) = {580587.10,185251.96,0.00, cl};
Point{122} In Surface{1};//surface electrode
Point (123) = {580604.17,185246.25,0.00, cl};
Point{123} In Surface{1};//surface electrode
Point (124) = {580589.02,185251.33,0.00, cl};
Point{124} In Surface{1};//surface electrode
Point (125) = {580606.09,185245.62,0.00, cl};
Point{125} In Surface{1};//surface electrode
Point (126) = {580590.89,185250.69,0.00, cl};
Point{126} In Surface{1};//surface electrode
Point (127) = {580607.94,185244.99,0.00, cl};
Point{127} In Surface{1};//surface electrode
Point (128) = {580592.80,185250.10,0.00, cl};
Point{128} In Surface{1};//surface electrode
Point (129) = {580564.31,185259.56,0.00, cl};
Point{129} In Surface{1};//surface electrode
Point (130) = {580549.10,185264.57,0.00, cl};
Point{130} In Surface{1};//surface electrode
Point (131) = {580566.21,185258.91,0.00, cl};
Point{131} In Surface{1};//surface electrode
Point (132) = {580551.00,185263.94,0.00, cl};
Point{132} In Surface{1};//surface electrode
Point (133) = {580568.12,185258.33,0.00, cl};
Point{133} In Surface{1};//surface electrode
Point (134) = {580552.89,185263.27,0.00, cl};
Point{134} In Surface{1};//surface electrode
Point (135) = {580569.95,185257.59,0.00, cl};
Point{135} In Surface{1};//surface electrode
Point (136) = {580554.79,185262.63,0.00, cl};
Point{136} In Surface{1};//surface electrode
Point (137) = {580571.86,185256.98,0.00, cl};
Point{137} In Surface{1};//surface electrode
Point (138) = {580556.70,185262.05,0.00, cl};
Point{138} In Surface{1};//surface electrode
Point (139) = {580573.79,185256.31,0.00, cl};
Point{139} In Surface{1};//surface electrode
Point (140) = {580558.56,185261.33,0.00, cl};
Point{140} In Surface{1};//surface electrode
Point (141) = {580575.71,185255.66,0.00, cl};
Point{141} In Surface{1};//surface electrode
Point (142) = {580560.51,185260.77,0.00, cl};
Point{142} In Surface{1};//surface electrode
Point (143) = {580577.61,185255.06,0.00, cl};
Point{143} In Surface{1};//surface electrode
Point (144) = {580562.43,185260.26,0.00, cl};
Point{144} In Surface{1};//surface electrode
Point (145) = {580489.51,185229.55,0.00, cl};
Point{145} In Surface{1};//surface electrode
Point (146) = {580493.55,185244.96,0.00, cl};
Point{146} In Surface{1};//surface electrode
Point (147) = {580489.09,185227.59,0.00, cl};
Point{147} In Surface{1};//surface electrode
Point (148) = {580493.07,185243.05,0.00, cl};
Point{148} In Surface{1};//surface electrode
Point (149) = {580488.65,185225.66,0.00, cl};
Point{149} In Surface{1};//surface electrode
Point (150) = {580492.60,185241.10,0.00, cl};
Point{150} In Surface{1};//surface electrode
Point (151) = {580488.27,185223.68,0.00, cl};
Point{151} In Surface{1};//surface electrode
Point (152) = {580492.09,185239.18,0.00, cl};
Point{152} In Surface{1};//surface electrode
Point (153) = {580487.91,185221.71,0.00, cl};
Point{153} In Surface{1};//surface electrode
Point (154) = {580491.65,185237.24,0.00, cl};
Point{154} In Surface{1};//surface electrode
Point (155) = {580487.66,185219.80,0.00, cl};
Point{155} In Surface{1};//surface electrode
Point (156) = {580490.97,185235.24,0.00, cl};
Point{156} In Surface{1};//surface electrode
Point (157) = {580487.23,185218.11,0.00, cl};
Point{157} In Surface{1};//surface electrode
Point (158) = {580490.63,185233.42,0.00, cl};
Point{158} In Surface{1};//surface electrode
Point (159) = {580486.64,185216.18,0.00, cl};
Point{159} In Surface{1};//surface electrode
Point (160) = {580489.99,185231.47,0.00, cl};
Point{160} In Surface{1};//surface electrode
Point (161) = {580497.41,185260.43,0.00, cl};
Point{161} In Surface{1};//surface electrode
Point (162) = {580501.25,185275.90,0.00, cl};
Point{162} In Surface{1};//surface electrode
Point (163) = {580496.97,185258.50,0.00, cl};
Point{163} In Surface{1};//surface electrode
Point (164) = {580500.74,185273.95,0.00, cl};
Point{164} In Surface{1};//surface electrode
Point (165) = {580496.52,185256.57,0.00, cl};
Point{165} In Surface{1};//surface electrode
Point (166) = {580500.25,185272.01,0.00, cl};
Point{166} In Surface{1};//surface electrode
Point (167) = {580496.02,185254.63,0.00, cl};
Point{167} In Surface{1};//surface electrode
Point (168) = {580499.74,185270.11,0.00, cl};
Point{168} In Surface{1};//surface electrode
Point (169) = {580495.54,185252.70,0.00, cl};
Point{169} In Surface{1};//surface electrode
Point (170) = {580499.31,185268.17,0.00, cl};
Point{170} In Surface{1};//surface electrode
Point (171) = {580495.07,185250.77,0.00, cl};
Point{171} In Surface{1};//surface electrode
Point (172) = {580498.83,185266.23,0.00, cl};
Point{172} In Surface{1};//surface electrode
Point (173) = {580494.55,185248.83,0.00, cl};
Point{173} In Surface{1};//surface electrode
Point (174) = {580498.38,185264.29,0.00, cl};
Point{174} In Surface{1};//surface electrode
Point (175) = {580494.10,185246.89,0.00, cl};
Point{175} In Surface{1};//surface electrode
Point (176) = {580497.86,185262.40,0.00, cl};
Point{176} In Surface{1};//surface electrode
Point (177) = {580528.60,185216.63,0.00, cl};
Point{177} In Surface{1};//surface electrode
Point (178) = {580532.21,185232.07,0.00, cl};
Point{178} In Surface{1};//surface electrode
Point (179) = {580528.15,185214.67,0.00, cl};
Point{179} In Surface{1};//surface electrode
Point (180) = {580531.66,185230.17,0.00, cl};
Point{180} In Surface{1};//surface electrode
Point (181) = {580527.71,185212.71,0.00, cl};
Point{181} In Surface{1};//surface electrode
Point (182) = {580531.18,185228.26,0.00, cl};
Point{182} In Surface{1};//surface electrode
Point (183) = {580527.54,185210.71,0.00, cl};
Point{183} In Surface{1};//surface electrode
Point (184) = {580530.81,185226.29,0.00, cl};
Point{184} In Surface{1};//surface electrode
Point (185) = {580527.17,185208.92,0.00, cl};
Point{185} In Surface{1};//surface electrode
Point (186) = {580530.33,185224.33,0.00, cl};
Point{186} In Surface{1};//surface electrode
Point (187) = {580526.52,185206.98,0.00, cl};
Point{187} In Surface{1};//surface electrode
Point (188) = {580529.84,185222.40,0.00, cl};
Point{188} In Surface{1};//surface electrode
Point (189) = {580526.09,185205.04,0.00, cl};
Point{189} In Surface{1};//surface electrode
Point (190) = {580529.43,185220.46,0.00, cl};
Point{190} In Surface{1};//surface electrode
Point (191) = {580525.65,185203.09,0.00, cl};
Point{191} In Surface{1};//surface electrode
Point (192) = {580529.04,185218.53,0.00, cl};
Point{192} In Surface{1};//surface electrode
Point (193) = {580535.86,185247.57,0.00, cl};
Point{193} In Surface{1};//surface electrode
Point (194) = {580539.44,185263.08,0.00, cl};
Point{194} In Surface{1};//surface electrode
Point (195) = {580535.46,185245.62,0.00, cl};
Point{195} In Surface{1};//surface electrode
Point (196) = {580539.01,185261.14,0.00, cl};
Point{196} In Surface{1};//surface electrode
Point (197) = {580535.09,185243.66,0.00, cl};
Point{197} In Surface{1};//surface electrode
Point (198) = {580538.54,185259.21,0.00, cl};
Point{198} In Surface{1};//surface electrode
Point (199) = {580534.64,185241.72,0.00, cl};
Point{199} In Surface{1};//surface electrode
Point (200) = {580538.13,185257.25,0.00, cl};
Point{200} In Surface{1};//surface electrode
Point (201) = {580534.16,185239.78,0.00, cl};
Point{201} In Surface{1};//surface electrode
Point (202) = {580537.62,185255.34,0.00, cl};
Point{202} In Surface{1};//surface electrode
Point (203) = {580533.69,185237.86,0.00, cl};
Point{203} In Surface{1};//surface electrode
Point (204) = {580537.17,185253.38,0.00, cl};
Point{204} In Surface{1};//surface electrode
Point (205) = {580533.33,185235.91,0.00, cl};
Point{205} In Surface{1};//surface electrode
Point (206) = {580536.76,185251.42,0.00, cl};
Point{206} In Surface{1};//surface electrode
Point (207) = {580532.87,185233.98,0.00, cl};
Point{207} In Surface{1};//surface electrode
Point (208) = {580536.30,185249.53,0.00, cl};
Point{208} In Surface{1};//surface electrode
Point (209) = {580566.30,185206.39,0.00, cl};
Point{209} In Surface{1};//surface electrode
Point (210) = {580570.02,185221.88,0.00, cl};
Point{210} In Surface{1};//surface electrode
Point (211) = {580566.01,185204.43,0.00, cl};
Point{211} In Surface{1};//surface electrode
Point (212) = {580569.65,185219.87,0.00, cl};
Point{212} In Surface{1};//surface electrode
Point (213) = {580565.48,185202.57,0.00, cl};
Point{213} In Surface{1};//surface electrode
Point (214) = {580569.10,185217.94,0.00, cl};
Point{214} In Surface{1};//surface electrode
Point (215) = {580565.19,185200.58,0.00, cl};
Point{215} In Surface{1};//surface electrode
Point (216) = {580568.73,185215.99,0.00, cl};
Point{216} In Surface{1};//surface electrode
Point (217) = {580564.65,185198.81,0.00, cl};
Point{217} In Surface{1};//surface electrode
Point (218) = {580568.07,185214.10,0.00, cl};
Point{218} In Surface{1};//surface electrode
Point (219) = {580564.16,185196.75,0.00, cl};
Point{219} In Surface{1};//surface electrode
Point (220) = {580567.70,185212.17,0.00, cl};
Point{220} In Surface{1};//surface electrode
Point (221) = {580563.68,185194.83,0.00, cl};
Point{221} In Surface{1};//surface electrode
Point (222) = {580567.28,185210.24,0.00, cl};
Point{222} In Surface{1};//surface electrode
Point (223) = {580563.34,185193.05,0.00, cl};
Point{223} In Surface{1};//surface electrode
Point (224) = {580566.80,185208.31,0.00, cl};
Point{224} In Surface{1};//surface electrode
Point (225) = {580573.82,185237.27,0.00, cl};
Point{225} In Surface{1};//surface electrode
Point (226) = {580577.15,185252.70,0.00, cl};
Point{226} In Surface{1};//surface electrode
Point (227) = {580573.36,185235.34,0.00, cl};
Point{227} In Surface{1};//surface electrode
Point (228) = {580576.73,185250.79,0.00, cl};
Point{228} In Surface{1};//surface electrode
Point (229) = {580572.80,185233.43,0.00, cl};
Point{229} In Surface{1};//surface electrode
Point (230) = {580576.30,185248.85,0.00, cl};
Point{230} In Surface{1};//surface electrode
Point (231) = {580572.29,185231.54,0.00, cl};
Point{231} In Surface{1};//surface electrode
Point (232) = {580575.90,185246.92,0.00, cl};
Point{232} In Surface{1};//surface electrode
Point (233) = {580571.85,185229.61,0.00, cl};
Point{233} In Surface{1};//surface electrode
Point (234) = {580575.49,185244.99,0.00, cl};
Point{234} In Surface{1};//surface electrode
Point (235) = {580571.46,185227.65,0.00, cl};
Point{235} In Surface{1};//surface electrode
Point (236) = {580575.04,185243.06,0.00, cl};
Point{236} In Surface{1};//surface electrode
Point (237) = {580571.02,185225.74,0.00, cl};
Point{237} In Surface{1};//surface electrode
Point (238) = {580574.61,185241.11,0.00, cl};
Point{238} In Surface{1};//surface electrode
Point (239) = {580570.55,185223.79,0.00, cl};
Point{239} In Surface{1};//surface electrode
Point (240) = {580574.22,185239.20,0.00, cl};
Point{240} In Surface{1};//surface electrode
Point (241) = {580527.10,185212.90,0.00, cl};
Point{241} In Surface{1};//surface electrode
Point (242) = {580529.00,185212.37,0.00, cl};
Point{242} In Surface{1};//surface electrode
Point (243) = {580537.74,185268.44,0.00, cl};
Point{243} In Surface{1};//surface electrode
Point (244) = {580539.67,185267.78,0.00, cl};
Point{244} In Surface{1};//surface electrode
Point (245) = {580541.56,185267.17,0.00, cl};
Point{245} In Surface{1};//surface electrode
Point (246) = {580547.19,185265.17,0.00, cl};
Point{246} In Surface{1};//surface electrode
Point (247) = {580545.31,185265.81,0.00, cl};
Point{247} In Surface{1};//surface electrode
Point (248) = {580543.41,185266.43,0.00, cl};
Point{248} In Surface{1};//surface electrode
Point (249) = {580501.73,185277.82,0.00, cl};
Point{249} In Surface{1};//surface electrode
Point (250) = {580502.09,185279.75,0.00, cl};
Point{250} In Surface{1};//surface electrode
Point (251) = {580502.57,185281.68,0.00, cl};
Point{251} In Surface{1};//surface electrode
Point (252) = {580502.88,185283.67,0.00, cl};
Point{252} In Surface{1};//surface electrode
Point (253) = {580503.32,185285.63,0.00, cl};
Point{253} In Surface{1};//surface electrode
Point (254) = {580503.78,185287.55,0.00, cl};
Point{254} In Surface{1};//surface electrode
Point (255) = {580504.18,185289.50,0.00, cl};
Point{255} In Surface{1};//surface electrode
Point (256) = {580504.72,185291.32,0.00, cl};
Point{256} In Surface{1};//surface electrode
Point (257) = {580539.86,185265.05,0.00, cl};
Point{257} In Surface{1};//surface electrode
Point (258) = {580540.30,185266.99,0.00, cl};
Point{258} In Surface{1};//surface electrode
Point (259) = {580540.74,185268.91,0.00, cl};
Point{259} In Surface{1};//surface electrode
Point (260) = {580541.13,185270.89,0.00, cl};
Point{260} In Surface{1};//surface electrode
Point (261) = {580541.43,185272.87,0.00, cl};
Point{261} In Surface{1};//surface electrode
Point (262) = {580541.72,185274.80,0.00, cl};
Point{262} In Surface{1};//surface electrode
Point (263) = {580542.09,185276.66,0.00, cl};
Point{263} In Surface{1};//surface electrode
Point (264) = {580532.91,185211.56,0.00, cl};
Point{264} In Surface{1};//surface electrode
Point (265) = {580530.97,185211.99,0.00, cl};
Point{265} In Surface{1};//surface electrode
Point (266) = {580577.56,185254.68,0.00, cl};
Point{266} In Surface{1};//surface electrode
Point (267) = {580578.13,185256.58,0.00, cl};
Point{267} In Surface{1};//surface electrode
Point (268) = {580578.60,185258.53,0.00, cl};
Point{268} In Surface{1};//surface electrode
Point (269) = {580578.99,185260.51,0.00, cl};
Point{269} In Surface{1};//surface electrode
Point (270) = {580579.44,185262.44,0.00, cl};
Point{270} In Surface{1};//surface electrode
Point (271) = {580579.84,185264.39,0.00, cl};
Point{271} In Surface{1};//surface electrode
Point (272) = {580580.26,185266.30,0.00, cl};
Point{272} In Surface{1};//surface electrode
//End electrodes
