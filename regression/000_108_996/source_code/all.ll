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
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
@.str.4 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_21_bad() #0 !dbg !105 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
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
  %2 = load i64, i64* %dataLen, align 8, !dbg !125
  %sub = sub i64 100, %2, !dbg !127
  %cmp = icmp ugt i64 %sub, 1, !dbg !128
  br i1 %cmp, label %if.then, label %if.end18, !dbg !129

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !130
  %4 = load i64, i64* %dataLen, align 8, !dbg !133
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !134
  %5 = load i64, i64* %dataLen, align 8, !dbg !135
  %sub1 = sub i64 100, %5, !dbg !136
  %conv = trunc i64 %sub1 to i32, !dbg !137
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !138
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !139
  %cmp3 = icmp ne i8* %call2, null, !dbg !140
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !141

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !142
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !144
  store i64 %call6, i64* %dataLen, align 8, !dbg !145
  %8 = load i64, i64* %dataLen, align 8, !dbg !146
  %cmp7 = icmp ugt i64 %8, 0, !dbg !148
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !149

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !150
  %10 = load i64, i64* %dataLen, align 8, !dbg !151
  %sub9 = sub i64 %10, 1, !dbg !152
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !150
  %11 = load i8, i8* %arrayidx, align 1, !dbg !150
  %conv10 = sext i8 %11 to i32, !dbg !150
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !153
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !154

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !155
  %13 = load i64, i64* %dataLen, align 8, !dbg !157
  %sub14 = sub i64 %13, 1, !dbg !158
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !155
  store i8 0, i8* %arrayidx15, align 1, !dbg !159
  br label %if.end, !dbg !160

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !161

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !162
  %14 = load i8*, i8** %data, align 8, !dbg !164
  %15 = load i64, i64* %dataLen, align 8, !dbg !165
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !164
  store i8 0, i8* %arrayidx16, align 1, !dbg !166
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !167

if.end18:                                         ; preds = %if.end17, %entry
  store i32 1, i32* @badStatic, align 4, !dbg !168
  %16 = load i8*, i8** %data, align 8, !dbg !169
  call void @badSink(i8* %16), !dbg !170
  ret void, !dbg !171
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1Sink(i8* %data) #0 !dbg !172 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !175
  %tobool = icmp ne i32 %0, 0, !dbg !175
  br i1 %tobool, label %if.then, label %if.else, !dbg !177

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !178
  br label %if.end7, !dbg !180

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !181, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %n, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !187, metadata !DIExpression()), !dbg !188
  %1 = load i8*, i8** %data.addr, align 8, !dbg !189
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !191
  %cmp = icmp eq i32 %call, 1, !dbg !192
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !193

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %n, align 4, !dbg !194
  %cmp2 = icmp slt i32 %2, 10000, !dbg !197
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !198

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !199
  store i32 0, i32* %i, align 4, !dbg !201
  br label %for.cond, !dbg !203

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !204
  %4 = load i32, i32* %n, align 4, !dbg !206
  %cmp4 = icmp slt i32 %3, %4, !dbg !207
  br i1 %cmp4, label %for.body, label %for.end, !dbg !208

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !209
  %inc = add nsw i32 %5, 1, !dbg !209
  store i32 %inc, i32* %intVariable, align 4, !dbg !209
  br label %for.inc, !dbg !211

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !212
  %inc5 = add nsw i32 %6, 1, !dbg !212
  store i32 %inc5, i32* %i, align 4, !dbg !212
  br label %for.cond, !dbg !213, !llvm.loop !214

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !216
  call void @printIntLine(i32 %7), !dbg !217
  br label %if.end, !dbg !218

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !219

if.end6:                                          ; preds = %if.end, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !220
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !221 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !224, metadata !DIExpression()), !dbg !225
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !225
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !225
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !226
  store i8* %arraydecay, i8** %data, align 8, !dbg !227
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !228, metadata !DIExpression()), !dbg !230
  %1 = load i8*, i8** %data, align 8, !dbg !231
  %call = call i64 @strlen(i8* %1) #8, !dbg !232
  store i64 %call, i64* %dataLen, align 8, !dbg !230
  %2 = load i64, i64* %dataLen, align 8, !dbg !233
  %sub = sub i64 100, %2, !dbg !235
  %cmp = icmp ugt i64 %sub, 1, !dbg !236
  br i1 %cmp, label %if.then, label %if.end18, !dbg !237

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !238
  %4 = load i64, i64* %dataLen, align 8, !dbg !241
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !242
  %5 = load i64, i64* %dataLen, align 8, !dbg !243
  %sub1 = sub i64 100, %5, !dbg !244
  %conv = trunc i64 %sub1 to i32, !dbg !245
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !246
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !247
  %cmp3 = icmp ne i8* %call2, null, !dbg !248
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !249

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !250
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !252
  store i64 %call6, i64* %dataLen, align 8, !dbg !253
  %8 = load i64, i64* %dataLen, align 8, !dbg !254
  %cmp7 = icmp ugt i64 %8, 0, !dbg !256
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !257

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !258
  %10 = load i64, i64* %dataLen, align 8, !dbg !259
  %sub9 = sub i64 %10, 1, !dbg !260
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !258
  %11 = load i8, i8* %arrayidx, align 1, !dbg !258
  %conv10 = sext i8 %11 to i32, !dbg !258
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !261
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !262

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !263
  %13 = load i64, i64* %dataLen, align 8, !dbg !265
  %sub14 = sub i64 %13, 1, !dbg !266
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !263
  store i8 0, i8* %arrayidx15, align 1, !dbg !267
  br label %if.end, !dbg !268

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !269

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !270
  %14 = load i8*, i8** %data, align 8, !dbg !272
  %15 = load i64, i64* %dataLen, align 8, !dbg !273
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !272
  store i8 0, i8* %arrayidx16, align 1, !dbg !274
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !275

if.end18:                                         ; preds = %if.end17, %entry
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !276
  %16 = load i8*, i8** %data, align 8, !dbg !277
  call void @goodB2G1Sink(i8* %16), !dbg !278
  ret void, !dbg !279
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2Sink(i8* %data) #0 !dbg !280 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !283
  %tobool = icmp ne i32 %0, 0, !dbg !283
  br i1 %tobool, label %if.then, label %if.end7, !dbg !285

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !286, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata i32* %n, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !292, metadata !DIExpression()), !dbg !293
  %1 = load i8*, i8** %data.addr, align 8, !dbg !294
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !296
  %cmp = icmp eq i32 %call, 1, !dbg !297
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !298

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4, !dbg !299
  %cmp2 = icmp slt i32 %2, 10000, !dbg !302
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !303

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !304
  store i32 0, i32* %i, align 4, !dbg !306
  br label %for.cond, !dbg !308

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !309
  %4 = load i32, i32* %n, align 4, !dbg !311
  %cmp4 = icmp slt i32 %3, %4, !dbg !312
  br i1 %cmp4, label %for.body, label %for.end, !dbg !313

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !314
  %inc = add nsw i32 %5, 1, !dbg !314
  store i32 %inc, i32* %intVariable, align 4, !dbg !314
  br label %for.inc, !dbg !316

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !317
  %inc5 = add nsw i32 %6, 1, !dbg !317
  store i32 %inc5, i32* %i, align 4, !dbg !317
  br label %for.cond, !dbg !318, !llvm.loop !319

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !321
  call void @printIntLine(i32 %7), !dbg !322
  br label %if.end, !dbg !323

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !324

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7, !dbg !325

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !326
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !327 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !331
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !331
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !332
  store i8* %arraydecay, i8** %data, align 8, !dbg !333
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !334, metadata !DIExpression()), !dbg !336
  %1 = load i8*, i8** %data, align 8, !dbg !337
  %call = call i64 @strlen(i8* %1) #8, !dbg !338
  store i64 %call, i64* %dataLen, align 8, !dbg !336
  %2 = load i64, i64* %dataLen, align 8, !dbg !339
  %sub = sub i64 100, %2, !dbg !341
  %cmp = icmp ugt i64 %sub, 1, !dbg !342
  br i1 %cmp, label %if.then, label %if.end18, !dbg !343

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !344
  %4 = load i64, i64* %dataLen, align 8, !dbg !347
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !348
  %5 = load i64, i64* %dataLen, align 8, !dbg !349
  %sub1 = sub i64 100, %5, !dbg !350
  %conv = trunc i64 %sub1 to i32, !dbg !351
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !352
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !353
  %cmp3 = icmp ne i8* %call2, null, !dbg !354
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !355

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !356
  %call6 = call i64 @strlen(i8* %7) #8, !dbg !358
  store i64 %call6, i64* %dataLen, align 8, !dbg !359
  %8 = load i64, i64* %dataLen, align 8, !dbg !360
  %cmp7 = icmp ugt i64 %8, 0, !dbg !362
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !363

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !364
  %10 = load i64, i64* %dataLen, align 8, !dbg !365
  %sub9 = sub i64 %10, 1, !dbg !366
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !364
  %11 = load i8, i8* %arrayidx, align 1, !dbg !364
  %conv10 = sext i8 %11 to i32, !dbg !364
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !367
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !368

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !369
  %13 = load i64, i64* %dataLen, align 8, !dbg !371
  %sub14 = sub i64 %13, 1, !dbg !372
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !369
  store i8 0, i8* %arrayidx15, align 1, !dbg !373
  br label %if.end, !dbg !374

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !375

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !376
  %14 = load i8*, i8** %data, align 8, !dbg !378
  %15 = load i64, i64* %dataLen, align 8, !dbg !379
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !378
  store i8 0, i8* %arrayidx16, align 1, !dbg !380
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !381

