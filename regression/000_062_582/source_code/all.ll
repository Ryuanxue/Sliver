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
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !8
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !11
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !13
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
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
define dso_local void @badSink(i32 %data) #0 !dbg !61 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load i32, i32* @badStatic, align 4, !dbg !66
  %tobool = icmp ne i32 %0, 0, !dbg !66
  br i1 %tobool, label %if.then, label %if.end5, !dbg !68

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !69, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !73, metadata !DIExpression()), !dbg !77
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !77
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !77
  %2 = load i32, i32* %data.addr, align 4, !dbg !78
  %cmp = icmp sge i32 %2, 0, !dbg !80
  br i1 %cmp, label %if.then1, label %if.else, !dbg !81

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !82
  %idxprom = sext i32 %3 to i64, !dbg !84
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !84
  store i32 1, i32* %arrayidx, align 4, !dbg !85
  store i32 0, i32* %i, align 4, !dbg !86
  br label %for.cond, !dbg !88

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !89
  %cmp2 = icmp slt i32 %4, 10, !dbg !91
  br i1 %cmp2, label %for.body, label %for.end, !dbg !92

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !93
  %idxprom3 = sext i32 %5 to i64, !dbg !95
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !95
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !95
  call void @printIntLine(i32 %6), !dbg !96
  br label %for.inc, !dbg !97

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !98
  %inc = add nsw i32 %7, 1, !dbg !98
  store i32 %inc, i32* %i, align 4, !dbg !98
  br label %for.cond, !dbg !99, !llvm.loop !100

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !103

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !104
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !106

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !107
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad() #0 !dbg !108 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !111, metadata !DIExpression()), !dbg !112
  store i32 -1, i32* %data, align 4, !dbg !113
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !114, metadata !DIExpression()), !dbg !119
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !119
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !119
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !120
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !122
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !123
  %cmp = icmp ne i8* %call, null, !dbg !124
  br i1 %cmp, label %if.then, label %if.else, !dbg !125

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !126
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !128
  store i32 %call2, i32* %data, align 4, !dbg !129
  br label %if.end, !dbg !130

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !131
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1, i32* @badStatic, align 4, !dbg !133
  %2 = load i32, i32* %data, align 4, !dbg !134
  call void @badSink(i32 %2), !dbg !135
  ret void, !dbg !136
}

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1Sink(i32 %data) #0 !dbg !137 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !140
  %tobool = icmp ne i32 %0, 0, !dbg !140
  br i1 %tobool, label %if.then, label %if.else, !dbg !142

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !143
  br label %if.end7, !dbg !145

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !146, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !150, metadata !DIExpression()), !dbg !151
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !151
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !151
  %2 = load i32, i32* %data.addr, align 4, !dbg !152
  %cmp = icmp sge i32 %2, 0, !dbg !154
  br i1 %cmp, label %land.lhs.true, label %if.else6, !dbg !155

land.lhs.true:                                    ; preds = %if.else
  %3 = load i32, i32* %data.addr, align 4, !dbg !156
  %cmp1 = icmp slt i32 %3, 10, !dbg !157
  br i1 %cmp1, label %if.then2, label %if.else6, !dbg !158

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !159
  %idxprom = sext i32 %4 to i64, !dbg !161
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !161
  store i32 1, i32* %arrayidx, align 4, !dbg !162
  store i32 0, i32* %i, align 4, !dbg !163
  br label %for.cond, !dbg !165

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !166
  %cmp3 = icmp slt i32 %5, 10, !dbg !168
  br i1 %cmp3, label %for.body, label %for.end, !dbg !169

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !170
  %idxprom4 = sext i32 %6 to i64, !dbg !172
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !172
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !172
  call void @printIntLine(i32 %7), !dbg !173
  br label %for.inc, !dbg !174

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !175
  %inc = add nsw i32 %8, 1, !dbg !175
  store i32 %inc, i32* %i, align 4, !dbg !175
  br label %for.cond, !dbg !176, !llvm.loop !177

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !179

if.else6:                                         ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !180
  br label %if.end

if.end:                                           ; preds = %if.else6, %for.end
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret void, !dbg !182
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !183 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !184, metadata !DIExpression()), !dbg !185
  store i32 -1, i32* %data, align 4, !dbg !186
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !187, metadata !DIExpression()), !dbg !189
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !189
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !189
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !190
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !192
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !193
  %cmp = icmp ne i8* %call, null, !dbg !194
  br i1 %cmp, label %if.then, label %if.else, !dbg !195

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !196
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !198
  store i32 %call2, i32* %data, align 4, !dbg !199
  br label %if.end, !dbg !200

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !201
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !203
  %2 = load i32, i32* %data, align 4, !dbg !204
  call void @goodB2G1Sink(i32 %2), !dbg !205
  ret void, !dbg !206
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2Sink(i32 %data) #0 !dbg !207 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !208, metadata !DIExpression()), !dbg !209
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !210
  %tobool = icmp ne i32 %0, 0, !dbg !210
  br i1 %tobool, label %if.then, label %if.end6, !dbg !212

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !213, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !217, metadata !DIExpression()), !dbg !218
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !218
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !218
  %2 = load i32, i32* %data.addr, align 4, !dbg !219
  %cmp = icmp sge i32 %2, 0, !dbg !221
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !222

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !223
  %cmp1 = icmp slt i32 %3, 10, !dbg !224
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !225

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !226
  %idxprom = sext i32 %4 to i64, !dbg !228
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !228
  store i32 1, i32* %arrayidx, align 4, !dbg !229
  store i32 0, i32* %i, align 4, !dbg !230
  br label %for.cond, !dbg !232

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !233
  %cmp3 = icmp slt i32 %5, 10, !dbg !235
  br i1 %cmp3, label %for.body, label %for.end, !dbg !236

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !237
  %idxprom4 = sext i32 %6 to i64, !dbg !239
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !239
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !239
  call void @printIntLine(i32 %7), !dbg !240
  br label %for.inc, !dbg !241

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !242
  %inc = add nsw i32 %8, 1, !dbg !242
  store i32 %inc, i32* %i, align 4, !dbg !242
  br label %for.cond, !dbg !243, !llvm.loop !244

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !246

