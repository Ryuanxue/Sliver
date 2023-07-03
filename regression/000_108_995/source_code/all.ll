; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.3 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.5 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.6 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_18_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
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
  %2 = load i64, i64* %dataLen, align 8, !dbg !75
  %sub = sub i64 100, %2, !dbg !77
  %cmp = icmp ugt i64 %sub, 1, !dbg !78
  br i1 %cmp, label %if.then, label %if.end18, !dbg !79

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !80
  %4 = load i64, i64* %dataLen, align 8, !dbg !83
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !84
  %5 = load i64, i64* %dataLen, align 8, !dbg !85
  %sub1 = sub i64 100, %5, !dbg !86
  %conv = trunc i64 %sub1 to i32, !dbg !87
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !88
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !89
  %cmp3 = icmp ne i8* %call2, null, !dbg !90
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !91

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !92
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !94
  store i64 %call6, i64* %dataLen, align 8, !dbg !95
  %8 = load i64, i64* %dataLen, align 8, !dbg !96
  %cmp7 = icmp ugt i64 %8, 0, !dbg !98
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !99

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !100
  %10 = load i64, i64* %dataLen, align 8, !dbg !101
  %sub9 = sub i64 %10, 1, !dbg !102
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !100
  %11 = load i8, i8* %arrayidx, align 1, !dbg !100
  %conv10 = sext i8 %11 to i32, !dbg !100
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !103
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !104

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !105
  %13 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub14 = sub i64 %13, 1, !dbg !108
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !105
  store i8 0, i8* %arrayidx15, align 1, !dbg !109
  br label %if.end, !dbg !110

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !111

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !112
  %14 = load i8*, i8** %data, align 8, !dbg !114
  %15 = load i64, i64* %dataLen, align 8, !dbg !115
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !114
  store i8 0, i8* %arrayidx16, align 1, !dbg !116
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !117

if.end18:                                         ; preds = %if.end17, %source
  br label %sink, !dbg !118

sink:                                             ; preds = %if.end18
  call void @llvm.dbg.label(metadata !119), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %i, metadata !121, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata i32* %n, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !126, metadata !DIExpression()), !dbg !127
  %16 = load i8*, i8** %data, align 8, !dbg !128
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !130
  %cmp20 = icmp eq i32 %call19, 1, !dbg !131
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !132

if.then22:                                        ; preds = %sink
  store i32 0, i32* %intVariable, align 4, !dbg !133
  store i32 0, i32* %i, align 4, !dbg !135
  br label %for.cond, !dbg !137

for.cond:                                         ; preds = %for.inc, %if.then22
  %17 = load i32, i32* %i, align 4, !dbg !138
  %18 = load i32, i32* %n, align 4, !dbg !140
  %cmp23 = icmp slt i32 %17, %18, !dbg !141
  br i1 %cmp23, label %for.body, label %for.end, !dbg !142

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !143
  %inc = add nsw i32 %19, 1, !dbg !143
  store i32 %inc, i32* %intVariable, align 4, !dbg !143
  br label %for.inc, !dbg !145

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !146
  %inc25 = add nsw i32 %20, 1, !dbg !146
  store i32 %inc25, i32* %i, align 4, !dbg !146
  br label %for.cond, !dbg !147, !llvm.loop !148

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !151
  call void @printIntLine(i32 %21), !dbg !152
  br label %if.end26, !dbg !153

if.end26:                                         ; preds = %for.end, %sink
  ret void, !dbg !154
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !155 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !158, metadata !DIExpression()), !dbg !159
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !159
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !159
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !160
  store i8* %arraydecay, i8** %data, align 8, !dbg !161
  br label %source, !dbg !162

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !163), !dbg !164
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !165, metadata !DIExpression()), !dbg !167
  %1 = load i8*, i8** %data, align 8, !dbg !168
  %call = call i64 @strlen(i8* %1) #7, !dbg !169
  store i64 %call, i64* %dataLen, align 8, !dbg !167
  %2 = load i64, i64* %dataLen, align 8, !dbg !170
  %sub = sub i64 100, %2, !dbg !172
  %cmp = icmp ugt i64 %sub, 1, !dbg !173
  br i1 %cmp, label %if.then, label %if.end18, !dbg !174

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !175
  %4 = load i64, i64* %dataLen, align 8, !dbg !178
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !179
  %5 = load i64, i64* %dataLen, align 8, !dbg !180
  %sub1 = sub i64 100, %5, !dbg !181
  %conv = trunc i64 %sub1 to i32, !dbg !182
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !183
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !184
  %cmp3 = icmp ne i8* %call2, null, !dbg !185
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !186

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !187
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !189
  store i64 %call6, i64* %dataLen, align 8, !dbg !190
  %8 = load i64, i64* %dataLen, align 8, !dbg !191
  %cmp7 = icmp ugt i64 %8, 0, !dbg !193
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !194

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !195
  %10 = load i64, i64* %dataLen, align 8, !dbg !196
  %sub9 = sub i64 %10, 1, !dbg !197
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !195
  %11 = load i8, i8* %arrayidx, align 1, !dbg !195
  %conv10 = sext i8 %11 to i32, !dbg !195
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !198
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !199

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !200
  %13 = load i64, i64* %dataLen, align 8, !dbg !202
  %sub14 = sub i64 %13, 1, !dbg !203
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !200
  store i8 0, i8* %arrayidx15, align 1, !dbg !204
  br label %if.end, !dbg !205

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !206

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !207
  %14 = load i8*, i8** %data, align 8, !dbg !209
  %15 = load i64, i64* %dataLen, align 8, !dbg !210
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !209
  store i8 0, i8* %arrayidx16, align 1, !dbg !211
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !212

if.end18:                                         ; preds = %if.end17, %source
  br label %sink, !dbg !213

sink:                                             ; preds = %if.end18
  call void @llvm.dbg.label(metadata !214), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %i, metadata !216, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %n, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !221, metadata !DIExpression()), !dbg !222
  %16 = load i8*, i8** %data, align 8, !dbg !223
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !225
  %cmp20 = icmp eq i32 %call19, 1, !dbg !226
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !227

