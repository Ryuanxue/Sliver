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
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_02_bad() #0 !dbg !52 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 -1, i32* %data, align 4, !dbg !57
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !58, metadata !DIExpression()), !dbg !65
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !66
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !68
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !69
  %cmp = icmp ne i8* %call, null, !dbg !70
  br i1 %cmp, label %if.then, label %if.else, !dbg !71

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !72
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !74
  store i32 %call2, i32* %data, align 4, !dbg !75
  br label %if.end, !dbg !76

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !77
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !79, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !84, metadata !DIExpression()), !dbg !88
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !88
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !88
  %3 = load i32, i32* %data, align 4, !dbg !89
  %cmp3 = icmp sge i32 %3, 0, !dbg !91
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !92

if.then4:                                         ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !93
  %idxprom = sext i32 %4 to i64, !dbg !95
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !95
  store i32 1, i32* %arrayidx, align 4, !dbg !96
  store i32 0, i32* %i, align 4, !dbg !97
  br label %for.cond, !dbg !99

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !100
  %cmp5 = icmp slt i32 %5, 10, !dbg !102
  br i1 %cmp5, label %for.body, label %for.end, !dbg !103

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !104
  %idxprom6 = sext i32 %6 to i64, !dbg !106
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !106
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !106
  call void @printIntLine(i32 %7), !dbg !107
  br label %for.inc, !dbg !108

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !109
  %inc = add nsw i32 %8, 1, !dbg !109
  store i32 %inc, i32* %i, align 4, !dbg !109
  br label %for.cond, !dbg !110, !llvm.loop !111

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !114

if.else8:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !115
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  ret void, !dbg !117
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !118 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !119, metadata !DIExpression()), !dbg !120
  store i32 -1, i32* %data, align 4, !dbg !121
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !122, metadata !DIExpression()), !dbg !126
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !126
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !126
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !127
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !129
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !130
  %cmp = icmp ne i8* %call, null, !dbg !131
  br i1 %cmp, label %if.then, label %if.else, !dbg !132

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !133
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !135
  store i32 %call2, i32* %data, align 4, !dbg !136
  br label %if.end, !dbg !137

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !138
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !140, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !145, metadata !DIExpression()), !dbg !146
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !146
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !146
  %3 = load i32, i32* %data, align 4, !dbg !147
  %cmp3 = icmp sge i32 %3, 0, !dbg !149
  br i1 %cmp3, label %land.lhs.true, label %if.else9, !dbg !150

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !151
  %cmp4 = icmp slt i32 %4, 10, !dbg !152
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !153

if.then5:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !154
  %idxprom = sext i32 %5 to i64, !dbg !156
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !156
  store i32 1, i32* %arrayidx, align 4, !dbg !157
  store i32 0, i32* %i, align 4, !dbg !158
  br label %for.cond, !dbg !160

for.cond:                                         ; preds = %for.inc, %if.then5
  %6 = load i32, i32* %i, align 4, !dbg !161
  %cmp6 = icmp slt i32 %6, 10, !dbg !163
  br i1 %cmp6, label %for.body, label %for.end, !dbg !164

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !165
  %idxprom7 = sext i32 %7 to i64, !dbg !167
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !167
  %8 = load i32, i32* %arrayidx8, align 4, !dbg !167
  call void @printIntLine(i32 %8), !dbg !168
  br label %for.inc, !dbg !169

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !170
  %inc = add nsw i32 %9, 1, !dbg !170
  store i32 %inc, i32* %i, align 4, !dbg !170
  br label %for.cond, !dbg !171, !llvm.loop !172

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !174

if.else9:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !175
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  ret void, !dbg !177
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !178 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !179, metadata !DIExpression()), !dbg !180
  store i32 -1, i32* %data, align 4, !dbg !181
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !182, metadata !DIExpression()), !dbg !186
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !186
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !186
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !187
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !189
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !190
  %cmp = icmp ne i8* %call, null, !dbg !191
  br i1 %cmp, label %if.then, label %if.else, !dbg !192

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !193
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !195
  store i32 %call2, i32* %data, align 4, !dbg !196
  br label %if.end, !dbg !197

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !198
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !200, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !205, metadata !DIExpression()), !dbg !206
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !206
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !206
  %3 = load i32, i32* %data, align 4, !dbg !207
  %cmp3 = icmp sge i32 %3, 0, !dbg !209
  br i1 %cmp3, label %land.lhs.true, label %if.else9, !dbg !210

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !211
  %cmp4 = icmp slt i32 %4, 10, !dbg !212
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !213

if.then5:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !214
  %idxprom = sext i32 %5 to i64, !dbg !216
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !216
  store i32 1, i32* %arrayidx, align 4, !dbg !217
  store i32 0, i32* %i, align 4, !dbg !218
  br label %for.cond, !dbg !220

