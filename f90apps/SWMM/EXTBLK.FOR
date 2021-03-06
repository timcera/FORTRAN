C======================================================================= 
C     BLOCK DATA PROGRAM FOR EXTRAN 
C======================================================================= 
CIM  MODIFIED 1/96 BY CDM
CIM  ELIMINATE RECTANGULAR TYPE
CIM  ADD HORIZONTAL ELLIPSE, VERTICAL ELLIPSE, AND ARCH
CIM  INTERNAL NUMBERING SYSTEM
CIM   NKLASS 1 = CIRCULAR
CIM   NKLASS 2 = HORSESHOE
CIM   NKLASS 3 = EGGSHAPED
CIM   NKLASS 4 = BASKETHANDLE
CIM   NKLASS 5 = HORIZONTAL ELLIPSE
CIM   NKLASS 6 = VERTICAL ELLIPSE
CIM   NKLASS 7 = ARCH PIPE SECTION 
      BLOCK DATA EXTBLK
      INCLUDE 'TAPES.INC'
      INCLUDE 'BD.INC'
      INCLUDE 'JUNC.INC'
CIM   
      INCLUDE 'SHAPE.INC'      
      DATA IND/' ','*'/
C======================================================================= 
C     NORMALIZED CROSS-SECTIONAL AREA 
C======================================================================= 
      DATA ANORM/ 
CIM   CIRCULAR      
     1 .0000,.0134,.0374,.0680,.1033,.1423,.1845,.2292,.2759,.3242,
     1 .3736,.4237,.4745,.5255,.5763,.6264,.6758,.7241,.7708,.8154, 
     1 .8576,.8967,.9320,.9626,.9866,1.000, 
CIM   HORSESHOE     
     2 .0000,.0181,.0508,.0908,.1326,.1757,.2201,.2655,.3118,.3587,
     2 .4064,.4542,.5023,.5506,.5987,.6462,.6931,.7387,.7829,.8253, 
     2 .8652,.9022,.9356,.9645,.9873,1.000, 
CIM   EGGSHAPED     
     3 .0000,.0150,.0400,.0550,.0850,.1200,.1555,.1900,.2250,.2750,
     3 .3200,.3700,.4200,.4700,.5150,.5700,.6200,.6800,.7300,.7800, 
     3 .8350,.8850,.9250,.9550,.9800,1.000, 
CIM  BASKETHANDLE     
     4 .0000,.0173,.0457,.0828,.1271,.1765,.2270,.2775,.3280,.3780,
     4 .4270,.4765,.5260,.5740,.6220,.6690,.7160,.7610,.8030,.8390, 
     4 .8770,.9110,.9410,.9680,.9880,1.000,
CIM  Horizontal Ellipse
     5 .0000,.0150,.0400,.0650,.0950,.1300,.1650,.2050,.2500,.3000,
     5 .3550,.4150,.4800,.5200,.5850,.6450,.7000,.7500,.7950,.8350,
     5 .8700,.9050,.9350,.9600,.9850,1.000,
CIM  Vertical Ellipse
     6 .0000,.0100,.0400,.0700,.1000,.1400,.1850,.2300,.2800,.3300,
     6 .3800,.4300,.4800,.5200,.5700,.6200,.6700,.7200,.7700,.8150,
     6 .8600,.9000,.9300,.9600,.9900,1.000,     
CIM  Arch Pipe
     7 .0000,.0200,.0600,.1000,.1400,.1900,.2400,.2900,.3400,.3900,
     7 .4400,.4900,.5400,.5900,.6400,.6900,.7350,.7800,.8200,.8600,
     7 .8950,.9300,.9600,.9850,.9950,1.000/
C======================================================================= 
C     NORMALIZED HYDRAULIC RADIUS                               
C======================================================================= 
      DATA HRNORM/ 
CIM CIRCULAR      
     1 .0100,.1048,.2052,.3016,.3944,.4824,.5664,.6456,.7204,.7912,
     1 .8568,.9176,.9736,1.024,1.070,1.110,1.144,1.174,1.194,1.210, 
     1 1.217,1.215,1.203,1.178,1.132,1.000,                         
CIM  HORSESHOE     
     2 .0100,.1040,.2065,.3243,.4322,.5284,.6147,.6927,.7636,.8268, 
     2 .8873,.9417,.9905,1.036,1.077,1.113,1.143,1.169,1.189,1.202, 
     2 1.208,1.206,1.195,1.170,1.126,1.000,                         
