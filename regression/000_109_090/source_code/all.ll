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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_17_bad() #0 !dbg !52 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i17 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %j, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i8** %data, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !61, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  store i32 0, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !71
  %cmp = icmp slt i32 %1, 1, !dbg !73
  br i1 %cmp, label %for.body, label %for.end, !dbg !74

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !75, metadata !DIExpression()), !dbg !81
  %2 = load i8*, i8** %data, align 8, !dbg !82
  %call = call i64 @strlen(i8* %2) #7, !dbg !83
  store i64 %call, i64* %dataLen, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !84, metadata !DIExpression()), !dbg !140
  %3 = load i64, i64* %dataLen, align 8, !dbg !141
  %sub = sub i64 100, %3, !dbg !143
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !144
  br i1 %cmp1, label %if.then, label %if.end12, !dbg !145

if.then:                                          ; preds = %for.body
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !146
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !148
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !149
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !151
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !152

if.then4:                                         ; preds = %if.then
  %5 = load i8*, i8** %data, align 8, !dbg !153
  %6 = load i64, i64* %dataLen, align 8, !dbg !156
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !157
  %7 = load i64, i64* %dataLen, align 8, !dbg !158
  %sub5 = sub i64 100, %7, !dbg !159
  %conv = trunc i64 %sub5 to i32, !dbg !160
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !161
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !162
  %cmp7 = icmp eq i8* %call6, null, !dbg !163
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !164

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !165
  %9 = load i8*, i8** %data, align 8, !dbg !167
  %10 = load i64, i64* %dataLen, align 8, !dbg !168
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !167
  store i8 0, i8* %arrayidx, align 1, !dbg !169
  br label %if.end, !dbg !170

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !171
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !172
  br label %if.end11, !dbg !173

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !174

if.end12:                                         ; preds = %if.end11, %for.body
  br label %for.inc, !dbg !175

for.inc:                                          ; preds = %if.end12
  %12 = load i32, i32* %i, align 4, !dbg !176
  %inc = add nsw i32 %12, 1, !dbg !176
  store i32 %inc, i32* %i, align 4, !dbg !176
  br label %for.cond, !dbg !177, !llvm.loop !178

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !181
  br label %for.cond13, !dbg !183

for.cond13:                                       ; preds = %for.inc31, %for.end
  %13 = load i32, i32* %j, align 4, !dbg !184
  %cmp14 = icmp slt i32 %13, 1, !dbg !186
  br i1 %cmp14, label %for.body16, label %for.end33, !dbg !187

for.body16:                                       ; preds = %for.cond13
  call void @llvm.dbg.declare(metadata i32* %i17, metadata !188, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %n, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !194, metadata !DIExpression()), !dbg !195
  %14 = load i8*, i8** %data, align 8, !dbg !196
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !198
  %cmp19 = icmp eq i32 %call18, 1, !dbg !199
  br i1 %cmp19, label %if.then21, label %if.end30, !dbg !200

if.then21:                                        ; preds = %for.body16
  store i32 0, i32* %intVariable, align 4, !dbg !201
  store i32 0, i32* %i17, align 4, !dbg !203
  br label %for.cond22, !dbg !205

for.cond22:                                       ; preds = %for.inc27, %if.then21
  %15 = load i32, i32* %i17, align 4, !dbg !206
  %16 = load i32, i32* %n, align 4, !dbg !208
  %cmp23 = icmp slt i32 %15, %16, !dbg !209
  br i1 %cmp23, label %for.body25, label %for.end29, !dbg !210

for.body25:                                       ; preds = %for.cond22
  %17 = load i32, i32* %intVariable, align 4, !dbg !211
  %inc26 = add nsw i32 %17, 1, !dbg !211
  store i32 %inc26, i32* %intVariable, align 4, !dbg !211
  br label %for.inc27, !dbg !213

for.inc27:                                        ; preds = %for.body25
  %18 = load i32, i32* %i17, align 4, !dbg !214
  %inc28 = add nsw i32 %18, 1, !dbg !214
  store i32 %inc28, i32* %i17, align 4, !dbg !214
  br label %for.cond22, !dbg !215, !llvm.loop !216

for.end29:                                        ; preds = %for.cond22
  %19 = load i32, i32* %intVariable, align 4, !dbg !218
  call void @printIntLine(i32 %19), !dbg !219
  br label %if.end30, !dbg !220

if.end30:                                         ; preds = %for.end29, %for.body16
  br label %for.inc31, !dbg !221

for.inc31:                                        ; preds = %if.end30
  %20 = load i32, i32* %j, align 4, !dbg !222
  %inc32 = add nsw i32 %20, 1, !dbg !222
  store i32 %inc32, i32* %j, align 4, !dbg !222
  br label %for.cond13, !dbg !223, !llvm.loop !224

for.end33:                                        ; preds = %for.cond13
  ret void, !dbg !226
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !227 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i17 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %k, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i8** %data, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !235
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !235
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !236
  store i8* %arraydecay, i8** %data, align 8, !dbg !237
  store i32 0, i32* %i, align 4, !dbg !238
  br label %for.cond, !dbg !240

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !241
  %cmp = icmp slt i32 %1, 1, !dbg !243
  br i1 %cmp, label %for.body, label %for.end, !dbg !244

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !245, metadata !DIExpression()), !dbg !248
  %2 = load i8*, i8** %data, align 8, !dbg !249
  %call = call i64 @strlen(i8* %2) #7, !dbg !250
  store i64 %call, i64* %dataLen, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !251, metadata !DIExpression()), !dbg !252
  %3 = load i64, i64* %dataLen, align 8, !dbg !253
  %sub = sub i64 100, %3, !dbg !255
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !256
  br i1 %cmp1, label %if.then, label %if.end12, !dbg !257

if.then:                                          ; preds = %for.body
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !258
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !260
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !261
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !263
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !264

if.then4:                                         ; preds = %if.then
  %5 = load i8*, i8** %data, align 8, !dbg !265
  %6 = load i64, i64* %dataLen, align 8, !dbg !268
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !269
  %7 = load i64, i64* %dataLen, align 8, !dbg !270
  %sub5 = sub i64 100, %7, !dbg !271
  %conv = trunc i64 %sub5 to i32, !dbg !272
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !273
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !274
  %cmp7 = icmp eq i8* %call6, null, !dbg !275
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !276

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !277
  %9 = load i8*, i8** %data, align 8, !dbg !279
  %10 = load i64, i64* %dataLen, align 8, !dbg !280
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !279
  store i8 0, i8* %arrayidx, align 1, !dbg !281
  br label %if.end, !dbg !282

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !283
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !284
  br label %if.end11, !dbg !285

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !286

if.end12:                                         ; preds = %if.end11, %for.body
  br label %for.inc, !dbg !287

for.inc:                                          ; preds = %if.end12
  %12 = load i32, i32* %i, align 4, !dbg !288
  %inc = add nsw i32 %12, 1, !dbg !288
  store i32 %inc, i32* %i, align 4, !dbg !288
  br label %for.cond, !dbg !289, !llvm.loop !290

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !292
  br label %for.cond13, !dbg !294

for.cond13:                                       ; preds = %for.inc35, %for.end
  %13 = load i32, i32* %k, align 4, !dbg !295
  %cmp14 = icmp slt i32 %13, 1, !dbg !297
  br i1 %cmp14, label %for.body16, label %for.end37, !dbg !298

for.body16:                                       ; preds = %for.cond13
  call void @llvm.dbg.declare(metadata i32* %i17, metadata !299, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %n, metadata !303, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !305, metadata !DIExpression()), !dbg !306
  %14 = load i8*, i8** %data, align 8, !dbg !307
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !309
  %cmp19 = icmp eq i32 %call18, 1, !dbg !310
  br i1 %cmp19, label %if.then21, label %if.end34, !dbg !311

