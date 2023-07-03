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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad() #0 !dbg !52 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 -1, i32* %data, align 4, !dbg !57
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !58, metadata !DIExpression()), !dbg !63
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !64
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !66
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !67
  %cmp = icmp ne i8* %call, null, !dbg !68
  br i1 %cmp, label %if.then, label %if.else, !dbg !69

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !70
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !72
  store i32 %call2, i32* %data, align 4, !dbg !73
  br label %if.end, !dbg !74

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !75
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !77, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !80, metadata !DIExpression()), !dbg !84
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !84
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !84
  %3 = load i32, i32* %data, align 4, !dbg !85
  %cmp3 = icmp sge i32 %3, 0, !dbg !87
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !88

if.then4:                                         ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !89
  %idxprom = sext i32 %4 to i64, !dbg !91
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !91
  store i32 1, i32* %arrayidx, align 4, !dbg !92
  store i32 0, i32* %i, align 4, !dbg !93
  br label %for.cond, !dbg !95

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !96
  %cmp5 = icmp slt i32 %5, 10, !dbg !98
  br i1 %cmp5, label %for.body, label %for.end, !dbg !99

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !100
  %idxprom6 = sext i32 %6 to i64, !dbg !102
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !102
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !102
  call void @printIntLine(i32 %7), !dbg !103
  br label %for.inc, !dbg !104

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !105
  %inc = add nsw i32 %8, 1, !dbg !105
  store i32 %inc, i32* %i, align 4, !dbg !105
  br label %for.cond, !dbg !106, !llvm.loop !107

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !110

if.else8:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !111
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  ret void, !dbg !113
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !114 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 -1, i32* %data, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !118, metadata !DIExpression()), !dbg !120
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !120
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !121
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !123
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !124
  %cmp = icmp ne i8* %call, null, !dbg !125
  br i1 %cmp, label %if.then, label %if.else, !dbg !126

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !127
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !129
  store i32 %call2, i32* %data, align 4, !dbg !130
  br label %if.end, !dbg !131

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !132
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !134, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !137, metadata !DIExpression()), !dbg !138
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !138
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !138
  %3 = load i32, i32* %data, align 4, !dbg !139
  %cmp3 = icmp sge i32 %3, 0, !dbg !141
  br i1 %cmp3, label %land.lhs.true, label %if.else9, !dbg !142

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !143
  %cmp4 = icmp slt i32 %4, 10, !dbg !144
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !145

if.then5:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !146
  %idxprom = sext i32 %5 to i64, !dbg !148
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !148
  store i32 1, i32* %arrayidx, align 4, !dbg !149
  store i32 0, i32* %i, align 4, !dbg !150
  br label %for.cond, !dbg !152

for.cond:                                         ; preds = %for.inc, %if.then5
  %6 = load i32, i32* %i, align 4, !dbg !153
  %cmp6 = icmp slt i32 %6, 10, !dbg !155
  br i1 %cmp6, label %for.body, label %for.end, !dbg !156

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !157
  %idxprom7 = sext i32 %7 to i64, !dbg !159
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !159
  %8 = load i32, i32* %arrayidx8, align 4, !dbg !159
  call void @printIntLine(i32 %8), !dbg !160
  br label %for.inc, !dbg !161

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !162
  %inc = add nsw i32 %9, 1, !dbg !162
  store i32 %inc, i32* %i, align 4, !dbg !162
  br label %for.cond, !dbg !163, !llvm.loop !164

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !166

if.else9:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !167
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  ret void, !dbg !169
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !170 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !171, metadata !DIExpression()), !dbg !172
  store i32 -1, i32* %data, align 4, !dbg !173
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !174, metadata !DIExpression()), !dbg !176
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !176
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !176
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !177
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !179
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !180
  %cmp = icmp ne i8* %call, null, !dbg !181
  br i1 %cmp, label %if.then, label %if.else, !dbg !182

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !183
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !185
  store i32 %call2, i32* %data, align 4, !dbg !186
  br label %if.end, !dbg !187

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !188
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !190, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !193, metadata !DIExpression()), !dbg !194
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !194
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !194
  %3 = load i32, i32* %data, align 4, !dbg !195
  %cmp3 = icmp sge i32 %3, 0, !dbg !197
  br i1 %cmp3, label %land.lhs.true, label %if.else9, !dbg !198

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !199
  %cmp4 = icmp slt i32 %4, 10, !dbg !200
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !201

if.then5:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !202
  %idxprom = sext i32 %5 to i64, !dbg !204
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !204
  store i32 1, i32* %arrayidx, align 4, !dbg !205
  store i32 0, i32* %i, align 4, !dbg !206
  br label %for.cond, !dbg !208

for.cond:                                         ; preds = %for.inc, %if.then5
  %6 = load i32, i32* %i, align 4, !dbg !209
  %cmp6 = icmp slt i32 %6, 10, !dbg !211
  br i1 %cmp6, label %for.body, label %for.end, !dbg !212

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !213
  %idxprom7 = sext i32 %7 to i64, !dbg !215
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !215
  %8 = load i32, i32* %arrayidx8, align 4, !dbg !215
  call void @printIntLine(i32 %8), !dbg !216
  br label %for.inc, !dbg !217

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !218
  %inc = add nsw i32 %9, 1, !dbg !218
  store i32 %inc, i32* %i, align 4, !dbg !218
  br label %for.cond, !dbg !219, !llvm.loop !220

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !222