if.else:                                          ; preds = %land.lhs.true, %if.then
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !247
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end6, !dbg !249

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !251 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !252, metadata !DIExpression()), !dbg !253
  store i32 -1, i32* %data, align 4, !dbg !254
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !255, metadata !DIExpression()), !dbg !257
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !257
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !257
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !258
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !260
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !261
  %cmp = icmp ne i8* %call, null, !dbg !262
  br i1 %cmp, label %if.then, label %if.else, !dbg !263

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !264
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !266
  store i32 %call2, i32* %data, align 4, !dbg !267
  br label %if.end, !dbg !268

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !269
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !271
  %2 = load i32, i32* %data, align 4, !dbg !272
  call void @goodB2G2Sink(i32 %2), !dbg !273
  ret void, !dbg !274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i32 %data) #0 !dbg !275 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !276, metadata !DIExpression()), !dbg !277
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !278
  %tobool = icmp ne i32 %0, 0, !dbg !278
  br i1 %tobool, label %if.then, label %if.end5, !dbg !280

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !281, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !285, metadata !DIExpression()), !dbg !286
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !286
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !286
  %2 = load i32, i32* %data.addr, align 4, !dbg !287
  %cmp = icmp sge i32 %2, 0, !dbg !289
  br i1 %cmp, label %if.then1, label %if.else, !dbg !290

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !291
  %idxprom = sext i32 %3 to i64, !dbg !293
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !293
  store i32 1, i32* %arrayidx, align 4, !dbg !294
  store i32 0, i32* %i, align 4, !dbg !295
  br label %for.cond, !dbg !297

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !298
  %cmp2 = icmp slt i32 %4, 10, !dbg !300
  br i1 %cmp2, label %for.body, label %for.end, !dbg !301

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !302
  %idxprom3 = sext i32 %5 to i64, !dbg !304
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !304
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !304
  call void @printIntLine(i32 %6), !dbg !305
  br label %for.inc, !dbg !306

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !307
  %inc = add nsw i32 %7, 1, !dbg !307
  store i32 %inc, i32* %i, align 4, !dbg !307
  br label %for.cond, !dbg !308, !llvm.loop !309

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !311

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !312
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !314

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !316 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !317, metadata !DIExpression()), !dbg !318
  store i32 -1, i32* %data, align 4, !dbg !319
  store i32 7, i32* %data, align 4, !dbg !320
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !321
  %0 = load i32, i32* %data, align 4, !dbg !322
  call void @goodG2BSink(i32 %0), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_good() #0 !dbg !325 {
