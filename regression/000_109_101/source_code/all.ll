; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
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
define dso_local void @badSink(i8* %data) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %i, metadata !57, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %n, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load i8*, i8** %data.addr, align 8, !dbg !64
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !66
  %cmp = icmp eq i32 %call, 1, !dbg !67
  br i1 %cmp, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !69
  store i32 0, i32* %i, align 4, !dbg !71
  br label %for.cond, !dbg !73

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !74
  %2 = load i32, i32* %n, align 4, !dbg !76
  %cmp1 = icmp slt i32 %1, %2, !dbg !77
  br i1 %cmp1, label %for.body, label %for.end, !dbg !78

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !79
  %inc = add nsw i32 %3, 1, !dbg !79
  store i32 %inc, i32* %intVariable, align 4, !dbg !79
  br label %for.inc, !dbg !81

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !82
  %inc2 = add nsw i32 %4, 1, !dbg !82
  store i32 %inc2, i32* %i, align 4, !dbg !82
  br label %for.cond, !dbg !83, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !87
  call void @printIntLine(i32 %5), !dbg !88
  br label %if.end, !dbg !89

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !90
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_44_bad() #0 !dbg !91 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !96, metadata !DIExpression()), !dbg !98
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !99, metadata !DIExpression()), !dbg !103
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !103
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !103
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !104
  store i8* %arraydecay, i8** %data, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !106, metadata !DIExpression()), !dbg !111
  %1 = load i8*, i8** %data, align 8, !dbg !112
  %call = call i64 @strlen(i8* %1) #8, !dbg !113
  store i64 %call, i64* %dataLen, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !114, metadata !DIExpression()), !dbg !170
  %2 = load i64, i64* %dataLen, align 8, !dbg !171
  %sub = sub i64 100, %2, !dbg !173
  %cmp = icmp ugt i64 %sub, 1, !dbg !174
  br i1 %cmp, label %if.then, label %if.end11, !dbg !175

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !176
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !178
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !179
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !181
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !182

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !183
  %5 = load i64, i64* %dataLen, align 8, !dbg !186
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !187
  %6 = load i64, i64* %dataLen, align 8, !dbg !188
  %sub4 = sub i64 100, %6, !dbg !189
  %conv = trunc i64 %sub4 to i32, !dbg !190
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !191
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !192
  %cmp6 = icmp eq i8* %call5, null, !dbg !193
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !194

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !195
  %8 = load i8*, i8** %data, align 8, !dbg !197
  %9 = load i64, i64* %dataLen, align 8, !dbg !198
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !197
  store i8 0, i8* %arrayidx, align 1, !dbg !199
  br label %if.end, !dbg !200

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !201
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !202
  br label %if.end10, !dbg !203

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !204

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !205
  %12 = load i8*, i8** %data, align 8, !dbg !206
  call void %11(i8* %12), !dbg !205
  ret void, !dbg !207
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #5

