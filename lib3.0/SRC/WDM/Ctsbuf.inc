C
C     common to store time-series data buffer information
C
      INTEGER    MXID,    BUFLEN
      PARAMETER (MXID=300,BUFLEN=768)
C
      COMMON /CTSBUF/ CFILUN,CDSN,CTU,CTS,CTRANS,CQUAL,
     $                BFILUN,BDSN,BTU,BTS,BTRANS,BQUAL,BSDATE,
     $                BNVAL,BSREC,BNREC,BDATID,TSBUF,NUMID,FREREC
      INTEGER         CFILUN,CDSN,CTU,CTS,CTRANS,CQUAL,BFILUN(MXID),
     $                BDSN(MXID),BTU(MXID),BTS(MXID),BTRANS(MXID),
     $                BQUAL(MXID),BSDATE(6,MXID),BNVAL(MXID),
     $                BSREC(MXID),BNREC(MXID),BDATID(MXID),NUMID,FREREC
      REAL            TSBUF(BUFLEN,MXID)
