C $Header: /u/gcmpack/MITgcm/pkg/mdsio/mdsio_rd_rec_rs.F,v 1.1 2008/12/30 02:00:51 jmc Exp $
C $Name: checkpoint62r $

#include "MDSIO_OPTIONS.h"

C---+----1----+----2----+----3----+----4----+----5----+----6----+----7-|--+----|
CBOP 0
C !ROUTINE: MDS_RD_REC_RS

C !INTERFACE:
      SUBROUTINE MDS_RD_REC_RS(
     O                          arr,
     O                          r4Buf, r8Buf,
     I                          fPrec, dUnit, iRec, nArr, myThid )

C !DESCRIPTION:
C Read one reccord from already opened io-unit "dUnit", into RS array "arr"

C !USES:
      IMPLICIT NONE
#include "EEPARAMS.h"
#include "SIZE.h"
#include "PARAMS.h"

C !INPUT PARAMETERS:
C   fPrec  integer :: file precision
C   dUnit  integer :: 'Opened' I/O channel
C   iRec   integer :: record number to WRITE
C   nArr   integer :: dimension off array "arr"
C   myThid integer :: my Thread Id number
C !OUTPUT PARAMETERS:
C   arr     RS     :: vector array to read in
C   r4Buf  real*4  :: buffer array
C   r8Buf  real*8  :: buffer array
      INTEGER fPrec
      INTEGER dUnit
      INTEGER iRec
      INTEGER nArr
      INTEGER myThid
      _RS    arr(nArr)
      Real*4 r4Buf(nArr)
      Real*8 r8Buf(nArr)
CEOP

C !LOCAL VARIABLES:
      CHARACTER*(MAX_LEN_MBUF) msgBuf
      INTEGER k

C---+----1----+----2----+----3----+----4----+----5----+----6----+----7-|--+----|
      IF ( debugLevel.GT.debLevB ) THEN
        WRITE(msgBuf,'(A,I9.8,2x,I9.8)')
     &      ' MDS_RD_REC_RS: iRec,Dim = ', iRec, nArr
        CALL PRINT_MESSAGE( msgBuf, standardMessageUnit,
     &                      SQUEEZE_RIGHT , myThid )
      ENDIF

      IF ( fPrec.EQ.precFloat32 ) THEN
        READ( dUnit, rec=iRec ) r4Buf
#ifdef _BYTESWAPIO
        CALL MDS_BYTESWAPR4( nArr, r4Buf )
#endif
        DO k=1,nArr
          arr(k) = r4Buf(k)
        ENDDO
      ELSEIF ( fPrec.EQ.precFloat64 ) THEN
        READ( dUnit, rec=iRec ) r8Buf
#ifdef _BYTESWAPIO
        CALL MDS_BYTESWAPR8( nArr, r8Buf )
#endif
        DO k=1,nArr
          arr(k) = r8Buf(k)
        ENDDO
      ELSE
        WRITE(msgBuf,'(A,I9)')
     &        ' MDS_RD_REC_RS: illegal value for fPrec=',fPrec
        CALL PRINT_ERROR( msgBuf, myThid )
        STOP 'ABNORMAL END: S/R MDS_RD_REC_RS'
      ENDIF

      RETURN
      END