if.then22:                                        ; preds = %sink
  %17 = load i32, i32* %n, align 4, !dbg !228
  %cmp23 = icmp slt i32 %17, 10000, !dbg !231
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !232

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !233
  store i32 0, i32* %i, align 4, !dbg !235
  br label %for.cond, !dbg !237

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %i, align 4, !dbg !238
  %19 = load i32, i32* %n, align 4, !dbg !240
  %cmp26 = icmp slt i32 %18, %19, !dbg !241
  br i1 %cmp26, label %for.body, label %for.end, !dbg !242

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !243
  %inc = add nsw i32 %20, 1, !dbg !243
  store i32 %inc, i32* %intVariable, align 4, !dbg !243
  br label %for.inc, !dbg !245

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !246
  %inc28 = add nsw i32 %21, 1, !dbg !246
  store i32 %inc28, i32* %i, align 4, !dbg !246
  br label %for.cond, !dbg !247, !llvm.loop !248

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !250
  call void @printIntLine(i32 %22), !dbg !251
  br label %if.end29, !dbg !252

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !253

if.end30:                                         ; preds = %if.end29, %sink
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !255 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !258, metadata !DIExpression()), !dbg !259
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !259
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !259
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !260
  store i8* %arraydecay, i8** %data, align 8, !dbg !261
  br label %source, !dbg !262

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !263), !dbg !264
  %1 = load i8*, i8** %data, align 8, !dbg !265
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !266
  br label %sink, !dbg !267

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !268), !dbg !269
  call void @llvm.dbg.declare(metadata i32* %i, metadata !270, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata i32* %n, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !275, metadata !DIExpression()), !dbg !276
  %2 = load i8*, i8** %data, align 8, !dbg !277
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !279
  %cmp = icmp eq i32 %call1, 1, !dbg !280
  br i1 %cmp, label %if.then, label %if.end, !dbg !281

if.then:                                          ; preds = %sink
  store i32 0, i32* %intVariable, align 4, !dbg !282
  store i32 0, i32* %i, align 4, !dbg !284
  br label %for.cond, !dbg !286

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !287
  %4 = load i32, i32* %n, align 4, !dbg !289
  %cmp2 = icmp slt i32 %3, %4, !dbg !290
  br i1 %cmp2, label %for.body, label %for.end, !dbg !291

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !292
  %inc = add nsw i32 %5, 1, !dbg !292
  store i32 %inc, i32* %intVariable, align 4, !dbg !292
  br label %for.inc, !dbg !294

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !295
  %inc3 = add nsw i32 %6, 1, !dbg !295
  store i32 %inc3, i32* %i, align 4, !dbg !295
  br label %for.cond, !dbg !296, !llvm.loop !297

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !299
  call void @printIntLine(i32 %7), !dbg !300
  br label %if.end, !dbg !301

