; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !8
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !11
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !13
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
@.str.12 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.14 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.15 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12.18 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_bad() #0 !dbg !63 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !66, metadata !DIExpression()), !dbg !67
  store i32 -1, i32* %data, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !69, metadata !DIExpression()), !dbg !74
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !74
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !74
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !75
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !77
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !78
  %cmp = icmp ne i8* %call, null, !dbg !79
  br i1 %cmp, label %if.then, label %if.else, !dbg !80

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !81
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !83
  store i32 %call2, i32* %data, align 4, !dbg !84
  br label %if.end, !dbg !85

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !86
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badGlobal, align 4, !dbg !88
  %2 = load i32, i32* %data, align 4, !dbg !89
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badSink(i32 %2), !dbg !90
  ret void, !dbg !91
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !92 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !93, metadata !DIExpression()), !dbg !94
  store i32 -1, i32* %data, align 4, !dbg !95
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !96, metadata !DIExpression()), !dbg !98
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !98
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !99
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !101
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !102
  %cmp = icmp ne i8* %call, null, !dbg !103
  br i1 %cmp, label %if.then, label %if.else, !dbg !104

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !105
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !107
  store i32 %call2, i32* %data, align 4, !dbg !108
  br label %if.end, !dbg !109

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !110
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Global, align 4, !dbg !112
  %2 = load i32, i32* %data, align 4, !dbg !113
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink(i32 %2), !dbg !114
  ret void, !dbg !115
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !116 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !117, metadata !DIExpression()), !dbg !118
  store i32 -1, i32* %data, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !120, metadata !DIExpression()), !dbg !122
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !122
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !122
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !123
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !125
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !126
  %cmp = icmp ne i8* %call, null, !dbg !127
  br i1 %cmp, label %if.then, label %if.else, !dbg !128

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !129
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !131
  store i32 %call2, i32* %data, align 4, !dbg !132
  br label %if.end, !dbg !133

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !134
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global, align 4, !dbg !136
  %2 = load i32, i32* %data, align 4, !dbg !137
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Sink(i32 %2), !dbg !138
  ret void, !dbg !139
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !140 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !141, metadata !DIExpression()), !dbg !142
  store i32 -1, i32* %data, align 4, !dbg !143
  store i32 7, i32* %data, align 4, !dbg !144
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal, align 4, !dbg !145
  %0 = load i32, i32* %data, align 4, !dbg !146
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink(i32 %0), !dbg !147
  ret void, !dbg !148
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_good() #0 !dbg !149 {
entry:
  call void @goodB2G1(), !dbg !150
  call void @goodB2G2(), !dbg !151
  call void @goodG2B(), !dbg !152
  ret void, !dbg !153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badSink(i32 %data) #0 !dbg !154 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badGlobal, align 4, !dbg !159
  %tobool = icmp ne i32 %0, 0, !dbg !159
  br i1 %tobool, label %if.then, label %if.end5, !dbg !161

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !162, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !166, metadata !DIExpression()), !dbg !170
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !170
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !170
  %2 = load i32, i32* %data.addr, align 4, !dbg !171
  %cmp = icmp sge i32 %2, 0, !dbg !173
  br i1 %cmp, label %if.then1, label %if.else, !dbg !174

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !175
  %idxprom = sext i32 %3 to i64, !dbg !177
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !177
  store i32 1, i32* %arrayidx, align 4, !dbg !178
  store i32 0, i32* %i, align 4, !dbg !179
  br label %for.cond, !dbg !181

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !182
  %cmp2 = icmp slt i32 %4, 10, !dbg !184
  br i1 %cmp2, label %for.body, label %for.end, !dbg !185

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !186
  %idxprom3 = sext i32 %5 to i64, !dbg !188
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !188
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !188
  call void @printIntLine(i32 %6), !dbg !189
  br label %for.inc, !dbg !190

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !191
  %inc = add nsw i32 %7, 1, !dbg !191
  store i32 %inc, i32* %i, align 4, !dbg !191
  br label %for.cond, !dbg !192, !llvm.loop !193

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !196

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !197
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !199

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !200
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink(i32 %data) #0 !dbg !201 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !202, metadata !DIExpression()), !dbg !203
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Global, align 4, !dbg !204
  %tobool = icmp ne i32 %0, 0, !dbg !204
  br i1 %tobool, label %if.then, label %if.else, !dbg !206

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !207
  br label %if.end7, !dbg !209

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !210, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !214, metadata !DIExpression()), !dbg !215
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !215
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !215
  %2 = load i32, i32* %data.addr, align 4, !dbg !216
  %cmp = icmp sge i32 %2, 0, !dbg !218
  br i1 %cmp, label %land.lhs.true, label %if.else6, !dbg !219

land.lhs.true:                                    ; preds = %if.else
  %3 = load i32, i32* %data.addr, align 4, !dbg !220
  %cmp1 = icmp slt i32 %3, 10, !dbg !221
  br i1 %cmp1, label %if.then2, label %if.else6, !dbg !222

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !223
  %idxprom = sext i32 %4 to i64, !dbg !225
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !225
  store i32 1, i32* %arrayidx, align 4, !dbg !226
  store i32 0, i32* %i, align 4, !dbg !227
  br label %for.cond, !dbg !229

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !230
  %cmp3 = icmp slt i32 %5, 10, !dbg !232
  br i1 %cmp3, label %for.body, label %for.end, !dbg !233

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !234
  %idxprom4 = sext i32 %6 to i64, !dbg !236
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !236
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !236
  call void @printIntLine(i32 %7), !dbg !237
  br label %for.inc, !dbg !238

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !239
  %inc = add nsw i32 %8, 1, !dbg !239
  store i32 %inc, i32* %i, align 4, !dbg !239
  br label %for.cond, !dbg !240, !llvm.loop !241

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !243

if.else6:                                         ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !244
  br label %if.end

if.end:                                           ; preds = %if.else6, %for.end
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret void, !dbg !246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Sink(i32 %data) #0 !dbg !247 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global, align 4, !dbg !250
  %tobool = icmp ne i32 %0, 0, !dbg !250
  br i1 %tobool, label %if.then, label %if.end6, !dbg !252

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !253, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !257, metadata !DIExpression()), !dbg !258
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !258
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !258
  %2 = load i32, i32* %data.addr, align 4, !dbg !259
  %cmp = icmp sge i32 %2, 0, !dbg !261
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !262

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !263
  %cmp1 = icmp slt i32 %3, 10, !dbg !264
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !265

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !266
  %idxprom = sext i32 %4 to i64, !dbg !268
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !268
  store i32 1, i32* %arrayidx, align 4, !dbg !269
  store i32 0, i32* %i, align 4, !dbg !270
  br label %for.cond, !dbg !272

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !273
  %cmp3 = icmp slt i32 %5, 10, !dbg !275
  br i1 %cmp3, label %for.body, label %for.end, !dbg !276

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !277
  %idxprom4 = sext i32 %6 to i64, !dbg !279
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !279
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !279
  call void @printIntLine(i32 %7), !dbg !280
  br label %for.inc, !dbg !281

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !282
  %inc = add nsw i32 %8, 1, !dbg !282
  store i32 %inc, i32* %i, align 4, !dbg !282
  br label %for.cond, !dbg !283, !llvm.loop !284

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !286

