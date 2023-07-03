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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_01_bad() #0 !dbg !52 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !69
  %1 = load i8*, i8** %data, align 8, !dbg !70
  %call = call i64 @strlen(i8* %1) #7, !dbg !71
  store i64 %call, i64* %dataLen, align 8, !dbg !69
  %2 = load i64, i64* %dataLen, align 8, !dbg !72
  %sub = sub i64 100, %2, !dbg !74
  %cmp = icmp ugt i64 %sub, 1, !dbg !75
  br i1 %cmp, label %if.then, label %if.end18, !dbg !76

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !77
  %4 = load i64, i64* %dataLen, align 8, !dbg !80
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !81
  %5 = load i64, i64* %dataLen, align 8, !dbg !82
  %sub1 = sub i64 100, %5, !dbg !83
  %conv = trunc i64 %sub1 to i32, !dbg !84
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !85
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !86
  %cmp3 = icmp ne i8* %call2, null, !dbg !87
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !88

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !89
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !91
  store i64 %call6, i64* %dataLen, align 8, !dbg !92
  %8 = load i64, i64* %dataLen, align 8, !dbg !93
  %cmp7 = icmp ugt i64 %8, 0, !dbg !95
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !96

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !97
  %10 = load i64, i64* %dataLen, align 8, !dbg !98
  %sub9 = sub i64 %10, 1, !dbg !99
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !97
  %11 = load i8, i8* %arrayidx, align 1, !dbg !97
  %conv10 = sext i8 %11 to i32, !dbg !97
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !100
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !101

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !102
  %13 = load i64, i64* %dataLen, align 8, !dbg !104
  %sub14 = sub i64 %13, 1, !dbg !105
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !102
  store i8 0, i8* %arrayidx15, align 1, !dbg !106
  br label %if.end, !dbg !107

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !108

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !109
  %14 = load i8*, i8** %data, align 8, !dbg !111
  %15 = load i64, i64* %dataLen, align 8, !dbg !112
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !111
  store i8 0, i8* %arrayidx16, align 1, !dbg !113
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !114

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !115, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %n, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !120, metadata !DIExpression()), !dbg !121
  %16 = load i8*, i8** %data, align 8, !dbg !122
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !124
  %cmp20 = icmp eq i32 %call19, 1, !dbg !125
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !126

if.then22:                                        ; preds = %if.end18
  store i32 0, i32* %intVariable, align 4, !dbg !127
  store i32 0, i32* %i, align 4, !dbg !129
  br label %for.cond, !dbg !131

for.cond:                                         ; preds = %for.inc, %if.then22
  %17 = load i32, i32* %i, align 4, !dbg !132
  %18 = load i32, i32* %n, align 4, !dbg !134
  %cmp23 = icmp slt i32 %17, %18, !dbg !135
  br i1 %cmp23, label %for.body, label %for.end, !dbg !136

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !137
  %inc = add nsw i32 %19, 1, !dbg !137
  store i32 %inc, i32* %intVariable, align 4, !dbg !137
  br label %for.inc, !dbg !139

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !140
  %inc25 = add nsw i32 %20, 1, !dbg !140
  store i32 %inc25, i32* %i, align 4, !dbg !140
  br label %for.cond, !dbg !141, !llvm.loop !142

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !145
  call void @printIntLine(i32 %21), !dbg !146
  br label %if.end26, !dbg !147

if.end26:                                         ; preds = %for.end, %if.end18
  ret void, !dbg !148
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !149 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !153
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !153
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !154
  store i8* %arraydecay, i8** %data, align 8, !dbg !155
  %1 = load i8*, i8** %data, align 8, !dbg !156
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !157
  call void @llvm.dbg.declare(metadata i32* %i, metadata !158, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %n, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !163, metadata !DIExpression()), !dbg !164
  %2 = load i8*, i8** %data, align 8, !dbg !165
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !167
  %cmp = icmp eq i32 %call1, 1, !dbg !168
  br i1 %cmp, label %if.then, label %if.end, !dbg !169

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !170
  store i32 0, i32* %i, align 4, !dbg !172
  br label %for.cond, !dbg !174

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !175
  %4 = load i32, i32* %n, align 4, !dbg !177
  %cmp2 = icmp slt i32 %3, %4, !dbg !178
  br i1 %cmp2, label %for.body, label %for.end, !dbg !179

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !180
  %inc = add nsw i32 %5, 1, !dbg !180
  store i32 %inc, i32* %intVariable, align 4, !dbg !180
  br label %for.inc, !dbg !182

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !183
  %inc3 = add nsw i32 %6, 1, !dbg !183
  store i32 %inc3, i32* %i, align 4, !dbg !183
  br label %for.cond, !dbg !184, !llvm.loop !185

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !187
  call void @printIntLine(i32 %7), !dbg !188
  br label %if.end, !dbg !189

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !190
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !191 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !194, metadata !DIExpression()), !dbg !195
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !195
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !195
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !196
  store i8* %arraydecay, i8** %data, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !198, metadata !DIExpression()), !dbg !200
  %1 = load i8*, i8** %data, align 8, !dbg !201
  %call = call i64 @strlen(i8* %1) #7, !dbg !202
  store i64 %call, i64* %dataLen, align 8, !dbg !200
  %2 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub = sub i64 100, %2, !dbg !205
  %cmp = icmp ugt i64 %sub, 1, !dbg !206
  br i1 %cmp, label %if.then, label %if.end18, !dbg !207

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !208
  %4 = load i64, i64* %dataLen, align 8, !dbg !211
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !212
  %5 = load i64, i64* %dataLen, align 8, !dbg !213
  %sub1 = sub i64 100, %5, !dbg !214
  %conv = trunc i64 %sub1 to i32, !dbg !215
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !216
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !217
  %cmp3 = icmp ne i8* %call2, null, !dbg !218
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !219

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !220
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !222
  store i64 %call6, i64* %dataLen, align 8, !dbg !223
  %8 = load i64, i64* %dataLen, align 8, !dbg !224
  %cmp7 = icmp ugt i64 %8, 0, !dbg !226
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !227

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !228
  %10 = load i64, i64* %dataLen, align 8, !dbg !229
  %sub9 = sub i64 %10, 1, !dbg !230
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !228
  %11 = load i8, i8* %arrayidx, align 1, !dbg !228
  %conv10 = sext i8 %11 to i32, !dbg !228
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !231
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !232

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !233
  %13 = load i64, i64* %dataLen, align 8, !dbg !235
  %sub14 = sub i64 %13, 1, !dbg !236
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !233
  store i8 0, i8* %arrayidx15, align 1, !dbg !237
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !239

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !240
  %14 = load i8*, i8** %data, align 8, !dbg !242
  %15 = load i64, i64* %dataLen, align 8, !dbg !243
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !242
  store i8 0, i8* %arrayidx16, align 1, !dbg !244
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !245

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !246, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %n, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !251, metadata !DIExpression()), !dbg !252
  %16 = load i8*, i8** %data, align 8, !dbg !253
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !255
  %cmp20 = icmp eq i32 %call19, 1, !dbg !256
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !257

