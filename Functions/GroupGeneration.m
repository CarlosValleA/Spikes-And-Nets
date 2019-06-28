function GroupGeneration(handles)
set(handles.GroupCC,'UserData',1)

a = get(handles.uitableCC,'Position'); 
b = get(gcf,'position');
ratio = a(3)/152;       
%set(handles.uitableCC,'ColumnWidth',{[200],[50]})


grupos = get(handles.uitableCC,'data');
file = grupos(:,1);
grupos = grupos(:,2);
a1 = cellstr({});
a2 = cellstr({});
a3 = cellstr({});
a4 = cellstr({});
a5 = cellstr({});
a6 = cellstr({});
a7 = cellstr({});
a8 = cellstr({});
a9 = cellstr({});
a10 = cellstr({});
a11= cellstr({});
a12 = cellstr({});
a13= cellstr({});
a14 = cellstr({});
a15= cellstr({});
a16= cellstr({});
a17= cellstr({});
a18= cellstr({});
a19= cellstr({});
a20= cellstr({});
a21= cellstr({});
a22= cellstr({});
a23= cellstr({});
a24= cellstr({});
a25= cellstr({});
a26= cellstr({});
a27= cellstr({});
a28= cellstr({});
a29= cellstr({});
a30= cellstr({});
a31= cellstr({});
a32= cellstr({});
a33= cellstr({});
a34 = cellstr({});
a35 = cellstr({});
a36 = cellstr({});
a37 = cellstr({});
a38 = cellstr({});
a39 = cellstr({});
a40 = cellstr({});
a41 = cellstr({});
a42 = cellstr({});
a43 = cellstr({});
a44 = cellstr({});
a45 = cellstr({});
a46 = cellstr({});
a47 = cellstr({});
a48 = cellstr({});
a49 = cellstr({});
a50 = cellstr({});
a51 = cellstr({});
a52 = cellstr({});
a53 = cellstr({});
a54 = cellstr({});
a55 = cellstr({});
a56 = cellstr({});
a57 = cellstr({});
a58 = cellstr({});
a59 = cellstr({});
a60 = cellstr({});
a61 = cellstr({});
a62 = cellstr({});
a63 = cellstr({});
a64 = cellstr({});
a65 = cellstr({});
a66 = cellstr({});
a67 = cellstr({});
a68 = cellstr({});
a69 = cellstr({});
a70 = cellstr({});
a71 = cellstr({});
a72 = cellstr({});
a73 = cellstr({});
a74 = cellstr({});
a75 = cellstr({});
a76 = cellstr({});
a77 = cellstr({});
a78 = cellstr({});
a79 = cellstr({});
a80 = cellstr({});
a81 = cellstr({});
a82 = cellstr({});
a83 = cellstr({});
a84 = cellstr({});
a85 = cellstr({});
a86 = cellstr({});
a87 =cellstr({});
a88 = cellstr({});
a89 = cellstr({});
a90 = cellstr({});
a91 = cellstr({});
a92 = cellstr({});
a93 = cellstr({});
a94 = cellstr({});
a95 = cellstr({});
a96 = cellstr({});
a97 = cellstr({});
a98 = cellstr({});
a99 = cellstr({});
a100 = cellstr({});
a101 = cellstr({});
a102 = cellstr({});
a103 = cellstr({});
a104 = cellstr({});
a105 = cellstr({});
a106 = cellstr({});
a107 = cellstr({});
a108 = cellstr({});
a109 = cellstr({});
a110 = cellstr({});
a111 = cellstr({});
a112 = cellstr({});






A = {1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 ...
    21 22 23 24 25 26 27 28 29 30 31 32 ...
    33 34 35 36 37 38 39 40 41 42 43 44 ...
    45 46 47 48 49 50 51 52 53 54 55 56 ...
    57 58 59 60 61 62 63 64 65 66 67 68 ...
    69 70 71 72 73 74 75 76 77 78 79 80 ...
    81 82 83 84 85 86 87 88 89 90 91 92 ...
    93 94 95 96 97 98 99 100 101 102 103 104 ...
    105 106 107 108 109 110 111 112}';


N= 1;
for i =1:length(grupos)
   
    for j =1:112
        if grupos{i}==j
            A{j,N+1} = file{i};
            N = N+1;
            
        end
    end
end