if.else9:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !223
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !226 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !227, metadata !DIExpression()), !dbg !228
  store i32 -1, i32* %data, align 4, !dbg !229
  store i32 7, i32* %data, align 4, !dbg !230
  call void @llvm.dbg.declare(metadata i32* %i, metadata !231, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !235
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !235
  %1 = load i32, i32* %data, align 4, !dbg !236
  %cmp = icmp sge i32 %1, 0, !dbg !238
  br i1 %cmp, label %if.then, label %if.else, !dbg !239

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !240
  %idxprom = sext i32 %2 to i64, !dbg !242
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !242
  store i32 1, i32* %arrayidx, align 4, !dbg !243
  store i32 0, i32* %i, align 4, !dbg !244
  br label %for.cond, !dbg !246

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !247
  %cmp1 = icmp slt i32 %3, 10, !dbg !249
  br i1 %cmp1, label %for.body, label %for.end, !dbg !250

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !251
  %idxprom2 = sext i32 %4 to i64, !dbg !253
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !253
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !253
  call void @printIntLine(i32 %5), !dbg !254
  br label %for.inc, !dbg !255

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !256
  %inc = add nsw i32 %6, 1, !dbg !256
  store i32 %inc, i32* %i, align 4, !dbg !256
  br label %for.cond, !dbg !257, !llvm.loop !258

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !260

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !261
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !264 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !265, metadata !DIExpression()), !dbg !266
  store i32 -1, i32* %data, align 4, !dbg !267
  store i32 7, i32* %data, align 4, !dbg !268
  call void @llvm.dbg.declare(metadata i32* %i, metadata !269, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !273
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !273
  %1 = load i32, i32* %data, align 4, !dbg !274
  %cmp = icmp sge i32 %1, 0, !dbg !276
  br i1 %cmp, label %if.then, label %if.else, !dbg !277

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !278
  %idxprom = sext i32 %2 to i64, !dbg !280
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !280
  store i32 1, i32* %arrayidx, align 4, !dbg !281
  store i32 0, i32* %i, align 4, !dbg !282
  br label %for.cond, !dbg !284

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !285
  %cmp1 = icmp slt i32 %3, 10, !dbg !287
  br i1 %cmp1, label %for.body, label %for.end, !dbg !288

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !289
  %idxprom2 = sext i32 %4 to i64, !dbg !291
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !291
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !291
  call void @printIntLine(i32 %5), !dbg !292
  br label %for.inc, !dbg !293

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !294
  %inc = add nsw i32 %6, 1, !dbg !294
  store i32 %inc, i32* %i, align 4, !dbg !294
  br label %for.cond, !dbg !295, !llvm.loop !296

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !298

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !299
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_good() #0 !dbg !302 {
entry:
  call void @goodB2G1(), !dbg !303
  call void @goodB2G2(), !dbg !304
  call void @goodG2B1(), !dbg !305
  call void @goodG2B2(), !dbg !306
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !308 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !313
  %0 = load i8*, i8** %line.addr, align 8, !dbg !314
  %cmp = icmp ne i8* %0, null, !dbg !316
  br i1 %cmp, label %if.then, label %if.end, !dbg !317

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !318
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !320
  br label %if.end, !dbg !321

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !322
  ret void, !dbg !323
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !324 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = load i8*, i8** %line.addr, align 8, !dbg !327
  %cmp = icmp ne i8* %0, null, !dbg !329
  br i1 %cmp, label %if.then, label %if.end, !dbg !330

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !331
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !333
  br label %if.end, !dbg !334

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !336 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i32*, i32** %line.addr, align 8, !dbg !344
  %cmp = icmp ne i32* %0, null, !dbg !346
  br i1 %cmp, label %if.then, label %if.end, !dbg !347

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !348
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !350
  br label %if.end, !dbg !351

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !352
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !353 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !358
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !359
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !361 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !365, metadata !DIExpression()), !dbg !366
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !367
  %conv = sext i16 %0 to i32, !dbg !367
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !368
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !370 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !376
  %conv = fpext float %0 to double, !dbg !376
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !379 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !388 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !397
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !400 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !405, metadata !DIExpression()), !dbg !406
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !407
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !408
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !410 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !413, metadata !DIExpression()), !dbg !414
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !415
  %conv = sext i8 %0 to i32, !dbg !415
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !416
  ret void, !dbg !417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !418 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !421, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !423, metadata !DIExpression()), !dbg !427
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !428
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !429
  store i32 %0, i32* %arrayidx, align 4, !dbg !430
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !431
  store i32 0, i32* %arrayidx1, align 4, !dbg !432
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !433
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !434
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !436 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !439, metadata !DIExpression()), !dbg !440
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !441
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !442
  ret void, !dbg !443
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !444 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !447, metadata !DIExpression()), !dbg !448
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !449
  %conv = zext i8 %0 to i32, !dbg !449
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !452 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !456, metadata !DIExpression()), !dbg !457
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !458
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !459
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !461 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !471, metadata !DIExpression()), !dbg !472
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !473
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !474
  %1 = load i32, i32* %intOne, align 4, !dbg !474
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !475
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !476
  %3 = load i32, i32* %intTwo, align 4, !dbg !476
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !477
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !479 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !483, metadata !DIExpression()), !dbg !484
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !485, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.declare(metadata i64* %i, metadata !487, metadata !DIExpression()), !dbg !488
  store i64 0, i64* %i, align 8, !dbg !489
  br label %for.cond, !dbg !491

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !492
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !494
  %cmp = icmp ult i64 %0, %1, !dbg !495
  br i1 %cmp, label %for.body, label %for.end, !dbg !496

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !497
  %3 = load i64, i64* %i, align 8, !dbg !499
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !497
  %4 = load i8, i8* %arrayidx, align 1, !dbg !497
  %conv = zext i8 %4 to i32, !dbg !497
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !500
  br label %for.inc, !dbg !501

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !502
  %inc = add i64 %5, 1, !dbg !502
  store i64 %inc, i64* %i, align 8, !dbg !502
  br label %for.cond, !dbg !503, !llvm.loop !504

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !506
  ret void, !dbg !507
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !508 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !511, metadata !DIExpression()), !dbg !512
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !513, metadata !DIExpression()), !dbg !514
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !515, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !517, metadata !DIExpression()), !dbg !518
  store i64 0, i64* %numWritten, align 8, !dbg !518
  br label %while.cond, !dbg !519

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !520
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !521
  %cmp = icmp ult i64 %0, %1, !dbg !522
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !523

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !524
  %2 = load i16*, i16** %call, align 8, !dbg !524
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !524
  %4 = load i64, i64* %numWritten, align 8, !dbg !524
  %mul = mul i64 2, %4, !dbg !524
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !524
  %5 = load i8, i8* %arrayidx, align 1, !dbg !524
  %conv = sext i8 %5 to i32, !dbg !524
  %idxprom = sext i32 %conv to i64, !dbg !524
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !524
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !524
  %conv2 = zext i16 %6 to i32, !dbg !524
  %and = and i32 %conv2, 4096, !dbg !524
  %tobool = icmp ne i32 %and, 0, !dbg !524
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !525

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !526
  %7 = load i16*, i16** %call3, align 8, !dbg !526
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !526
  %9 = load i64, i64* %numWritten, align 8, !dbg !526
  %mul4 = mul i64 2, %9, !dbg !526
  %add = add i64 %mul4, 1, !dbg !526
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !526
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !526
  %conv6 = sext i8 %10 to i32, !dbg !526
  %idxprom7 = sext i32 %conv6 to i64, !dbg !526
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !526
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !526
  %conv9 = zext i16 %11 to i32, !dbg !526
  %and10 = and i32 %conv9, 4096, !dbg !526
  %tobool11 = icmp ne i32 %and10, 0, !dbg !525
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !527
  br i1 %12, label %while.body, label %while.end, !dbg !519

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !528, metadata !DIExpression()), !dbg !530
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !531
  %14 = load i64, i64* %numWritten, align 8, !dbg !532
  %mul12 = mul i64 2, %14, !dbg !533
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !531
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !534
  %15 = load i32, i32* %byte, align 4, !dbg !535
  %conv15 = trunc i32 %15 to i8, !dbg !536
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !537
  %17 = load i64, i64* %numWritten, align 8, !dbg !538
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !537
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !539
  %18 = load i64, i64* %numWritten, align 8, !dbg !540
  %inc = add i64 %18, 1, !dbg !540
  store i64 %inc, i64* %numWritten, align 8, !dbg !540
  br label %while.cond, !dbg !519, !llvm.loop !541

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !543
  ret i64 %19, !dbg !544
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !545 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !548, metadata !DIExpression()), !dbg !549
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !550, metadata !DIExpression()), !dbg !551
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !554, metadata !DIExpression()), !dbg !555
  store i64 0, i64* %numWritten, align 8, !dbg !555
  br label %while.cond, !dbg !556

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !557
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !558
  %cmp = icmp ult i64 %0, %1, !dbg !559
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !560

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !561
  %3 = load i64, i64* %numWritten, align 8, !dbg !562
  %mul = mul i64 2, %3, !dbg !563
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !561
  %4 = load i32, i32* %arrayidx, align 4, !dbg !561
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !564
  %tobool = icmp ne i32 %call, 0, !dbg !564
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !565

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !566
  %6 = load i64, i64* %numWritten, align 8, !dbg !567
  %mul1 = mul i64 2, %6, !dbg !568
  %add = add i64 %mul1, 1, !dbg !569
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !566
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !566
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !570
  %tobool4 = icmp ne i32 %call3, 0, !dbg !565
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !571
  br i1 %8, label %while.body, label %while.end, !dbg !556

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !572, metadata !DIExpression()), !dbg !574
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !575
  %10 = load i64, i64* %numWritten, align 8, !dbg !576
  %mul5 = mul i64 2, %10, !dbg !577
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !575
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !578
  %11 = load i32, i32* %byte, align 4, !dbg !579
  %conv = trunc i32 %11 to i8, !dbg !580
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !581
  %13 = load i64, i64* %numWritten, align 8, !dbg !582
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !581
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !583
  %14 = load i64, i64* %numWritten, align 8, !dbg !584
  %inc = add i64 %14, 1, !dbg !584
  store i64 %inc, i64* %numWritten, align 8, !dbg !584
  br label %while.cond, !dbg !556, !llvm.loop !585

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !587
  ret i64 %15, !dbg !588
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !589 {
entry:
  ret i32 1, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !593 {
entry:
  ret i32 0, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !595 {
entry:
  %call = call i32 @rand() #9, !dbg !596
  %rem = srem i32 %call, 2, !dbg !597
  ret i32 %rem, !dbg !598
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !633 {
entry:
  ret void, !dbg !634
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_578/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_578/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad", scope: !45, file: !45, line: 25, type: !53, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 27, type: !23)
!56 = !DILocation(line: 27, column: 9, scope: !52)
!57 = !DILocation(line: 29, column: 10, scope: !52)
!58 = !DILocalVariable(name: "inputBuffer", scope: !59, file: !45, line: 34, type: !60)
!59 = distinct !DILexicalBlock(scope: !52, file: !45, line: 33, column: 5)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 14)
!63 = !DILocation(line: 34, column: 14, scope: !59)
!64 = !DILocation(line: 36, column: 19, scope: !65)
!65 = distinct !DILexicalBlock(scope: !59, file: !45, line: 36, column: 13)
!66 = !DILocation(line: 36, column: 49, scope: !65)
!67 = !DILocation(line: 36, column: 13, scope: !65)
!68 = !DILocation(line: 36, column: 56, scope: !65)
!69 = !DILocation(line: 36, column: 13, scope: !59)
!70 = !DILocation(line: 39, column: 25, scope: !71)
!71 = distinct !DILexicalBlock(scope: !65, file: !45, line: 37, column: 9)
!72 = !DILocation(line: 39, column: 20, scope: !71)
!73 = !DILocation(line: 39, column: 18, scope: !71)
!74 = !DILocation(line: 40, column: 9, scope: !71)
!75 = !DILocation(line: 43, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !45, line: 42, column: 9)
!77 = !DILocalVariable(name: "i", scope: !78, file: !45, line: 56, type: !23)
!78 = distinct !DILexicalBlock(scope: !52, file: !45, line: 55, column: 5)
!79 = !DILocation(line: 56, column: 13, scope: !78)
!80 = !DILocalVariable(name: "buffer", scope: !78, file: !45, line: 57, type: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 10)
!84 = !DILocation(line: 57, column: 13, scope: !78)
!85 = !DILocation(line: 60, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !78, file: !45, line: 60, column: 13)
!87 = !DILocation(line: 60, column: 18, scope: !86)
!88 = !DILocation(line: 60, column: 13, scope: !78)
!89 = !DILocation(line: 62, column: 20, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !45, line: 61, column: 9)
!91 = !DILocation(line: 62, column: 13, scope: !90)
!92 = !DILocation(line: 62, column: 26, scope: !90)
!93 = !DILocation(line: 64, column: 19, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !45, line: 64, column: 13)
!95 = !DILocation(line: 64, column: 17, scope: !94)
!96 = !DILocation(line: 64, column: 24, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !45, line: 64, column: 13)
!98 = !DILocation(line: 64, column: 26, scope: !97)
!99 = !DILocation(line: 64, column: 13, scope: !94)
!100 = !DILocation(line: 66, column: 37, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !45, line: 65, column: 13)
!102 = !DILocation(line: 66, column: 30, scope: !101)
!103 = !DILocation(line: 66, column: 17, scope: !101)
!104 = !DILocation(line: 67, column: 13, scope: !101)
!105 = !DILocation(line: 64, column: 33, scope: !97)
!106 = !DILocation(line: 64, column: 13, scope: !97)
!107 = distinct !{!107, !99, !108, !109}
!108 = !DILocation(line: 67, column: 13, scope: !94)
!109 = !{!"llvm.loop.mustprogress"}
!110 = !DILocation(line: 68, column: 9, scope: !90)
!111 = !DILocation(line: 71, column: 13, scope: !112)
!112 = distinct !DILexicalBlock(scope: !86, file: !45, line: 70, column: 9)
!113 = !DILocation(line: 80, column: 1, scope: !52)
!114 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 87, type: !53, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!115 = !DILocalVariable(name: "data", scope: !114, file: !45, line: 89, type: !23)
!116 = !DILocation(line: 89, column: 9, scope: !114)
!117 = !DILocation(line: 91, column: 10, scope: !114)
!118 = !DILocalVariable(name: "inputBuffer", scope: !119, file: !45, line: 96, type: !60)
!119 = distinct !DILexicalBlock(scope: !114, file: !45, line: 95, column: 5)
!120 = !DILocation(line: 96, column: 14, scope: !119)
!121 = !DILocation(line: 98, column: 19, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !45, line: 98, column: 13)
!123 = !DILocation(line: 98, column: 49, scope: !122)
!124 = !DILocation(line: 98, column: 13, scope: !122)
!125 = !DILocation(line: 98, column: 56, scope: !122)
!126 = !DILocation(line: 98, column: 13, scope: !119)
!127 = !DILocation(line: 101, column: 25, scope: !128)
!128 = distinct !DILexicalBlock(scope: !122, file: !45, line: 99, column: 9)
!129 = !DILocation(line: 101, column: 20, scope: !128)
!130 = !DILocation(line: 101, column: 18, scope: !128)
!131 = !DILocation(line: 102, column: 9, scope: !128)
!132 = !DILocation(line: 105, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !122, file: !45, line: 104, column: 9)
!134 = !DILocalVariable(name: "i", scope: !135, file: !45, line: 122, type: !23)
!135 = distinct !DILexicalBlock(scope: !114, file: !45, line: 121, column: 5)
!136 = !DILocation(line: 122, column: 13, scope: !135)
!137 = !DILocalVariable(name: "buffer", scope: !135, file: !45, line: 123, type: !81)
!138 = !DILocation(line: 123, column: 13, scope: !135)
!139 = !DILocation(line: 125, column: 13, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !45, line: 125, column: 13)
!141 = !DILocation(line: 125, column: 18, scope: !140)
!142 = !DILocation(line: 125, column: 23, scope: !140)
!143 = !DILocation(line: 125, column: 26, scope: !140)
!144 = !DILocation(line: 125, column: 31, scope: !140)
!145 = !DILocation(line: 125, column: 13, scope: !135)
!146 = !DILocation(line: 127, column: 20, scope: !147)
!147 = distinct !DILexicalBlock(scope: !140, file: !45, line: 126, column: 9)
!148 = !DILocation(line: 127, column: 13, scope: !147)
!149 = !DILocation(line: 127, column: 26, scope: !147)
!150 = !DILocation(line: 129, column: 19, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !45, line: 129, column: 13)
!152 = !DILocation(line: 129, column: 17, scope: !151)
!153 = !DILocation(line: 129, column: 24, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !45, line: 129, column: 13)
!155 = !DILocation(line: 129, column: 26, scope: !154)
!156 = !DILocation(line: 129, column: 13, scope: !151)
!157 = !DILocation(line: 131, column: 37, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !45, line: 130, column: 13)
!159 = !DILocation(line: 131, column: 30, scope: !158)
!160 = !DILocation(line: 131, column: 17, scope: !158)
!161 = !DILocation(line: 132, column: 13, scope: !158)
!162 = !DILocation(line: 129, column: 33, scope: !154)
!163 = !DILocation(line: 129, column: 13, scope: !154)
!164 = distinct !{!164, !156, !165, !109}
!165 = !DILocation(line: 132, column: 13, scope: !151)
!166 = !DILocation(line: 133, column: 9, scope: !147)
!167 = !DILocation(line: 136, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !140, file: !45, line: 135, column: 9)
!169 = !DILocation(line: 141, column: 1, scope: !114)
!170 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 144, type: !53, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!171 = !DILocalVariable(name: "data", scope: !170, file: !45, line: 146, type: !23)
!172 = !DILocation(line: 146, column: 9, scope: !170)
!173 = !DILocation(line: 148, column: 10, scope: !170)
!174 = !DILocalVariable(name: "inputBuffer", scope: !175, file: !45, line: 153, type: !60)
!175 = distinct !DILexicalBlock(scope: !170, file: !45, line: 152, column: 5)
!176 = !DILocation(line: 153, column: 14, scope: !175)
!177 = !DILocation(line: 155, column: 19, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !45, line: 155, column: 13)
!179 = !DILocation(line: 155, column: 49, scope: !178)
!180 = !DILocation(line: 155, column: 13, scope: !178)
!181 = !DILocation(line: 155, column: 56, scope: !178)
!182 = !DILocation(line: 155, column: 13, scope: !175)
!183 = !DILocation(line: 158, column: 25, scope: !184)
!184 = distinct !DILexicalBlock(scope: !178, file: !45, line: 156, column: 9)
!185 = !DILocation(line: 158, column: 20, scope: !184)
!186 = !DILocation(line: 158, column: 18, scope: !184)
!187 = !DILocation(line: 159, column: 9, scope: !184)
!188 = !DILocation(line: 162, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !178, file: !45, line: 161, column: 9)
!190 = !DILocalVariable(name: "i", scope: !191, file: !45, line: 175, type: !23)
!191 = distinct !DILexicalBlock(scope: !170, file: !45, line: 174, column: 5)
!192 = !DILocation(line: 175, column: 13, scope: !191)
!193 = !DILocalVariable(name: "buffer", scope: !191, file: !45, line: 176, type: !81)
!194 = !DILocation(line: 176, column: 13, scope: !191)
!195 = !DILocation(line: 178, column: 13, scope: !196)
!196 = distinct !DILexicalBlock(scope: !191, file: !45, line: 178, column: 13)
!197 = !DILocation(line: 178, column: 18, scope: !196)
!198 = !DILocation(line: 178, column: 23, scope: !196)
!199 = !DILocation(line: 178, column: 26, scope: !196)
!200 = !DILocation(line: 178, column: 31, scope: !196)
!201 = !DILocation(line: 178, column: 13, scope: !191)
!202 = !DILocation(line: 180, column: 20, scope: !203)
!203 = distinct !DILexicalBlock(scope: !196, file: !45, line: 179, column: 9)
!204 = !DILocation(line: 180, column: 13, scope: !203)
!205 = !DILocation(line: 180, column: 26, scope: !203)
!206 = !DILocation(line: 182, column: 19, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !45, line: 182, column: 13)
!208 = !DILocation(line: 182, column: 17, scope: !207)
!209 = !DILocation(line: 182, column: 24, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !45, line: 182, column: 13)
!211 = !DILocation(line: 182, column: 26, scope: !210)
!212 = !DILocation(line: 182, column: 13, scope: !207)
!213 = !DILocation(line: 184, column: 37, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !45, line: 183, column: 13)
!215 = !DILocation(line: 184, column: 30, scope: !214)
!216 = !DILocation(line: 184, column: 17, scope: !214)
!217 = !DILocation(line: 185, column: 13, scope: !214)
!218 = !DILocation(line: 182, column: 33, scope: !210)
!219 = !DILocation(line: 182, column: 13, scope: !210)
!220 = distinct !{!220, !212, !221, !109}
!221 = !DILocation(line: 185, column: 13, scope: !207)
!222 = !DILocation(line: 186, column: 9, scope: !203)
!223 = !DILocation(line: 189, column: 13, scope: !224)
!224 = distinct !DILexicalBlock(scope: !196, file: !45, line: 188, column: 9)
!225 = !DILocation(line: 198, column: 1, scope: !170)
!226 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 201, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!227 = !DILocalVariable(name: "data", scope: !226, file: !45, line: 203, type: !23)
!228 = !DILocation(line: 203, column: 9, scope: !226)
!229 = !DILocation(line: 205, column: 10, scope: !226)
!230 = !DILocation(line: 215, column: 14, scope: !226)
!231 = !DILocalVariable(name: "i", scope: !232, file: !45, line: 222, type: !23)
!232 = distinct !DILexicalBlock(scope: !226, file: !45, line: 221, column: 5)
!233 = !DILocation(line: 222, column: 13, scope: !232)
!234 = !DILocalVariable(name: "buffer", scope: !232, file: !45, line: 223, type: !81)
!235 = !DILocation(line: 223, column: 13, scope: !232)
!236 = !DILocation(line: 226, column: 13, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !45, line: 226, column: 13)
!238 = !DILocation(line: 226, column: 18, scope: !237)
!239 = !DILocation(line: 226, column: 13, scope: !232)
!240 = !DILocation(line: 228, column: 20, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !45, line: 227, column: 9)
!242 = !DILocation(line: 228, column: 13, scope: !241)
!243 = !DILocation(line: 228, column: 26, scope: !241)
!244 = !DILocation(line: 230, column: 19, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !45, line: 230, column: 13)
!246 = !DILocation(line: 230, column: 17, scope: !245)
!247 = !DILocation(line: 230, column: 24, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !45, line: 230, column: 13)
!249 = !DILocation(line: 230, column: 26, scope: !248)
!250 = !DILocation(line: 230, column: 13, scope: !245)
!251 = !DILocation(line: 232, column: 37, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !45, line: 231, column: 13)
!253 = !DILocation(line: 232, column: 30, scope: !252)
!254 = !DILocation(line: 232, column: 17, scope: !252)
!255 = !DILocation(line: 233, column: 13, scope: !252)
!256 = !DILocation(line: 230, column: 33, scope: !248)
!257 = !DILocation(line: 230, column: 13, scope: !248)
!258 = distinct !{!258, !250, !259, !109}
!259 = !DILocation(line: 233, column: 13, scope: !245)
!260 = !DILocation(line: 234, column: 9, scope: !241)
!261 = !DILocation(line: 237, column: 13, scope: !262)
!262 = distinct !DILexicalBlock(scope: !237, file: !45, line: 236, column: 9)
!263 = !DILocation(line: 246, column: 1, scope: !226)
!264 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 249, type: !53, scopeLine: 250, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!265 = !DILocalVariable(name: "data", scope: !264, file: !45, line: 251, type: !23)
!266 = !DILocation(line: 251, column: 9, scope: !264)
!267 = !DILocation(line: 253, column: 10, scope: !264)
!268 = !DILocation(line: 259, column: 14, scope: !264)
!269 = !DILocalVariable(name: "i", scope: !270, file: !45, line: 270, type: !23)
!270 = distinct !DILexicalBlock(scope: !264, file: !45, line: 269, column: 5)
!271 = !DILocation(line: 270, column: 13, scope: !270)
!272 = !DILocalVariable(name: "buffer", scope: !270, file: !45, line: 271, type: !81)
!273 = !DILocation(line: 271, column: 13, scope: !270)
!274 = !DILocation(line: 274, column: 13, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !45, line: 274, column: 13)
!276 = !DILocation(line: 274, column: 18, scope: !275)
!277 = !DILocation(line: 274, column: 13, scope: !270)
!278 = !DILocation(line: 276, column: 20, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !45, line: 275, column: 9)
!280 = !DILocation(line: 276, column: 13, scope: !279)
!281 = !DILocation(line: 276, column: 26, scope: !279)
!282 = !DILocation(line: 278, column: 19, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !45, line: 278, column: 13)
!284 = !DILocation(line: 278, column: 17, scope: !283)
!285 = !DILocation(line: 278, column: 24, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !45, line: 278, column: 13)
!287 = !DILocation(line: 278, column: 26, scope: !286)
!288 = !DILocation(line: 278, column: 13, scope: !283)
!289 = !DILocation(line: 280, column: 37, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !45, line: 279, column: 13)
!291 = !DILocation(line: 280, column: 30, scope: !290)
!292 = !DILocation(line: 280, column: 17, scope: !290)
!293 = !DILocation(line: 281, column: 13, scope: !290)
!294 = !DILocation(line: 278, column: 33, scope: !286)
!295 = !DILocation(line: 278, column: 13, scope: !286)
!296 = distinct !{!296, !288, !297, !109}
!297 = !DILocation(line: 281, column: 13, scope: !283)
!298 = !DILocation(line: 282, column: 9, scope: !279)
!299 = !DILocation(line: 285, column: 13, scope: !300)
!300 = distinct !DILexicalBlock(scope: !275, file: !45, line: 284, column: 9)
!301 = !DILocation(line: 294, column: 1, scope: !264)
!302 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_good", scope: !45, file: !45, line: 296, type: !53, scopeLine: 297, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!303 = !DILocation(line: 298, column: 5, scope: !302)
!304 = !DILocation(line: 299, column: 5, scope: !302)
!305 = !DILocation(line: 300, column: 5, scope: !302)
!306 = !DILocation(line: 301, column: 5, scope: !302)
!307 = !DILocation(line: 302, column: 1, scope: !302)
!308 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !309, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !42}
!311 = !DILocalVariable(name: "line", arg: 1, scope: !308, file: !3, line: 11, type: !42)
!312 = !DILocation(line: 11, column: 25, scope: !308)
!313 = !DILocation(line: 13, column: 1, scope: !308)
!314 = !DILocation(line: 14, column: 8, scope: !315)
!315 = distinct !DILexicalBlock(scope: !308, file: !3, line: 14, column: 8)
!316 = !DILocation(line: 14, column: 13, scope: !315)
!317 = !DILocation(line: 14, column: 8, scope: !308)
!318 = !DILocation(line: 16, column: 24, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !3, line: 15, column: 5)
!320 = !DILocation(line: 16, column: 9, scope: !319)
!321 = !DILocation(line: 17, column: 5, scope: !319)
!322 = !DILocation(line: 18, column: 5, scope: !308)
!323 = !DILocation(line: 19, column: 1, scope: !308)
!324 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !309, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!325 = !DILocalVariable(name: "line", arg: 1, scope: !324, file: !3, line: 20, type: !42)
!326 = !DILocation(line: 20, column: 29, scope: !324)
!327 = !DILocation(line: 22, column: 8, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !3, line: 22, column: 8)
!329 = !DILocation(line: 22, column: 13, scope: !328)
!330 = !DILocation(line: 22, column: 8, scope: !324)
!331 = !DILocation(line: 24, column: 24, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !3, line: 23, column: 5)
!333 = !DILocation(line: 24, column: 9, scope: !332)
!334 = !DILocation(line: 25, column: 5, scope: !332)
!335 = !DILocation(line: 26, column: 1, scope: !324)
!336 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !337, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !341, line: 74, baseType: !23)
!341 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!342 = !DILocalVariable(name: "line", arg: 1, scope: !336, file: !3, line: 27, type: !339)
!343 = !DILocation(line: 27, column: 29, scope: !336)
!344 = !DILocation(line: 29, column: 8, scope: !345)
!345 = distinct !DILexicalBlock(scope: !336, file: !3, line: 29, column: 8)
!346 = !DILocation(line: 29, column: 13, scope: !345)
!347 = !DILocation(line: 29, column: 8, scope: !336)
!348 = !DILocation(line: 31, column: 27, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !3, line: 30, column: 5)
!350 = !DILocation(line: 31, column: 9, scope: !349)
!351 = !DILocation(line: 32, column: 5, scope: !349)
!352 = !DILocation(line: 33, column: 1, scope: !336)
!353 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !354, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !23}
!356 = !DILocalVariable(name: "intNumber", arg: 1, scope: !353, file: !3, line: 35, type: !23)
!357 = !DILocation(line: 35, column: 24, scope: !353)
!358 = !DILocation(line: 37, column: 20, scope: !353)
!359 = !DILocation(line: 37, column: 5, scope: !353)
!360 = !DILocation(line: 38, column: 1, scope: !353)
!361 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !362, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364}
!364 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!365 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !361, file: !3, line: 40, type: !364)
!366 = !DILocation(line: 40, column: 28, scope: !361)
!367 = !DILocation(line: 42, column: 21, scope: !361)
!368 = !DILocation(line: 42, column: 5, scope: !361)
!369 = !DILocation(line: 43, column: 1, scope: !361)
!370 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !371, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !373}
!373 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!374 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !370, file: !3, line: 45, type: !373)
!375 = !DILocation(line: 45, column: 28, scope: !370)
!376 = !DILocation(line: 47, column: 20, scope: !370)
!377 = !DILocation(line: 47, column: 5, scope: !370)
!378 = !DILocation(line: 48, column: 1, scope: !370)
!379 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !380, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !382}
!382 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!383 = !DILocalVariable(name: "longNumber", arg: 1, scope: !379, file: !3, line: 50, type: !382)
!384 = !DILocation(line: 50, column: 26, scope: !379)
!385 = !DILocation(line: 52, column: 21, scope: !379)
!386 = !DILocation(line: 52, column: 5, scope: !379)
!387 = !DILocation(line: 53, column: 1, scope: !379)
!388 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !389, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391}
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !392, line: 27, baseType: !393)
!392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !394, line: 44, baseType: !382)
!394 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!395 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !388, file: !3, line: 55, type: !391)
!396 = !DILocation(line: 55, column: 33, scope: !388)
!397 = !DILocation(line: 57, column: 29, scope: !388)
!398 = !DILocation(line: 57, column: 5, scope: !388)
!399 = !DILocation(line: 58, column: 1, scope: !388)
!400 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !401, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !403}
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !341, line: 46, baseType: !404)
!404 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!405 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !400, file: !3, line: 60, type: !403)
!406 = !DILocation(line: 60, column: 29, scope: !400)
!407 = !DILocation(line: 62, column: 21, scope: !400)
!408 = !DILocation(line: 62, column: 5, scope: !400)
!409 = !DILocation(line: 63, column: 1, scope: !400)
!410 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !411, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !43}
!413 = !DILocalVariable(name: "charHex", arg: 1, scope: !410, file: !3, line: 65, type: !43)
!414 = !DILocation(line: 65, column: 29, scope: !410)
!415 = !DILocation(line: 67, column: 22, scope: !410)
!416 = !DILocation(line: 67, column: 5, scope: !410)
!417 = !DILocation(line: 68, column: 1, scope: !410)
!418 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !419, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !340}
!421 = !DILocalVariable(name: "wideChar", arg: 1, scope: !418, file: !3, line: 70, type: !340)
!422 = !DILocation(line: 70, column: 29, scope: !418)
!423 = !DILocalVariable(name: "s", scope: !418, file: !3, line: 74, type: !424)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 64, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 2)
!427 = !DILocation(line: 74, column: 13, scope: !418)
!428 = !DILocation(line: 75, column: 16, scope: !418)
!429 = !DILocation(line: 75, column: 9, scope: !418)
!430 = !DILocation(line: 75, column: 14, scope: !418)
!431 = !DILocation(line: 76, column: 9, scope: !418)
!432 = !DILocation(line: 76, column: 14, scope: !418)
!433 = !DILocation(line: 77, column: 21, scope: !418)
!434 = !DILocation(line: 77, column: 5, scope: !418)
!435 = !DILocation(line: 78, column: 1, scope: !418)
!436 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !437, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !7}
!439 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !436, file: !3, line: 80, type: !7)
!440 = !DILocation(line: 80, column: 33, scope: !436)
!441 = !DILocation(line: 82, column: 20, scope: !436)
!442 = !DILocation(line: 82, column: 5, scope: !436)
!443 = !DILocation(line: 83, column: 1, scope: !436)
!444 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !445, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !25}
!447 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !444, file: !3, line: 85, type: !25)
!448 = !DILocation(line: 85, column: 45, scope: !444)
!449 = !DILocation(line: 87, column: 22, scope: !444)
!450 = !DILocation(line: 87, column: 5, scope: !444)
!451 = !DILocation(line: 88, column: 1, scope: !444)
!452 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !453, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !455}
!455 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!456 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !452, file: !3, line: 90, type: !455)
!457 = !DILocation(line: 90, column: 29, scope: !452)
!458 = !DILocation(line: 92, column: 20, scope: !452)
!459 = !DILocation(line: 92, column: 5, scope: !452)
!460 = !DILocation(line: 93, column: 1, scope: !452)
!461 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !462, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !466, line: 100, baseType: !467)
!466 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_578/source_code")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !466, line: 96, size: 64, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !467, file: !466, line: 98, baseType: !23, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !467, file: !466, line: 99, baseType: !23, size: 32, offset: 32)
!471 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !461, file: !3, line: 95, type: !464)
!472 = !DILocation(line: 95, column: 40, scope: !461)
!473 = !DILocation(line: 97, column: 26, scope: !461)
!474 = !DILocation(line: 97, column: 47, scope: !461)
!475 = !DILocation(line: 97, column: 55, scope: !461)
!476 = !DILocation(line: 97, column: 76, scope: !461)
!477 = !DILocation(line: 97, column: 5, scope: !461)
!478 = !DILocation(line: 98, column: 1, scope: !461)
!479 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !480, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !482, !403}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!483 = !DILocalVariable(name: "bytes", arg: 1, scope: !479, file: !3, line: 100, type: !482)
!484 = !DILocation(line: 100, column: 38, scope: !479)
!485 = !DILocalVariable(name: "numBytes", arg: 2, scope: !479, file: !3, line: 100, type: !403)
!486 = !DILocation(line: 100, column: 52, scope: !479)
!487 = !DILocalVariable(name: "i", scope: !479, file: !3, line: 102, type: !403)
!488 = !DILocation(line: 102, column: 12, scope: !479)
!489 = !DILocation(line: 103, column: 12, scope: !490)
!490 = distinct !DILexicalBlock(scope: !479, file: !3, line: 103, column: 5)
!491 = !DILocation(line: 103, column: 10, scope: !490)
!492 = !DILocation(line: 103, column: 17, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !3, line: 103, column: 5)
!494 = !DILocation(line: 103, column: 21, scope: !493)
!495 = !DILocation(line: 103, column: 19, scope: !493)
!496 = !DILocation(line: 103, column: 5, scope: !490)
!497 = !DILocation(line: 105, column: 24, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !3, line: 104, column: 5)
!499 = !DILocation(line: 105, column: 30, scope: !498)
!500 = !DILocation(line: 105, column: 9, scope: !498)
!501 = !DILocation(line: 106, column: 5, scope: !498)
!502 = !DILocation(line: 103, column: 31, scope: !493)
!503 = !DILocation(line: 103, column: 5, scope: !493)
!504 = distinct !{!504, !496, !505, !109}
!505 = !DILocation(line: 106, column: 5, scope: !490)
!506 = !DILocation(line: 107, column: 5, scope: !479)
!507 = !DILocation(line: 108, column: 1, scope: !479)
!508 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !509, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!509 = !DISubroutineType(types: !510)
!510 = !{!403, !482, !403, !42}
!511 = !DILocalVariable(name: "bytes", arg: 1, scope: !508, file: !3, line: 113, type: !482)
!512 = !DILocation(line: 113, column: 39, scope: !508)
!513 = !DILocalVariable(name: "numBytes", arg: 2, scope: !508, file: !3, line: 113, type: !403)
!514 = !DILocation(line: 113, column: 53, scope: !508)
!515 = !DILocalVariable(name: "hex", arg: 3, scope: !508, file: !3, line: 113, type: !42)
!516 = !DILocation(line: 113, column: 71, scope: !508)
!517 = !DILocalVariable(name: "numWritten", scope: !508, file: !3, line: 115, type: !403)
!518 = !DILocation(line: 115, column: 12, scope: !508)
!519 = !DILocation(line: 121, column: 5, scope: !508)
!520 = !DILocation(line: 121, column: 12, scope: !508)
!521 = !DILocation(line: 121, column: 25, scope: !508)
!522 = !DILocation(line: 121, column: 23, scope: !508)
!523 = !DILocation(line: 121, column: 34, scope: !508)
!524 = !DILocation(line: 121, column: 37, scope: !508)
!525 = !DILocation(line: 121, column: 67, scope: !508)
!526 = !DILocation(line: 121, column: 70, scope: !508)
!527 = !DILocation(line: 0, scope: !508)
!528 = !DILocalVariable(name: "byte", scope: !529, file: !3, line: 123, type: !23)
!529 = distinct !DILexicalBlock(scope: !508, file: !3, line: 122, column: 5)
!530 = !DILocation(line: 123, column: 13, scope: !529)
!531 = !DILocation(line: 124, column: 17, scope: !529)
!532 = !DILocation(line: 124, column: 25, scope: !529)
!533 = !DILocation(line: 124, column: 23, scope: !529)
!534 = !DILocation(line: 124, column: 9, scope: !529)
!535 = !DILocation(line: 125, column: 45, scope: !529)
!536 = !DILocation(line: 125, column: 29, scope: !529)
!537 = !DILocation(line: 125, column: 9, scope: !529)
!538 = !DILocation(line: 125, column: 15, scope: !529)
!539 = !DILocation(line: 125, column: 27, scope: !529)
!540 = !DILocation(line: 126, column: 9, scope: !529)
!541 = distinct !{!541, !519, !542, !109}
!542 = !DILocation(line: 127, column: 5, scope: !508)
!543 = !DILocation(line: 129, column: 12, scope: !508)
!544 = !DILocation(line: 129, column: 5, scope: !508)
!545 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !546, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DISubroutineType(types: !547)
!547 = !{!403, !482, !403, !339}
!548 = !DILocalVariable(name: "bytes", arg: 1, scope: !545, file: !3, line: 135, type: !482)
!549 = !DILocation(line: 135, column: 41, scope: !545)
!550 = !DILocalVariable(name: "numBytes", arg: 2, scope: !545, file: !3, line: 135, type: !403)
!551 = !DILocation(line: 135, column: 55, scope: !545)
!552 = !DILocalVariable(name: "hex", arg: 3, scope: !545, file: !3, line: 135, type: !339)
!553 = !DILocation(line: 135, column: 76, scope: !545)
!554 = !DILocalVariable(name: "numWritten", scope: !545, file: !3, line: 137, type: !403)
!555 = !DILocation(line: 137, column: 12, scope: !545)
!556 = !DILocation(line: 143, column: 5, scope: !545)
!557 = !DILocation(line: 143, column: 12, scope: !545)
!558 = !DILocation(line: 143, column: 25, scope: !545)
!559 = !DILocation(line: 143, column: 23, scope: !545)
!560 = !DILocation(line: 143, column: 34, scope: !545)
!561 = !DILocation(line: 143, column: 47, scope: !545)
!562 = !DILocation(line: 143, column: 55, scope: !545)
!563 = !DILocation(line: 143, column: 53, scope: !545)
!564 = !DILocation(line: 143, column: 37, scope: !545)
!565 = !DILocation(line: 143, column: 68, scope: !545)
!566 = !DILocation(line: 143, column: 81, scope: !545)
!567 = !DILocation(line: 143, column: 89, scope: !545)
!568 = !DILocation(line: 143, column: 87, scope: !545)
!569 = !DILocation(line: 143, column: 100, scope: !545)
!570 = !DILocation(line: 143, column: 71, scope: !545)
!571 = !DILocation(line: 0, scope: !545)
!572 = !DILocalVariable(name: "byte", scope: !573, file: !3, line: 145, type: !23)
!573 = distinct !DILexicalBlock(scope: !545, file: !3, line: 144, column: 5)
!574 = !DILocation(line: 145, column: 13, scope: !573)
!575 = !DILocation(line: 146, column: 18, scope: !573)
!576 = !DILocation(line: 146, column: 26, scope: !573)
!577 = !DILocation(line: 146, column: 24, scope: !573)
!578 = !DILocation(line: 146, column: 9, scope: !573)
!579 = !DILocation(line: 147, column: 45, scope: !573)
!580 = !DILocation(line: 147, column: 29, scope: !573)
!581 = !DILocation(line: 147, column: 9, scope: !573)
!582 = !DILocation(line: 147, column: 15, scope: !573)
!583 = !DILocation(line: 147, column: 27, scope: !573)
!584 = !DILocation(line: 148, column: 9, scope: !573)
!585 = distinct !{!585, !556, !586, !109}
!586 = !DILocation(line: 149, column: 5, scope: !545)
!587 = !DILocation(line: 151, column: 12, scope: !545)
!588 = !DILocation(line: 151, column: 5, scope: !545)
!589 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !590, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DISubroutineType(types: !591)
!591 = !{!23}
!592 = !DILocation(line: 158, column: 5, scope: !589)
!593 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !590, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 163, column: 5, scope: !593)
!595 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !590, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 168, column: 13, scope: !595)
!597 = !DILocation(line: 168, column: 20, scope: !595)
!598 = !DILocation(line: 168, column: 5, scope: !595)
!599 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 187, column: 16, scope: !599)
!601 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 188, column: 16, scope: !601)
!603 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 189, column: 16, scope: !603)
!605 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 190, column: 16, scope: !605)
!607 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 191, column: 16, scope: !607)
!609 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 192, column: 16, scope: !609)
!611 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 193, column: 16, scope: !611)
!613 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 194, column: 16, scope: !613)
!615 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 195, column: 16, scope: !615)
!617 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 198, column: 15, scope: !617)
!619 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 199, column: 15, scope: !619)
!621 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 200, column: 15, scope: !621)
!623 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 201, column: 15, scope: !623)
!625 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 202, column: 15, scope: !625)
!627 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 203, column: 15, scope: !627)
!629 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 204, column: 15, scope: !629)
!631 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 205, column: 15, scope: !631)
!633 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 206, column: 15, scope: !633)