if.then22:                                        ; preds = %if.end18
  %17 = load i32, i32* %n, align 4, !dbg !258
  %cmp23 = icmp slt i32 %17, 10000, !dbg !261
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !262

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !263
  store i32 0, i32* %i, align 4, !dbg !265
  br label %for.cond, !dbg !267

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %i, align 4, !dbg !268
  %19 = load i32, i32* %n, align 4, !dbg !270
  %cmp26 = icmp slt i32 %18, %19, !dbg !271
  br i1 %cmp26, label %for.body, label %for.end, !dbg !272

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !273
  %inc = add nsw i32 %20, 1, !dbg !273
  store i32 %inc, i32* %intVariable, align 4, !dbg !273
  br label %for.inc, !dbg !275

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !276
  %inc28 = add nsw i32 %21, 1, !dbg !276
  store i32 %inc28, i32* %i, align 4, !dbg !276
  br label %for.cond, !dbg !277, !llvm.loop !278

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !280
  call void @printIntLine(i32 %22), !dbg !281
  br label %if.end29, !dbg !282

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !283

if.end30:                                         ; preds = %if.end29, %if.end18
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_01_good() #0 !dbg !285 {
entry:
  call void @goodG2B(), !dbg !286
  call void @goodB2G(), !dbg !287
  ret void, !dbg !288
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !289 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !292, metadata !DIExpression()), !dbg !293
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !294
  %0 = load i8*, i8** %line.addr, align 8, !dbg !295
  %cmp = icmp ne i8* %0, null, !dbg !297
  br i1 %cmp, label %if.then, label %if.end, !dbg !298

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !299
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !301
  br label %if.end, !dbg !302

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !303
  ret void, !dbg !304
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !305 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load i8*, i8** %line.addr, align 8, !dbg !308
  %cmp = icmp ne i8* %0, null, !dbg !310
  br i1 %cmp, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !312
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !314
  br label %if.end, !dbg !315

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !317 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load i32*, i32** %line.addr, align 8, !dbg !324
  %cmp = icmp ne i32* %0, null, !dbg !326
  br i1 %cmp, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !328
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !330
  br label %if.end, !dbg !331

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !332
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !333 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !338
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !341 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !345, metadata !DIExpression()), !dbg !346
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !347
  %conv = sext i16 %0 to i32, !dbg !347
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !348
  ret void, !dbg !349
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !350 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !354, metadata !DIExpression()), !dbg !355
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !356
  %conv = fpext float %0 to double, !dbg !356
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !357
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !359 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !368 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !377
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !378
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !380 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !388 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !393
  %conv = sext i8 %0 to i32, !dbg !393
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !396 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !401, metadata !DIExpression()), !dbg !405
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !406
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !407
  store i32 %0, i32* %arrayidx, align 4, !dbg !408
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !409
  store i32 0, i32* %arrayidx1, align 4, !dbg !410
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !414 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !422 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !427
  %conv = zext i8 %0 to i32, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !430 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !439 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !451
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !452
  %1 = load i32, i32* %intOne, align 4, !dbg !452
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !453
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !454
  %3 = load i32, i32* %intTwo, align 4, !dbg !454
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !455
  ret void, !dbg !456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !457 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !461, metadata !DIExpression()), !dbg !462
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !463, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata i64* %i, metadata !465, metadata !DIExpression()), !dbg !466
  store i64 0, i64* %i, align 8, !dbg !467
  br label %for.cond, !dbg !469

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !470
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !472
  %cmp = icmp ult i64 %0, %1, !dbg !473
  br i1 %cmp, label %for.body, label %for.end, !dbg !474

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !475
  %3 = load i64, i64* %i, align 8, !dbg !477
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !475
  %4 = load i8, i8* %arrayidx, align 1, !dbg !475
  %conv = zext i8 %4 to i32, !dbg !475
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !478
  br label %for.inc, !dbg !479

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !480
  %inc = add i64 %5, 1, !dbg !480
  store i64 %inc, i64* %i, align 8, !dbg !480
  br label %for.cond, !dbg !481, !llvm.loop !482

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !484
  ret void, !dbg !485
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !486 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !489, metadata !DIExpression()), !dbg !490
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !491, metadata !DIExpression()), !dbg !492
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !493, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !495, metadata !DIExpression()), !dbg !496
  store i64 0, i64* %numWritten, align 8, !dbg !496
  br label %while.cond, !dbg !497

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !498
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !499
  %cmp = icmp ult i64 %0, %1, !dbg !500
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !501

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !502
  %2 = load i16*, i16** %call, align 8, !dbg !502
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !502
  %4 = load i64, i64* %numWritten, align 8, !dbg !502
  %mul = mul i64 2, %4, !dbg !502
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !502
  %5 = load i8, i8* %arrayidx, align 1, !dbg !502
  %conv = sext i8 %5 to i32, !dbg !502
  %idxprom = sext i32 %conv to i64, !dbg !502
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !502
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !502
  %conv2 = zext i16 %6 to i32, !dbg !502
  %and = and i32 %conv2, 4096, !dbg !502
  %tobool = icmp ne i32 %and, 0, !dbg !502
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !503

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !504
  %7 = load i16*, i16** %call3, align 8, !dbg !504
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !504
  %9 = load i64, i64* %numWritten, align 8, !dbg !504
  %mul4 = mul i64 2, %9, !dbg !504
  %add = add i64 %mul4, 1, !dbg !504
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !504
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !504
  %conv6 = sext i8 %10 to i32, !dbg !504
  %idxprom7 = sext i32 %conv6 to i64, !dbg !504
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !504
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !504
  %conv9 = zext i16 %11 to i32, !dbg !504
  %and10 = and i32 %conv9, 4096, !dbg !504
  %tobool11 = icmp ne i32 %and10, 0, !dbg !503
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !505
  br i1 %12, label %while.body, label %while.end, !dbg !497

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !506, metadata !DIExpression()), !dbg !508
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !509
  %14 = load i64, i64* %numWritten, align 8, !dbg !510
  %mul12 = mul i64 2, %14, !dbg !511
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !509
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !512
  %15 = load i32, i32* %byte, align 4, !dbg !513
  %conv15 = trunc i32 %15 to i8, !dbg !514
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !515
  %17 = load i64, i64* %numWritten, align 8, !dbg !516
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !515
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !517
  %18 = load i64, i64* %numWritten, align 8, !dbg !518
  %inc = add i64 %18, 1, !dbg !518
  store i64 %inc, i64* %numWritten, align 8, !dbg !518
  br label %while.cond, !dbg !497, !llvm.loop !519

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !521
  ret i64 %19, !dbg !522
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !523 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !526, metadata !DIExpression()), !dbg !527
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !528, metadata !DIExpression()), !dbg !529
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !532, metadata !DIExpression()), !dbg !533
  store i64 0, i64* %numWritten, align 8, !dbg !533
  br label %while.cond, !dbg !534

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !535
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !536
  %cmp = icmp ult i64 %0, %1, !dbg !537
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !538

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !539
  %3 = load i64, i64* %numWritten, align 8, !dbg !540
  %mul = mul i64 2, %3, !dbg !541
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !539
  %4 = load i32, i32* %arrayidx, align 4, !dbg !539
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !542
  %tobool = icmp ne i32 %call, 0, !dbg !542
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !543

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !544
  %6 = load i64, i64* %numWritten, align 8, !dbg !545
  %mul1 = mul i64 2, %6, !dbg !546
  %add = add i64 %mul1, 1, !dbg !547
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !544
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !544
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !548
  %tobool4 = icmp ne i32 %call3, 0, !dbg !543
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !549
  br i1 %8, label %while.body, label %while.end, !dbg !534

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !550, metadata !DIExpression()), !dbg !552
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !553
  %10 = load i64, i64* %numWritten, align 8, !dbg !554
  %mul5 = mul i64 2, %10, !dbg !555
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !553
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !556
  %11 = load i32, i32* %byte, align 4, !dbg !557
  %conv = trunc i32 %11 to i8, !dbg !558
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !559
  %13 = load i64, i64* %numWritten, align 8, !dbg !560
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !559
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !561
  %14 = load i64, i64* %numWritten, align 8, !dbg !562
  %inc = add i64 %14, 1, !dbg !562
  store i64 %inc, i64* %numWritten, align 8, !dbg !562
  br label %while.cond, !dbg !534, !llvm.loop !563

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !565
  ret i64 %15, !dbg !566
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !567 {
entry:
  ret i32 1, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !571 {
entry:
  ret i32 0, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !573 {
entry:
  %call = call i32 @rand() #8, !dbg !574
  %rem = srem i32 %call, 2, !dbg !575
  ret i32 %rem, !dbg !576
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !611 {
entry:
  ret void, !dbg !612
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_978/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_978/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_01_bad", scope: !45, file: !45, line: 29, type: !53, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 36, type: !66)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 34, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 36, column: 16, scope: !65)
!70 = !DILocation(line: 36, column: 33, scope: !65)
!71 = !DILocation(line: 36, column: 26, scope: !65)
!72 = !DILocation(line: 38, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !65, file: !45, line: 38, column: 13)
!74 = !DILocation(line: 38, column: 16, scope: !73)
!75 = !DILocation(line: 38, column: 25, scope: !73)
!76 = !DILocation(line: 38, column: 13, scope: !65)
!77 = !DILocation(line: 41, column: 23, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !45, line: 41, column: 17)
!79 = distinct !DILexicalBlock(scope: !73, file: !45, line: 39, column: 9)
!80 = !DILocation(line: 41, column: 28, scope: !78)
!81 = !DILocation(line: 41, column: 27, scope: !78)
!82 = !DILocation(line: 41, column: 47, scope: !78)
!83 = !DILocation(line: 41, column: 46, scope: !78)
!84 = !DILocation(line: 41, column: 37, scope: !78)
!85 = !DILocation(line: 41, column: 57, scope: !78)
!86 = !DILocation(line: 41, column: 17, scope: !78)
!87 = !DILocation(line: 41, column: 64, scope: !78)
!88 = !DILocation(line: 41, column: 17, scope: !79)
!89 = !DILocation(line: 45, column: 34, scope: !90)
!90 = distinct !DILexicalBlock(scope: !78, file: !45, line: 42, column: 13)
!91 = !DILocation(line: 45, column: 27, scope: !90)
!92 = !DILocation(line: 45, column: 25, scope: !90)
!93 = !DILocation(line: 46, column: 21, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !45, line: 46, column: 21)
!95 = !DILocation(line: 46, column: 29, scope: !94)
!96 = !DILocation(line: 46, column: 33, scope: !94)
!97 = !DILocation(line: 46, column: 36, scope: !94)
!98 = !DILocation(line: 46, column: 41, scope: !94)
!99 = !DILocation(line: 46, column: 48, scope: !94)
!100 = !DILocation(line: 46, column: 52, scope: !94)
!101 = !DILocation(line: 46, column: 21, scope: !90)
!102 = !DILocation(line: 48, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !94, file: !45, line: 47, column: 17)
!104 = !DILocation(line: 48, column: 26, scope: !103)
!105 = !DILocation(line: 48, column: 33, scope: !103)
!106 = !DILocation(line: 48, column: 37, scope: !103)
!107 = !DILocation(line: 49, column: 17, scope: !103)
!108 = !DILocation(line: 50, column: 13, scope: !90)
!109 = !DILocation(line: 53, column: 17, scope: !110)
!110 = distinct !DILexicalBlock(scope: !78, file: !45, line: 52, column: 13)
!111 = !DILocation(line: 55, column: 17, scope: !110)
!112 = !DILocation(line: 55, column: 22, scope: !110)
!113 = !DILocation(line: 55, column: 31, scope: !110)
!114 = !DILocation(line: 57, column: 9, scope: !79)
!115 = !DILocalVariable(name: "i", scope: !116, file: !45, line: 60, type: !23)
!116 = distinct !DILexicalBlock(scope: !52, file: !45, line: 59, column: 5)
!117 = !DILocation(line: 60, column: 13, scope: !116)
!118 = !DILocalVariable(name: "n", scope: !116, file: !45, line: 60, type: !23)
!119 = !DILocation(line: 60, column: 16, scope: !116)
!120 = !DILocalVariable(name: "intVariable", scope: !116, file: !45, line: 60, type: !23)
!121 = !DILocation(line: 60, column: 19, scope: !116)
!122 = !DILocation(line: 61, column: 20, scope: !123)
!123 = distinct !DILexicalBlock(scope: !116, file: !45, line: 61, column: 13)
!124 = !DILocation(line: 61, column: 13, scope: !123)
!125 = !DILocation(line: 61, column: 36, scope: !123)
!126 = !DILocation(line: 61, column: 13, scope: !116)
!127 = !DILocation(line: 64, column: 25, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !45, line: 62, column: 9)
!129 = !DILocation(line: 65, column: 20, scope: !130)
!130 = distinct !DILexicalBlock(scope: !128, file: !45, line: 65, column: 13)
!131 = !DILocation(line: 65, column: 18, scope: !130)
!132 = !DILocation(line: 65, column: 25, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !45, line: 65, column: 13)
!134 = !DILocation(line: 65, column: 29, scope: !133)
!135 = !DILocation(line: 65, column: 27, scope: !133)
!136 = !DILocation(line: 65, column: 13, scope: !130)
!137 = !DILocation(line: 68, column: 28, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !45, line: 66, column: 13)
!139 = !DILocation(line: 69, column: 13, scope: !138)
!140 = !DILocation(line: 65, column: 33, scope: !133)
!141 = !DILocation(line: 65, column: 13, scope: !133)
!142 = distinct !{!142, !136, !143, !144}
!143 = !DILocation(line: 69, column: 13, scope: !130)
!144 = !{!"llvm.loop.mustprogress"}
!145 = !DILocation(line: 70, column: 26, scope: !128)
!146 = !DILocation(line: 70, column: 13, scope: !128)
!147 = !DILocation(line: 71, column: 9, scope: !128)
!148 = !DILocation(line: 73, column: 1, scope: !52)
!149 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 80, type: !53, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!150 = !DILocalVariable(name: "data", scope: !149, file: !45, line: 82, type: !42)
!151 = !DILocation(line: 82, column: 12, scope: !149)
!152 = !DILocalVariable(name: "dataBuffer", scope: !149, file: !45, line: 83, type: !58)
!153 = !DILocation(line: 83, column: 10, scope: !149)
!154 = !DILocation(line: 84, column: 12, scope: !149)
!155 = !DILocation(line: 84, column: 10, scope: !149)
!156 = !DILocation(line: 86, column: 12, scope: !149)
!157 = !DILocation(line: 86, column: 5, scope: !149)
!158 = !DILocalVariable(name: "i", scope: !159, file: !45, line: 88, type: !23)
!159 = distinct !DILexicalBlock(scope: !149, file: !45, line: 87, column: 5)
!160 = !DILocation(line: 88, column: 13, scope: !159)
!161 = !DILocalVariable(name: "n", scope: !159, file: !45, line: 88, type: !23)
!162 = !DILocation(line: 88, column: 16, scope: !159)
!163 = !DILocalVariable(name: "intVariable", scope: !159, file: !45, line: 88, type: !23)
!164 = !DILocation(line: 88, column: 19, scope: !159)
!165 = !DILocation(line: 89, column: 20, scope: !166)
!166 = distinct !DILexicalBlock(scope: !159, file: !45, line: 89, column: 13)
!167 = !DILocation(line: 89, column: 13, scope: !166)
!168 = !DILocation(line: 89, column: 36, scope: !166)
!169 = !DILocation(line: 89, column: 13, scope: !159)
!170 = !DILocation(line: 92, column: 25, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !45, line: 90, column: 9)
!172 = !DILocation(line: 93, column: 20, scope: !173)
!173 = distinct !DILexicalBlock(scope: !171, file: !45, line: 93, column: 13)
!174 = !DILocation(line: 93, column: 18, scope: !173)
!175 = !DILocation(line: 93, column: 25, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !45, line: 93, column: 13)
!177 = !DILocation(line: 93, column: 29, scope: !176)
!178 = !DILocation(line: 93, column: 27, scope: !176)
!179 = !DILocation(line: 93, column: 13, scope: !173)
!180 = !DILocation(line: 96, column: 28, scope: !181)
!181 = distinct !DILexicalBlock(scope: !176, file: !45, line: 94, column: 13)
!182 = !DILocation(line: 97, column: 13, scope: !181)
!183 = !DILocation(line: 93, column: 33, scope: !176)
!184 = !DILocation(line: 93, column: 13, scope: !176)
!185 = distinct !{!185, !179, !186, !144}
!186 = !DILocation(line: 97, column: 13, scope: !173)
!187 = !DILocation(line: 98, column: 26, scope: !171)
!188 = !DILocation(line: 98, column: 13, scope: !171)
!189 = !DILocation(line: 99, column: 9, scope: !171)
!190 = !DILocation(line: 101, column: 1, scope: !149)
!191 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 104, type: !53, scopeLine: 105, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!192 = !DILocalVariable(name: "data", scope: !191, file: !45, line: 106, type: !42)
!193 = !DILocation(line: 106, column: 12, scope: !191)
!194 = !DILocalVariable(name: "dataBuffer", scope: !191, file: !45, line: 107, type: !58)
!195 = !DILocation(line: 107, column: 10, scope: !191)
!196 = !DILocation(line: 108, column: 12, scope: !191)
!197 = !DILocation(line: 108, column: 10, scope: !191)
!198 = !DILocalVariable(name: "dataLen", scope: !199, file: !45, line: 111, type: !66)
!199 = distinct !DILexicalBlock(scope: !191, file: !45, line: 109, column: 5)
!200 = !DILocation(line: 111, column: 16, scope: !199)
!201 = !DILocation(line: 111, column: 33, scope: !199)
!202 = !DILocation(line: 111, column: 26, scope: !199)
!203 = !DILocation(line: 113, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !45, line: 113, column: 13)
!205 = !DILocation(line: 113, column: 16, scope: !204)
!206 = !DILocation(line: 113, column: 25, scope: !204)
!207 = !DILocation(line: 113, column: 13, scope: !199)
!208 = !DILocation(line: 116, column: 23, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !45, line: 116, column: 17)
!210 = distinct !DILexicalBlock(scope: !204, file: !45, line: 114, column: 9)
!211 = !DILocation(line: 116, column: 28, scope: !209)
!212 = !DILocation(line: 116, column: 27, scope: !209)
!213 = !DILocation(line: 116, column: 47, scope: !209)
!214 = !DILocation(line: 116, column: 46, scope: !209)
!215 = !DILocation(line: 116, column: 37, scope: !209)
!216 = !DILocation(line: 116, column: 57, scope: !209)
!217 = !DILocation(line: 116, column: 17, scope: !209)
!218 = !DILocation(line: 116, column: 64, scope: !209)
!219 = !DILocation(line: 116, column: 17, scope: !210)
!220 = !DILocation(line: 120, column: 34, scope: !221)
!221 = distinct !DILexicalBlock(scope: !209, file: !45, line: 117, column: 13)
!222 = !DILocation(line: 120, column: 27, scope: !221)
!223 = !DILocation(line: 120, column: 25, scope: !221)
!224 = !DILocation(line: 121, column: 21, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !45, line: 121, column: 21)
!226 = !DILocation(line: 121, column: 29, scope: !225)
!227 = !DILocation(line: 121, column: 33, scope: !225)
!228 = !DILocation(line: 121, column: 36, scope: !225)
!229 = !DILocation(line: 121, column: 41, scope: !225)
!230 = !DILocation(line: 121, column: 48, scope: !225)
!231 = !DILocation(line: 121, column: 52, scope: !225)
!232 = !DILocation(line: 121, column: 21, scope: !221)
!233 = !DILocation(line: 123, column: 21, scope: !234)
!234 = distinct !DILexicalBlock(scope: !225, file: !45, line: 122, column: 17)
!235 = !DILocation(line: 123, column: 26, scope: !234)
!236 = !DILocation(line: 123, column: 33, scope: !234)
!237 = !DILocation(line: 123, column: 37, scope: !234)
!238 = !DILocation(line: 124, column: 17, scope: !234)
!239 = !DILocation(line: 125, column: 13, scope: !221)
!240 = !DILocation(line: 128, column: 17, scope: !241)
!241 = distinct !DILexicalBlock(scope: !209, file: !45, line: 127, column: 13)
!242 = !DILocation(line: 130, column: 17, scope: !241)
!243 = !DILocation(line: 130, column: 22, scope: !241)
!244 = !DILocation(line: 130, column: 31, scope: !241)
!245 = !DILocation(line: 132, column: 9, scope: !210)
!246 = !DILocalVariable(name: "i", scope: !247, file: !45, line: 135, type: !23)
!247 = distinct !DILexicalBlock(scope: !191, file: !45, line: 134, column: 5)
!248 = !DILocation(line: 135, column: 13, scope: !247)
!249 = !DILocalVariable(name: "n", scope: !247, file: !45, line: 135, type: !23)
!250 = !DILocation(line: 135, column: 16, scope: !247)
!251 = !DILocalVariable(name: "intVariable", scope: !247, file: !45, line: 135, type: !23)
!252 = !DILocation(line: 135, column: 19, scope: !247)
!253 = !DILocation(line: 136, column: 20, scope: !254)
!254 = distinct !DILexicalBlock(scope: !247, file: !45, line: 136, column: 13)
!255 = !DILocation(line: 136, column: 13, scope: !254)
!256 = !DILocation(line: 136, column: 36, scope: !254)
!257 = !DILocation(line: 136, column: 13, scope: !247)
!258 = !DILocation(line: 139, column: 17, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !45, line: 139, column: 17)
!260 = distinct !DILexicalBlock(scope: !254, file: !45, line: 137, column: 9)
!261 = !DILocation(line: 139, column: 19, scope: !259)
!262 = !DILocation(line: 139, column: 17, scope: !260)
!263 = !DILocation(line: 141, column: 29, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !45, line: 140, column: 13)
!265 = !DILocation(line: 142, column: 24, scope: !266)
!266 = distinct !DILexicalBlock(scope: !264, file: !45, line: 142, column: 17)
!267 = !DILocation(line: 142, column: 22, scope: !266)
!268 = !DILocation(line: 142, column: 29, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !45, line: 142, column: 17)
!270 = !DILocation(line: 142, column: 33, scope: !269)
!271 = !DILocation(line: 142, column: 31, scope: !269)
!272 = !DILocation(line: 142, column: 17, scope: !266)
!273 = !DILocation(line: 145, column: 32, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !45, line: 143, column: 17)
!275 = !DILocation(line: 146, column: 17, scope: !274)
!276 = !DILocation(line: 142, column: 37, scope: !269)
!277 = !DILocation(line: 142, column: 17, scope: !269)
!278 = distinct !{!278, !272, !279, !144}
!279 = !DILocation(line: 146, column: 17, scope: !266)
!280 = !DILocation(line: 147, column: 30, scope: !264)
!281 = !DILocation(line: 147, column: 17, scope: !264)
!282 = !DILocation(line: 148, column: 13, scope: !264)
!283 = !DILocation(line: 149, column: 9, scope: !260)
!284 = !DILocation(line: 151, column: 1, scope: !191)
!285 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_01_good", scope: !45, file: !45, line: 153, type: !53, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!286 = !DILocation(line: 155, column: 5, scope: !285)
!287 = !DILocation(line: 156, column: 5, scope: !285)
!288 = !DILocation(line: 157, column: 1, scope: !285)
!289 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !290, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !42}
!292 = !DILocalVariable(name: "line", arg: 1, scope: !289, file: !3, line: 11, type: !42)
!293 = !DILocation(line: 11, column: 25, scope: !289)
!294 = !DILocation(line: 13, column: 1, scope: !289)
!295 = !DILocation(line: 14, column: 8, scope: !296)
!296 = distinct !DILexicalBlock(scope: !289, file: !3, line: 14, column: 8)
!297 = !DILocation(line: 14, column: 13, scope: !296)
!298 = !DILocation(line: 14, column: 8, scope: !289)
!299 = !DILocation(line: 16, column: 24, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !3, line: 15, column: 5)
!301 = !DILocation(line: 16, column: 9, scope: !300)
!302 = !DILocation(line: 17, column: 5, scope: !300)
!303 = !DILocation(line: 18, column: 5, scope: !289)
!304 = !DILocation(line: 19, column: 1, scope: !289)
!305 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !290, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!306 = !DILocalVariable(name: "line", arg: 1, scope: !305, file: !3, line: 20, type: !42)
!307 = !DILocation(line: 20, column: 29, scope: !305)
!308 = !DILocation(line: 22, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !3, line: 22, column: 8)
!310 = !DILocation(line: 22, column: 13, scope: !309)
!311 = !DILocation(line: 22, column: 8, scope: !305)
!312 = !DILocation(line: 24, column: 24, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !3, line: 23, column: 5)
!314 = !DILocation(line: 24, column: 9, scope: !313)
!315 = !DILocation(line: 25, column: 5, scope: !313)
!316 = !DILocation(line: 26, column: 1, scope: !305)
!317 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !318, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !67, line: 74, baseType: !23)
!322 = !DILocalVariable(name: "line", arg: 1, scope: !317, file: !3, line: 27, type: !320)
!323 = !DILocation(line: 27, column: 29, scope: !317)
!324 = !DILocation(line: 29, column: 8, scope: !325)
!325 = distinct !DILexicalBlock(scope: !317, file: !3, line: 29, column: 8)
!326 = !DILocation(line: 29, column: 13, scope: !325)
!327 = !DILocation(line: 29, column: 8, scope: !317)
!328 = !DILocation(line: 31, column: 27, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 30, column: 5)
!330 = !DILocation(line: 31, column: 9, scope: !329)
!331 = !DILocation(line: 32, column: 5, scope: !329)
!332 = !DILocation(line: 33, column: 1, scope: !317)
!333 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !334, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !23}
!336 = !DILocalVariable(name: "intNumber", arg: 1, scope: !333, file: !3, line: 35, type: !23)
!337 = !DILocation(line: 35, column: 24, scope: !333)
!338 = !DILocation(line: 37, column: 20, scope: !333)
!339 = !DILocation(line: 37, column: 5, scope: !333)
!340 = !DILocation(line: 38, column: 1, scope: !333)
!341 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !342, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !344}
!344 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!345 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !341, file: !3, line: 40, type: !344)
!346 = !DILocation(line: 40, column: 28, scope: !341)
!347 = !DILocation(line: 42, column: 21, scope: !341)
!348 = !DILocation(line: 42, column: 5, scope: !341)
!349 = !DILocation(line: 43, column: 1, scope: !341)
!350 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !351, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !353}
!353 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!354 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !350, file: !3, line: 45, type: !353)
!355 = !DILocation(line: 45, column: 28, scope: !350)
!356 = !DILocation(line: 47, column: 20, scope: !350)
!357 = !DILocation(line: 47, column: 5, scope: !350)
!358 = !DILocation(line: 48, column: 1, scope: !350)
!359 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !360, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362}
!362 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!363 = !DILocalVariable(name: "longNumber", arg: 1, scope: !359, file: !3, line: 50, type: !362)
!364 = !DILocation(line: 50, column: 26, scope: !359)
!365 = !DILocation(line: 52, column: 21, scope: !359)
!366 = !DILocation(line: 52, column: 5, scope: !359)
!367 = !DILocation(line: 53, column: 1, scope: !359)
!368 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !369, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371}
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !372, line: 27, baseType: !373)
!372 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !374, line: 44, baseType: !362)
!374 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!375 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !368, file: !3, line: 55, type: !371)
!376 = !DILocation(line: 55, column: 33, scope: !368)
!377 = !DILocation(line: 57, column: 29, scope: !368)
!378 = !DILocation(line: 57, column: 5, scope: !368)
!379 = !DILocation(line: 58, column: 1, scope: !368)
!380 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !381, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !66}
!383 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !380, file: !3, line: 60, type: !66)
!384 = !DILocation(line: 60, column: 29, scope: !380)
!385 = !DILocation(line: 62, column: 21, scope: !380)
!386 = !DILocation(line: 62, column: 5, scope: !380)
!387 = !DILocation(line: 63, column: 1, scope: !380)
!388 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !389, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !43}
!391 = !DILocalVariable(name: "charHex", arg: 1, scope: !388, file: !3, line: 65, type: !43)
!392 = !DILocation(line: 65, column: 29, scope: !388)
!393 = !DILocation(line: 67, column: 22, scope: !388)
!394 = !DILocation(line: 67, column: 5, scope: !388)
!395 = !DILocation(line: 68, column: 1, scope: !388)
!396 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !397, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !321}
!399 = !DILocalVariable(name: "wideChar", arg: 1, scope: !396, file: !3, line: 70, type: !321)
!400 = !DILocation(line: 70, column: 29, scope: !396)
!401 = !DILocalVariable(name: "s", scope: !396, file: !3, line: 74, type: !402)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 64, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 2)
!405 = !DILocation(line: 74, column: 13, scope: !396)
!406 = !DILocation(line: 75, column: 16, scope: !396)
!407 = !DILocation(line: 75, column: 9, scope: !396)
!408 = !DILocation(line: 75, column: 14, scope: !396)
!409 = !DILocation(line: 76, column: 9, scope: !396)
!410 = !DILocation(line: 76, column: 14, scope: !396)
!411 = !DILocation(line: 77, column: 21, scope: !396)
!412 = !DILocation(line: 77, column: 5, scope: !396)
!413 = !DILocation(line: 78, column: 1, scope: !396)
!414 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !415, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !7}
!417 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !414, file: !3, line: 80, type: !7)
!418 = !DILocation(line: 80, column: 33, scope: !414)
!419 = !DILocation(line: 82, column: 20, scope: !414)
!420 = !DILocation(line: 82, column: 5, scope: !414)
!421 = !DILocation(line: 83, column: 1, scope: !414)
!422 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !423, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !25}
!425 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !422, file: !3, line: 85, type: !25)
!426 = !DILocation(line: 85, column: 45, scope: !422)
!427 = !DILocation(line: 87, column: 22, scope: !422)
!428 = !DILocation(line: 87, column: 5, scope: !422)
!429 = !DILocation(line: 88, column: 1, scope: !422)
!430 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !431, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433}
!433 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!434 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !430, file: !3, line: 90, type: !433)
!435 = !DILocation(line: 90, column: 29, scope: !430)
!436 = !DILocation(line: 92, column: 20, scope: !430)
!437 = !DILocation(line: 92, column: 5, scope: !430)
!438 = !DILocation(line: 93, column: 1, scope: !430)
!439 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !440, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !444, line: 100, baseType: !445)
!444 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_978/source_code")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !444, line: 96, size: 64, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !445, file: !444, line: 98, baseType: !23, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !445, file: !444, line: 99, baseType: !23, size: 32, offset: 32)
!449 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !439, file: !3, line: 95, type: !442)
!450 = !DILocation(line: 95, column: 40, scope: !439)
!451 = !DILocation(line: 97, column: 26, scope: !439)
!452 = !DILocation(line: 97, column: 47, scope: !439)
!453 = !DILocation(line: 97, column: 55, scope: !439)
!454 = !DILocation(line: 97, column: 76, scope: !439)
!455 = !DILocation(line: 97, column: 5, scope: !439)
!456 = !DILocation(line: 98, column: 1, scope: !439)
!457 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !458, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !460, !66}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!461 = !DILocalVariable(name: "bytes", arg: 1, scope: !457, file: !3, line: 100, type: !460)
!462 = !DILocation(line: 100, column: 38, scope: !457)
!463 = !DILocalVariable(name: "numBytes", arg: 2, scope: !457, file: !3, line: 100, type: !66)
!464 = !DILocation(line: 100, column: 52, scope: !457)
!465 = !DILocalVariable(name: "i", scope: !457, file: !3, line: 102, type: !66)
!466 = !DILocation(line: 102, column: 12, scope: !457)
!467 = !DILocation(line: 103, column: 12, scope: !468)
!468 = distinct !DILexicalBlock(scope: !457, file: !3, line: 103, column: 5)
!469 = !DILocation(line: 103, column: 10, scope: !468)
!470 = !DILocation(line: 103, column: 17, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !3, line: 103, column: 5)
!472 = !DILocation(line: 103, column: 21, scope: !471)
!473 = !DILocation(line: 103, column: 19, scope: !471)
!474 = !DILocation(line: 103, column: 5, scope: !468)
!475 = !DILocation(line: 105, column: 24, scope: !476)
!476 = distinct !DILexicalBlock(scope: !471, file: !3, line: 104, column: 5)
!477 = !DILocation(line: 105, column: 30, scope: !476)
!478 = !DILocation(line: 105, column: 9, scope: !476)
!479 = !DILocation(line: 106, column: 5, scope: !476)
!480 = !DILocation(line: 103, column: 31, scope: !471)
!481 = !DILocation(line: 103, column: 5, scope: !471)
!482 = distinct !{!482, !474, !483, !144}
!483 = !DILocation(line: 106, column: 5, scope: !468)
!484 = !DILocation(line: 107, column: 5, scope: !457)
!485 = !DILocation(line: 108, column: 1, scope: !457)
!486 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !487, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DISubroutineType(types: !488)
!488 = !{!66, !460, !66, !42}
!489 = !DILocalVariable(name: "bytes", arg: 1, scope: !486, file: !3, line: 113, type: !460)
!490 = !DILocation(line: 113, column: 39, scope: !486)
!491 = !DILocalVariable(name: "numBytes", arg: 2, scope: !486, file: !3, line: 113, type: !66)
!492 = !DILocation(line: 113, column: 53, scope: !486)
!493 = !DILocalVariable(name: "hex", arg: 3, scope: !486, file: !3, line: 113, type: !42)
!494 = !DILocation(line: 113, column: 71, scope: !486)
!495 = !DILocalVariable(name: "numWritten", scope: !486, file: !3, line: 115, type: !66)
!496 = !DILocation(line: 115, column: 12, scope: !486)
!497 = !DILocation(line: 121, column: 5, scope: !486)
!498 = !DILocation(line: 121, column: 12, scope: !486)
!499 = !DILocation(line: 121, column: 25, scope: !486)
!500 = !DILocation(line: 121, column: 23, scope: !486)
!501 = !DILocation(line: 121, column: 34, scope: !486)
!502 = !DILocation(line: 121, column: 37, scope: !486)
!503 = !DILocation(line: 121, column: 67, scope: !486)
!504 = !DILocation(line: 121, column: 70, scope: !486)
!505 = !DILocation(line: 0, scope: !486)
!506 = !DILocalVariable(name: "byte", scope: !507, file: !3, line: 123, type: !23)
!507 = distinct !DILexicalBlock(scope: !486, file: !3, line: 122, column: 5)
!508 = !DILocation(line: 123, column: 13, scope: !507)
!509 = !DILocation(line: 124, column: 17, scope: !507)
!510 = !DILocation(line: 124, column: 25, scope: !507)
!511 = !DILocation(line: 124, column: 23, scope: !507)
!512 = !DILocation(line: 124, column: 9, scope: !507)
!513 = !DILocation(line: 125, column: 45, scope: !507)
!514 = !DILocation(line: 125, column: 29, scope: !507)
!515 = !DILocation(line: 125, column: 9, scope: !507)
!516 = !DILocation(line: 125, column: 15, scope: !507)
!517 = !DILocation(line: 125, column: 27, scope: !507)
!518 = !DILocation(line: 126, column: 9, scope: !507)
!519 = distinct !{!519, !497, !520, !144}
!520 = !DILocation(line: 127, column: 5, scope: !486)
!521 = !DILocation(line: 129, column: 12, scope: !486)
!522 = !DILocation(line: 129, column: 5, scope: !486)
!523 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !524, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DISubroutineType(types: !525)
!525 = !{!66, !460, !66, !320}
!526 = !DILocalVariable(name: "bytes", arg: 1, scope: !523, file: !3, line: 135, type: !460)
!527 = !DILocation(line: 135, column: 41, scope: !523)
!528 = !DILocalVariable(name: "numBytes", arg: 2, scope: !523, file: !3, line: 135, type: !66)
!529 = !DILocation(line: 135, column: 55, scope: !523)
!530 = !DILocalVariable(name: "hex", arg: 3, scope: !523, file: !3, line: 135, type: !320)
!531 = !DILocation(line: 135, column: 76, scope: !523)
!532 = !DILocalVariable(name: "numWritten", scope: !523, file: !3, line: 137, type: !66)
!533 = !DILocation(line: 137, column: 12, scope: !523)
!534 = !DILocation(line: 143, column: 5, scope: !523)
!535 = !DILocation(line: 143, column: 12, scope: !523)
!536 = !DILocation(line: 143, column: 25, scope: !523)
!537 = !DILocation(line: 143, column: 23, scope: !523)
!538 = !DILocation(line: 143, column: 34, scope: !523)
!539 = !DILocation(line: 143, column: 47, scope: !523)
!540 = !DILocation(line: 143, column: 55, scope: !523)
!541 = !DILocation(line: 143, column: 53, scope: !523)
!542 = !DILocation(line: 143, column: 37, scope: !523)
!543 = !DILocation(line: 143, column: 68, scope: !523)
!544 = !DILocation(line: 143, column: 81, scope: !523)
!545 = !DILocation(line: 143, column: 89, scope: !523)
!546 = !DILocation(line: 143, column: 87, scope: !523)
!547 = !DILocation(line: 143, column: 100, scope: !523)
!548 = !DILocation(line: 143, column: 71, scope: !523)
!549 = !DILocation(line: 0, scope: !523)
!550 = !DILocalVariable(name: "byte", scope: !551, file: !3, line: 145, type: !23)
!551 = distinct !DILexicalBlock(scope: !523, file: !3, line: 144, column: 5)
!552 = !DILocation(line: 145, column: 13, scope: !551)
!553 = !DILocation(line: 146, column: 18, scope: !551)
!554 = !DILocation(line: 146, column: 26, scope: !551)
!555 = !DILocation(line: 146, column: 24, scope: !551)
!556 = !DILocation(line: 146, column: 9, scope: !551)
!557 = !DILocation(line: 147, column: 45, scope: !551)
!558 = !DILocation(line: 147, column: 29, scope: !551)
!559 = !DILocation(line: 147, column: 9, scope: !551)
!560 = !DILocation(line: 147, column: 15, scope: !551)
!561 = !DILocation(line: 147, column: 27, scope: !551)
!562 = !DILocation(line: 148, column: 9, scope: !551)
!563 = distinct !{!563, !534, !564, !144}
!564 = !DILocation(line: 149, column: 5, scope: !523)
!565 = !DILocation(line: 151, column: 12, scope: !523)
!566 = !DILocation(line: 151, column: 5, scope: !523)
!567 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !568, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DISubroutineType(types: !569)
!569 = !{!23}
!570 = !DILocation(line: 158, column: 5, scope: !567)
!571 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !568, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 163, column: 5, scope: !571)
!573 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !568, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 168, column: 13, scope: !573)
!575 = !DILocation(line: 168, column: 20, scope: !573)
!576 = !DILocation(line: 168, column: 5, scope: !573)
!577 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 187, column: 16, scope: !577)
!579 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 188, column: 16, scope: !579)
!581 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 189, column: 16, scope: !581)
!583 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 190, column: 16, scope: !583)
!585 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 191, column: 16, scope: !585)
!587 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 192, column: 16, scope: !587)
!589 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 193, column: 16, scope: !589)
!591 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 194, column: 16, scope: !591)
!593 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 195, column: 16, scope: !593)
!595 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 198, column: 15, scope: !595)
!597 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 199, column: 15, scope: !597)
!599 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 200, column: 15, scope: !599)
!601 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 201, column: 15, scope: !601)
!603 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 202, column: 15, scope: !603)
!605 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 203, column: 15, scope: !605)
!607 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 204, column: 15, scope: !607)
!609 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 205, column: 15, scope: !609)
!611 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 206, column: 15, scope: !611)