for.cond:                                         ; preds = %for.inc, %if.then5
  %6 = load i32, i32* %i, align 4, !dbg !221
  %cmp6 = icmp slt i32 %6, 10, !dbg !223
  br i1 %cmp6, label %for.body, label %for.end, !dbg !224

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !225
  %idxprom7 = sext i32 %7 to i64, !dbg !227
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !227
  %8 = load i32, i32* %arrayidx8, align 4, !dbg !227
  call void @printIntLine(i32 %8), !dbg !228
  br label %for.inc, !dbg !229

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !230
  %inc = add nsw i32 %9, 1, !dbg !230
  store i32 %inc, i32* %i, align 4, !dbg !230
  br label %for.cond, !dbg !231, !llvm.loop !232

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !234

if.else9:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !235
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !238 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !239, metadata !DIExpression()), !dbg !240
  store i32 -1, i32* %data, align 4, !dbg !241
  store i32 7, i32* %data, align 4, !dbg !242
  call void @llvm.dbg.declare(metadata i32* %i, metadata !245, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !250, metadata !DIExpression()), !dbg !251
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !251
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !251
  %1 = load i32, i32* %data, align 4, !dbg !252
  %cmp = icmp sge i32 %1, 0, !dbg !254
  br i1 %cmp, label %if.then, label %if.else, !dbg !255

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !256
  %idxprom = sext i32 %2 to i64, !dbg !258
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !258
  store i32 1, i32* %arrayidx, align 4, !dbg !259
  store i32 0, i32* %i, align 4, !dbg !260
  br label %for.cond, !dbg !262

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !263
  %cmp1 = icmp slt i32 %3, 10, !dbg !265
  br i1 %cmp1, label %for.body, label %for.end, !dbg !266

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !267
  %idxprom2 = sext i32 %4 to i64, !dbg !269
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !269
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !269
  call void @printIntLine(i32 %5), !dbg !270
  br label %for.inc, !dbg !271

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !272
  %inc = add nsw i32 %6, 1, !dbg !272
  store i32 %inc, i32* %i, align 4, !dbg !272
  br label %for.cond, !dbg !273, !llvm.loop !274

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !276

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !277
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !279
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !280 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !281, metadata !DIExpression()), !dbg !282
  store i32 -1, i32* %data, align 4, !dbg !283
  store i32 7, i32* %data, align 4, !dbg !284
  call void @llvm.dbg.declare(metadata i32* %i, metadata !287, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !292, metadata !DIExpression()), !dbg !293
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !293
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !293
  %1 = load i32, i32* %data, align 4, !dbg !294
  %cmp = icmp sge i32 %1, 0, !dbg !296
  br i1 %cmp, label %if.then, label %if.else, !dbg !297

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !298
  %idxprom = sext i32 %2 to i64, !dbg !300
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !300
  store i32 1, i32* %arrayidx, align 4, !dbg !301
  store i32 0, i32* %i, align 4, !dbg !302
  br label %for.cond, !dbg !304

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !305
  %cmp1 = icmp slt i32 %3, 10, !dbg !307
  br i1 %cmp1, label %for.body, label %for.end, !dbg !308

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !309
  %idxprom2 = sext i32 %4 to i64, !dbg !311
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !311
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !311
  call void @printIntLine(i32 %5), !dbg !312
  br label %for.inc, !dbg !313

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !314
  %inc = add nsw i32 %6, 1, !dbg !314
  store i32 %inc, i32* %i, align 4, !dbg !314
  br label %for.cond, !dbg !315, !llvm.loop !316

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !318

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !319
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_02_good() #0 !dbg !322 {
entry:
  call void @goodB2G1(), !dbg !323
  call void @goodB2G2(), !dbg !324
  call void @goodG2B1(), !dbg !325
  call void @goodG2B2(), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !328 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !333
  %0 = load i8*, i8** %line.addr, align 8, !dbg !334
  %cmp = icmp ne i8* %0, null, !dbg !336
  br i1 %cmp, label %if.then, label %if.end, !dbg !337

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !338
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !340
  br label %if.end, !dbg !341

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !342
  ret void, !dbg !343
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !344 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !345, metadata !DIExpression()), !dbg !346
  %0 = load i8*, i8** %line.addr, align 8, !dbg !347
  %cmp = icmp ne i8* %0, null, !dbg !349
  br i1 %cmp, label %if.then, label %if.end, !dbg !350

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !351
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !353
  br label %if.end, !dbg !354

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !356 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load i32*, i32** %line.addr, align 8, !dbg !364
  %cmp = icmp ne i32* %0, null, !dbg !366
  br i1 %cmp, label %if.then, label %if.end, !dbg !367

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !368
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !370
  br label %if.end, !dbg !371

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !372
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !373 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !379
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

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_565/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_02.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_565/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_02_bad", scope: !45, file: !45, line: 25, type: !53, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 27, type: !23)
!56 = !DILocation(line: 27, column: 9, scope: !52)
!57 = !DILocation(line: 29, column: 10, scope: !52)
!58 = !DILocalVariable(name: "inputBuffer", scope: !59, file: !45, line: 33, type: !62)
!59 = distinct !DILexicalBlock(scope: !60, file: !45, line: 32, column: 9)
!60 = distinct !DILexicalBlock(scope: !61, file: !45, line: 31, column: 5)
!61 = distinct !DILexicalBlock(scope: !52, file: !45, line: 30, column: 8)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 14)
!65 = !DILocation(line: 33, column: 18, scope: !59)
!66 = !DILocation(line: 35, column: 23, scope: !67)
!67 = distinct !DILexicalBlock(scope: !59, file: !45, line: 35, column: 17)
!68 = !DILocation(line: 35, column: 53, scope: !67)
!69 = !DILocation(line: 35, column: 17, scope: !67)
!70 = !DILocation(line: 35, column: 60, scope: !67)
!71 = !DILocation(line: 35, column: 17, scope: !59)
!72 = !DILocation(line: 38, column: 29, scope: !73)
!73 = distinct !DILexicalBlock(scope: !67, file: !45, line: 36, column: 13)
!74 = !DILocation(line: 38, column: 24, scope: !73)
!75 = !DILocation(line: 38, column: 22, scope: !73)
!76 = !DILocation(line: 39, column: 13, scope: !73)
!77 = !DILocation(line: 42, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !67, file: !45, line: 41, column: 13)
!79 = !DILocalVariable(name: "i", scope: !80, file: !45, line: 49, type: !23)
!80 = distinct !DILexicalBlock(scope: !81, file: !45, line: 48, column: 9)
!81 = distinct !DILexicalBlock(scope: !82, file: !45, line: 47, column: 5)
!82 = distinct !DILexicalBlock(scope: !52, file: !45, line: 46, column: 8)
!83 = !DILocation(line: 49, column: 17, scope: !80)
!84 = !DILocalVariable(name: "buffer", scope: !80, file: !45, line: 50, type: !85)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 10)
!88 = !DILocation(line: 50, column: 17, scope: !80)
!89 = !DILocation(line: 53, column: 17, scope: !90)
!90 = distinct !DILexicalBlock(scope: !80, file: !45, line: 53, column: 17)
!91 = !DILocation(line: 53, column: 22, scope: !90)
!92 = !DILocation(line: 53, column: 17, scope: !80)
!93 = !DILocation(line: 55, column: 24, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !45, line: 54, column: 13)
!95 = !DILocation(line: 55, column: 17, scope: !94)
!96 = !DILocation(line: 55, column: 30, scope: !94)
!97 = !DILocation(line: 57, column: 23, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !45, line: 57, column: 17)
!99 = !DILocation(line: 57, column: 21, scope: !98)
!100 = !DILocation(line: 57, column: 28, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !45, line: 57, column: 17)
!102 = !DILocation(line: 57, column: 30, scope: !101)
!103 = !DILocation(line: 57, column: 17, scope: !98)
!104 = !DILocation(line: 59, column: 41, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !45, line: 58, column: 17)
!106 = !DILocation(line: 59, column: 34, scope: !105)
!107 = !DILocation(line: 59, column: 21, scope: !105)
!108 = !DILocation(line: 60, column: 17, scope: !105)
!109 = !DILocation(line: 57, column: 37, scope: !101)
!110 = !DILocation(line: 57, column: 17, scope: !101)
!111 = distinct !{!111, !103, !112, !113}
!112 = !DILocation(line: 60, column: 17, scope: !98)
!113 = !{!"llvm.loop.mustprogress"}
!114 = !DILocation(line: 61, column: 13, scope: !94)
!115 = !DILocation(line: 64, column: 17, scope: !116)
!116 = distinct !DILexicalBlock(scope: !90, file: !45, line: 63, column: 13)
!117 = !DILocation(line: 68, column: 1, scope: !52)
!118 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 75, type: !53, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!119 = !DILocalVariable(name: "data", scope: !118, file: !45, line: 77, type: !23)
!120 = !DILocation(line: 77, column: 9, scope: !118)
!121 = !DILocation(line: 79, column: 10, scope: !118)
!122 = !DILocalVariable(name: "inputBuffer", scope: !123, file: !45, line: 83, type: !62)
!123 = distinct !DILexicalBlock(scope: !124, file: !45, line: 82, column: 9)
!124 = distinct !DILexicalBlock(scope: !125, file: !45, line: 81, column: 5)
!125 = distinct !DILexicalBlock(scope: !118, file: !45, line: 80, column: 8)
!126 = !DILocation(line: 83, column: 18, scope: !123)
!127 = !DILocation(line: 85, column: 23, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !45, line: 85, column: 17)
!129 = !DILocation(line: 85, column: 53, scope: !128)
!130 = !DILocation(line: 85, column: 17, scope: !128)
!131 = !DILocation(line: 85, column: 60, scope: !128)
!132 = !DILocation(line: 85, column: 17, scope: !123)
!133 = !DILocation(line: 88, column: 29, scope: !134)
!134 = distinct !DILexicalBlock(scope: !128, file: !45, line: 86, column: 13)
!135 = !DILocation(line: 88, column: 24, scope: !134)
!136 = !DILocation(line: 88, column: 22, scope: !134)
!137 = !DILocation(line: 89, column: 13, scope: !134)
!138 = !DILocation(line: 92, column: 17, scope: !139)
!139 = distinct !DILexicalBlock(scope: !128, file: !45, line: 91, column: 13)
!140 = !DILocalVariable(name: "i", scope: !141, file: !45, line: 104, type: !23)
!141 = distinct !DILexicalBlock(scope: !142, file: !45, line: 103, column: 9)
!142 = distinct !DILexicalBlock(scope: !143, file: !45, line: 102, column: 5)
!143 = distinct !DILexicalBlock(scope: !118, file: !45, line: 96, column: 8)
!144 = !DILocation(line: 104, column: 17, scope: !141)
!145 = !DILocalVariable(name: "buffer", scope: !141, file: !45, line: 105, type: !85)
!146 = !DILocation(line: 105, column: 17, scope: !141)
!147 = !DILocation(line: 107, column: 17, scope: !148)
!148 = distinct !DILexicalBlock(scope: !141, file: !45, line: 107, column: 17)
!149 = !DILocation(line: 107, column: 22, scope: !148)
!150 = !DILocation(line: 107, column: 27, scope: !148)
!151 = !DILocation(line: 107, column: 30, scope: !148)
!152 = !DILocation(line: 107, column: 35, scope: !148)
!153 = !DILocation(line: 107, column: 17, scope: !141)
!154 = !DILocation(line: 109, column: 24, scope: !155)
!155 = distinct !DILexicalBlock(scope: !148, file: !45, line: 108, column: 13)
!156 = !DILocation(line: 109, column: 17, scope: !155)
!157 = !DILocation(line: 109, column: 30, scope: !155)
!158 = !DILocation(line: 111, column: 23, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !45, line: 111, column: 17)
!160 = !DILocation(line: 111, column: 21, scope: !159)
!161 = !DILocation(line: 111, column: 28, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !45, line: 111, column: 17)
!163 = !DILocation(line: 111, column: 30, scope: !162)
!164 = !DILocation(line: 111, column: 17, scope: !159)
!165 = !DILocation(line: 113, column: 41, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !45, line: 112, column: 17)
!167 = !DILocation(line: 113, column: 34, scope: !166)
!168 = !DILocation(line: 113, column: 21, scope: !166)
!169 = !DILocation(line: 114, column: 17, scope: !166)
!170 = !DILocation(line: 111, column: 37, scope: !162)
!171 = !DILocation(line: 111, column: 17, scope: !162)
!172 = distinct !{!172, !164, !173, !113}
!173 = !DILocation(line: 114, column: 17, scope: !159)
!174 = !DILocation(line: 115, column: 13, scope: !155)
!175 = !DILocation(line: 118, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !148, file: !45, line: 117, column: 13)
!177 = !DILocation(line: 122, column: 1, scope: !118)
!178 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 125, type: !53, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!179 = !DILocalVariable(name: "data", scope: !178, file: !45, line: 127, type: !23)
!180 = !DILocation(line: 127, column: 9, scope: !178)
!181 = !DILocation(line: 129, column: 10, scope: !178)
!182 = !DILocalVariable(name: "inputBuffer", scope: !183, file: !45, line: 133, type: !62)
!183 = distinct !DILexicalBlock(scope: !184, file: !45, line: 132, column: 9)
!184 = distinct !DILexicalBlock(scope: !185, file: !45, line: 131, column: 5)
!185 = distinct !DILexicalBlock(scope: !178, file: !45, line: 130, column: 8)
!186 = !DILocation(line: 133, column: 18, scope: !183)
!187 = !DILocation(line: 135, column: 23, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !45, line: 135, column: 17)
!189 = !DILocation(line: 135, column: 53, scope: !188)
!190 = !DILocation(line: 135, column: 17, scope: !188)
!191 = !DILocation(line: 135, column: 60, scope: !188)
!192 = !DILocation(line: 135, column: 17, scope: !183)
!193 = !DILocation(line: 138, column: 29, scope: !194)
!194 = distinct !DILexicalBlock(scope: !188, file: !45, line: 136, column: 13)
!195 = !DILocation(line: 138, column: 24, scope: !194)
!196 = !DILocation(line: 138, column: 22, scope: !194)
!197 = !DILocation(line: 139, column: 13, scope: !194)
!198 = !DILocation(line: 142, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !188, file: !45, line: 141, column: 13)
!200 = !DILocalVariable(name: "i", scope: !201, file: !45, line: 149, type: !23)
!201 = distinct !DILexicalBlock(scope: !202, file: !45, line: 148, column: 9)
!202 = distinct !DILexicalBlock(scope: !203, file: !45, line: 147, column: 5)
!203 = distinct !DILexicalBlock(scope: !178, file: !45, line: 146, column: 8)
!204 = !DILocation(line: 149, column: 17, scope: !201)
!205 = !DILocalVariable(name: "buffer", scope: !201, file: !45, line: 150, type: !85)
!206 = !DILocation(line: 150, column: 17, scope: !201)
!207 = !DILocation(line: 152, column: 17, scope: !208)
!208 = distinct !DILexicalBlock(scope: !201, file: !45, line: 152, column: 17)
!209 = !DILocation(line: 152, column: 22, scope: !208)
!210 = !DILocation(line: 152, column: 27, scope: !208)
!211 = !DILocation(line: 152, column: 30, scope: !208)
!212 = !DILocation(line: 152, column: 35, scope: !208)
!213 = !DILocation(line: 152, column: 17, scope: !201)
!214 = !DILocation(line: 154, column: 24, scope: !215)
!215 = distinct !DILexicalBlock(scope: !208, file: !45, line: 153, column: 13)
!216 = !DILocation(line: 154, column: 17, scope: !215)
!217 = !DILocation(line: 154, column: 30, scope: !215)
!218 = !DILocation(line: 156, column: 23, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !45, line: 156, column: 17)
!220 = !DILocation(line: 156, column: 21, scope: !219)
!221 = !DILocation(line: 156, column: 28, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !45, line: 156, column: 17)
!223 = !DILocation(line: 156, column: 30, scope: !222)
!224 = !DILocation(line: 156, column: 17, scope: !219)
!225 = !DILocation(line: 158, column: 41, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !45, line: 157, column: 17)
!227 = !DILocation(line: 158, column: 34, scope: !226)
!228 = !DILocation(line: 158, column: 21, scope: !226)
!229 = !DILocation(line: 159, column: 17, scope: !226)
!230 = !DILocation(line: 156, column: 37, scope: !222)
!231 = !DILocation(line: 156, column: 17, scope: !222)
!232 = distinct !{!232, !224, !233, !113}
!233 = !DILocation(line: 159, column: 17, scope: !219)
!234 = !DILocation(line: 160, column: 13, scope: !215)
!235 = !DILocation(line: 163, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !208, file: !45, line: 162, column: 13)
!237 = !DILocation(line: 167, column: 1, scope: !178)
!238 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 170, type: !53, scopeLine: 171, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!239 = !DILocalVariable(name: "data", scope: !238, file: !45, line: 172, type: !23)
!240 = !DILocation(line: 172, column: 9, scope: !238)
!241 = !DILocation(line: 174, column: 10, scope: !238)
!242 = !DILocation(line: 184, column: 14, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !45, line: 181, column: 5)
!244 = distinct !DILexicalBlock(scope: !238, file: !45, line: 175, column: 8)
!245 = !DILocalVariable(name: "i", scope: !246, file: !45, line: 189, type: !23)
!246 = distinct !DILexicalBlock(scope: !247, file: !45, line: 188, column: 9)
!247 = distinct !DILexicalBlock(scope: !248, file: !45, line: 187, column: 5)
!248 = distinct !DILexicalBlock(scope: !238, file: !45, line: 186, column: 8)
!249 = !DILocation(line: 189, column: 17, scope: !246)
!250 = !DILocalVariable(name: "buffer", scope: !246, file: !45, line: 190, type: !85)
!251 = !DILocation(line: 190, column: 17, scope: !246)
!252 = !DILocation(line: 193, column: 17, scope: !253)
!253 = distinct !DILexicalBlock(scope: !246, file: !45, line: 193, column: 17)
!254 = !DILocation(line: 193, column: 22, scope: !253)
!255 = !DILocation(line: 193, column: 17, scope: !246)
!256 = !DILocation(line: 195, column: 24, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !45, line: 194, column: 13)
!258 = !DILocation(line: 195, column: 17, scope: !257)
!259 = !DILocation(line: 195, column: 30, scope: !257)
!260 = !DILocation(line: 197, column: 23, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !45, line: 197, column: 17)
!262 = !DILocation(line: 197, column: 21, scope: !261)
!263 = !DILocation(line: 197, column: 28, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !45, line: 197, column: 17)
!265 = !DILocation(line: 197, column: 30, scope: !264)
!266 = !DILocation(line: 197, column: 17, scope: !261)
!267 = !DILocation(line: 199, column: 41, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !45, line: 198, column: 17)
!269 = !DILocation(line: 199, column: 34, scope: !268)
!270 = !DILocation(line: 199, column: 21, scope: !268)
!271 = !DILocation(line: 200, column: 17, scope: !268)
!272 = !DILocation(line: 197, column: 37, scope: !264)
!273 = !DILocation(line: 197, column: 17, scope: !264)
!274 = distinct !{!274, !266, !275, !113}
!275 = !DILocation(line: 200, column: 17, scope: !261)
!276 = !DILocation(line: 201, column: 13, scope: !257)
!277 = !DILocation(line: 204, column: 17, scope: !278)
!278 = distinct !DILexicalBlock(scope: !253, file: !45, line: 203, column: 13)
!279 = !DILocation(line: 208, column: 1, scope: !238)
!280 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 211, type: !53, scopeLine: 212, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!281 = !DILocalVariable(name: "data", scope: !280, file: !45, line: 213, type: !23)
!282 = !DILocation(line: 213, column: 9, scope: !280)
!283 = !DILocation(line: 215, column: 10, scope: !280)
!284 = !DILocation(line: 220, column: 14, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !45, line: 217, column: 5)
!286 = distinct !DILexicalBlock(scope: !280, file: !45, line: 216, column: 8)
!287 = !DILocalVariable(name: "i", scope: !288, file: !45, line: 225, type: !23)
!288 = distinct !DILexicalBlock(scope: !289, file: !45, line: 224, column: 9)
!289 = distinct !DILexicalBlock(scope: !290, file: !45, line: 223, column: 5)
!290 = distinct !DILexicalBlock(scope: !280, file: !45, line: 222, column: 8)
!291 = !DILocation(line: 225, column: 17, scope: !288)
!292 = !DILocalVariable(name: "buffer", scope: !288, file: !45, line: 226, type: !85)
!293 = !DILocation(line: 226, column: 17, scope: !288)
!294 = !DILocation(line: 229, column: 17, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !45, line: 229, column: 17)
!296 = !DILocation(line: 229, column: 22, scope: !295)
!297 = !DILocation(line: 229, column: 17, scope: !288)
!298 = !DILocation(line: 231, column: 24, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !45, line: 230, column: 13)
!300 = !DILocation(line: 231, column: 17, scope: !299)
!301 = !DILocation(line: 231, column: 30, scope: !299)
!302 = !DILocation(line: 233, column: 23, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !45, line: 233, column: 17)
!304 = !DILocation(line: 233, column: 21, scope: !303)
!305 = !DILocation(line: 233, column: 28, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !45, line: 233, column: 17)
!307 = !DILocation(line: 233, column: 30, scope: !306)
!308 = !DILocation(line: 233, column: 17, scope: !303)
!309 = !DILocation(line: 235, column: 41, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !45, line: 234, column: 17)
!311 = !DILocation(line: 235, column: 34, scope: !310)
!312 = !DILocation(line: 235, column: 21, scope: !310)
!313 = !DILocation(line: 236, column: 17, scope: !310)
!314 = !DILocation(line: 233, column: 37, scope: !306)
!315 = !DILocation(line: 233, column: 17, scope: !306)
!316 = distinct !{!316, !308, !317, !113}
!317 = !DILocation(line: 236, column: 17, scope: !303)
!318 = !DILocation(line: 237, column: 13, scope: !299)
!319 = !DILocation(line: 240, column: 17, scope: !320)
!320 = distinct !DILexicalBlock(scope: !295, file: !45, line: 239, column: 13)
!321 = !DILocation(line: 244, column: 1, scope: !280)
!322 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_02_good", scope: !45, file: !45, line: 246, type: !53, scopeLine: 247, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!323 = !DILocation(line: 248, column: 5, scope: !322)
!324 = !DILocation(line: 249, column: 5, scope: !322)
!325 = !DILocation(line: 250, column: 5, scope: !322)
!326 = !DILocation(line: 251, column: 5, scope: !322)
!327 = !DILocation(line: 252, column: 1, scope: !322)
!328 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !329, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !42}
!331 = !DILocalVariable(name: "line", arg: 1, scope: !328, file: !3, line: 11, type: !42)
!332 = !DILocation(line: 11, column: 25, scope: !328)
!333 = !DILocation(line: 13, column: 1, scope: !328)
!334 = !DILocation(line: 14, column: 8, scope: !335)
!335 = distinct !DILexicalBlock(scope: !328, file: !3, line: 14, column: 8)
!336 = !DILocation(line: 14, column: 13, scope: !335)
!337 = !DILocation(line: 14, column: 8, scope: !328)
!338 = !DILocation(line: 16, column: 24, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !3, line: 15, column: 5)
!340 = !DILocation(line: 16, column: 9, scope: !339)
!341 = !DILocation(line: 17, column: 5, scope: !339)
!342 = !DILocation(line: 18, column: 5, scope: !328)
!343 = !DILocation(line: 19, column: 1, scope: !328)
!344 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !329, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!345 = !DILocalVariable(name: "line", arg: 1, scope: !344, file: !3, line: 20, type: !42)
!346 = !DILocation(line: 20, column: 29, scope: !344)
!347 = !DILocation(line: 22, column: 8, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !3, line: 22, column: 8)
!349 = !DILocation(line: 22, column: 13, scope: !348)
!350 = !DILocation(line: 22, column: 8, scope: !344)
!351 = !DILocation(line: 24, column: 24, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !3, line: 23, column: 5)
!353 = !DILocation(line: 24, column: 9, scope: !352)
!354 = !DILocation(line: 25, column: 5, scope: !352)
!355 = !DILocation(line: 26, column: 1, scope: !344)
!356 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !357, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !361, line: 74, baseType: !23)
!361 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!362 = !DILocalVariable(name: "line", arg: 1, scope: !356, file: !3, line: 27, type: !359)
!363 = !DILocation(line: 27, column: 29, scope: !356)
!364 = !DILocation(line: 29, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !356, file: !3, line: 29, column: 8)
!366 = !DILocation(line: 29, column: 13, scope: !365)
!367 = !DILocation(line: 29, column: 8, scope: !356)
!368 = !DILocation(line: 31, column: 27, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !3, line: 30, column: 5)
!370 = !DILocation(line: 31, column: 9, scope: !369)
!371 = !DILocation(line: 32, column: 5, scope: !369)
!372 = !DILocation(line: 33, column: 1, scope: !356)
!373 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !374, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !23}
!376 = !DILocalVariable(name: "intNumber", arg: 1, scope: !373, file: !3, line: 35, type: !23)
!377 = !DILocation(line: 35, column: 24, scope: !373)
!378 = !DILocation(line: 37, column: 20, scope: !373)
!379 = !DILocation(line: 37, column: 5, scope: !373)
!380 = !DILocation(line: 38, column: 1, scope: !373)
!381 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !382, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384}
!384 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!385 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !381, file: !3, line: 40, type: !384)
!386 = !DILocation(line: 40, column: 28, scope: !381)
!387 = !DILocation(line: 42, column: 21, scope: !381)
!388 = !DILocation(line: 42, column: 5, scope: !381)
!389 = !DILocation(line: 43, column: 1, scope: !381)
!390 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !391, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!394 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !390, file: !3, line: 45, type: !393)
!395 = !DILocation(line: 45, column: 28, scope: !390)
!396 = !DILocation(line: 47, column: 20, scope: !390)
!397 = !DILocation(line: 47, column: 5, scope: !390)
!398 = !DILocation(line: 48, column: 1, scope: !390)
!399 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !400, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402}
!402 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!403 = !DILocalVariable(name: "longNumber", arg: 1, scope: !399, file: !3, line: 50, type: !402)
!404 = !DILocation(line: 50, column: 26, scope: !399)
!405 = !DILocation(line: 52, column: 21, scope: !399)
!406 = !DILocation(line: 52, column: 5, scope: !399)
!407 = !DILocation(line: 53, column: 1, scope: !399)
!408 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !409, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !412, line: 27, baseType: !413)
!412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !414, line: 44, baseType: !402)
!414 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!415 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !408, file: !3, line: 55, type: !411)
!416 = !DILocation(line: 55, column: 33, scope: !408)
!417 = !DILocation(line: 57, column: 29, scope: !408)
!418 = !DILocation(line: 57, column: 5, scope: !408)
!419 = !DILocation(line: 58, column: 1, scope: !408)
!420 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !421, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !423}
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !361, line: 46, baseType: !424)
!424 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!425 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !420, file: !3, line: 60, type: !423)
!426 = !DILocation(line: 60, column: 29, scope: !420)
!427 = !DILocation(line: 62, column: 21, scope: !420)
!428 = !DILocation(line: 62, column: 5, scope: !420)
!429 = !DILocation(line: 63, column: 1, scope: !420)
!430 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !431, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !43}
!433 = !DILocalVariable(name: "charHex", arg: 1, scope: !430, file: !3, line: 65, type: !43)
!434 = !DILocation(line: 65, column: 29, scope: !430)
!435 = !DILocation(line: 67, column: 22, scope: !430)
!436 = !DILocation(line: 67, column: 5, scope: !430)
!437 = !DILocation(line: 68, column: 1, scope: !430)
!438 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !439, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !360}
!441 = !DILocalVariable(name: "wideChar", arg: 1, scope: !438, file: !3, line: 70, type: !360)
!442 = !DILocation(line: 70, column: 29, scope: !438)
!443 = !DILocalVariable(name: "s", scope: !438, file: !3, line: 74, type: !444)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 64, elements: !445)
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
!456 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !457, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !7}
!459 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !456, file: !3, line: 80, type: !7)
!460 = !DILocation(line: 80, column: 33, scope: !456)
!461 = !DILocation(line: 82, column: 20, scope: !456)
!462 = !DILocation(line: 82, column: 5, scope: !456)
!463 = !DILocation(line: 83, column: 1, scope: !456)
!464 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !465, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !25}
!467 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !464, file: !3, line: 85, type: !25)
!468 = !DILocation(line: 85, column: 45, scope: !464)
!469 = !DILocation(line: 87, column: 22, scope: !464)
!470 = !DILocation(line: 87, column: 5, scope: !464)
!471 = !DILocation(line: 88, column: 1, scope: !464)
!472 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !473, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !475}
!475 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!476 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !472, file: !3, line: 90, type: !475)
!477 = !DILocation(line: 90, column: 29, scope: !472)
!478 = !DILocation(line: 92, column: 20, scope: !472)
!479 = !DILocation(line: 92, column: 5, scope: !472)
!480 = !DILocation(line: 93, column: 1, scope: !472)
!481 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !482, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !486, line: 100, baseType: !487)
!486 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_565/source_code")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !486, line: 96, size: 64, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !487, file: !486, line: 98, baseType: !23, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !487, file: !486, line: 99, baseType: !23, size: 32, offset: 32)
!491 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !481, file: !3, line: 95, type: !484)
!492 = !DILocation(line: 95, column: 40, scope: !481)
!493 = !DILocation(line: 97, column: 26, scope: !481)
!494 = !DILocation(line: 97, column: 47, scope: !481)
!495 = !DILocation(line: 97, column: 55, scope: !481)
!496 = !DILocation(line: 97, column: 76, scope: !481)
!497 = !DILocation(line: 97, column: 5, scope: !481)
!498 = !DILocation(line: 98, column: 1, scope: !481)
!499 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !500, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !502, !423}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!503 = !DILocalVariable(name: "bytes", arg: 1, scope: !499, file: !3, line: 100, type: !502)
!504 = !DILocation(line: 100, column: 38, scope: !499)
!505 = !DILocalVariable(name: "numBytes", arg: 2, scope: !499, file: !3, line: 100, type: !423)
!506 = !DILocation(line: 100, column: 52, scope: !499)
!507 = !DILocalVariable(name: "i", scope: !499, file: !3, line: 102, type: !423)
!508 = !DILocation(line: 102, column: 12, scope: !499)
!509 = !DILocation(line: 103, column: 12, scope: !510)
!510 = distinct !DILexicalBlock(scope: !499, file: !3, line: 103, column: 5)
!511 = !DILocation(line: 103, column: 10, scope: !510)
!512 = !DILocation(line: 103, column: 17, scope: !513)
!513 = distinct !DILexicalBlock(scope: !510, file: !3, line: 103, column: 5)
!514 = !DILocation(line: 103, column: 21, scope: !513)
!515 = !DILocation(line: 103, column: 19, scope: !513)
!516 = !DILocation(line: 103, column: 5, scope: !510)
!517 = !DILocation(line: 105, column: 24, scope: !518)
!518 = distinct !DILexicalBlock(scope: !513, file: !3, line: 104, column: 5)
!519 = !DILocation(line: 105, column: 30, scope: !518)
!520 = !DILocation(line: 105, column: 9, scope: !518)
!521 = !DILocation(line: 106, column: 5, scope: !518)
!522 = !DILocation(line: 103, column: 31, scope: !513)
!523 = !DILocation(line: 103, column: 5, scope: !513)
!524 = distinct !{!524, !516, !525, !113}
!525 = !DILocation(line: 106, column: 5, scope: !510)
!526 = !DILocation(line: 107, column: 5, scope: !499)
!527 = !DILocation(line: 108, column: 1, scope: !499)
!528 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !529, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DISubroutineType(types: !530)
!530 = !{!423, !502, !423, !42}
!531 = !DILocalVariable(name: "bytes", arg: 1, scope: !528, file: !3, line: 113, type: !502)
!532 = !DILocation(line: 113, column: 39, scope: !528)
!533 = !DILocalVariable(name: "numBytes", arg: 2, scope: !528, file: !3, line: 113, type: !423)
!534 = !DILocation(line: 113, column: 53, scope: !528)
!535 = !DILocalVariable(name: "hex", arg: 3, scope: !528, file: !3, line: 113, type: !42)
!536 = !DILocation(line: 113, column: 71, scope: !528)
!537 = !DILocalVariable(name: "numWritten", scope: !528, file: !3, line: 115, type: !423)
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
!548 = !DILocalVariable(name: "byte", scope: !549, file: !3, line: 123, type: !23)
!549 = distinct !DILexicalBlock(scope: !528, file: !3, line: 122, column: 5)
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
!561 = distinct !{!561, !539, !562, !113}
!562 = !DILocation(line: 127, column: 5, scope: !528)
!563 = !DILocation(line: 129, column: 12, scope: !528)
!564 = !DILocation(line: 129, column: 5, scope: !528)
!565 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !566, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DISubroutineType(types: !567)
!567 = !{!423, !502, !423, !359}
!568 = !DILocalVariable(name: "bytes", arg: 1, scope: !565, file: !3, line: 135, type: !502)
!569 = !DILocation(line: 135, column: 41, scope: !565)
!570 = !DILocalVariable(name: "numBytes", arg: 2, scope: !565, file: !3, line: 135, type: !423)
!571 = !DILocation(line: 135, column: 55, scope: !565)
!572 = !DILocalVariable(name: "hex", arg: 3, scope: !565, file: !3, line: 135, type: !359)
!573 = !DILocation(line: 135, column: 76, scope: !565)
!574 = !DILocalVariable(name: "numWritten", scope: !565, file: !3, line: 137, type: !423)
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
!592 = !DILocalVariable(name: "byte", scope: !593, file: !3, line: 145, type: !23)
!593 = distinct !DILexicalBlock(scope: !565, file: !3, line: 144, column: 5)
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
!605 = distinct !{!605, !576, !606, !113}
!606 = !DILocation(line: 149, column: 5, scope: !565)
!607 = !DILocation(line: 151, column: 12, scope: !565)
!608 = !DILocation(line: 151, column: 5, scope: !565)
!609 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !610, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DISubroutineType(types: !611)
!611 = !{!23}
!612 = !DILocation(line: 158, column: 5, scope: !609)
!613 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !610, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 163, column: 5, scope: !613)
!615 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !610, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 168, column: 13, scope: !615)
!617 = !DILocation(line: 168, column: 20, scope: !615)
!618 = !DILocation(line: 168, column: 5, scope: !615)
!619 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 187, column: 16, scope: !619)
!621 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 188, column: 16, scope: !621)
!623 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 189, column: 16, scope: !623)
!625 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 190, column: 16, scope: !625)
!627 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 191, column: 16, scope: !627)
!629 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 192, column: 16, scope: !629)
!631 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 193, column: 16, scope: !631)
!633 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 194, column: 16, scope: !633)
!635 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 195, column: 16, scope: !635)
!637 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 198, column: 15, scope: !637)
!639 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 199, column: 15, scope: !639)
!641 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DILocation(line: 200, column: 15, scope: !641)
!643 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 201, column: 15, scope: !643)
!645 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!646 = !DILocation(line: 202, column: 15, scope: !645)
!647 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DILocation(line: 203, column: 15, scope: !647)
!649 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 204, column: 15, scope: !649)
!651 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 205, column: 15, scope: !651)
!653 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 206, column: 15, scope: !653)
