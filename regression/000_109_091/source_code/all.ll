; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.5 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.8 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.12 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_18_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  br label %source, !dbg !64

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !65), !dbg !66
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !72
  %1 = load i8*, i8** %data, align 8, !dbg !73
  %call = call i64 @strlen(i8* %1) #7, !dbg !74
  store i64 %call, i64* %dataLen, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !75, metadata !DIExpression()), !dbg !131
  %2 = load i64, i64* %dataLen, align 8, !dbg !132
  %sub = sub i64 100, %2, !dbg !134
  %cmp = icmp ugt i64 %sub, 1, !dbg !135
  br i1 %cmp, label %if.then, label %if.end11, !dbg !136

if.then:                                          ; preds = %source
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !137
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !139
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !140
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !142
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !143

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !144
  %5 = load i64, i64* %dataLen, align 8, !dbg !147
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !148
  %6 = load i64, i64* %dataLen, align 8, !dbg !149
  %sub4 = sub i64 100, %6, !dbg !150
  %conv = trunc i64 %sub4 to i32, !dbg !151
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !152
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !153
  %cmp6 = icmp eq i8* %call5, null, !dbg !154
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !155

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !156
  %8 = load i8*, i8** %data, align 8, !dbg !158
  %9 = load i64, i64* %dataLen, align 8, !dbg !159
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !158
  store i8 0, i8* %arrayidx, align 1, !dbg !160
  br label %if.end, !dbg !161

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !162
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !163
  br label %if.end10, !dbg !164

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !165

if.end11:                                         ; preds = %if.end10, %source
  br label %sink, !dbg !166

sink:                                             ; preds = %if.end11
  call void @llvm.dbg.label(metadata !167), !dbg !168
  call void @llvm.dbg.declare(metadata i32* %i, metadata !169, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %n, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !174, metadata !DIExpression()), !dbg !175
  %11 = load i8*, i8** %data, align 8, !dbg !176
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !178
  %cmp13 = icmp eq i32 %call12, 1, !dbg !179
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !180

if.then15:                                        ; preds = %sink
  store i32 0, i32* %intVariable, align 4, !dbg !181
  store i32 0, i32* %i, align 4, !dbg !183
  br label %for.cond, !dbg !185

for.cond:                                         ; preds = %for.inc, %if.then15
  %12 = load i32, i32* %i, align 4, !dbg !186
  %13 = load i32, i32* %n, align 4, !dbg !188
  %cmp16 = icmp slt i32 %12, %13, !dbg !189
  br i1 %cmp16, label %for.body, label %for.end, !dbg !190

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !191
  %inc = add nsw i32 %14, 1, !dbg !191
  store i32 %inc, i32* %intVariable, align 4, !dbg !191
  br label %for.inc, !dbg !193

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !194
  %inc18 = add nsw i32 %15, 1, !dbg !194
  store i32 %inc18, i32* %i, align 4, !dbg !194
  br label %for.cond, !dbg !195, !llvm.loop !196

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !199
  call void @printIntLine(i32 %16), !dbg !200
  br label %if.end19, !dbg !201

if.end19:                                         ; preds = %for.end, %sink
  ret void, !dbg !202
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !203 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !206, metadata !DIExpression()), !dbg !207
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !207
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !207
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !208
  store i8* %arraydecay, i8** %data, align 8, !dbg !209
  br label %source, !dbg !210

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !211), !dbg !212
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !213, metadata !DIExpression()), !dbg !215
  %1 = load i8*, i8** %data, align 8, !dbg !216
  %call = call i64 @strlen(i8* %1) #7, !dbg !217
  store i64 %call, i64* %dataLen, align 8, !dbg !215
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !218, metadata !DIExpression()), !dbg !219
  %2 = load i64, i64* %dataLen, align 8, !dbg !220
  %sub = sub i64 100, %2, !dbg !222
  %cmp = icmp ugt i64 %sub, 1, !dbg !223
  br i1 %cmp, label %if.then, label %if.end11, !dbg !224

if.then:                                          ; preds = %source
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !225
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !227
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !228
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !230
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !231

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !232
  %5 = load i64, i64* %dataLen, align 8, !dbg !235
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !236
  %6 = load i64, i64* %dataLen, align 8, !dbg !237
  %sub4 = sub i64 100, %6, !dbg !238
  %conv = trunc i64 %sub4 to i32, !dbg !239
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !240
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !241
  %cmp6 = icmp eq i8* %call5, null, !dbg !242
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !243

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !244
  %8 = load i8*, i8** %data, align 8, !dbg !246
  %9 = load i64, i64* %dataLen, align 8, !dbg !247
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !246
  store i8 0, i8* %arrayidx, align 1, !dbg !248
  br label %if.end, !dbg !249

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !250
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !251
  br label %if.end10, !dbg !252

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !253

if.end11:                                         ; preds = %if.end10, %source
  br label %sink, !dbg !254

sink:                                             ; preds = %if.end11
  call void @llvm.dbg.label(metadata !255), !dbg !256
  call void @llvm.dbg.declare(metadata i32* %i, metadata !257, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %n, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !262, metadata !DIExpression()), !dbg !263
  %11 = load i8*, i8** %data, align 8, !dbg !264
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !266
  %cmp13 = icmp eq i32 %call12, 1, !dbg !267
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !268

if.then15:                                        ; preds = %sink
  %12 = load i32, i32* %n, align 4, !dbg !269
  %cmp16 = icmp slt i32 %12, 10000, !dbg !272
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !273

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !274
  store i32 0, i32* %i, align 4, !dbg !276
  br label %for.cond, !dbg !278

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %i, align 4, !dbg !279
  %14 = load i32, i32* %n, align 4, !dbg !281
  %cmp19 = icmp slt i32 %13, %14, !dbg !282
  br i1 %cmp19, label %for.body, label %for.end, !dbg !283

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !284
  %inc = add nsw i32 %15, 1, !dbg !284
  store i32 %inc, i32* %intVariable, align 4, !dbg !284
  br label %for.inc, !dbg !286

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !287
  %inc21 = add nsw i32 %16, 1, !dbg !287
  store i32 %inc21, i32* %i, align 4, !dbg !287
  br label %for.cond, !dbg !288, !llvm.loop !289

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !291
  call void @printIntLine(i32 %17), !dbg !292
  br label %if.end22, !dbg !293

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !294