if.then21:                                        ; preds = %for.body16
  %15 = load i32, i32* %n, align 4, !dbg !312
  %cmp22 = icmp slt i32 %15, 10000, !dbg !315
  br i1 %cmp22, label %if.then24, label %if.end33, !dbg !316

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !317
  store i32 0, i32* %i17, align 4, !dbg !319
  br label %for.cond25, !dbg !321

for.cond25:                                       ; preds = %for.inc30, %if.then24
  %16 = load i32, i32* %i17, align 4, !dbg !322
  %17 = load i32, i32* %n, align 4, !dbg !324
  %cmp26 = icmp slt i32 %16, %17, !dbg !325
  br i1 %cmp26, label %for.body28, label %for.end32, !dbg !326

for.body28:                                       ; preds = %for.cond25
  %18 = load i32, i32* %intVariable, align 4, !dbg !327
  %inc29 = add nsw i32 %18, 1, !dbg !327
  store i32 %inc29, i32* %intVariable, align 4, !dbg !327
  br label %for.inc30, !dbg !329

for.inc30:                                        ; preds = %for.body28
  %19 = load i32, i32* %i17, align 4, !dbg !330
  %inc31 = add nsw i32 %19, 1, !dbg !330
  store i32 %inc31, i32* %i17, align 4, !dbg !330
  br label %for.cond25, !dbg !331, !llvm.loop !332

for.end32:                                        ; preds = %for.cond25
  %20 = load i32, i32* %intVariable, align 4, !dbg !334
  call void @printIntLine(i32 %20), !dbg !335
  br label %if.end33, !dbg !336

if.end33:                                         ; preds = %for.end32, %if.then21
  br label %if.end34, !dbg !337

if.end34:                                         ; preds = %if.end33, %for.body16
  br label %for.inc35, !dbg !338

for.inc35:                                        ; preds = %if.end34
  %21 = load i32, i32* %k, align 4, !dbg !339
  %inc36 = add nsw i32 %21, 1, !dbg !339
  store i32 %inc36, i32* %k, align 4, !dbg !339
  br label %for.cond13, !dbg !340, !llvm.loop !341

for.end37:                                        ; preds = %for.cond13
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !344 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %h, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata i32* %j, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata i8** %data, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !352
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !352
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !353
  store i8* %arraydecay, i8** %data, align 8, !dbg !354
  store i32 0, i32* %h, align 4, !dbg !355
  br label %for.cond, !dbg !357

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %h, align 4, !dbg !358
  %cmp = icmp slt i32 %1, 1, !dbg !360
  br i1 %cmp, label %for.body, label %for.end, !dbg !361

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data, align 8, !dbg !362
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !364
  br label %for.inc, !dbg !365

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4, !dbg !366
  %inc = add nsw i32 %3, 1, !dbg !366
  store i32 %inc, i32* %h, align 4, !dbg !366
  br label %for.cond, !dbg !367, !llvm.loop !368

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !370
  br label %for.cond1, !dbg !372

for.cond1:                                        ; preds = %for.inc13, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !373
  %cmp2 = icmp slt i32 %4, 1, !dbg !375
  br i1 %cmp2, label %for.body3, label %for.end15, !dbg !376

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !377, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.declare(metadata i32* %n, metadata !381, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !383, metadata !DIExpression()), !dbg !384
  %5 = load i8*, i8** %data, align 8, !dbg !385
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !387
  %cmp5 = icmp eq i32 %call4, 1, !dbg !388
  br i1 %cmp5, label %if.then, label %if.end, !dbg !389

if.then:                                          ; preds = %for.body3
  store i32 0, i32* %intVariable, align 4, !dbg !390
  store i32 0, i32* %i, align 4, !dbg !392
  br label %for.cond6, !dbg !394

for.cond6:                                        ; preds = %for.inc10, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !395
  %7 = load i32, i32* %n, align 4, !dbg !397
  %cmp7 = icmp slt i32 %6, %7, !dbg !398
  br i1 %cmp7, label %for.body8, label %for.end12, !dbg !399

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, i32* %intVariable, align 4, !dbg !400
  %inc9 = add nsw i32 %8, 1, !dbg !400
  store i32 %inc9, i32* %intVariable, align 4, !dbg !400
  br label %for.inc10, !dbg !402

for.inc10:                                        ; preds = %for.body8
  %9 = load i32, i32* %i, align 4, !dbg !403
  %inc11 = add nsw i32 %9, 1, !dbg !403
  store i32 %inc11, i32* %i, align 4, !dbg !403
  br label %for.cond6, !dbg !404, !llvm.loop !405

for.end12:                                        ; preds = %for.cond6
  %10 = load i32, i32* %intVariable, align 4, !dbg !407
  call void @printIntLine(i32 %10), !dbg !408
  br label %if.end, !dbg !409

if.end:                                           ; preds = %for.end12, %for.body3
  br label %for.inc13, !dbg !410

for.inc13:                                        ; preds = %if.end
  %11 = load i32, i32* %j, align 4, !dbg !411
  %inc14 = add nsw i32 %11, 1, !dbg !411
  store i32 %inc14, i32* %j, align 4, !dbg !411
  br label %for.cond1, !dbg !412, !llvm.loop !413

