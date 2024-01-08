PROGRAM BBSInfo; {RGAPI Example Program}
   {This program is designed to read the RENEGADE.DAT file and display  }
   {the system information outlined in that file.                       }

USES CRT,        {TP's standard CRT unit                                }
     DOS,        {TP's standard DOS unit                                }
     RGAPI;      {Renegade BBS Dev Team's RGAPI unit                    }

VAR
   RenegadeDatIn: GeneralRecordType;
   FileErr: Byte;


BEGIN

   ClrScr;
   OpenRenegadeDat('',FileErr);
   ReadRenegadeDat(RenegadeDatIn);
   Writeln('System Name               : ',RenegadeDatIn.BBSName);
   Writeln('System Operator           : ',RenegadeDatIn.SysopName);
   CloseRenegadeDat;
END.