CIM   EGGSHAPED     
     3 .0100,.0970,.2160,.3020,.3860,.4650,.5360,.6110,.6760,.7350, 
     3 .7910,.8540,.9040,.9410,1.008,1.045,1.076,1.115,1.146,1.162, 
     3 1.186,1.193,1.186,1.162,1.107,1.000,                         
CIM  BASKETHANDLE     
     4 .0100,.0952,.1890,.2730,.3690,.4630,.5600,.6530,.7430,.8220, 
     4 .8830,.9490,.9990,1.055,1.095,1.141,1.161,1.188,1.206,1.206, 
     4 1.206,1.205,1.196,1.168,1.127,1.000,                         
CIM  Horizontal Ellipse
     5 .0100,.0764,.1726,.2389,.3274,.4191,.5120,.5983,.6757,.7630,
     5 .8326,.9114,.9702,1.030,1.091,1.146,1.185,1.225,1.257,1.274,
     5 1.290,1.282,1.274,1.257,1.185,1.000,
CIM  Vertical Ellipse
     6 .0100,.1250,.2436,.3536,.4474,.5484,.6366,.7155,.7768,.8396,
     6 .8969,.9480,.9925,1.023,1.053,1.084,1.107,1.130,1.154,1.170,
     6 1.177,1.177,1.170,1.162,1.122,1.000,
CIM  Arch Pipe
     7 .0100,.0983,.1965,.2948,.3940,.4962,.5911,.6796,.7615,.8364,
     7 .9044,.9640,1.018,1.065,1.106,1.142,1.170,1.192,1.208,1.217,
     7 1.220,1.213,1.196,1.168,1.112,1.000/
C======================================================================= 
C     NORMALIZED SURFACE WIDTH 
CIM  QUESTION OF THE DAY, WHY DOES WIDTH FOR DEPTH = 0 AND DEPTH = DEEP
CIM  NOT EQUAL ZERO??
C======================================================================= 
      DATA TWNORM/
CIM   CIRCULAR    
     1 .3919,.3919,.5426,.6499,.7332,.8000,.8542,.8980,.9330,.9600, 
     1 .9798,.9928,.9992,.9992,.9928,.9798,.9600,.9330,.8980,.8542, 
     1 .8000,.7332,.6499,.5426,.3919,.3919, 
CIM  HORSESHOE     
     2 .5878,.5878,.8772,.8900,.9028,.9156,.9284,.9412,.9540,.9668, 
     2 .9798,.9928,.9992,.9992,.9928,.9798,.9600,.9330,.8980,.8542, 
     2 .8000,.7332,.6499,.5426,.3919,.3919, 
CIM  EGGSHAPED     
     3 .2980,.2980,.4330,.5080,.5820,.6420,.6960,.7460,.7910,.8360, 
     3 .8660,.8960,.9260,.9560,.9700,.9850,1.000,.9850,.9700,.9400,
     3 .8960,.8360,.7640,.6420,.3100,.3100,
CIM  BASKETHANDLE     
     4 .4900,.4900,.6670,.8200,.9300,1.000,1.000,1.000,.9970,.9940,
     4 .9880,.9820,.9670,.9480,.9280,.9040,.8740,.8420,.7980,.7500, 
     4 .6970,.6370,.5670,.4670,.3420,.3420,
CIM  Horizontal Ellipse
     5 .3919,.3919,.5426,.6499,.7332,.8000,.8542,.8980,.9330,.9600,
     5 .9798,.9928,.9992,.9992,.9928,.9798,.9600,.9330,.8980,.8542,
     5 .8000,.7332,.6499,.5426,.3919,.3919,
CIM  Vertical Ellipse
     6 .3919,.3919,.5426,.6499,.7332,.8000,.8542,.8980,.9330,.9600,
     6 .9798,.9928,.9992,.9992,.9928,.9798,.9600,.9330,.8980,.8542,
     6 .8000,.7332,.6499,.5426,.3919,.3919,
CIM  Arch Pipe
     7 .6272,.6272,.8521,.9243,.9645,.9846,.9964,.9988,.9917,.9811,
     7 .9680,.9515,.9314,.9101,.8864,.8592,.8284,.7917,.7527,.7065,
     7 .6544,.5953,.5231,.4355,.3195,.3195/