for.end15:                                        ; preds = %for.cond1
  ret void, !dbg !415
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_17_good() #0 !dbg !416 {
entry:
  call void @goodB2G(), !dbg !417
  call void @goodG2B(), !dbg !418
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !420 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !423, metadata !DIExpression()), !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !425
  %0 = load i8*, i8** %line.addr, align 8, !dbg !426
  %cmp = icmp ne i8* %0, null, !dbg !428
  br i1 %cmp, label %if.then, label %if.end, !dbg !429

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !430
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !432
  br label %if.end, !dbg !433

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !434
  ret void, !dbg !435
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !436 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !437, metadata !DIExpression()), !dbg !438
  %0 = load i8*, i8** %line.addr, align 8, !dbg !439
  %cmp = icmp ne i8* %0, null, !dbg !441
  br i1 %cmp, label %if.then, label %if.end, !dbg !442

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !443
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !445
  br label %if.end, !dbg !446

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !448 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !453, metadata !DIExpression()), !dbg !454
  %0 = load i32*, i32** %line.addr, align 8, !dbg !455
  %cmp = icmp ne i32* %0, null, !dbg !457
  br i1 %cmp, label %if.then, label %if.end, !dbg !458

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !459
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !461
  br label %if.end, !dbg !462

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !463
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !464 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !469
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.11, i64 0, i64 0), i32 %0), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !472 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !478
  %conv = sext i16 %0 to i32, !dbg !478
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.12, i64 0, i64 0), i32 %conv), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !481 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !485, metadata !DIExpression()), !dbg !486
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !487
  %conv = fpext float %0 to double, !dbg !487
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !488
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !490 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !493, metadata !DIExpression()), !dbg !494
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !495
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !496
  ret void, !dbg !497
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !498 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !504, metadata !DIExpression()), !dbg !505
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !506
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !507
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !509 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !512, metadata !DIExpression()), !dbg !513
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !514
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !515
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !517 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !520, metadata !DIExpression()), !dbg !521
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !522
  %conv = sext i8 %0 to i32, !dbg !522
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !523
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !525 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !528, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !530, metadata !DIExpression()), !dbg !534
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !535
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !536
  store i32 %0, i32* %arrayidx, align 4, !dbg !537
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !538
  store i32 0, i32* %arrayidx1, align 4, !dbg !539
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !540
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !541
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !543 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !546, metadata !DIExpression()), !dbg !547
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !548
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !549
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !551 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !556
  %conv = zext i8 %0 to i32, !dbg !556
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !557
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !559 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !563, metadata !DIExpression()), !dbg !564
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !565
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !566
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !568 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !578, metadata !DIExpression()), !dbg !579
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !580
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !581
  %1 = load i32, i32* %intOne, align 4, !dbg !581
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !582
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !583
  %3 = load i32, i32* %intTwo, align 4, !dbg !583
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !584
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !586 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !590, metadata !DIExpression()), !dbg !591
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !592, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.declare(metadata i64* %i, metadata !594, metadata !DIExpression()), !dbg !595
  store i64 0, i64* %i, align 8, !dbg !596
  br label %for.cond, !dbg !598

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !599
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !601
  %cmp = icmp ult i64 %0, %1, !dbg !602
  br i1 %cmp, label %for.body, label %for.end, !dbg !603

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !604
  %3 = load i64, i64* %i, align 8, !dbg !606
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !604
  %4 = load i8, i8* %arrayidx, align 1, !dbg !604
  %conv = zext i8 %4 to i32, !dbg !604
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !607
  br label %for.inc, !dbg !608

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !609
  %inc = add i64 %5, 1, !dbg !609
  store i64 %inc, i64* %i, align 8, !dbg !609
  br label %for.cond, !dbg !610, !llvm.loop !611

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !613
  ret void, !dbg !614
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !615 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !618, metadata !DIExpression()), !dbg !619
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !620, metadata !DIExpression()), !dbg !621
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !622, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !624, metadata !DIExpression()), !dbg !625
  store i64 0, i64* %numWritten, align 8, !dbg !625
  br label %while.cond, !dbg !626

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !627
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !628
  %cmp = icmp ult i64 %0, %1, !dbg !629
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !630

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !631
  %2 = load i16*, i16** %call, align 8, !dbg !631
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !631
  %4 = load i64, i64* %numWritten, align 8, !dbg !631
  %mul = mul i64 2, %4, !dbg !631
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !631
  %5 = load i8, i8* %arrayidx, align 1, !dbg !631
  %conv = sext i8 %5 to i32, !dbg !631
  %idxprom = sext i32 %conv to i64, !dbg !631
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !631
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !631
  %conv2 = zext i16 %6 to i32, !dbg !631
  %and = and i32 %conv2, 4096, !dbg !631
  %tobool = icmp ne i32 %and, 0, !dbg !631
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !632

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !633
  %7 = load i16*, i16** %call3, align 8, !dbg !633
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !633
  %9 = load i64, i64* %numWritten, align 8, !dbg !633
  %mul4 = mul i64 2, %9, !dbg !633
  %add = add i64 %mul4, 1, !dbg !633
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !633
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !633
  %conv6 = sext i8 %10 to i32, !dbg !633
  %idxprom7 = sext i32 %conv6 to i64, !dbg !633
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !633
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !633
  %conv9 = zext i16 %11 to i32, !dbg !633
  %and10 = and i32 %conv9, 4096, !dbg !633
  %tobool11 = icmp ne i32 %and10, 0, !dbg !632
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !634
  br i1 %12, label %while.body, label %while.end, !dbg !626

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !635, metadata !DIExpression()), !dbg !637
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !638
  %14 = load i64, i64* %numWritten, align 8, !dbg !639
  %mul12 = mul i64 2, %14, !dbg !640
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !638
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !641
  %15 = load i32, i32* %byte, align 4, !dbg !642
  %conv15 = trunc i32 %15 to i8, !dbg !643
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !644
  %17 = load i64, i64* %numWritten, align 8, !dbg !645
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !644
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !646
  %18 = load i64, i64* %numWritten, align 8, !dbg !647
  %inc = add i64 %18, 1, !dbg !647
  store i64 %inc, i64* %numWritten, align 8, !dbg !647
  br label %while.cond, !dbg !626, !llvm.loop !648

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !650
  ret i64 %19, !dbg !651
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !652 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !655, metadata !DIExpression()), !dbg !656
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !657, metadata !DIExpression()), !dbg !658
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !661, metadata !DIExpression()), !dbg !662
  store i64 0, i64* %numWritten, align 8, !dbg !662
  br label %while.cond, !dbg !663

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !664
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !665
  %cmp = icmp ult i64 %0, %1, !dbg !666
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !667

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !668
  %3 = load i64, i64* %numWritten, align 8, !dbg !669
  %mul = mul i64 2, %3, !dbg !670
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !668
  %4 = load i32, i32* %arrayidx, align 4, !dbg !668
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !671
  %tobool = icmp ne i32 %call, 0, !dbg !671
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !672

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !673
  %6 = load i64, i64* %numWritten, align 8, !dbg !674
  %mul1 = mul i64 2, %6, !dbg !675
  %add = add i64 %mul1, 1, !dbg !676
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !673
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !673
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !677
  %tobool4 = icmp ne i32 %call3, 0, !dbg !672
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !678
  br i1 %8, label %while.body, label %while.end, !dbg !663

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !679, metadata !DIExpression()), !dbg !681
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !682
  %10 = load i64, i64* %numWritten, align 8, !dbg !683
  %mul5 = mul i64 2, %10, !dbg !684
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !682
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !685
  %11 = load i32, i32* %byte, align 4, !dbg !686
  %conv = trunc i32 %11 to i8, !dbg !687
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !688
  %13 = load i64, i64* %numWritten, align 8, !dbg !689
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !688
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !690
  %14 = load i64, i64* %numWritten, align 8, !dbg !691
  %inc = add i64 %14, 1, !dbg !691
  store i64 %inc, i64* %numWritten, align 8, !dbg !691
  br label %while.cond, !dbg !663, !llvm.loop !692

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !694
  ret i64 %15, !dbg !695
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !696 {
entry:
  ret i32 1, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !700 {
entry:
  ret i32 0, !dbg !701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !702 {
entry:
  %call = call i32 @rand() #8, !dbg !703
  %rem = srem i32 %call, 2, !dbg !704
  ret i32 %rem, !dbg !705
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !706 {
entry:
  ret void, !dbg !707
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !708 {
entry:
  ret void, !dbg !709
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !710 {
entry:
  ret void, !dbg !711
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !712 {
entry:
  ret void, !dbg !713
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !714 {
entry:
  ret void, !dbg !715
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !716 {
entry:
  ret void, !dbg !717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !718 {
entry:
  ret void, !dbg !719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !720 {
entry:
  ret void, !dbg !721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !722 {
entry:
  ret void, !dbg !723
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !724 {
entry:
  ret void, !dbg !725
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !726 {
entry:
  ret void, !dbg !727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !728 {
entry:
  ret void, !dbg !729
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !730 {
entry:
  ret void, !dbg !731
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !732 {
entry:
  ret void, !dbg !733
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !734 {
entry:
  ret void, !dbg !735
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !736 {
entry:
  ret void, !dbg !737
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !738 {
entry:
  ret void, !dbg !739
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !740 {
entry:
  ret void, !dbg !741
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_090/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_090/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_17_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "i", scope: !52, file: !45, line: 37, type: !23)
!56 = !DILocation(line: 37, column: 9, scope: !52)
!57 = !DILocalVariable(name: "j", scope: !52, file: !45, line: 37, type: !23)
!58 = !DILocation(line: 37, column: 11, scope: !52)
!59 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 38, type: !42)
!60 = !DILocation(line: 38, column: 12, scope: !52)
!61 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 39, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 39, column: 10, scope: !52)
!66 = !DILocation(line: 40, column: 12, scope: !52)
!67 = !DILocation(line: 40, column: 10, scope: !52)
!68 = !DILocation(line: 41, column: 11, scope: !69)
!69 = distinct !DILexicalBlock(scope: !52, file: !45, line: 41, column: 5)
!70 = !DILocation(line: 41, column: 9, scope: !69)
!71 = !DILocation(line: 41, column: 16, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !45, line: 41, column: 5)
!73 = !DILocation(line: 41, column: 18, scope: !72)
!74 = !DILocation(line: 41, column: 5, scope: !69)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !45, line: 45, type: !78)
!76 = distinct !DILexicalBlock(scope: !77, file: !45, line: 43, column: 9)
!77 = distinct !DILexicalBlock(scope: !72, file: !45, line: 42, column: 5)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 46, baseType: !80)
!79 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!80 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!81 = !DILocation(line: 45, column: 20, scope: !76)
!82 = !DILocation(line: 45, column: 37, scope: !76)
!83 = !DILocation(line: 45, column: 30, scope: !76)
!84 = !DILocalVariable(name: "pFile", scope: !76, file: !45, line: 46, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !106, !108, !109, !110, !114, !115, !117, !121, !124, !126, !129, !132, !133, !134, !135, !136}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !88, file: !89, line: 51, baseType: !23, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !88, file: !89, line: 54, baseType: !42, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !88, file: !89, line: 55, baseType: !42, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !88, file: !89, line: 56, baseType: !42, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !88, file: !89, line: 57, baseType: !42, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !88, file: !89, line: 58, baseType: !42, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !88, file: !89, line: 59, baseType: !42, size: 64, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !88, file: !89, line: 60, baseType: !42, size: 64, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !88, file: !89, line: 61, baseType: !42, size: 64, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !88, file: !89, line: 64, baseType: !42, size: 64, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !88, file: !89, line: 65, baseType: !42, size: 64, offset: 640)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !88, file: !89, line: 66, baseType: !42, size: 64, offset: 704)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !88, file: !89, line: 68, baseType: !104, size: 64, offset: 768)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !89, line: 36, flags: DIFlagFwdDecl)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !88, file: !89, line: 70, baseType: !107, size: 64, offset: 832)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !88, file: !89, line: 72, baseType: !23, size: 32, offset: 896)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !88, file: !89, line: 73, baseType: !23, size: 32, offset: 928)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !88, file: !89, line: 74, baseType: !111, size: 64, offset: 960)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !112, line: 152, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!113 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !88, file: !89, line: 77, baseType: !24, size: 16, offset: 1024)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !88, file: !89, line: 78, baseType: !116, size: 8, offset: 1040)
!116 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !88, file: !89, line: 79, baseType: !118, size: 8, offset: 1048)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 1)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !88, file: !89, line: 81, baseType: !122, size: 64, offset: 1088)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !89, line: 43, baseType: null)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !88, file: !89, line: 89, baseType: !125, size: 64, offset: 1152)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !112, line: 153, baseType: !113)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !88, file: !89, line: 91, baseType: !127, size: 64, offset: 1216)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !89, line: 37, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !88, file: !89, line: 92, baseType: !130, size: 64, offset: 1280)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !89, line: 38, flags: DIFlagFwdDecl)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !88, file: !89, line: 93, baseType: !107, size: 64, offset: 1344)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !88, file: !89, line: 94, baseType: !22, size: 64, offset: 1408)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !88, file: !89, line: 95, baseType: !78, size: 64, offset: 1472)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !88, file: !89, line: 96, baseType: !23, size: 32, offset: 1536)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !88, file: !89, line: 98, baseType: !137, size: 160, offset: 1568)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 20)
!140 = !DILocation(line: 46, column: 20, scope: !76)
!141 = !DILocation(line: 48, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !76, file: !45, line: 48, column: 17)
!143 = !DILocation(line: 48, column: 20, scope: !142)
!144 = !DILocation(line: 48, column: 29, scope: !142)
!145 = !DILocation(line: 48, column: 17, scope: !76)
!146 = !DILocation(line: 50, column: 25, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !45, line: 49, column: 13)
!148 = !DILocation(line: 50, column: 23, scope: !147)
!149 = !DILocation(line: 51, column: 21, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !45, line: 51, column: 21)
!151 = !DILocation(line: 51, column: 27, scope: !150)
!152 = !DILocation(line: 51, column: 21, scope: !147)
!153 = !DILocation(line: 54, column: 31, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !45, line: 54, column: 25)
!155 = distinct !DILexicalBlock(scope: !150, file: !45, line: 52, column: 17)
!156 = !DILocation(line: 54, column: 36, scope: !154)
!157 = !DILocation(line: 54, column: 35, scope: !154)
!158 = !DILocation(line: 54, column: 55, scope: !154)
!159 = !DILocation(line: 54, column: 54, scope: !154)
!160 = !DILocation(line: 54, column: 45, scope: !154)
!161 = !DILocation(line: 54, column: 65, scope: !154)
!162 = !DILocation(line: 54, column: 25, scope: !154)
!163 = !DILocation(line: 54, column: 72, scope: !154)
!164 = !DILocation(line: 54, column: 25, scope: !155)
!165 = !DILocation(line: 56, column: 25, scope: !166)
!166 = distinct !DILexicalBlock(scope: !154, file: !45, line: 55, column: 21)
!167 = !DILocation(line: 58, column: 25, scope: !166)
!168 = !DILocation(line: 58, column: 30, scope: !166)
!169 = !DILocation(line: 58, column: 39, scope: !166)
!170 = !DILocation(line: 59, column: 21, scope: !166)
!171 = !DILocation(line: 60, column: 28, scope: !155)
!172 = !DILocation(line: 60, column: 21, scope: !155)
!173 = !DILocation(line: 61, column: 17, scope: !155)
!174 = !DILocation(line: 62, column: 13, scope: !147)
!175 = !DILocation(line: 64, column: 5, scope: !77)
!176 = !DILocation(line: 41, column: 24, scope: !72)
!177 = !DILocation(line: 41, column: 5, scope: !72)
!178 = distinct !{!178, !74, !179, !180}
!179 = !DILocation(line: 64, column: 5, scope: !69)
!180 = !{!"llvm.loop.mustprogress"}
!181 = !DILocation(line: 65, column: 11, scope: !182)
!182 = distinct !DILexicalBlock(scope: !52, file: !45, line: 65, column: 5)
!183 = !DILocation(line: 65, column: 9, scope: !182)
!184 = !DILocation(line: 65, column: 16, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !45, line: 65, column: 5)
!186 = !DILocation(line: 65, column: 18, scope: !185)
!187 = !DILocation(line: 65, column: 5, scope: !182)
!188 = !DILocalVariable(name: "i", scope: !189, file: !45, line: 68, type: !23)
!189 = distinct !DILexicalBlock(scope: !190, file: !45, line: 67, column: 9)
!190 = distinct !DILexicalBlock(scope: !185, file: !45, line: 66, column: 5)
!191 = !DILocation(line: 68, column: 17, scope: !189)
!192 = !DILocalVariable(name: "n", scope: !189, file: !45, line: 68, type: !23)
!193 = !DILocation(line: 68, column: 20, scope: !189)
!194 = !DILocalVariable(name: "intVariable", scope: !189, file: !45, line: 68, type: !23)
!195 = !DILocation(line: 68, column: 23, scope: !189)
!196 = !DILocation(line: 69, column: 24, scope: !197)
!197 = distinct !DILexicalBlock(scope: !189, file: !45, line: 69, column: 17)
!198 = !DILocation(line: 69, column: 17, scope: !197)
!199 = !DILocation(line: 69, column: 40, scope: !197)
!200 = !DILocation(line: 69, column: 17, scope: !189)
!201 = !DILocation(line: 72, column: 29, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !45, line: 70, column: 13)
!203 = !DILocation(line: 73, column: 24, scope: !204)
!204 = distinct !DILexicalBlock(scope: !202, file: !45, line: 73, column: 17)
!205 = !DILocation(line: 73, column: 22, scope: !204)
!206 = !DILocation(line: 73, column: 29, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !45, line: 73, column: 17)
!208 = !DILocation(line: 73, column: 33, scope: !207)
!209 = !DILocation(line: 73, column: 31, scope: !207)
!210 = !DILocation(line: 73, column: 17, scope: !204)
!211 = !DILocation(line: 76, column: 32, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !45, line: 74, column: 17)
!213 = !DILocation(line: 77, column: 17, scope: !212)
!214 = !DILocation(line: 73, column: 37, scope: !207)
!215 = !DILocation(line: 73, column: 17, scope: !207)
!216 = distinct !{!216, !210, !217, !180}
!217 = !DILocation(line: 77, column: 17, scope: !204)
!218 = !DILocation(line: 78, column: 30, scope: !202)
!219 = !DILocation(line: 78, column: 17, scope: !202)
!220 = !DILocation(line: 79, column: 13, scope: !202)
!221 = !DILocation(line: 81, column: 5, scope: !190)
!222 = !DILocation(line: 65, column: 24, scope: !185)
!223 = !DILocation(line: 65, column: 5, scope: !185)
!224 = distinct !{!224, !187, !225, !180}
!225 = !DILocation(line: 81, column: 5, scope: !182)
!226 = !DILocation(line: 82, column: 1, scope: !52)
!227 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 89, type: !53, scopeLine: 90, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!228 = !DILocalVariable(name: "i", scope: !227, file: !45, line: 91, type: !23)
!229 = !DILocation(line: 91, column: 9, scope: !227)
!230 = !DILocalVariable(name: "k", scope: !227, file: !45, line: 91, type: !23)
!231 = !DILocation(line: 91, column: 11, scope: !227)
!232 = !DILocalVariable(name: "data", scope: !227, file: !45, line: 92, type: !42)
!233 = !DILocation(line: 92, column: 12, scope: !227)
!234 = !DILocalVariable(name: "dataBuffer", scope: !227, file: !45, line: 93, type: !62)
!235 = !DILocation(line: 93, column: 10, scope: !227)
!236 = !DILocation(line: 94, column: 12, scope: !227)
!237 = !DILocation(line: 94, column: 10, scope: !227)
!238 = !DILocation(line: 95, column: 11, scope: !239)
!239 = distinct !DILexicalBlock(scope: !227, file: !45, line: 95, column: 5)
!240 = !DILocation(line: 95, column: 9, scope: !239)
!241 = !DILocation(line: 95, column: 16, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !45, line: 95, column: 5)
!243 = !DILocation(line: 95, column: 18, scope: !242)
!244 = !DILocation(line: 95, column: 5, scope: !239)
!245 = !DILocalVariable(name: "dataLen", scope: !246, file: !45, line: 99, type: !78)
!246 = distinct !DILexicalBlock(scope: !247, file: !45, line: 97, column: 9)
!247 = distinct !DILexicalBlock(scope: !242, file: !45, line: 96, column: 5)
!248 = !DILocation(line: 99, column: 20, scope: !246)
!249 = !DILocation(line: 99, column: 37, scope: !246)
!250 = !DILocation(line: 99, column: 30, scope: !246)
!251 = !DILocalVariable(name: "pFile", scope: !246, file: !45, line: 100, type: !85)
!252 = !DILocation(line: 100, column: 20, scope: !246)
!253 = !DILocation(line: 102, column: 21, scope: !254)
!254 = distinct !DILexicalBlock(scope: !246, file: !45, line: 102, column: 17)
!255 = !DILocation(line: 102, column: 20, scope: !254)
!256 = !DILocation(line: 102, column: 29, scope: !254)
!257 = !DILocation(line: 102, column: 17, scope: !246)
!258 = !DILocation(line: 104, column: 25, scope: !259)
!259 = distinct !DILexicalBlock(scope: !254, file: !45, line: 103, column: 13)
!260 = !DILocation(line: 104, column: 23, scope: !259)
!261 = !DILocation(line: 105, column: 21, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !45, line: 105, column: 21)
!263 = !DILocation(line: 105, column: 27, scope: !262)
!264 = !DILocation(line: 105, column: 21, scope: !259)
!265 = !DILocation(line: 108, column: 31, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !45, line: 108, column: 25)
!267 = distinct !DILexicalBlock(scope: !262, file: !45, line: 106, column: 17)
!268 = !DILocation(line: 108, column: 36, scope: !266)
!269 = !DILocation(line: 108, column: 35, scope: !266)
!270 = !DILocation(line: 108, column: 55, scope: !266)
!271 = !DILocation(line: 108, column: 54, scope: !266)
!272 = !DILocation(line: 108, column: 45, scope: !266)
!273 = !DILocation(line: 108, column: 65, scope: !266)
!274 = !DILocation(line: 108, column: 25, scope: !266)
!275 = !DILocation(line: 108, column: 72, scope: !266)
!276 = !DILocation(line: 108, column: 25, scope: !267)
!277 = !DILocation(line: 110, column: 25, scope: !278)
!278 = distinct !DILexicalBlock(scope: !266, file: !45, line: 109, column: 21)
!279 = !DILocation(line: 112, column: 25, scope: !278)
!280 = !DILocation(line: 112, column: 30, scope: !278)
!281 = !DILocation(line: 112, column: 39, scope: !278)
!282 = !DILocation(line: 113, column: 21, scope: !278)
!283 = !DILocation(line: 114, column: 28, scope: !267)
!284 = !DILocation(line: 114, column: 21, scope: !267)
!285 = !DILocation(line: 115, column: 17, scope: !267)
!286 = !DILocation(line: 116, column: 13, scope: !259)
!287 = !DILocation(line: 118, column: 5, scope: !247)
!288 = !DILocation(line: 95, column: 24, scope: !242)
!289 = !DILocation(line: 95, column: 5, scope: !242)
!290 = distinct !{!290, !244, !291, !180}
!291 = !DILocation(line: 118, column: 5, scope: !239)
!292 = !DILocation(line: 119, column: 11, scope: !293)
!293 = distinct !DILexicalBlock(scope: !227, file: !45, line: 119, column: 5)
!294 = !DILocation(line: 119, column: 9, scope: !293)
!295 = !DILocation(line: 119, column: 16, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !45, line: 119, column: 5)
!297 = !DILocation(line: 119, column: 18, scope: !296)
!298 = !DILocation(line: 119, column: 5, scope: !293)
!299 = !DILocalVariable(name: "i", scope: !300, file: !45, line: 122, type: !23)
!300 = distinct !DILexicalBlock(scope: !301, file: !45, line: 121, column: 9)
!301 = distinct !DILexicalBlock(scope: !296, file: !45, line: 120, column: 5)
!302 = !DILocation(line: 122, column: 17, scope: !300)
!303 = !DILocalVariable(name: "n", scope: !300, file: !45, line: 122, type: !23)
!304 = !DILocation(line: 122, column: 20, scope: !300)
!305 = !DILocalVariable(name: "intVariable", scope: !300, file: !45, line: 122, type: !23)
!306 = !DILocation(line: 122, column: 23, scope: !300)
!307 = !DILocation(line: 123, column: 24, scope: !308)
!308 = distinct !DILexicalBlock(scope: !300, file: !45, line: 123, column: 17)
!309 = !DILocation(line: 123, column: 17, scope: !308)
!310 = !DILocation(line: 123, column: 40, scope: !308)
!311 = !DILocation(line: 123, column: 17, scope: !300)
!312 = !DILocation(line: 126, column: 21, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !45, line: 126, column: 21)
!314 = distinct !DILexicalBlock(scope: !308, file: !45, line: 124, column: 13)
!315 = !DILocation(line: 126, column: 23, scope: !313)
!316 = !DILocation(line: 126, column: 21, scope: !314)
!317 = !DILocation(line: 128, column: 33, scope: !318)
!318 = distinct !DILexicalBlock(scope: !313, file: !45, line: 127, column: 17)
!319 = !DILocation(line: 129, column: 28, scope: !320)
!320 = distinct !DILexicalBlock(scope: !318, file: !45, line: 129, column: 21)
!321 = !DILocation(line: 129, column: 26, scope: !320)
!322 = !DILocation(line: 129, column: 33, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !45, line: 129, column: 21)
!324 = !DILocation(line: 129, column: 37, scope: !323)
!325 = !DILocation(line: 129, column: 35, scope: !323)
!326 = !DILocation(line: 129, column: 21, scope: !320)
!327 = !DILocation(line: 132, column: 36, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !45, line: 130, column: 21)
!329 = !DILocation(line: 133, column: 21, scope: !328)
!330 = !DILocation(line: 129, column: 41, scope: !323)
!331 = !DILocation(line: 129, column: 21, scope: !323)
!332 = distinct !{!332, !326, !333, !180}
!333 = !DILocation(line: 133, column: 21, scope: !320)
!334 = !DILocation(line: 134, column: 34, scope: !318)
!335 = !DILocation(line: 134, column: 21, scope: !318)
!336 = !DILocation(line: 135, column: 17, scope: !318)
!337 = !DILocation(line: 136, column: 13, scope: !314)
!338 = !DILocation(line: 138, column: 5, scope: !301)
!339 = !DILocation(line: 119, column: 24, scope: !296)
!340 = !DILocation(line: 119, column: 5, scope: !296)
!341 = distinct !{!341, !298, !342, !180}
!342 = !DILocation(line: 138, column: 5, scope: !293)
!343 = !DILocation(line: 139, column: 1, scope: !227)
!344 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 142, type: !53, scopeLine: 143, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!345 = !DILocalVariable(name: "h", scope: !344, file: !45, line: 144, type: !23)
!346 = !DILocation(line: 144, column: 9, scope: !344)
!347 = !DILocalVariable(name: "j", scope: !344, file: !45, line: 144, type: !23)
!348 = !DILocation(line: 144, column: 11, scope: !344)
!349 = !DILocalVariable(name: "data", scope: !344, file: !45, line: 145, type: !42)
!350 = !DILocation(line: 145, column: 12, scope: !344)
!351 = !DILocalVariable(name: "dataBuffer", scope: !344, file: !45, line: 146, type: !62)
!352 = !DILocation(line: 146, column: 10, scope: !344)
!353 = !DILocation(line: 147, column: 12, scope: !344)
!354 = !DILocation(line: 147, column: 10, scope: !344)
!355 = !DILocation(line: 148, column: 11, scope: !356)
!356 = distinct !DILexicalBlock(scope: !344, file: !45, line: 148, column: 5)
!357 = !DILocation(line: 148, column: 9, scope: !356)
!358 = !DILocation(line: 148, column: 16, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !45, line: 148, column: 5)
!360 = !DILocation(line: 148, column: 18, scope: !359)
!361 = !DILocation(line: 148, column: 5, scope: !356)
!362 = !DILocation(line: 151, column: 16, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !45, line: 149, column: 5)
!364 = !DILocation(line: 151, column: 9, scope: !363)
!365 = !DILocation(line: 152, column: 5, scope: !363)
!366 = !DILocation(line: 148, column: 24, scope: !359)
!367 = !DILocation(line: 148, column: 5, scope: !359)
!368 = distinct !{!368, !361, !369, !180}
!369 = !DILocation(line: 152, column: 5, scope: !356)
!370 = !DILocation(line: 153, column: 11, scope: !371)
!371 = distinct !DILexicalBlock(scope: !344, file: !45, line: 153, column: 5)
!372 = !DILocation(line: 153, column: 9, scope: !371)
!373 = !DILocation(line: 153, column: 16, scope: !374)
!374 = distinct !DILexicalBlock(scope: !371, file: !45, line: 153, column: 5)
!375 = !DILocation(line: 153, column: 18, scope: !374)
!376 = !DILocation(line: 153, column: 5, scope: !371)
!377 = !DILocalVariable(name: "i", scope: !378, file: !45, line: 156, type: !23)
!378 = distinct !DILexicalBlock(scope: !379, file: !45, line: 155, column: 9)
!379 = distinct !DILexicalBlock(scope: !374, file: !45, line: 154, column: 5)
!380 = !DILocation(line: 156, column: 17, scope: !378)
!381 = !DILocalVariable(name: "n", scope: !378, file: !45, line: 156, type: !23)
!382 = !DILocation(line: 156, column: 20, scope: !378)
!383 = !DILocalVariable(name: "intVariable", scope: !378, file: !45, line: 156, type: !23)
!384 = !DILocation(line: 156, column: 23, scope: !378)
!385 = !DILocation(line: 157, column: 24, scope: !386)
!386 = distinct !DILexicalBlock(scope: !378, file: !45, line: 157, column: 17)
!387 = !DILocation(line: 157, column: 17, scope: !386)
!388 = !DILocation(line: 157, column: 40, scope: !386)
!389 = !DILocation(line: 157, column: 17, scope: !378)
!390 = !DILocation(line: 160, column: 29, scope: !391)
!391 = distinct !DILexicalBlock(scope: !386, file: !45, line: 158, column: 13)
!392 = !DILocation(line: 161, column: 24, scope: !393)
!393 = distinct !DILexicalBlock(scope: !391, file: !45, line: 161, column: 17)
!394 = !DILocation(line: 161, column: 22, scope: !393)
!395 = !DILocation(line: 161, column: 29, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !45, line: 161, column: 17)
!397 = !DILocation(line: 161, column: 33, scope: !396)
!398 = !DILocation(line: 161, column: 31, scope: !396)
!399 = !DILocation(line: 161, column: 17, scope: !393)
!400 = !DILocation(line: 164, column: 32, scope: !401)
!401 = distinct !DILexicalBlock(scope: !396, file: !45, line: 162, column: 17)
!402 = !DILocation(line: 165, column: 17, scope: !401)
!403 = !DILocation(line: 161, column: 37, scope: !396)
!404 = !DILocation(line: 161, column: 17, scope: !396)
!405 = distinct !{!405, !399, !406, !180}
!406 = !DILocation(line: 165, column: 17, scope: !393)
!407 = !DILocation(line: 166, column: 30, scope: !391)
!408 = !DILocation(line: 166, column: 17, scope: !391)
!409 = !DILocation(line: 167, column: 13, scope: !391)
!410 = !DILocation(line: 169, column: 5, scope: !379)
!411 = !DILocation(line: 153, column: 24, scope: !374)
!412 = !DILocation(line: 153, column: 5, scope: !374)
!413 = distinct !{!413, !376, !414, !180}
!414 = !DILocation(line: 169, column: 5, scope: !371)
!415 = !DILocation(line: 170, column: 1, scope: !344)
!416 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_17_good", scope: !45, file: !45, line: 172, type: !53, scopeLine: 173, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!417 = !DILocation(line: 174, column: 5, scope: !416)
!418 = !DILocation(line: 175, column: 5, scope: !416)
!419 = !DILocation(line: 176, column: 1, scope: !416)
!420 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !421, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !42}
!423 = !DILocalVariable(name: "line", arg: 1, scope: !420, file: !3, line: 11, type: !42)
!424 = !DILocation(line: 11, column: 25, scope: !420)
!425 = !DILocation(line: 13, column: 1, scope: !420)
!426 = !DILocation(line: 14, column: 8, scope: !427)
!427 = distinct !DILexicalBlock(scope: !420, file: !3, line: 14, column: 8)
!428 = !DILocation(line: 14, column: 13, scope: !427)
!429 = !DILocation(line: 14, column: 8, scope: !420)
!430 = !DILocation(line: 16, column: 24, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !3, line: 15, column: 5)
!432 = !DILocation(line: 16, column: 9, scope: !431)
!433 = !DILocation(line: 17, column: 5, scope: !431)
!434 = !DILocation(line: 18, column: 5, scope: !420)
!435 = !DILocation(line: 19, column: 1, scope: !420)
!436 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !421, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!437 = !DILocalVariable(name: "line", arg: 1, scope: !436, file: !3, line: 20, type: !42)
!438 = !DILocation(line: 20, column: 29, scope: !436)
!439 = !DILocation(line: 22, column: 8, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !3, line: 22, column: 8)
!441 = !DILocation(line: 22, column: 13, scope: !440)
!442 = !DILocation(line: 22, column: 8, scope: !436)
!443 = !DILocation(line: 24, column: 24, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !3, line: 23, column: 5)
!445 = !DILocation(line: 24, column: 9, scope: !444)
!446 = !DILocation(line: 25, column: 5, scope: !444)
!447 = !DILocation(line: 26, column: 1, scope: !436)
!448 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !449, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !79, line: 74, baseType: !23)
!453 = !DILocalVariable(name: "line", arg: 1, scope: !448, file: !3, line: 27, type: !451)
!454 = !DILocation(line: 27, column: 29, scope: !448)
!455 = !DILocation(line: 29, column: 8, scope: !456)
!456 = distinct !DILexicalBlock(scope: !448, file: !3, line: 29, column: 8)
!457 = !DILocation(line: 29, column: 13, scope: !456)
!458 = !DILocation(line: 29, column: 8, scope: !448)
!459 = !DILocation(line: 31, column: 27, scope: !460)
!460 = distinct !DILexicalBlock(scope: !456, file: !3, line: 30, column: 5)
!461 = !DILocation(line: 31, column: 9, scope: !460)
!462 = !DILocation(line: 32, column: 5, scope: !460)
!463 = !DILocation(line: 33, column: 1, scope: !448)
!464 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !465, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !23}
!467 = !DILocalVariable(name: "intNumber", arg: 1, scope: !464, file: !3, line: 35, type: !23)
!468 = !DILocation(line: 35, column: 24, scope: !464)
!469 = !DILocation(line: 37, column: 20, scope: !464)
!470 = !DILocation(line: 37, column: 5, scope: !464)
!471 = !DILocation(line: 38, column: 1, scope: !464)
!472 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !473, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !475}
!475 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!476 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !472, file: !3, line: 40, type: !475)
!477 = !DILocation(line: 40, column: 28, scope: !472)
!478 = !DILocation(line: 42, column: 21, scope: !472)
!479 = !DILocation(line: 42, column: 5, scope: !472)
!480 = !DILocation(line: 43, column: 1, scope: !472)
!481 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !482, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !484}
!484 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!485 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !481, file: !3, line: 45, type: !484)
!486 = !DILocation(line: 45, column: 28, scope: !481)
!487 = !DILocation(line: 47, column: 20, scope: !481)
!488 = !DILocation(line: 47, column: 5, scope: !481)
!489 = !DILocation(line: 48, column: 1, scope: !481)
!490 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !491, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !113}
!493 = !DILocalVariable(name: "longNumber", arg: 1, scope: !490, file: !3, line: 50, type: !113)
!494 = !DILocation(line: 50, column: 26, scope: !490)
!495 = !DILocation(line: 52, column: 21, scope: !490)
!496 = !DILocation(line: 52, column: 5, scope: !490)
!497 = !DILocation(line: 53, column: 1, scope: !490)
!498 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !499, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !501}
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !502, line: 27, baseType: !503)
!502 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !112, line: 44, baseType: !113)
!504 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !498, file: !3, line: 55, type: !501)
!505 = !DILocation(line: 55, column: 33, scope: !498)
!506 = !DILocation(line: 57, column: 29, scope: !498)
!507 = !DILocation(line: 57, column: 5, scope: !498)
!508 = !DILocation(line: 58, column: 1, scope: !498)
!509 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !510, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !78}
!512 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !509, file: !3, line: 60, type: !78)
!513 = !DILocation(line: 60, column: 29, scope: !509)
!514 = !DILocation(line: 62, column: 21, scope: !509)
!515 = !DILocation(line: 62, column: 5, scope: !509)
!516 = !DILocation(line: 63, column: 1, scope: !509)
!517 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !518, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !43}
!520 = !DILocalVariable(name: "charHex", arg: 1, scope: !517, file: !3, line: 65, type: !43)
!521 = !DILocation(line: 65, column: 29, scope: !517)
!522 = !DILocation(line: 67, column: 22, scope: !517)
!523 = !DILocation(line: 67, column: 5, scope: !517)
!524 = !DILocation(line: 68, column: 1, scope: !517)
!525 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !526, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !452}
!528 = !DILocalVariable(name: "wideChar", arg: 1, scope: !525, file: !3, line: 70, type: !452)
!529 = !DILocation(line: 70, column: 29, scope: !525)
!530 = !DILocalVariable(name: "s", scope: !525, file: !3, line: 74, type: !531)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 64, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 2)
!534 = !DILocation(line: 74, column: 13, scope: !525)
!535 = !DILocation(line: 75, column: 16, scope: !525)
!536 = !DILocation(line: 75, column: 9, scope: !525)
!537 = !DILocation(line: 75, column: 14, scope: !525)
!538 = !DILocation(line: 76, column: 9, scope: !525)
!539 = !DILocation(line: 76, column: 14, scope: !525)
!540 = !DILocation(line: 77, column: 21, scope: !525)
!541 = !DILocation(line: 77, column: 5, scope: !525)
!542 = !DILocation(line: 78, column: 1, scope: !525)
!543 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !544, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !7}
!546 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !543, file: !3, line: 80, type: !7)
!547 = !DILocation(line: 80, column: 33, scope: !543)
!548 = !DILocation(line: 82, column: 20, scope: !543)
!549 = !DILocation(line: 82, column: 5, scope: !543)
!550 = !DILocation(line: 83, column: 1, scope: !543)
!551 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !552, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !25}
!554 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !551, file: !3, line: 85, type: !25)
!555 = !DILocation(line: 85, column: 45, scope: !551)
!556 = !DILocation(line: 87, column: 22, scope: !551)
!557 = !DILocation(line: 87, column: 5, scope: !551)
!558 = !DILocation(line: 88, column: 1, scope: !551)
!559 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !560, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !562}
!562 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!563 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !559, file: !3, line: 90, type: !562)
!564 = !DILocation(line: 90, column: 29, scope: !559)
!565 = !DILocation(line: 92, column: 20, scope: !559)
!566 = !DILocation(line: 92, column: 5, scope: !559)
!567 = !DILocation(line: 93, column: 1, scope: !559)
!568 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !569, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !573, line: 100, baseType: !574)
!573 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_090/source_code")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !573, line: 96, size: 64, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !574, file: !573, line: 98, baseType: !23, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !574, file: !573, line: 99, baseType: !23, size: 32, offset: 32)
!578 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !568, file: !3, line: 95, type: !571)
!579 = !DILocation(line: 95, column: 40, scope: !568)
!580 = !DILocation(line: 97, column: 26, scope: !568)
!581 = !DILocation(line: 97, column: 47, scope: !568)
!582 = !DILocation(line: 97, column: 55, scope: !568)
!583 = !DILocation(line: 97, column: 76, scope: !568)
!584 = !DILocation(line: 97, column: 5, scope: !568)
!585 = !DILocation(line: 98, column: 1, scope: !568)
!586 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !587, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !589, !78}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!590 = !DILocalVariable(name: "bytes", arg: 1, scope: !586, file: !3, line: 100, type: !589)
!591 = !DILocation(line: 100, column: 38, scope: !586)
!592 = !DILocalVariable(name: "numBytes", arg: 2, scope: !586, file: !3, line: 100, type: !78)
!593 = !DILocation(line: 100, column: 52, scope: !586)
!594 = !DILocalVariable(name: "i", scope: !586, file: !3, line: 102, type: !78)
!595 = !DILocation(line: 102, column: 12, scope: !586)
!596 = !DILocation(line: 103, column: 12, scope: !597)
!597 = distinct !DILexicalBlock(scope: !586, file: !3, line: 103, column: 5)
!598 = !DILocation(line: 103, column: 10, scope: !597)
!599 = !DILocation(line: 103, column: 17, scope: !600)
!600 = distinct !DILexicalBlock(scope: !597, file: !3, line: 103, column: 5)
!601 = !DILocation(line: 103, column: 21, scope: !600)
!602 = !DILocation(line: 103, column: 19, scope: !600)
!603 = !DILocation(line: 103, column: 5, scope: !597)
!604 = !DILocation(line: 105, column: 24, scope: !605)
!605 = distinct !DILexicalBlock(scope: !600, file: !3, line: 104, column: 5)
!606 = !DILocation(line: 105, column: 30, scope: !605)
!607 = !DILocation(line: 105, column: 9, scope: !605)
!608 = !DILocation(line: 106, column: 5, scope: !605)
!609 = !DILocation(line: 103, column: 31, scope: !600)
!610 = !DILocation(line: 103, column: 5, scope: !600)
!611 = distinct !{!611, !603, !612, !180}
!612 = !DILocation(line: 106, column: 5, scope: !597)
!613 = !DILocation(line: 107, column: 5, scope: !586)
!614 = !DILocation(line: 108, column: 1, scope: !586)
!615 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !616, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DISubroutineType(types: !617)
!617 = !{!78, !589, !78, !42}
!618 = !DILocalVariable(name: "bytes", arg: 1, scope: !615, file: !3, line: 113, type: !589)
!619 = !DILocation(line: 113, column: 39, scope: !615)
!620 = !DILocalVariable(name: "numBytes", arg: 2, scope: !615, file: !3, line: 113, type: !78)
!621 = !DILocation(line: 113, column: 53, scope: !615)
!622 = !DILocalVariable(name: "hex", arg: 3, scope: !615, file: !3, line: 113, type: !42)
!623 = !DILocation(line: 113, column: 71, scope: !615)
!624 = !DILocalVariable(name: "numWritten", scope: !615, file: !3, line: 115, type: !78)
!625 = !DILocation(line: 115, column: 12, scope: !615)
!626 = !DILocation(line: 121, column: 5, scope: !615)
!627 = !DILocation(line: 121, column: 12, scope: !615)
!628 = !DILocation(line: 121, column: 25, scope: !615)
!629 = !DILocation(line: 121, column: 23, scope: !615)
!630 = !DILocation(line: 121, column: 34, scope: !615)
!631 = !DILocation(line: 121, column: 37, scope: !615)
!632 = !DILocation(line: 121, column: 67, scope: !615)
!633 = !DILocation(line: 121, column: 70, scope: !615)
!634 = !DILocation(line: 0, scope: !615)
!635 = !DILocalVariable(name: "byte", scope: !636, file: !3, line: 123, type: !23)
!636 = distinct !DILexicalBlock(scope: !615, file: !3, line: 122, column: 5)
!637 = !DILocation(line: 123, column: 13, scope: !636)
!638 = !DILocation(line: 124, column: 17, scope: !636)
!639 = !DILocation(line: 124, column: 25, scope: !636)
!640 = !DILocation(line: 124, column: 23, scope: !636)
!641 = !DILocation(line: 124, column: 9, scope: !636)
!642 = !DILocation(line: 125, column: 45, scope: !636)
!643 = !DILocation(line: 125, column: 29, scope: !636)
!644 = !DILocation(line: 125, column: 9, scope: !636)
!645 = !DILocation(line: 125, column: 15, scope: !636)
!646 = !DILocation(line: 125, column: 27, scope: !636)
!647 = !DILocation(line: 126, column: 9, scope: !636)
!648 = distinct !{!648, !626, !649, !180}
!649 = !DILocation(line: 127, column: 5, scope: !615)
!650 = !DILocation(line: 129, column: 12, scope: !615)
!651 = !DILocation(line: 129, column: 5, scope: !615)
!652 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !653, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!653 = !DISubroutineType(types: !654)
!654 = !{!78, !589, !78, !451}
!655 = !DILocalVariable(name: "bytes", arg: 1, scope: !652, file: !3, line: 135, type: !589)
!656 = !DILocation(line: 135, column: 41, scope: !652)
!657 = !DILocalVariable(name: "numBytes", arg: 2, scope: !652, file: !3, line: 135, type: !78)
!658 = !DILocation(line: 135, column: 55, scope: !652)
!659 = !DILocalVariable(name: "hex", arg: 3, scope: !652, file: !3, line: 135, type: !451)
!660 = !DILocation(line: 135, column: 76, scope: !652)
!661 = !DILocalVariable(name: "numWritten", scope: !652, file: !3, line: 137, type: !78)
!662 = !DILocation(line: 137, column: 12, scope: !652)
!663 = !DILocation(line: 143, column: 5, scope: !652)
!664 = !DILocation(line: 143, column: 12, scope: !652)
!665 = !DILocation(line: 143, column: 25, scope: !652)
!666 = !DILocation(line: 143, column: 23, scope: !652)
!667 = !DILocation(line: 143, column: 34, scope: !652)
!668 = !DILocation(line: 143, column: 47, scope: !652)
!669 = !DILocation(line: 143, column: 55, scope: !652)
!670 = !DILocation(line: 143, column: 53, scope: !652)
!671 = !DILocation(line: 143, column: 37, scope: !652)
!672 = !DILocation(line: 143, column: 68, scope: !652)
!673 = !DILocation(line: 143, column: 81, scope: !652)
!674 = !DILocation(line: 143, column: 89, scope: !652)
!675 = !DILocation(line: 143, column: 87, scope: !652)
!676 = !DILocation(line: 143, column: 100, scope: !652)
!677 = !DILocation(line: 143, column: 71, scope: !652)
!678 = !DILocation(line: 0, scope: !652)
!679 = !DILocalVariable(name: "byte", scope: !680, file: !3, line: 145, type: !23)
!680 = distinct !DILexicalBlock(scope: !652, file: !3, line: 144, column: 5)
!681 = !DILocation(line: 145, column: 13, scope: !680)
!682 = !DILocation(line: 146, column: 18, scope: !680)
!683 = !DILocation(line: 146, column: 26, scope: !680)
!684 = !DILocation(line: 146, column: 24, scope: !680)
!685 = !DILocation(line: 146, column: 9, scope: !680)
!686 = !DILocation(line: 147, column: 45, scope: !680)
!687 = !DILocation(line: 147, column: 29, scope: !680)
!688 = !DILocation(line: 147, column: 9, scope: !680)
!689 = !DILocation(line: 147, column: 15, scope: !680)
!690 = !DILocation(line: 147, column: 27, scope: !680)
!691 = !DILocation(line: 148, column: 9, scope: !680)
!692 = distinct !{!692, !663, !693, !180}
!693 = !DILocation(line: 149, column: 5, scope: !652)
!694 = !DILocation(line: 151, column: 12, scope: !652)
!695 = !DILocation(line: 151, column: 5, scope: !652)
!696 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !697, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!697 = !DISubroutineType(types: !698)
!698 = !{!23}
!699 = !DILocation(line: 158, column: 5, scope: !696)
!700 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !697, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!701 = !DILocation(line: 163, column: 5, scope: !700)
!702 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !697, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!703 = !DILocation(line: 168, column: 13, scope: !702)
!704 = !DILocation(line: 168, column: 20, scope: !702)
!705 = !DILocation(line: 168, column: 5, scope: !702)
!706 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!707 = !DILocation(line: 187, column: 16, scope: !706)
!708 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!709 = !DILocation(line: 188, column: 16, scope: !708)
!710 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!711 = !DILocation(line: 189, column: 16, scope: !710)
!712 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!713 = !DILocation(line: 190, column: 16, scope: !712)
!714 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!715 = !DILocation(line: 191, column: 16, scope: !714)
!716 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!717 = !DILocation(line: 192, column: 16, scope: !716)
!718 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!719 = !DILocation(line: 193, column: 16, scope: !718)
!720 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!721 = !DILocation(line: 194, column: 16, scope: !720)
!722 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!723 = !DILocation(line: 195, column: 16, scope: !722)
!724 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!725 = !DILocation(line: 198, column: 15, scope: !724)
!726 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!727 = !DILocation(line: 199, column: 15, scope: !726)
!728 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!729 = !DILocation(line: 200, column: 15, scope: !728)
!730 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!731 = !DILocation(line: 201, column: 15, scope: !730)
!732 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!733 = !DILocation(line: 202, column: 15, scope: !732)
!734 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!735 = !DILocation(line: 203, column: 15, scope: !734)
!736 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!737 = !DILocation(line: 204, column: 15, scope: !736)
!738 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!739 = !DILocation(line: 205, column: 15, scope: !738)
!740 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!741 = !DILocation(line: 206, column: 15, scope: !740)