declare dso_local i32 @fclose(%struct._IO_FILE*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !208 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %i, metadata !211, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %n, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !216, metadata !DIExpression()), !dbg !217
  %0 = load i8*, i8** %data.addr, align 8, !dbg !218
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !220
  %cmp = icmp eq i32 %call, 1, !dbg !221
  br i1 %cmp, label %if.then, label %if.end, !dbg !222

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !223
  store i32 0, i32* %i, align 4, !dbg !225
  br label %for.cond, !dbg !227

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !228
  %2 = load i32, i32* %n, align 4, !dbg !230
  %cmp1 = icmp slt i32 %1, %2, !dbg !231
  br i1 %cmp1, label %for.body, label %for.end, !dbg !232

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !233
  %inc = add nsw i32 %3, 1, !dbg !233
  store i32 %inc, i32* %intVariable, align 4, !dbg !233
  br label %for.inc, !dbg !235

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !236
  %inc2 = add nsw i32 %4, 1, !dbg !236
  store i32 %inc2, i32* %i, align 4, !dbg !236
  br label %for.cond, !dbg !237, !llvm.loop !238

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !240
  call void @printIntLine(i32 %5), !dbg !241
  br label %if.end, !dbg !242

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !244 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !247, metadata !DIExpression()), !dbg !248
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !249, metadata !DIExpression()), !dbg !250
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !250
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !250
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !251
  store i8* %arraydecay, i8** %data, align 8, !dbg !252
  %1 = load i8*, i8** %data, align 8, !dbg !253
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !254
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !255
  %3 = load i8*, i8** %data, align 8, !dbg !256
  call void %2(i8* %3), !dbg !255
  ret void, !dbg !257
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !258 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %i, metadata !261, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata i32* %n, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !266, metadata !DIExpression()), !dbg !267
  %0 = load i8*, i8** %data.addr, align 8, !dbg !268
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !270
  %cmp = icmp eq i32 %call, 1, !dbg !271
  br i1 %cmp, label %if.then, label %if.end5, !dbg !272

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !273
  %cmp1 = icmp slt i32 %1, 10000, !dbg !276
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !277

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !278
  store i32 0, i32* %i, align 4, !dbg !280
  br label %for.cond, !dbg !282

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !283
  %3 = load i32, i32* %n, align 4, !dbg !285
  %cmp3 = icmp slt i32 %2, %3, !dbg !286
  br i1 %cmp3, label %for.body, label %for.end, !dbg !287

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !288
  %inc = add nsw i32 %4, 1, !dbg !288
  store i32 %inc, i32* %intVariable, align 4, !dbg !288
  br label %for.inc, !dbg !290

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !291
  %inc4 = add nsw i32 %5, 1, !dbg !291
  store i32 %inc4, i32* %i, align 4, !dbg !291
  br label %for.cond, !dbg !292, !llvm.loop !293

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !295
  call void @printIntLine(i32 %6), !dbg !296
  br label %if.end, !dbg !297

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !298

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !299
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !300 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !303, metadata !DIExpression()), !dbg !304
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !304
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !306
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !306
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !307
  store i8* %arraydecay, i8** %data, align 8, !dbg !308
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !309, metadata !DIExpression()), !dbg !311
  %1 = load i8*, i8** %data, align 8, !dbg !312
  %call = call i64 @strlen(i8* %1) #8, !dbg !313
  store i64 %call, i64* %dataLen, align 8, !dbg !311
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !314, metadata !DIExpression()), !dbg !315
  %2 = load i64, i64* %dataLen, align 8, !dbg !316
  %sub = sub i64 100, %2, !dbg !318
  %cmp = icmp ugt i64 %sub, 1, !dbg !319
  br i1 %cmp, label %if.then, label %if.end11, !dbg !320

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !321
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !323
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !324
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !326
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !327

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !328
  %5 = load i64, i64* %dataLen, align 8, !dbg !331
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !332
  %6 = load i64, i64* %dataLen, align 8, !dbg !333
  %sub4 = sub i64 100, %6, !dbg !334
  %conv = trunc i64 %sub4 to i32, !dbg !335
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !336
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !337
  %cmp6 = icmp eq i8* %call5, null, !dbg !338
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !339

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !340
  %8 = load i8*, i8** %data, align 8, !dbg !342
  %9 = load i64, i64* %dataLen, align 8, !dbg !343
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !342
  store i8 0, i8* %arrayidx, align 1, !dbg !344
  br label %if.end, !dbg !345

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !346
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !347
  br label %if.end10, !dbg !348

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !349

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !350
  %12 = load i8*, i8** %data, align 8, !dbg !351
  call void %11(i8* %12), !dbg !350
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_44_good() #0 !dbg !353 {
entry:
  call void @goodG2B(), !dbg !354
  call void @goodB2G(), !dbg !355
  ret void, !dbg !356
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !357 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !360
  %0 = load i8*, i8** %line.addr, align 8, !dbg !361
  %cmp = icmp ne i8* %0, null, !dbg !363
  br i1 %cmp, label %if.then, label %if.end, !dbg !364

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !365
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !367
  br label %if.end, !dbg !368

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !369
  ret void, !dbg !370
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !371 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i8*, i8** %line.addr, align 8, !dbg !374
  %cmp = icmp ne i8* %0, null, !dbg !376
  br i1 %cmp, label %if.then, label %if.end, !dbg !377

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !380
  br label %if.end, !dbg !381

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !383 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load i32*, i32** %line.addr, align 8, !dbg !390
  %cmp = icmp ne i32* %0, null, !dbg !392
  br i1 %cmp, label %if.then, label %if.end, !dbg !393

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !394
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !396
  br label %if.end, !dbg !397

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !398
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !399 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !404
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.11, i64 0, i64 0), i32 %0), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !407 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !413
  %conv = sext i16 %0 to i32, !dbg !413
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.12, i64 0, i64 0), i32 %conv), !dbg !414
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !416 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !420, metadata !DIExpression()), !dbg !421
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !422
  %conv = fpext float %0 to double, !dbg !422
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !425 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !431
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !433 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !439, metadata !DIExpression()), !dbg !440
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !441
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !442
  ret void, !dbg !443
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !444 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !447, metadata !DIExpression()), !dbg !448
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !449
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !452 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !457
  %conv = sext i8 %0 to i32, !dbg !457
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !460 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !463, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !465, metadata !DIExpression()), !dbg !469
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !470
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !471
  store i32 %0, i32* %arrayidx, align 4, !dbg !472
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !473
  store i32 0, i32* %arrayidx1, align 4, !dbg !474
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !475
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !476
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !478 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !481, metadata !DIExpression()), !dbg !482
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !486 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !489, metadata !DIExpression()), !dbg !490
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !491
  %conv = zext i8 %0 to i32, !dbg !491
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !492
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !494 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !498, metadata !DIExpression()), !dbg !499
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !500
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !501
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !503 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !513, metadata !DIExpression()), !dbg !514
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !515
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !516
  %1 = load i32, i32* %intOne, align 4, !dbg !516
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !517
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !518
  %3 = load i32, i32* %intTwo, align 4, !dbg !518
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !519
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !521 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !525, metadata !DIExpression()), !dbg !526
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !527, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.declare(metadata i64* %i, metadata !529, metadata !DIExpression()), !dbg !530
  store i64 0, i64* %i, align 8, !dbg !531
  br label %for.cond, !dbg !533

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !534
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !536
  %cmp = icmp ult i64 %0, %1, !dbg !537
  br i1 %cmp, label %for.body, label %for.end, !dbg !538

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !539
  %3 = load i64, i64* %i, align 8, !dbg !541
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !539
  %4 = load i8, i8* %arrayidx, align 1, !dbg !539
  %conv = zext i8 %4 to i32, !dbg !539
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !542
  br label %for.inc, !dbg !543

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !544
  %inc = add i64 %5, 1, !dbg !544
  store i64 %inc, i64* %i, align 8, !dbg !544
  br label %for.cond, !dbg !545, !llvm.loop !546

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !548
  ret void, !dbg !549
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !550 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !553, metadata !DIExpression()), !dbg !554
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !555, metadata !DIExpression()), !dbg !556
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !559, metadata !DIExpression()), !dbg !560
  store i64 0, i64* %numWritten, align 8, !dbg !560
  br label %while.cond, !dbg !561

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !562
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !563
  %cmp = icmp ult i64 %0, %1, !dbg !564
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !565

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !566
  %2 = load i16*, i16** %call, align 8, !dbg !566
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !566
  %4 = load i64, i64* %numWritten, align 8, !dbg !566
  %mul = mul i64 2, %4, !dbg !566
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !566
  %5 = load i8, i8* %arrayidx, align 1, !dbg !566
  %conv = sext i8 %5 to i32, !dbg !566
  %idxprom = sext i32 %conv to i64, !dbg !566
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !566
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !566
  %conv2 = zext i16 %6 to i32, !dbg !566
  %and = and i32 %conv2, 4096, !dbg !566
  %tobool = icmp ne i32 %and, 0, !dbg !566
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !567

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !568
  %7 = load i16*, i16** %call3, align 8, !dbg !568
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !568
  %9 = load i64, i64* %numWritten, align 8, !dbg !568
  %mul4 = mul i64 2, %9, !dbg !568
  %add = add i64 %mul4, 1, !dbg !568
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !568
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !568
  %conv6 = sext i8 %10 to i32, !dbg !568
  %idxprom7 = sext i32 %conv6 to i64, !dbg !568
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !568
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !568
  %conv9 = zext i16 %11 to i32, !dbg !568
  %and10 = and i32 %conv9, 4096, !dbg !568
  %tobool11 = icmp ne i32 %and10, 0, !dbg !567
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !569
  br i1 %12, label %while.body, label %while.end, !dbg !561

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !570, metadata !DIExpression()), !dbg !572
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !573
  %14 = load i64, i64* %numWritten, align 8, !dbg !574
  %mul12 = mul i64 2, %14, !dbg !575
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !573
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !576
  %15 = load i32, i32* %byte, align 4, !dbg !577
  %conv15 = trunc i32 %15 to i8, !dbg !578
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !579
  %17 = load i64, i64* %numWritten, align 8, !dbg !580
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !579
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !581
  %18 = load i64, i64* %numWritten, align 8, !dbg !582
  %inc = add i64 %18, 1, !dbg !582
  store i64 %inc, i64* %numWritten, align 8, !dbg !582
  br label %while.cond, !dbg !561, !llvm.loop !583

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !585
  ret i64 %19, !dbg !586
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !587 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !590, metadata !DIExpression()), !dbg !591
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !592, metadata !DIExpression()), !dbg !593
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !594, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !596, metadata !DIExpression()), !dbg !597
  store i64 0, i64* %numWritten, align 8, !dbg !597
  br label %while.cond, !dbg !598

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !599
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !600
  %cmp = icmp ult i64 %0, %1, !dbg !601
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !602

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !603
  %3 = load i64, i64* %numWritten, align 8, !dbg !604
  %mul = mul i64 2, %3, !dbg !605
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !603
  %4 = load i32, i32* %arrayidx, align 4, !dbg !603
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !606
  %tobool = icmp ne i32 %call, 0, !dbg !606
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !607

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !608
  %6 = load i64, i64* %numWritten, align 8, !dbg !609
  %mul1 = mul i64 2, %6, !dbg !610
  %add = add i64 %mul1, 1, !dbg !611
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !608
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !608
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !612
  %tobool4 = icmp ne i32 %call3, 0, !dbg !607
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !613
  br i1 %8, label %while.body, label %while.end, !dbg !598

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !614, metadata !DIExpression()), !dbg !616
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !617
  %10 = load i64, i64* %numWritten, align 8, !dbg !618
  %mul5 = mul i64 2, %10, !dbg !619
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !617
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !620
  %11 = load i32, i32* %byte, align 4, !dbg !621
  %conv = trunc i32 %11 to i8, !dbg !622
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !623
  %13 = load i64, i64* %numWritten, align 8, !dbg !624
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !623
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !625
  %14 = load i64, i64* %numWritten, align 8, !dbg !626
  %inc = add i64 %14, 1, !dbg !626
  store i64 %inc, i64* %numWritten, align 8, !dbg !626
  br label %while.cond, !dbg !598, !llvm.loop !627

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !629
  ret i64 %15, !dbg !630
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !631 {
entry:
  ret i32 1, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !635 {
entry:
  ret i32 0, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !637 {
entry:
  %call = call i32 @rand() #7, !dbg !638
  %rem = srem i32 %call, 2, !dbg !639
  ret i32 %rem, !dbg !640
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !641 {
entry:
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_101/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_101/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSink", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !42}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 35, type: !42)
!56 = !DILocation(line: 35, column: 21, scope: !52)
!57 = !DILocalVariable(name: "i", scope: !58, file: !45, line: 38, type: !23)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 37, column: 5)
!59 = !DILocation(line: 38, column: 13, scope: !58)
!60 = !DILocalVariable(name: "n", scope: !58, file: !45, line: 38, type: !23)
!61 = !DILocation(line: 38, column: 16, scope: !58)
!62 = !DILocalVariable(name: "intVariable", scope: !58, file: !45, line: 38, type: !23)
!63 = !DILocation(line: 38, column: 19, scope: !58)
!64 = !DILocation(line: 39, column: 20, scope: !65)
!65 = distinct !DILexicalBlock(scope: !58, file: !45, line: 39, column: 13)
!66 = !DILocation(line: 39, column: 13, scope: !65)
!67 = !DILocation(line: 39, column: 36, scope: !65)
!68 = !DILocation(line: 39, column: 13, scope: !58)
!69 = !DILocation(line: 42, column: 25, scope: !70)
!70 = distinct !DILexicalBlock(scope: !65, file: !45, line: 40, column: 9)
!71 = !DILocation(line: 43, column: 20, scope: !72)
!72 = distinct !DILexicalBlock(scope: !70, file: !45, line: 43, column: 13)
!73 = !DILocation(line: 43, column: 18, scope: !72)
!74 = !DILocation(line: 43, column: 25, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !45, line: 43, column: 13)
!76 = !DILocation(line: 43, column: 29, scope: !75)
!77 = !DILocation(line: 43, column: 27, scope: !75)
!78 = !DILocation(line: 43, column: 13, scope: !72)
!79 = !DILocation(line: 46, column: 28, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !45, line: 44, column: 13)
!81 = !DILocation(line: 47, column: 13, scope: !80)
!82 = !DILocation(line: 43, column: 33, scope: !75)
!83 = !DILocation(line: 43, column: 13, scope: !75)
!84 = distinct !{!84, !78, !85, !86}
!85 = !DILocation(line: 47, column: 13, scope: !72)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !DILocation(line: 48, column: 26, scope: !70)
!88 = !DILocation(line: 48, column: 13, scope: !70)
!89 = !DILocation(line: 49, column: 9, scope: !70)
!90 = !DILocation(line: 51, column: 1, scope: !52)
!91 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_44_bad", scope: !45, file: !45, line: 53, type: !92, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!92 = !DISubroutineType(types: !93)
!93 = !{null}
!94 = !DILocalVariable(name: "data", scope: !91, file: !45, line: 55, type: !42)
!95 = !DILocation(line: 55, column: 12, scope: !91)
!96 = !DILocalVariable(name: "funcPtr", scope: !91, file: !45, line: 57, type: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!98 = !DILocation(line: 57, column: 12, scope: !91)
!99 = !DILocalVariable(name: "dataBuffer", scope: !91, file: !45, line: 58, type: !100)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 100)
!103 = !DILocation(line: 58, column: 10, scope: !91)
!104 = !DILocation(line: 59, column: 12, scope: !91)
!105 = !DILocation(line: 59, column: 10, scope: !91)
!106 = !DILocalVariable(name: "dataLen", scope: !107, file: !45, line: 62, type: !108)
!107 = distinct !DILexicalBlock(scope: !91, file: !45, line: 60, column: 5)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DILocation(line: 62, column: 16, scope: !107)
!112 = !DILocation(line: 62, column: 33, scope: !107)
!113 = !DILocation(line: 62, column: 26, scope: !107)
!114 = !DILocalVariable(name: "pFile", scope: !107, file: !45, line: 63, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !117, line: 7, baseType: !118)
!117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !119, line: 49, size: 1728, elements: !120)
!119 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !136, !138, !139, !140, !144, !145, !147, !151, !154, !156, !159, !162, !163, !164, !165, !166}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !118, file: !119, line: 51, baseType: !23, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !118, file: !119, line: 54, baseType: !42, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !118, file: !119, line: 55, baseType: !42, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !118, file: !119, line: 56, baseType: !42, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !118, file: !119, line: 57, baseType: !42, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !118, file: !119, line: 58, baseType: !42, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !118, file: !119, line: 59, baseType: !42, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !118, file: !119, line: 60, baseType: !42, size: 64, offset: 448)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !118, file: !119, line: 61, baseType: !42, size: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !118, file: !119, line: 64, baseType: !42, size: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !118, file: !119, line: 65, baseType: !42, size: 64, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !118, file: !119, line: 66, baseType: !42, size: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !118, file: !119, line: 68, baseType: !134, size: 64, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !119, line: 36, flags: DIFlagFwdDecl)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !118, file: !119, line: 70, baseType: !137, size: 64, offset: 832)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !118, file: !119, line: 72, baseType: !23, size: 32, offset: 896)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !118, file: !119, line: 73, baseType: !23, size: 32, offset: 928)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !118, file: !119, line: 74, baseType: !141, size: 64, offset: 960)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !142, line: 152, baseType: !143)
!142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!143 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !118, file: !119, line: 77, baseType: !24, size: 16, offset: 1024)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !118, file: !119, line: 78, baseType: !146, size: 8, offset: 1040)
!146 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !118, file: !119, line: 79, baseType: !148, size: 8, offset: 1048)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 1)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !118, file: !119, line: 81, baseType: !152, size: 64, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !119, line: 43, baseType: null)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !118, file: !119, line: 89, baseType: !155, size: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !142, line: 153, baseType: !143)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !118, file: !119, line: 91, baseType: !157, size: 64, offset: 1216)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !119, line: 37, flags: DIFlagFwdDecl)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !118, file: !119, line: 92, baseType: !160, size: 64, offset: 1280)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !119, line: 38, flags: DIFlagFwdDecl)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !118, file: !119, line: 93, baseType: !137, size: 64, offset: 1344)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !118, file: !119, line: 94, baseType: !22, size: 64, offset: 1408)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !118, file: !119, line: 95, baseType: !108, size: 64, offset: 1472)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !118, file: !119, line: 96, baseType: !23, size: 32, offset: 1536)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !118, file: !119, line: 98, baseType: !167, size: 160, offset: 1568)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 20)
!170 = !DILocation(line: 63, column: 16, scope: !107)
!171 = !DILocation(line: 65, column: 17, scope: !172)
!172 = distinct !DILexicalBlock(scope: !107, file: !45, line: 65, column: 13)
!173 = !DILocation(line: 65, column: 16, scope: !172)
!174 = !DILocation(line: 65, column: 25, scope: !172)
!175 = !DILocation(line: 65, column: 13, scope: !107)
!176 = !DILocation(line: 67, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !172, file: !45, line: 66, column: 9)
!178 = !DILocation(line: 67, column: 19, scope: !177)
!179 = !DILocation(line: 68, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !45, line: 68, column: 17)
!181 = !DILocation(line: 68, column: 23, scope: !180)
!182 = !DILocation(line: 68, column: 17, scope: !177)
!183 = !DILocation(line: 71, column: 27, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !45, line: 71, column: 21)
!185 = distinct !DILexicalBlock(scope: !180, file: !45, line: 69, column: 13)
!186 = !DILocation(line: 71, column: 32, scope: !184)
!187 = !DILocation(line: 71, column: 31, scope: !184)
!188 = !DILocation(line: 71, column: 51, scope: !184)
!189 = !DILocation(line: 71, column: 50, scope: !184)
!190 = !DILocation(line: 71, column: 41, scope: !184)
!191 = !DILocation(line: 71, column: 61, scope: !184)
!192 = !DILocation(line: 71, column: 21, scope: !184)
!193 = !DILocation(line: 71, column: 68, scope: !184)
!194 = !DILocation(line: 71, column: 21, scope: !185)
!195 = !DILocation(line: 73, column: 21, scope: !196)
!196 = distinct !DILexicalBlock(scope: !184, file: !45, line: 72, column: 17)
!197 = !DILocation(line: 75, column: 21, scope: !196)
!198 = !DILocation(line: 75, column: 26, scope: !196)
!199 = !DILocation(line: 75, column: 35, scope: !196)
!200 = !DILocation(line: 76, column: 17, scope: !196)
!201 = !DILocation(line: 77, column: 24, scope: !185)
!202 = !DILocation(line: 77, column: 17, scope: !185)
!203 = !DILocation(line: 78, column: 13, scope: !185)
!204 = !DILocation(line: 79, column: 9, scope: !177)
!205 = !DILocation(line: 82, column: 5, scope: !91)
!206 = !DILocation(line: 82, column: 13, scope: !91)
!207 = !DILocation(line: 83, column: 1, scope: !91)
!208 = distinct !DISubprogram(name: "goodG2BSink", scope: !45, file: !45, line: 90, type: !53, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!209 = !DILocalVariable(name: "data", arg: 1, scope: !208, file: !45, line: 90, type: !42)
!210 = !DILocation(line: 90, column: 25, scope: !208)
!211 = !DILocalVariable(name: "i", scope: !212, file: !45, line: 93, type: !23)
!212 = distinct !DILexicalBlock(scope: !208, file: !45, line: 92, column: 5)
!213 = !DILocation(line: 93, column: 13, scope: !212)
!214 = !DILocalVariable(name: "n", scope: !212, file: !45, line: 93, type: !23)
!215 = !DILocation(line: 93, column: 16, scope: !212)
!216 = !DILocalVariable(name: "intVariable", scope: !212, file: !45, line: 93, type: !23)
!217 = !DILocation(line: 93, column: 19, scope: !212)
!218 = !DILocation(line: 94, column: 20, scope: !219)
!219 = distinct !DILexicalBlock(scope: !212, file: !45, line: 94, column: 13)
!220 = !DILocation(line: 94, column: 13, scope: !219)
!221 = !DILocation(line: 94, column: 36, scope: !219)
!222 = !DILocation(line: 94, column: 13, scope: !212)
!223 = !DILocation(line: 97, column: 25, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !45, line: 95, column: 9)
!225 = !DILocation(line: 98, column: 20, scope: !226)
!226 = distinct !DILexicalBlock(scope: !224, file: !45, line: 98, column: 13)
!227 = !DILocation(line: 98, column: 18, scope: !226)
!228 = !DILocation(line: 98, column: 25, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !45, line: 98, column: 13)
!230 = !DILocation(line: 98, column: 29, scope: !229)
!231 = !DILocation(line: 98, column: 27, scope: !229)
!232 = !DILocation(line: 98, column: 13, scope: !226)
!233 = !DILocation(line: 101, column: 28, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !45, line: 99, column: 13)
!235 = !DILocation(line: 102, column: 13, scope: !234)
!236 = !DILocation(line: 98, column: 33, scope: !229)
!237 = !DILocation(line: 98, column: 13, scope: !229)
!238 = distinct !{!238, !232, !239, !86}
!239 = !DILocation(line: 102, column: 13, scope: !226)
!240 = !DILocation(line: 103, column: 26, scope: !224)
!241 = !DILocation(line: 103, column: 13, scope: !224)
!242 = !DILocation(line: 104, column: 9, scope: !224)
!243 = !DILocation(line: 106, column: 1, scope: !208)
!244 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 108, type: !92, scopeLine: 109, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!245 = !DILocalVariable(name: "data", scope: !244, file: !45, line: 110, type: !42)
!246 = !DILocation(line: 110, column: 12, scope: !244)
!247 = !DILocalVariable(name: "funcPtr", scope: !244, file: !45, line: 111, type: !97)
!248 = !DILocation(line: 111, column: 12, scope: !244)
!249 = !DILocalVariable(name: "dataBuffer", scope: !244, file: !45, line: 112, type: !100)
!250 = !DILocation(line: 112, column: 10, scope: !244)
!251 = !DILocation(line: 113, column: 12, scope: !244)
!252 = !DILocation(line: 113, column: 10, scope: !244)
!253 = !DILocation(line: 115, column: 12, scope: !244)
!254 = !DILocation(line: 115, column: 5, scope: !244)
!255 = !DILocation(line: 116, column: 5, scope: !244)
!256 = !DILocation(line: 116, column: 13, scope: !244)
!257 = !DILocation(line: 117, column: 1, scope: !244)
!258 = distinct !DISubprogram(name: "goodB2GSink", scope: !45, file: !45, line: 120, type: !53, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!259 = !DILocalVariable(name: "data", arg: 1, scope: !258, file: !45, line: 120, type: !42)
!260 = !DILocation(line: 120, column: 25, scope: !258)
!261 = !DILocalVariable(name: "i", scope: !262, file: !45, line: 123, type: !23)
!262 = distinct !DILexicalBlock(scope: !258, file: !45, line: 122, column: 5)
!263 = !DILocation(line: 123, column: 13, scope: !262)
!264 = !DILocalVariable(name: "n", scope: !262, file: !45, line: 123, type: !23)
!265 = !DILocation(line: 123, column: 16, scope: !262)
!266 = !DILocalVariable(name: "intVariable", scope: !262, file: !45, line: 123, type: !23)
!267 = !DILocation(line: 123, column: 19, scope: !262)
!268 = !DILocation(line: 124, column: 20, scope: !269)
!269 = distinct !DILexicalBlock(scope: !262, file: !45, line: 124, column: 13)
!270 = !DILocation(line: 124, column: 13, scope: !269)
!271 = !DILocation(line: 124, column: 36, scope: !269)
!272 = !DILocation(line: 124, column: 13, scope: !262)
!273 = !DILocation(line: 127, column: 17, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !45, line: 127, column: 17)
!275 = distinct !DILexicalBlock(scope: !269, file: !45, line: 125, column: 9)
!276 = !DILocation(line: 127, column: 19, scope: !274)
!277 = !DILocation(line: 127, column: 17, scope: !275)
!278 = !DILocation(line: 129, column: 29, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !45, line: 128, column: 13)
!280 = !DILocation(line: 130, column: 24, scope: !281)
!281 = distinct !DILexicalBlock(scope: !279, file: !45, line: 130, column: 17)
!282 = !DILocation(line: 130, column: 22, scope: !281)
!283 = !DILocation(line: 130, column: 29, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !45, line: 130, column: 17)
!285 = !DILocation(line: 130, column: 33, scope: !284)
!286 = !DILocation(line: 130, column: 31, scope: !284)
!287 = !DILocation(line: 130, column: 17, scope: !281)
!288 = !DILocation(line: 133, column: 32, scope: !289)
!289 = distinct !DILexicalBlock(scope: !284, file: !45, line: 131, column: 17)
!290 = !DILocation(line: 134, column: 17, scope: !289)
!291 = !DILocation(line: 130, column: 37, scope: !284)
!292 = !DILocation(line: 130, column: 17, scope: !284)
!293 = distinct !{!293, !287, !294, !86}
!294 = !DILocation(line: 134, column: 17, scope: !281)
!295 = !DILocation(line: 135, column: 30, scope: !279)
!296 = !DILocation(line: 135, column: 17, scope: !279)
!297 = !DILocation(line: 136, column: 13, scope: !279)
!298 = !DILocation(line: 137, column: 9, scope: !275)
!299 = !DILocation(line: 139, column: 1, scope: !258)
!300 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 141, type: !92, scopeLine: 142, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!301 = !DILocalVariable(name: "data", scope: !300, file: !45, line: 143, type: !42)
!302 = !DILocation(line: 143, column: 12, scope: !300)
!303 = !DILocalVariable(name: "funcPtr", scope: !300, file: !45, line: 144, type: !97)
!304 = !DILocation(line: 144, column: 12, scope: !300)
!305 = !DILocalVariable(name: "dataBuffer", scope: !300, file: !45, line: 145, type: !100)
!306 = !DILocation(line: 145, column: 10, scope: !300)
!307 = !DILocation(line: 146, column: 12, scope: !300)
!308 = !DILocation(line: 146, column: 10, scope: !300)
!309 = !DILocalVariable(name: "dataLen", scope: !310, file: !45, line: 149, type: !108)
!310 = distinct !DILexicalBlock(scope: !300, file: !45, line: 147, column: 5)
!311 = !DILocation(line: 149, column: 16, scope: !310)
!312 = !DILocation(line: 149, column: 33, scope: !310)
!313 = !DILocation(line: 149, column: 26, scope: !310)
!314 = !DILocalVariable(name: "pFile", scope: !310, file: !45, line: 150, type: !115)
!315 = !DILocation(line: 150, column: 16, scope: !310)
!316 = !DILocation(line: 152, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !310, file: !45, line: 152, column: 13)
!318 = !DILocation(line: 152, column: 16, scope: !317)
!319 = !DILocation(line: 152, column: 25, scope: !317)
!320 = !DILocation(line: 152, column: 13, scope: !310)
!321 = !DILocation(line: 154, column: 21, scope: !322)
!322 = distinct !DILexicalBlock(scope: !317, file: !45, line: 153, column: 9)
!323 = !DILocation(line: 154, column: 19, scope: !322)
!324 = !DILocation(line: 155, column: 17, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !45, line: 155, column: 17)
!326 = !DILocation(line: 155, column: 23, scope: !325)
!327 = !DILocation(line: 155, column: 17, scope: !322)
!328 = !DILocation(line: 158, column: 27, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !45, line: 158, column: 21)
!330 = distinct !DILexicalBlock(scope: !325, file: !45, line: 156, column: 13)
!331 = !DILocation(line: 158, column: 32, scope: !329)
!332 = !DILocation(line: 158, column: 31, scope: !329)
!333 = !DILocation(line: 158, column: 51, scope: !329)
!334 = !DILocation(line: 158, column: 50, scope: !329)
!335 = !DILocation(line: 158, column: 41, scope: !329)
!336 = !DILocation(line: 158, column: 61, scope: !329)
!337 = !DILocation(line: 158, column: 21, scope: !329)
!338 = !DILocation(line: 158, column: 68, scope: !329)
!339 = !DILocation(line: 158, column: 21, scope: !330)
!340 = !DILocation(line: 160, column: 21, scope: !341)
!341 = distinct !DILexicalBlock(scope: !329, file: !45, line: 159, column: 17)
!342 = !DILocation(line: 162, column: 21, scope: !341)
!343 = !DILocation(line: 162, column: 26, scope: !341)
!344 = !DILocation(line: 162, column: 35, scope: !341)
!345 = !DILocation(line: 163, column: 17, scope: !341)
!346 = !DILocation(line: 164, column: 24, scope: !330)
!347 = !DILocation(line: 164, column: 17, scope: !330)
!348 = !DILocation(line: 165, column: 13, scope: !330)
!349 = !DILocation(line: 166, column: 9, scope: !322)
!350 = !DILocation(line: 168, column: 5, scope: !300)
!351 = !DILocation(line: 168, column: 13, scope: !300)
!352 = !DILocation(line: 169, column: 1, scope: !300)
!353 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_44_good", scope: !45, file: !45, line: 171, type: !92, scopeLine: 172, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!354 = !DILocation(line: 173, column: 5, scope: !353)
!355 = !DILocation(line: 174, column: 5, scope: !353)
!356 = !DILocation(line: 175, column: 1, scope: !353)
!357 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !53, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!358 = !DILocalVariable(name: "line", arg: 1, scope: !357, file: !3, line: 11, type: !42)
!359 = !DILocation(line: 11, column: 25, scope: !357)
!360 = !DILocation(line: 13, column: 1, scope: !357)
!361 = !DILocation(line: 14, column: 8, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !3, line: 14, column: 8)
!363 = !DILocation(line: 14, column: 13, scope: !362)
!364 = !DILocation(line: 14, column: 8, scope: !357)
!365 = !DILocation(line: 16, column: 24, scope: !366)
!366 = distinct !DILexicalBlock(scope: !362, file: !3, line: 15, column: 5)
!367 = !DILocation(line: 16, column: 9, scope: !366)
!368 = !DILocation(line: 17, column: 5, scope: !366)
!369 = !DILocation(line: 18, column: 5, scope: !357)
!370 = !DILocation(line: 19, column: 1, scope: !357)
!371 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !53, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!372 = !DILocalVariable(name: "line", arg: 1, scope: !371, file: !3, line: 20, type: !42)
!373 = !DILocation(line: 20, column: 29, scope: !371)
!374 = !DILocation(line: 22, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !3, line: 22, column: 8)
!376 = !DILocation(line: 22, column: 13, scope: !375)
!377 = !DILocation(line: 22, column: 8, scope: !371)
!378 = !DILocation(line: 24, column: 24, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !3, line: 23, column: 5)
!380 = !DILocation(line: 24, column: 9, scope: !379)
!381 = !DILocation(line: 25, column: 5, scope: !379)
!382 = !DILocation(line: 26, column: 1, scope: !371)
!383 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !384, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !109, line: 74, baseType: !23)
!388 = !DILocalVariable(name: "line", arg: 1, scope: !383, file: !3, line: 27, type: !386)
!389 = !DILocation(line: 27, column: 29, scope: !383)
!390 = !DILocation(line: 29, column: 8, scope: !391)
!391 = distinct !DILexicalBlock(scope: !383, file: !3, line: 29, column: 8)
!392 = !DILocation(line: 29, column: 13, scope: !391)
!393 = !DILocation(line: 29, column: 8, scope: !383)
!394 = !DILocation(line: 31, column: 27, scope: !395)
!395 = distinct !DILexicalBlock(scope: !391, file: !3, line: 30, column: 5)
!396 = !DILocation(line: 31, column: 9, scope: !395)
!397 = !DILocation(line: 32, column: 5, scope: !395)
!398 = !DILocation(line: 33, column: 1, scope: !383)
!399 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !400, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !23}
!402 = !DILocalVariable(name: "intNumber", arg: 1, scope: !399, file: !3, line: 35, type: !23)
!403 = !DILocation(line: 35, column: 24, scope: !399)
!404 = !DILocation(line: 37, column: 20, scope: !399)
!405 = !DILocation(line: 37, column: 5, scope: !399)
!406 = !DILocation(line: 38, column: 1, scope: !399)
!407 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !408, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !410}
!410 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!411 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !407, file: !3, line: 40, type: !410)
!412 = !DILocation(line: 40, column: 28, scope: !407)
!413 = !DILocation(line: 42, column: 21, scope: !407)
!414 = !DILocation(line: 42, column: 5, scope: !407)
!415 = !DILocation(line: 43, column: 1, scope: !407)
!416 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !417, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !419}
!419 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!420 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !416, file: !3, line: 45, type: !419)
!421 = !DILocation(line: 45, column: 28, scope: !416)
!422 = !DILocation(line: 47, column: 20, scope: !416)
!423 = !DILocation(line: 47, column: 5, scope: !416)
!424 = !DILocation(line: 48, column: 1, scope: !416)
!425 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !426, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !143}
!428 = !DILocalVariable(name: "longNumber", arg: 1, scope: !425, file: !3, line: 50, type: !143)
!429 = !DILocation(line: 50, column: 26, scope: !425)
!430 = !DILocation(line: 52, column: 21, scope: !425)
!431 = !DILocation(line: 52, column: 5, scope: !425)
!432 = !DILocation(line: 53, column: 1, scope: !425)
!433 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !434, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436}
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !437, line: 27, baseType: !438)
!437 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !142, line: 44, baseType: !143)
!439 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !433, file: !3, line: 55, type: !436)
!440 = !DILocation(line: 55, column: 33, scope: !433)
!441 = !DILocation(line: 57, column: 29, scope: !433)
!442 = !DILocation(line: 57, column: 5, scope: !433)
!443 = !DILocation(line: 58, column: 1, scope: !433)
!444 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !445, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !108}
!447 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !444, file: !3, line: 60, type: !108)
!448 = !DILocation(line: 60, column: 29, scope: !444)
!449 = !DILocation(line: 62, column: 21, scope: !444)
!450 = !DILocation(line: 62, column: 5, scope: !444)
!451 = !DILocation(line: 63, column: 1, scope: !444)
!452 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !453, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !43}
!455 = !DILocalVariable(name: "charHex", arg: 1, scope: !452, file: !3, line: 65, type: !43)
!456 = !DILocation(line: 65, column: 29, scope: !452)
!457 = !DILocation(line: 67, column: 22, scope: !452)
!458 = !DILocation(line: 67, column: 5, scope: !452)
!459 = !DILocation(line: 68, column: 1, scope: !452)
!460 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !461, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !387}
!463 = !DILocalVariable(name: "wideChar", arg: 1, scope: !460, file: !3, line: 70, type: !387)
!464 = !DILocation(line: 70, column: 29, scope: !460)
!465 = !DILocalVariable(name: "s", scope: !460, file: !3, line: 74, type: !466)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 64, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 2)
!469 = !DILocation(line: 74, column: 13, scope: !460)
!470 = !DILocation(line: 75, column: 16, scope: !460)
!471 = !DILocation(line: 75, column: 9, scope: !460)
!472 = !DILocation(line: 75, column: 14, scope: !460)
!473 = !DILocation(line: 76, column: 9, scope: !460)
!474 = !DILocation(line: 76, column: 14, scope: !460)
!475 = !DILocation(line: 77, column: 21, scope: !460)
!476 = !DILocation(line: 77, column: 5, scope: !460)
!477 = !DILocation(line: 78, column: 1, scope: !460)
!478 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !479, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !7}
!481 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !478, file: !3, line: 80, type: !7)
!482 = !DILocation(line: 80, column: 33, scope: !478)
!483 = !DILocation(line: 82, column: 20, scope: !478)
!484 = !DILocation(line: 82, column: 5, scope: !478)
!485 = !DILocation(line: 83, column: 1, scope: !478)
!486 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !487, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !25}
!489 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !486, file: !3, line: 85, type: !25)
!490 = !DILocation(line: 85, column: 45, scope: !486)
!491 = !DILocation(line: 87, column: 22, scope: !486)
!492 = !DILocation(line: 87, column: 5, scope: !486)
!493 = !DILocation(line: 88, column: 1, scope: !486)
!494 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !495, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !497}
!497 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!498 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !494, file: !3, line: 90, type: !497)
!499 = !DILocation(line: 90, column: 29, scope: !494)
!500 = !DILocation(line: 92, column: 20, scope: !494)
!501 = !DILocation(line: 92, column: 5, scope: !494)
!502 = !DILocation(line: 93, column: 1, scope: !494)
!503 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !504, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !508, line: 100, baseType: !509)
!508 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_101/source_code")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !508, line: 96, size: 64, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !509, file: !508, line: 98, baseType: !23, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !509, file: !508, line: 99, baseType: !23, size: 32, offset: 32)
!513 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !503, file: !3, line: 95, type: !506)
!514 = !DILocation(line: 95, column: 40, scope: !503)
!515 = !DILocation(line: 97, column: 26, scope: !503)
!516 = !DILocation(line: 97, column: 47, scope: !503)
!517 = !DILocation(line: 97, column: 55, scope: !503)
!518 = !DILocation(line: 97, column: 76, scope: !503)
!519 = !DILocation(line: 97, column: 5, scope: !503)
!520 = !DILocation(line: 98, column: 1, scope: !503)
!521 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !522, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !524, !108}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!525 = !DILocalVariable(name: "bytes", arg: 1, scope: !521, file: !3, line: 100, type: !524)
!526 = !DILocation(line: 100, column: 38, scope: !521)
!527 = !DILocalVariable(name: "numBytes", arg: 2, scope: !521, file: !3, line: 100, type: !108)
!528 = !DILocation(line: 100, column: 52, scope: !521)
!529 = !DILocalVariable(name: "i", scope: !521, file: !3, line: 102, type: !108)
!530 = !DILocation(line: 102, column: 12, scope: !521)
!531 = !DILocation(line: 103, column: 12, scope: !532)
!532 = distinct !DILexicalBlock(scope: !521, file: !3, line: 103, column: 5)
!533 = !DILocation(line: 103, column: 10, scope: !532)
!534 = !DILocation(line: 103, column: 17, scope: !535)
!535 = distinct !DILexicalBlock(scope: !532, file: !3, line: 103, column: 5)
!536 = !DILocation(line: 103, column: 21, scope: !535)
!537 = !DILocation(line: 103, column: 19, scope: !535)
!538 = !DILocation(line: 103, column: 5, scope: !532)
!539 = !DILocation(line: 105, column: 24, scope: !540)
!540 = distinct !DILexicalBlock(scope: !535, file: !3, line: 104, column: 5)
!541 = !DILocation(line: 105, column: 30, scope: !540)
!542 = !DILocation(line: 105, column: 9, scope: !540)
!543 = !DILocation(line: 106, column: 5, scope: !540)
!544 = !DILocation(line: 103, column: 31, scope: !535)
!545 = !DILocation(line: 103, column: 5, scope: !535)
!546 = distinct !{!546, !538, !547, !86}
!547 = !DILocation(line: 106, column: 5, scope: !532)
!548 = !DILocation(line: 107, column: 5, scope: !521)
!549 = !DILocation(line: 108, column: 1, scope: !521)
!550 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !551, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DISubroutineType(types: !552)
!552 = !{!108, !524, !108, !42}
!553 = !DILocalVariable(name: "bytes", arg: 1, scope: !550, file: !3, line: 113, type: !524)
!554 = !DILocation(line: 113, column: 39, scope: !550)
!555 = !DILocalVariable(name: "numBytes", arg: 2, scope: !550, file: !3, line: 113, type: !108)
!556 = !DILocation(line: 113, column: 53, scope: !550)
!557 = !DILocalVariable(name: "hex", arg: 3, scope: !550, file: !3, line: 113, type: !42)
!558 = !DILocation(line: 113, column: 71, scope: !550)
!559 = !DILocalVariable(name: "numWritten", scope: !550, file: !3, line: 115, type: !108)
!560 = !DILocation(line: 115, column: 12, scope: !550)
!561 = !DILocation(line: 121, column: 5, scope: !550)
!562 = !DILocation(line: 121, column: 12, scope: !550)
!563 = !DILocation(line: 121, column: 25, scope: !550)
!564 = !DILocation(line: 121, column: 23, scope: !550)
!565 = !DILocation(line: 121, column: 34, scope: !550)
!566 = !DILocation(line: 121, column: 37, scope: !550)
!567 = !DILocation(line: 121, column: 67, scope: !550)
!568 = !DILocation(line: 121, column: 70, scope: !550)
!569 = !DILocation(line: 0, scope: !550)
!570 = !DILocalVariable(name: "byte", scope: !571, file: !3, line: 123, type: !23)
!571 = distinct !DILexicalBlock(scope: !550, file: !3, line: 122, column: 5)
!572 = !DILocation(line: 123, column: 13, scope: !571)
!573 = !DILocation(line: 124, column: 17, scope: !571)
!574 = !DILocation(line: 124, column: 25, scope: !571)
!575 = !DILocation(line: 124, column: 23, scope: !571)
!576 = !DILocation(line: 124, column: 9, scope: !571)
!577 = !DILocation(line: 125, column: 45, scope: !571)
!578 = !DILocation(line: 125, column: 29, scope: !571)
!579 = !DILocation(line: 125, column: 9, scope: !571)
!580 = !DILocation(line: 125, column: 15, scope: !571)
!581 = !DILocation(line: 125, column: 27, scope: !571)
!582 = !DILocation(line: 126, column: 9, scope: !571)
!583 = distinct !{!583, !561, !584, !86}
!584 = !DILocation(line: 127, column: 5, scope: !550)
!585 = !DILocation(line: 129, column: 12, scope: !550)
!586 = !DILocation(line: 129, column: 5, scope: !550)
!587 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !588, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DISubroutineType(types: !589)
!589 = !{!108, !524, !108, !386}
!590 = !DILocalVariable(name: "bytes", arg: 1, scope: !587, file: !3, line: 135, type: !524)
!591 = !DILocation(line: 135, column: 41, scope: !587)
!592 = !DILocalVariable(name: "numBytes", arg: 2, scope: !587, file: !3, line: 135, type: !108)
!593 = !DILocation(line: 135, column: 55, scope: !587)
!594 = !DILocalVariable(name: "hex", arg: 3, scope: !587, file: !3, line: 135, type: !386)
!595 = !DILocation(line: 135, column: 76, scope: !587)
!596 = !DILocalVariable(name: "numWritten", scope: !587, file: !3, line: 137, type: !108)
!597 = !DILocation(line: 137, column: 12, scope: !587)
!598 = !DILocation(line: 143, column: 5, scope: !587)
!599 = !DILocation(line: 143, column: 12, scope: !587)
!600 = !DILocation(line: 143, column: 25, scope: !587)
!601 = !DILocation(line: 143, column: 23, scope: !587)
!602 = !DILocation(line: 143, column: 34, scope: !587)
!603 = !DILocation(line: 143, column: 47, scope: !587)
!604 = !DILocation(line: 143, column: 55, scope: !587)
!605 = !DILocation(line: 143, column: 53, scope: !587)
!606 = !DILocation(line: 143, column: 37, scope: !587)
!607 = !DILocation(line: 143, column: 68, scope: !587)
!608 = !DILocation(line: 143, column: 81, scope: !587)
!609 = !DILocation(line: 143, column: 89, scope: !587)
!610 = !DILocation(line: 143, column: 87, scope: !587)
!611 = !DILocation(line: 143, column: 100, scope: !587)
!612 = !DILocation(line: 143, column: 71, scope: !587)
!613 = !DILocation(line: 0, scope: !587)
!614 = !DILocalVariable(name: "byte", scope: !615, file: !3, line: 145, type: !23)
!615 = distinct !DILexicalBlock(scope: !587, file: !3, line: 144, column: 5)
!616 = !DILocation(line: 145, column: 13, scope: !615)
!617 = !DILocation(line: 146, column: 18, scope: !615)
!618 = !DILocation(line: 146, column: 26, scope: !615)
!619 = !DILocation(line: 146, column: 24, scope: !615)
!620 = !DILocation(line: 146, column: 9, scope: !615)
!621 = !DILocation(line: 147, column: 45, scope: !615)
!622 = !DILocation(line: 147, column: 29, scope: !615)
!623 = !DILocation(line: 147, column: 9, scope: !615)
!624 = !DILocation(line: 147, column: 15, scope: !615)
!625 = !DILocation(line: 147, column: 27, scope: !615)
!626 = !DILocation(line: 148, column: 9, scope: !615)
!627 = distinct !{!627, !598, !628, !86}
!628 = !DILocation(line: 149, column: 5, scope: !587)
!629 = !DILocation(line: 151, column: 12, scope: !587)
!630 = !DILocation(line: 151, column: 5, scope: !587)
!631 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !632, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DISubroutineType(types: !633)
!633 = !{!23}
!634 = !DILocation(line: 158, column: 5, scope: !631)
!635 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !632, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 163, column: 5, scope: !635)
!637 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !632, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 168, column: 13, scope: !637)
!639 = !DILocation(line: 168, column: 20, scope: !637)
!640 = !DILocation(line: 168, column: 5, scope: !637)
!641 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !92, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DILocation(line: 187, column: 16, scope: !641)
!643 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !92, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 188, column: 16, scope: !643)
!645 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !92, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!646 = !DILocation(line: 189, column: 16, scope: !645)
!647 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !92, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DILocation(line: 190, column: 16, scope: !647)
!649 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !92, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 191, column: 16, scope: !649)
!651 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !92, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 192, column: 16, scope: !651)
!653 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !92, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 193, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !92, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DILocation(line: 194, column: 16, scope: !655)
!657 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !92, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 195, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !92, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 198, column: 15, scope: !659)
!661 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !92, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 199, column: 15, scope: !661)
!663 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !92, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 200, column: 15, scope: !663)
!665 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !92, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 201, column: 15, scope: !665)
!667 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !92, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 202, column: 15, scope: !667)
!669 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !92, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 203, column: 15, scope: !669)
!671 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !92, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 204, column: 15, scope: !671)
!673 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !92, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 205, column: 15, scope: !673)
!675 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !92, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 206, column: 15, scope: !675)