CIMCIM    standard ellipses block data
CIM    MINOR  axis (inches)
      DATA EMINOR /14,19,22,24,27,29,32,34,38,43,48,53,58,63,68,72,77,
     .82,87,92,97,106,116/
CIM    major axis (inches)
      DATA EMAJOR /23,30,34,38,42,45,49,53,60,68,76,83,91,98,106,113,
     .121,128,136,143,151,166,180/
CIM    area (sq.ft.)
      DATA EAREA /1.80,3.30,4.10,5.10,6.30,7.40,8.80,10.20,12.90,16.60,
     .20.50,24.80,29.50,34.60,40.10,46.10,52.40,59.20,66.40,74.00,
     .82.00,99.20,118.60/
CIM    hydraulic radius (ft)
      DATA ERADIUS/0.367,0.490,0.546,0.613,0.686,0.736,0.812,0.875,
     .0.969,1.106,1.229,1.352,1.475,1.598,1.721,1.845,1.967,2.091,
     .2.215,2.340,2.461,2.707,2.968/
cim  Standard Arch Pipe sizes
cim  Minor Axis (inches)
      DATA  AMINOR /11,13.5,15.5,18,22.5,26.625,31.3125,36,40,45,54,62,
     .72,77.5,87.125,96.875,106.5,13,15,18,20,24,29,33,38,43,47,52,57,
     .31,31,41,46,51,55,59,63,67,71,75,79,83,87,91,55,57,59,61,63,65,
     .67,69,71,73,75,77,79,81,83,85,87,89,91,93,95,97,100,101,103,105,
     .107,109,111,113,115,118,119,121,112,114,116,118,120,122,124,126,
     .128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158/
CIM  Major Axis (inches)
      DATA AMAJOR /18,22,26,28.5,36.25,43.75,51.125,58.5,65,73,88,102,
     .115,122,138,154,168.75,17,21,24,28,35,42,49,57,64,71,77,83,40,
     .46,53,60,66,73,81,87,95,103,112,117,128,137,142,73,76,81,84,87,
     .92,95,98,103,106,112,114,117,123,128,131,137,139,142,148,150,152,
     .154,161,167,169,171,178,184,186,188,190,197,199,159,162,168,170,
     .173,179,184,187,190,195,198,204,206,209,215,217,223,225,231,234,
     .236,239,245,247/
CIM  Area SQUARE FEET 
      DATA AAREA /1.1,1.65,2.2,2.8,4.4,6.4,8.8,11.4,14.3,17.7,25.6,34.6,
     .44.5,51.7,66,81.8,99.1,1.1,1.6,2.2,2.9,4.5,6.5,8.9,11.6,14.7,18.1,
     .21.9,26,7,9.4,12.3,15.6,19.3,23.2,27.4,32.1,37,42.4,48,54.2,60.5,
     .67.4,74.5,22,24,26,28,31,33,35,38,40,43,46,49,52,55,58,61,64,67,
     .71,74,78,81,85,89,93,97,101,105,109,113,118,122,126,131,97,102,
     .105,109,114,118,123,127,132,137,142,146,151,157,161,167,172,177,
     .182,188,194,200,205,211/
CIM  Hydraulic Radius FEET
      DATA ARADIUS /0.25,0.3,0.36,0.45,0.56,0.68,0.8,0.9,1.01,1.13,1.35,
     .1.57,1.77,1.92,2.17,2.42,2.65,0.324,0.374,0.449,0.499,0.598,0.723,
     .0.823,0.947,1.072,1.171,1.296,1.421,0.773,0.773,1.022,1.147,1.271,
     .1.371,1.471,1.570,1.670,1.770,1.869,1.969,2.069,2.168,2.268,1.371,
     .1.421,1.471,1.520,1.570,1.620,1.670,1.720,1.770,1.820,1.869,1.919,
     .1.969,2.019,2.069,2.119,2.168,2.218,2.268,2.318,2.368,2.418,2.493,
     .2.517,2.567,2.617,2.667,2.717,2.767,2.817,2.866,2.941,2.966,3.016,
     .2.792,2.841,2.891,2.941,2.991,3.041,3.091,3.141,3.190,3.240,3.290,
     .3.340,3.390,3.440,3.490,3.539,3.589,3.639,3.689,3.739,3.789,3.838,
     .3.888,3.938/
      END