if.end:                                           ; preds = %for.end, %sink
  ret void, !dbg !302
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_18_good() #0 !dbg !303 {
entry:
  call void @goodB2G(), !dbg !304
  call void @goodG2B(), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !307 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !310, metadata !DIExpression()), !dbg !311
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !312
  %0 = load i8*, i8** %line.addr, align 8, !dbg !313
  %cmp = icmp ne i8* %0, null, !dbg !315
  br i1 %cmp, label %if.then, label %if.end, !dbg !316

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !317
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !319
  br label %if.end, !dbg !320

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !321
  ret void, !dbg !322
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !323 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = load i8*, i8** %line.addr, align 8, !dbg !326
  %cmp = icmp ne i8* %0, null, !dbg !328
  br i1 %cmp, label %if.then, label %if.end, !dbg !329

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !330
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !332
  br label %if.end, !dbg !333

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !335 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load i32*, i32** %line.addr, align 8, !dbg !342
  %cmp = icmp ne i32* %0, null, !dbg !344
  br i1 %cmp, label %if.then, label %if.end, !dbg !345

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !346
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !348
  br label %if.end, !dbg !349

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !350
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !351 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !354, metadata !DIExpression()), !dbg !355
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !356
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !357
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !359 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !365
  %conv = sext i16 %0 to i32, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !368 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !374
  %conv = fpext float %0 to double, !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !377 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !381, metadata !DIExpression()), !dbg !382
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !383
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !384
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !386 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !393, metadata !DIExpression()), !dbg !394
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !395
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !396
  ret void, !dbg !397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !398 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !403
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !404
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !406 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !411
  %conv = sext i8 %0 to i32, !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !414 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !419, metadata !DIExpression()), !dbg !423
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !424
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !425
  store i32 %0, i32* %arrayidx, align 4, !dbg !426
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !427
  store i32 0, i32* %arrayidx1, align 4, !dbg !428
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !429
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !430
  ret void, !dbg !431
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !432 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !437
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !438
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !440 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !445
  %conv = zext i8 %0 to i32, !dbg !445
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !446
  ret void, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !448 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !452, metadata !DIExpression()), !dbg !453
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !454
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !455
  ret void, !dbg !456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !457 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !469
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !470
  %1 = load i32, i32* %intOne, align 4, !dbg !470
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !471
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !472
  %3 = load i32, i32* %intTwo, align 4, !dbg !472
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !473
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !475 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !479, metadata !DIExpression()), !dbg !480
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !481, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata i64* %i, metadata !483, metadata !DIExpression()), !dbg !484
  store i64 0, i64* %i, align 8, !dbg !485
  br label %for.cond, !dbg !487

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !488
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !490
  %cmp = icmp ult i64 %0, %1, !dbg !491
  br i1 %cmp, label %for.body, label %for.end, !dbg !492

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !493
  %3 = load i64, i64* %i, align 8, !dbg !495
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !493
  %4 = load i8, i8* %arrayidx, align 1, !dbg !493
  %conv = zext i8 %4 to i32, !dbg !493
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !496
  br label %for.inc, !dbg !497

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !498
  %inc = add i64 %5, 1, !dbg !498
  store i64 %inc, i64* %i, align 8, !dbg !498
  br label %for.cond, !dbg !499, !llvm.loop !500

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !502
  ret void, !dbg !503
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !504 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !507, metadata !DIExpression()), !dbg !508
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !509, metadata !DIExpression()), !dbg !510
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !513, metadata !DIExpression()), !dbg !514
  store i64 0, i64* %numWritten, align 8, !dbg !514
  br label %while.cond, !dbg !515

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !516
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !517
  %cmp = icmp ult i64 %0, %1, !dbg !518
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !519

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !520
  %2 = load i16*, i16** %call, align 8, !dbg !520
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !520
  %4 = load i64, i64* %numWritten, align 8, !dbg !520
  %mul = mul i64 2, %4, !dbg !520
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !520
  %5 = load i8, i8* %arrayidx, align 1, !dbg !520
  %conv = sext i8 %5 to i32, !dbg !520
  %idxprom = sext i32 %conv to i64, !dbg !520
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !520
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !520
  %conv2 = zext i16 %6 to i32, !dbg !520
  %and = and i32 %conv2, 4096, !dbg !520
  %tobool = icmp ne i32 %and, 0, !dbg !520
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !521

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !522
  %7 = load i16*, i16** %call3, align 8, !dbg !522
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !522
  %9 = load i64, i64* %numWritten, align 8, !dbg !522
  %mul4 = mul i64 2, %9, !dbg !522
  %add = add i64 %mul4, 1, !dbg !522
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !522
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !522
  %conv6 = sext i8 %10 to i32, !dbg !522
  %idxprom7 = sext i32 %conv6 to i64, !dbg !522
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !522
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !522
  %conv9 = zext i16 %11 to i32, !dbg !522
  %and10 = and i32 %conv9, 4096, !dbg !522
  %tobool11 = icmp ne i32 %and10, 0, !dbg !521
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !523
  br i1 %12, label %while.body, label %while.end, !dbg !515

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !524, metadata !DIExpression()), !dbg !526
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !527
  %14 = load i64, i64* %numWritten, align 8, !dbg !528
  %mul12 = mul i64 2, %14, !dbg !529
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !527
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !530
  %15 = load i32, i32* %byte, align 4, !dbg !531
  %conv15 = trunc i32 %15 to i8, !dbg !532
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !533
  %17 = load i64, i64* %numWritten, align 8, !dbg !534
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !533
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !535
  %18 = load i64, i64* %numWritten, align 8, !dbg !536
  %inc = add i64 %18, 1, !dbg !536
  store i64 %inc, i64* %numWritten, align 8, !dbg !536
  br label %while.cond, !dbg !515, !llvm.loop !537

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !539
  ret i64 %19, !dbg !540
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !541 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !544, metadata !DIExpression()), !dbg !545
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !546, metadata !DIExpression()), !dbg !547
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !548, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !550, metadata !DIExpression()), !dbg !551
  store i64 0, i64* %numWritten, align 8, !dbg !551
  br label %while.cond, !dbg !552

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !553
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !554
  %cmp = icmp ult i64 %0, %1, !dbg !555
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !556

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !557
  %3 = load i64, i64* %numWritten, align 8, !dbg !558
  %mul = mul i64 2, %3, !dbg !559
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !557
  %4 = load i32, i32* %arrayidx, align 4, !dbg !557
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !560
  %tobool = icmp ne i32 %call, 0, !dbg !560
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !561

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !562
  %6 = load i64, i64* %numWritten, align 8, !dbg !563
  %mul1 = mul i64 2, %6, !dbg !564
  %add = add i64 %mul1, 1, !dbg !565
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !562
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !562
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !566
  %tobool4 = icmp ne i32 %call3, 0, !dbg !561
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !567
  br i1 %8, label %while.body, label %while.end, !dbg !552

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !568, metadata !DIExpression()), !dbg !570
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !571
  %10 = load i64, i64* %numWritten, align 8, !dbg !572
  %mul5 = mul i64 2, %10, !dbg !573
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !571
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !574
  %11 = load i32, i32* %byte, align 4, !dbg !575
  %conv = trunc i32 %11 to i8, !dbg !576
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !577
  %13 = load i64, i64* %numWritten, align 8, !dbg !578
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !577
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !579
  %14 = load i64, i64* %numWritten, align 8, !dbg !580
  %inc = add i64 %14, 1, !dbg !580
  store i64 %inc, i64* %numWritten, align 8, !dbg !580
  br label %while.cond, !dbg !552, !llvm.loop !581

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !583
  ret i64 %15, !dbg !584
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !585 {
entry:
  ret i32 1, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !589 {
entry:
  ret i32 0, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !591 {
entry:
  %call = call i32 @rand() #8, !dbg !592
  %rem = srem i32 %call, 2, !dbg !593
  ret i32 %rem, !dbg !594
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !629 {
entry:
  ret void, !dbg !630
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_995/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_995/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_18_bad", scope: !45, file: !45, line: 29, type: !53, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 31, type: !42)
!56 = !DILocation(line: 31, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 32, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 100)
!61 = !DILocation(line: 32, column: 10, scope: !52)
!62 = !DILocation(line: 33, column: 12, scope: !52)
!63 = !DILocation(line: 33, column: 10, scope: !52)
!64 = !DILocation(line: 34, column: 5, scope: !52)
!65 = !DILabel(scope: !52, name: "source", file: !45, line: 35)
!66 = !DILocation(line: 35, column: 1, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 38, type: !69)
!68 = distinct !DILexicalBlock(scope: !52, file: !45, line: 36, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 38, column: 16, scope: !68)
!73 = !DILocation(line: 38, column: 33, scope: !68)
!74 = !DILocation(line: 38, column: 26, scope: !68)
!75 = !DILocation(line: 40, column: 17, scope: !76)
!76 = distinct !DILexicalBlock(scope: !68, file: !45, line: 40, column: 13)
!77 = !DILocation(line: 40, column: 16, scope: !76)
!78 = !DILocation(line: 40, column: 25, scope: !76)
!79 = !DILocation(line: 40, column: 13, scope: !68)
!80 = !DILocation(line: 43, column: 23, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !45, line: 43, column: 17)
!82 = distinct !DILexicalBlock(scope: !76, file: !45, line: 41, column: 9)
!83 = !DILocation(line: 43, column: 28, scope: !81)
!84 = !DILocation(line: 43, column: 27, scope: !81)
!85 = !DILocation(line: 43, column: 47, scope: !81)
!86 = !DILocation(line: 43, column: 46, scope: !81)
!87 = !DILocation(line: 43, column: 37, scope: !81)
!88 = !DILocation(line: 43, column: 57, scope: !81)
!89 = !DILocation(line: 43, column: 17, scope: !81)
!90 = !DILocation(line: 43, column: 64, scope: !81)
!91 = !DILocation(line: 43, column: 17, scope: !82)
!92 = !DILocation(line: 47, column: 34, scope: !93)
!93 = distinct !DILexicalBlock(scope: !81, file: !45, line: 44, column: 13)
!94 = !DILocation(line: 47, column: 27, scope: !93)
!95 = !DILocation(line: 47, column: 25, scope: !93)
!96 = !DILocation(line: 48, column: 21, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !45, line: 48, column: 21)
!98 = !DILocation(line: 48, column: 29, scope: !97)
!99 = !DILocation(line: 48, column: 33, scope: !97)
!100 = !DILocation(line: 48, column: 36, scope: !97)
!101 = !DILocation(line: 48, column: 41, scope: !97)
!102 = !DILocation(line: 48, column: 48, scope: !97)
!103 = !DILocation(line: 48, column: 52, scope: !97)
!104 = !DILocation(line: 48, column: 21, scope: !93)
!105 = !DILocation(line: 50, column: 21, scope: !106)
!106 = distinct !DILexicalBlock(scope: !97, file: !45, line: 49, column: 17)
!107 = !DILocation(line: 50, column: 26, scope: !106)
!108 = !DILocation(line: 50, column: 33, scope: !106)
!109 = !DILocation(line: 50, column: 37, scope: !106)
!110 = !DILocation(line: 51, column: 17, scope: !106)
!111 = !DILocation(line: 52, column: 13, scope: !93)
!112 = !DILocation(line: 55, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !81, file: !45, line: 54, column: 13)
!114 = !DILocation(line: 57, column: 17, scope: !113)
!115 = !DILocation(line: 57, column: 22, scope: !113)
!116 = !DILocation(line: 57, column: 31, scope: !113)
!117 = !DILocation(line: 59, column: 9, scope: !82)
!118 = !DILocation(line: 61, column: 5, scope: !52)
!119 = !DILabel(scope: !52, name: "sink", file: !45, line: 62)
!120 = !DILocation(line: 62, column: 1, scope: !52)
!121 = !DILocalVariable(name: "i", scope: !122, file: !45, line: 64, type: !23)
!122 = distinct !DILexicalBlock(scope: !52, file: !45, line: 63, column: 5)
!123 = !DILocation(line: 64, column: 13, scope: !122)
!124 = !DILocalVariable(name: "n", scope: !122, file: !45, line: 64, type: !23)
!125 = !DILocation(line: 64, column: 16, scope: !122)
!126 = !DILocalVariable(name: "intVariable", scope: !122, file: !45, line: 64, type: !23)
!127 = !DILocation(line: 64, column: 19, scope: !122)
!128 = !DILocation(line: 65, column: 20, scope: !129)
!129 = distinct !DILexicalBlock(scope: !122, file: !45, line: 65, column: 13)
!130 = !DILocation(line: 65, column: 13, scope: !129)
!131 = !DILocation(line: 65, column: 36, scope: !129)
!132 = !DILocation(line: 65, column: 13, scope: !122)
!133 = !DILocation(line: 68, column: 25, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !45, line: 66, column: 9)
!135 = !DILocation(line: 69, column: 20, scope: !136)
!136 = distinct !DILexicalBlock(scope: !134, file: !45, line: 69, column: 13)
!137 = !DILocation(line: 69, column: 18, scope: !136)
!138 = !DILocation(line: 69, column: 25, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !45, line: 69, column: 13)
!140 = !DILocation(line: 69, column: 29, scope: !139)
!141 = !DILocation(line: 69, column: 27, scope: !139)
!142 = !DILocation(line: 69, column: 13, scope: !136)
!143 = !DILocation(line: 72, column: 28, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !45, line: 70, column: 13)
!145 = !DILocation(line: 73, column: 13, scope: !144)
!146 = !DILocation(line: 69, column: 33, scope: !139)
!147 = !DILocation(line: 69, column: 13, scope: !139)
!148 = distinct !{!148, !142, !149, !150}
!149 = !DILocation(line: 73, column: 13, scope: !136)
!150 = !{!"llvm.loop.mustprogress"}
!151 = !DILocation(line: 74, column: 26, scope: !134)
!152 = !DILocation(line: 74, column: 13, scope: !134)
!153 = !DILocation(line: 75, column: 9, scope: !134)
!154 = !DILocation(line: 77, column: 1, scope: !52)
!155 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 84, type: !53, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!156 = !DILocalVariable(name: "data", scope: !155, file: !45, line: 86, type: !42)
!157 = !DILocation(line: 86, column: 12, scope: !155)
!158 = !DILocalVariable(name: "dataBuffer", scope: !155, file: !45, line: 87, type: !58)
!159 = !DILocation(line: 87, column: 10, scope: !155)
!160 = !DILocation(line: 88, column: 12, scope: !155)
!161 = !DILocation(line: 88, column: 10, scope: !155)
!162 = !DILocation(line: 89, column: 5, scope: !155)
!163 = !DILabel(scope: !155, name: "source", file: !45, line: 90)
!164 = !DILocation(line: 90, column: 1, scope: !155)
!165 = !DILocalVariable(name: "dataLen", scope: !166, file: !45, line: 93, type: !69)
!166 = distinct !DILexicalBlock(scope: !155, file: !45, line: 91, column: 5)
!167 = !DILocation(line: 93, column: 16, scope: !166)
!168 = !DILocation(line: 93, column: 33, scope: !166)
!169 = !DILocation(line: 93, column: 26, scope: !166)
!170 = !DILocation(line: 95, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !45, line: 95, column: 13)
!172 = !DILocation(line: 95, column: 16, scope: !171)
!173 = !DILocation(line: 95, column: 25, scope: !171)
!174 = !DILocation(line: 95, column: 13, scope: !166)
!175 = !DILocation(line: 98, column: 23, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !45, line: 98, column: 17)
!177 = distinct !DILexicalBlock(scope: !171, file: !45, line: 96, column: 9)
!178 = !DILocation(line: 98, column: 28, scope: !176)
!179 = !DILocation(line: 98, column: 27, scope: !176)
!180 = !DILocation(line: 98, column: 47, scope: !176)
!181 = !DILocation(line: 98, column: 46, scope: !176)
!182 = !DILocation(line: 98, column: 37, scope: !176)
!183 = !DILocation(line: 98, column: 57, scope: !176)
!184 = !DILocation(line: 98, column: 17, scope: !176)
!185 = !DILocation(line: 98, column: 64, scope: !176)
!186 = !DILocation(line: 98, column: 17, scope: !177)
!187 = !DILocation(line: 102, column: 34, scope: !188)
!188 = distinct !DILexicalBlock(scope: !176, file: !45, line: 99, column: 13)
!189 = !DILocation(line: 102, column: 27, scope: !188)
!190 = !DILocation(line: 102, column: 25, scope: !188)
!191 = !DILocation(line: 103, column: 21, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !45, line: 103, column: 21)
!193 = !DILocation(line: 103, column: 29, scope: !192)
!194 = !DILocation(line: 103, column: 33, scope: !192)
!195 = !DILocation(line: 103, column: 36, scope: !192)
!196 = !DILocation(line: 103, column: 41, scope: !192)
!197 = !DILocation(line: 103, column: 48, scope: !192)
!198 = !DILocation(line: 103, column: 52, scope: !192)
!199 = !DILocation(line: 103, column: 21, scope: !188)
!200 = !DILocation(line: 105, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !192, file: !45, line: 104, column: 17)
!202 = !DILocation(line: 105, column: 26, scope: !201)
!203 = !DILocation(line: 105, column: 33, scope: !201)
!204 = !DILocation(line: 105, column: 37, scope: !201)
!205 = !DILocation(line: 106, column: 17, scope: !201)
!206 = !DILocation(line: 107, column: 13, scope: !188)
!207 = !DILocation(line: 110, column: 17, scope: !208)
!208 = distinct !DILexicalBlock(scope: !176, file: !45, line: 109, column: 13)
!209 = !DILocation(line: 112, column: 17, scope: !208)
!210 = !DILocation(line: 112, column: 22, scope: !208)
!211 = !DILocation(line: 112, column: 31, scope: !208)
!212 = !DILocation(line: 114, column: 9, scope: !177)
!213 = !DILocation(line: 116, column: 5, scope: !155)
!214 = !DILabel(scope: !155, name: "sink", file: !45, line: 117)
!215 = !DILocation(line: 117, column: 1, scope: !155)
!216 = !DILocalVariable(name: "i", scope: !217, file: !45, line: 119, type: !23)
!217 = distinct !DILexicalBlock(scope: !155, file: !45, line: 118, column: 5)
!218 = !DILocation(line: 119, column: 13, scope: !217)
!219 = !DILocalVariable(name: "n", scope: !217, file: !45, line: 119, type: !23)
!220 = !DILocation(line: 119, column: 16, scope: !217)
!221 = !DILocalVariable(name: "intVariable", scope: !217, file: !45, line: 119, type: !23)
!222 = !DILocation(line: 119, column: 19, scope: !217)
!223 = !DILocation(line: 120, column: 20, scope: !224)
!224 = distinct !DILexicalBlock(scope: !217, file: !45, line: 120, column: 13)
!225 = !DILocation(line: 120, column: 13, scope: !224)
!226 = !DILocation(line: 120, column: 36, scope: !224)
!227 = !DILocation(line: 120, column: 13, scope: !217)
!228 = !DILocation(line: 123, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !45, line: 123, column: 17)
!230 = distinct !DILexicalBlock(scope: !224, file: !45, line: 121, column: 9)
!231 = !DILocation(line: 123, column: 19, scope: !229)
!232 = !DILocation(line: 123, column: 17, scope: !230)
!233 = !DILocation(line: 125, column: 29, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !45, line: 124, column: 13)
!235 = !DILocation(line: 126, column: 24, scope: !236)
!236 = distinct !DILexicalBlock(scope: !234, file: !45, line: 126, column: 17)
!237 = !DILocation(line: 126, column: 22, scope: !236)
!238 = !DILocation(line: 126, column: 29, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !45, line: 126, column: 17)
!240 = !DILocation(line: 126, column: 33, scope: !239)
!241 = !DILocation(line: 126, column: 31, scope: !239)
!242 = !DILocation(line: 126, column: 17, scope: !236)
!243 = !DILocation(line: 129, column: 32, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !45, line: 127, column: 17)
!245 = !DILocation(line: 130, column: 17, scope: !244)
!246 = !DILocation(line: 126, column: 37, scope: !239)
!247 = !DILocation(line: 126, column: 17, scope: !239)
!248 = distinct !{!248, !242, !249, !150}
!249 = !DILocation(line: 130, column: 17, scope: !236)
!250 = !DILocation(line: 131, column: 30, scope: !234)
!251 = !DILocation(line: 131, column: 17, scope: !234)
!252 = !DILocation(line: 132, column: 13, scope: !234)
!253 = !DILocation(line: 133, column: 9, scope: !230)
!254 = !DILocation(line: 135, column: 1, scope: !155)
!255 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 138, type: !53, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!256 = !DILocalVariable(name: "data", scope: !255, file: !45, line: 140, type: !42)
!257 = !DILocation(line: 140, column: 12, scope: !255)
!258 = !DILocalVariable(name: "dataBuffer", scope: !255, file: !45, line: 141, type: !58)
!259 = !DILocation(line: 141, column: 10, scope: !255)
!260 = !DILocation(line: 142, column: 12, scope: !255)
!261 = !DILocation(line: 142, column: 10, scope: !255)
!262 = !DILocation(line: 143, column: 5, scope: !255)
!263 = !DILabel(scope: !255, name: "source", file: !45, line: 144)
!264 = !DILocation(line: 144, column: 1, scope: !255)
!265 = !DILocation(line: 146, column: 12, scope: !255)
!266 = !DILocation(line: 146, column: 5, scope: !255)
!267 = !DILocation(line: 147, column: 5, scope: !255)
!268 = !DILabel(scope: !255, name: "sink", file: !45, line: 148)
!269 = !DILocation(line: 148, column: 1, scope: !255)
!270 = !DILocalVariable(name: "i", scope: !271, file: !45, line: 150, type: !23)
!271 = distinct !DILexicalBlock(scope: !255, file: !45, line: 149, column: 5)
!272 = !DILocation(line: 150, column: 13, scope: !271)
!273 = !DILocalVariable(name: "n", scope: !271, file: !45, line: 150, type: !23)
!274 = !DILocation(line: 150, column: 16, scope: !271)
!275 = !DILocalVariable(name: "intVariable", scope: !271, file: !45, line: 150, type: !23)
!276 = !DILocation(line: 150, column: 19, scope: !271)
!277 = !DILocation(line: 151, column: 20, scope: !278)
!278 = distinct !DILexicalBlock(scope: !271, file: !45, line: 151, column: 13)
!279 = !DILocation(line: 151, column: 13, scope: !278)
!280 = !DILocation(line: 151, column: 36, scope: !278)
!281 = !DILocation(line: 151, column: 13, scope: !271)
!282 = !DILocation(line: 154, column: 25, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !45, line: 152, column: 9)
!284 = !DILocation(line: 155, column: 20, scope: !285)
!285 = distinct !DILexicalBlock(scope: !283, file: !45, line: 155, column: 13)
!286 = !DILocation(line: 155, column: 18, scope: !285)
!287 = !DILocation(line: 155, column: 25, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !45, line: 155, column: 13)
!289 = !DILocation(line: 155, column: 29, scope: !288)
!290 = !DILocation(line: 155, column: 27, scope: !288)
!291 = !DILocation(line: 155, column: 13, scope: !285)
!292 = !DILocation(line: 158, column: 28, scope: !293)
!293 = distinct !DILexicalBlock(scope: !288, file: !45, line: 156, column: 13)
!294 = !DILocation(line: 159, column: 13, scope: !293)
!295 = !DILocation(line: 155, column: 33, scope: !288)
!296 = !DILocation(line: 155, column: 13, scope: !288)
!297 = distinct !{!297, !291, !298, !150}
!298 = !DILocation(line: 159, column: 13, scope: !285)
!299 = !DILocation(line: 160, column: 26, scope: !283)
!300 = !DILocation(line: 160, column: 13, scope: !283)
!301 = !DILocation(line: 161, column: 9, scope: !283)
!302 = !DILocation(line: 163, column: 1, scope: !255)
!303 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_18_good", scope: !45, file: !45, line: 165, type: !53, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!304 = !DILocation(line: 167, column: 5, scope: !303)
!305 = !DILocation(line: 168, column: 5, scope: !303)
!306 = !DILocation(line: 169, column: 1, scope: !303)
!307 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !308, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !42}
!310 = !DILocalVariable(name: "line", arg: 1, scope: !307, file: !3, line: 11, type: !42)
!311 = !DILocation(line: 11, column: 25, scope: !307)
!312 = !DILocation(line: 13, column: 1, scope: !307)
!313 = !DILocation(line: 14, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !307, file: !3, line: 14, column: 8)
!315 = !DILocation(line: 14, column: 13, scope: !314)
!316 = !DILocation(line: 14, column: 8, scope: !307)
!317 = !DILocation(line: 16, column: 24, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 15, column: 5)
!319 = !DILocation(line: 16, column: 9, scope: !318)
!320 = !DILocation(line: 17, column: 5, scope: !318)
!321 = !DILocation(line: 18, column: 5, scope: !307)
!322 = !DILocation(line: 19, column: 1, scope: !307)
!323 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !308, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!324 = !DILocalVariable(name: "line", arg: 1, scope: !323, file: !3, line: 20, type: !42)
!325 = !DILocation(line: 20, column: 29, scope: !323)
!326 = !DILocation(line: 22, column: 8, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !3, line: 22, column: 8)
!328 = !DILocation(line: 22, column: 13, scope: !327)
!329 = !DILocation(line: 22, column: 8, scope: !323)
!330 = !DILocation(line: 24, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !3, line: 23, column: 5)
!332 = !DILocation(line: 24, column: 9, scope: !331)
!333 = !DILocation(line: 25, column: 5, scope: !331)
!334 = !DILocation(line: 26, column: 1, scope: !323)
!335 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !336, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !23)
!340 = !DILocalVariable(name: "line", arg: 1, scope: !335, file: !3, line: 27, type: !338)
!341 = !DILocation(line: 27, column: 29, scope: !335)
!342 = !DILocation(line: 29, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !335, file: !3, line: 29, column: 8)
!344 = !DILocation(line: 29, column: 13, scope: !343)
!345 = !DILocation(line: 29, column: 8, scope: !335)
!346 = !DILocation(line: 31, column: 27, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !3, line: 30, column: 5)
!348 = !DILocation(line: 31, column: 9, scope: !347)
!349 = !DILocation(line: 32, column: 5, scope: !347)
!350 = !DILocation(line: 33, column: 1, scope: !335)
!351 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !352, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !23}
!354 = !DILocalVariable(name: "intNumber", arg: 1, scope: !351, file: !3, line: 35, type: !23)
!355 = !DILocation(line: 35, column: 24, scope: !351)
!356 = !DILocation(line: 37, column: 20, scope: !351)
!357 = !DILocation(line: 37, column: 5, scope: !351)
!358 = !DILocation(line: 38, column: 1, scope: !351)
!359 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !360, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362}
!362 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!363 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !359, file: !3, line: 40, type: !362)
!364 = !DILocation(line: 40, column: 28, scope: !359)
!365 = !DILocation(line: 42, column: 21, scope: !359)
!366 = !DILocation(line: 42, column: 5, scope: !359)
!367 = !DILocation(line: 43, column: 1, scope: !359)
!368 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !369, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371}
!371 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!372 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !368, file: !3, line: 45, type: !371)
!373 = !DILocation(line: 45, column: 28, scope: !368)
!374 = !DILocation(line: 47, column: 20, scope: !368)
!375 = !DILocation(line: 47, column: 5, scope: !368)
!376 = !DILocation(line: 48, column: 1, scope: !368)
!377 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !378, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380}
!380 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!381 = !DILocalVariable(name: "longNumber", arg: 1, scope: !377, file: !3, line: 50, type: !380)
!382 = !DILocation(line: 50, column: 26, scope: !377)
!383 = !DILocation(line: 52, column: 21, scope: !377)
!384 = !DILocation(line: 52, column: 5, scope: !377)
!385 = !DILocation(line: 53, column: 1, scope: !377)
!386 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !387, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389}
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !390, line: 27, baseType: !391)
!390 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !392, line: 44, baseType: !380)
!392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!393 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !386, file: !3, line: 55, type: !389)
!394 = !DILocation(line: 55, column: 33, scope: !386)
!395 = !DILocation(line: 57, column: 29, scope: !386)
!396 = !DILocation(line: 57, column: 5, scope: !386)
!397 = !DILocation(line: 58, column: 1, scope: !386)
!398 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !399, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !69}
!401 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !398, file: !3, line: 60, type: !69)
!402 = !DILocation(line: 60, column: 29, scope: !398)
!403 = !DILocation(line: 62, column: 21, scope: !398)
!404 = !DILocation(line: 62, column: 5, scope: !398)
!405 = !DILocation(line: 63, column: 1, scope: !398)
!406 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !407, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !43}
!409 = !DILocalVariable(name: "charHex", arg: 1, scope: !406, file: !3, line: 65, type: !43)
!410 = !DILocation(line: 65, column: 29, scope: !406)
!411 = !DILocation(line: 67, column: 22, scope: !406)
!412 = !DILocation(line: 67, column: 5, scope: !406)
!413 = !DILocation(line: 68, column: 1, scope: !406)
!414 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !415, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !339}
!417 = !DILocalVariable(name: "wideChar", arg: 1, scope: !414, file: !3, line: 70, type: !339)
!418 = !DILocation(line: 70, column: 29, scope: !414)
!419 = !DILocalVariable(name: "s", scope: !414, file: !3, line: 74, type: !420)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 64, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 2)
!423 = !DILocation(line: 74, column: 13, scope: !414)
!424 = !DILocation(line: 75, column: 16, scope: !414)
!425 = !DILocation(line: 75, column: 9, scope: !414)
!426 = !DILocation(line: 75, column: 14, scope: !414)
!427 = !DILocation(line: 76, column: 9, scope: !414)
!428 = !DILocation(line: 76, column: 14, scope: !414)
!429 = !DILocation(line: 77, column: 21, scope: !414)
!430 = !DILocation(line: 77, column: 5, scope: !414)
!431 = !DILocation(line: 78, column: 1, scope: !414)
!432 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !433, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !7}
!435 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !432, file: !3, line: 80, type: !7)
!436 = !DILocation(line: 80, column: 33, scope: !432)
!437 = !DILocation(line: 82, column: 20, scope: !432)
!438 = !DILocation(line: 82, column: 5, scope: !432)
!439 = !DILocation(line: 83, column: 1, scope: !432)
!440 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !441, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !25}
!443 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !440, file: !3, line: 85, type: !25)
!444 = !DILocation(line: 85, column: 45, scope: !440)
!445 = !DILocation(line: 87, column: 22, scope: !440)
!446 = !DILocation(line: 87, column: 5, scope: !440)
!447 = !DILocation(line: 88, column: 1, scope: !440)
!448 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !449, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !451}
!451 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!452 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !448, file: !3, line: 90, type: !451)
!453 = !DILocation(line: 90, column: 29, scope: !448)
!454 = !DILocation(line: 92, column: 20, scope: !448)
!455 = !DILocation(line: 92, column: 5, scope: !448)
!456 = !DILocation(line: 93, column: 1, scope: !448)
!457 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !458, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !462, line: 100, baseType: !463)
!462 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_995/source_code")
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !462, line: 96, size: 64, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !463, file: !462, line: 98, baseType: !23, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !463, file: !462, line: 99, baseType: !23, size: 32, offset: 32)
!467 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !457, file: !3, line: 95, type: !460)
!468 = !DILocation(line: 95, column: 40, scope: !457)
!469 = !DILocation(line: 97, column: 26, scope: !457)
!470 = !DILocation(line: 97, column: 47, scope: !457)
!471 = !DILocation(line: 97, column: 55, scope: !457)
!472 = !DILocation(line: 97, column: 76, scope: !457)
!473 = !DILocation(line: 97, column: 5, scope: !457)
!474 = !DILocation(line: 98, column: 1, scope: !457)
!475 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !476, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !478, !69}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!479 = !DILocalVariable(name: "bytes", arg: 1, scope: !475, file: !3, line: 100, type: !478)
!480 = !DILocation(line: 100, column: 38, scope: !475)
!481 = !DILocalVariable(name: "numBytes", arg: 2, scope: !475, file: !3, line: 100, type: !69)
!482 = !DILocation(line: 100, column: 52, scope: !475)
!483 = !DILocalVariable(name: "i", scope: !475, file: !3, line: 102, type: !69)
!484 = !DILocation(line: 102, column: 12, scope: !475)
!485 = !DILocation(line: 103, column: 12, scope: !486)
!486 = distinct !DILexicalBlock(scope: !475, file: !3, line: 103, column: 5)
!487 = !DILocation(line: 103, column: 10, scope: !486)
!488 = !DILocation(line: 103, column: 17, scope: !489)
!489 = distinct !DILexicalBlock(scope: !486, file: !3, line: 103, column: 5)
!490 = !DILocation(line: 103, column: 21, scope: !489)
!491 = !DILocation(line: 103, column: 19, scope: !489)
!492 = !DILocation(line: 103, column: 5, scope: !486)
!493 = !DILocation(line: 105, column: 24, scope: !494)
!494 = distinct !DILexicalBlock(scope: !489, file: !3, line: 104, column: 5)
!495 = !DILocation(line: 105, column: 30, scope: !494)
!496 = !DILocation(line: 105, column: 9, scope: !494)
!497 = !DILocation(line: 106, column: 5, scope: !494)
!498 = !DILocation(line: 103, column: 31, scope: !489)
!499 = !DILocation(line: 103, column: 5, scope: !489)
!500 = distinct !{!500, !492, !501, !150}
!501 = !DILocation(line: 106, column: 5, scope: !486)
!502 = !DILocation(line: 107, column: 5, scope: !475)
!503 = !DILocation(line: 108, column: 1, scope: !475)
!504 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !505, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DISubroutineType(types: !506)
!506 = !{!69, !478, !69, !42}
!507 = !DILocalVariable(name: "bytes", arg: 1, scope: !504, file: !3, line: 113, type: !478)
!508 = !DILocation(line: 113, column: 39, scope: !504)
!509 = !DILocalVariable(name: "numBytes", arg: 2, scope: !504, file: !3, line: 113, type: !69)
!510 = !DILocation(line: 113, column: 53, scope: !504)
!511 = !DILocalVariable(name: "hex", arg: 3, scope: !504, file: !3, line: 113, type: !42)
!512 = !DILocation(line: 113, column: 71, scope: !504)
!513 = !DILocalVariable(name: "numWritten", scope: !504, file: !3, line: 115, type: !69)
!514 = !DILocation(line: 115, column: 12, scope: !504)
!515 = !DILocation(line: 121, column: 5, scope: !504)
!516 = !DILocation(line: 121, column: 12, scope: !504)
!517 = !DILocation(line: 121, column: 25, scope: !504)
!518 = !DILocation(line: 121, column: 23, scope: !504)
!519 = !DILocation(line: 121, column: 34, scope: !504)
!520 = !DILocation(line: 121, column: 37, scope: !504)
!521 = !DILocation(line: 121, column: 67, scope: !504)
!522 = !DILocation(line: 121, column: 70, scope: !504)
!523 = !DILocation(line: 0, scope: !504)
!524 = !DILocalVariable(name: "byte", scope: !525, file: !3, line: 123, type: !23)
!525 = distinct !DILexicalBlock(scope: !504, file: !3, line: 122, column: 5)
!526 = !DILocation(line: 123, column: 13, scope: !525)
!527 = !DILocation(line: 124, column: 17, scope: !525)
!528 = !DILocation(line: 124, column: 25, scope: !525)
!529 = !DILocation(line: 124, column: 23, scope: !525)
!530 = !DILocation(line: 124, column: 9, scope: !525)
!531 = !DILocation(line: 125, column: 45, scope: !525)
!532 = !DILocation(line: 125, column: 29, scope: !525)
!533 = !DILocation(line: 125, column: 9, scope: !525)
!534 = !DILocation(line: 125, column: 15, scope: !525)
!535 = !DILocation(line: 125, column: 27, scope: !525)
!536 = !DILocation(line: 126, column: 9, scope: !525)
!537 = distinct !{!537, !515, !538, !150}
!538 = !DILocation(line: 127, column: 5, scope: !504)
!539 = !DILocation(line: 129, column: 12, scope: !504)
!540 = !DILocation(line: 129, column: 5, scope: !504)
!541 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !542, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DISubroutineType(types: !543)
!543 = !{!69, !478, !69, !338}
!544 = !DILocalVariable(name: "bytes", arg: 1, scope: !541, file: !3, line: 135, type: !478)
!545 = !DILocation(line: 135, column: 41, scope: !541)
!546 = !DILocalVariable(name: "numBytes", arg: 2, scope: !541, file: !3, line: 135, type: !69)
!547 = !DILocation(line: 135, column: 55, scope: !541)
!548 = !DILocalVariable(name: "hex", arg: 3, scope: !541, file: !3, line: 135, type: !338)
!549 = !DILocation(line: 135, column: 76, scope: !541)
!550 = !DILocalVariable(name: "numWritten", scope: !541, file: !3, line: 137, type: !69)
!551 = !DILocation(line: 137, column: 12, scope: !541)
!552 = !DILocation(line: 143, column: 5, scope: !541)
!553 = !DILocation(line: 143, column: 12, scope: !541)
!554 = !DILocation(line: 143, column: 25, scope: !541)
!555 = !DILocation(line: 143, column: 23, scope: !541)
!556 = !DILocation(line: 143, column: 34, scope: !541)
!557 = !DILocation(line: 143, column: 47, scope: !541)
!558 = !DILocation(line: 143, column: 55, scope: !541)
!559 = !DILocation(line: 143, column: 53, scope: !541)
!560 = !DILocation(line: 143, column: 37, scope: !541)
!561 = !DILocation(line: 143, column: 68, scope: !541)
!562 = !DILocation(line: 143, column: 81, scope: !541)
!563 = !DILocation(line: 143, column: 89, scope: !541)
!564 = !DILocation(line: 143, column: 87, scope: !541)
!565 = !DILocation(line: 143, column: 100, scope: !541)
!566 = !DILocation(line: 143, column: 71, scope: !541)
!567 = !DILocation(line: 0, scope: !541)
!568 = !DILocalVariable(name: "byte", scope: !569, file: !3, line: 145, type: !23)
!569 = distinct !DILexicalBlock(scope: !541, file: !3, line: 144, column: 5)
!570 = !DILocation(line: 145, column: 13, scope: !569)
!571 = !DILocation(line: 146, column: 18, scope: !569)
!572 = !DILocation(line: 146, column: 26, scope: !569)
!573 = !DILocation(line: 146, column: 24, scope: !569)
!574 = !DILocation(line: 146, column: 9, scope: !569)
!575 = !DILocation(line: 147, column: 45, scope: !569)
!576 = !DILocation(line: 147, column: 29, scope: !569)
!577 = !DILocation(line: 147, column: 9, scope: !569)
!578 = !DILocation(line: 147, column: 15, scope: !569)
!579 = !DILocation(line: 147, column: 27, scope: !569)
!580 = !DILocation(line: 148, column: 9, scope: !569)
!581 = distinct !{!581, !552, !582, !150}
!582 = !DILocation(line: 149, column: 5, scope: !541)
!583 = !DILocation(line: 151, column: 12, scope: !541)
!584 = !DILocation(line: 151, column: 5, scope: !541)
!585 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !586, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DISubroutineType(types: !587)
!587 = !{!23}
!588 = !DILocation(line: 158, column: 5, scope: !585)
!589 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !586, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 163, column: 5, scope: !589)
!591 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !586, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 168, column: 13, scope: !591)
!593 = !DILocation(line: 168, column: 20, scope: !591)
!594 = !DILocation(line: 168, column: 5, scope: !591)
!595 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 187, column: 16, scope: !595)
!597 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 188, column: 16, scope: !597)
!599 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 189, column: 16, scope: !599)
!601 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 190, column: 16, scope: !601)
!603 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 191, column: 16, scope: !603)
!605 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 192, column: 16, scope: !605)
!607 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 193, column: 16, scope: !607)
!609 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 194, column: 16, scope: !609)
!611 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 195, column: 16, scope: !611)
!613 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 198, column: 15, scope: !613)
!615 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 199, column: 15, scope: !615)
!617 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 200, column: 15, scope: !617)
!619 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 201, column: 15, scope: !619)
!621 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 202, column: 15, scope: !621)
!623 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 203, column: 15, scope: !623)
!625 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 204, column: 15, scope: !625)
!627 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 205, column: 15, scope: !627)
!629 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 206, column: 15, scope: !629)