for i=2:N
    a1 = [a1; A{1,i}];
    a2 = [a2; A{2,i}];
    a3 = [a3; A{3,i}];
    a4 = [a4; A{4,i}];
    a5 = [a5; A{5,i}];
    a6 = [a6; A{6,i}];
    a7 = [a7; A{7,i}];
    a8 = [a8; A{8,i}];
    a9 = [a9; A{9,i}];
    a10 = [a10; A{10,i}];
    a11 = [a11; A{11,i}];
    a12 = [a12; A{12,i}];
    a13 = [a13; A{13,i}];
    a14 = [a14; A{14,i}];
    a15 = [a15; A{15,i}];
    a16 = [a16; A{16,i}];
    a17 = [a17; A{17,i}];
    a18 = [a18; A{18,i}];
    a19 = [a19; A{19,i}];
    a20 = [a20; A{20,i}];
    a21 = [a21; A{21,i}];
    a22 = [a22; A{22,i}];
    a23 = [a23; A{23,i}];
    a24 = [a24; A{24,i}];
    a25 = [a25; A{25,i}];
    a26 = [a26; A{26,i}];
    a27 = [a27; A{27,i}];
    a28 = [a28; A{28,i}];
    a29 = [a29; A{29,i}];
    a30 = [a30; A{30,i}];
    a31 = [a31; A{31,i}];
    a32 = [a32; A{32,i}];
    a33 = [a33 ; A{33,i}];
    a34 = [a34 ; A{34,i}];
    a35 = [a35 ; A{35,i}];
    a36 = [a36 ; A{36,i}];
    a37 = [a37 ; A{37,i}];
    a38 = [a38 ; A{38,i}];
    a39 = [a39 ; A{39,i}];
    a40 = [a40 ; A{40,i}];
    a41 = [a41 ; A{41,i}];
    a42 = [a42 ; A{42,i}];
    a43 = [a43 ; A{43,i}];
    a44 = [a44 ; A{44,i}];
    a45 = [a45 ; A{45,i}];
    a46 = [a46 ; A{46,i}];
    a47 = [a47 ; A{47,i}];
    a48 = [a48 ; A{48,i}];
    a49 = [a49 ; A{49,i}];
    a50 = [a50 ; A{50,i}];
    a51 = [a51 ; A{51,i}];
    a52 = [a52 ; A{52,i}];
    a53 = [a53 ; A{53,i}];
    a54 = [a54 ; A{54,i}];
    a55 = [a55 ; A{55,i}];
    a56 = [a56 ; A{56,i}];
    a57 = [a57 ; A{57,i}];
    a58 = [a58 ; A{58,i}];
    a59 = [a59 ; A{59,i}];
    a60 = [a60 ; A{60,i}];
    a61 = [a61 ; A{61,i}];
    a62 = [a62 ; A{62,i}];
    a63 = [a63 ; A{63,i}];
    a64 = [a64 ; A{64,i}];
    a65 = [a65 ; A{65,i}];
    a66 = [a66 ; A{66,i}];
    a67 = [a67 ; A{67,i}];
    a68 = [a68 ; A{68,i}];
    a69 = [a69 ; A{69,i}];
    a70 = [a70 ; A{70,i}];
    a71 = [a71 ; A{71,i}];
    a72 = [a72 ; A{72,i}];
    a73 = [a73 ; A{73,i}];
    a74 = [a74 ; A{74,i}];
    a75 = [a75 ; A{75,i}];
    a76 = [a76 ; A{76,i}];
    a77 = [a77 ; A{77,i}];
    a78 = [a78 ; A{78,i}];
    a79 = [a79 ; A{79,i}];
    a80 = [a80 ; A{80,i}];
    a81 = [a81 ; A{81,i}];
    a82 = [a82 ; A{82,i}];
    a83 = [a83 ; A{83,i}];
    a84 = [a84 ; A{84,i}];
    a85 = [a85 ; A{85,i}];
    a86 = [a86 ; A{86,i}];
    a87 = [a87 ; A{87,i}];
    a88 = [a88 ; A{88,i}];
    a89 = [a89 ; A{89,i}];
    a90 = [a90 ; A{90,i}];
    a91 = [a91 ; A{91,i}];
    a92 = [a92 ; A{92,i}];
    a93 = [a93 ; A{93,i}];
    a94 = [a94 ; A{94,i}];
    a95 = [a95 ; A{95,i}];
    a96 = [a96 ; A{96,i}];
    a97 = [a97 ; A{97,i}];
    a98 = [a98 ; A{98,i}];
    a99 = [a99 ; A{99,i}];
    a100 = [a100 ; A{100,i}];
    a101 = [a101 ; A{101,i}];
    a102 = [a102 ; A{102,i}];
    a103 = [a103 ; A{103,i}];
    a104 = [a104 ; A{104,i}];
    a105 = [a105 ; A{105,i}];
    a106 = [a106 ; A{106,i}];
    a107 = [a107 ; A{107,i}];
    a108 = [a108 ; A{108,i}];
    a109 = [a109 ; A{109,i}];
    a110 = [a110 ; A{110,i}];
    a111 = [a111 ; A{111,i}];
    a112 = [a112 ; A{112,i}];

    
    
    
end