if.end23:                                         ; preds = %if.end22, %sink
  ret void, !dbg !295
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !296 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !300
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !300
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !301
  store i8* %arraydecay, i8** %data, align 8, !dbg !302
  br label %source, !dbg !303

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !304), !dbg !305
  %1 = load i8*, i8** %data, align 8, !dbg !306
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !307
  br label %sink, !dbg !308

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !309), !dbg !310
  call void @llvm.dbg.declare(metadata i32* %i, metadata !311, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.declare(metadata i32* %n, metadata !314, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !316, metadata !DIExpression()), !dbg !317
  %2 = load i8*, i8** %data, align 8, !dbg !318
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !320
  %cmp = icmp eq i32 %call1, 1, !dbg !321
  br i1 %cmp, label %if.then, label %if.end, !dbg !322

if.then:                                          ; preds = %sink
  store i32 0, i32* %intVariable, align 4, !dbg !323
  store i32 0, i32* %i, align 4, !dbg !325
  br label %for.cond, !dbg !327

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !328
  %4 = load i32, i32* %n, align 4, !dbg !330
  %cmp2 = icmp slt i32 %3, %4, !dbg !331
  br i1 %cmp2, label %for.body, label %for.end, !dbg !332

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !333
  %inc = add nsw i32 %5, 1, !dbg !333
  store i32 %inc, i32* %intVariable, align 4, !dbg !333
  br label %for.inc, !dbg !335

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !336
  %inc3 = add nsw i32 %6, 1, !dbg !336
  store i32 %inc3, i32* %i, align 4, !dbg !336
  br label %for.cond, !dbg !337, !llvm.loop !338

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !340
  call void @printIntLine(i32 %7), !dbg !341
  br label %if.end, !dbg !342

if.end:                                           ; preds = %for.end, %sink
  ret void, !dbg !343
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_18_good() #0 !dbg !344 {
entry:
  call void @goodB2G(), !dbg !345
  call void @goodG2B(), !dbg !346
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !348 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !353
  %0 = load i8*, i8** %line.addr, align 8, !dbg !354
  %cmp = icmp ne i8* %0, null, !dbg !356
  br i1 %cmp, label %if.then, label %if.end, !dbg !357

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !358
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !360
  br label %if.end, !dbg !361

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !362
  ret void, !dbg !363
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !364 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !365, metadata !DIExpression()), !dbg !366
  %0 = load i8*, i8** %line.addr, align 8, !dbg !367
  %cmp = icmp ne i8* %0, null, !dbg !369
  br i1 %cmp, label %if.then, label %if.end, !dbg !370

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !373
  br label %if.end, !dbg !374

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !376 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !381, metadata !DIExpression()), !dbg !382
  %0 = load i32*, i32** %line.addr, align 8, !dbg !383
  %cmp = icmp ne i32* %0, null, !dbg !385
  br i1 %cmp, label %if.then, label %if.end, !dbg !386

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !387
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !389
  br label %if.end, !dbg !390

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !391
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !392 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !397
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.11, i64 0, i64 0), i32 %0), !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !400 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !406
  %conv = sext i16 %0 to i32, !dbg !406
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.12, i64 0, i64 0), i32 %conv), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !409 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !413, metadata !DIExpression()), !dbg !414
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !415
  %conv = fpext float %0 to double, !dbg !415
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !416
  ret void, !dbg !417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !418 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !421, metadata !DIExpression()), !dbg !422
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !423
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !424
  ret void, !dbg !425
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !426 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !432, metadata !DIExpression()), !dbg !433
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !434
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !435
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !437 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !440, metadata !DIExpression()), !dbg !441
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !442
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !443
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !445 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !448, metadata !DIExpression()), !dbg !449
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !450
  %conv = sext i8 %0 to i32, !dbg !450
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !451
  ret void, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !453 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !458, metadata !DIExpression()), !dbg !462
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !463
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !464
  store i32 %0, i32* %arrayidx, align 4, !dbg !465
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !466
  store i32 0, i32* %arrayidx1, align 4, !dbg !467
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !468
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !469
  ret void, !dbg !470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !471 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !476
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !477
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !479 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !482, metadata !DIExpression()), !dbg !483
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !484
  %conv = zext i8 %0 to i32, !dbg !484
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !485
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !487 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !491, metadata !DIExpression()), !dbg !492
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !493
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !494
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !496 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !508
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !509
  %1 = load i32, i32* %intOne, align 4, !dbg !509
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !510
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !511
  %3 = load i32, i32* %intTwo, align 4, !dbg !511
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !512
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !514 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !518, metadata !DIExpression()), !dbg !519
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !520, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.declare(metadata i64* %i, metadata !522, metadata !DIExpression()), !dbg !523
  store i64 0, i64* %i, align 8, !dbg !524
  br label %for.cond, !dbg !526

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !527
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !529
  %cmp = icmp ult i64 %0, %1, !dbg !530
  br i1 %cmp, label %for.body, label %for.end, !dbg !531

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !532
  %3 = load i64, i64* %i, align 8, !dbg !534
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !532
  %4 = load i8, i8* %arrayidx, align 1, !dbg !532
  %conv = zext i8 %4 to i32, !dbg !532
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !535
  br label %for.inc, !dbg !536

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !537
  %inc = add i64 %5, 1, !dbg !537
  store i64 %inc, i64* %i, align 8, !dbg !537
  br label %for.cond, !dbg !538, !llvm.loop !539

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !541
  ret void, !dbg !542
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !543 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !546, metadata !DIExpression()), !dbg !547
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !548, metadata !DIExpression()), !dbg !549
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !550, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !552, metadata !DIExpression()), !dbg !553
  store i64 0, i64* %numWritten, align 8, !dbg !553
  br label %while.cond, !dbg !554

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !555
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !556
  %cmp = icmp ult i64 %0, %1, !dbg !557
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !558

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !559
  %2 = load i16*, i16** %call, align 8, !dbg !559
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !559
  %4 = load i64, i64* %numWritten, align 8, !dbg !559
  %mul = mul i64 2, %4, !dbg !559
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !559
  %5 = load i8, i8* %arrayidx, align 1, !dbg !559
  %conv = sext i8 %5 to i32, !dbg !559
  %idxprom = sext i32 %conv to i64, !dbg !559
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !559
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !559
  %conv2 = zext i16 %6 to i32, !dbg !559
  %and = and i32 %conv2, 4096, !dbg !559
  %tobool = icmp ne i32 %and, 0, !dbg !559
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !560

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !561
  %7 = load i16*, i16** %call3, align 8, !dbg !561
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !561
  %9 = load i64, i64* %numWritten, align 8, !dbg !561
  %mul4 = mul i64 2, %9, !dbg !561
  %add = add i64 %mul4, 1, !dbg !561
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !561
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !561
  %conv6 = sext i8 %10 to i32, !dbg !561
  %idxprom7 = sext i32 %conv6 to i64, !dbg !561
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !561
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !561
  %conv9 = zext i16 %11 to i32, !dbg !561
  %and10 = and i32 %conv9, 4096, !dbg !561
  %tobool11 = icmp ne i32 %and10, 0, !dbg !560
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !562
  br i1 %12, label %while.body, label %while.end, !dbg !554

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !563, metadata !DIExpression()), !dbg !565
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !566
  %14 = load i64, i64* %numWritten, align 8, !dbg !567
  %mul12 = mul i64 2, %14, !dbg !568
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !566
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !569
  %15 = load i32, i32* %byte, align 4, !dbg !570
  %conv15 = trunc i32 %15 to i8, !dbg !571
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !572
  %17 = load i64, i64* %numWritten, align 8, !dbg !573
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !572
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !574
  %18 = load i64, i64* %numWritten, align 8, !dbg !575
  %inc = add i64 %18, 1, !dbg !575
  store i64 %inc, i64* %numWritten, align 8, !dbg !575
  br label %while.cond, !dbg !554, !llvm.loop !576

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !578
  ret i64 %19, !dbg !579
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !580 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !583, metadata !DIExpression()), !dbg !584
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !585, metadata !DIExpression()), !dbg !586
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !587, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !589, metadata !DIExpression()), !dbg !590
  store i64 0, i64* %numWritten, align 8, !dbg !590
  br label %while.cond, !dbg !591

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !592
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !593
  %cmp = icmp ult i64 %0, %1, !dbg !594
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !595

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !596
  %3 = load i64, i64* %numWritten, align 8, !dbg !597
  %mul = mul i64 2, %3, !dbg !598
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !596
  %4 = load i32, i32* %arrayidx, align 4, !dbg !596
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !599
  %tobool = icmp ne i32 %call, 0, !dbg !599
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !600

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !601
  %6 = load i64, i64* %numWritten, align 8, !dbg !602
  %mul1 = mul i64 2, %6, !dbg !603
  %add = add i64 %mul1, 1, !dbg !604
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !601
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !601
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !605
  %tobool4 = icmp ne i32 %call3, 0, !dbg !600
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !606
  br i1 %8, label %while.body, label %while.end, !dbg !591

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !607, metadata !DIExpression()), !dbg !609
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !610
  %10 = load i64, i64* %numWritten, align 8, !dbg !611
  %mul5 = mul i64 2, %10, !dbg !612
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !610
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !613
  %11 = load i32, i32* %byte, align 4, !dbg !614
  %conv = trunc i32 %11 to i8, !dbg !615
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !616
  %13 = load i64, i64* %numWritten, align 8, !dbg !617
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !616
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !618
  %14 = load i64, i64* %numWritten, align 8, !dbg !619
  %inc = add i64 %14, 1, !dbg !619
  store i64 %inc, i64* %numWritten, align 8, !dbg !619
  br label %while.cond, !dbg !591, !llvm.loop !620

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !622
  ret i64 %15, !dbg !623
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !624 {
entry:
  ret i32 1, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !628 {
entry:
  ret i32 0, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !630 {
entry:
  %call = call i32 @rand() #8, !dbg !631
  %rem = srem i32 %call, 2, !dbg !632
  ret i32 %rem, !dbg !633
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !634 {
entry:
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !636 {
entry:
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !638 {
entry:
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !640 {
entry:
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !642 {
entry:
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !644 {
entry:
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !646 {
entry:
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !648 {
entry:
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !650 {
entry:
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !652 {
entry:
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !654 {
entry:
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !656 {
entry:
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !658 {
entry:
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !660 {
entry:
  ret void, !dbg !661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !662 {
entry:
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !664 {
entry:
  ret void, !dbg !665
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !666 {
entry:
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !668 {
entry:
  ret void, !dbg !669
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_091/source_code")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!21 = !{!22, !23, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!0, !27, !29, !31, !33, !35, !37, !39}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !2, file: !3, line: 175, type: !23, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !2, file: !3, line: 176, type: !23, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "globalTrue", scope: !2, file: !3, line: 181, type: !23, isLocal: false, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "globalFalse", scope: !2, file: !3, line: 182, type: !23, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "globalFive", scope: !2, file: !3, line: 183, type: !23, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "globalArgc", scope: !2, file: !3, line: 214, type: !23, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "globalArgv", scope: !2, file: !3, line: 215, type: !41, isLocal: false, isDefinition: true)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !47, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_091/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_18_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 37, type: !42)
!56 = !DILocation(line: 37, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 38, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 100)
!61 = !DILocation(line: 38, column: 10, scope: !52)
!62 = !DILocation(line: 39, column: 12, scope: !52)
!63 = !DILocation(line: 39, column: 10, scope: !52)
!64 = !DILocation(line: 40, column: 5, scope: !52)
!65 = !DILabel(scope: !52, name: "source", file: !45, line: 41)
!66 = !DILocation(line: 41, column: 1, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 44, type: !69)
!68 = distinct !DILexicalBlock(scope: !52, file: !45, line: 42, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 44, column: 16, scope: !68)
!73 = !DILocation(line: 44, column: 33, scope: !68)
!74 = !DILocation(line: 44, column: 26, scope: !68)
!75 = !DILocalVariable(name: "pFile", scope: !68, file: !45, line: 45, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !78, line: 7, baseType: !79)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !80, line: 49, size: 1728, elements: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !97, !99, !100, !101, !105, !106, !108, !112, !115, !117, !120, !123, !124, !125, !126, !127}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !79, file: !80, line: 51, baseType: !23, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !79, file: !80, line: 54, baseType: !42, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !79, file: !80, line: 55, baseType: !42, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !79, file: !80, line: 56, baseType: !42, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !79, file: !80, line: 57, baseType: !42, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !79, file: !80, line: 58, baseType: !42, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !79, file: !80, line: 59, baseType: !42, size: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !79, file: !80, line: 60, baseType: !42, size: 64, offset: 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !79, file: !80, line: 61, baseType: !42, size: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !79, file: !80, line: 64, baseType: !42, size: 64, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !79, file: !80, line: 65, baseType: !42, size: 64, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !79, file: !80, line: 66, baseType: !42, size: 64, offset: 704)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !79, file: !80, line: 68, baseType: !95, size: 64, offset: 768)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !80, line: 36, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !79, file: !80, line: 70, baseType: !98, size: 64, offset: 832)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !79, file: !80, line: 72, baseType: !23, size: 32, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !79, file: !80, line: 73, baseType: !23, size: 32, offset: 928)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !79, file: !80, line: 74, baseType: !102, size: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !103, line: 152, baseType: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!104 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !79, file: !80, line: 77, baseType: !24, size: 16, offset: 1024)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !79, file: !80, line: 78, baseType: !107, size: 8, offset: 1040)
!107 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !79, file: !80, line: 79, baseType: !109, size: 8, offset: 1048)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 1)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !79, file: !80, line: 81, baseType: !113, size: 64, offset: 1088)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !80, line: 43, baseType: null)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !79, file: !80, line: 89, baseType: !116, size: 64, offset: 1152)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !103, line: 153, baseType: !104)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !79, file: !80, line: 91, baseType: !118, size: 64, offset: 1216)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !80, line: 37, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !79, file: !80, line: 92, baseType: !121, size: 64, offset: 1280)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !80, line: 38, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !79, file: !80, line: 93, baseType: !98, size: 64, offset: 1344)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !79, file: !80, line: 94, baseType: !22, size: 64, offset: 1408)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !79, file: !80, line: 95, baseType: !69, size: 64, offset: 1472)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !79, file: !80, line: 96, baseType: !23, size: 32, offset: 1536)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !79, file: !80, line: 98, baseType: !128, size: 160, offset: 1568)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 20)
!131 = !DILocation(line: 45, column: 16, scope: !68)
!132 = !DILocation(line: 47, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !68, file: !45, line: 47, column: 13)
!134 = !DILocation(line: 47, column: 16, scope: !133)
!135 = !DILocation(line: 47, column: 25, scope: !133)
!136 = !DILocation(line: 47, column: 13, scope: !68)
!137 = !DILocation(line: 49, column: 21, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !45, line: 48, column: 9)
!139 = !DILocation(line: 49, column: 19, scope: !138)
!140 = !DILocation(line: 50, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !45, line: 50, column: 17)
!142 = !DILocation(line: 50, column: 23, scope: !141)
!143 = !DILocation(line: 50, column: 17, scope: !138)
!144 = !DILocation(line: 53, column: 27, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !45, line: 53, column: 21)
!146 = distinct !DILexicalBlock(scope: !141, file: !45, line: 51, column: 13)
!147 = !DILocation(line: 53, column: 32, scope: !145)
!148 = !DILocation(line: 53, column: 31, scope: !145)
!149 = !DILocation(line: 53, column: 51, scope: !145)
!150 = !DILocation(line: 53, column: 50, scope: !145)
!151 = !DILocation(line: 53, column: 41, scope: !145)
!152 = !DILocation(line: 53, column: 61, scope: !145)
!153 = !DILocation(line: 53, column: 21, scope: !145)
!154 = !DILocation(line: 53, column: 68, scope: !145)
!155 = !DILocation(line: 53, column: 21, scope: !146)
!156 = !DILocation(line: 55, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !145, file: !45, line: 54, column: 17)
!158 = !DILocation(line: 57, column: 21, scope: !157)
!159 = !DILocation(line: 57, column: 26, scope: !157)
!160 = !DILocation(line: 57, column: 35, scope: !157)
!161 = !DILocation(line: 58, column: 17, scope: !157)
!162 = !DILocation(line: 59, column: 24, scope: !146)
!163 = !DILocation(line: 59, column: 17, scope: !146)
!164 = !DILocation(line: 60, column: 13, scope: !146)
!165 = !DILocation(line: 61, column: 9, scope: !138)
!166 = !DILocation(line: 63, column: 5, scope: !52)
!167 = !DILabel(scope: !52, name: "sink", file: !45, line: 64)
!168 = !DILocation(line: 64, column: 1, scope: !52)
!169 = !DILocalVariable(name: "i", scope: !170, file: !45, line: 66, type: !23)
!170 = distinct !DILexicalBlock(scope: !52, file: !45, line: 65, column: 5)
!171 = !DILocation(line: 66, column: 13, scope: !170)
!172 = !DILocalVariable(name: "n", scope: !170, file: !45, line: 66, type: !23)
!173 = !DILocation(line: 66, column: 16, scope: !170)
!174 = !DILocalVariable(name: "intVariable", scope: !170, file: !45, line: 66, type: !23)
!175 = !DILocation(line: 66, column: 19, scope: !170)
!176 = !DILocation(line: 67, column: 20, scope: !177)
!177 = distinct !DILexicalBlock(scope: !170, file: !45, line: 67, column: 13)
!178 = !DILocation(line: 67, column: 13, scope: !177)
!179 = !DILocation(line: 67, column: 36, scope: !177)
!180 = !DILocation(line: 67, column: 13, scope: !170)
!181 = !DILocation(line: 70, column: 25, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !45, line: 68, column: 9)
!183 = !DILocation(line: 71, column: 20, scope: !184)
!184 = distinct !DILexicalBlock(scope: !182, file: !45, line: 71, column: 13)
!185 = !DILocation(line: 71, column: 18, scope: !184)
!186 = !DILocation(line: 71, column: 25, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !45, line: 71, column: 13)
!188 = !DILocation(line: 71, column: 29, scope: !187)
!189 = !DILocation(line: 71, column: 27, scope: !187)
!190 = !DILocation(line: 71, column: 13, scope: !184)
!191 = !DILocation(line: 74, column: 28, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !45, line: 72, column: 13)
!193 = !DILocation(line: 75, column: 13, scope: !192)
!194 = !DILocation(line: 71, column: 33, scope: !187)
!195 = !DILocation(line: 71, column: 13, scope: !187)
!196 = distinct !{!196, !190, !197, !198}
!197 = !DILocation(line: 75, column: 13, scope: !184)
!198 = !{!"llvm.loop.mustprogress"}
!199 = !DILocation(line: 76, column: 26, scope: !182)
!200 = !DILocation(line: 76, column: 13, scope: !182)
!201 = !DILocation(line: 77, column: 9, scope: !182)
!202 = !DILocation(line: 79, column: 1, scope: !52)
!203 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 86, type: !53, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!204 = !DILocalVariable(name: "data", scope: !203, file: !45, line: 88, type: !42)
!205 = !DILocation(line: 88, column: 12, scope: !203)
!206 = !DILocalVariable(name: "dataBuffer", scope: !203, file: !45, line: 89, type: !58)
!207 = !DILocation(line: 89, column: 10, scope: !203)
!208 = !DILocation(line: 90, column: 12, scope: !203)
!209 = !DILocation(line: 90, column: 10, scope: !203)
!210 = !DILocation(line: 91, column: 5, scope: !203)
!211 = !DILabel(scope: !203, name: "source", file: !45, line: 92)
!212 = !DILocation(line: 92, column: 1, scope: !203)
!213 = !DILocalVariable(name: "dataLen", scope: !214, file: !45, line: 95, type: !69)
!214 = distinct !DILexicalBlock(scope: !203, file: !45, line: 93, column: 5)
!215 = !DILocation(line: 95, column: 16, scope: !214)
!216 = !DILocation(line: 95, column: 33, scope: !214)
!217 = !DILocation(line: 95, column: 26, scope: !214)
!218 = !DILocalVariable(name: "pFile", scope: !214, file: !45, line: 96, type: !76)
!219 = !DILocation(line: 96, column: 16, scope: !214)
!220 = !DILocation(line: 98, column: 17, scope: !221)
!221 = distinct !DILexicalBlock(scope: !214, file: !45, line: 98, column: 13)
!222 = !DILocation(line: 98, column: 16, scope: !221)
!223 = !DILocation(line: 98, column: 25, scope: !221)
!224 = !DILocation(line: 98, column: 13, scope: !214)
!225 = !DILocation(line: 100, column: 21, scope: !226)
!226 = distinct !DILexicalBlock(scope: !221, file: !45, line: 99, column: 9)
!227 = !DILocation(line: 100, column: 19, scope: !226)
!228 = !DILocation(line: 101, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !45, line: 101, column: 17)
!230 = !DILocation(line: 101, column: 23, scope: !229)
!231 = !DILocation(line: 101, column: 17, scope: !226)
!232 = !DILocation(line: 104, column: 27, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !45, line: 104, column: 21)
!234 = distinct !DILexicalBlock(scope: !229, file: !45, line: 102, column: 13)
!235 = !DILocation(line: 104, column: 32, scope: !233)
!236 = !DILocation(line: 104, column: 31, scope: !233)
!237 = !DILocation(line: 104, column: 51, scope: !233)
!238 = !DILocation(line: 104, column: 50, scope: !233)
!239 = !DILocation(line: 104, column: 41, scope: !233)
!240 = !DILocation(line: 104, column: 61, scope: !233)
!241 = !DILocation(line: 104, column: 21, scope: !233)
!242 = !DILocation(line: 104, column: 68, scope: !233)
!243 = !DILocation(line: 104, column: 21, scope: !234)
!244 = !DILocation(line: 106, column: 21, scope: !245)
!245 = distinct !DILexicalBlock(scope: !233, file: !45, line: 105, column: 17)
!246 = !DILocation(line: 108, column: 21, scope: !245)
!247 = !DILocation(line: 108, column: 26, scope: !245)
!248 = !DILocation(line: 108, column: 35, scope: !245)
!249 = !DILocation(line: 109, column: 17, scope: !245)
!250 = !DILocation(line: 110, column: 24, scope: !234)
!251 = !DILocation(line: 110, column: 17, scope: !234)
!252 = !DILocation(line: 111, column: 13, scope: !234)
!253 = !DILocation(line: 112, column: 9, scope: !226)
!254 = !DILocation(line: 114, column: 5, scope: !203)
!255 = !DILabel(scope: !203, name: "sink", file: !45, line: 115)
!256 = !DILocation(line: 115, column: 1, scope: !203)
!257 = !DILocalVariable(name: "i", scope: !258, file: !45, line: 117, type: !23)
!258 = distinct !DILexicalBlock(scope: !203, file: !45, line: 116, column: 5)
!259 = !DILocation(line: 117, column: 13, scope: !258)
!260 = !DILocalVariable(name: "n", scope: !258, file: !45, line: 117, type: !23)
!261 = !DILocation(line: 117, column: 16, scope: !258)
!262 = !DILocalVariable(name: "intVariable", scope: !258, file: !45, line: 117, type: !23)
!263 = !DILocation(line: 117, column: 19, scope: !258)
!264 = !DILocation(line: 118, column: 20, scope: !265)
!265 = distinct !DILexicalBlock(scope: !258, file: !45, line: 118, column: 13)
!266 = !DILocation(line: 118, column: 13, scope: !265)
!267 = !DILocation(line: 118, column: 36, scope: !265)
!268 = !DILocation(line: 118, column: 13, scope: !258)
!269 = !DILocation(line: 121, column: 17, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !45, line: 121, column: 17)
!271 = distinct !DILexicalBlock(scope: !265, file: !45, line: 119, column: 9)
!272 = !DILocation(line: 121, column: 19, scope: !270)
!273 = !DILocation(line: 121, column: 17, scope: !271)
!274 = !DILocation(line: 123, column: 29, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !45, line: 122, column: 13)
!276 = !DILocation(line: 124, column: 24, scope: !277)
!277 = distinct !DILexicalBlock(scope: !275, file: !45, line: 124, column: 17)
!278 = !DILocation(line: 124, column: 22, scope: !277)
!279 = !DILocation(line: 124, column: 29, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !45, line: 124, column: 17)
!281 = !DILocation(line: 124, column: 33, scope: !280)
!282 = !DILocation(line: 124, column: 31, scope: !280)
!283 = !DILocation(line: 124, column: 17, scope: !277)
!284 = !DILocation(line: 127, column: 32, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !45, line: 125, column: 17)
!286 = !DILocation(line: 128, column: 17, scope: !285)
!287 = !DILocation(line: 124, column: 37, scope: !280)
!288 = !DILocation(line: 124, column: 17, scope: !280)
!289 = distinct !{!289, !283, !290, !198}
!290 = !DILocation(line: 128, column: 17, scope: !277)
!291 = !DILocation(line: 129, column: 30, scope: !275)
!292 = !DILocation(line: 129, column: 17, scope: !275)
!293 = !DILocation(line: 130, column: 13, scope: !275)
!294 = !DILocation(line: 131, column: 9, scope: !271)
!295 = !DILocation(line: 133, column: 1, scope: !203)
!296 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 136, type: !53, scopeLine: 137, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!297 = !DILocalVariable(name: "data", scope: !296, file: !45, line: 138, type: !42)
!298 = !DILocation(line: 138, column: 12, scope: !296)
!299 = !DILocalVariable(name: "dataBuffer", scope: !296, file: !45, line: 139, type: !58)
!300 = !DILocation(line: 139, column: 10, scope: !296)
!301 = !DILocation(line: 140, column: 12, scope: !296)
!302 = !DILocation(line: 140, column: 10, scope: !296)
!303 = !DILocation(line: 141, column: 5, scope: !296)
!304 = !DILabel(scope: !296, name: "source", file: !45, line: 142)
!305 = !DILocation(line: 142, column: 1, scope: !296)
!306 = !DILocation(line: 144, column: 12, scope: !296)
!307 = !DILocation(line: 144, column: 5, scope: !296)
!308 = !DILocation(line: 145, column: 5, scope: !296)
!309 = !DILabel(scope: !296, name: "sink", file: !45, line: 146)
!310 = !DILocation(line: 146, column: 1, scope: !296)
!311 = !DILocalVariable(name: "i", scope: !312, file: !45, line: 148, type: !23)
!312 = distinct !DILexicalBlock(scope: !296, file: !45, line: 147, column: 5)
!313 = !DILocation(line: 148, column: 13, scope: !312)
!314 = !DILocalVariable(name: "n", scope: !312, file: !45, line: 148, type: !23)
!315 = !DILocation(line: 148, column: 16, scope: !312)
!316 = !DILocalVariable(name: "intVariable", scope: !312, file: !45, line: 148, type: !23)
!317 = !DILocation(line: 148, column: 19, scope: !312)
!318 = !DILocation(line: 149, column: 20, scope: !319)
!319 = distinct !DILexicalBlock(scope: !312, file: !45, line: 149, column: 13)
!320 = !DILocation(line: 149, column: 13, scope: !319)
!321 = !DILocation(line: 149, column: 36, scope: !319)
!322 = !DILocation(line: 149, column: 13, scope: !312)
!323 = !DILocation(line: 152, column: 25, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !45, line: 150, column: 9)
!325 = !DILocation(line: 153, column: 20, scope: !326)
!326 = distinct !DILexicalBlock(scope: !324, file: !45, line: 153, column: 13)
!327 = !DILocation(line: 153, column: 18, scope: !326)
!328 = !DILocation(line: 153, column: 25, scope: !329)
!329 = distinct !DILexicalBlock(scope: !326, file: !45, line: 153, column: 13)
!330 = !DILocation(line: 153, column: 29, scope: !329)
!331 = !DILocation(line: 153, column: 27, scope: !329)
!332 = !DILocation(line: 153, column: 13, scope: !326)
!333 = !DILocation(line: 156, column: 28, scope: !334)
!334 = distinct !DILexicalBlock(scope: !329, file: !45, line: 154, column: 13)
!335 = !DILocation(line: 157, column: 13, scope: !334)
!336 = !DILocation(line: 153, column: 33, scope: !329)
!337 = !DILocation(line: 153, column: 13, scope: !329)
!338 = distinct !{!338, !332, !339, !198}
!339 = !DILocation(line: 157, column: 13, scope: !326)
!340 = !DILocation(line: 158, column: 26, scope: !324)
!341 = !DILocation(line: 158, column: 13, scope: !324)
!342 = !DILocation(line: 159, column: 9, scope: !324)
!343 = !DILocation(line: 161, column: 1, scope: !296)
!344 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_18_good", scope: !45, file: !45, line: 163, type: !53, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!345 = !DILocation(line: 165, column: 5, scope: !344)
!346 = !DILocation(line: 166, column: 5, scope: !344)
!347 = !DILocation(line: 167, column: 1, scope: !344)
!348 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !349, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !42}
!351 = !DILocalVariable(name: "line", arg: 1, scope: !348, file: !3, line: 11, type: !42)
!352 = !DILocation(line: 11, column: 25, scope: !348)
!353 = !DILocation(line: 13, column: 1, scope: !348)
!354 = !DILocation(line: 14, column: 8, scope: !355)
!355 = distinct !DILexicalBlock(scope: !348, file: !3, line: 14, column: 8)
!356 = !DILocation(line: 14, column: 13, scope: !355)
!357 = !DILocation(line: 14, column: 8, scope: !348)
!358 = !DILocation(line: 16, column: 24, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !3, line: 15, column: 5)
!360 = !DILocation(line: 16, column: 9, scope: !359)
!361 = !DILocation(line: 17, column: 5, scope: !359)
!362 = !DILocation(line: 18, column: 5, scope: !348)
!363 = !DILocation(line: 19, column: 1, scope: !348)
!364 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !349, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DILocalVariable(name: "line", arg: 1, scope: !364, file: !3, line: 20, type: !42)
!366 = !DILocation(line: 20, column: 29, scope: !364)
!367 = !DILocation(line: 22, column: 8, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !3, line: 22, column: 8)
!369 = !DILocation(line: 22, column: 13, scope: !368)
!370 = !DILocation(line: 22, column: 8, scope: !364)
!371 = !DILocation(line: 24, column: 24, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !3, line: 23, column: 5)
!373 = !DILocation(line: 24, column: 9, scope: !372)
!374 = !DILocation(line: 25, column: 5, scope: !372)
!375 = !DILocation(line: 26, column: 1, scope: !364)
!376 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !377, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !23)
!381 = !DILocalVariable(name: "line", arg: 1, scope: !376, file: !3, line: 27, type: !379)
!382 = !DILocation(line: 27, column: 29, scope: !376)
!383 = !DILocation(line: 29, column: 8, scope: !384)
!384 = distinct !DILexicalBlock(scope: !376, file: !3, line: 29, column: 8)
!385 = !DILocation(line: 29, column: 13, scope: !384)
!386 = !DILocation(line: 29, column: 8, scope: !376)
!387 = !DILocation(line: 31, column: 27, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !3, line: 30, column: 5)
!389 = !DILocation(line: 31, column: 9, scope: !388)
!390 = !DILocation(line: 32, column: 5, scope: !388)
!391 = !DILocation(line: 33, column: 1, scope: !376)
!392 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !393, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !23}
!395 = !DILocalVariable(name: "intNumber", arg: 1, scope: !392, file: !3, line: 35, type: !23)
!396 = !DILocation(line: 35, column: 24, scope: !392)
!397 = !DILocation(line: 37, column: 20, scope: !392)
!398 = !DILocation(line: 37, column: 5, scope: !392)
!399 = !DILocation(line: 38, column: 1, scope: !392)
!400 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !401, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !403}
!403 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!404 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !400, file: !3, line: 40, type: !403)
!405 = !DILocation(line: 40, column: 28, scope: !400)
!406 = !DILocation(line: 42, column: 21, scope: !400)
!407 = !DILocation(line: 42, column: 5, scope: !400)
!408 = !DILocation(line: 43, column: 1, scope: !400)
!409 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !410, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !412}
!412 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!413 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !409, file: !3, line: 45, type: !412)
!414 = !DILocation(line: 45, column: 28, scope: !409)
!415 = !DILocation(line: 47, column: 20, scope: !409)
!416 = !DILocation(line: 47, column: 5, scope: !409)
!417 = !DILocation(line: 48, column: 1, scope: !409)
!418 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !419, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !104}
!421 = !DILocalVariable(name: "longNumber", arg: 1, scope: !418, file: !3, line: 50, type: !104)
!422 = !DILocation(line: 50, column: 26, scope: !418)
!423 = !DILocation(line: 52, column: 21, scope: !418)
!424 = !DILocation(line: 52, column: 5, scope: !418)
!425 = !DILocation(line: 53, column: 1, scope: !418)
!426 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !427, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !429}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !430, line: 27, baseType: !431)
!430 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !103, line: 44, baseType: !104)
!432 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !426, file: !3, line: 55, type: !429)
!433 = !DILocation(line: 55, column: 33, scope: !426)
!434 = !DILocation(line: 57, column: 29, scope: !426)
!435 = !DILocation(line: 57, column: 5, scope: !426)
!436 = !DILocation(line: 58, column: 1, scope: !426)
!437 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !438, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !69}
!440 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !437, file: !3, line: 60, type: !69)
!441 = !DILocation(line: 60, column: 29, scope: !437)
!442 = !DILocation(line: 62, column: 21, scope: !437)
!443 = !DILocation(line: 62, column: 5, scope: !437)
!444 = !DILocation(line: 63, column: 1, scope: !437)
!445 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !446, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !43}
!448 = !DILocalVariable(name: "charHex", arg: 1, scope: !445, file: !3, line: 65, type: !43)
!449 = !DILocation(line: 65, column: 29, scope: !445)
!450 = !DILocation(line: 67, column: 22, scope: !445)
!451 = !DILocation(line: 67, column: 5, scope: !445)
!452 = !DILocation(line: 68, column: 1, scope: !445)
!453 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !454, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !380}
!456 = !DILocalVariable(name: "wideChar", arg: 1, scope: !453, file: !3, line: 70, type: !380)
!457 = !DILocation(line: 70, column: 29, scope: !453)
!458 = !DILocalVariable(name: "s", scope: !453, file: !3, line: 74, type: !459)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 64, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 2)
!462 = !DILocation(line: 74, column: 13, scope: !453)
!463 = !DILocation(line: 75, column: 16, scope: !453)
!464 = !DILocation(line: 75, column: 9, scope: !453)
!465 = !DILocation(line: 75, column: 14, scope: !453)
!466 = !DILocation(line: 76, column: 9, scope: !453)
!467 = !DILocation(line: 76, column: 14, scope: !453)
!468 = !DILocation(line: 77, column: 21, scope: !453)
!469 = !DILocation(line: 77, column: 5, scope: !453)
!470 = !DILocation(line: 78, column: 1, scope: !453)
!471 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !472, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !7}
!474 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !471, file: !3, line: 80, type: !7)
!475 = !DILocation(line: 80, column: 33, scope: !471)
!476 = !DILocation(line: 82, column: 20, scope: !471)
!477 = !DILocation(line: 82, column: 5, scope: !471)
!478 = !DILocation(line: 83, column: 1, scope: !471)
!479 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !480, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !25}
!482 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !479, file: !3, line: 85, type: !25)
!483 = !DILocation(line: 85, column: 45, scope: !479)
!484 = !DILocation(line: 87, column: 22, scope: !479)
!485 = !DILocation(line: 87, column: 5, scope: !479)
!486 = !DILocation(line: 88, column: 1, scope: !479)
!487 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !488, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !490}
!490 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!491 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !487, file: !3, line: 90, type: !490)
!492 = !DILocation(line: 90, column: 29, scope: !487)
!493 = !DILocation(line: 92, column: 20, scope: !487)
!494 = !DILocation(line: 92, column: 5, scope: !487)
!495 = !DILocation(line: 93, column: 1, scope: !487)
!496 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !497, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !501, line: 100, baseType: !502)
!501 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_091/source_code")
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !501, line: 96, size: 64, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !502, file: !501, line: 98, baseType: !23, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !502, file: !501, line: 99, baseType: !23, size: 32, offset: 32)
!506 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !496, file: !3, line: 95, type: !499)
!507 = !DILocation(line: 95, column: 40, scope: !496)
!508 = !DILocation(line: 97, column: 26, scope: !496)
!509 = !DILocation(line: 97, column: 47, scope: !496)
!510 = !DILocation(line: 97, column: 55, scope: !496)
!511 = !DILocation(line: 97, column: 76, scope: !496)
!512 = !DILocation(line: 97, column: 5, scope: !496)
!513 = !DILocation(line: 98, column: 1, scope: !496)
!514 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !515, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !517, !69}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!518 = !DILocalVariable(name: "bytes", arg: 1, scope: !514, file: !3, line: 100, type: !517)
!519 = !DILocation(line: 100, column: 38, scope: !514)
!520 = !DILocalVariable(name: "numBytes", arg: 2, scope: !514, file: !3, line: 100, type: !69)
!521 = !DILocation(line: 100, column: 52, scope: !514)
!522 = !DILocalVariable(name: "i", scope: !514, file: !3, line: 102, type: !69)
!523 = !DILocation(line: 102, column: 12, scope: !514)
!524 = !DILocation(line: 103, column: 12, scope: !525)
!525 = distinct !DILexicalBlock(scope: !514, file: !3, line: 103, column: 5)
!526 = !DILocation(line: 103, column: 10, scope: !525)
!527 = !DILocation(line: 103, column: 17, scope: !528)
!528 = distinct !DILexicalBlock(scope: !525, file: !3, line: 103, column: 5)
!529 = !DILocation(line: 103, column: 21, scope: !528)
!530 = !DILocation(line: 103, column: 19, scope: !528)
!531 = !DILocation(line: 103, column: 5, scope: !525)
!532 = !DILocation(line: 105, column: 24, scope: !533)
!533 = distinct !DILexicalBlock(scope: !528, file: !3, line: 104, column: 5)
!534 = !DILocation(line: 105, column: 30, scope: !533)
!535 = !DILocation(line: 105, column: 9, scope: !533)
!536 = !DILocation(line: 106, column: 5, scope: !533)
!537 = !DILocation(line: 103, column: 31, scope: !528)
!538 = !DILocation(line: 103, column: 5, scope: !528)
!539 = distinct !{!539, !531, !540, !198}
!540 = !DILocation(line: 106, column: 5, scope: !525)
!541 = !DILocation(line: 107, column: 5, scope: !514)
!542 = !DILocation(line: 108, column: 1, scope: !514)
!543 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !544, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DISubroutineType(types: !545)
!545 = !{!69, !517, !69, !42}
!546 = !DILocalVariable(name: "bytes", arg: 1, scope: !543, file: !3, line: 113, type: !517)
!547 = !DILocation(line: 113, column: 39, scope: !543)
!548 = !DILocalVariable(name: "numBytes", arg: 2, scope: !543, file: !3, line: 113, type: !69)
!549 = !DILocation(line: 113, column: 53, scope: !543)
!550 = !DILocalVariable(name: "hex", arg: 3, scope: !543, file: !3, line: 113, type: !42)
!551 = !DILocation(line: 113, column: 71, scope: !543)
!552 = !DILocalVariable(name: "numWritten", scope: !543, file: !3, line: 115, type: !69)
!553 = !DILocation(line: 115, column: 12, scope: !543)
!554 = !DILocation(line: 121, column: 5, scope: !543)
!555 = !DILocation(line: 121, column: 12, scope: !543)
!556 = !DILocation(line: 121, column: 25, scope: !543)
!557 = !DILocation(line: 121, column: 23, scope: !543)
!558 = !DILocation(line: 121, column: 34, scope: !543)
!559 = !DILocation(line: 121, column: 37, scope: !543)
!560 = !DILocation(line: 121, column: 67, scope: !543)
!561 = !DILocation(line: 121, column: 70, scope: !543)
!562 = !DILocation(line: 0, scope: !543)
!563 = !DILocalVariable(name: "byte", scope: !564, file: !3, line: 123, type: !23)
!564 = distinct !DILexicalBlock(scope: !543, file: !3, line: 122, column: 5)
!565 = !DILocation(line: 123, column: 13, scope: !564)
!566 = !DILocation(line: 124, column: 17, scope: !564)
!567 = !DILocation(line: 124, column: 25, scope: !564)
!568 = !DILocation(line: 124, column: 23, scope: !564)
!569 = !DILocation(line: 124, column: 9, scope: !564)
!570 = !DILocation(line: 125, column: 45, scope: !564)
!571 = !DILocation(line: 125, column: 29, scope: !564)
!572 = !DILocation(line: 125, column: 9, scope: !564)
!573 = !DILocation(line: 125, column: 15, scope: !564)
!574 = !DILocation(line: 125, column: 27, scope: !564)
!575 = !DILocation(line: 126, column: 9, scope: !564)
!576 = distinct !{!576, !554, !577, !198}
!577 = !DILocation(line: 127, column: 5, scope: !543)
!578 = !DILocation(line: 129, column: 12, scope: !543)
!579 = !DILocation(line: 129, column: 5, scope: !543)
!580 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !581, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DISubroutineType(types: !582)
!582 = !{!69, !517, !69, !379}
!583 = !DILocalVariable(name: "bytes", arg: 1, scope: !580, file: !3, line: 135, type: !517)
!584 = !DILocation(line: 135, column: 41, scope: !580)
!585 = !DILocalVariable(name: "numBytes", arg: 2, scope: !580, file: !3, line: 135, type: !69)
!586 = !DILocation(line: 135, column: 55, scope: !580)
!587 = !DILocalVariable(name: "hex", arg: 3, scope: !580, file: !3, line: 135, type: !379)
!588 = !DILocation(line: 135, column: 76, scope: !580)
!589 = !DILocalVariable(name: "numWritten", scope: !580, file: !3, line: 137, type: !69)
!590 = !DILocation(line: 137, column: 12, scope: !580)
!591 = !DILocation(line: 143, column: 5, scope: !580)
!592 = !DILocation(line: 143, column: 12, scope: !580)
!593 = !DILocation(line: 143, column: 25, scope: !580)
!594 = !DILocation(line: 143, column: 23, scope: !580)
!595 = !DILocation(line: 143, column: 34, scope: !580)
!596 = !DILocation(line: 143, column: 47, scope: !580)
!597 = !DILocation(line: 143, column: 55, scope: !580)
!598 = !DILocation(line: 143, column: 53, scope: !580)
!599 = !DILocation(line: 143, column: 37, scope: !580)
!600 = !DILocation(line: 143, column: 68, scope: !580)
!601 = !DILocation(line: 143, column: 81, scope: !580)
!602 = !DILocation(line: 143, column: 89, scope: !580)
!603 = !DILocation(line: 143, column: 87, scope: !580)
!604 = !DILocation(line: 143, column: 100, scope: !580)
!605 = !DILocation(line: 143, column: 71, scope: !580)
!606 = !DILocation(line: 0, scope: !580)
!607 = !DILocalVariable(name: "byte", scope: !608, file: !3, line: 145, type: !23)
!608 = distinct !DILexicalBlock(scope: !580, file: !3, line: 144, column: 5)
!609 = !DILocation(line: 145, column: 13, scope: !608)
!610 = !DILocation(line: 146, column: 18, scope: !608)
!611 = !DILocation(line: 146, column: 26, scope: !608)
!612 = !DILocation(line: 146, column: 24, scope: !608)
!613 = !DILocation(line: 146, column: 9, scope: !608)
!614 = !DILocation(line: 147, column: 45, scope: !608)
!615 = !DILocation(line: 147, column: 29, scope: !608)
!616 = !DILocation(line: 147, column: 9, scope: !608)
!617 = !DILocation(line: 147, column: 15, scope: !608)
!618 = !DILocation(line: 147, column: 27, scope: !608)
!619 = !DILocation(line: 148, column: 9, scope: !608)
!620 = distinct !{!620, !591, !621, !198}
!621 = !DILocation(line: 149, column: 5, scope: !580)
!622 = !DILocation(line: 151, column: 12, scope: !580)
!623 = !DILocation(line: 151, column: 5, scope: !580)
!624 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !625, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DISubroutineType(types: !626)
!626 = !{!23}
!627 = !DILocation(line: 158, column: 5, scope: !624)
!628 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !625, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DILocation(line: 163, column: 5, scope: !628)
!630 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !625, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DILocation(line: 168, column: 13, scope: !630)
!632 = !DILocation(line: 168, column: 20, scope: !630)
!633 = !DILocation(line: 168, column: 5, scope: !630)
!634 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!635 = !DILocation(line: 187, column: 16, scope: !634)
!636 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!637 = !DILocation(line: 188, column: 16, scope: !636)
!638 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!639 = !DILocation(line: 189, column: 16, scope: !638)
!640 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!641 = !DILocation(line: 190, column: 16, scope: !640)
!642 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!643 = !DILocation(line: 191, column: 16, scope: !642)
!644 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!645 = !DILocation(line: 192, column: 16, scope: !644)
!646 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!647 = !DILocation(line: 193, column: 16, scope: !646)
!648 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!649 = !DILocation(line: 194, column: 16, scope: !648)
!650 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!651 = !DILocation(line: 195, column: 16, scope: !650)
!652 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!653 = !DILocation(line: 198, column: 15, scope: !652)
!654 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!655 = !DILocation(line: 199, column: 15, scope: !654)
!656 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!657 = !DILocation(line: 200, column: 15, scope: !656)
!658 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!659 = !DILocation(line: 201, column: 15, scope: !658)
!660 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!661 = !DILocation(line: 202, column: 15, scope: !660)
!662 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!663 = !DILocation(line: 203, column: 15, scope: !662)
!664 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!665 = !DILocation(line: 204, column: 15, scope: !664)
!666 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!667 = !DILocation(line: 205, column: 15, scope: !666)
!668 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!669 = !DILocation(line: 206, column: 15, scope: !668)
