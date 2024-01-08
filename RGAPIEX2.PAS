PROGRAM MSGDisp; {RGAPI Example Program}
   {This program is designed to read the MBASES.DAT file, and display   }
   {all the message areas available.                                    }

USES CRT,        {TP's standard CRT unit                                }
     DOS,        {TP's standard DOS unit                                }
     RGAPI;      {Renegade BBS Dev Team's RGAPI unit                    }

VAR
   RenegadeDatIn: GeneralRecordType;
   SchemeDatIn: SchemeRec;
   MBasesDatIn: MessageAreaRecordType;
   FileErr: Byte;
   Rec: Integer;


BEGIN
   ClrScr;
   OpenRenegadeDat('',FileErr);
   IF FileErr <> 0 THEN Halt;
   ReadRenegadeDat(RenegadeDatIn);
   OpenSchemeDat(RenegadeDatIn.Datapath,FileErr);
   IF FileErr <> 0 THEN Halt;
   ReadSchemeDat(SchemeDatIn);
   OpenMBasesDat(RenegadeDatIn.Datapath,FileErr);
   IF FileErr <> 0 THEN Halt;
   FOR Rec := 0 TO FileSize(MBasesDat)-1 DO
    BEGIN
       ReadMBasesDat(MBasesDatIn,Rec);
       WriteColor(SchemeDatIn,MBasesDatIn.Name);
       Writeln;
    END;
   CloseMBasesDat;
   CloseSchemeDat;
   CloseRenegadeDat;
END.