if.end18:                                         ; preds = %if.end17, %entry
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !382
  %16 = load i8*, i8** %data, align 8, !dbg !383
  call void @goodB2G2Sink(i8* %16), !dbg !384
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !386 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !389
  %tobool = icmp ne i32 %0, 0, !dbg !389
  br i1 %tobool, label %if.then, label %if.end4, !dbg !391

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !392, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata i32* %n, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !398, metadata !DIExpression()), !dbg !399
  %1 = load i8*, i8** %data.addr, align 8, !dbg !400
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !402
  %cmp = icmp eq i32 %call, 1, !dbg !403
  br i1 %cmp, label %if.then1, label %if.end, !dbg !404

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !405
  store i32 0, i32* %i, align 4, !dbg !407
  br label %for.cond, !dbg !409

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !410
  %3 = load i32, i32* %n, align 4, !dbg !412
  %cmp2 = icmp slt i32 %2, %3, !dbg !413
  br i1 %cmp2, label %for.body, label %for.end, !dbg !414

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !415
  %inc = add nsw i32 %4, 1, !dbg !415
  store i32 %inc, i32* %intVariable, align 4, !dbg !415
  br label %for.inc, !dbg !417

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !418
  %inc3 = add nsw i32 %5, 1, !dbg !418
  store i32 %inc3, i32* %i, align 4, !dbg !418
  br label %for.cond, !dbg !419, !llvm.loop !420

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !422
  call void @printIntLine(i32 %6), !dbg !423
  br label %if.end, !dbg !424

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !425

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !427 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !431
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !431
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !432
  store i8* %arraydecay, i8** %data, align 8, !dbg !433
  %1 = load i8*, i8** %data, align 8, !dbg !434
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !435
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !436
  %2 = load i8*, i8** %data, align 8, !dbg !437
  call void @goodG2BSink(i8* %2), !dbg !438
  ret void, !dbg !439
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_21_good() #0 !dbg !440 {
entry:
  call void @goodB2G1(), !dbg !441
  call void @goodB2G2(), !dbg !442
  call void @goodG2B(), !dbg !443
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !445 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !448
  %0 = load i8*, i8** %line.addr, align 8, !dbg !449
  %cmp = icmp ne i8* %0, null, !dbg !451
  br i1 %cmp, label %if.then, label %if.end, !dbg !452

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !453
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !455
  br label %if.end, !dbg !456

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !457
  ret void, !dbg !458
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !459 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !460, metadata !DIExpression()), !dbg !461
  %0 = load i8*, i8** %line.addr, align 8, !dbg !462
  %cmp = icmp ne i8* %0, null, !dbg !464
  br i1 %cmp, label %if.then, label %if.end, !dbg !465

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !466
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !468
  br label %if.end, !dbg !469

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !471 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load i32*, i32** %line.addr, align 8, !dbg !478
  %cmp = icmp ne i32* %0, null, !dbg !480
  br i1 %cmp, label %if.then, label %if.end, !dbg !481

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !482
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !484
  br label %if.end, !dbg !485

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !486
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !487 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !490, metadata !DIExpression()), !dbg !491
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !492
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !493
  ret void, !dbg !494
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !495 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !501
  %conv = sext i16 %0 to i32, !dbg !501
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !502
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !504 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !508, metadata !DIExpression()), !dbg !509
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !510
  %conv = fpext float %0 to double, !dbg !510
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !511
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !513 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !517, metadata !DIExpression()), !dbg !518
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !519
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !520
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !522 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !529, metadata !DIExpression()), !dbg !530
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !531
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !532
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !534 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !539
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !540
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !542 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !545, metadata !DIExpression()), !dbg !546
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !547
  %conv = sext i8 %0 to i32, !dbg !547
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !548
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !550 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !555, metadata !DIExpression()), !dbg !559
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !560
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !561
  store i32 %0, i32* %arrayidx, align 4, !dbg !562
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !563
  store i32 0, i32* %arrayidx1, align 4, !dbg !564
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !565
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !566
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !568 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !571, metadata !DIExpression()), !dbg !572
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !573
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !574
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !576 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !579, metadata !DIExpression()), !dbg !580
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !581
  %conv = zext i8 %0 to i32, !dbg !581
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !582
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !584 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !588, metadata !DIExpression()), !dbg !589
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !590
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !591
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !593 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !603, metadata !DIExpression()), !dbg !604
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !605
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !606
  %1 = load i32, i32* %intOne, align 4, !dbg !606
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !607
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !608
  %3 = load i32, i32* %intTwo, align 4, !dbg !608
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !609
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !611 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !615, metadata !DIExpression()), !dbg !616
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !617, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.declare(metadata i64* %i, metadata !619, metadata !DIExpression()), !dbg !620
  store i64 0, i64* %i, align 8, !dbg !621
  br label %for.cond, !dbg !623

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !624
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !626
  %cmp = icmp ult i64 %0, %1, !dbg !627
  br i1 %cmp, label %for.body, label %for.end, !dbg !628

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !629
  %3 = load i64, i64* %i, align 8, !dbg !631
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !629
  %4 = load i8, i8* %arrayidx, align 1, !dbg !629
  %conv = zext i8 %4 to i32, !dbg !629
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !632
  br label %for.inc, !dbg !633

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !634
  %inc = add i64 %5, 1, !dbg !634
  store i64 %inc, i64* %i, align 8, !dbg !634
  br label %for.cond, !dbg !635, !llvm.loop !636

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !638
  ret void, !dbg !639
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !640 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !643, metadata !DIExpression()), !dbg !644
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !645, metadata !DIExpression()), !dbg !646
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !647, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !649, metadata !DIExpression()), !dbg !650
  store i64 0, i64* %numWritten, align 8, !dbg !650
  br label %while.cond, !dbg !651

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !652
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !653
  %cmp = icmp ult i64 %0, %1, !dbg !654
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !655

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !656
  %2 = load i16*, i16** %call, align 8, !dbg !656
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !656
  %4 = load i64, i64* %numWritten, align 8, !dbg !656
  %mul = mul i64 2, %4, !dbg !656
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !656
  %5 = load i8, i8* %arrayidx, align 1, !dbg !656
  %conv = sext i8 %5 to i32, !dbg !656
  %idxprom = sext i32 %conv to i64, !dbg !656
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !656
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !656
  %conv2 = zext i16 %6 to i32, !dbg !656
  %and = and i32 %conv2, 4096, !dbg !656
  %tobool = icmp ne i32 %and, 0, !dbg !656
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !657

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !658
  %7 = load i16*, i16** %call3, align 8, !dbg !658
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !658
  %9 = load i64, i64* %numWritten, align 8, !dbg !658
  %mul4 = mul i64 2, %9, !dbg !658
  %add = add i64 %mul4, 1, !dbg !658
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !658
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !658
  %conv6 = sext i8 %10 to i32, !dbg !658
  %idxprom7 = sext i32 %conv6 to i64, !dbg !658
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !658
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !658
  %conv9 = zext i16 %11 to i32, !dbg !658
  %and10 = and i32 %conv9, 4096, !dbg !658
  %tobool11 = icmp ne i32 %and10, 0, !dbg !657
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !659
  br i1 %12, label %while.body, label %while.end, !dbg !651

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !660, metadata !DIExpression()), !dbg !662
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !663
  %14 = load i64, i64* %numWritten, align 8, !dbg !664
  %mul12 = mul i64 2, %14, !dbg !665
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !663
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !666
  %15 = load i32, i32* %byte, align 4, !dbg !667
  %conv15 = trunc i32 %15 to i8, !dbg !668
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !669
  %17 = load i64, i64* %numWritten, align 8, !dbg !670
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !669
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !671
  %18 = load i64, i64* %numWritten, align 8, !dbg !672
  %inc = add i64 %18, 1, !dbg !672
  store i64 %inc, i64* %numWritten, align 8, !dbg !672
  br label %while.cond, !dbg !651, !llvm.loop !673

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !675
  ret i64 %19, !dbg !676
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !677 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !680, metadata !DIExpression()), !dbg !681
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !682, metadata !DIExpression()), !dbg !683
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !684, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !686, metadata !DIExpression()), !dbg !687
  store i64 0, i64* %numWritten, align 8, !dbg !687
  br label %while.cond, !dbg !688

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !689
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !690
  %cmp = icmp ult i64 %0, %1, !dbg !691
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !692

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !693
  %3 = load i64, i64* %numWritten, align 8, !dbg !694
  %mul = mul i64 2, %3, !dbg !695
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !693
  %4 = load i32, i32* %arrayidx, align 4, !dbg !693
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !696
  %tobool = icmp ne i32 %call, 0, !dbg !696
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !697

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !698
  %6 = load i64, i64* %numWritten, align 8, !dbg !699
  %mul1 = mul i64 2, %6, !dbg !700
  %add = add i64 %mul1, 1, !dbg !701
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !698
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !698
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !702
  %tobool4 = icmp ne i32 %call3, 0, !dbg !697
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !703
  br i1 %8, label %while.body, label %while.end, !dbg !688

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !704, metadata !DIExpression()), !dbg !706
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !707
  %10 = load i64, i64* %numWritten, align 8, !dbg !708
  %mul5 = mul i64 2, %10, !dbg !709
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !707
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !710
  %11 = load i32, i32* %byte, align 4, !dbg !711
  %conv = trunc i32 %11 to i8, !dbg !712
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !713
  %13 = load i64, i64* %numWritten, align 8, !dbg !714
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !713
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !715
  %14 = load i64, i64* %numWritten, align 8, !dbg !716
  %inc = add i64 %14, 1, !dbg !716
  store i64 %inc, i64* %numWritten, align 8, !dbg !716
  br label %while.cond, !dbg !688, !llvm.loop !717

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !719
  ret i64 %15, !dbg !720
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !721 {
entry:
  ret i32 1, !dbg !724
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !725 {
entry:
  ret i32 0, !dbg !726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !727 {
entry:
  %call = call i32 @rand() #7, !dbg !728
  %rem = srem i32 %call, 2, !dbg !729
  ret i32 %rem, !dbg !730
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !731 {
entry:
  ret void, !dbg !732
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !733 {
entry:
  ret void, !dbg !734
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !735 {
entry:
  ret void, !dbg !736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !737 {
entry:
  ret void, !dbg !738
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !739 {
entry:
  ret void, !dbg !740
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !741 {
entry:
  ret void, !dbg !742
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !743 {
entry:
  ret void, !dbg !744
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !745 {
entry:
  ret void, !dbg !746
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !747 {
entry:
  ret void, !dbg !748
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !749 {
entry:
  ret void, !dbg !750
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !751 {
entry:
  ret void, !dbg !752
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !753 {
entry:
  ret void, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !755 {
entry:
  ret void, !dbg !756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !757 {
entry:
  ret void, !dbg !758
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !759 {
entry:
  ret void, !dbg !760
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !761 {
entry:
  ret void, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !763 {
entry:
  ret void, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !765 {
entry:
  ret void, !dbg !766
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
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 30, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_996/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 92, type: !6, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 93, type: !6, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 94, type: !6, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !6, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_996/source_code")
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
!36 = !{!7, !6, !37, !38}
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!15, !40, !42, !44, !46, !48, !50, !52}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !17, file: !18, line: 175, type: !6, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !17, file: !18, line: 176, type: !6, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalTrue", scope: !17, file: !18, line: 181, type: !6, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalFalse", scope: !17, file: !18, line: 182, type: !6, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalFive", scope: !17, file: !18, line: 183, type: !6, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "globalArgc", scope: !17, file: !18, line: 214, type: !6, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "globalArgv", scope: !17, file: !18, line: 215, type: !54, isLocal: false, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{!"clang version 12.0.0"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 32, type: !62, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !55}
!64 = !DILocalVariable(name: "data", arg: 1, scope: !61, file: !3, line: 32, type: !55)
!65 = !DILocation(line: 32, column: 21, scope: !61)
!66 = !DILocation(line: 34, column: 8, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !3, line: 34, column: 8)
!68 = !DILocation(line: 34, column: 8, scope: !61)
!69 = !DILocalVariable(name: "i", scope: !70, file: !3, line: 37, type: !6)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 36, column: 9)
!71 = distinct !DILexicalBlock(scope: !67, file: !3, line: 35, column: 5)
!72 = !DILocation(line: 37, column: 17, scope: !70)
!73 = !DILocalVariable(name: "n", scope: !70, file: !3, line: 37, type: !6)
!74 = !DILocation(line: 37, column: 20, scope: !70)
!75 = !DILocalVariable(name: "intVariable", scope: !70, file: !3, line: 37, type: !6)
!76 = !DILocation(line: 37, column: 23, scope: !70)
!77 = !DILocation(line: 38, column: 24, scope: !78)
!78 = distinct !DILexicalBlock(scope: !70, file: !3, line: 38, column: 17)
!79 = !DILocation(line: 38, column: 17, scope: !78)
!80 = !DILocation(line: 38, column: 40, scope: !78)
!81 = !DILocation(line: 38, column: 17, scope: !70)
!82 = !DILocation(line: 41, column: 29, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !3, line: 39, column: 13)
!84 = !DILocation(line: 42, column: 24, scope: !85)
!85 = distinct !DILexicalBlock(scope: !83, file: !3, line: 42, column: 17)
!86 = !DILocation(line: 42, column: 22, scope: !85)
!87 = !DILocation(line: 42, column: 29, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !3, line: 42, column: 17)
!89 = !DILocation(line: 42, column: 33, scope: !88)
!90 = !DILocation(line: 42, column: 31, scope: !88)
!91 = !DILocation(line: 42, column: 17, scope: !85)
!92 = !DILocation(line: 45, column: 32, scope: !93)
!93 = distinct !DILexicalBlock(scope: !88, file: !3, line: 43, column: 17)
!94 = !DILocation(line: 46, column: 17, scope: !93)
!95 = !DILocation(line: 42, column: 37, scope: !88)
!96 = !DILocation(line: 42, column: 17, scope: !88)
!97 = distinct !{!97, !91, !98, !99}
!98 = !DILocation(line: 46, column: 17, scope: !85)
!99 = !{!"llvm.loop.mustprogress"}
!100 = !DILocation(line: 47, column: 30, scope: !83)
!101 = !DILocation(line: 47, column: 17, scope: !83)
!102 = !DILocation(line: 48, column: 13, scope: !83)
!103 = !DILocation(line: 50, column: 5, scope: !71)
!104 = !DILocation(line: 51, column: 1, scope: !61)
!105 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_21_bad", scope: !3, file: !3, line: 53, type: !106, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!106 = !DISubroutineType(types: !107)
!107 = !{null}
!108 = !DILocalVariable(name: "data", scope: !105, file: !3, line: 55, type: !55)
!109 = !DILocation(line: 55, column: 12, scope: !105)
!110 = !DILocalVariable(name: "dataBuffer", scope: !105, file: !3, line: 56, type: !111)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 100)
!114 = !DILocation(line: 56, column: 10, scope: !105)
!115 = !DILocation(line: 57, column: 12, scope: !105)
!116 = !DILocation(line: 57, column: 10, scope: !105)
!117 = !DILocalVariable(name: "dataLen", scope: !118, file: !3, line: 60, type: !119)
!118 = distinct !DILexicalBlock(scope: !105, file: !3, line: 58, column: 5)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocation(line: 60, column: 16, scope: !118)
!123 = !DILocation(line: 60, column: 33, scope: !118)
!124 = !DILocation(line: 60, column: 26, scope: !118)
!125 = !DILocation(line: 62, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !118, file: !3, line: 62, column: 13)
!127 = !DILocation(line: 62, column: 16, scope: !126)
!128 = !DILocation(line: 62, column: 25, scope: !126)
!129 = !DILocation(line: 62, column: 13, scope: !118)
!130 = !DILocation(line: 65, column: 23, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !3, line: 65, column: 17)
!132 = distinct !DILexicalBlock(scope: !126, file: !3, line: 63, column: 9)
!133 = !DILocation(line: 65, column: 28, scope: !131)
!134 = !DILocation(line: 65, column: 27, scope: !131)
!135 = !DILocation(line: 65, column: 47, scope: !131)
!136 = !DILocation(line: 65, column: 46, scope: !131)
!137 = !DILocation(line: 65, column: 37, scope: !131)
!138 = !DILocation(line: 65, column: 57, scope: !131)
!139 = !DILocation(line: 65, column: 17, scope: !131)
!140 = !DILocation(line: 65, column: 64, scope: !131)
!141 = !DILocation(line: 65, column: 17, scope: !132)
!142 = !DILocation(line: 69, column: 34, scope: !143)
!143 = distinct !DILexicalBlock(scope: !131, file: !3, line: 66, column: 13)
!144 = !DILocation(line: 69, column: 27, scope: !143)
!145 = !DILocation(line: 69, column: 25, scope: !143)
!146 = !DILocation(line: 70, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !3, line: 70, column: 21)
!148 = !DILocation(line: 70, column: 29, scope: !147)
!149 = !DILocation(line: 70, column: 33, scope: !147)
!150 = !DILocation(line: 70, column: 36, scope: !147)
!151 = !DILocation(line: 70, column: 41, scope: !147)
!152 = !DILocation(line: 70, column: 48, scope: !147)
!153 = !DILocation(line: 70, column: 52, scope: !147)
!154 = !DILocation(line: 70, column: 21, scope: !143)
!155 = !DILocation(line: 72, column: 21, scope: !156)
!156 = distinct !DILexicalBlock(scope: !147, file: !3, line: 71, column: 17)
!157 = !DILocation(line: 72, column: 26, scope: !156)
!158 = !DILocation(line: 72, column: 33, scope: !156)
!159 = !DILocation(line: 72, column: 37, scope: !156)
!160 = !DILocation(line: 73, column: 17, scope: !156)
!161 = !DILocation(line: 74, column: 13, scope: !143)
!162 = !DILocation(line: 77, column: 17, scope: !163)
!163 = distinct !DILexicalBlock(scope: !131, file: !3, line: 76, column: 13)
!164 = !DILocation(line: 79, column: 17, scope: !163)
!165 = !DILocation(line: 79, column: 22, scope: !163)
!166 = !DILocation(line: 79, column: 31, scope: !163)
!167 = !DILocation(line: 81, column: 9, scope: !132)
!168 = !DILocation(line: 83, column: 15, scope: !105)
!169 = !DILocation(line: 84, column: 13, scope: !105)
!170 = !DILocation(line: 84, column: 5, scope: !105)
!171 = !DILocation(line: 85, column: 1, scope: !105)
!172 = distinct !DISubprogram(name: "goodB2G1Sink", scope: !3, file: !3, line: 97, type: !62, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!173 = !DILocalVariable(name: "data", arg: 1, scope: !172, file: !3, line: 97, type: !55)
!174 = !DILocation(line: 97, column: 26, scope: !172)
!175 = !DILocation(line: 99, column: 8, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !3, line: 99, column: 8)
!177 = !DILocation(line: 99, column: 8, scope: !172)
!178 = !DILocation(line: 102, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 100, column: 5)
!180 = !DILocation(line: 103, column: 5, scope: !179)
!181 = !DILocalVariable(name: "i", scope: !182, file: !3, line: 107, type: !6)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 106, column: 9)
!183 = distinct !DILexicalBlock(scope: !176, file: !3, line: 105, column: 5)
!184 = !DILocation(line: 107, column: 17, scope: !182)
!185 = !DILocalVariable(name: "n", scope: !182, file: !3, line: 107, type: !6)
!186 = !DILocation(line: 107, column: 20, scope: !182)
!187 = !DILocalVariable(name: "intVariable", scope: !182, file: !3, line: 107, type: !6)
!188 = !DILocation(line: 107, column: 23, scope: !182)
!189 = !DILocation(line: 108, column: 24, scope: !190)
!190 = distinct !DILexicalBlock(scope: !182, file: !3, line: 108, column: 17)
!191 = !DILocation(line: 108, column: 17, scope: !190)
!192 = !DILocation(line: 108, column: 40, scope: !190)
!193 = !DILocation(line: 108, column: 17, scope: !182)
!194 = !DILocation(line: 111, column: 21, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 111, column: 21)
!196 = distinct !DILexicalBlock(scope: !190, file: !3, line: 109, column: 13)
!197 = !DILocation(line: 111, column: 23, scope: !195)
!198 = !DILocation(line: 111, column: 21, scope: !196)
!199 = !DILocation(line: 113, column: 33, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !3, line: 112, column: 17)
!201 = !DILocation(line: 114, column: 28, scope: !202)
!202 = distinct !DILexicalBlock(scope: !200, file: !3, line: 114, column: 21)
!203 = !DILocation(line: 114, column: 26, scope: !202)
!204 = !DILocation(line: 114, column: 33, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !3, line: 114, column: 21)
!206 = !DILocation(line: 114, column: 37, scope: !205)
!207 = !DILocation(line: 114, column: 35, scope: !205)
!208 = !DILocation(line: 114, column: 21, scope: !202)
!209 = !DILocation(line: 117, column: 36, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !3, line: 115, column: 21)
!211 = !DILocation(line: 118, column: 21, scope: !210)
!212 = !DILocation(line: 114, column: 41, scope: !205)
!213 = !DILocation(line: 114, column: 21, scope: !205)
!214 = distinct !{!214, !208, !215, !99}
!215 = !DILocation(line: 118, column: 21, scope: !202)
!216 = !DILocation(line: 119, column: 34, scope: !200)
!217 = !DILocation(line: 119, column: 21, scope: !200)
!218 = !DILocation(line: 120, column: 17, scope: !200)
!219 = !DILocation(line: 121, column: 13, scope: !196)
!220 = !DILocation(line: 124, column: 1, scope: !172)
!221 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 126, type: !106, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!222 = !DILocalVariable(name: "data", scope: !221, file: !3, line: 128, type: !55)
!223 = !DILocation(line: 128, column: 12, scope: !221)
!224 = !DILocalVariable(name: "dataBuffer", scope: !221, file: !3, line: 129, type: !111)
!225 = !DILocation(line: 129, column: 10, scope: !221)
!226 = !DILocation(line: 130, column: 12, scope: !221)
!227 = !DILocation(line: 130, column: 10, scope: !221)
!228 = !DILocalVariable(name: "dataLen", scope: !229, file: !3, line: 133, type: !119)
!229 = distinct !DILexicalBlock(scope: !221, file: !3, line: 131, column: 5)
!230 = !DILocation(line: 133, column: 16, scope: !229)
!231 = !DILocation(line: 133, column: 33, scope: !229)
!232 = !DILocation(line: 133, column: 26, scope: !229)
!233 = !DILocation(line: 135, column: 17, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !3, line: 135, column: 13)
!235 = !DILocation(line: 135, column: 16, scope: !234)
!236 = !DILocation(line: 135, column: 25, scope: !234)
!237 = !DILocation(line: 135, column: 13, scope: !229)
!238 = !DILocation(line: 138, column: 23, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !3, line: 138, column: 17)
!240 = distinct !DILexicalBlock(scope: !234, file: !3, line: 136, column: 9)
!241 = !DILocation(line: 138, column: 28, scope: !239)
!242 = !DILocation(line: 138, column: 27, scope: !239)
!243 = !DILocation(line: 138, column: 47, scope: !239)
!244 = !DILocation(line: 138, column: 46, scope: !239)
!245 = !DILocation(line: 138, column: 37, scope: !239)
!246 = !DILocation(line: 138, column: 57, scope: !239)
!247 = !DILocation(line: 138, column: 17, scope: !239)
!248 = !DILocation(line: 138, column: 64, scope: !239)
!249 = !DILocation(line: 138, column: 17, scope: !240)
!250 = !DILocation(line: 142, column: 34, scope: !251)
!251 = distinct !DILexicalBlock(scope: !239, file: !3, line: 139, column: 13)
!252 = !DILocation(line: 142, column: 27, scope: !251)
!253 = !DILocation(line: 142, column: 25, scope: !251)
!254 = !DILocation(line: 143, column: 21, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !3, line: 143, column: 21)
!256 = !DILocation(line: 143, column: 29, scope: !255)
!257 = !DILocation(line: 143, column: 33, scope: !255)
!258 = !DILocation(line: 143, column: 36, scope: !255)
!259 = !DILocation(line: 143, column: 41, scope: !255)
!260 = !DILocation(line: 143, column: 48, scope: !255)
!261 = !DILocation(line: 143, column: 52, scope: !255)
!262 = !DILocation(line: 143, column: 21, scope: !251)
!263 = !DILocation(line: 145, column: 21, scope: !264)
!264 = distinct !DILexicalBlock(scope: !255, file: !3, line: 144, column: 17)
!265 = !DILocation(line: 145, column: 26, scope: !264)
!266 = !DILocation(line: 145, column: 33, scope: !264)
!267 = !DILocation(line: 145, column: 37, scope: !264)
!268 = !DILocation(line: 146, column: 17, scope: !264)
!269 = !DILocation(line: 147, column: 13, scope: !251)
!270 = !DILocation(line: 150, column: 17, scope: !271)
!271 = distinct !DILexicalBlock(scope: !239, file: !3, line: 149, column: 13)
!272 = !DILocation(line: 152, column: 17, scope: !271)
!273 = !DILocation(line: 152, column: 22, scope: !271)
!274 = !DILocation(line: 152, column: 31, scope: !271)
!275 = !DILocation(line: 154, column: 9, scope: !240)
!276 = !DILocation(line: 156, column: 20, scope: !221)
!277 = !DILocation(line: 157, column: 18, scope: !221)
!278 = !DILocation(line: 157, column: 5, scope: !221)
!279 = !DILocation(line: 158, column: 1, scope: !221)
!280 = distinct !DISubprogram(name: "goodB2G2Sink", scope: !3, file: !3, line: 161, type: !62, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!281 = !DILocalVariable(name: "data", arg: 1, scope: !280, file: !3, line: 161, type: !55)
!282 = !DILocation(line: 161, column: 26, scope: !280)
!283 = !DILocation(line: 163, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !3, line: 163, column: 8)
!285 = !DILocation(line: 163, column: 8, scope: !280)
!286 = !DILocalVariable(name: "i", scope: !287, file: !3, line: 166, type: !6)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 165, column: 9)
!288 = distinct !DILexicalBlock(scope: !284, file: !3, line: 164, column: 5)
!289 = !DILocation(line: 166, column: 17, scope: !287)
!290 = !DILocalVariable(name: "n", scope: !287, file: !3, line: 166, type: !6)
!291 = !DILocation(line: 166, column: 20, scope: !287)
!292 = !DILocalVariable(name: "intVariable", scope: !287, file: !3, line: 166, type: !6)
!293 = !DILocation(line: 166, column: 23, scope: !287)
!294 = !DILocation(line: 167, column: 24, scope: !295)
!295 = distinct !DILexicalBlock(scope: !287, file: !3, line: 167, column: 17)
!296 = !DILocation(line: 167, column: 17, scope: !295)
!297 = !DILocation(line: 167, column: 40, scope: !295)
!298 = !DILocation(line: 167, column: 17, scope: !287)
!299 = !DILocation(line: 170, column: 21, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 170, column: 21)
!301 = distinct !DILexicalBlock(scope: !295, file: !3, line: 168, column: 13)
!302 = !DILocation(line: 170, column: 23, scope: !300)
!303 = !DILocation(line: 170, column: 21, scope: !301)
!304 = !DILocation(line: 172, column: 33, scope: !305)
!305 = distinct !DILexicalBlock(scope: !300, file: !3, line: 171, column: 17)
!306 = !DILocation(line: 173, column: 28, scope: !307)
!307 = distinct !DILexicalBlock(scope: !305, file: !3, line: 173, column: 21)
!308 = !DILocation(line: 173, column: 26, scope: !307)
!309 = !DILocation(line: 173, column: 33, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !3, line: 173, column: 21)
!311 = !DILocation(line: 173, column: 37, scope: !310)
!312 = !DILocation(line: 173, column: 35, scope: !310)
!313 = !DILocation(line: 173, column: 21, scope: !307)
!314 = !DILocation(line: 176, column: 36, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !3, line: 174, column: 21)
!316 = !DILocation(line: 177, column: 21, scope: !315)
!317 = !DILocation(line: 173, column: 41, scope: !310)
!318 = !DILocation(line: 173, column: 21, scope: !310)
!319 = distinct !{!319, !313, !320, !99}
!320 = !DILocation(line: 177, column: 21, scope: !307)
!321 = !DILocation(line: 178, column: 34, scope: !305)
!322 = !DILocation(line: 178, column: 21, scope: !305)
!323 = !DILocation(line: 179, column: 17, scope: !305)
!324 = !DILocation(line: 180, column: 13, scope: !301)
!325 = !DILocation(line: 182, column: 5, scope: !288)
!326 = !DILocation(line: 183, column: 1, scope: !280)
!327 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 185, type: !106, scopeLine: 186, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!328 = !DILocalVariable(name: "data", scope: !327, file: !3, line: 187, type: !55)
!329 = !DILocation(line: 187, column: 12, scope: !327)
!330 = !DILocalVariable(name: "dataBuffer", scope: !327, file: !3, line: 188, type: !111)
!331 = !DILocation(line: 188, column: 10, scope: !327)
!332 = !DILocation(line: 189, column: 12, scope: !327)
!333 = !DILocation(line: 189, column: 10, scope: !327)
!334 = !DILocalVariable(name: "dataLen", scope: !335, file: !3, line: 192, type: !119)
!335 = distinct !DILexicalBlock(scope: !327, file: !3, line: 190, column: 5)
!336 = !DILocation(line: 192, column: 16, scope: !335)
!337 = !DILocation(line: 192, column: 33, scope: !335)
!338 = !DILocation(line: 192, column: 26, scope: !335)
!339 = !DILocation(line: 194, column: 17, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !3, line: 194, column: 13)
!341 = !DILocation(line: 194, column: 16, scope: !340)
!342 = !DILocation(line: 194, column: 25, scope: !340)
!343 = !DILocation(line: 194, column: 13, scope: !335)
!344 = !DILocation(line: 197, column: 23, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 197, column: 17)
!346 = distinct !DILexicalBlock(scope: !340, file: !3, line: 195, column: 9)
!347 = !DILocation(line: 197, column: 28, scope: !345)
!348 = !DILocation(line: 197, column: 27, scope: !345)
!349 = !DILocation(line: 197, column: 47, scope: !345)
!350 = !DILocation(line: 197, column: 46, scope: !345)
!351 = !DILocation(line: 197, column: 37, scope: !345)
!352 = !DILocation(line: 197, column: 57, scope: !345)
!353 = !DILocation(line: 197, column: 17, scope: !345)
!354 = !DILocation(line: 197, column: 64, scope: !345)
!355 = !DILocation(line: 197, column: 17, scope: !346)
!356 = !DILocation(line: 201, column: 34, scope: !357)
!357 = distinct !DILexicalBlock(scope: !345, file: !3, line: 198, column: 13)
!358 = !DILocation(line: 201, column: 27, scope: !357)
!359 = !DILocation(line: 201, column: 25, scope: !357)
!360 = !DILocation(line: 202, column: 21, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !3, line: 202, column: 21)
!362 = !DILocation(line: 202, column: 29, scope: !361)
!363 = !DILocation(line: 202, column: 33, scope: !361)
!364 = !DILocation(line: 202, column: 36, scope: !361)
!365 = !DILocation(line: 202, column: 41, scope: !361)
!366 = !DILocation(line: 202, column: 48, scope: !361)
!367 = !DILocation(line: 202, column: 52, scope: !361)
!368 = !DILocation(line: 202, column: 21, scope: !357)
!369 = !DILocation(line: 204, column: 21, scope: !370)
!370 = distinct !DILexicalBlock(scope: !361, file: !3, line: 203, column: 17)
!371 = !DILocation(line: 204, column: 26, scope: !370)
!372 = !DILocation(line: 204, column: 33, scope: !370)
!373 = !DILocation(line: 204, column: 37, scope: !370)
!374 = !DILocation(line: 205, column: 17, scope: !370)
!375 = !DILocation(line: 206, column: 13, scope: !357)
!376 = !DILocation(line: 209, column: 17, scope: !377)
!377 = distinct !DILexicalBlock(scope: !345, file: !3, line: 208, column: 13)
!378 = !DILocation(line: 211, column: 17, scope: !377)
!379 = !DILocation(line: 211, column: 22, scope: !377)
!380 = !DILocation(line: 211, column: 31, scope: !377)
!381 = !DILocation(line: 213, column: 9, scope: !346)
!382 = !DILocation(line: 215, column: 20, scope: !327)
!383 = !DILocation(line: 216, column: 18, scope: !327)
!384 = !DILocation(line: 216, column: 5, scope: !327)
!385 = !DILocation(line: 217, column: 1, scope: !327)
!386 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 220, type: !62, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!387 = !DILocalVariable(name: "data", arg: 1, scope: !386, file: !3, line: 220, type: !55)
!388 = !DILocation(line: 220, column: 25, scope: !386)
!389 = !DILocation(line: 222, column: 8, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !3, line: 222, column: 8)
!391 = !DILocation(line: 222, column: 8, scope: !386)
!392 = !DILocalVariable(name: "i", scope: !393, file: !3, line: 225, type: !6)
!393 = distinct !DILexicalBlock(scope: !394, file: !3, line: 224, column: 9)
!394 = distinct !DILexicalBlock(scope: !390, file: !3, line: 223, column: 5)
!395 = !DILocation(line: 225, column: 17, scope: !393)
!396 = !DILocalVariable(name: "n", scope: !393, file: !3, line: 225, type: !6)
!397 = !DILocation(line: 225, column: 20, scope: !393)
!398 = !DILocalVariable(name: "intVariable", scope: !393, file: !3, line: 225, type: !6)
!399 = !DILocation(line: 225, column: 23, scope: !393)
!400 = !DILocation(line: 226, column: 24, scope: !401)
!401 = distinct !DILexicalBlock(scope: !393, file: !3, line: 226, column: 17)
!402 = !DILocation(line: 226, column: 17, scope: !401)
!403 = !DILocation(line: 226, column: 40, scope: !401)
!404 = !DILocation(line: 226, column: 17, scope: !393)
!405 = !DILocation(line: 229, column: 29, scope: !406)
!406 = distinct !DILexicalBlock(scope: !401, file: !3, line: 227, column: 13)
!407 = !DILocation(line: 230, column: 24, scope: !408)
!408 = distinct !DILexicalBlock(scope: !406, file: !3, line: 230, column: 17)
!409 = !DILocation(line: 230, column: 22, scope: !408)
!410 = !DILocation(line: 230, column: 29, scope: !411)
!411 = distinct !DILexicalBlock(scope: !408, file: !3, line: 230, column: 17)
!412 = !DILocation(line: 230, column: 33, scope: !411)
!413 = !DILocation(line: 230, column: 31, scope: !411)
!414 = !DILocation(line: 230, column: 17, scope: !408)
!415 = !DILocation(line: 233, column: 32, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !3, line: 231, column: 17)
!417 = !DILocation(line: 234, column: 17, scope: !416)
!418 = !DILocation(line: 230, column: 37, scope: !411)
!419 = !DILocation(line: 230, column: 17, scope: !411)
!420 = distinct !{!420, !414, !421, !99}
!421 = !DILocation(line: 234, column: 17, scope: !408)
!422 = !DILocation(line: 235, column: 30, scope: !406)
!423 = !DILocation(line: 235, column: 17, scope: !406)
!424 = !DILocation(line: 236, column: 13, scope: !406)
!425 = !DILocation(line: 238, column: 5, scope: !394)
!426 = !DILocation(line: 239, column: 1, scope: !386)
!427 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 241, type: !106, scopeLine: 242, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!428 = !DILocalVariable(name: "data", scope: !427, file: !3, line: 243, type: !55)
!429 = !DILocation(line: 243, column: 12, scope: !427)
!430 = !DILocalVariable(name: "dataBuffer", scope: !427, file: !3, line: 244, type: !111)
!431 = !DILocation(line: 244, column: 10, scope: !427)
!432 = !DILocation(line: 245, column: 12, scope: !427)
!433 = !DILocation(line: 245, column: 10, scope: !427)
!434 = !DILocation(line: 247, column: 12, scope: !427)
!435 = !DILocation(line: 247, column: 5, scope: !427)
!436 = !DILocation(line: 248, column: 19, scope: !427)
!437 = !DILocation(line: 249, column: 17, scope: !427)
!438 = !DILocation(line: 249, column: 5, scope: !427)
!439 = !DILocation(line: 250, column: 1, scope: !427)
!440 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_21_good", scope: !3, file: !3, line: 252, type: !106, scopeLine: 253, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!441 = !DILocation(line: 254, column: 5, scope: !440)
!442 = !DILocation(line: 255, column: 5, scope: !440)
!443 = !DILocation(line: 256, column: 5, scope: !440)
!444 = !DILocation(line: 257, column: 1, scope: !440)
!445 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !62, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!446 = !DILocalVariable(name: "line", arg: 1, scope: !445, file: !18, line: 11, type: !55)
!447 = !DILocation(line: 11, column: 25, scope: !445)
!448 = !DILocation(line: 13, column: 1, scope: !445)
!449 = !DILocation(line: 14, column: 8, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !18, line: 14, column: 8)
!451 = !DILocation(line: 14, column: 13, scope: !450)
!452 = !DILocation(line: 14, column: 8, scope: !445)
!453 = !DILocation(line: 16, column: 24, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !18, line: 15, column: 5)
!455 = !DILocation(line: 16, column: 9, scope: !454)
!456 = !DILocation(line: 17, column: 5, scope: !454)
!457 = !DILocation(line: 18, column: 5, scope: !445)
!458 = !DILocation(line: 19, column: 1, scope: !445)
!459 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !62, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!460 = !DILocalVariable(name: "line", arg: 1, scope: !459, file: !18, line: 20, type: !55)
!461 = !DILocation(line: 20, column: 29, scope: !459)
!462 = !DILocation(line: 22, column: 8, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !18, line: 22, column: 8)
!464 = !DILocation(line: 22, column: 13, scope: !463)
!465 = !DILocation(line: 22, column: 8, scope: !459)
!466 = !DILocation(line: 24, column: 24, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !18, line: 23, column: 5)
!468 = !DILocation(line: 24, column: 9, scope: !467)
!469 = !DILocation(line: 25, column: 5, scope: !467)
!470 = !DILocation(line: 26, column: 1, scope: !459)
!471 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !472, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !120, line: 74, baseType: !6)
!476 = !DILocalVariable(name: "line", arg: 1, scope: !471, file: !18, line: 27, type: !474)
!477 = !DILocation(line: 27, column: 29, scope: !471)
!478 = !DILocation(line: 29, column: 8, scope: !479)
!479 = distinct !DILexicalBlock(scope: !471, file: !18, line: 29, column: 8)
!480 = !DILocation(line: 29, column: 13, scope: !479)
!481 = !DILocation(line: 29, column: 8, scope: !471)
!482 = !DILocation(line: 31, column: 27, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !18, line: 30, column: 5)
!484 = !DILocation(line: 31, column: 9, scope: !483)
!485 = !DILocation(line: 32, column: 5, scope: !483)
!486 = !DILocation(line: 33, column: 1, scope: !471)
!487 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !488, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !6}
!490 = !DILocalVariable(name: "intNumber", arg: 1, scope: !487, file: !18, line: 35, type: !6)
!491 = !DILocation(line: 35, column: 24, scope: !487)
!492 = !DILocation(line: 37, column: 20, scope: !487)
!493 = !DILocation(line: 37, column: 5, scope: !487)
!494 = !DILocation(line: 38, column: 1, scope: !487)
!495 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !496, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !498}
!498 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!499 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !495, file: !18, line: 40, type: !498)
!500 = !DILocation(line: 40, column: 28, scope: !495)
!501 = !DILocation(line: 42, column: 21, scope: !495)
!502 = !DILocation(line: 42, column: 5, scope: !495)
!503 = !DILocation(line: 43, column: 1, scope: !495)
!504 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !505, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !507}
!507 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!508 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !504, file: !18, line: 45, type: !507)
!509 = !DILocation(line: 45, column: 28, scope: !504)
!510 = !DILocation(line: 47, column: 20, scope: !504)
!511 = !DILocation(line: 47, column: 5, scope: !504)
!512 = !DILocation(line: 48, column: 1, scope: !504)
!513 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !514, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !516}
!516 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!517 = !DILocalVariable(name: "longNumber", arg: 1, scope: !513, file: !18, line: 50, type: !516)
!518 = !DILocation(line: 50, column: 26, scope: !513)
!519 = !DILocation(line: 52, column: 21, scope: !513)
!520 = !DILocation(line: 52, column: 5, scope: !513)
!521 = !DILocation(line: 53, column: 1, scope: !513)
!522 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !523, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !525}
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !526, line: 27, baseType: !527)
!526 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !528, line: 44, baseType: !516)
!528 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!529 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !522, file: !18, line: 55, type: !525)
!530 = !DILocation(line: 55, column: 33, scope: !522)
!531 = !DILocation(line: 57, column: 29, scope: !522)
!532 = !DILocation(line: 57, column: 5, scope: !522)
!533 = !DILocation(line: 58, column: 1, scope: !522)
!534 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !535, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !119}
!537 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !534, file: !18, line: 60, type: !119)
!538 = !DILocation(line: 60, column: 29, scope: !534)
!539 = !DILocation(line: 62, column: 21, scope: !534)
!540 = !DILocation(line: 62, column: 5, scope: !534)
!541 = !DILocation(line: 63, column: 1, scope: !534)
!542 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !543, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !56}
!545 = !DILocalVariable(name: "charHex", arg: 1, scope: !542, file: !18, line: 65, type: !56)
!546 = !DILocation(line: 65, column: 29, scope: !542)
!547 = !DILocation(line: 67, column: 22, scope: !542)
!548 = !DILocation(line: 67, column: 5, scope: !542)
!549 = !DILocation(line: 68, column: 1, scope: !542)
!550 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !551, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !475}
!553 = !DILocalVariable(name: "wideChar", arg: 1, scope: !550, file: !18, line: 70, type: !475)
!554 = !DILocation(line: 70, column: 29, scope: !550)
!555 = !DILocalVariable(name: "s", scope: !550, file: !18, line: 74, type: !556)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 64, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 2)
!559 = !DILocation(line: 74, column: 13, scope: !550)
!560 = !DILocation(line: 75, column: 16, scope: !550)
!561 = !DILocation(line: 75, column: 9, scope: !550)
!562 = !DILocation(line: 75, column: 14, scope: !550)
!563 = !DILocation(line: 76, column: 9, scope: !550)
!564 = !DILocation(line: 76, column: 14, scope: !550)
!565 = !DILocation(line: 77, column: 21, scope: !550)
!566 = !DILocation(line: 77, column: 5, scope: !550)
!567 = !DILocation(line: 78, column: 1, scope: !550)
!568 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !569, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !22}
!571 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !568, file: !18, line: 80, type: !22)
!572 = !DILocation(line: 80, column: 33, scope: !568)
!573 = !DILocation(line: 82, column: 20, scope: !568)
!574 = !DILocation(line: 82, column: 5, scope: !568)
!575 = !DILocation(line: 83, column: 1, scope: !568)
!576 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !577, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !38}
!579 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !576, file: !18, line: 85, type: !38)
!580 = !DILocation(line: 85, column: 45, scope: !576)
!581 = !DILocation(line: 87, column: 22, scope: !576)
!582 = !DILocation(line: 87, column: 5, scope: !576)
!583 = !DILocation(line: 88, column: 1, scope: !576)
!584 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !585, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !587}
!587 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!588 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !584, file: !18, line: 90, type: !587)
!589 = !DILocation(line: 90, column: 29, scope: !584)
!590 = !DILocation(line: 92, column: 20, scope: !584)
!591 = !DILocation(line: 92, column: 5, scope: !584)
!592 = !DILocation(line: 93, column: 1, scope: !584)
!593 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !594, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !596}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !598, line: 100, baseType: !599)
!598 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_996/source_code")
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !598, line: 96, size: 64, elements: !600)
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !599, file: !598, line: 98, baseType: !6, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !599, file: !598, line: 99, baseType: !6, size: 32, offset: 32)
!603 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !593, file: !18, line: 95, type: !596)
!604 = !DILocation(line: 95, column: 40, scope: !593)
!605 = !DILocation(line: 97, column: 26, scope: !593)
!606 = !DILocation(line: 97, column: 47, scope: !593)
!607 = !DILocation(line: 97, column: 55, scope: !593)
!608 = !DILocation(line: 97, column: 76, scope: !593)
!609 = !DILocation(line: 97, column: 5, scope: !593)
!610 = !DILocation(line: 98, column: 1, scope: !593)
!611 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !612, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !614, !119}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!615 = !DILocalVariable(name: "bytes", arg: 1, scope: !611, file: !18, line: 100, type: !614)
!616 = !DILocation(line: 100, column: 38, scope: !611)
!617 = !DILocalVariable(name: "numBytes", arg: 2, scope: !611, file: !18, line: 100, type: !119)
!618 = !DILocation(line: 100, column: 52, scope: !611)
!619 = !DILocalVariable(name: "i", scope: !611, file: !18, line: 102, type: !119)
!620 = !DILocation(line: 102, column: 12, scope: !611)
!621 = !DILocation(line: 103, column: 12, scope: !622)
!622 = distinct !DILexicalBlock(scope: !611, file: !18, line: 103, column: 5)
!623 = !DILocation(line: 103, column: 10, scope: !622)
!624 = !DILocation(line: 103, column: 17, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !18, line: 103, column: 5)
!626 = !DILocation(line: 103, column: 21, scope: !625)
!627 = !DILocation(line: 103, column: 19, scope: !625)
!628 = !DILocation(line: 103, column: 5, scope: !622)
!629 = !DILocation(line: 105, column: 24, scope: !630)
!630 = distinct !DILexicalBlock(scope: !625, file: !18, line: 104, column: 5)
!631 = !DILocation(line: 105, column: 30, scope: !630)
!632 = !DILocation(line: 105, column: 9, scope: !630)
!633 = !DILocation(line: 106, column: 5, scope: !630)
!634 = !DILocation(line: 103, column: 31, scope: !625)
!635 = !DILocation(line: 103, column: 5, scope: !625)
!636 = distinct !{!636, !628, !637, !99}
!637 = !DILocation(line: 106, column: 5, scope: !622)
!638 = !DILocation(line: 107, column: 5, scope: !611)
!639 = !DILocation(line: 108, column: 1, scope: !611)
!640 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !641, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!641 = !DISubroutineType(types: !642)
!642 = !{!119, !614, !119, !55}
!643 = !DILocalVariable(name: "bytes", arg: 1, scope: !640, file: !18, line: 113, type: !614)
!644 = !DILocation(line: 113, column: 39, scope: !640)
!645 = !DILocalVariable(name: "numBytes", arg: 2, scope: !640, file: !18, line: 113, type: !119)
!646 = !DILocation(line: 113, column: 53, scope: !640)
!647 = !DILocalVariable(name: "hex", arg: 3, scope: !640, file: !18, line: 113, type: !55)
!648 = !DILocation(line: 113, column: 71, scope: !640)
!649 = !DILocalVariable(name: "numWritten", scope: !640, file: !18, line: 115, type: !119)
!650 = !DILocation(line: 115, column: 12, scope: !640)
!651 = !DILocation(line: 121, column: 5, scope: !640)
!652 = !DILocation(line: 121, column: 12, scope: !640)
!653 = !DILocation(line: 121, column: 25, scope: !640)
!654 = !DILocation(line: 121, column: 23, scope: !640)
!655 = !DILocation(line: 121, column: 34, scope: !640)
!656 = !DILocation(line: 121, column: 37, scope: !640)
!657 = !DILocation(line: 121, column: 67, scope: !640)
!658 = !DILocation(line: 121, column: 70, scope: !640)
!659 = !DILocation(line: 0, scope: !640)
!660 = !DILocalVariable(name: "byte", scope: !661, file: !18, line: 123, type: !6)
!661 = distinct !DILexicalBlock(scope: !640, file: !18, line: 122, column: 5)
!662 = !DILocation(line: 123, column: 13, scope: !661)
!663 = !DILocation(line: 124, column: 17, scope: !661)
!664 = !DILocation(line: 124, column: 25, scope: !661)
!665 = !DILocation(line: 124, column: 23, scope: !661)
!666 = !DILocation(line: 124, column: 9, scope: !661)
!667 = !DILocation(line: 125, column: 45, scope: !661)
!668 = !DILocation(line: 125, column: 29, scope: !661)
!669 = !DILocation(line: 125, column: 9, scope: !661)
!670 = !DILocation(line: 125, column: 15, scope: !661)
!671 = !DILocation(line: 125, column: 27, scope: !661)
!672 = !DILocation(line: 126, column: 9, scope: !661)
!673 = distinct !{!673, !651, !674, !99}
!674 = !DILocation(line: 127, column: 5, scope: !640)
!675 = !DILocation(line: 129, column: 12, scope: !640)
!676 = !DILocation(line: 129, column: 5, scope: !640)
!677 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !678, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!678 = !DISubroutineType(types: !679)
!679 = !{!119, !614, !119, !474}
!680 = !DILocalVariable(name: "bytes", arg: 1, scope: !677, file: !18, line: 135, type: !614)
!681 = !DILocation(line: 135, column: 41, scope: !677)
!682 = !DILocalVariable(name: "numBytes", arg: 2, scope: !677, file: !18, line: 135, type: !119)
!683 = !DILocation(line: 135, column: 55, scope: !677)
!684 = !DILocalVariable(name: "hex", arg: 3, scope: !677, file: !18, line: 135, type: !474)
!685 = !DILocation(line: 135, column: 76, scope: !677)
!686 = !DILocalVariable(name: "numWritten", scope: !677, file: !18, line: 137, type: !119)
!687 = !DILocation(line: 137, column: 12, scope: !677)
!688 = !DILocation(line: 143, column: 5, scope: !677)
!689 = !DILocation(line: 143, column: 12, scope: !677)
!690 = !DILocation(line: 143, column: 25, scope: !677)
!691 = !DILocation(line: 143, column: 23, scope: !677)
!692 = !DILocation(line: 143, column: 34, scope: !677)
!693 = !DILocation(line: 143, column: 47, scope: !677)
!694 = !DILocation(line: 143, column: 55, scope: !677)
!695 = !DILocation(line: 143, column: 53, scope: !677)
!696 = !DILocation(line: 143, column: 37, scope: !677)
!697 = !DILocation(line: 143, column: 68, scope: !677)
!698 = !DILocation(line: 143, column: 81, scope: !677)
!699 = !DILocation(line: 143, column: 89, scope: !677)
!700 = !DILocation(line: 143, column: 87, scope: !677)
!701 = !DILocation(line: 143, column: 100, scope: !677)
!702 = !DILocation(line: 143, column: 71, scope: !677)
!703 = !DILocation(line: 0, scope: !677)
!704 = !DILocalVariable(name: "byte", scope: !705, file: !18, line: 145, type: !6)
!705 = distinct !DILexicalBlock(scope: !677, file: !18, line: 144, column: 5)
!706 = !DILocation(line: 145, column: 13, scope: !705)
!707 = !DILocation(line: 146, column: 18, scope: !705)
!708 = !DILocation(line: 146, column: 26, scope: !705)
!709 = !DILocation(line: 146, column: 24, scope: !705)
!710 = !DILocation(line: 146, column: 9, scope: !705)
!711 = !DILocation(line: 147, column: 45, scope: !705)
!712 = !DILocation(line: 147, column: 29, scope: !705)
!713 = !DILocation(line: 147, column: 9, scope: !705)
!714 = !DILocation(line: 147, column: 15, scope: !705)
!715 = !DILocation(line: 147, column: 27, scope: !705)
!716 = !DILocation(line: 148, column: 9, scope: !705)
!717 = distinct !{!717, !688, !718, !99}
!718 = !DILocation(line: 149, column: 5, scope: !677)
!719 = !DILocation(line: 151, column: 12, scope: !677)
!720 = !DILocation(line: 151, column: 5, scope: !677)
!721 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !722, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!722 = !DISubroutineType(types: !723)
!723 = !{!6}
!724 = !DILocation(line: 158, column: 5, scope: !721)
!725 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !722, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!726 = !DILocation(line: 163, column: 5, scope: !725)
!727 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !722, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!728 = !DILocation(line: 168, column: 13, scope: !727)
!729 = !DILocation(line: 168, column: 20, scope: !727)
!730 = !DILocation(line: 168, column: 5, scope: !727)
!731 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !106, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!732 = !DILocation(line: 187, column: 16, scope: !731)
!733 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !106, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!734 = !DILocation(line: 188, column: 16, scope: !733)
!735 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !106, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!736 = !DILocation(line: 189, column: 16, scope: !735)
!737 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !106, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!738 = !DILocation(line: 190, column: 16, scope: !737)
!739 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !106, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!740 = !DILocation(line: 191, column: 16, scope: !739)
!741 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !106, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!742 = !DILocation(line: 192, column: 16, scope: !741)
!743 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !106, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!744 = !DILocation(line: 193, column: 16, scope: !743)
!745 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !106, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!746 = !DILocation(line: 194, column: 16, scope: !745)
!747 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !106, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!748 = !DILocation(line: 195, column: 16, scope: !747)
!749 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !106, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!750 = !DILocation(line: 198, column: 15, scope: !749)
!751 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !106, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!752 = !DILocation(line: 199, column: 15, scope: !751)
!753 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !106, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!754 = !DILocation(line: 200, column: 15, scope: !753)
!755 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !106, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!756 = !DILocation(line: 201, column: 15, scope: !755)
!757 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !106, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!758 = !DILocation(line: 202, column: 15, scope: !757)
!759 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !106, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!760 = !DILocation(line: 203, column: 15, scope: !759)
!761 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !106, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!762 = !DILocation(line: 204, column: 15, scope: !761)
!763 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !106, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!764 = !DILocation(line: 205, column: 15, scope: !763)
!765 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !106, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!766 = !DILocation(line: 206, column: 15, scope: !765)
