UNIT RGApi;

INTERFACE

USES CRT,       {Turbo Pascal's standard CRT unit                       }
     DOS;       {Turbo Pascal's standard DOS unit                       }

{$I RECORDS.INC}

{*** UNIX TIME CONVERSIONS *********************************************}

FUNCTION LZero(W: Word) : String;
FUNCTION GetTimeZone : ShortInt;
FUNCTION IsLeapYear(Source : Word) : Boolean;
FUNCTION Norm2Unix(Y, M, D, H, Min, S : Word) : LongInt;
PROCEDURE Unix2Norm(Date : LongInt; Var Y, M, D, H, Min, S : Word);
FUNCTION TodayInUnix : LongInt;

{*** RENEGADE COLOR CODE HANDLING **************************************}

PROCEDURE WriteColor(VAR SchemeDatIn: SchemeRec;
                     VAR InStr);
FUNCTION StripColor(VAR InStr): String;

{*** RENEGADE.DAT ******************************************************}

PROCEDURE OpenRenegadeDat(Path: String;
                          VAR Err: Byte);
PROCEDURE ReadRenegadeDat(VAR RenegadeDatIn: GeneralRecordType);
PROCEDURE WriteRenegadeDat(VAR RenegadeDatIn: GeneralRecordType);
PROCEDURE CloseRenegadeDat;

{*** NODE.DAT **********************************************************}

PROCEDURE OpenNodeDat(Path: String;
                         VAR Err: Byte);
PROCEDURE ReadNodeDat(VAR NodeDatIn: LineRec);
PROCEDURE WriteNodeDat(VAR NodeDatIn: LineRec);
PROCEDURE CloseNodeDat;

{*** CONVFRENC.DAT *****************************************************}

PROCEDURE OpenConferencDat(Path: String;
                           VAR Err: Byte);
PROCEDURE ReadConferencDat(VAR ConferencDatIn: ConferenceRecordType);
PROCEDURE WriteConferencDat(VAR ConferencDatIn: ConferenceRecordType);
PROCEDURE CloseConferencDat;

{*** SCHEME.DAT ********************************************************}

PROCEDURE OpenSchemeDat(Path: String;
                        VAR Err: Byte);
PROCEDURE ReadSchemeDat(VAR SchemeDatIn: SchemeRec);
PROCEDURE WriteSchemeDat(VAR SchemeDatIn: SchemeRec);
PROCEDURE CloseSchemeDat;

{*** MBASES.DAT ********************************************************}

PROCEDURE OpenMBasesDat(Path: String;
                        VAR Err: Byte);
PROCEDURE ReadMBasesDat(VAR MBasesDatIn: MessageAreaRecordType;
                        Rec: Integer);
PROCEDURE WriteMBasesDat(VAR MBasesDatIn: MessageAreaRecordType;
                         Rec: Integer);
PROCEDURE CloseMBasesDat;

{*** *.HDR *************************************************************}

PROCEDURE OpenHdr(FileName: String;
                  Path: String;
                  VAR Err: Byte);
PROCEDURE ReadHdr(VAR HdrIn: MHeaderRec;
                  Rec: Integer);
PROCEDURE WriteHdr(VAR HdrIn: MHeaderRec;
                   Rec: Integer);
PROCEDURE CloseHdr;

{*** *.DAT *************************************************************}

PROCEDURE OpenDat(FileName: String;
                  Path: String;
                  VAR Err: Byte);
PROCEDURE CloseDat;

{*** USERS.DAT *********************************************************}

PROCEDURE OpenUsersDat(Path: String;
                       VAR Err: Byte);
PROCEDURE ReadUsersDat(VAR UsersDatIn: UserRecordType;
                       Rec: Integer);
PROCEDURE WriteUsersDat(VAR UsersDatIn: UserRecordType;
                        Rec: Integer);
PROCEDURE CloseUsersDat;

{*** USERS.IDX *********************************************************}

PROCEDURE OpenUsersIdx(Path: String; var err : boolean);

PROCEDURE ReadFromUsersIdx(VAR UsersIdxIn: UserIdxRec; Rec: Integer);

PROCEDURE WriteToUsersIdx(VAR UsersIdxIn: UserIdxRec; Rec: Integer);

PROCEDURE CloseUsersIdx;

{*** HISTORY.DAT *******************************************************}

PROCEDURE OpenHistoryDat(Path: String;
                         VAR Err: Byte);
PROCEDURE ReadHistoryDat(VAR HistoryDatIn: HistoryRecordType;
                         Rec: Integer);
PROCEDURE WriteHistoryDat(VAR HistoryDatIn: HistoryRecordType;
                          Rec: Integer);
PROCEDURE CloseHistoryDat;

{*** VOTING.DAT ********************************************************}

PROCEDURE OpenVotingDat(Path: String;
                        VAR Err: Byte);
PROCEDURE ReadVotingDat(VAR VotingDatIn: VotingRecordType;
                        Rec: Integer);
PROCEDURE WriteVotingDat(VAR VotingDatIn: VotingRecordType;
                         Rec: Integer);
PROCEDURE CloseVotingDat;

{*** FBASES.DAT ********************************************************}

PROCEDURE OpenFBasesDat(Path: String;
                        VAR Err: Byte);
PROCEDURE ReadFBasesDat(VAR FBasesDatIn: FileAreaRecordType;
                        Rec: Integer);
PROCEDURE WriteFBasesDat(VAR FBasesDatIn: FileAreaRecordType;
                         Rec: Integer);
PROCEDURE CloseFBasesDat;

{*** *.DIR *************************************************************}

PROCEDURE OpenDir(FileName: String;
                  Path: String;
                  VAR Err: Byte);
PROCEDURE ReadDir(VAR DirIn: FileInfoRecordType;
                  Rec: Integer);
PROCEDURE WriteDir(VAR DirIn: FileInfoRecordType;
                   Rec: Integer);
PROCEDURE CloseDir;

{*** FILE DATE CONVERSION FROM STRING FORMAT ***************************}

PROCEDURE FileDate(S: String;
                   VAR Y: Word;
                   VAR M: Word;
                   VAR D: Word);


{*** LASTON.DAT ********************************************************}

PROCEDURE OpenLastOnDat(Path: String;
                        VAR Err: Byte);
PROCEDURE ReadLastOnDat(VAR LastOnDatIn: LastCallerRec;
                        Rec: Integer);
PROCEDURE WriteLastOnDat(VAR LastOnDatIn: LastCallerRec;
                         Rec: Integer);
PROCEDURE CloseLastOnDat;

{*** EVENTS.DAT ********************************************************}

PROCEDURE OpenEventsDat(Path: String;
                        VAR Err: Byte);
PROCEDURE ReadEventsDat(VAR EventsDatIn: EventRecordType;
                        Rec: Integer);
PROCEDURE WriteEventsDat(VAR EventsDatIn: EventRecordType;
                         Rec: Integer);
PROCEDURE CloseEventsDat;

{*** PROTOCOL.DAT ******************************************************}

PROCEDURE OpenProtocolDat(Path: String;
                          VAR Err: Byte);
PROCEDURE ReadProtocolDat(VAR ProtocolDatIn: ProtocolRecordType;
                          Rec: Integer);
PROCEDURE WriteProtocolDat(VAR ProtocolDatIn: ProtocolRecordType;
                           Rec: Integer);
PROCEDURE CloseProtocolDat;

{*** MULTNODE.DAT ******************************************************}

PROCEDURE OpenMultNodeDat(Path: String;
                          VAR Err: Byte);
PROCEDURE ReadMultNodeDat(VAR MultNodeDatIn: NodeRecordType;
                          Rec: Integer);
PROCEDURE WriteMultNodeDat(VAR MultNodeDatIn: NodeRecordType;
                           Rec: Integer);
PROCEDURE CloseMultNodeDat;

{*** *.SCN *************************************************************}

PROCEDURE OpenScn(FileName: String;
                  Path: String;
                  VAR Err: Byte);
PROCEDURE ReadScn(VAR ScnIn: ScanRec;
                  Rec: Integer);
PROCEDURE WriteScn(VAR ScnIn: ScanRec;
                   Rec: Integer);
PROCEDURE CloseScn;

{***********************************************************************}

CONST
   RGApiVer = '2.00';
   RGApiAuthor = 'The Renegade Development Team';
   MonthArray: Array[1..12] OF String[3] =
               ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct',
                'Nov','Dec');
   DowArray: Array[0..6] OF String[3] =
             ('Sun','Mon','Tue','Wed','Thu','Fri','Sat');
{*** USED BY UNIX-TIME CONVERTING PROCEDURES ***************************}
  DaysPerMonth :
    Array[1..12] of ShortInt =
    (031,028,031,030,031,030,031,031,030,031,030,031);
  DaysPerYear  :
    Array[1..12] of Integer  =
    (031,059,090,120,151,181,212,243,273,304,334,365);
  DaysPerLeapYear :
    Array[1..12] of Integer  =
    (031,060,091,121,152,182,213,244,274,305,335,366);
  SecsPerYear      : LongInt  = 31536000;
  SecsPerLeapYear  : LongInt  = 31622400;
  SecsPerDay       : LongInt  = 86400;
  SecsPerHour      : Integer  = 3600;
  SecsPerMinute    : ShortInt = 60;
(***************************************************************************)

VAR
   SchemeDat: FILE of SchemeRec;
   NodeDat: FILE of LineRec;
   MBasesDat: FILE of MessageAreaRecordType;
   RenegadeDat: FILE Of GeneralRecordType;
   ConferencDat: FILE OF ConferenceRecordType;
   UsersDat: FILE OF UserRecordType;
   UsersIdx: FILE of UserIdxRec;
   Hdr: FILE of MHeaderRec;
   HistoryDat: FILE OF HistoryRecordType;
   Dat: FILE;
   VotingDat: FILE OF VotingRecordType;
   FBasesDat: FILE OF FileAreaRecordType;
   Dir: FILE OF FileInfoRecordType;
   LastOnDat: FILE OF LastCallerRec;
   EventsDat: FILE OF EventRecordType;
   ProtocolDat: FILE OF ProtocolRecordType;
   MultNodeDat: FILE OF NodeRecordType;
   Scn: FILE OF ScanRec;


IMPLEMENTATION


FUNCTION  AddSlash(Str: String): String;

BEGIN
   IF Str <> '' THEN
    BEGIN
       IF Str[Length(Str)] <> '\' THEN AddSlash := Str + '\'
       ELSE AddSlash := Str;
    END
   ELSE AddSlash := '';
END;


FUNCTION LZero(W: Word) : String;
VAR
   S1: String;

BEGIN
   Str(W:0,S1);
   IF LENGTH(S1) = 1 THEN S1 := '0' + S1;
   LZero := S1;
END;


FUNCTION GetTimeZone : ShortInt;
VAR
   Environment : String;
   Index : Integer;

BEGIN
   GetTimeZone := 0;                            {Assume UTC}
   Environment := GetEnv('TZ');       {Grab TZ string}
   For Index := 1 TO Length(Environment) DO
    Environment[Index] := UpCase(Environment[Index]);
   IF Environment =  'EST05'    THEN GetTimeZone := -05; {USA EASTERN}
   IF Environment =  'EST05EDT' THEN GetTimeZone := -06;
   IF Environment =  'CST06'    THEN GetTimeZone := -06; {USA CENTRAL}
   IF Environment =  'CST06CDT' THEN GetTimeZone := -07;
   IF Environment =  'MST07'    THEN GetTimeZone := -07; {USA MOUNTAIN}
   IF Environment =  'MST07MDT' THEN GetTimeZone := -08;
   IF Environment =  'PST08'    THEN GetTimeZone := -08;
   IF Environment =  'PST08PDT' THEN GetTimeZone := -09;
   IF Environment =  'YST09'    THEN GetTimeZone := -09;
   IF Environment =  'AST10'    THEN GetTimeZone := -10;
   IF Environment =  'BST11'    THEN GetTimeZone := -11;
   IF Environment =  'CET-1'    THEN GetTimeZone :=  01;
   IF Environment =  'CET-01'   THEN GetTimeZone :=  01;
   IF Environment =  'EST-10'   THEN GetTimeZone :=  10;
   IF Environment =  'WST-8'    THEN GetTimeZone :=  08; {Perth, W. Aust.}
   IF Environment =  'WST-08'   THEN GetTimeZone :=  08;
END;


FUNCTION IsLeapYear(Source : Word) : Boolean;

BEGIN
   IF (Source MOD 400 = 0) OR ((Source Mod 4 = 0) AND
      (Source MOD 100 <> 0)) THEN
    IsLeapYear := TRUE
   ELSE
    IsLeapYear := FALSE;
END;


FUNCTION Norm2Unix(Y,M,D,H,Min,S : Word) : LongInt;
VAR
  UnixDate : LongInt;
  Index    : Word;

BEGIN
  UnixDate := 0;                                                 {initialize}
  Inc(UnixDate,S);                                              {add seconds}
  Inc(UnixDate,(SecsPerMinute * Min));                          {add minutes}
  Inc(UnixDate,(SecsPerHour * H));                                {add hours}
  (*************************************************************************)
  (* If UTC = 0, and local time is -06 hours of UTC, then                  *)
  (* UTC := UTC - (-06 * SecsPerHour)                                      *)
  (* Remember that a negative # minus a negative # yields a positive value *)
  (*************************************************************************)
  UnixDate := UnixDate - (GetTimeZone * SecsPerHour);

  IF D > 1 THEN                                 
    Inc(UnixDate,(SecsPerDay * (D-1)));

  IF IsLeapYear(Y) THEN
    DaysPerMonth[02] := 29
  ELSE
    DaysPerMonth[02] := 28;                     

  Index := 1;
  IF M > 1 THEN FOR Index := 1 TO (M-1) DO
    Inc(UnixDate,(DaysPerMonth[Index] * SecsPerDay));

  WHILE Y > 1970 DO
   BEGIN
      IF IsLeapYear((Y-1)) THEN
       Inc(UnixDate,SecsPerLeapYear)
      ELSE
       Inc(UnixDate,SecsPerYear);
      Dec(Y,1);
   END;

  Norm2Unix := UnixDate;
END;


PROCEDURE Unix2Norm(Date : LongInt; Var Y, M, D, H, Min, S : Word);
VAR
   LocalDate : LongInt;
   Done      : Boolean;
   X         : ShortInt;
   TotDays   : Integer;

BEGIN
   Y   := 1970;
   M   := 1;
   D   := 1;
   H   := 0;
   Min := 0;
   S   := 0;
   LocalDate := Date + (GetTimeZone * SecsPerHour);
   Done := FALSE;
   WHILE NOT (Done) DO
    BEGIN
       IF LocalDate >= SecsPerYear THEN
        BEGIN
           Inc(Y,1);
           Dec(LocalDate,SecsPerYear);
        END
       ELSE
        Done := TRUE;
       IF (IsLeapYear(Y+1)) AND (LocalDate >= SecsPerLeapYear) AND
          (NOT (Done)) THEN
        BEGIN
           Inc(Y,1);
           Dec(LocalDate,SecsPerLeapYear);
        END;
    END;
   M := 1;
   D := 1;
   Done := FALSE;
   TotDays := LocalDate DIV SecsPerDay;
   IF IsLeapYear(Y) THEN
    BEGIN
       DaysPerMonth[02] := 29;
       X := 1;
       REPEAT
          IF (TotDays <= DaysPerLeapYear[x]) THEN
           BEGIN
              M := X;
              Done := TRUE;
              Dec(LocalDate,(TotDays * SecsPerDay));
              D := DaysPerMonth[M]-(DaysPerLeapYear[M]-TotDays) + 1;
           END
          ELSE
           Done := FALSE;
          Inc(X);
       UNTIL (Done) or (X > 12);
    END
   ELSE
    BEGIN
       DaysPerMonth[02] := 28;
       X := 1;
       REPEAT
          IF (TotDays <= DaysPerYear[x]) THEN
           BEGIN
              M := X;
              Done := TRUE;
              Dec(LocalDate,(TotDays * SecsPerDay));
              D := DaysPerMonth[M]-(DaysPerYear[M]-TotDays) + 1;
           END
          ELSE
           Done := FALSE;
          Inc(X);
       UNTIL Done = TRUE or (X > 12);
    END;
   H := LocalDate DIV SecsPerHour;
   Dec(LocalDate,(H * SecsPerHour));
   Min := LocalDate DIV SecsPerMinute;
   Dec(LocalDate,(Min * SecsPerMinute));
   S := LocalDate;
END;


FUNCTION TodayInUnix : LongInt;
VAR
   Year, Month, Day, DayOfWeek: Word;
   Hour, Minute, Second, Sec100: Word;

BEGIN
   GetDate(Year, Month, Day, DayOfWeek);
   GetTime(Hour, Minute, Second, Sec100);
   TodayInUnix := Norm2Unix(Year,Month,Day,Hour,Minute,Second);
END;


PROCEDURE WriteColor(VAR SchemeDatIn: SchemeRec;
                     VAR InStr);
VAR
   S : String Absolute InStr;
   I,
   Err : Integer;
   Col : byte;

BEGIN
   I := 1;
   REPEAT
      IF (S[I] = '|') THEN
       BEGIN
          Val(COPY(S,I+1,2),Col,Err);
          IF (Err = 0) AND (Col IN [0..22]) THEN
             IF Col IN [0..15] THEN TextColor(Col)
             ELSE IF Col IN [16..22] THEN TextBackground(Col - 16);
          Inc(I,2);
       END
      ELSE IF (S[I] = '^') THEN
       BEGIN
         Val(COPY(S,I+1,1),Col,Err);
         IF (Err = 0) AND (Col IN [0..9]) THEN
          BEGIN
             TextAttr := SchemeDatIn.Color[Col + 1];
             Inc(I);
          END;
       END
      ELSE
       Write(S[I]);
      Inc(I);
   UNTIL (I > Length(S));
END;


FUNCTION StripColor(VAR InStr):String;
VAR
   Temp: String;
   S: String Absolute InStr;
   I,
   Len: Integer;

BEGIN
   Len := Length(S);
   I := 1;
   Temp := '';
   REPEAT
      IF (S[I] = '|') THEN Inc(I,3)
      ELSE IF (S[I] = '^') THEN Inc(I,2)
      ELSE
       BEGIN
          Temp := Temp + S[I];
          Inc(I);
       END;
   UNTIL (I > Len);
   StripColor := Temp;
END;


PROCEDURE OpenRenegadeDat(Path: String;
                          VAR Err: Byte);

BEGIN
   Assign(RenegadeDat,AddSlash(Path) + 'RENEGADE.DAT');
   {$I-} Reset(RenegadeDat); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadRenegadeDat(VAR RenegadeDatIn: GeneralRecordType);

BEGIN
   Seek(RenegadeDat,0);
   Read(RenegadeDat,RenegadeDatIn);
END;


PROCEDURE WriteRenegadeDat(VAR RenegadeDatIn: GeneralRecordType);

BEGIN
   Seek(RenegadeDat,0);
   Write(RenegadeDat,RenegadeDatIn);
END;


PROCEDURE CloseRenegadeDat;

BEGIN
   Close(RenegadeDat);
END;


PROCEDURE OpenNodeDat(Path: String;
                         VAR Err: Byte);

BEGIN
   Assign(NodeDat,AddSlash(Path) + 'NODE1.DAT');
   {$I-} Reset(NodeDat); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadNodeDat(VAR NodeDatIn: LineRec);

BEGIN
   Seek(NodeDat,0);
   Read(NodeDat,NodeDatIn);
END;


PROCEDURE WriteNodeDat(VAR NodeDatIn: LineRec);

BEGIN
   Seek(NodeDat,0);
   Read(NodeDat,NodeDatIn);
END;


PROCEDURE CloseNodeDat;

BEGIN
   Close(NodeDat);
END;


PROCEDURE OpenConferencDat(Path: String;
                          VAR Err: Byte);

BEGIN
   Assign(ConferencDat,AddSlash(Path) + 'CONFERENC.DAT');
   {$I-} Reset(ConferencDat); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadConferencDat(VAR ConferencDatIn: ConferenceRecordType);

BEGIN
   Seek(ConferencDat,0);
   Read(ConferencDat,ConferencDatIn);
END;


PROCEDURE WriteConferencDat(VAR ConferencDatIn: ConferenceRecordType);

BEGIN
   Seek(ConferencDat,0);
   Read(ConferencDat,ConferencDatIn);
END;


PROCEDURE CloseConferencDat;

BEGIN
   Close(ConferencDat);
END;


PROCEDURE OpenSchemeDat(Path: String;
                        VAR Err: Byte);

BEGIN
   Assign(SchemeDat,AddSlash(Path) + 'SCHEME.DAT');
   {$I-} Reset(SchemeDat); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadSchemeDat(VAR SchemeDatIn: SchemeRec);

BEGIN
   Seek(SchemeDat,0);
   Read(SchemeDat,SchemeDatIn);
END;


PROCEDURE WriteSchemeDat(VAR SchemeDatIn: SchemeRec);

BEGIN
   Seek(SchemeDat,0);
   Read(SchemeDat,SchemeDatIn);
END;


PROCEDURE CloseSchemeDat;

BEGIN
   Close(SchemeDat);
END;


PROCEDURE OpenMBasesDat(Path: String;
                        VAR Err: Byte);

BEGIN
   Assign(MBasesDat,AddSlash(Path) + 'MBASES.DAT');
   {$I-} Reset(MBasesDat); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadMBasesDat(VAR MBasesDatIn: MessageAreaRecordType;
                        Rec: Integer);

BEGIN
   Seek(MBasesDat,Rec);
   Read(MBasesDat,MBasesDatIn);
END;


PROCEDURE WriteMBasesDat(VAR MBasesDatIn: MessageAreaRecordType;
                         Rec: Integer);

BEGIN
   Seek(MBasesDat,Rec);
   Write(MBasesDat,MBasesDatIn);
END;


PROCEDURE CloseMBasesDat;

BEGIN
   Close(MBasesDat);
END;


PROCEDURE OpenHdr(FileName: String;
                  Path: String;
                  VAR Err: Byte);

BEGIN
   Assign(Hdr,AddSlash(Path) + FileName);
   {$I-} Reset(Hdr); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadHdr(VAR HdrIn: MHeaderRec;
                  Rec: Integer);

BEGIN
   Seek(Hdr,Rec);
   Read(Hdr,HdrIn);
END;


PROCEDURE WriteHdr(VAR HdrIn: MHeaderRec;
                   Rec: Integer);

BEGIN
   Seek(Hdr,Rec);
   Write(Hdr,HdrIn);
END;


PROCEDURE CloseHdr;

BEGIN
   Close(Hdr);
END;


PROCEDURE OpenDat(FileName: String;
                  Path: String;
                  VAR Err: Byte);

BEGIN
   Assign(Dat,AddSlash(Path) + FileName);
   {$I-} Reset(Dat); {$I+}
   Err := IoResult;
END;


PROCEDURE CloseDat;

BEGIN
   Close(Dat);
END;


PROCEDURE OpenUsersDat(Path: String;
                       VAR Err: Byte);

BEGIN
   Assign(UsersDat,AddSlash(Path) + 'USERS.DAT');
   {$I-} Reset(UsersDat); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadUsersDat(VAR UsersDatIn: UserRecordType;
                       Rec: Integer);

BEGIN
   Seek(UsersDat,Rec);
   Read(UsersDat,UsersDatIn);
END;


PROCEDURE WriteUsersDat(VAR UsersDatIn: UserRecordType;
                        Rec: Integer);

BEGIN
   Seek(UsersDat,Rec);
   Read(UsersDat,UsersDatIn);
END;


PROCEDURE CloseUsersDat;

BEGIN
   Close(UsersDat);
END;


PROCEDURE OpenUsersIdx(Path: String; var err : boolean);

BEGIN
   Assign(UsersIdx,AddSlash(Path) + 'users.idx');
   {$I-} Reset(UsersIdx); {$I+}
   if ioresult <> 0 then Err := True
   else err := false;
END;

PROCEDURE ReadFromUsersIdx(VAR UsersIdxIn: UserIdxRec; Rec: Integer);
BEGIN
   Seek(UsersIdx,Rec);
   Read(UsersIdx,UsersIdxIn);
END;


PROCEDURE WriteToUsersIdx(VAR UsersIdxIn: UserIdxRec; Rec: Integer);
BEGIN
   Seek(UsersIdx,Rec);
   Write(UsersIdx,UsersIdxIn);
END;


PROCEDURE CloseUsersIdx;
BEGIN
   Close(UsersIdx);
END;



PROCEDURE OpenHistoryDat(Path: String;
                         VAR Err: Byte);

BEGIN
   Assign(HistoryDat,AddSlash(Path) + 'HISTORY.DAT');
   {$I-} Reset(HistoryDat); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadHistoryDat(VAR HistoryDatIn: HistoryRecordType;
                         Rec: Integer);

BEGIN
   Seek(HistoryDat,Rec);
   Read(HistoryDat,HistoryDatIn);
END;


PROCEDURE WriteHistoryDat(VAR HistoryDatIn: HistoryRecordType;
                          Rec: Integer);

BEGIN
   Seek(HistoryDat,Rec);
   Write(HistoryDat,HistoryDatIn);
END;


PROCEDURE CloseHistoryDat;

BEGIN
   Close(HistoryDat);
END;


PROCEDURE OpenVotingDat(Path: String;
                        VAR Err: Byte);

BEGIN
   Assign(VotingDat,AddSlash(Path) + 'VOTING.DAT');
   {$I-} Reset(VotingDat); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadVotingDat(VAR VotingDatIn: VotingRecordType;
                        Rec: Integer);

BEGIN
   Seek(VotingDat,Rec);
   Read(VotingDat,VotingDatIn);
END;


PROCEDURE WriteVotingDat(VAR VotingDatIn: VotingRecordType;
                         Rec: Integer);

BEGIN
   Seek(VotingDat,Rec);
   Read(VotingDat,VotingDatIn);
END;


PROCEDURE CloseVotingDat;

BEGIN
   Close(VotingDat);
END;


PROCEDURE OpenFBasesDat(Path: String;
                        VAR Err: Byte);

BEGIN
   Assign(FBasesDat,AddSlash(Path) + 'FBASES.DAT');
   {$I-} Reset(FBasesDat); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadFBasesDat(VAR FBasesDatIn: FileAreaRecordType;
                        Rec: Integer);

BEGIN
   Seek(FBasesDat,Rec);
   Read(FBasesDat,FBasesDatIn);
END;


PROCEDURE WriteFBasesDat(VAR FBasesDatIn: FileAreaRecordType;
                         Rec: Integer);

BEGIN
   Seek(FBasesDat,Rec);
   Write(FBasesDat,FBasesDatIn);
END;


PROCEDURE CloseFBasesDat;

BEGIN
   Close(FBasesDat);
END;


PROCEDURE OpenDir(FileName: String;
                  Path: String;
                  VAR Err: Byte);

BEGIN
   Assign(Dir,AddSlash(Path) + FileName);
   {$I-} Reset(Dir); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadDir(VAR DirIn: FileInfoRecordType;
                  Rec: Integer);

BEGIN
   Seek(Dir,Rec);
   Read(Dir,DirIn);
END;


PROCEDURE WriteDir(VAR DirIn: FileInfoRecordType;
                   Rec: Integer);

BEGIN
   Seek(Dir,Rec);
   Write(Dir,DirIn);
END;


PROCEDURE CloseDir;

BEGIN
   Close(Dir);
END;


PROCEDURE FileDate(S: String;
                   VAR Y: Word;
                   VAR M: Word;
                   VAR D: Word);

VAR Err: Integer;

BEGIN
   VAL(COPY(S,1,2),D,Err);
   VAL(COPY(S,4,2),M,Err);
   VAL(COPY(S,7,2),Y,Err);
END;



PROCEDURE OpenLastOnDat(Path: String;
                        VAR Err: Byte);

BEGIN
   Assign(LastOnDat,AddSlash(Path) + 'LASTON.DAT');
   {$I-} Reset(LastOnDat); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadLastOnDat(VAR LastOnDatIn: LastCallerRec;
                        Rec: Integer);

BEGIN
   Seek(LastOnDat,Rec);
   Read(LastOnDat,LastOnDatIn);
END;


PROCEDURE WriteLastOnDat(VAR LastOnDatIn: LastCallerRec;
                         Rec: Integer);

BEGIN
   Seek(LastOnDat,Rec);
   Write(LastOnDat,LastOnDatIn);
END;


PROCEDURE CloseLastOnDat;

BEGIN
   Close(LastOnDat);
END;


PROCEDURE OpenEventsDat(Path: String;
                        VAR Err: Byte);

BEGIN
   Assign(EventsDat,AddSlash(Path) + 'EVENTS.DAT');
   {$I-} Reset(EventsDat); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadEventsDat(VAR EventsDatIn: EventRecordType;
                        Rec: Integer);

BEGIN
   Seek(EventsDat,Rec);
   Read(EventsDat,EventsDatIn);
END;


PROCEDURE WriteEventsDat(VAR EventsDatIn: EventRecordType;
                         Rec: Integer);

BEGIN
   Seek(EventsDat,Rec);
   Write(EventsDat,EventsDatIn);
END;


PROCEDURE CloseEventsDat;

BEGIN
   Close(EventsDat);
END;


PROCEDURE OpenProtocolDat(Path: String;
                          VAR Err: Byte);

BEGIN
   Assign(ProtocolDat,AddSlash(Path) + 'PROTOCOL.DAT');
   {$I-} Reset(ProtocolDat); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadProtocolDat(VAR ProtocolDatIn: ProtocolRecordType;
                          Rec: Integer);

BEGIN
   Seek(ProtocolDat,Rec);
   Read(ProtocolDat,ProtocolDatIn);
END;


PROCEDURE WriteProtocolDat(VAR ProtocolDatIn: ProtocolRecordType;
                           Rec: Integer);

BEGIN
   Seek(ProtocolDat,Rec);
   Write(ProtocolDat,ProtocolDatIn);
END;


PROCEDURE CloseProtocolDat;

BEGIN
   Close(ProtocolDat);
END;


PROCEDURE OpenMultNodeDat(Path: String;
                          VAR Err: Byte);

BEGIN
   Assign(MultNodeDat,AddSlash(Path) + 'MULTNODE.DAT');
   {$I-} Reset(MultNodeDat); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadMultNodeDat(VAR MultNodeDatIn: NodeRecordType;
                          Rec: Integer);

BEGIN
   Seek(MultNodeDat,Rec);
   Read(MultNodeDat,MultNodeDatIn);
END;


PROCEDURE WriteMultNodeDat(VAR MultNodeDatIn: NodeRecordType;
                           Rec: Integer);

BEGIN
   Seek(MultNodeDat,Rec);
   Write(MultNodeDat,MultNodeDatIn);
END;


PROCEDURE CloseMultNodeDat;

BEGIN
   Close(MultNodeDat);
END;


PROCEDURE OpenScn(FileName: String;
                  Path: String;
                  VAR Err: Byte);

BEGIN
   Assign(Scn,AddSlash(Path) + FileName);
   {$I-} Reset(Scn); {$I+}
   Err := IoResult;
END;


PROCEDURE ReadScn(VAR ScnIn: ScanRec;
                  Rec: Integer);

BEGIN
   Seek(Scn,Rec);
   Read(Scn,ScnIn);
END;


PROCEDURE WriteScn(VAR ScnIn: ScanRec;
                   Rec: Integer);

BEGIN
   Seek(Scn,Rec);
   Write(Scn,ScnIn);
END;


PROCEDURE CloseScn;

BEGIN
   Close(Scn);
END;


BEGIN
END.

