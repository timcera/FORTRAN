      FUNCTION VEL(QQ,AA)
C=======================================================================
C     ROUTINE TO COMPUTE VELOCITY GIVEN FLOW AND AREA.
C=======================================================================
      IF(AA.GT.0.0001) THEN
                       VEL = QQ/AA
                       ELSE
                       VEL = 0.0
                       ENDIF
      IF(VEL.LT.0.0)   VEL = 0.0
      RETURN
      END