if.else:                                          ; preds = %land.lhs.true, %if.then
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !287
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end6, !dbg !289

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink(i32 %data) #0 !dbg !291 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !292, metadata !DIExpression()), !dbg !293
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal, align 4, !dbg !294
  %tobool = icmp ne i32 %0, 0, !dbg !294
  br i1 %tobool, label %if.then, label %if.end5, !dbg !296

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !297, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !301, metadata !DIExpression()), !dbg !302
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !302
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !302
  %2 = load i32, i32* %data.addr, align 4, !dbg !303
  %cmp = icmp sge i32 %2, 0, !dbg !305
  br i1 %cmp, label %if.then1, label %if.else, !dbg !306

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !307
  %idxprom = sext i32 %3 to i64, !dbg !309
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !309
  store i32 1, i32* %arrayidx, align 4, !dbg !310
  store i32 0, i32* %i, align 4, !dbg !311
  br label %for.cond, !dbg !313

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !314
  %cmp2 = icmp slt i32 %4, 10, !dbg !316
  br i1 %cmp2, label %for.body, label %for.end, !dbg !317

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !318
  %idxprom3 = sext i32 %5 to i64, !dbg !320
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !320
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !320
  call void @printIntLine(i32 %6), !dbg !321
  br label %for.inc, !dbg !322

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !323
  %inc = add nsw i32 %7, 1, !dbg !323
  store i32 %inc, i32* %i, align 4, !dbg !323
  br label %for.cond, !dbg !324, !llvm.loop !325

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !327

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !328
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !330

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !331
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !332 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)), !dbg !337
  %0 = load i8*, i8** %line.addr, align 8, !dbg !338
  %cmp = icmp ne i8* %0, null, !dbg !340
  br i1 %cmp, label %if.then, label %if.end, !dbg !341

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !342
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.13, i64 0, i64 0), i8* %1), !dbg !344
  br label %if.end, !dbg !345

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.14, i64 0, i64 0)), !dbg !346
  ret void, !dbg !347
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !348 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i8*, i8** %line.addr, align 8, !dbg !351
  %cmp = icmp ne i8* %0, null, !dbg !353
  br i1 %cmp, label %if.then, label %if.end, !dbg !354

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.13, i64 0, i64 0), i8* %1), !dbg !357
  br label %if.end, !dbg !358

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !359
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !360 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %0 = load i32*, i32** %line.addr, align 8, !dbg !368
  %cmp = icmp ne i32* %0, null, !dbg !370
  br i1 %cmp, label %if.then, label %if.end, !dbg !371

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !372
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.15, i64 0, i64 0), i32* %1), !dbg !374
  br label %if.end, !dbg !375

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !376
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !377 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !381
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !383 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !389
  %conv = sext i16 %0 to i32, !dbg !389
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !390
  ret void, !dbg !391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !392 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !398
  %conv = fpext float %0 to double, !dbg !398
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !399
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !401 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !405, metadata !DIExpression()), !dbg !406
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !407
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !408
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !410 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !422 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !427, metadata !DIExpression()), !dbg !428
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !429
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !430
  ret void, !dbg !431
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !432 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !437
  %conv = sext i8 %0 to i32, !dbg !437
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !438
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !440 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !445, metadata !DIExpression()), !dbg !449
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !450
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !451
  store i32 %0, i32* %arrayidx, align 4, !dbg !452
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !453
  store i32 0, i32* %arrayidx1, align 4, !dbg !454
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !455
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !456
  ret void, !dbg !457
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !458 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !463
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !464
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !466 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !471
  %conv = zext i8 %0 to i32, !dbg !471
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !472
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !474 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !478, metadata !DIExpression()), !dbg !479
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !480
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.18, i64 0, i64 0), double %0), !dbg !481
  ret void, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !483 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !493, metadata !DIExpression()), !dbg !494
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !495
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !496
  %1 = load i32, i32* %intOne, align 4, !dbg !496
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !497
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !498
  %3 = load i32, i32* %intTwo, align 4, !dbg !498
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !499
  ret void, !dbg !500
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !501 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !505, metadata !DIExpression()), !dbg !506
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !507, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.declare(metadata i64* %i, metadata !509, metadata !DIExpression()), !dbg !510
  store i64 0, i64* %i, align 8, !dbg !511
  br label %for.cond, !dbg !513

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !514
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !516
  %cmp = icmp ult i64 %0, %1, !dbg !517
  br i1 %cmp, label %for.body, label %for.end, !dbg !518

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !519
  %3 = load i64, i64* %i, align 8, !dbg !521
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !519
  %4 = load i8, i8* %arrayidx, align 1, !dbg !519
  %conv = zext i8 %4 to i32, !dbg !519
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !522
  br label %for.inc, !dbg !523

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !524
  %inc = add i64 %5, 1, !dbg !524
  store i64 %inc, i64* %i, align 8, !dbg !524
  br label %for.cond, !dbg !525, !llvm.loop !526

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !528
  ret void, !dbg !529
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !530 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !533, metadata !DIExpression()), !dbg !534
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !535, metadata !DIExpression()), !dbg !536
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !539, metadata !DIExpression()), !dbg !540
  store i64 0, i64* %numWritten, align 8, !dbg !540
  br label %while.cond, !dbg !541

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !542
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !543
  %cmp = icmp ult i64 %0, %1, !dbg !544
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !545

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !546
  %2 = load i16*, i16** %call, align 8, !dbg !546
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !546
  %4 = load i64, i64* %numWritten, align 8, !dbg !546
  %mul = mul i64 2, %4, !dbg !546
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !546
  %5 = load i8, i8* %arrayidx, align 1, !dbg !546
  %conv = sext i8 %5 to i32, !dbg !546
  %idxprom = sext i32 %conv to i64, !dbg !546
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !546
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !546
  %conv2 = zext i16 %6 to i32, !dbg !546
  %and = and i32 %conv2, 4096, !dbg !546
  %tobool = icmp ne i32 %and, 0, !dbg !546
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !547

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !548
  %7 = load i16*, i16** %call3, align 8, !dbg !548
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !548
  %9 = load i64, i64* %numWritten, align 8, !dbg !548
  %mul4 = mul i64 2, %9, !dbg !548
  %add = add i64 %mul4, 1, !dbg !548
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !548
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !548
  %conv6 = sext i8 %10 to i32, !dbg !548
  %idxprom7 = sext i32 %conv6 to i64, !dbg !548
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !548
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !548
  %conv9 = zext i16 %11 to i32, !dbg !548
  %and10 = and i32 %conv9, 4096, !dbg !548
  %tobool11 = icmp ne i32 %and10, 0, !dbg !547
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !549
  br i1 %12, label %while.body, label %while.end, !dbg !541

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !550, metadata !DIExpression()), !dbg !552
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !553
  %14 = load i64, i64* %numWritten, align 8, !dbg !554
  %mul12 = mul i64 2, %14, !dbg !555
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !553
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !556
  %15 = load i32, i32* %byte, align 4, !dbg !557
  %conv15 = trunc i32 %15 to i8, !dbg !558
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !559
  %17 = load i64, i64* %numWritten, align 8, !dbg !560
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !559
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !561
  %18 = load i64, i64* %numWritten, align 8, !dbg !562
  %inc = add i64 %18, 1, !dbg !562
  store i64 %inc, i64* %numWritten, align 8, !dbg !562
  br label %while.cond, !dbg !541, !llvm.loop !563

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !565
  ret i64 %19, !dbg !566
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !567 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !570, metadata !DIExpression()), !dbg !571
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !572, metadata !DIExpression()), !dbg !573
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !576, metadata !DIExpression()), !dbg !577
  store i64 0, i64* %numWritten, align 8, !dbg !577
  br label %while.cond, !dbg !578

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !579
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !580
  %cmp = icmp ult i64 %0, %1, !dbg !581
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !582

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !583
  %3 = load i64, i64* %numWritten, align 8, !dbg !584
  %mul = mul i64 2, %3, !dbg !585
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !583
  %4 = load i32, i32* %arrayidx, align 4, !dbg !583
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !586
  %tobool = icmp ne i32 %call, 0, !dbg !586
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !587

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !588
  %6 = load i64, i64* %numWritten, align 8, !dbg !589
  %mul1 = mul i64 2, %6, !dbg !590
  %add = add i64 %mul1, 1, !dbg !591
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !588
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !588
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !592
  %tobool4 = icmp ne i32 %call3, 0, !dbg !587
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !593
  br i1 %8, label %while.body, label %while.end, !dbg !578

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !594, metadata !DIExpression()), !dbg !596
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !597
  %10 = load i64, i64* %numWritten, align 8, !dbg !598
  %mul5 = mul i64 2, %10, !dbg !599
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !597
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !600
  %11 = load i32, i32* %byte, align 4, !dbg !601
  %conv = trunc i32 %11 to i8, !dbg !602
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !603
  %13 = load i64, i64* %numWritten, align 8, !dbg !604
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !603
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !605
  %14 = load i64, i64* %numWritten, align 8, !dbg !606
  %inc = add i64 %14, 1, !dbg !606
  store i64 %inc, i64* %numWritten, align 8, !dbg !606
  br label %while.cond, !dbg !578, !llvm.loop !607

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !609
  ret i64 %15, !dbg !610
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !611 {
entry:
  ret i32 1, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !615 {
entry:
  ret i32 0, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !617 {
entry:
  %call = call i32 @rand() #9, !dbg !618
  %rem = srem i32 %call, 2, !dbg !619
  ret i32 %rem, !dbg !620
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !633 {
entry:
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !635 {
entry:
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !639 {
entry:
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !641 {
entry:
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !655 {
entry:
  ret void, !dbg !656
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

!llvm.dbg.cu = !{!2, !57, !17}
!llvm.ident = !{!59, !59, !59}
!llvm.module.flags = !{!60, !61, !62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badGlobal", scope: !2, file: !3, line: 26, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_583/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !11, !13}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Global", scope: !2, file: !3, line: 56, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global", scope: !2, file: !3, line: 57, type: !10, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal", scope: !2, file: !3, line: 58, type: !10, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !10, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_583/source_code")
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
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_583/source_code")
!59 = !{!"clang version 12.0.0"}
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_bad", scope: !3, file: !3, line: 29, type: !64, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !DILocalVariable(name: "data", scope: !63, file: !3, line: 31, type: !10)
!67 = !DILocation(line: 31, column: 9, scope: !63)
!68 = !DILocation(line: 33, column: 10, scope: !63)
!69 = !DILocalVariable(name: "inputBuffer", scope: !70, file: !3, line: 35, type: !71)
!70 = distinct !DILexicalBlock(scope: !63, file: !3, line: 34, column: 5)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 112, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 14)
!74 = !DILocation(line: 35, column: 14, scope: !70)
!75 = !DILocation(line: 37, column: 19, scope: !76)
!76 = distinct !DILexicalBlock(scope: !70, file: !3, line: 37, column: 13)
!77 = !DILocation(line: 37, column: 49, scope: !76)
!78 = !DILocation(line: 37, column: 13, scope: !76)
!79 = !DILocation(line: 37, column: 56, scope: !76)
!80 = !DILocation(line: 37, column: 13, scope: !70)
!81 = !DILocation(line: 40, column: 25, scope: !82)
!82 = distinct !DILexicalBlock(scope: !76, file: !3, line: 38, column: 9)
!83 = !DILocation(line: 40, column: 20, scope: !82)
!84 = !DILocation(line: 40, column: 18, scope: !82)
!85 = !DILocation(line: 41, column: 9, scope: !82)
!86 = !DILocation(line: 44, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !76, file: !3, line: 43, column: 9)
!88 = !DILocation(line: 47, column: 67, scope: !63)
!89 = !DILocation(line: 48, column: 65, scope: !63)
!90 = !DILocation(line: 48, column: 5, scope: !63)
!91 = !DILocation(line: 49, column: 1, scope: !63)
!92 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 62, type: !64, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!93 = !DILocalVariable(name: "data", scope: !92, file: !3, line: 64, type: !10)
!94 = !DILocation(line: 64, column: 9, scope: !92)
!95 = !DILocation(line: 66, column: 10, scope: !92)
!96 = !DILocalVariable(name: "inputBuffer", scope: !97, file: !3, line: 68, type: !71)
!97 = distinct !DILexicalBlock(scope: !92, file: !3, line: 67, column: 5)
!98 = !DILocation(line: 68, column: 14, scope: !97)
!99 = !DILocation(line: 70, column: 19, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !3, line: 70, column: 13)
!101 = !DILocation(line: 70, column: 49, scope: !100)
!102 = !DILocation(line: 70, column: 13, scope: !100)
!103 = !DILocation(line: 70, column: 56, scope: !100)
!104 = !DILocation(line: 70, column: 13, scope: !97)
!105 = !DILocation(line: 73, column: 25, scope: !106)
!106 = distinct !DILexicalBlock(scope: !100, file: !3, line: 71, column: 9)
!107 = !DILocation(line: 73, column: 20, scope: !106)
!108 = !DILocation(line: 73, column: 18, scope: !106)
!109 = !DILocation(line: 74, column: 9, scope: !106)
!110 = !DILocation(line: 77, column: 13, scope: !111)
!111 = distinct !DILexicalBlock(scope: !100, file: !3, line: 76, column: 9)
!112 = !DILocation(line: 80, column: 72, scope: !92)
!113 = !DILocation(line: 81, column: 70, scope: !92)
!114 = !DILocation(line: 81, column: 5, scope: !92)
!115 = !DILocation(line: 82, column: 1, scope: !92)
!116 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 86, type: !64, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!117 = !DILocalVariable(name: "data", scope: !116, file: !3, line: 88, type: !10)
!118 = !DILocation(line: 88, column: 9, scope: !116)
!119 = !DILocation(line: 90, column: 10, scope: !116)
!120 = !DILocalVariable(name: "inputBuffer", scope: !121, file: !3, line: 92, type: !71)
!121 = distinct !DILexicalBlock(scope: !116, file: !3, line: 91, column: 5)
!122 = !DILocation(line: 92, column: 14, scope: !121)
!123 = !DILocation(line: 94, column: 19, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !3, line: 94, column: 13)
!125 = !DILocation(line: 94, column: 49, scope: !124)
!126 = !DILocation(line: 94, column: 13, scope: !124)
!127 = !DILocation(line: 94, column: 56, scope: !124)
!128 = !DILocation(line: 94, column: 13, scope: !121)
!129 = !DILocation(line: 97, column: 25, scope: !130)
!130 = distinct !DILexicalBlock(scope: !124, file: !3, line: 95, column: 9)
!131 = !DILocation(line: 97, column: 20, scope: !130)
!132 = !DILocation(line: 97, column: 18, scope: !130)
!133 = !DILocation(line: 98, column: 9, scope: !130)
!134 = !DILocation(line: 101, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !124, file: !3, line: 100, column: 9)
!136 = !DILocation(line: 104, column: 72, scope: !116)
!137 = !DILocation(line: 105, column: 70, scope: !116)
!138 = !DILocation(line: 105, column: 5, scope: !116)
!139 = !DILocation(line: 106, column: 1, scope: !116)
!140 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 110, type: !64, scopeLine: 111, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!141 = !DILocalVariable(name: "data", scope: !140, file: !3, line: 112, type: !10)
!142 = !DILocation(line: 112, column: 9, scope: !140)
!143 = !DILocation(line: 114, column: 10, scope: !140)
!144 = !DILocation(line: 117, column: 10, scope: !140)
!145 = !DILocation(line: 118, column: 71, scope: !140)
!146 = !DILocation(line: 119, column: 69, scope: !140)
!147 = !DILocation(line: 119, column: 5, scope: !140)
!148 = !DILocation(line: 120, column: 1, scope: !140)
!149 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_good", scope: !3, file: !3, line: 122, type: !64, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!150 = !DILocation(line: 124, column: 5, scope: !149)
!151 = !DILocation(line: 125, column: 5, scope: !149)
!152 = !DILocation(line: 126, column: 5, scope: !149)
!153 = !DILocation(line: 127, column: 1, scope: !149)
!154 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badSink", scope: !58, file: !58, line: 25, type: !155, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !10}
!157 = !DILocalVariable(name: "data", arg: 1, scope: !154, file: !58, line: 25, type: !10)
!158 = !DILocation(line: 25, column: 70, scope: !154)
!159 = !DILocation(line: 27, column: 8, scope: !160)
!160 = distinct !DILexicalBlock(scope: !154, file: !58, line: 27, column: 8)
!161 = !DILocation(line: 27, column: 8, scope: !154)
!162 = !DILocalVariable(name: "i", scope: !163, file: !58, line: 30, type: !10)
!163 = distinct !DILexicalBlock(scope: !164, file: !58, line: 29, column: 9)
!164 = distinct !DILexicalBlock(scope: !160, file: !58, line: 28, column: 5)
!165 = !DILocation(line: 30, column: 17, scope: !163)
!166 = !DILocalVariable(name: "buffer", scope: !163, file: !58, line: 31, type: !167)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 10)
!170 = !DILocation(line: 31, column: 17, scope: !163)
!171 = !DILocation(line: 34, column: 17, scope: !172)
!172 = distinct !DILexicalBlock(scope: !163, file: !58, line: 34, column: 17)
!173 = !DILocation(line: 34, column: 22, scope: !172)
!174 = !DILocation(line: 34, column: 17, scope: !163)
!175 = !DILocation(line: 36, column: 24, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !58, line: 35, column: 13)
!177 = !DILocation(line: 36, column: 17, scope: !176)
!178 = !DILocation(line: 36, column: 30, scope: !176)
!179 = !DILocation(line: 38, column: 23, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !58, line: 38, column: 17)
!181 = !DILocation(line: 38, column: 21, scope: !180)
!182 = !DILocation(line: 38, column: 28, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !58, line: 38, column: 17)
!184 = !DILocation(line: 38, column: 30, scope: !183)
!185 = !DILocation(line: 38, column: 17, scope: !180)
!186 = !DILocation(line: 40, column: 41, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !58, line: 39, column: 17)
!188 = !DILocation(line: 40, column: 34, scope: !187)
!189 = !DILocation(line: 40, column: 21, scope: !187)
!190 = !DILocation(line: 41, column: 17, scope: !187)
!191 = !DILocation(line: 38, column: 37, scope: !183)
!192 = !DILocation(line: 38, column: 17, scope: !183)
!193 = distinct !{!193, !185, !194, !195}
!194 = !DILocation(line: 41, column: 17, scope: !180)
!195 = !{!"llvm.loop.mustprogress"}
!196 = !DILocation(line: 42, column: 13, scope: !176)
!197 = !DILocation(line: 45, column: 17, scope: !198)
!198 = distinct !DILexicalBlock(scope: !172, file: !58, line: 44, column: 13)
!199 = !DILocation(line: 48, column: 5, scope: !164)
!200 = !DILocation(line: 49, column: 1, scope: !154)
!201 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink", scope: !58, file: !58, line: 61, type: !155, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!202 = !DILocalVariable(name: "data", arg: 1, scope: !201, file: !58, line: 61, type: !10)
!203 = !DILocation(line: 61, column: 75, scope: !201)
!204 = !DILocation(line: 63, column: 8, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !58, line: 63, column: 8)
!206 = !DILocation(line: 63, column: 8, scope: !201)
!207 = !DILocation(line: 66, column: 9, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !58, line: 64, column: 5)
!209 = !DILocation(line: 67, column: 5, scope: !208)
!210 = !DILocalVariable(name: "i", scope: !211, file: !58, line: 71, type: !10)
!211 = distinct !DILexicalBlock(scope: !212, file: !58, line: 70, column: 9)
!212 = distinct !DILexicalBlock(scope: !205, file: !58, line: 69, column: 5)
!213 = !DILocation(line: 71, column: 17, scope: !211)
!214 = !DILocalVariable(name: "buffer", scope: !211, file: !58, line: 72, type: !167)
!215 = !DILocation(line: 72, column: 17, scope: !211)
!216 = !DILocation(line: 74, column: 17, scope: !217)
!217 = distinct !DILexicalBlock(scope: !211, file: !58, line: 74, column: 17)
!218 = !DILocation(line: 74, column: 22, scope: !217)
!219 = !DILocation(line: 74, column: 27, scope: !217)
!220 = !DILocation(line: 74, column: 30, scope: !217)
!221 = !DILocation(line: 74, column: 35, scope: !217)
!222 = !DILocation(line: 74, column: 17, scope: !211)
!223 = !DILocation(line: 76, column: 24, scope: !224)
!224 = distinct !DILexicalBlock(scope: !217, file: !58, line: 75, column: 13)
!225 = !DILocation(line: 76, column: 17, scope: !224)
!226 = !DILocation(line: 76, column: 30, scope: !224)
!227 = !DILocation(line: 78, column: 23, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !58, line: 78, column: 17)
!229 = !DILocation(line: 78, column: 21, scope: !228)
!230 = !DILocation(line: 78, column: 28, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !58, line: 78, column: 17)
!232 = !DILocation(line: 78, column: 30, scope: !231)
!233 = !DILocation(line: 78, column: 17, scope: !228)
!234 = !DILocation(line: 80, column: 41, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !58, line: 79, column: 17)
!236 = !DILocation(line: 80, column: 34, scope: !235)
!237 = !DILocation(line: 80, column: 21, scope: !235)
!238 = !DILocation(line: 81, column: 17, scope: !235)
!239 = !DILocation(line: 78, column: 37, scope: !231)
!240 = !DILocation(line: 78, column: 17, scope: !231)
!241 = distinct !{!241, !233, !242, !195}
!242 = !DILocation(line: 81, column: 17, scope: !228)
!243 = !DILocation(line: 82, column: 13, scope: !224)
!244 = !DILocation(line: 85, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !217, file: !58, line: 84, column: 13)
!246 = !DILocation(line: 89, column: 1, scope: !201)
!247 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Sink", scope: !58, file: !58, line: 92, type: !155, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!248 = !DILocalVariable(name: "data", arg: 1, scope: !247, file: !58, line: 92, type: !10)
!249 = !DILocation(line: 92, column: 75, scope: !247)
!250 = !DILocation(line: 94, column: 8, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !58, line: 94, column: 8)
!252 = !DILocation(line: 94, column: 8, scope: !247)
!253 = !DILocalVariable(name: "i", scope: !254, file: !58, line: 97, type: !10)
!254 = distinct !DILexicalBlock(scope: !255, file: !58, line: 96, column: 9)
!255 = distinct !DILexicalBlock(scope: !251, file: !58, line: 95, column: 5)
!256 = !DILocation(line: 97, column: 17, scope: !254)
!257 = !DILocalVariable(name: "buffer", scope: !254, file: !58, line: 98, type: !167)
!258 = !DILocation(line: 98, column: 17, scope: !254)
!259 = !DILocation(line: 100, column: 17, scope: !260)
!260 = distinct !DILexicalBlock(scope: !254, file: !58, line: 100, column: 17)
!261 = !DILocation(line: 100, column: 22, scope: !260)
!262 = !DILocation(line: 100, column: 27, scope: !260)
!263 = !DILocation(line: 100, column: 30, scope: !260)
!264 = !DILocation(line: 100, column: 35, scope: !260)
!265 = !DILocation(line: 100, column: 17, scope: !254)
!266 = !DILocation(line: 102, column: 24, scope: !267)
!267 = distinct !DILexicalBlock(scope: !260, file: !58, line: 101, column: 13)
!268 = !DILocation(line: 102, column: 17, scope: !267)
!269 = !DILocation(line: 102, column: 30, scope: !267)
!270 = !DILocation(line: 104, column: 23, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !58, line: 104, column: 17)
!272 = !DILocation(line: 104, column: 21, scope: !271)
!273 = !DILocation(line: 104, column: 28, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !58, line: 104, column: 17)
!275 = !DILocation(line: 104, column: 30, scope: !274)
!276 = !DILocation(line: 104, column: 17, scope: !271)
!277 = !DILocation(line: 106, column: 41, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !58, line: 105, column: 17)
!279 = !DILocation(line: 106, column: 34, scope: !278)
!280 = !DILocation(line: 106, column: 21, scope: !278)
!281 = !DILocation(line: 107, column: 17, scope: !278)
!282 = !DILocation(line: 104, column: 37, scope: !274)
!283 = !DILocation(line: 104, column: 17, scope: !274)
!284 = distinct !{!284, !276, !285, !195}
!285 = !DILocation(line: 107, column: 17, scope: !271)
!286 = !DILocation(line: 108, column: 13, scope: !267)
!287 = !DILocation(line: 111, column: 17, scope: !288)
!288 = distinct !DILexicalBlock(scope: !260, file: !58, line: 110, column: 13)
!289 = !DILocation(line: 114, column: 5, scope: !255)
!290 = !DILocation(line: 115, column: 1, scope: !247)
!291 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink", scope: !58, file: !58, line: 118, type: !155, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!292 = !DILocalVariable(name: "data", arg: 1, scope: !291, file: !58, line: 118, type: !10)
!293 = !DILocation(line: 118, column: 74, scope: !291)
!294 = !DILocation(line: 120, column: 8, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !58, line: 120, column: 8)
!296 = !DILocation(line: 120, column: 8, scope: !291)
!297 = !DILocalVariable(name: "i", scope: !298, file: !58, line: 123, type: !10)
!298 = distinct !DILexicalBlock(scope: !299, file: !58, line: 122, column: 9)
!299 = distinct !DILexicalBlock(scope: !295, file: !58, line: 121, column: 5)
!300 = !DILocation(line: 123, column: 17, scope: !298)
!301 = !DILocalVariable(name: "buffer", scope: !298, file: !58, line: 124, type: !167)
!302 = !DILocation(line: 124, column: 17, scope: !298)
!303 = !DILocation(line: 127, column: 17, scope: !304)
!304 = distinct !DILexicalBlock(scope: !298, file: !58, line: 127, column: 17)
!305 = !DILocation(line: 127, column: 22, scope: !304)
!306 = !DILocation(line: 127, column: 17, scope: !298)
!307 = !DILocation(line: 129, column: 24, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !58, line: 128, column: 13)
!309 = !DILocation(line: 129, column: 17, scope: !308)
!310 = !DILocation(line: 129, column: 30, scope: !308)
!311 = !DILocation(line: 131, column: 23, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !58, line: 131, column: 17)
!313 = !DILocation(line: 131, column: 21, scope: !312)
!314 = !DILocation(line: 131, column: 28, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !58, line: 131, column: 17)
!316 = !DILocation(line: 131, column: 30, scope: !315)
!317 = !DILocation(line: 131, column: 17, scope: !312)
!318 = !DILocation(line: 133, column: 41, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !58, line: 132, column: 17)
!320 = !DILocation(line: 133, column: 34, scope: !319)
!321 = !DILocation(line: 133, column: 21, scope: !319)
!322 = !DILocation(line: 134, column: 17, scope: !319)
!323 = !DILocation(line: 131, column: 37, scope: !315)
!324 = !DILocation(line: 131, column: 17, scope: !315)
!325 = distinct !{!325, !317, !326, !195}
!326 = !DILocation(line: 134, column: 17, scope: !312)
!327 = !DILocation(line: 135, column: 13, scope: !308)
!328 = !DILocation(line: 138, column: 17, scope: !329)
!329 = distinct !DILexicalBlock(scope: !304, file: !58, line: 137, column: 13)
!330 = !DILocation(line: 141, column: 5, scope: !299)
!331 = !DILocation(line: 142, column: 1, scope: !291)
!332 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !333, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !55}
!335 = !DILocalVariable(name: "line", arg: 1, scope: !332, file: !18, line: 11, type: !55)
!336 = !DILocation(line: 11, column: 25, scope: !332)
!337 = !DILocation(line: 13, column: 1, scope: !332)
!338 = !DILocation(line: 14, column: 8, scope: !339)
!339 = distinct !DILexicalBlock(scope: !332, file: !18, line: 14, column: 8)
!340 = !DILocation(line: 14, column: 13, scope: !339)
!341 = !DILocation(line: 14, column: 8, scope: !332)
!342 = !DILocation(line: 16, column: 24, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !18, line: 15, column: 5)
!344 = !DILocation(line: 16, column: 9, scope: !343)
!345 = !DILocation(line: 17, column: 5, scope: !343)
!346 = !DILocation(line: 18, column: 5, scope: !332)
!347 = !DILocation(line: 19, column: 1, scope: !332)
!348 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !333, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!349 = !DILocalVariable(name: "line", arg: 1, scope: !348, file: !18, line: 20, type: !55)
!350 = !DILocation(line: 20, column: 29, scope: !348)
!351 = !DILocation(line: 22, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !18, line: 22, column: 8)
!353 = !DILocation(line: 22, column: 13, scope: !352)
!354 = !DILocation(line: 22, column: 8, scope: !348)
!355 = !DILocation(line: 24, column: 24, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !18, line: 23, column: 5)
!357 = !DILocation(line: 24, column: 9, scope: !356)
!358 = !DILocation(line: 25, column: 5, scope: !356)
!359 = !DILocation(line: 26, column: 1, scope: !348)
!360 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !361, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !365, line: 74, baseType: !10)
!365 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!366 = !DILocalVariable(name: "line", arg: 1, scope: !360, file: !18, line: 27, type: !363)
!367 = !DILocation(line: 27, column: 29, scope: !360)
!368 = !DILocation(line: 29, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !360, file: !18, line: 29, column: 8)
!370 = !DILocation(line: 29, column: 13, scope: !369)
!371 = !DILocation(line: 29, column: 8, scope: !360)
!372 = !DILocation(line: 31, column: 27, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !18, line: 30, column: 5)
!374 = !DILocation(line: 31, column: 9, scope: !373)
!375 = !DILocation(line: 32, column: 5, scope: !373)
!376 = !DILocation(line: 33, column: 1, scope: !360)
!377 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !155, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!378 = !DILocalVariable(name: "intNumber", arg: 1, scope: !377, file: !18, line: 35, type: !10)
!379 = !DILocation(line: 35, column: 24, scope: !377)
!380 = !DILocation(line: 37, column: 20, scope: !377)
!381 = !DILocation(line: 37, column: 5, scope: !377)
!382 = !DILocation(line: 38, column: 1, scope: !377)
!383 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !384, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386}
!386 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!387 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !383, file: !18, line: 40, type: !386)
!388 = !DILocation(line: 40, column: 28, scope: !383)
!389 = !DILocation(line: 42, column: 21, scope: !383)
!390 = !DILocation(line: 42, column: 5, scope: !383)
!391 = !DILocation(line: 43, column: 1, scope: !383)
!392 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !393, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !395}
!395 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!396 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !392, file: !18, line: 45, type: !395)
!397 = !DILocation(line: 45, column: 28, scope: !392)
!398 = !DILocation(line: 47, column: 20, scope: !392)
!399 = !DILocation(line: 47, column: 5, scope: !392)
!400 = !DILocation(line: 48, column: 1, scope: !392)
!401 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !402, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !404}
!404 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!405 = !DILocalVariable(name: "longNumber", arg: 1, scope: !401, file: !18, line: 50, type: !404)
!406 = !DILocation(line: 50, column: 26, scope: !401)
!407 = !DILocation(line: 52, column: 21, scope: !401)
!408 = !DILocation(line: 52, column: 5, scope: !401)
!409 = !DILocation(line: 53, column: 1, scope: !401)
!410 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !411, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413}
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !414, line: 27, baseType: !415)
!414 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !416, line: 44, baseType: !404)
!416 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!417 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !410, file: !18, line: 55, type: !413)
!418 = !DILocation(line: 55, column: 33, scope: !410)
!419 = !DILocation(line: 57, column: 29, scope: !410)
!420 = !DILocation(line: 57, column: 5, scope: !410)
!421 = !DILocation(line: 58, column: 1, scope: !410)
!422 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !423, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !425}
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !365, line: 46, baseType: !426)
!426 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!427 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !422, file: !18, line: 60, type: !425)
!428 = !DILocation(line: 60, column: 29, scope: !422)
!429 = !DILocation(line: 62, column: 21, scope: !422)
!430 = !DILocation(line: 62, column: 5, scope: !422)
!431 = !DILocation(line: 63, column: 1, scope: !422)
!432 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !433, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !56}
!435 = !DILocalVariable(name: "charHex", arg: 1, scope: !432, file: !18, line: 65, type: !56)
!436 = !DILocation(line: 65, column: 29, scope: !432)
!437 = !DILocation(line: 67, column: 22, scope: !432)
!438 = !DILocation(line: 67, column: 5, scope: !432)
!439 = !DILocation(line: 68, column: 1, scope: !432)
!440 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !441, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !364}
!443 = !DILocalVariable(name: "wideChar", arg: 1, scope: !440, file: !18, line: 70, type: !364)
!444 = !DILocation(line: 70, column: 29, scope: !440)
!445 = !DILocalVariable(name: "s", scope: !440, file: !18, line: 74, type: !446)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 64, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 2)
!449 = !DILocation(line: 74, column: 13, scope: !440)
!450 = !DILocation(line: 75, column: 16, scope: !440)
!451 = !DILocation(line: 75, column: 9, scope: !440)
!452 = !DILocation(line: 75, column: 14, scope: !440)
!453 = !DILocation(line: 76, column: 9, scope: !440)
!454 = !DILocation(line: 76, column: 14, scope: !440)
!455 = !DILocation(line: 77, column: 21, scope: !440)
!456 = !DILocation(line: 77, column: 5, scope: !440)
!457 = !DILocation(line: 78, column: 1, scope: !440)
!458 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !459, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !22}
!461 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !458, file: !18, line: 80, type: !22)
!462 = !DILocation(line: 80, column: 33, scope: !458)
!463 = !DILocation(line: 82, column: 20, scope: !458)
!464 = !DILocation(line: 82, column: 5, scope: !458)
!465 = !DILocation(line: 83, column: 1, scope: !458)
!466 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !467, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !38}
!469 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !466, file: !18, line: 85, type: !38)
!470 = !DILocation(line: 85, column: 45, scope: !466)
!471 = !DILocation(line: 87, column: 22, scope: !466)
!472 = !DILocation(line: 87, column: 5, scope: !466)
!473 = !DILocation(line: 88, column: 1, scope: !466)
!474 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !475, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !477}
!477 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!478 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !474, file: !18, line: 90, type: !477)
!479 = !DILocation(line: 90, column: 29, scope: !474)
!480 = !DILocation(line: 92, column: 20, scope: !474)
!481 = !DILocation(line: 92, column: 5, scope: !474)
!482 = !DILocation(line: 93, column: 1, scope: !474)
!483 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !484, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !486}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !488, line: 100, baseType: !489)
!488 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_583/source_code")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !488, line: 96, size: 64, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !489, file: !488, line: 98, baseType: !10, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !489, file: !488, line: 99, baseType: !10, size: 32, offset: 32)
!493 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !483, file: !18, line: 95, type: !486)
!494 = !DILocation(line: 95, column: 40, scope: !483)
!495 = !DILocation(line: 97, column: 26, scope: !483)
!496 = !DILocation(line: 97, column: 47, scope: !483)
!497 = !DILocation(line: 97, column: 55, scope: !483)
!498 = !DILocation(line: 97, column: 76, scope: !483)
!499 = !DILocation(line: 97, column: 5, scope: !483)
!500 = !DILocation(line: 98, column: 1, scope: !483)
!501 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !502, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !504, !425}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!505 = !DILocalVariable(name: "bytes", arg: 1, scope: !501, file: !18, line: 100, type: !504)
!506 = !DILocation(line: 100, column: 38, scope: !501)
!507 = !DILocalVariable(name: "numBytes", arg: 2, scope: !501, file: !18, line: 100, type: !425)
!508 = !DILocation(line: 100, column: 52, scope: !501)
!509 = !DILocalVariable(name: "i", scope: !501, file: !18, line: 102, type: !425)
!510 = !DILocation(line: 102, column: 12, scope: !501)
!511 = !DILocation(line: 103, column: 12, scope: !512)
!512 = distinct !DILexicalBlock(scope: !501, file: !18, line: 103, column: 5)
!513 = !DILocation(line: 103, column: 10, scope: !512)
!514 = !DILocation(line: 103, column: 17, scope: !515)
!515 = distinct !DILexicalBlock(scope: !512, file: !18, line: 103, column: 5)
!516 = !DILocation(line: 103, column: 21, scope: !515)
!517 = !DILocation(line: 103, column: 19, scope: !515)
!518 = !DILocation(line: 103, column: 5, scope: !512)
!519 = !DILocation(line: 105, column: 24, scope: !520)
!520 = distinct !DILexicalBlock(scope: !515, file: !18, line: 104, column: 5)
!521 = !DILocation(line: 105, column: 30, scope: !520)
!522 = !DILocation(line: 105, column: 9, scope: !520)
!523 = !DILocation(line: 106, column: 5, scope: !520)
!524 = !DILocation(line: 103, column: 31, scope: !515)
!525 = !DILocation(line: 103, column: 5, scope: !515)
!526 = distinct !{!526, !518, !527, !195}
!527 = !DILocation(line: 106, column: 5, scope: !512)
!528 = !DILocation(line: 107, column: 5, scope: !501)
!529 = !DILocation(line: 108, column: 1, scope: !501)
!530 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !531, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!531 = !DISubroutineType(types: !532)
!532 = !{!425, !504, !425, !55}
!533 = !DILocalVariable(name: "bytes", arg: 1, scope: !530, file: !18, line: 113, type: !504)
!534 = !DILocation(line: 113, column: 39, scope: !530)
!535 = !DILocalVariable(name: "numBytes", arg: 2, scope: !530, file: !18, line: 113, type: !425)
!536 = !DILocation(line: 113, column: 53, scope: !530)
!537 = !DILocalVariable(name: "hex", arg: 3, scope: !530, file: !18, line: 113, type: !55)
!538 = !DILocation(line: 113, column: 71, scope: !530)
!539 = !DILocalVariable(name: "numWritten", scope: !530, file: !18, line: 115, type: !425)
!540 = !DILocation(line: 115, column: 12, scope: !530)
!541 = !DILocation(line: 121, column: 5, scope: !530)
!542 = !DILocation(line: 121, column: 12, scope: !530)
!543 = !DILocation(line: 121, column: 25, scope: !530)
!544 = !DILocation(line: 121, column: 23, scope: !530)
!545 = !DILocation(line: 121, column: 34, scope: !530)
!546 = !DILocation(line: 121, column: 37, scope: !530)
!547 = !DILocation(line: 121, column: 67, scope: !530)
!548 = !DILocation(line: 121, column: 70, scope: !530)
!549 = !DILocation(line: 0, scope: !530)
!550 = !DILocalVariable(name: "byte", scope: !551, file: !18, line: 123, type: !10)
!551 = distinct !DILexicalBlock(scope: !530, file: !18, line: 122, column: 5)
!552 = !DILocation(line: 123, column: 13, scope: !551)
!553 = !DILocation(line: 124, column: 17, scope: !551)
!554 = !DILocation(line: 124, column: 25, scope: !551)
!555 = !DILocation(line: 124, column: 23, scope: !551)
!556 = !DILocation(line: 124, column: 9, scope: !551)
!557 = !DILocation(line: 125, column: 45, scope: !551)
!558 = !DILocation(line: 125, column: 29, scope: !551)
!559 = !DILocation(line: 125, column: 9, scope: !551)
!560 = !DILocation(line: 125, column: 15, scope: !551)
!561 = !DILocation(line: 125, column: 27, scope: !551)
!562 = !DILocation(line: 126, column: 9, scope: !551)
!563 = distinct !{!563, !541, !564, !195}
!564 = !DILocation(line: 127, column: 5, scope: !530)
!565 = !DILocation(line: 129, column: 12, scope: !530)
!566 = !DILocation(line: 129, column: 5, scope: !530)
!567 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !568, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!568 = !DISubroutineType(types: !569)
!569 = !{!425, !504, !425, !363}
!570 = !DILocalVariable(name: "bytes", arg: 1, scope: !567, file: !18, line: 135, type: !504)
!571 = !DILocation(line: 135, column: 41, scope: !567)
!572 = !DILocalVariable(name: "numBytes", arg: 2, scope: !567, file: !18, line: 135, type: !425)
!573 = !DILocation(line: 135, column: 55, scope: !567)
!574 = !DILocalVariable(name: "hex", arg: 3, scope: !567, file: !18, line: 135, type: !363)
!575 = !DILocation(line: 135, column: 76, scope: !567)
!576 = !DILocalVariable(name: "numWritten", scope: !567, file: !18, line: 137, type: !425)
!577 = !DILocation(line: 137, column: 12, scope: !567)
!578 = !DILocation(line: 143, column: 5, scope: !567)
!579 = !DILocation(line: 143, column: 12, scope: !567)
!580 = !DILocation(line: 143, column: 25, scope: !567)
!581 = !DILocation(line: 143, column: 23, scope: !567)
!582 = !DILocation(line: 143, column: 34, scope: !567)
!583 = !DILocation(line: 143, column: 47, scope: !567)
!584 = !DILocation(line: 143, column: 55, scope: !567)
!585 = !DILocation(line: 143, column: 53, scope: !567)
!586 = !DILocation(line: 143, column: 37, scope: !567)
!587 = !DILocation(line: 143, column: 68, scope: !567)
!588 = !DILocation(line: 143, column: 81, scope: !567)
!589 = !DILocation(line: 143, column: 89, scope: !567)
!590 = !DILocation(line: 143, column: 87, scope: !567)
!591 = !DILocation(line: 143, column: 100, scope: !567)
!592 = !DILocation(line: 143, column: 71, scope: !567)
!593 = !DILocation(line: 0, scope: !567)
!594 = !DILocalVariable(name: "byte", scope: !595, file: !18, line: 145, type: !10)
!595 = distinct !DILexicalBlock(scope: !567, file: !18, line: 144, column: 5)
!596 = !DILocation(line: 145, column: 13, scope: !595)
!597 = !DILocation(line: 146, column: 18, scope: !595)
!598 = !DILocation(line: 146, column: 26, scope: !595)
!599 = !DILocation(line: 146, column: 24, scope: !595)
!600 = !DILocation(line: 146, column: 9, scope: !595)
!601 = !DILocation(line: 147, column: 45, scope: !595)
!602 = !DILocation(line: 147, column: 29, scope: !595)
!603 = !DILocation(line: 147, column: 9, scope: !595)
!604 = !DILocation(line: 147, column: 15, scope: !595)
!605 = !DILocation(line: 147, column: 27, scope: !595)
!606 = !DILocation(line: 148, column: 9, scope: !595)
!607 = distinct !{!607, !578, !608, !195}
!608 = !DILocation(line: 149, column: 5, scope: !567)
!609 = !DILocation(line: 151, column: 12, scope: !567)
!610 = !DILocation(line: 151, column: 5, scope: !567)
!611 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !612, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!612 = !DISubroutineType(types: !613)
!613 = !{!10}
!614 = !DILocation(line: 158, column: 5, scope: !611)
!615 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !612, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!616 = !DILocation(line: 163, column: 5, scope: !615)
!617 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !612, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!618 = !DILocation(line: 168, column: 13, scope: !617)
!619 = !DILocation(line: 168, column: 20, scope: !617)
!620 = !DILocation(line: 168, column: 5, scope: !617)
!621 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !64, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!622 = !DILocation(line: 187, column: 16, scope: !621)
!623 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !64, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!624 = !DILocation(line: 188, column: 16, scope: !623)
!625 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !64, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!626 = !DILocation(line: 189, column: 16, scope: !625)
!627 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !64, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!628 = !DILocation(line: 190, column: 16, scope: !627)
!629 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !64, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!630 = !DILocation(line: 191, column: 16, scope: !629)
!631 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !64, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!632 = !DILocation(line: 192, column: 16, scope: !631)
!633 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !64, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!634 = !DILocation(line: 193, column: 16, scope: !633)
!635 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !64, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!636 = !DILocation(line: 194, column: 16, scope: !635)
!637 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !64, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!638 = !DILocation(line: 195, column: 16, scope: !637)
!639 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !64, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!640 = !DILocation(line: 198, column: 15, scope: !639)
!641 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !64, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!642 = !DILocation(line: 199, column: 15, scope: !641)
!643 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !64, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!644 = !DILocation(line: 200, column: 15, scope: !643)
!645 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !64, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!646 = !DILocation(line: 201, column: 15, scope: !645)
!647 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !64, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!648 = !DILocation(line: 202, column: 15, scope: !647)
!649 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !64, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!650 = !DILocation(line: 203, column: 15, scope: !649)
!651 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !64, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!652 = !DILocation(line: 204, column: 15, scope: !651)
!653 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !64, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!654 = !DILocation(line: 205, column: 15, scope: !653)
!655 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !64, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!656 = !DILocation(line: 206, column: 15, scope: !655)