entry:
  call void @goodB2G1(), !dbg !326
  call void @goodB2G2(), !dbg !327
  call void @goodG2B(), !dbg !328
  ret void, !dbg !329
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !330 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !335
  %0 = load i8*, i8** %line.addr, align 8, !dbg !336
  %cmp = icmp ne i8* %0, null, !dbg !338
  br i1 %cmp, label %if.then, label %if.end, !dbg !339

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !340
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !342
  br label %if.end, !dbg !343

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !344
  ret void, !dbg !345
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !346 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !347, metadata !DIExpression()), !dbg !348
  %0 = load i8*, i8** %line.addr, align 8, !dbg !349
  %cmp = icmp ne i8* %0, null, !dbg !351
  br i1 %cmp, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !355
  br label %if.end, !dbg !356

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !358 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = load i32*, i32** %line.addr, align 8, !dbg !366
  %cmp = icmp ne i32* %0, null, !dbg !368
  br i1 %cmp, label %if.then, label %if.end, !dbg !369

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !370
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !372
  br label %if.end, !dbg !373

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !374
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !375 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !381 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !387
  %conv = sext i16 %0 to i32, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !390 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !396
  %conv = fpext float %0 to double, !dbg !396
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !397
  ret void, !dbg !398
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !399 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !408 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !417
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !418
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !420 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !430 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !433, metadata !DIExpression()), !dbg !434
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !435
  %conv = sext i8 %0 to i32, !dbg !435
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !436
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !438 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !443, metadata !DIExpression()), !dbg !447
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !448
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !449
  store i32 %0, i32* %arrayidx, align 4, !dbg !450
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !451
  store i32 0, i32* %arrayidx1, align 4, !dbg !452
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !453
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !454
  ret void, !dbg !455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !456 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !464 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !469
  %conv = zext i8 %0 to i32, !dbg !469
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !472 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !478
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !481 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !491, metadata !DIExpression()), !dbg !492
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !493
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !494
  %1 = load i32, i32* %intOne, align 4, !dbg !494
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !495
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !496
  %3 = load i32, i32* %intTwo, align 4, !dbg !496
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !497
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !499 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !503, metadata !DIExpression()), !dbg !504
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !505, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.declare(metadata i64* %i, metadata !507, metadata !DIExpression()), !dbg !508
  store i64 0, i64* %i, align 8, !dbg !509
  br label %for.cond, !dbg !511

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !512
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !514
  %cmp = icmp ult i64 %0, %1, !dbg !515
  br i1 %cmp, label %for.body, label %for.end, !dbg !516

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !517
  %3 = load i64, i64* %i, align 8, !dbg !519
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !517
  %4 = load i8, i8* %arrayidx, align 1, !dbg !517
  %conv = zext i8 %4 to i32, !dbg !517
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !520
  br label %for.inc, !dbg !521

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !522
  %inc = add i64 %5, 1, !dbg !522
  store i64 %inc, i64* %i, align 8, !dbg !522
  br label %for.cond, !dbg !523, !llvm.loop !524

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !526
  ret void, !dbg !527
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !528 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !531, metadata !DIExpression()), !dbg !532
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !533, metadata !DIExpression()), !dbg !534
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !537, metadata !DIExpression()), !dbg !538
  store i64 0, i64* %numWritten, align 8, !dbg !538
  br label %while.cond, !dbg !539

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !540
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !541
  %cmp = icmp ult i64 %0, %1, !dbg !542
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !543

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !544
  %2 = load i16*, i16** %call, align 8, !dbg !544
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !544
  %4 = load i64, i64* %numWritten, align 8, !dbg !544
  %mul = mul i64 2, %4, !dbg !544
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !544
  %5 = load i8, i8* %arrayidx, align 1, !dbg !544
  %conv = sext i8 %5 to i32, !dbg !544
  %idxprom = sext i32 %conv to i64, !dbg !544
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !544
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !544
  %conv2 = zext i16 %6 to i32, !dbg !544
  %and = and i32 %conv2, 4096, !dbg !544
  %tobool = icmp ne i32 %and, 0, !dbg !544
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !545

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !546
  %7 = load i16*, i16** %call3, align 8, !dbg !546
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !546
  %9 = load i64, i64* %numWritten, align 8, !dbg !546
  %mul4 = mul i64 2, %9, !dbg !546
  %add = add i64 %mul4, 1, !dbg !546
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !546
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !546
  %conv6 = sext i8 %10 to i32, !dbg !546
  %idxprom7 = sext i32 %conv6 to i64, !dbg !546
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !546
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !546
  %conv9 = zext i16 %11 to i32, !dbg !546
  %and10 = and i32 %conv9, 4096, !dbg !546
  %tobool11 = icmp ne i32 %and10, 0, !dbg !545
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !547
  br i1 %12, label %while.body, label %while.end, !dbg !539

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !548, metadata !DIExpression()), !dbg !550
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !551
  %14 = load i64, i64* %numWritten, align 8, !dbg !552
  %mul12 = mul i64 2, %14, !dbg !553
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !551
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !554
  %15 = load i32, i32* %byte, align 4, !dbg !555
  %conv15 = trunc i32 %15 to i8, !dbg !556
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !557
  %17 = load i64, i64* %numWritten, align 8, !dbg !558
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !557
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !559
  %18 = load i64, i64* %numWritten, align 8, !dbg !560
  %inc = add i64 %18, 1, !dbg !560
  store i64 %inc, i64* %numWritten, align 8, !dbg !560
  br label %while.cond, !dbg !539, !llvm.loop !561

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !563
  ret i64 %19, !dbg !564
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !565 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !568, metadata !DIExpression()), !dbg !569
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !570, metadata !DIExpression()), !dbg !571
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !574, metadata !DIExpression()), !dbg !575
  store i64 0, i64* %numWritten, align 8, !dbg !575
  br label %while.cond, !dbg !576

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !577
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !578
  %cmp = icmp ult i64 %0, %1, !dbg !579
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !580

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !581
  %3 = load i64, i64* %numWritten, align 8, !dbg !582
  %mul = mul i64 2, %3, !dbg !583
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !581
  %4 = load i32, i32* %arrayidx, align 4, !dbg !581
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !584
  %tobool = icmp ne i32 %call, 0, !dbg !584
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !585

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !586
  %6 = load i64, i64* %numWritten, align 8, !dbg !587
  %mul1 = mul i64 2, %6, !dbg !588
  %add = add i64 %mul1, 1, !dbg !589
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !586
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !586
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !590
  %tobool4 = icmp ne i32 %call3, 0, !dbg !585
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !591
  br i1 %8, label %while.body, label %while.end, !dbg !576

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !592, metadata !DIExpression()), !dbg !594
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !595
  %10 = load i64, i64* %numWritten, align 8, !dbg !596
  %mul5 = mul i64 2, %10, !dbg !597
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !595
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !598
  %11 = load i32, i32* %byte, align 4, !dbg !599
  %conv = trunc i32 %11 to i8, !dbg !600
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !601
  %13 = load i64, i64* %numWritten, align 8, !dbg !602
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !601
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !603
  %14 = load i64, i64* %numWritten, align 8, !dbg !604
  %inc = add i64 %14, 1, !dbg !604
  store i64 %inc, i64* %numWritten, align 8, !dbg !604
  br label %while.cond, !dbg !576, !llvm.loop !605

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !607
  ret i64 %15, !dbg !608
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !609 {
entry:
  ret i32 1, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !613 {
entry:
  ret i32 0, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !615 {
entry:
  %call = call i32 @rand() #9, !dbg !616
  %rem = srem i32 %call, 2, !dbg !617
  ret i32 %rem, !dbg !618
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !633 {
entry:
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !635 {
entry:
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !639 {
entry:
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !641 {
entry:
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2, !17}
!llvm.ident = !{!57, !57}
!llvm.module.flags = !{!58, !59, !60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 26, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_582/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !11, !13}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 81, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 82, type: !10, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 83, type: !10, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !10, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_582/source_code")
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
!36 = !{!6, !10, !37, !38}
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!15, !40, !42, !44, !46, !48, !50, !52}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !17, file: !18, line: 175, type: !10, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !17, file: !18, line: 176, type: !10, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalTrue", scope: !17, file: !18, line: 181, type: !10, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalFalse", scope: !17, file: !18, line: 182, type: !10, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalFive", scope: !17, file: !18, line: 183, type: !10, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "globalArgc", scope: !17, file: !18, line: 214, type: !10, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "globalArgv", scope: !17, file: !18, line: 215, type: !54, isLocal: false, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{!"clang version 12.0.0"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 28, type: !62, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !10}
!64 = !DILocalVariable(name: "data", arg: 1, scope: !61, file: !3, line: 28, type: !10)
!65 = !DILocation(line: 28, column: 18, scope: !61)
!66 = !DILocation(line: 30, column: 8, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !3, line: 30, column: 8)
!68 = !DILocation(line: 30, column: 8, scope: !61)
!69 = !DILocalVariable(name: "i", scope: !70, file: !3, line: 33, type: !10)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 32, column: 9)
!71 = distinct !DILexicalBlock(scope: !67, file: !3, line: 31, column: 5)
!72 = !DILocation(line: 33, column: 17, scope: !70)
!73 = !DILocalVariable(name: "buffer", scope: !70, file: !3, line: 34, type: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 10)
!77 = !DILocation(line: 34, column: 17, scope: !70)
!78 = !DILocation(line: 37, column: 17, scope: !79)
!79 = distinct !DILexicalBlock(scope: !70, file: !3, line: 37, column: 17)
!80 = !DILocation(line: 37, column: 22, scope: !79)
!81 = !DILocation(line: 37, column: 17, scope: !70)
!82 = !DILocation(line: 39, column: 24, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !3, line: 38, column: 13)
!84 = !DILocation(line: 39, column: 17, scope: !83)
!85 = !DILocation(line: 39, column: 30, scope: !83)
!86 = !DILocation(line: 41, column: 23, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !3, line: 41, column: 17)
!88 = !DILocation(line: 41, column: 21, scope: !87)
!89 = !DILocation(line: 41, column: 28, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !3, line: 41, column: 17)
!91 = !DILocation(line: 41, column: 30, scope: !90)
!92 = !DILocation(line: 41, column: 17, scope: !87)
!93 = !DILocation(line: 43, column: 41, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !3, line: 42, column: 17)
!95 = !DILocation(line: 43, column: 34, scope: !94)
!96 = !DILocation(line: 43, column: 21, scope: !94)
!97 = !DILocation(line: 44, column: 17, scope: !94)
!98 = !DILocation(line: 41, column: 37, scope: !90)
!99 = !DILocation(line: 41, column: 17, scope: !90)
!100 = distinct !{!100, !92, !101, !102}
!101 = !DILocation(line: 44, column: 17, scope: !87)
!102 = !{!"llvm.loop.mustprogress"}
!103 = !DILocation(line: 45, column: 13, scope: !83)
!104 = !DILocation(line: 48, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !79, file: !3, line: 47, column: 13)
!106 = !DILocation(line: 51, column: 5, scope: !71)
!107 = !DILocation(line: 52, column: 1, scope: !61)
!108 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad", scope: !3, file: !3, line: 54, type: !109, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!109 = !DISubroutineType(types: !110)
!110 = !{null}
!111 = !DILocalVariable(name: "data", scope: !108, file: !3, line: 56, type: !10)
!112 = !DILocation(line: 56, column: 9, scope: !108)
!113 = !DILocation(line: 58, column: 10, scope: !108)
!114 = !DILocalVariable(name: "inputBuffer", scope: !115, file: !3, line: 60, type: !116)
!115 = distinct !DILexicalBlock(scope: !108, file: !3, line: 59, column: 5)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 112, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 14)
!119 = !DILocation(line: 60, column: 14, scope: !115)
!120 = !DILocation(line: 62, column: 19, scope: !121)
!121 = distinct !DILexicalBlock(scope: !115, file: !3, line: 62, column: 13)
!122 = !DILocation(line: 62, column: 49, scope: !121)
!123 = !DILocation(line: 62, column: 13, scope: !121)
!124 = !DILocation(line: 62, column: 56, scope: !121)
!125 = !DILocation(line: 62, column: 13, scope: !115)
!126 = !DILocation(line: 65, column: 25, scope: !127)
!127 = distinct !DILexicalBlock(scope: !121, file: !3, line: 63, column: 9)
!128 = !DILocation(line: 65, column: 20, scope: !127)
!129 = !DILocation(line: 65, column: 18, scope: !127)
!130 = !DILocation(line: 66, column: 9, scope: !127)
!131 = !DILocation(line: 69, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !121, file: !3, line: 68, column: 9)
!133 = !DILocation(line: 72, column: 15, scope: !108)
!134 = !DILocation(line: 73, column: 13, scope: !108)
!135 = !DILocation(line: 73, column: 5, scope: !108)
!136 = !DILocation(line: 74, column: 1, scope: !108)
!137 = distinct !DISubprogram(name: "goodB2G1Sink", scope: !3, file: !3, line: 86, type: !62, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!138 = !DILocalVariable(name: "data", arg: 1, scope: !137, file: !3, line: 86, type: !10)
!139 = !DILocation(line: 86, column: 23, scope: !137)
!140 = !DILocation(line: 88, column: 8, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !3, line: 88, column: 8)
!142 = !DILocation(line: 88, column: 8, scope: !137)
!143 = !DILocation(line: 91, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !3, line: 89, column: 5)
!145 = !DILocation(line: 92, column: 5, scope: !144)
!146 = !DILocalVariable(name: "i", scope: !147, file: !3, line: 96, type: !10)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 95, column: 9)
!148 = distinct !DILexicalBlock(scope: !141, file: !3, line: 94, column: 5)
!149 = !DILocation(line: 96, column: 17, scope: !147)
!150 = !DILocalVariable(name: "buffer", scope: !147, file: !3, line: 97, type: !74)
!151 = !DILocation(line: 97, column: 17, scope: !147)
!152 = !DILocation(line: 99, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !147, file: !3, line: 99, column: 17)
!154 = !DILocation(line: 99, column: 22, scope: !153)
!155 = !DILocation(line: 99, column: 27, scope: !153)
!156 = !DILocation(line: 99, column: 30, scope: !153)
!157 = !DILocation(line: 99, column: 35, scope: !153)
!158 = !DILocation(line: 99, column: 17, scope: !147)
!159 = !DILocation(line: 101, column: 24, scope: !160)
!160 = distinct !DILexicalBlock(scope: !153, file: !3, line: 100, column: 13)
!161 = !DILocation(line: 101, column: 17, scope: !160)
!162 = !DILocation(line: 101, column: 30, scope: !160)
!163 = !DILocation(line: 103, column: 23, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !3, line: 103, column: 17)
!165 = !DILocation(line: 103, column: 21, scope: !164)
!166 = !DILocation(line: 103, column: 28, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !3, line: 103, column: 17)
!168 = !DILocation(line: 103, column: 30, scope: !167)
!169 = !DILocation(line: 103, column: 17, scope: !164)
!170 = !DILocation(line: 105, column: 41, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !3, line: 104, column: 17)
!172 = !DILocation(line: 105, column: 34, scope: !171)
!173 = !DILocation(line: 105, column: 21, scope: !171)
!174 = !DILocation(line: 106, column: 17, scope: !171)
!175 = !DILocation(line: 103, column: 37, scope: !167)
!176 = !DILocation(line: 103, column: 17, scope: !167)
!177 = distinct !{!177, !169, !178, !102}
!178 = !DILocation(line: 106, column: 17, scope: !164)
!179 = !DILocation(line: 107, column: 13, scope: !160)
!180 = !DILocation(line: 110, column: 17, scope: !181)
!181 = distinct !DILexicalBlock(scope: !153, file: !3, line: 109, column: 13)
!182 = !DILocation(line: 114, column: 1, scope: !137)
!183 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 116, type: !109, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!184 = !DILocalVariable(name: "data", scope: !183, file: !3, line: 118, type: !10)
!185 = !DILocation(line: 118, column: 9, scope: !183)
!186 = !DILocation(line: 120, column: 10, scope: !183)
!187 = !DILocalVariable(name: "inputBuffer", scope: !188, file: !3, line: 122, type: !116)
!188 = distinct !DILexicalBlock(scope: !183, file: !3, line: 121, column: 5)
!189 = !DILocation(line: 122, column: 14, scope: !188)
!190 = !DILocation(line: 124, column: 19, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 124, column: 13)
!192 = !DILocation(line: 124, column: 49, scope: !191)
!193 = !DILocation(line: 124, column: 13, scope: !191)
!194 = !DILocation(line: 124, column: 56, scope: !191)
!195 = !DILocation(line: 124, column: 13, scope: !188)
!196 = !DILocation(line: 127, column: 25, scope: !197)
!197 = distinct !DILexicalBlock(scope: !191, file: !3, line: 125, column: 9)
!198 = !DILocation(line: 127, column: 20, scope: !197)
!199 = !DILocation(line: 127, column: 18, scope: !197)
!200 = !DILocation(line: 128, column: 9, scope: !197)
!201 = !DILocation(line: 131, column: 13, scope: !202)
!202 = distinct !DILexicalBlock(scope: !191, file: !3, line: 130, column: 9)
!203 = !DILocation(line: 134, column: 20, scope: !183)
!204 = !DILocation(line: 135, column: 18, scope: !183)
!205 = !DILocation(line: 135, column: 5, scope: !183)
!206 = !DILocation(line: 136, column: 1, scope: !183)
!207 = distinct !DISubprogram(name: "goodB2G2Sink", scope: !3, file: !3, line: 139, type: !62, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!208 = !DILocalVariable(name: "data", arg: 1, scope: !207, file: !3, line: 139, type: !10)
!209 = !DILocation(line: 139, column: 23, scope: !207)
!210 = !DILocation(line: 141, column: 8, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !3, line: 141, column: 8)
!212 = !DILocation(line: 141, column: 8, scope: !207)
!213 = !DILocalVariable(name: "i", scope: !214, file: !3, line: 144, type: !10)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 143, column: 9)
!215 = distinct !DILexicalBlock(scope: !211, file: !3, line: 142, column: 5)
!216 = !DILocation(line: 144, column: 17, scope: !214)
!217 = !DILocalVariable(name: "buffer", scope: !214, file: !3, line: 145, type: !74)
!218 = !DILocation(line: 145, column: 17, scope: !214)
!219 = !DILocation(line: 147, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !214, file: !3, line: 147, column: 17)
!221 = !DILocation(line: 147, column: 22, scope: !220)
!222 = !DILocation(line: 147, column: 27, scope: !220)
!223 = !DILocation(line: 147, column: 30, scope: !220)
!224 = !DILocation(line: 147, column: 35, scope: !220)
!225 = !DILocation(line: 147, column: 17, scope: !214)
!226 = !DILocation(line: 149, column: 24, scope: !227)
!227 = distinct !DILexicalBlock(scope: !220, file: !3, line: 148, column: 13)
!228 = !DILocation(line: 149, column: 17, scope: !227)
!229 = !DILocation(line: 149, column: 30, scope: !227)
!230 = !DILocation(line: 151, column: 23, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !3, line: 151, column: 17)
!232 = !DILocation(line: 151, column: 21, scope: !231)
!233 = !DILocation(line: 151, column: 28, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !3, line: 151, column: 17)
!235 = !DILocation(line: 151, column: 30, scope: !234)
!236 = !DILocation(line: 151, column: 17, scope: !231)
!237 = !DILocation(line: 153, column: 41, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !3, line: 152, column: 17)
!239 = !DILocation(line: 153, column: 34, scope: !238)
!240 = !DILocation(line: 153, column: 21, scope: !238)
!241 = !DILocation(line: 154, column: 17, scope: !238)
!242 = !DILocation(line: 151, column: 37, scope: !234)
!243 = !DILocation(line: 151, column: 17, scope: !234)
!244 = distinct !{!244, !236, !245, !102}
!245 = !DILocation(line: 154, column: 17, scope: !231)
!246 = !DILocation(line: 155, column: 13, scope: !227)
!247 = !DILocation(line: 158, column: 17, scope: !248)
!248 = distinct !DILexicalBlock(scope: !220, file: !3, line: 157, column: 13)
!249 = !DILocation(line: 161, column: 5, scope: !215)
!250 = !DILocation(line: 162, column: 1, scope: !207)
!251 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 164, type: !109, scopeLine: 165, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!252 = !DILocalVariable(name: "data", scope: !251, file: !3, line: 166, type: !10)
!253 = !DILocation(line: 166, column: 9, scope: !251)
!254 = !DILocation(line: 168, column: 10, scope: !251)
!255 = !DILocalVariable(name: "inputBuffer", scope: !256, file: !3, line: 170, type: !116)
!256 = distinct !DILexicalBlock(scope: !251, file: !3, line: 169, column: 5)
!257 = !DILocation(line: 170, column: 14, scope: !256)
!258 = !DILocation(line: 172, column: 19, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !3, line: 172, column: 13)
!260 = !DILocation(line: 172, column: 49, scope: !259)
!261 = !DILocation(line: 172, column: 13, scope: !259)
!262 = !DILocation(line: 172, column: 56, scope: !259)
!263 = !DILocation(line: 172, column: 13, scope: !256)
!264 = !DILocation(line: 175, column: 25, scope: !265)
!265 = distinct !DILexicalBlock(scope: !259, file: !3, line: 173, column: 9)
!266 = !DILocation(line: 175, column: 20, scope: !265)
!267 = !DILocation(line: 175, column: 18, scope: !265)
!268 = !DILocation(line: 176, column: 9, scope: !265)
!269 = !DILocation(line: 179, column: 13, scope: !270)
!270 = distinct !DILexicalBlock(scope: !259, file: !3, line: 178, column: 9)
!271 = !DILocation(line: 182, column: 20, scope: !251)
!272 = !DILocation(line: 183, column: 18, scope: !251)
!273 = !DILocation(line: 183, column: 5, scope: !251)
!274 = !DILocation(line: 184, column: 1, scope: !251)
!275 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 187, type: !62, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!276 = !DILocalVariable(name: "data", arg: 1, scope: !275, file: !3, line: 187, type: !10)
!277 = !DILocation(line: 187, column: 22, scope: !275)
!278 = !DILocation(line: 189, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !3, line: 189, column: 8)
!280 = !DILocation(line: 189, column: 8, scope: !275)
!281 = !DILocalVariable(name: "i", scope: !282, file: !3, line: 192, type: !10)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 191, column: 9)
!283 = distinct !DILexicalBlock(scope: !279, file: !3, line: 190, column: 5)
!284 = !DILocation(line: 192, column: 17, scope: !282)
!285 = !DILocalVariable(name: "buffer", scope: !282, file: !3, line: 193, type: !74)
!286 = !DILocation(line: 193, column: 17, scope: !282)
!287 = !DILocation(line: 196, column: 17, scope: !288)
!288 = distinct !DILexicalBlock(scope: !282, file: !3, line: 196, column: 17)
!289 = !DILocation(line: 196, column: 22, scope: !288)
!290 = !DILocation(line: 196, column: 17, scope: !282)
!291 = !DILocation(line: 198, column: 24, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !3, line: 197, column: 13)
!293 = !DILocation(line: 198, column: 17, scope: !292)
!294 = !DILocation(line: 198, column: 30, scope: !292)
!295 = !DILocation(line: 200, column: 23, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !3, line: 200, column: 17)
!297 = !DILocation(line: 200, column: 21, scope: !296)
!298 = !DILocation(line: 200, column: 28, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !3, line: 200, column: 17)
!300 = !DILocation(line: 200, column: 30, scope: !299)
!301 = !DILocation(line: 200, column: 17, scope: !296)
!302 = !DILocation(line: 202, column: 41, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !3, line: 201, column: 17)
!304 = !DILocation(line: 202, column: 34, scope: !303)
!305 = !DILocation(line: 202, column: 21, scope: !303)
!306 = !DILocation(line: 203, column: 17, scope: !303)
!307 = !DILocation(line: 200, column: 37, scope: !299)
!308 = !DILocation(line: 200, column: 17, scope: !299)
!309 = distinct !{!309, !301, !310, !102}
!310 = !DILocation(line: 203, column: 17, scope: !296)
!311 = !DILocation(line: 204, column: 13, scope: !292)
!312 = !DILocation(line: 207, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !288, file: !3, line: 206, column: 13)
!314 = !DILocation(line: 210, column: 5, scope: !283)
!315 = !DILocation(line: 211, column: 1, scope: !275)
!316 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 213, type: !109, scopeLine: 214, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!317 = !DILocalVariable(name: "data", scope: !316, file: !3, line: 215, type: !10)
!318 = !DILocation(line: 215, column: 9, scope: !316)
!319 = !DILocation(line: 217, column: 10, scope: !316)
!320 = !DILocation(line: 220, column: 10, scope: !316)
!321 = !DILocation(line: 221, column: 19, scope: !316)
!322 = !DILocation(line: 222, column: 17, scope: !316)
!323 = !DILocation(line: 222, column: 5, scope: !316)
!324 = !DILocation(line: 223, column: 1, scope: !316)
!325 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_good", scope: !3, file: !3, line: 225, type: !109, scopeLine: 226, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!326 = !DILocation(line: 227, column: 5, scope: !325)
!327 = !DILocation(line: 228, column: 5, scope: !325)
!328 = !DILocation(line: 229, column: 5, scope: !325)
!329 = !DILocation(line: 230, column: 1, scope: !325)
!330 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !331, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !55}
!333 = !DILocalVariable(name: "line", arg: 1, scope: !330, file: !18, line: 11, type: !55)
!334 = !DILocation(line: 11, column: 25, scope: !330)
!335 = !DILocation(line: 13, column: 1, scope: !330)
!336 = !DILocation(line: 14, column: 8, scope: !337)
!337 = distinct !DILexicalBlock(scope: !330, file: !18, line: 14, column: 8)
!338 = !DILocation(line: 14, column: 13, scope: !337)
!339 = !DILocation(line: 14, column: 8, scope: !330)
!340 = !DILocation(line: 16, column: 24, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !18, line: 15, column: 5)
!342 = !DILocation(line: 16, column: 9, scope: !341)
!343 = !DILocation(line: 17, column: 5, scope: !341)
!344 = !DILocation(line: 18, column: 5, scope: !330)
!345 = !DILocation(line: 19, column: 1, scope: !330)
!346 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !331, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!347 = !DILocalVariable(name: "line", arg: 1, scope: !346, file: !18, line: 20, type: !55)
!348 = !DILocation(line: 20, column: 29, scope: !346)
!349 = !DILocation(line: 22, column: 8, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !18, line: 22, column: 8)
!351 = !DILocation(line: 22, column: 13, scope: !350)
!352 = !DILocation(line: 22, column: 8, scope: !346)
!353 = !DILocation(line: 24, column: 24, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !18, line: 23, column: 5)
!355 = !DILocation(line: 24, column: 9, scope: !354)
!356 = !DILocation(line: 25, column: 5, scope: !354)
!357 = !DILocation(line: 26, column: 1, scope: !346)
!358 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !359, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !363, line: 74, baseType: !10)
!363 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!364 = !DILocalVariable(name: "line", arg: 1, scope: !358, file: !18, line: 27, type: !361)
!365 = !DILocation(line: 27, column: 29, scope: !358)
!366 = !DILocation(line: 29, column: 8, scope: !367)
!367 = distinct !DILexicalBlock(scope: !358, file: !18, line: 29, column: 8)
!368 = !DILocation(line: 29, column: 13, scope: !367)
!369 = !DILocation(line: 29, column: 8, scope: !358)
!370 = !DILocation(line: 31, column: 27, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !18, line: 30, column: 5)
!372 = !DILocation(line: 31, column: 9, scope: !371)
!373 = !DILocation(line: 32, column: 5, scope: !371)
!374 = !DILocation(line: 33, column: 1, scope: !358)
!375 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !62, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!376 = !DILocalVariable(name: "intNumber", arg: 1, scope: !375, file: !18, line: 35, type: !10)
!377 = !DILocation(line: 35, column: 24, scope: !375)
!378 = !DILocation(line: 37, column: 20, scope: !375)
!379 = !DILocation(line: 37, column: 5, scope: !375)
!380 = !DILocation(line: 38, column: 1, scope: !375)
!381 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !382, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384}
!384 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!385 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !381, file: !18, line: 40, type: !384)
!386 = !DILocation(line: 40, column: 28, scope: !381)
!387 = !DILocation(line: 42, column: 21, scope: !381)
!388 = !DILocation(line: 42, column: 5, scope: !381)
!389 = !DILocation(line: 43, column: 1, scope: !381)
!390 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !391, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!394 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !390, file: !18, line: 45, type: !393)
!395 = !DILocation(line: 45, column: 28, scope: !390)
!396 = !DILocation(line: 47, column: 20, scope: !390)
!397 = !DILocation(line: 47, column: 5, scope: !390)
!398 = !DILocation(line: 48, column: 1, scope: !390)
!399 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !400, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402}
!402 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!403 = !DILocalVariable(name: "longNumber", arg: 1, scope: !399, file: !18, line: 50, type: !402)
!404 = !DILocation(line: 50, column: 26, scope: !399)
!405 = !DILocation(line: 52, column: 21, scope: !399)
!406 = !DILocation(line: 52, column: 5, scope: !399)
!407 = !DILocation(line: 53, column: 1, scope: !399)
!408 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !409, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !412, line: 27, baseType: !413)
!412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !414, line: 44, baseType: !402)
!414 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!415 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !408, file: !18, line: 55, type: !411)
!416 = !DILocation(line: 55, column: 33, scope: !408)
!417 = !DILocation(line: 57, column: 29, scope: !408)
!418 = !DILocation(line: 57, column: 5, scope: !408)
!419 = !DILocation(line: 58, column: 1, scope: !408)
!420 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !421, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !423}
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !363, line: 46, baseType: !424)
!424 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!425 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !420, file: !18, line: 60, type: !423)
!426 = !DILocation(line: 60, column: 29, scope: !420)
!427 = !DILocation(line: 62, column: 21, scope: !420)
!428 = !DILocation(line: 62, column: 5, scope: !420)
!429 = !DILocation(line: 63, column: 1, scope: !420)
!430 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !431, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !56}
!433 = !DILocalVariable(name: "charHex", arg: 1, scope: !430, file: !18, line: 65, type: !56)
!434 = !DILocation(line: 65, column: 29, scope: !430)
!435 = !DILocation(line: 67, column: 22, scope: !430)
!436 = !DILocation(line: 67, column: 5, scope: !430)
!437 = !DILocation(line: 68, column: 1, scope: !430)
!438 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !439, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !362}
!441 = !DILocalVariable(name: "wideChar", arg: 1, scope: !438, file: !18, line: 70, type: !362)
!442 = !DILocation(line: 70, column: 29, scope: !438)
!443 = !DILocalVariable(name: "s", scope: !438, file: !18, line: 74, type: !444)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 64, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 2)
!447 = !DILocation(line: 74, column: 13, scope: !438)
!448 = !DILocation(line: 75, column: 16, scope: !438)
!449 = !DILocation(line: 75, column: 9, scope: !438)
!450 = !DILocation(line: 75, column: 14, scope: !438)
!451 = !DILocation(line: 76, column: 9, scope: !438)
!452 = !DILocation(line: 76, column: 14, scope: !438)
!453 = !DILocation(line: 77, column: 21, scope: !438)
!454 = !DILocation(line: 77, column: 5, scope: !438)
!455 = !DILocation(line: 78, column: 1, scope: !438)
!456 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !457, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !22}
!459 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !456, file: !18, line: 80, type: !22)
!460 = !DILocation(line: 80, column: 33, scope: !456)
!461 = !DILocation(line: 82, column: 20, scope: !456)
!462 = !DILocation(line: 82, column: 5, scope: !456)
!463 = !DILocation(line: 83, column: 1, scope: !456)
!464 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !465, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !38}
!467 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !464, file: !18, line: 85, type: !38)
!468 = !DILocation(line: 85, column: 45, scope: !464)
!469 = !DILocation(line: 87, column: 22, scope: !464)
!470 = !DILocation(line: 87, column: 5, scope: !464)
!471 = !DILocation(line: 88, column: 1, scope: !464)
!472 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !473, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !475}
!475 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!476 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !472, file: !18, line: 90, type: !475)
!477 = !DILocation(line: 90, column: 29, scope: !472)
!478 = !DILocation(line: 92, column: 20, scope: !472)
!479 = !DILocation(line: 92, column: 5, scope: !472)
!480 = !DILocation(line: 93, column: 1, scope: !472)
!481 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !482, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !486, line: 100, baseType: !487)
!486 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_582/source_code")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !486, line: 96, size: 64, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !487, file: !486, line: 98, baseType: !10, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !487, file: !486, line: 99, baseType: !10, size: 32, offset: 32)
!491 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !481, file: !18, line: 95, type: !484)
!492 = !DILocation(line: 95, column: 40, scope: !481)
!493 = !DILocation(line: 97, column: 26, scope: !481)
!494 = !DILocation(line: 97, column: 47, scope: !481)
!495 = !DILocation(line: 97, column: 55, scope: !481)
!496 = !DILocation(line: 97, column: 76, scope: !481)
!497 = !DILocation(line: 97, column: 5, scope: !481)
!498 = !DILocation(line: 98, column: 1, scope: !481)
!499 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !500, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !502, !423}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!503 = !DILocalVariable(name: "bytes", arg: 1, scope: !499, file: !18, line: 100, type: !502)
!504 = !DILocation(line: 100, column: 38, scope: !499)
!505 = !DILocalVariable(name: "numBytes", arg: 2, scope: !499, file: !18, line: 100, type: !423)
!506 = !DILocation(line: 100, column: 52, scope: !499)
!507 = !DILocalVariable(name: "i", scope: !499, file: !18, line: 102, type: !423)
!508 = !DILocation(line: 102, column: 12, scope: !499)
!509 = !DILocation(line: 103, column: 12, scope: !510)
!510 = distinct !DILexicalBlock(scope: !499, file: !18, line: 103, column: 5)
!511 = !DILocation(line: 103, column: 10, scope: !510)
!512 = !DILocation(line: 103, column: 17, scope: !513)
!513 = distinct !DILexicalBlock(scope: !510, file: !18, line: 103, column: 5)
!514 = !DILocation(line: 103, column: 21, scope: !513)
!515 = !DILocation(line: 103, column: 19, scope: !513)
!516 = !DILocation(line: 103, column: 5, scope: !510)
!517 = !DILocation(line: 105, column: 24, scope: !518)
!518 = distinct !DILexicalBlock(scope: !513, file: !18, line: 104, column: 5)
!519 = !DILocation(line: 105, column: 30, scope: !518)
!520 = !DILocation(line: 105, column: 9, scope: !518)
!521 = !DILocation(line: 106, column: 5, scope: !518)
!522 = !DILocation(line: 103, column: 31, scope: !513)
!523 = !DILocation(line: 103, column: 5, scope: !513)
!524 = distinct !{!524, !516, !525, !102}
!525 = !DILocation(line: 106, column: 5, scope: !510)
!526 = !DILocation(line: 107, column: 5, scope: !499)
!527 = !DILocation(line: 108, column: 1, scope: !499)
!528 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !529, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!529 = !DISubroutineType(types: !530)
!530 = !{!423, !502, !423, !55}
!531 = !DILocalVariable(name: "bytes", arg: 1, scope: !528, file: !18, line: 113, type: !502)
!532 = !DILocation(line: 113, column: 39, scope: !528)
!533 = !DILocalVariable(name: "numBytes", arg: 2, scope: !528, file: !18, line: 113, type: !423)
!534 = !DILocation(line: 113, column: 53, scope: !528)
!535 = !DILocalVariable(name: "hex", arg: 3, scope: !528, file: !18, line: 113, type: !55)
!536 = !DILocation(line: 113, column: 71, scope: !528)
!537 = !DILocalVariable(name: "numWritten", scope: !528, file: !18, line: 115, type: !423)
!538 = !DILocation(line: 115, column: 12, scope: !528)
!539 = !DILocation(line: 121, column: 5, scope: !528)
!540 = !DILocation(line: 121, column: 12, scope: !528)
!541 = !DILocation(line: 121, column: 25, scope: !528)
!542 = !DILocation(line: 121, column: 23, scope: !528)
!543 = !DILocation(line: 121, column: 34, scope: !528)
!544 = !DILocation(line: 121, column: 37, scope: !528)
!545 = !DILocation(line: 121, column: 67, scope: !528)
!546 = !DILocation(line: 121, column: 70, scope: !528)
!547 = !DILocation(line: 0, scope: !528)
!548 = !DILocalVariable(name: "byte", scope: !549, file: !18, line: 123, type: !10)
!549 = distinct !DILexicalBlock(scope: !528, file: !18, line: 122, column: 5)
!550 = !DILocation(line: 123, column: 13, scope: !549)
!551 = !DILocation(line: 124, column: 17, scope: !549)
!552 = !DILocation(line: 124, column: 25, scope: !549)
!553 = !DILocation(line: 124, column: 23, scope: !549)
!554 = !DILocation(line: 124, column: 9, scope: !549)
!555 = !DILocation(line: 125, column: 45, scope: !549)
!556 = !DILocation(line: 125, column: 29, scope: !549)
!557 = !DILocation(line: 125, column: 9, scope: !549)
!558 = !DILocation(line: 125, column: 15, scope: !549)
!559 = !DILocation(line: 125, column: 27, scope: !549)
!560 = !DILocation(line: 126, column: 9, scope: !549)
!561 = distinct !{!561, !539, !562, !102}
!562 = !DILocation(line: 127, column: 5, scope: !528)
!563 = !DILocation(line: 129, column: 12, scope: !528)
!564 = !DILocation(line: 129, column: 5, scope: !528)
!565 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !566, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!566 = !DISubroutineType(types: !567)
!567 = !{!423, !502, !423, !361}
!568 = !DILocalVariable(name: "bytes", arg: 1, scope: !565, file: !18, line: 135, type: !502)
!569 = !DILocation(line: 135, column: 41, scope: !565)
!570 = !DILocalVariable(name: "numBytes", arg: 2, scope: !565, file: !18, line: 135, type: !423)
!571 = !DILocation(line: 135, column: 55, scope: !565)
!572 = !DILocalVariable(name: "hex", arg: 3, scope: !565, file: !18, line: 135, type: !361)
!573 = !DILocation(line: 135, column: 76, scope: !565)
!574 = !DILocalVariable(name: "numWritten", scope: !565, file: !18, line: 137, type: !423)
!575 = !DILocation(line: 137, column: 12, scope: !565)
!576 = !DILocation(line: 143, column: 5, scope: !565)
!577 = !DILocation(line: 143, column: 12, scope: !565)
!578 = !DILocation(line: 143, column: 25, scope: !565)
!579 = !DILocation(line: 143, column: 23, scope: !565)
!580 = !DILocation(line: 143, column: 34, scope: !565)
!581 = !DILocation(line: 143, column: 47, scope: !565)
!582 = !DILocation(line: 143, column: 55, scope: !565)
!583 = !DILocation(line: 143, column: 53, scope: !565)
!584 = !DILocation(line: 143, column: 37, scope: !565)
!585 = !DILocation(line: 143, column: 68, scope: !565)
!586 = !DILocation(line: 143, column: 81, scope: !565)
!587 = !DILocation(line: 143, column: 89, scope: !565)
!588 = !DILocation(line: 143, column: 87, scope: !565)
!589 = !DILocation(line: 143, column: 100, scope: !565)
!590 = !DILocation(line: 143, column: 71, scope: !565)
!591 = !DILocation(line: 0, scope: !565)
!592 = !DILocalVariable(name: "byte", scope: !593, file: !18, line: 145, type: !10)
!593 = distinct !DILexicalBlock(scope: !565, file: !18, line: 144, column: 5)
!594 = !DILocation(line: 145, column: 13, scope: !593)
!595 = !DILocation(line: 146, column: 18, scope: !593)
!596 = !DILocation(line: 146, column: 26, scope: !593)
!597 = !DILocation(line: 146, column: 24, scope: !593)
!598 = !DILocation(line: 146, column: 9, scope: !593)
!599 = !DILocation(line: 147, column: 45, scope: !593)
!600 = !DILocation(line: 147, column: 29, scope: !593)
!601 = !DILocation(line: 147, column: 9, scope: !593)
!602 = !DILocation(line: 147, column: 15, scope: !593)
!603 = !DILocation(line: 147, column: 27, scope: !593)
!604 = !DILocation(line: 148, column: 9, scope: !593)
!605 = distinct !{!605, !576, !606, !102}
!606 = !DILocation(line: 149, column: 5, scope: !565)
!607 = !DILocation(line: 151, column: 12, scope: !565)
!608 = !DILocation(line: 151, column: 5, scope: !565)
!609 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !610, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!610 = !DISubroutineType(types: !611)
!611 = !{!10}
!612 = !DILocation(line: 158, column: 5, scope: !609)
!613 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !610, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!614 = !DILocation(line: 163, column: 5, scope: !613)
!615 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !610, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!616 = !DILocation(line: 168, column: 13, scope: !615)
!617 = !DILocation(line: 168, column: 20, scope: !615)
!618 = !DILocation(line: 168, column: 5, scope: !615)
!619 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !109, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!620 = !DILocation(line: 187, column: 16, scope: !619)
!621 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !109, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!622 = !DILocation(line: 188, column: 16, scope: !621)
!623 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !109, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!624 = !DILocation(line: 189, column: 16, scope: !623)
!625 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !109, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!626 = !DILocation(line: 190, column: 16, scope: !625)
!627 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !109, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!628 = !DILocation(line: 191, column: 16, scope: !627)
!629 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !109, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!630 = !DILocation(line: 192, column: 16, scope: !629)
!631 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !109, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!632 = !DILocation(line: 193, column: 16, scope: !631)
!633 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !109, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!634 = !DILocation(line: 194, column: 16, scope: !633)
!635 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !109, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!636 = !DILocation(line: 195, column: 16, scope: !635)
!637 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !109, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!638 = !DILocation(line: 198, column: 15, scope: !637)
!639 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !109, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!640 = !DILocation(line: 199, column: 15, scope: !639)
!641 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !109, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!642 = !DILocation(line: 200, column: 15, scope: !641)
!643 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !109, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!644 = !DILocation(line: 201, column: 15, scope: !643)
!645 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !109, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!646 = !DILocation(line: 202, column: 15, scope: !645)
!647 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !109, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!648 = !DILocation(line: 203, column: 15, scope: !647)
!649 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !109, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!650 = !DILocation(line: 204, column: 15, scope: !649)
!651 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !109, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!652 = !DILocation(line: 205, column: 15, scope: !651)
!653 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !109, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!654 = !DILocation(line: 206, column: 15, scope: !653)