set(handles.GrupoCC1,'string',a1)
set(handles.GrupoCC2,'string',a2)
set(handles.GrupoCC3,'string',a3)
set(handles.GrupoCC4,'string',a4)
set(handles.GrupoCC5,'string',a5)
set(handles.GrupoCC6,'string',a6)
set(handles.GrupoCC7,'string',a7)
set(handles.GrupoCC8,'string',a8)
set(handles.GrupoCC9,'string',a9)
set(handles.GrupoCC10,'string',a10)
set(handles.GrupoCC11,'string',a11)
set(handles.GrupoCC12,'string',a12)
set(handles.GrupoCC13,'string',a13)
set(handles.GrupoCC14,'string',a14)
set(handles.GrupoCC15,'string',a15)
set(handles.GrupoCC16,'string',a16)
set(handles.GrupoCC17,'string',a17)
set(handles.GrupoCC18,'string',a18)
set(handles.GrupoCC19,'string',a19)
set(handles.GrupoCC20,'string',a20)
set(handles.GrupoCC21,'string',a21)
set(handles.GrupoCC22,'string',a22)
set(handles.GrupoCC23,'string',a23)
set(handles.GrupoCC24,'string',a24)
set(handles.GrupoCC25,'string',a25)
set(handles.GrupoCC26,'string',a26)
set(handles.GrupoCC27,'string',a27)
set(handles.GrupoCC28,'string',a28)
set(handles.GrupoCC29,'string',a29)
set(handles.GrupoCC30,'string',a30)
set(handles.GrupoCC31,'string',a31)
set(handles.GrupoCC32,'string',a32)
set(handles.GrupoCC33,'string',a33)
set(handles.GrupoCC34,'string',a34)
set(handles.GrupoCC35,'string',a35)
set(handles.GrupoCC36,'string',a36)
set(handles.GrupoCC37,'string',a37)
set(handles.GrupoCC38,'string',a38)
set(handles.GrupoCC39,'string',a39)
set(handles.GrupoCC40,'string',a40)
set(handles.GrupoCC41,'string',a41)
set(handles.GrupoCC42,'string',a42)
set(handles.GrupoCC43,'string',a43)
set(handles.GrupoCC44,'string',a44)
set(handles.GrupoCC45,'string',a45)
set(handles.GrupoCC46,'string',a46)
set(handles.GrupoCC47,'string',a47)
set(handles.GrupoCC48,'string',a48)
set(handles.GrupoCC49,'string',a49)
set(handles.GrupoCC50,'string',a50)
set(handles.GrupoCC51,'string',a51)
set(handles.GrupoCC52,'string',a52)
set(handles.GrupoCC53,'string',a53)
set(handles.GrupoCC54,'string',a54)
set(handles.GrupoCC55,'string',a55)
set(handles.GrupoCC56,'string',a56)
set(handles.GrupoCC57,'string',a57)
set(handles.GrupoCC58,'string',a58)
set(handles.GrupoCC59,'string',a59)
set(handles.GrupoCC60,'string',a60)
set(handles.GrupoCC61,'string',a61)
set(handles.GrupoCC62,'string',a62)
set(handles.GrupoCC63,'string',a63)
set(handles.GrupoCC64,'string',a64)
set(handles.GrupoCC65,'string',a65)
set(handles.GrupoCC66,'string',a66)
set(handles.GrupoCC67,'string',a67)
set(handles.GrupoCC68,'string',a68)
set(handles.GrupoCC69,'string',a69)
set(handles.GrupoCC70,'string',a70)
set(handles.GrupoCC71,'string',a71)
set(handles.GrupoCC72,'string',a72)
set(handles.GrupoCC73,'string',a73)
set(handles.GrupoCC74,'string',a74)
set(handles.GrupoCC75,'string',a75)
set(handles.GrupoCC76,'string',a76)
set(handles.GrupoCC77,'string',a77)
set(handles.GrupoCC78,'string',a78)
set(handles.GrupoCC79,'string',a79)
set(handles.GrupoCC80,'string',a80)
set(handles.GrupoCC81,'string',a81)
set(handles.GrupoCC82,'string',a82)
set(handles.GrupoCC83,'string',a83)
set(handles.GrupoCC84,'string',a84)
set(handles.GrupoCC85,'string',a85)
set(handles.GrupoCC86,'string',a86)
set(handles.GrupoCC87,'string',a87)
set(handles.GrupoCC88,'string',a88)
set(handles.GrupoCC89,'string',a89)
set(handles.GrupoCC90,'string',a90)
set(handles.GrupoCC91,'string',a91)
set(handles.GrupoCC92,'string',a92)
set(handles.GrupoCC93,'string',a93)
set(handles.GrupoCC94,'string',a94)
set(handles.GrupoCC95,'string',a95)
set(handles.GrupoCC96,'string',a96)
set(handles.GrupoCC97,'string',a97)
set(handles.GrupoCC98,'string',a98)
set(handles.GrupoCC99,'string',a99)
set(handles.GrupoCC100,'string',a100)
set(handles.GrupoCC101,'string',a101)
set(handles.GrupoCC102,'string',a102)
set(handles.GrupoCC103,'string',a103)
set(handles.GrupoCC104,'string',a104)
set(handles.GrupoCC105,'string',a105)
set(handles.GrupoCC106,'string',a106)
set(handles.GrupoCC107,'string',a107)
set(handles.GrupoCC108,'string',a108)
set(handles.GrupoCC109,'string',a109)
set(handles.GrupoCC110,'string',a110)
set(handles.GrupoCC111,'string',a111)
set(handles.GrupoCC112,'string',a112)

end