CIM PP 4/1/95 change dimensions from 3 to MXPRATE
      COMMON/PUMP/PRATE(NEP,MAXPRA),VRATE(NEP,MAXPRA),VWELL(NEE),
     1            PON(NEP),POFF(NEP),VWBEG(NEP),JPFUL(NEP),IPTYP(NEP),
     2            LPUMP(NEP),IPOPR(MAXPRA,NEP),NPUMP,MPOUT
CIM PP 4/1/95 additional common for pump
      COMMON/PUMP2/ IPRATE,NPRATE(NEP)
CIM PPP 6/19/99 New pump type 5
      COMMON/PUMP5/ PONDELAY(NEP),TIMEON(MAXPRA,NEP)
C  BAC  START WWWWWWWWW
      COMMON/WEIR/YTOP(NEW),YCREST(NEW),WLEN(NEW),COEF(NEW),COEFS(NEW),
     1            LWEIR(NEW),KWEIR(NEW),NWEIR,ISUBEQ(NEW),ENDCON(NEW),
     2            THETAV(NEW),COEF2(NEW),IWRPRT(NEW)
C  BAC END WWWWWWW
