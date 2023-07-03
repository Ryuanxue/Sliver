; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@badStatic = dso_local global i32 0, align 4, !dbg !0
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !9
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !11
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !13
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
@.str.6 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.8 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.9 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.13 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6.14 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
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
define dso_local void @badSink(i8* %data) #0 !dbg !61 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load i32, i32* @badStatic, align 4, !dbg !66
  %tobool = icmp ne i32 %0, 0, !dbg !66
  br i1 %tobool, label %if.then, label %if.end4, !dbg !68

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !69, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %n, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !75, metadata !DIExpression()), !dbg !76
  %1 = load i8*, i8** %data.addr, align 8, !dbg !77
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !79
  %cmp = icmp eq i32 %call, 1, !dbg !80
  br i1 %cmp, label %if.then1, label %if.end, !dbg !81

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !82
  store i32 0, i32* %i, align 4, !dbg !84
  br label %for.cond, !dbg !86

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !87
  %3 = load i32, i32* %n, align 4, !dbg !89
  %cmp2 = icmp slt i32 %2, %3, !dbg !90
  br i1 %cmp2, label %for.body, label %for.end, !dbg !91

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !92
  %inc = add nsw i32 %4, 1, !dbg !92
  store i32 %inc, i32* %intVariable, align 4, !dbg !92
  br label %for.inc, !dbg !94

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !95
  %inc3 = add nsw i32 %5, 1, !dbg !95
  store i32 %inc3, i32* %i, align 4, !dbg !95
  br label %for.cond, !dbg !96, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !100
  call void @printIntLine(i32 %6), !dbg !101
  br label %if.end, !dbg !102

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !103

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !104
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_21_bad() #0 !dbg !105 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !110, metadata !DIExpression()), !dbg !114
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !114
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !114
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !115
  store i8* %arraydecay, i8** %data, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !117, metadata !DIExpression()), !dbg !122
  %1 = load i8*, i8** %data, align 8, !dbg !123
  %call = call i64 @strlen(i8* %1) #8, !dbg !124
  store i64 %call, i64* %dataLen, align 8, !dbg !122
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !125, metadata !DIExpression()), !dbg !181
  %2 = load i64, i64* %dataLen, align 8, !dbg !182
  %sub = sub i64 100, %2, !dbg !184
  %cmp = icmp ugt i64 %sub, 1, !dbg !185
  br i1 %cmp, label %if.then, label %if.end11, !dbg !186

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !187
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !189
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !190
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !192
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !193

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !194
  %5 = load i64, i64* %dataLen, align 8, !dbg !197
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !198
  %6 = load i64, i64* %dataLen, align 8, !dbg !199
  %sub4 = sub i64 100, %6, !dbg !200
  %conv = trunc i64 %sub4 to i32, !dbg !201
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !202
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !203
  %cmp6 = icmp eq i8* %call5, null, !dbg !204
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !205

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !206
  %8 = load i8*, i8** %data, align 8, !dbg !208
  %9 = load i64, i64* %dataLen, align 8, !dbg !209
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !208
  store i8 0, i8* %arrayidx, align 1, !dbg !210
  br label %if.end, !dbg !211

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !212
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !213
  br label %if.end10, !dbg !214

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !215

if.end11:                                         ; preds = %if.end10, %entry
  store i32 1, i32* @badStatic, align 4, !dbg !216
  %11 = load i8*, i8** %data, align 8, !dbg !217
  call void @badSink(i8* %11), !dbg !218
  ret void, !dbg !219
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #5

declare dso_local i32 @fclose(%struct._IO_FILE*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1Sink(i8* %data) #0 !dbg !220 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !223
  %tobool = icmp ne i32 %0, 0, !dbg !223
  br i1 %tobool, label %if.then, label %if.else, !dbg !225

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !226
  br label %if.end7, !dbg !228

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !229, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata i32* %n, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !235, metadata !DIExpression()), !dbg !236
  %1 = load i8*, i8** %data.addr, align 8, !dbg !237
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !239
  %cmp = icmp eq i32 %call, 1, !dbg !240
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !241

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %n, align 4, !dbg !242
  %cmp2 = icmp slt i32 %2, 10000, !dbg !245
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !246

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !247
  store i32 0, i32* %i, align 4, !dbg !249
  br label %for.cond, !dbg !251

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !252
  %4 = load i32, i32* %n, align 4, !dbg !254
  %cmp4 = icmp slt i32 %3, %4, !dbg !255
  br i1 %cmp4, label %for.body, label %for.end, !dbg !256

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !257
  %inc = add nsw i32 %5, 1, !dbg !257
  store i32 %inc, i32* %intVariable, align 4, !dbg !257
  br label %for.inc, !dbg !259

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !260
  %inc5 = add nsw i32 %6, 1, !dbg !260
  store i32 %inc5, i32* %i, align 4, !dbg !260
  br label %for.cond, !dbg !261, !llvm.loop !262

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !264
  call void @printIntLine(i32 %7), !dbg !265
  br label %if.end, !dbg !266

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !267

if.end6:                                          ; preds = %if.end, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !269 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !273
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !273
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !274
  store i8* %arraydecay, i8** %data, align 8, !dbg !275
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !276, metadata !DIExpression()), !dbg !278
  %1 = load i8*, i8** %data, align 8, !dbg !279
  %call = call i64 @strlen(i8* %1) #8, !dbg !280
  store i64 %call, i64* %dataLen, align 8, !dbg !278
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !281, metadata !DIExpression()), !dbg !282
  %2 = load i64, i64* %dataLen, align 8, !dbg !283
  %sub = sub i64 100, %2, !dbg !285
  %cmp = icmp ugt i64 %sub, 1, !dbg !286
  br i1 %cmp, label %if.then, label %if.end11, !dbg !287

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !288
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !290
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !291
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !293
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !294

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !295
  %5 = load i64, i64* %dataLen, align 8, !dbg !298
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !299
  %6 = load i64, i64* %dataLen, align 8, !dbg !300
  %sub4 = sub i64 100, %6, !dbg !301
  %conv = trunc i64 %sub4 to i32, !dbg !302
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !303
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !304
  %cmp6 = icmp eq i8* %call5, null, !dbg !305
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !306

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !307
  %8 = load i8*, i8** %data, align 8, !dbg !309
  %9 = load i64, i64* %dataLen, align 8, !dbg !310
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !309
  store i8 0, i8* %arrayidx, align 1, !dbg !311
  br label %if.end, !dbg !312

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !313
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !314
  br label %if.end10, !dbg !315

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !316

if.end11:                                         ; preds = %if.end10, %entry
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !317
  %11 = load i8*, i8** %data, align 8, !dbg !318
  call void @goodB2G1Sink(i8* %11), !dbg !319
  ret void, !dbg !320
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2Sink(i8* %data) #0 !dbg !321 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !324
  %tobool = icmp ne i32 %0, 0, !dbg !324
  br i1 %tobool, label %if.then, label %if.end7, !dbg !326

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !327, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata i32* %n, metadata !331, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !333, metadata !DIExpression()), !dbg !334
  %1 = load i8*, i8** %data.addr, align 8, !dbg !335
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !337
  %cmp = icmp eq i32 %call, 1, !dbg !338
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !339

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4, !dbg !340
  %cmp2 = icmp slt i32 %2, 10000, !dbg !343
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !344

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !345
  store i32 0, i32* %i, align 4, !dbg !347
  br label %for.cond, !dbg !349

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !350
  %4 = load i32, i32* %n, align 4, !dbg !352
  %cmp4 = icmp slt i32 %3, %4, !dbg !353
  br i1 %cmp4, label %for.body, label %for.end, !dbg !354

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !355
  %inc = add nsw i32 %5, 1, !dbg !355
  store i32 %inc, i32* %intVariable, align 4, !dbg !355
  br label %for.inc, !dbg !357

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !358
  %inc5 = add nsw i32 %6, 1, !dbg !358
  store i32 %inc5, i32* %i, align 4, !dbg !358
  br label %for.cond, !dbg !359, !llvm.loop !360

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !362
  call void @printIntLine(i32 %7), !dbg !363
  br label %if.end, !dbg !364

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !365

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7, !dbg !366

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !368 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !372
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !372
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !373
  store i8* %arraydecay, i8** %data, align 8, !dbg !374
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !375, metadata !DIExpression()), !dbg !377
  %1 = load i8*, i8** %data, align 8, !dbg !378
  %call = call i64 @strlen(i8* %1) #8, !dbg !379
  store i64 %call, i64* %dataLen, align 8, !dbg !377
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !380, metadata !DIExpression()), !dbg !381
  %2 = load i64, i64* %dataLen, align 8, !dbg !382
  %sub = sub i64 100, %2, !dbg !384
  %cmp = icmp ugt i64 %sub, 1, !dbg !385
  br i1 %cmp, label %if.then, label %if.end11, !dbg !386

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !387
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !389
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !390
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !392
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !393

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !394
  %5 = load i64, i64* %dataLen, align 8, !dbg !397
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !398
  %6 = load i64, i64* %dataLen, align 8, !dbg !399
  %sub4 = sub i64 100, %6, !dbg !400
  %conv = trunc i64 %sub4 to i32, !dbg !401
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !402
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !403
  %cmp6 = icmp eq i8* %call5, null, !dbg !404
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !405

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !406
  %8 = load i8*, i8** %data, align 8, !dbg !408
  %9 = load i64, i64* %dataLen, align 8, !dbg !409
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !408
  store i8 0, i8* %arrayidx, align 1, !dbg !410
  br label %if.end, !dbg !411

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !412
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !413
  br label %if.end10, !dbg !414

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !415

if.end11:                                         ; preds = %if.end10, %entry
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !416
  %11 = load i8*, i8** %data, align 8, !dbg !417
  call void @goodB2G2Sink(i8* %11), !dbg !418
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !420 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !421, metadata !DIExpression()), !dbg !422
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !423
  %tobool = icmp ne i32 %0, 0, !dbg !423
  br i1 %tobool, label %if.then, label %if.end4, !dbg !425

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !426, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata i32* %n, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !432, metadata !DIExpression()), !dbg !433
  %1 = load i8*, i8** %data.addr, align 8, !dbg !434
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !436
  %cmp = icmp eq i32 %call, 1, !dbg !437
  br i1 %cmp, label %if.then1, label %if.end, !dbg !438

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !439
  store i32 0, i32* %i, align 4, !dbg !441
  br label %for.cond, !dbg !443

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !444
  %3 = load i32, i32* %n, align 4, !dbg !446
  %cmp2 = icmp slt i32 %2, %3, !dbg !447
  br i1 %cmp2, label %for.body, label %for.end, !dbg !448

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !449
  %inc = add nsw i32 %4, 1, !dbg !449
  store i32 %inc, i32* %intVariable, align 4, !dbg !449
  br label %for.inc, !dbg !451

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !452
  %inc3 = add nsw i32 %5, 1, !dbg !452
  store i32 %inc3, i32* %i, align 4, !dbg !452
  br label %for.cond, !dbg !453, !llvm.loop !454

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !456
  call void @printIntLine(i32 %6), !dbg !457
  br label %if.end, !dbg !458

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !459

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !461 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !462, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !465
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !465
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !466
  store i8* %arraydecay, i8** %data, align 8, !dbg !467
  %1 = load i8*, i8** %data, align 8, !dbg !468
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !469
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !470
  %2 = load i8*, i8** %data, align 8, !dbg !471
  call void @goodG2BSink(i8* %2), !dbg !472
  ret void, !dbg !473
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_21_good() #0 !dbg !474 {
entry:
  call void @goodB2G1(), !dbg !475
  call void @goodB2G2(), !dbg !476
  call void @goodG2B(), !dbg !477
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !479 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !480, metadata !DIExpression()), !dbg !481
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !482
  %0 = load i8*, i8** %line.addr, align 8, !dbg !483
  %cmp = icmp ne i8* %0, null, !dbg !485
  br i1 %cmp, label %if.then, label %if.end, !dbg !486

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !487
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !489
  br label %if.end, !dbg !490

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.8, i64 0, i64 0)), !dbg !491
  ret void, !dbg !492
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !493 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load i8*, i8** %line.addr, align 8, !dbg !496
  %cmp = icmp ne i8* %0, null, !dbg !498
  br i1 %cmp, label %if.then, label %if.end, !dbg !499

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !500
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !502
  br label %if.end, !dbg !503

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !505 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load i32*, i32** %line.addr, align 8, !dbg !512
  %cmp = icmp ne i32* %0, null, !dbg !514
  br i1 %cmp, label %if.then, label %if.end, !dbg !515

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !516
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !518
  br label %if.end, !dbg !519

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !520
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !521 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !524, metadata !DIExpression()), !dbg !525
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !526
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.12, i64 0, i64 0), i32 %0), !dbg !527
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !529 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !533, metadata !DIExpression()), !dbg !534
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !535
  %conv = sext i16 %0 to i32, !dbg !535
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.13, i64 0, i64 0), i32 %conv), !dbg !536
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !538 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !542, metadata !DIExpression()), !dbg !543
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !544
  %conv = fpext float %0 to double, !dbg !544
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.14, i64 0, i64 0), double %conv), !dbg !545
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !547 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !550, metadata !DIExpression()), !dbg !551
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !552
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !553
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !555 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !561, metadata !DIExpression()), !dbg !562
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !563
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !564
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !566 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !569, metadata !DIExpression()), !dbg !570
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !571
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !572
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !574 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !577, metadata !DIExpression()), !dbg !578
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !579
  %conv = sext i8 %0 to i32, !dbg !579
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !580
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !582 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !585, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !587, metadata !DIExpression()), !dbg !591
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !592
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !593
  store i32 %0, i32* %arrayidx, align 4, !dbg !594
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !595
  store i32 0, i32* %arrayidx1, align 4, !dbg !596
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !597
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !598
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !600 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !603, metadata !DIExpression()), !dbg !604
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !605
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !606
  ret void, !dbg !607
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !608 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !611, metadata !DIExpression()), !dbg !612
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !613
  %conv = zext i8 %0 to i32, !dbg !613
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !614
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !616 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !620, metadata !DIExpression()), !dbg !621
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !622
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !623
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !625 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !635, metadata !DIExpression()), !dbg !636
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !637
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !638
  %1 = load i32, i32* %intOne, align 4, !dbg !638
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !639
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !640
  %3 = load i32, i32* %intTwo, align 4, !dbg !640
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !641
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !643 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !647, metadata !DIExpression()), !dbg !648
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !649, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.declare(metadata i64* %i, metadata !651, metadata !DIExpression()), !dbg !652
  store i64 0, i64* %i, align 8, !dbg !653
  br label %for.cond, !dbg !655

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !656
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !658
  %cmp = icmp ult i64 %0, %1, !dbg !659
  br i1 %cmp, label %for.body, label %for.end, !dbg !660

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !661
  %3 = load i64, i64* %i, align 8, !dbg !663
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !661
  %4 = load i8, i8* %arrayidx, align 1, !dbg !661
  %conv = zext i8 %4 to i32, !dbg !661
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !664
  br label %for.inc, !dbg !665

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !666
  %inc = add i64 %5, 1, !dbg !666
  store i64 %inc, i64* %i, align 8, !dbg !666
  br label %for.cond, !dbg !667, !llvm.loop !668

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !670
  ret void, !dbg !671
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !672 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !675, metadata !DIExpression()), !dbg !676
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !677, metadata !DIExpression()), !dbg !678
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !681, metadata !DIExpression()), !dbg !682
  store i64 0, i64* %numWritten, align 8, !dbg !682
  br label %while.cond, !dbg !683

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !684
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !685
  %cmp = icmp ult i64 %0, %1, !dbg !686
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !687

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !688
  %2 = load i16*, i16** %call, align 8, !dbg !688
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !688
  %4 = load i64, i64* %numWritten, align 8, !dbg !688
  %mul = mul i64 2, %4, !dbg !688
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !688
  %5 = load i8, i8* %arrayidx, align 1, !dbg !688
  %conv = sext i8 %5 to i32, !dbg !688
  %idxprom = sext i32 %conv to i64, !dbg !688
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !688
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !688
  %conv2 = zext i16 %6 to i32, !dbg !688
  %and = and i32 %conv2, 4096, !dbg !688
  %tobool = icmp ne i32 %and, 0, !dbg !688
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !689

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !690
  %7 = load i16*, i16** %call3, align 8, !dbg !690
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !690
  %9 = load i64, i64* %numWritten, align 8, !dbg !690
  %mul4 = mul i64 2, %9, !dbg !690
  %add = add i64 %mul4, 1, !dbg !690
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !690
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !690
  %conv6 = sext i8 %10 to i32, !dbg !690
  %idxprom7 = sext i32 %conv6 to i64, !dbg !690
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !690
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !690
  %conv9 = zext i16 %11 to i32, !dbg !690
  %and10 = and i32 %conv9, 4096, !dbg !690
  %tobool11 = icmp ne i32 %and10, 0, !dbg !689
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !691
  br i1 %12, label %while.body, label %while.end, !dbg !683

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !692, metadata !DIExpression()), !dbg !694
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !695
  %14 = load i64, i64* %numWritten, align 8, !dbg !696
  %mul12 = mul i64 2, %14, !dbg !697
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !695
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !698
  %15 = load i32, i32* %byte, align 4, !dbg !699
  %conv15 = trunc i32 %15 to i8, !dbg !700
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !701
  %17 = load i64, i64* %numWritten, align 8, !dbg !702
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !701
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !703
  %18 = load i64, i64* %numWritten, align 8, !dbg !704
  %inc = add i64 %18, 1, !dbg !704
  store i64 %inc, i64* %numWritten, align 8, !dbg !704
  br label %while.cond, !dbg !683, !llvm.loop !705

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !707
  ret i64 %19, !dbg !708
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !709 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !712, metadata !DIExpression()), !dbg !713
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !714, metadata !DIExpression()), !dbg !715
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !716, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !718, metadata !DIExpression()), !dbg !719
  store i64 0, i64* %numWritten, align 8, !dbg !719
  br label %while.cond, !dbg !720

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !721
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !722
  %cmp = icmp ult i64 %0, %1, !dbg !723
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !724

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !725
  %3 = load i64, i64* %numWritten, align 8, !dbg !726
  %mul = mul i64 2, %3, !dbg !727
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !725
  %4 = load i32, i32* %arrayidx, align 4, !dbg !725
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !728
  %tobool = icmp ne i32 %call, 0, !dbg !728
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !729

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !730
  %6 = load i64, i64* %numWritten, align 8, !dbg !731
  %mul1 = mul i64 2, %6, !dbg !732
  %add = add i64 %mul1, 1, !dbg !733
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !730
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !730
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !734
  %tobool4 = icmp ne i32 %call3, 0, !dbg !729
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !735
  br i1 %8, label %while.body, label %while.end, !dbg !720

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !736, metadata !DIExpression()), !dbg !738
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !739
  %10 = load i64, i64* %numWritten, align 8, !dbg !740
  %mul5 = mul i64 2, %10, !dbg !741
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !739
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !742
  %11 = load i32, i32* %byte, align 4, !dbg !743
  %conv = trunc i32 %11 to i8, !dbg !744
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !745
  %13 = load i64, i64* %numWritten, align 8, !dbg !746
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !745
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !747
  %14 = load i64, i64* %numWritten, align 8, !dbg !748
  %inc = add i64 %14, 1, !dbg !748
  store i64 %inc, i64* %numWritten, align 8, !dbg !748
  br label %while.cond, !dbg !720, !llvm.loop !749

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !751
  ret i64 %15, !dbg !752
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !753 {
entry:
  ret i32 1, !dbg !756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !757 {
entry:
  ret i32 0, !dbg !758
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !759 {
entry:
  %call = call i32 @rand() #7, !dbg !760
  %rem = srem i32 %call, 2, !dbg !761
  ret i32 %rem, !dbg !762
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !763 {
entry:
  ret void, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !765 {
entry:
  ret void, !dbg !766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !767 {
entry:
  ret void, !dbg !768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !769 {
entry:
  ret void, !dbg !770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !771 {
entry:
  ret void, !dbg !772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !773 {
entry:
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !775 {
entry:
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !777 {
entry:
  ret void, !dbg !778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !779 {
entry:
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !781 {
entry:
  ret void, !dbg !782
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !783 {
entry:
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !785 {
entry:
  ret void, !dbg !786
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !787 {
entry:
  ret void, !dbg !788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !789 {
entry:
  ret void, !dbg !790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !791 {
entry:
  ret void, !dbg !792
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !793 {
entry:
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !795 {
entry:
  ret void, !dbg !796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !797 {
entry:
  ret void, !dbg !798
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

!llvm.dbg.cu = !{!2, !17}
!llvm.ident = !{!57, !57}
!llvm.module.flags = !{!58, !59, !60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 36, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_092/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 94, type: !7, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 95, type: !7, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 96, type: !7, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !7, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_092/source_code")
!19 = !{!20}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!24 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!36 = !{!6, !7, !37, !38}
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!15, !40, !42, !44, !46, !48, !50, !52}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !17, file: !18, line: 175, type: !7, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !17, file: !18, line: 176, type: !7, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalTrue", scope: !17, file: !18, line: 181, type: !7, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalFalse", scope: !17, file: !18, line: 182, type: !7, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalFive", scope: !17, file: !18, line: 183, type: !7, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "globalArgc", scope: !17, file: !18, line: 214, type: !7, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "globalArgv", scope: !17, file: !18, line: 215, type: !54, isLocal: false, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{!"clang version 12.0.0"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 38, type: !62, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !55}
!64 = !DILocalVariable(name: "data", arg: 1, scope: !61, file: !3, line: 38, type: !55)
!65 = !DILocation(line: 38, column: 21, scope: !61)
!66 = !DILocation(line: 40, column: 8, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !3, line: 40, column: 8)
!68 = !DILocation(line: 40, column: 8, scope: !61)
!69 = !DILocalVariable(name: "i", scope: !70, file: !3, line: 43, type: !7)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 42, column: 9)
!71 = distinct !DILexicalBlock(scope: !67, file: !3, line: 41, column: 5)
!72 = !DILocation(line: 43, column: 17, scope: !70)
!73 = !DILocalVariable(name: "n", scope: !70, file: !3, line: 43, type: !7)
!74 = !DILocation(line: 43, column: 20, scope: !70)
!75 = !DILocalVariable(name: "intVariable", scope: !70, file: !3, line: 43, type: !7)
!76 = !DILocation(line: 43, column: 23, scope: !70)
!77 = !DILocation(line: 44, column: 24, scope: !78)
!78 = distinct !DILexicalBlock(scope: !70, file: !3, line: 44, column: 17)
!79 = !DILocation(line: 44, column: 17, scope: !78)
!80 = !DILocation(line: 44, column: 40, scope: !78)
!81 = !DILocation(line: 44, column: 17, scope: !70)
!82 = !DILocation(line: 47, column: 29, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !3, line: 45, column: 13)
!84 = !DILocation(line: 48, column: 24, scope: !85)
!85 = distinct !DILexicalBlock(scope: !83, file: !3, line: 48, column: 17)
!86 = !DILocation(line: 48, column: 22, scope: !85)
!87 = !DILocation(line: 48, column: 29, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !3, line: 48, column: 17)
!89 = !DILocation(line: 48, column: 33, scope: !88)
!90 = !DILocation(line: 48, column: 31, scope: !88)
!91 = !DILocation(line: 48, column: 17, scope: !85)
!92 = !DILocation(line: 51, column: 32, scope: !93)
!93 = distinct !DILexicalBlock(scope: !88, file: !3, line: 49, column: 17)
!94 = !DILocation(line: 52, column: 17, scope: !93)
!95 = !DILocation(line: 48, column: 37, scope: !88)
!96 = !DILocation(line: 48, column: 17, scope: !88)
!97 = distinct !{!97, !91, !98, !99}
!98 = !DILocation(line: 52, column: 17, scope: !85)
!99 = !{!"llvm.loop.mustprogress"}
!100 = !DILocation(line: 53, column: 30, scope: !83)
!101 = !DILocation(line: 53, column: 17, scope: !83)
!102 = !DILocation(line: 54, column: 13, scope: !83)
!103 = !DILocation(line: 56, column: 5, scope: !71)
!104 = !DILocation(line: 57, column: 1, scope: !61)
!105 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_21_bad", scope: !3, file: !3, line: 59, type: !106, scopeLine: 60, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!106 = !DISubroutineType(types: !107)
!107 = !{null}
!108 = !DILocalVariable(name: "data", scope: !105, file: !3, line: 61, type: !55)
!109 = !DILocation(line: 61, column: 12, scope: !105)
!110 = !DILocalVariable(name: "dataBuffer", scope: !105, file: !3, line: 62, type: !111)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 100)
!114 = !DILocation(line: 62, column: 10, scope: !105)
!115 = !DILocation(line: 63, column: 12, scope: !105)
!116 = !DILocation(line: 63, column: 10, scope: !105)
!117 = !DILocalVariable(name: "dataLen", scope: !118, file: !3, line: 66, type: !119)
!118 = distinct !DILexicalBlock(scope: !105, file: !3, line: 64, column: 5)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocation(line: 66, column: 16, scope: !118)
!123 = !DILocation(line: 66, column: 33, scope: !118)
!124 = !DILocation(line: 66, column: 26, scope: !118)
!125 = !DILocalVariable(name: "pFile", scope: !118, file: !3, line: 67, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !128, line: 7, baseType: !129)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !130, line: 49, size: 1728, elements: !131)
!130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !147, !149, !150, !151, !155, !156, !158, !162, !165, !167, !170, !173, !174, !175, !176, !177}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !129, file: !130, line: 51, baseType: !7, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !129, file: !130, line: 54, baseType: !55, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !129, file: !130, line: 55, baseType: !55, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !129, file: !130, line: 56, baseType: !55, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !129, file: !130, line: 57, baseType: !55, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !129, file: !130, line: 58, baseType: !55, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !129, file: !130, line: 59, baseType: !55, size: 64, offset: 384)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !129, file: !130, line: 60, baseType: !55, size: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !129, file: !130, line: 61, baseType: !55, size: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !129, file: !130, line: 64, baseType: !55, size: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !129, file: !130, line: 65, baseType: !55, size: 64, offset: 640)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !129, file: !130, line: 66, baseType: !55, size: 64, offset: 704)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !129, file: !130, line: 68, baseType: !145, size: 64, offset: 768)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !130, line: 36, flags: DIFlagFwdDecl)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !129, file: !130, line: 70, baseType: !148, size: 64, offset: 832)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !129, file: !130, line: 72, baseType: !7, size: 32, offset: 896)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !129, file: !130, line: 73, baseType: !7, size: 32, offset: 928)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !129, file: !130, line: 74, baseType: !152, size: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !153, line: 152, baseType: !154)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!154 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !129, file: !130, line: 77, baseType: !37, size: 16, offset: 1024)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !129, file: !130, line: 78, baseType: !157, size: 8, offset: 1040)
!157 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !129, file: !130, line: 79, baseType: !159, size: 8, offset: 1048)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 8, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 1)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !129, file: !130, line: 81, baseType: !163, size: 64, offset: 1088)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !130, line: 43, baseType: null)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !129, file: !130, line: 89, baseType: !166, size: 64, offset: 1152)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !153, line: 153, baseType: !154)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !129, file: !130, line: 91, baseType: !168, size: 64, offset: 1216)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !130, line: 37, flags: DIFlagFwdDecl)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !129, file: !130, line: 92, baseType: !171, size: 64, offset: 1280)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !130, line: 38, flags: DIFlagFwdDecl)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !129, file: !130, line: 93, baseType: !148, size: 64, offset: 1344)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !129, file: !130, line: 94, baseType: !6, size: 64, offset: 1408)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !129, file: !130, line: 95, baseType: !119, size: 64, offset: 1472)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !129, file: !130, line: 96, baseType: !7, size: 32, offset: 1536)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !129, file: !130, line: 98, baseType: !178, size: 160, offset: 1568)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 160, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 20)
!181 = !DILocation(line: 67, column: 16, scope: !118)
!182 = !DILocation(line: 69, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !118, file: !3, line: 69, column: 13)
!184 = !DILocation(line: 69, column: 16, scope: !183)
!185 = !DILocation(line: 69, column: 25, scope: !183)
!186 = !DILocation(line: 69, column: 13, scope: !118)
!187 = !DILocation(line: 71, column: 21, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !3, line: 70, column: 9)
!189 = !DILocation(line: 71, column: 19, scope: !188)
!190 = !DILocation(line: 72, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 72, column: 17)
!192 = !DILocation(line: 72, column: 23, scope: !191)
!193 = !DILocation(line: 72, column: 17, scope: !188)
!194 = !DILocation(line: 75, column: 27, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 75, column: 21)
!196 = distinct !DILexicalBlock(scope: !191, file: !3, line: 73, column: 13)
!197 = !DILocation(line: 75, column: 32, scope: !195)
!198 = !DILocation(line: 75, column: 31, scope: !195)
!199 = !DILocation(line: 75, column: 51, scope: !195)
!200 = !DILocation(line: 75, column: 50, scope: !195)
!201 = !DILocation(line: 75, column: 41, scope: !195)
!202 = !DILocation(line: 75, column: 61, scope: !195)
!203 = !DILocation(line: 75, column: 21, scope: !195)
!204 = !DILocation(line: 75, column: 68, scope: !195)
!205 = !DILocation(line: 75, column: 21, scope: !196)
!206 = !DILocation(line: 77, column: 21, scope: !207)
!207 = distinct !DILexicalBlock(scope: !195, file: !3, line: 76, column: 17)
!208 = !DILocation(line: 79, column: 21, scope: !207)
!209 = !DILocation(line: 79, column: 26, scope: !207)
!210 = !DILocation(line: 79, column: 35, scope: !207)
!211 = !DILocation(line: 80, column: 17, scope: !207)
!212 = !DILocation(line: 81, column: 24, scope: !196)
!213 = !DILocation(line: 81, column: 17, scope: !196)
!214 = !DILocation(line: 82, column: 13, scope: !196)
!215 = !DILocation(line: 83, column: 9, scope: !188)
!216 = !DILocation(line: 85, column: 15, scope: !105)
!217 = !DILocation(line: 86, column: 13, scope: !105)
!218 = !DILocation(line: 86, column: 5, scope: !105)
!219 = !DILocation(line: 87, column: 1, scope: !105)
!220 = distinct !DISubprogram(name: "goodB2G1Sink", scope: !3, file: !3, line: 99, type: !62, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!221 = !DILocalVariable(name: "data", arg: 1, scope: !220, file: !3, line: 99, type: !55)
!222 = !DILocation(line: 99, column: 26, scope: !220)
!223 = !DILocation(line: 101, column: 8, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !3, line: 101, column: 8)
!225 = !DILocation(line: 101, column: 8, scope: !220)
!226 = !DILocation(line: 104, column: 9, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !3, line: 102, column: 5)
!228 = !DILocation(line: 105, column: 5, scope: !227)
!229 = !DILocalVariable(name: "i", scope: !230, file: !3, line: 109, type: !7)
!230 = distinct !DILexicalBlock(scope: !231, file: !3, line: 108, column: 9)
!231 = distinct !DILexicalBlock(scope: !224, file: !3, line: 107, column: 5)
!232 = !DILocation(line: 109, column: 17, scope: !230)
!233 = !DILocalVariable(name: "n", scope: !230, file: !3, line: 109, type: !7)
!234 = !DILocation(line: 109, column: 20, scope: !230)
!235 = !DILocalVariable(name: "intVariable", scope: !230, file: !3, line: 109, type: !7)
!236 = !DILocation(line: 109, column: 23, scope: !230)
!237 = !DILocation(line: 110, column: 24, scope: !238)
!238 = distinct !DILexicalBlock(scope: !230, file: !3, line: 110, column: 17)
!239 = !DILocation(line: 110, column: 17, scope: !238)
!240 = !DILocation(line: 110, column: 40, scope: !238)
!241 = !DILocation(line: 110, column: 17, scope: !230)
!242 = !DILocation(line: 113, column: 21, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 113, column: 21)
!244 = distinct !DILexicalBlock(scope: !238, file: !3, line: 111, column: 13)
!245 = !DILocation(line: 113, column: 23, scope: !243)
!246 = !DILocation(line: 113, column: 21, scope: !244)
!247 = !DILocation(line: 115, column: 33, scope: !248)
!248 = distinct !DILexicalBlock(scope: !243, file: !3, line: 114, column: 17)
!249 = !DILocation(line: 116, column: 28, scope: !250)
!250 = distinct !DILexicalBlock(scope: !248, file: !3, line: 116, column: 21)
!251 = !DILocation(line: 116, column: 26, scope: !250)
!252 = !DILocation(line: 116, column: 33, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !3, line: 116, column: 21)
!254 = !DILocation(line: 116, column: 37, scope: !253)
!255 = !DILocation(line: 116, column: 35, scope: !253)
!256 = !DILocation(line: 116, column: 21, scope: !250)
!257 = !DILocation(line: 119, column: 36, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !3, line: 117, column: 21)
!259 = !DILocation(line: 120, column: 21, scope: !258)
!260 = !DILocation(line: 116, column: 41, scope: !253)
!261 = !DILocation(line: 116, column: 21, scope: !253)
!262 = distinct !{!262, !256, !263, !99}
!263 = !DILocation(line: 120, column: 21, scope: !250)
!264 = !DILocation(line: 121, column: 34, scope: !248)
!265 = !DILocation(line: 121, column: 21, scope: !248)
!266 = !DILocation(line: 122, column: 17, scope: !248)
!267 = !DILocation(line: 123, column: 13, scope: !244)
!268 = !DILocation(line: 126, column: 1, scope: !220)
!269 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 128, type: !106, scopeLine: 129, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!270 = !DILocalVariable(name: "data", scope: !269, file: !3, line: 130, type: !55)
!271 = !DILocation(line: 130, column: 12, scope: !269)
!272 = !DILocalVariable(name: "dataBuffer", scope: !269, file: !3, line: 131, type: !111)
!273 = !DILocation(line: 131, column: 10, scope: !269)
!274 = !DILocation(line: 132, column: 12, scope: !269)
!275 = !DILocation(line: 132, column: 10, scope: !269)
!276 = !DILocalVariable(name: "dataLen", scope: !277, file: !3, line: 135, type: !119)
!277 = distinct !DILexicalBlock(scope: !269, file: !3, line: 133, column: 5)
!278 = !DILocation(line: 135, column: 16, scope: !277)
!279 = !DILocation(line: 135, column: 33, scope: !277)
!280 = !DILocation(line: 135, column: 26, scope: !277)
!281 = !DILocalVariable(name: "pFile", scope: !277, file: !3, line: 136, type: !126)
!282 = !DILocation(line: 136, column: 16, scope: !277)
!283 = !DILocation(line: 138, column: 17, scope: !284)
!284 = distinct !DILexicalBlock(scope: !277, file: !3, line: 138, column: 13)
!285 = !DILocation(line: 138, column: 16, scope: !284)
!286 = !DILocation(line: 138, column: 25, scope: !284)
!287 = !DILocation(line: 138, column: 13, scope: !277)
!288 = !DILocation(line: 140, column: 21, scope: !289)
!289 = distinct !DILexicalBlock(scope: !284, file: !3, line: 139, column: 9)
!290 = !DILocation(line: 140, column: 19, scope: !289)
!291 = !DILocation(line: 141, column: 17, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !3, line: 141, column: 17)
!293 = !DILocation(line: 141, column: 23, scope: !292)
!294 = !DILocation(line: 141, column: 17, scope: !289)
!295 = !DILocation(line: 144, column: 27, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !3, line: 144, column: 21)
!297 = distinct !DILexicalBlock(scope: !292, file: !3, line: 142, column: 13)
!298 = !DILocation(line: 144, column: 32, scope: !296)
!299 = !DILocation(line: 144, column: 31, scope: !296)
!300 = !DILocation(line: 144, column: 51, scope: !296)
!301 = !DILocation(line: 144, column: 50, scope: !296)
!302 = !DILocation(line: 144, column: 41, scope: !296)
!303 = !DILocation(line: 144, column: 61, scope: !296)
!304 = !DILocation(line: 144, column: 21, scope: !296)
!305 = !DILocation(line: 144, column: 68, scope: !296)
!306 = !DILocation(line: 144, column: 21, scope: !297)
!307 = !DILocation(line: 146, column: 21, scope: !308)
!308 = distinct !DILexicalBlock(scope: !296, file: !3, line: 145, column: 17)
!309 = !DILocation(line: 148, column: 21, scope: !308)
!310 = !DILocation(line: 148, column: 26, scope: !308)
!311 = !DILocation(line: 148, column: 35, scope: !308)
!312 = !DILocation(line: 149, column: 17, scope: !308)
!313 = !DILocation(line: 150, column: 24, scope: !297)
!314 = !DILocation(line: 150, column: 17, scope: !297)
!315 = !DILocation(line: 151, column: 13, scope: !297)
!316 = !DILocation(line: 152, column: 9, scope: !289)
!317 = !DILocation(line: 154, column: 20, scope: !269)
!318 = !DILocation(line: 155, column: 18, scope: !269)
!319 = !DILocation(line: 155, column: 5, scope: !269)
!320 = !DILocation(line: 156, column: 1, scope: !269)
!321 = distinct !DISubprogram(name: "goodB2G2Sink", scope: !3, file: !3, line: 159, type: !62, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!322 = !DILocalVariable(name: "data", arg: 1, scope: !321, file: !3, line: 159, type: !55)
!323 = !DILocation(line: 159, column: 26, scope: !321)
!324 = !DILocation(line: 161, column: 8, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !3, line: 161, column: 8)
!326 = !DILocation(line: 161, column: 8, scope: !321)
!327 = !DILocalVariable(name: "i", scope: !328, file: !3, line: 164, type: !7)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 163, column: 9)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 162, column: 5)
!330 = !DILocation(line: 164, column: 17, scope: !328)
!331 = !DILocalVariable(name: "n", scope: !328, file: !3, line: 164, type: !7)
!332 = !DILocation(line: 164, column: 20, scope: !328)
!333 = !DILocalVariable(name: "intVariable", scope: !328, file: !3, line: 164, type: !7)
!334 = !DILocation(line: 164, column: 23, scope: !328)
!335 = !DILocation(line: 165, column: 24, scope: !336)
!336 = distinct !DILexicalBlock(scope: !328, file: !3, line: 165, column: 17)
!337 = !DILocation(line: 165, column: 17, scope: !336)
!338 = !DILocation(line: 165, column: 40, scope: !336)
!339 = !DILocation(line: 165, column: 17, scope: !328)
!340 = !DILocation(line: 168, column: 21, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !3, line: 168, column: 21)
!342 = distinct !DILexicalBlock(scope: !336, file: !3, line: 166, column: 13)
!343 = !DILocation(line: 168, column: 23, scope: !341)
!344 = !DILocation(line: 168, column: 21, scope: !342)
!345 = !DILocation(line: 170, column: 33, scope: !346)
!346 = distinct !DILexicalBlock(scope: !341, file: !3, line: 169, column: 17)
!347 = !DILocation(line: 171, column: 28, scope: !348)
!348 = distinct !DILexicalBlock(scope: !346, file: !3, line: 171, column: 21)
!349 = !DILocation(line: 171, column: 26, scope: !348)
!350 = !DILocation(line: 171, column: 33, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !3, line: 171, column: 21)
!352 = !DILocation(line: 171, column: 37, scope: !351)
!353 = !DILocation(line: 171, column: 35, scope: !351)
!354 = !DILocation(line: 171, column: 21, scope: !348)
!355 = !DILocation(line: 174, column: 36, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !3, line: 172, column: 21)
!357 = !DILocation(line: 175, column: 21, scope: !356)
!358 = !DILocation(line: 171, column: 41, scope: !351)
!359 = !DILocation(line: 171, column: 21, scope: !351)
!360 = distinct !{!360, !354, !361, !99}
!361 = !DILocation(line: 175, column: 21, scope: !348)
!362 = !DILocation(line: 176, column: 34, scope: !346)
!363 = !DILocation(line: 176, column: 21, scope: !346)
!364 = !DILocation(line: 177, column: 17, scope: !346)
!365 = !DILocation(line: 178, column: 13, scope: !342)
!366 = !DILocation(line: 180, column: 5, scope: !329)
!367 = !DILocation(line: 181, column: 1, scope: !321)
!368 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 183, type: !106, scopeLine: 184, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!369 = !DILocalVariable(name: "data", scope: !368, file: !3, line: 185, type: !55)
!370 = !DILocation(line: 185, column: 12, scope: !368)
!371 = !DILocalVariable(name: "dataBuffer", scope: !368, file: !3, line: 186, type: !111)
!372 = !DILocation(line: 186, column: 10, scope: !368)
!373 = !DILocation(line: 187, column: 12, scope: !368)
!374 = !DILocation(line: 187, column: 10, scope: !368)
!375 = !DILocalVariable(name: "dataLen", scope: !376, file: !3, line: 190, type: !119)
!376 = distinct !DILexicalBlock(scope: !368, file: !3, line: 188, column: 5)
!377 = !DILocation(line: 190, column: 16, scope: !376)
!378 = !DILocation(line: 190, column: 33, scope: !376)
!379 = !DILocation(line: 190, column: 26, scope: !376)
!380 = !DILocalVariable(name: "pFile", scope: !376, file: !3, line: 191, type: !126)
!381 = !DILocation(line: 191, column: 16, scope: !376)
!382 = !DILocation(line: 193, column: 17, scope: !383)
!383 = distinct !DILexicalBlock(scope: !376, file: !3, line: 193, column: 13)
!384 = !DILocation(line: 193, column: 16, scope: !383)
!385 = !DILocation(line: 193, column: 25, scope: !383)
!386 = !DILocation(line: 193, column: 13, scope: !376)
!387 = !DILocation(line: 195, column: 21, scope: !388)
!388 = distinct !DILexicalBlock(scope: !383, file: !3, line: 194, column: 9)
!389 = !DILocation(line: 195, column: 19, scope: !388)
!390 = !DILocation(line: 196, column: 17, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !3, line: 196, column: 17)
!392 = !DILocation(line: 196, column: 23, scope: !391)
!393 = !DILocation(line: 196, column: 17, scope: !388)
!394 = !DILocation(line: 199, column: 27, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !3, line: 199, column: 21)
!396 = distinct !DILexicalBlock(scope: !391, file: !3, line: 197, column: 13)
!397 = !DILocation(line: 199, column: 32, scope: !395)
!398 = !DILocation(line: 199, column: 31, scope: !395)
!399 = !DILocation(line: 199, column: 51, scope: !395)
!400 = !DILocation(line: 199, column: 50, scope: !395)
!401 = !DILocation(line: 199, column: 41, scope: !395)
!402 = !DILocation(line: 199, column: 61, scope: !395)
!403 = !DILocation(line: 199, column: 21, scope: !395)
!404 = !DILocation(line: 199, column: 68, scope: !395)
!405 = !DILocation(line: 199, column: 21, scope: !396)
!406 = !DILocation(line: 201, column: 21, scope: !407)
!407 = distinct !DILexicalBlock(scope: !395, file: !3, line: 200, column: 17)
!408 = !DILocation(line: 203, column: 21, scope: !407)
!409 = !DILocation(line: 203, column: 26, scope: !407)
!410 = !DILocation(line: 203, column: 35, scope: !407)
!411 = !DILocation(line: 204, column: 17, scope: !407)
!412 = !DILocation(line: 205, column: 24, scope: !396)
!413 = !DILocation(line: 205, column: 17, scope: !396)
!414 = !DILocation(line: 206, column: 13, scope: !396)
!415 = !DILocation(line: 207, column: 9, scope: !388)
!416 = !DILocation(line: 209, column: 20, scope: !368)
!417 = !DILocation(line: 210, column: 18, scope: !368)
!418 = !DILocation(line: 210, column: 5, scope: !368)
!419 = !DILocation(line: 211, column: 1, scope: !368)
!420 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 214, type: !62, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!421 = !DILocalVariable(name: "data", arg: 1, scope: !420, file: !3, line: 214, type: !55)
!422 = !DILocation(line: 214, column: 25, scope: !420)
!423 = !DILocation(line: 216, column: 8, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !3, line: 216, column: 8)
!425 = !DILocation(line: 216, column: 8, scope: !420)
!426 = !DILocalVariable(name: "i", scope: !427, file: !3, line: 219, type: !7)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 218, column: 9)
!428 = distinct !DILexicalBlock(scope: !424, file: !3, line: 217, column: 5)
!429 = !DILocation(line: 219, column: 17, scope: !427)
!430 = !DILocalVariable(name: "n", scope: !427, file: !3, line: 219, type: !7)
!431 = !DILocation(line: 219, column: 20, scope: !427)
!432 = !DILocalVariable(name: "intVariable", scope: !427, file: !3, line: 219, type: !7)
!433 = !DILocation(line: 219, column: 23, scope: !427)
!434 = !DILocation(line: 220, column: 24, scope: !435)
!435 = distinct !DILexicalBlock(scope: !427, file: !3, line: 220, column: 17)
!436 = !DILocation(line: 220, column: 17, scope: !435)
!437 = !DILocation(line: 220, column: 40, scope: !435)
!438 = !DILocation(line: 220, column: 17, scope: !427)
!439 = !DILocation(line: 223, column: 29, scope: !440)
!440 = distinct !DILexicalBlock(scope: !435, file: !3, line: 221, column: 13)
!441 = !DILocation(line: 224, column: 24, scope: !442)
!442 = distinct !DILexicalBlock(scope: !440, file: !3, line: 224, column: 17)
!443 = !DILocation(line: 224, column: 22, scope: !442)
!444 = !DILocation(line: 224, column: 29, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !3, line: 224, column: 17)
!446 = !DILocation(line: 224, column: 33, scope: !445)
!447 = !DILocation(line: 224, column: 31, scope: !445)
!448 = !DILocation(line: 224, column: 17, scope: !442)
!449 = !DILocation(line: 227, column: 32, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !3, line: 225, column: 17)
!451 = !DILocation(line: 228, column: 17, scope: !450)
!452 = !DILocation(line: 224, column: 37, scope: !445)
!453 = !DILocation(line: 224, column: 17, scope: !445)
!454 = distinct !{!454, !448, !455, !99}
!455 = !DILocation(line: 228, column: 17, scope: !442)
!456 = !DILocation(line: 229, column: 30, scope: !440)
!457 = !DILocation(line: 229, column: 17, scope: !440)
!458 = !DILocation(line: 230, column: 13, scope: !440)
!459 = !DILocation(line: 232, column: 5, scope: !428)
!460 = !DILocation(line: 233, column: 1, scope: !420)
!461 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 235, type: !106, scopeLine: 236, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!462 = !DILocalVariable(name: "data", scope: !461, file: !3, line: 237, type: !55)
!463 = !DILocation(line: 237, column: 12, scope: !461)
!464 = !DILocalVariable(name: "dataBuffer", scope: !461, file: !3, line: 238, type: !111)
!465 = !DILocation(line: 238, column: 10, scope: !461)
!466 = !DILocation(line: 239, column: 12, scope: !461)
!467 = !DILocation(line: 239, column: 10, scope: !461)
!468 = !DILocation(line: 241, column: 12, scope: !461)
!469 = !DILocation(line: 241, column: 5, scope: !461)
!470 = !DILocation(line: 242, column: 19, scope: !461)
!471 = !DILocation(line: 243, column: 17, scope: !461)
!472 = !DILocation(line: 243, column: 5, scope: !461)
!473 = !DILocation(line: 244, column: 1, scope: !461)
!474 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_21_good", scope: !3, file: !3, line: 246, type: !106, scopeLine: 247, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!475 = !DILocation(line: 248, column: 5, scope: !474)
!476 = !DILocation(line: 249, column: 5, scope: !474)
!477 = !DILocation(line: 250, column: 5, scope: !474)
!478 = !DILocation(line: 251, column: 1, scope: !474)
!479 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !62, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!480 = !DILocalVariable(name: "line", arg: 1, scope: !479, file: !18, line: 11, type: !55)
!481 = !DILocation(line: 11, column: 25, scope: !479)
!482 = !DILocation(line: 13, column: 1, scope: !479)
!483 = !DILocation(line: 14, column: 8, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !18, line: 14, column: 8)
!485 = !DILocation(line: 14, column: 13, scope: !484)
!486 = !DILocation(line: 14, column: 8, scope: !479)
!487 = !DILocation(line: 16, column: 24, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !18, line: 15, column: 5)
!489 = !DILocation(line: 16, column: 9, scope: !488)
!490 = !DILocation(line: 17, column: 5, scope: !488)
!491 = !DILocation(line: 18, column: 5, scope: !479)
!492 = !DILocation(line: 19, column: 1, scope: !479)
!493 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !62, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!494 = !DILocalVariable(name: "line", arg: 1, scope: !493, file: !18, line: 20, type: !55)
!495 = !DILocation(line: 20, column: 29, scope: !493)
!496 = !DILocation(line: 22, column: 8, scope: !497)
!497 = distinct !DILexicalBlock(scope: !493, file: !18, line: 22, column: 8)
!498 = !DILocation(line: 22, column: 13, scope: !497)
!499 = !DILocation(line: 22, column: 8, scope: !493)
!500 = !DILocation(line: 24, column: 24, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !18, line: 23, column: 5)
!502 = !DILocation(line: 24, column: 9, scope: !501)
!503 = !DILocation(line: 25, column: 5, scope: !501)
!504 = !DILocation(line: 26, column: 1, scope: !493)
!505 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !506, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !120, line: 74, baseType: !7)
!510 = !DILocalVariable(name: "line", arg: 1, scope: !505, file: !18, line: 27, type: !508)
!511 = !DILocation(line: 27, column: 29, scope: !505)
!512 = !DILocation(line: 29, column: 8, scope: !513)
!513 = distinct !DILexicalBlock(scope: !505, file: !18, line: 29, column: 8)
!514 = !DILocation(line: 29, column: 13, scope: !513)
!515 = !DILocation(line: 29, column: 8, scope: !505)
!516 = !DILocation(line: 31, column: 27, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !18, line: 30, column: 5)
!518 = !DILocation(line: 31, column: 9, scope: !517)
!519 = !DILocation(line: 32, column: 5, scope: !517)
!520 = !DILocation(line: 33, column: 1, scope: !505)
!521 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !522, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !7}
!524 = !DILocalVariable(name: "intNumber", arg: 1, scope: !521, file: !18, line: 35, type: !7)
!525 = !DILocation(line: 35, column: 24, scope: !521)
!526 = !DILocation(line: 37, column: 20, scope: !521)
!527 = !DILocation(line: 37, column: 5, scope: !521)
!528 = !DILocation(line: 38, column: 1, scope: !521)
!529 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !530, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !532}
!532 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!533 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !529, file: !18, line: 40, type: !532)
!534 = !DILocation(line: 40, column: 28, scope: !529)
!535 = !DILocation(line: 42, column: 21, scope: !529)
!536 = !DILocation(line: 42, column: 5, scope: !529)
!537 = !DILocation(line: 43, column: 1, scope: !529)
!538 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !539, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !541}
!541 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!542 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !538, file: !18, line: 45, type: !541)
!543 = !DILocation(line: 45, column: 28, scope: !538)
!544 = !DILocation(line: 47, column: 20, scope: !538)
!545 = !DILocation(line: 47, column: 5, scope: !538)
!546 = !DILocation(line: 48, column: 1, scope: !538)
!547 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !548, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !154}
!550 = !DILocalVariable(name: "longNumber", arg: 1, scope: !547, file: !18, line: 50, type: !154)
!551 = !DILocation(line: 50, column: 26, scope: !547)
!552 = !DILocation(line: 52, column: 21, scope: !547)
!553 = !DILocation(line: 52, column: 5, scope: !547)
!554 = !DILocation(line: 53, column: 1, scope: !547)
!555 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !556, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !558}
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !559, line: 27, baseType: !560)
!559 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !153, line: 44, baseType: !154)
!561 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !555, file: !18, line: 55, type: !558)
!562 = !DILocation(line: 55, column: 33, scope: !555)
!563 = !DILocation(line: 57, column: 29, scope: !555)
!564 = !DILocation(line: 57, column: 5, scope: !555)
!565 = !DILocation(line: 58, column: 1, scope: !555)
!566 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !567, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !119}
!569 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !566, file: !18, line: 60, type: !119)
!570 = !DILocation(line: 60, column: 29, scope: !566)
!571 = !DILocation(line: 62, column: 21, scope: !566)
!572 = !DILocation(line: 62, column: 5, scope: !566)
!573 = !DILocation(line: 63, column: 1, scope: !566)
!574 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !575, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !56}
!577 = !DILocalVariable(name: "charHex", arg: 1, scope: !574, file: !18, line: 65, type: !56)
!578 = !DILocation(line: 65, column: 29, scope: !574)
!579 = !DILocation(line: 67, column: 22, scope: !574)
!580 = !DILocation(line: 67, column: 5, scope: !574)
!581 = !DILocation(line: 68, column: 1, scope: !574)
!582 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !583, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !509}
!585 = !DILocalVariable(name: "wideChar", arg: 1, scope: !582, file: !18, line: 70, type: !509)
!586 = !DILocation(line: 70, column: 29, scope: !582)
!587 = !DILocalVariable(name: "s", scope: !582, file: !18, line: 74, type: !588)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 64, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 2)
!591 = !DILocation(line: 74, column: 13, scope: !582)
!592 = !DILocation(line: 75, column: 16, scope: !582)
!593 = !DILocation(line: 75, column: 9, scope: !582)
!594 = !DILocation(line: 75, column: 14, scope: !582)
!595 = !DILocation(line: 76, column: 9, scope: !582)
!596 = !DILocation(line: 76, column: 14, scope: !582)
!597 = !DILocation(line: 77, column: 21, scope: !582)
!598 = !DILocation(line: 77, column: 5, scope: !582)
!599 = !DILocation(line: 78, column: 1, scope: !582)
!600 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !601, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !22}
!603 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !600, file: !18, line: 80, type: !22)
!604 = !DILocation(line: 80, column: 33, scope: !600)
!605 = !DILocation(line: 82, column: 20, scope: !600)
!606 = !DILocation(line: 82, column: 5, scope: !600)
!607 = !DILocation(line: 83, column: 1, scope: !600)
!608 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !609, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !38}
!611 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !608, file: !18, line: 85, type: !38)
!612 = !DILocation(line: 85, column: 45, scope: !608)
!613 = !DILocation(line: 87, column: 22, scope: !608)
!614 = !DILocation(line: 87, column: 5, scope: !608)
!615 = !DILocation(line: 88, column: 1, scope: !608)
!616 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !617, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !619}
!619 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!620 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !616, file: !18, line: 90, type: !619)
!621 = !DILocation(line: 90, column: 29, scope: !616)
!622 = !DILocation(line: 92, column: 20, scope: !616)
!623 = !DILocation(line: 92, column: 5, scope: !616)
!624 = !DILocation(line: 93, column: 1, scope: !616)
!625 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !626, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !630, line: 100, baseType: !631)
!630 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_092/source_code")
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !630, line: 96, size: 64, elements: !632)
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !631, file: !630, line: 98, baseType: !7, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !631, file: !630, line: 99, baseType: !7, size: 32, offset: 32)
!635 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !625, file: !18, line: 95, type: !628)
!636 = !DILocation(line: 95, column: 40, scope: !625)
!637 = !DILocation(line: 97, column: 26, scope: !625)
!638 = !DILocation(line: 97, column: 47, scope: !625)
!639 = !DILocation(line: 97, column: 55, scope: !625)
!640 = !DILocation(line: 97, column: 76, scope: !625)
!641 = !DILocation(line: 97, column: 5, scope: !625)
!642 = !DILocation(line: 98, column: 1, scope: !625)
!643 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !644, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !646, !119}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!647 = !DILocalVariable(name: "bytes", arg: 1, scope: !643, file: !18, line: 100, type: !646)
!648 = !DILocation(line: 100, column: 38, scope: !643)
!649 = !DILocalVariable(name: "numBytes", arg: 2, scope: !643, file: !18, line: 100, type: !119)
!650 = !DILocation(line: 100, column: 52, scope: !643)
!651 = !DILocalVariable(name: "i", scope: !643, file: !18, line: 102, type: !119)
!652 = !DILocation(line: 102, column: 12, scope: !643)
!653 = !DILocation(line: 103, column: 12, scope: !654)
!654 = distinct !DILexicalBlock(scope: !643, file: !18, line: 103, column: 5)
!655 = !DILocation(line: 103, column: 10, scope: !654)
!656 = !DILocation(line: 103, column: 17, scope: !657)
!657 = distinct !DILexicalBlock(scope: !654, file: !18, line: 103, column: 5)
!658 = !DILocation(line: 103, column: 21, scope: !657)
!659 = !DILocation(line: 103, column: 19, scope: !657)
!660 = !DILocation(line: 103, column: 5, scope: !654)
!661 = !DILocation(line: 105, column: 24, scope: !662)
!662 = distinct !DILexicalBlock(scope: !657, file: !18, line: 104, column: 5)
!663 = !DILocation(line: 105, column: 30, scope: !662)
!664 = !DILocation(line: 105, column: 9, scope: !662)
!665 = !DILocation(line: 106, column: 5, scope: !662)
!666 = !DILocation(line: 103, column: 31, scope: !657)
!667 = !DILocation(line: 103, column: 5, scope: !657)
!668 = distinct !{!668, !660, !669, !99}
!669 = !DILocation(line: 106, column: 5, scope: !654)
!670 = !DILocation(line: 107, column: 5, scope: !643)
!671 = !DILocation(line: 108, column: 1, scope: !643)
!672 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !673, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!673 = !DISubroutineType(types: !674)
!674 = !{!119, !646, !119, !55}
!675 = !DILocalVariable(name: "bytes", arg: 1, scope: !672, file: !18, line: 113, type: !646)
!676 = !DILocation(line: 113, column: 39, scope: !672)
!677 = !DILocalVariable(name: "numBytes", arg: 2, scope: !672, file: !18, line: 113, type: !119)
!678 = !DILocation(line: 113, column: 53, scope: !672)
!679 = !DILocalVariable(name: "hex", arg: 3, scope: !672, file: !18, line: 113, type: !55)
!680 = !DILocation(line: 113, column: 71, scope: !672)
!681 = !DILocalVariable(name: "numWritten", scope: !672, file: !18, line: 115, type: !119)
!682 = !DILocation(line: 115, column: 12, scope: !672)
!683 = !DILocation(line: 121, column: 5, scope: !672)
!684 = !DILocation(line: 121, column: 12, scope: !672)
!685 = !DILocation(line: 121, column: 25, scope: !672)
!686 = !DILocation(line: 121, column: 23, scope: !672)
!687 = !DILocation(line: 121, column: 34, scope: !672)
!688 = !DILocation(line: 121, column: 37, scope: !672)
!689 = !DILocation(line: 121, column: 67, scope: !672)
!690 = !DILocation(line: 121, column: 70, scope: !672)
!691 = !DILocation(line: 0, scope: !672)
!692 = !DILocalVariable(name: "byte", scope: !693, file: !18, line: 123, type: !7)
!693 = distinct !DILexicalBlock(scope: !672, file: !18, line: 122, column: 5)
!694 = !DILocation(line: 123, column: 13, scope: !693)
!695 = !DILocation(line: 124, column: 17, scope: !693)
!696 = !DILocation(line: 124, column: 25, scope: !693)
!697 = !DILocation(line: 124, column: 23, scope: !693)
!698 = !DILocation(line: 124, column: 9, scope: !693)
!699 = !DILocation(line: 125, column: 45, scope: !693)
!700 = !DILocation(line: 125, column: 29, scope: !693)
!701 = !DILocation(line: 125, column: 9, scope: !693)
!702 = !DILocation(line: 125, column: 15, scope: !693)
!703 = !DILocation(line: 125, column: 27, scope: !693)
!704 = !DILocation(line: 126, column: 9, scope: !693)
!705 = distinct !{!705, !683, !706, !99}
!706 = !DILocation(line: 127, column: 5, scope: !672)
!707 = !DILocation(line: 129, column: 12, scope: !672)
!708 = !DILocation(line: 129, column: 5, scope: !672)
!709 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !710, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!710 = !DISubroutineType(types: !711)
!711 = !{!119, !646, !119, !508}
!712 = !DILocalVariable(name: "bytes", arg: 1, scope: !709, file: !18, line: 135, type: !646)
!713 = !DILocation(line: 135, column: 41, scope: !709)
!714 = !DILocalVariable(name: "numBytes", arg: 2, scope: !709, file: !18, line: 135, type: !119)
!715 = !DILocation(line: 135, column: 55, scope: !709)
!716 = !DILocalVariable(name: "hex", arg: 3, scope: !709, file: !18, line: 135, type: !508)
!717 = !DILocation(line: 135, column: 76, scope: !709)
!718 = !DILocalVariable(name: "numWritten", scope: !709, file: !18, line: 137, type: !119)
!719 = !DILocation(line: 137, column: 12, scope: !709)
!720 = !DILocation(line: 143, column: 5, scope: !709)
!721 = !DILocation(line: 143, column: 12, scope: !709)
!722 = !DILocation(line: 143, column: 25, scope: !709)
!723 = !DILocation(line: 143, column: 23, scope: !709)
!724 = !DILocation(line: 143, column: 34, scope: !709)
!725 = !DILocation(line: 143, column: 47, scope: !709)
!726 = !DILocation(line: 143, column: 55, scope: !709)
!727 = !DILocation(line: 143, column: 53, scope: !709)
!728 = !DILocation(line: 143, column: 37, scope: !709)
!729 = !DILocation(line: 143, column: 68, scope: !709)
!730 = !DILocation(line: 143, column: 81, scope: !709)
!731 = !DILocation(line: 143, column: 89, scope: !709)
!732 = !DILocation(line: 143, column: 87, scope: !709)
!733 = !DILocation(line: 143, column: 100, scope: !709)
!734 = !DILocation(line: 143, column: 71, scope: !709)
!735 = !DILocation(line: 0, scope: !709)
!736 = !DILocalVariable(name: "byte", scope: !737, file: !18, line: 145, type: !7)
!737 = distinct !DILexicalBlock(scope: !709, file: !18, line: 144, column: 5)
!738 = !DILocation(line: 145, column: 13, scope: !737)
!739 = !DILocation(line: 146, column: 18, scope: !737)
!740 = !DILocation(line: 146, column: 26, scope: !737)
!741 = !DILocation(line: 146, column: 24, scope: !737)
!742 = !DILocation(line: 146, column: 9, scope: !737)
!743 = !DILocation(line: 147, column: 45, scope: !737)
!744 = !DILocation(line: 147, column: 29, scope: !737)
!745 = !DILocation(line: 147, column: 9, scope: !737)
!746 = !DILocation(line: 147, column: 15, scope: !737)
!747 = !DILocation(line: 147, column: 27, scope: !737)
!748 = !DILocation(line: 148, column: 9, scope: !737)
!749 = distinct !{!749, !720, !750, !99}
!750 = !DILocation(line: 149, column: 5, scope: !709)
!751 = !DILocation(line: 151, column: 12, scope: !709)
!752 = !DILocation(line: 151, column: 5, scope: !709)
!753 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !754, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!754 = !DISubroutineType(types: !755)
!755 = !{!7}
!756 = !DILocation(line: 158, column: 5, scope: !753)
!757 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !754, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!758 = !DILocation(line: 163, column: 5, scope: !757)
!759 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !754, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!760 = !DILocation(line: 168, column: 13, scope: !759)
!761 = !DILocation(line: 168, column: 20, scope: !759)
!762 = !DILocation(line: 168, column: 5, scope: !759)
!763 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !106, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!764 = !DILocation(line: 187, column: 16, scope: !763)
!765 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !106, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!766 = !DILocation(line: 188, column: 16, scope: !765)
!767 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !106, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!768 = !DILocation(line: 189, column: 16, scope: !767)
!769 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !106, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!770 = !DILocation(line: 190, column: 16, scope: !769)
!771 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !106, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!772 = !DILocation(line: 191, column: 16, scope: !771)
!773 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !106, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!774 = !DILocation(line: 192, column: 16, scope: !773)
!775 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !106, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!776 = !DILocation(line: 193, column: 16, scope: !775)
!777 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !106, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!778 = !DILocation(line: 194, column: 16, scope: !777)
!779 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !106, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!780 = !DILocation(line: 195, column: 16, scope: !779)
!781 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !106, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!782 = !DILocation(line: 198, column: 15, scope: !781)
!783 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !106, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!784 = !DILocation(line: 199, column: 15, scope: !783)
!785 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !106, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!786 = !DILocation(line: 200, column: 15, scope: !785)
!787 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !106, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!788 = !DILocation(line: 201, column: 15, scope: !787)
!789 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !106, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!790 = !DILocation(line: 202, column: 15, scope: !789)
!791 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !106, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!792 = !DILocation(line: 203, column: 15, scope: !791)
!793 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !106, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!794 = !DILocation(line: 204, column: 15, scope: !793)
!795 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !106, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!796 = !DILocation(line: 205, column: 15, scope: !795)
!797 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !106, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!798 = !DILocation(line: 206, column: 15, scope: !797)
