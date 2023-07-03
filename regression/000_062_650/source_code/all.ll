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
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.10 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.12 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10.15 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad() #0 !dbg !53 {
entry:
  %data = alloca i32, align 4
  %dataArray = alloca [5 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata [5 x i32]* %dataArray, metadata !58, metadata !DIExpression()), !dbg !62
  store i32 -1, i32* %data, align 4, !dbg !63
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !64
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !65
  %1 = load i32, i32* %data, align 4, !dbg !66
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %dataArray, i64 0, i64 2, !dbg !67
  store i32 %1, i32* %arrayidx, align 8, !dbg !68
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %dataArray, i64 0, i64 0, !dbg !69
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink(i32* %arraydecay), !dbg !70
  ret void, !dbg !71
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !72 {
entry:
  %data = alloca i32, align 4
  %dataArray = alloca [5 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata [5 x i32]* %dataArray, metadata !75, metadata !DIExpression()), !dbg !76
  store i32 -1, i32* %data, align 4, !dbg !77
  store i32 7, i32* %data, align 4, !dbg !78
  %0 = load i32, i32* %data, align 4, !dbg !79
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %dataArray, i64 0, i64 2, !dbg !80
  store i32 %0, i32* %arrayidx, align 8, !dbg !81
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %dataArray, i64 0, i64 0, !dbg !82
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodG2BSink(i32* %arraydecay), !dbg !83
  ret void, !dbg !84
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !85 {
entry:
  %data = alloca i32, align 4
  %dataArray = alloca [5 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata [5 x i32]* %dataArray, metadata !88, metadata !DIExpression()), !dbg !89
  store i32 -1, i32* %data, align 4, !dbg !90
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !91
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !92
  %1 = load i32, i32* %data, align 4, !dbg !93
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %dataArray, i64 0, i64 2, !dbg !94
  store i32 %1, i32* %arrayidx, align 8, !dbg !95
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %dataArray, i64 0, i64 0, !dbg !96
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodB2GSink(i32* %arraydecay), !dbg !97
  ret void, !dbg !98
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_good() #0 !dbg !99 {
entry:
  call void @goodG2B(), !dbg !100
  call void @goodB2G(), !dbg !101
  ret void, !dbg !102
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink(i32* %dataArray) #0 !dbg !103 {
entry:
  %dataArray.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataArray, i32** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataArray.addr, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %data, metadata !109, metadata !DIExpression()), !dbg !110
  %0 = load i32*, i32** %dataArray.addr, align 8, !dbg !111
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 2, !dbg !111
  %1 = load i32, i32* %arrayidx, align 4, !dbg !111
  store i32 %1, i32* %data, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %i, metadata !112, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !115, metadata !DIExpression()), !dbg !119
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !119
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !119
  %3 = load i32, i32* %data, align 4, !dbg !120
  %cmp = icmp sge i32 %3, 0, !dbg !122
  br i1 %cmp, label %if.then, label %if.else, !dbg !123

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !124
  %idxprom = sext i32 %4 to i64, !dbg !126
  %arrayidx1 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !126
  store i32 1, i32* %arrayidx1, align 4, !dbg !127
  store i32 0, i32* %i, align 4, !dbg !128
  br label %for.cond, !dbg !130

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !131
  %cmp2 = icmp slt i32 %5, 10, !dbg !133
  br i1 %cmp2, label %for.body, label %for.end, !dbg !134

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !135
  %idxprom3 = sext i32 %6 to i64, !dbg !137
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !137
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !137
  call void @printIntLine(i32 %7), !dbg !138
  br label %for.inc, !dbg !139

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !140
  %inc = add nsw i32 %8, 1, !dbg !140
  store i32 %inc, i32* %i, align 4, !dbg !140
  br label %for.cond, !dbg !141, !llvm.loop !142

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !145

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !146
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !148
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodG2BSink(i32* %dataArray) #0 !dbg !149 {
entry:
  %dataArray.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataArray, i32** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataArray.addr, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %data, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load i32*, i32** %dataArray.addr, align 8, !dbg !154
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 2, !dbg !154
  %1 = load i32, i32* %arrayidx, align 4, !dbg !154
  store i32 %1, i32* %data, align 4, !dbg !153
  call void @llvm.dbg.declare(metadata i32* %i, metadata !155, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !158, metadata !DIExpression()), !dbg !159
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !159
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !159
  %3 = load i32, i32* %data, align 4, !dbg !160
  %cmp = icmp sge i32 %3, 0, !dbg !162
  br i1 %cmp, label %if.then, label %if.else, !dbg !163

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !164
  %idxprom = sext i32 %4 to i64, !dbg !166
  %arrayidx1 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !166
  store i32 1, i32* %arrayidx1, align 4, !dbg !167
  store i32 0, i32* %i, align 4, !dbg !168
  br label %for.cond, !dbg !170

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !171
  %cmp2 = icmp slt i32 %5, 10, !dbg !173
  br i1 %cmp2, label %for.body, label %for.end, !dbg !174

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !175
  %idxprom3 = sext i32 %6 to i64, !dbg !177
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !177
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !177
  call void @printIntLine(i32 %7), !dbg !178
  br label %for.inc, !dbg !179

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !180
  %inc = add nsw i32 %8, 1, !dbg !180
  store i32 %inc, i32* %i, align 4, !dbg !180
  br label %for.cond, !dbg !181, !llvm.loop !182

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !184

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !185
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !187
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodB2GSink(i32* %dataArray) #0 !dbg !188 {
entry:
  %dataArray.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataArray, i32** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataArray.addr, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %data, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = load i32*, i32** %dataArray.addr, align 8, !dbg !193
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 2, !dbg !193
  %1 = load i32, i32* %arrayidx, align 4, !dbg !193
  store i32 %1, i32* %data, align 4, !dbg !192
  call void @llvm.dbg.declare(metadata i32* %i, metadata !194, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !197, metadata !DIExpression()), !dbg !198
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !198
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !198
  %3 = load i32, i32* %data, align 4, !dbg !199
  %cmp = icmp sge i32 %3, 0, !dbg !201
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !202

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !203
  %cmp1 = icmp slt i32 %4, 10, !dbg !204
  br i1 %cmp1, label %if.then, label %if.else, !dbg !205

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !206
  %idxprom = sext i32 %5 to i64, !dbg !208
  %arrayidx2 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !208
  store i32 1, i32* %arrayidx2, align 4, !dbg !209
  store i32 0, i32* %i, align 4, !dbg !210
  br label %for.cond, !dbg !212

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !213
  %cmp3 = icmp slt i32 %6, 10, !dbg !215
  br i1 %cmp3, label %for.body, label %for.end, !dbg !216

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !217
  %idxprom4 = sext i32 %7 to i64, !dbg !219
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !219
  %8 = load i32, i32* %arrayidx5, align 4, !dbg !219
  call void @printIntLine(i32 %8), !dbg !220
  br label %for.inc, !dbg !221

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !222
  %inc = add nsw i32 %9, 1, !dbg !222
  store i32 %inc, i32* %i, align 4, !dbg !222
  br label %for.cond, !dbg !223, !llvm.loop !224

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !226

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !227
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !230 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !233, metadata !DIExpression()), !dbg !234
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !235
  %0 = load i8*, i8** %line.addr, align 8, !dbg !236
  %cmp = icmp ne i8* %0, null, !dbg !238
  br i1 %cmp, label %if.then, label %if.end, !dbg !239

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !240
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !242
  br label %if.end, !dbg !243

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !244
  ret void, !dbg !245
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !246 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !247, metadata !DIExpression()), !dbg !248
  %0 = load i8*, i8** %line.addr, align 8, !dbg !249
  %cmp = icmp ne i8* %0, null, !dbg !251
  br i1 %cmp, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !253
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !255
  br label %if.end, !dbg !256

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !257
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !258 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load i32*, i32** %line.addr, align 8, !dbg !266
  %cmp = icmp ne i32* %0, null, !dbg !268
  br i1 %cmp, label %if.then, label %if.end, !dbg !269

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !270
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !272
  br label %if.end, !dbg !273

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !274
}

declare dso_local i32 @wprintf(i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !275 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !280
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !281
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !283 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !289
  %conv = sext i16 %0 to i32, !dbg !289
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !290
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !292 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !298
  %conv = fpext float %0 to double, !dbg !298
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !299
  ret void, !dbg !300
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !301 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !307
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !308
  ret void, !dbg !309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !310 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !319
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !320
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !322 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !327, metadata !DIExpression()), !dbg !328
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !329
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !330
  ret void, !dbg !331
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !332 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !337
  %conv = sext i8 %0 to i32, !dbg !337
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !338
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !340 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !343, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !345, metadata !DIExpression()), !dbg !349
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !350
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !351
  store i32 %0, i32* %arrayidx, align 4, !dbg !352
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !353
  store i32 0, i32* %arrayidx1, align 4, !dbg !354
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !358 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !361, metadata !DIExpression()), !dbg !362
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !363
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !366 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !371
  %conv = zext i8 %0 to i32, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !374 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !381
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !383 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !393, metadata !DIExpression()), !dbg !394
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !395
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !396
  %1 = load i32, i32* %intOne, align 4, !dbg !396
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !397
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !398
  %3 = load i32, i32* %intTwo, align 4, !dbg !398
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !399
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !401 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !405, metadata !DIExpression()), !dbg !406
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !407, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata i64* %i, metadata !409, metadata !DIExpression()), !dbg !410
  store i64 0, i64* %i, align 8, !dbg !411
  br label %for.cond, !dbg !413

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !414
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !416
  %cmp = icmp ult i64 %0, %1, !dbg !417
  br i1 %cmp, label %for.body, label %for.end, !dbg !418

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !419
  %3 = load i64, i64* %i, align 8, !dbg !421
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !419
  %4 = load i8, i8* %arrayidx, align 1, !dbg !419
  %conv = zext i8 %4 to i32, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !422
  br label %for.inc, !dbg !423

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !424
  %inc = add i64 %5, 1, !dbg !424
  store i64 %inc, i64* %i, align 8, !dbg !424
  br label %for.cond, !dbg !425, !llvm.loop !426

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !428
  ret void, !dbg !429
}

declare dso_local i32 @puts(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !430 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !433, metadata !DIExpression()), !dbg !434
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !435, metadata !DIExpression()), !dbg !436
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !439, metadata !DIExpression()), !dbg !440
  store i64 0, i64* %numWritten, align 8, !dbg !440
  br label %while.cond, !dbg !441

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !442
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !443
  %cmp = icmp ult i64 %0, %1, !dbg !444
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !445

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #6, !dbg !446
  %2 = load i16*, i16** %call, align 8, !dbg !446
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !446
  %4 = load i64, i64* %numWritten, align 8, !dbg !446
  %mul = mul i64 2, %4, !dbg !446
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !446
  %5 = load i8, i8* %arrayidx, align 1, !dbg !446
  %conv = sext i8 %5 to i32, !dbg !446
  %idxprom = sext i32 %conv to i64, !dbg !446
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !446
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !446
  %conv2 = zext i16 %6 to i32, !dbg !446
  %and = and i32 %conv2, 4096, !dbg !446
  %tobool = icmp ne i32 %and, 0, !dbg !446
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !447

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #6, !dbg !448
  %7 = load i16*, i16** %call3, align 8, !dbg !448
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !448
  %9 = load i64, i64* %numWritten, align 8, !dbg !448
  %mul4 = mul i64 2, %9, !dbg !448
  %add = add i64 %mul4, 1, !dbg !448
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !448
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !448
  %conv6 = sext i8 %10 to i32, !dbg !448
  %idxprom7 = sext i32 %conv6 to i64, !dbg !448
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !448
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !448
  %conv9 = zext i16 %11 to i32, !dbg !448
  %and10 = and i32 %conv9, 4096, !dbg !448
  %tobool11 = icmp ne i32 %and10, 0, !dbg !447
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !449
  br i1 %12, label %while.body, label %while.end, !dbg !441

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !450, metadata !DIExpression()), !dbg !452
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !453
  %14 = load i64, i64* %numWritten, align 8, !dbg !454
  %mul12 = mul i64 2, %14, !dbg !455
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !453
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !456
  %15 = load i32, i32* %byte, align 4, !dbg !457
  %conv15 = trunc i32 %15 to i8, !dbg !458
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !459
  %17 = load i64, i64* %numWritten, align 8, !dbg !460
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !459
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !461
  %18 = load i64, i64* %numWritten, align 8, !dbg !462
  %inc = add i64 %18, 1, !dbg !462
  store i64 %inc, i64* %numWritten, align 8, !dbg !462
  br label %while.cond, !dbg !441, !llvm.loop !463

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !465
  ret i64 %19, !dbg !466
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !467 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !470, metadata !DIExpression()), !dbg !471
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !472, metadata !DIExpression()), !dbg !473
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !474, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !476, metadata !DIExpression()), !dbg !477
  store i64 0, i64* %numWritten, align 8, !dbg !477
  br label %while.cond, !dbg !478

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !479
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !480
  %cmp = icmp ult i64 %0, %1, !dbg !481
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !482

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !483
  %3 = load i64, i64* %numWritten, align 8, !dbg !484
  %mul = mul i64 2, %3, !dbg !485
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !483
  %4 = load i32, i32* %arrayidx, align 4, !dbg !483
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !486
  %tobool = icmp ne i32 %call, 0, !dbg !486
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !487

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !488
  %6 = load i64, i64* %numWritten, align 8, !dbg !489
  %mul1 = mul i64 2, %6, !dbg !490
  %add = add i64 %mul1, 1, !dbg !491
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !488
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !488
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !492
  %tobool4 = icmp ne i32 %call3, 0, !dbg !487
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !493
  br i1 %8, label %while.body, label %while.end, !dbg !478

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !494, metadata !DIExpression()), !dbg !496
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !497
  %10 = load i64, i64* %numWritten, align 8, !dbg !498
  %mul5 = mul i64 2, %10, !dbg !499
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !497
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !500
  %11 = load i32, i32* %byte, align 4, !dbg !501
  %conv = trunc i32 %11 to i8, !dbg !502
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !503
  %13 = load i64, i64* %numWritten, align 8, !dbg !504
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !503
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !505
  %14 = load i64, i64* %numWritten, align 8, !dbg !506
  %inc = add i64 %14, 1, !dbg !506
  store i64 %inc, i64* %numWritten, align 8, !dbg !506
  br label %while.cond, !dbg !478, !llvm.loop !507

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !509
  ret i64 %15, !dbg !510
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !511 {
entry:
  ret i32 1, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !515 {
entry:
  ret i32 0, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !517 {
entry:
  %call = call i32 @rand() #7, !dbg !518
  %rem = srem i32 %call, 2, !dbg !519
  ret i32 %rem, !dbg !520
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !521 {
entry:
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !523 {
entry:
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!44, !47, !2}
!llvm.ident = !{!49, !49, !49}
!llvm.module.flags = !{!50, !51, !52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_650/source_code")
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
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_650/source_code")
!46 = !{}
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_650/source_code")
!49 = !{!"clang version 12.0.0"}
!50 = !{i32 7, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad", scope: !45, file: !45, line: 25, type: !54, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!54 = !DISubroutineType(types: !55)
!55 = !{null}
!56 = !DILocalVariable(name: "data", scope: !53, file: !45, line: 27, type: !23)
!57 = !DILocation(line: 27, column: 9, scope: !53)
!58 = !DILocalVariable(name: "dataArray", scope: !53, file: !45, line: 28, type: !59)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 5)
!62 = !DILocation(line: 28, column: 9, scope: !53)
!63 = !DILocation(line: 30, column: 10, scope: !53)
!64 = !DILocation(line: 32, column: 12, scope: !53)
!65 = !DILocation(line: 32, column: 5, scope: !53)
!66 = !DILocation(line: 34, column: 20, scope: !53)
!67 = !DILocation(line: 34, column: 5, scope: !53)
!68 = !DILocation(line: 34, column: 18, scope: !53)
!69 = !DILocation(line: 35, column: 67, scope: !53)
!70 = !DILocation(line: 35, column: 5, scope: !53)
!71 = !DILocation(line: 36, column: 1, scope: !53)
!72 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 44, type: !54, scopeLine: 45, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!73 = !DILocalVariable(name: "data", scope: !72, file: !45, line: 46, type: !23)
!74 = !DILocation(line: 46, column: 9, scope: !72)
!75 = !DILocalVariable(name: "dataArray", scope: !72, file: !45, line: 47, type: !59)
!76 = !DILocation(line: 47, column: 9, scope: !72)
!77 = !DILocation(line: 49, column: 10, scope: !72)
!78 = !DILocation(line: 52, column: 10, scope: !72)
!79 = !DILocation(line: 53, column: 20, scope: !72)
!80 = !DILocation(line: 53, column: 5, scope: !72)
!81 = !DILocation(line: 53, column: 18, scope: !72)
!82 = !DILocation(line: 54, column: 71, scope: !72)
!83 = !DILocation(line: 54, column: 5, scope: !72)
!84 = !DILocation(line: 55, column: 1, scope: !72)
!85 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 59, type: !54, scopeLine: 60, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!86 = !DILocalVariable(name: "data", scope: !85, file: !45, line: 61, type: !23)
!87 = !DILocation(line: 61, column: 9, scope: !85)
!88 = !DILocalVariable(name: "dataArray", scope: !85, file: !45, line: 62, type: !59)
!89 = !DILocation(line: 62, column: 9, scope: !85)
!90 = !DILocation(line: 64, column: 10, scope: !85)
!91 = !DILocation(line: 66, column: 12, scope: !85)
!92 = !DILocation(line: 66, column: 5, scope: !85)
!93 = !DILocation(line: 67, column: 20, scope: !85)
!94 = !DILocation(line: 67, column: 5, scope: !85)
!95 = !DILocation(line: 67, column: 18, scope: !85)
!96 = !DILocation(line: 68, column: 71, scope: !85)
!97 = !DILocation(line: 68, column: 5, scope: !85)
!98 = !DILocation(line: 69, column: 1, scope: !85)
!99 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_good", scope: !45, file: !45, line: 71, type: !54, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!100 = !DILocation(line: 73, column: 5, scope: !99)
!101 = !DILocation(line: 74, column: 5, scope: !99)
!102 = !DILocation(line: 75, column: 1, scope: !99)
!103 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink", scope: !48, file: !48, line: 22, type: !104, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!107 = !DILocalVariable(name: "dataArray", arg: 1, scope: !103, file: !48, line: 22, type: !106)
!108 = !DILocation(line: 22, column: 72, scope: !103)
!109 = !DILocalVariable(name: "data", scope: !103, file: !48, line: 25, type: !23)
!110 = !DILocation(line: 25, column: 9, scope: !103)
!111 = !DILocation(line: 25, column: 16, scope: !103)
!112 = !DILocalVariable(name: "i", scope: !113, file: !48, line: 27, type: !23)
!113 = distinct !DILexicalBlock(scope: !103, file: !48, line: 26, column: 5)
!114 = !DILocation(line: 27, column: 13, scope: !113)
!115 = !DILocalVariable(name: "buffer", scope: !113, file: !48, line: 28, type: !116)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 10)
!119 = !DILocation(line: 28, column: 13, scope: !113)
!120 = !DILocation(line: 31, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !113, file: !48, line: 31, column: 13)
!122 = !DILocation(line: 31, column: 18, scope: !121)
!123 = !DILocation(line: 31, column: 13, scope: !113)
!124 = !DILocation(line: 33, column: 20, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !48, line: 32, column: 9)
!126 = !DILocation(line: 33, column: 13, scope: !125)
!127 = !DILocation(line: 33, column: 26, scope: !125)
!128 = !DILocation(line: 35, column: 19, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !48, line: 35, column: 13)
!130 = !DILocation(line: 35, column: 17, scope: !129)
!131 = !DILocation(line: 35, column: 24, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !48, line: 35, column: 13)
!133 = !DILocation(line: 35, column: 26, scope: !132)
!134 = !DILocation(line: 35, column: 13, scope: !129)
!135 = !DILocation(line: 37, column: 37, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !48, line: 36, column: 13)
!137 = !DILocation(line: 37, column: 30, scope: !136)
!138 = !DILocation(line: 37, column: 17, scope: !136)
!139 = !DILocation(line: 38, column: 13, scope: !136)
!140 = !DILocation(line: 35, column: 33, scope: !132)
!141 = !DILocation(line: 35, column: 13, scope: !132)
!142 = distinct !{!142, !134, !143, !144}
!143 = !DILocation(line: 38, column: 13, scope: !129)
!144 = !{!"llvm.loop.mustprogress"}
!145 = !DILocation(line: 39, column: 9, scope: !125)
!146 = !DILocation(line: 42, column: 13, scope: !147)
!147 = distinct !DILexicalBlock(scope: !121, file: !48, line: 41, column: 9)
!148 = !DILocation(line: 45, column: 1, scope: !103)
!149 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodG2BSink", scope: !48, file: !48, line: 52, type: !104, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!150 = !DILocalVariable(name: "dataArray", arg: 1, scope: !149, file: !48, line: 52, type: !106)
!151 = !DILocation(line: 52, column: 76, scope: !149)
!152 = !DILocalVariable(name: "data", scope: !149, file: !48, line: 54, type: !23)
!153 = !DILocation(line: 54, column: 9, scope: !149)
!154 = !DILocation(line: 54, column: 16, scope: !149)
!155 = !DILocalVariable(name: "i", scope: !156, file: !48, line: 56, type: !23)
!156 = distinct !DILexicalBlock(scope: !149, file: !48, line: 55, column: 5)
!157 = !DILocation(line: 56, column: 13, scope: !156)
!158 = !DILocalVariable(name: "buffer", scope: !156, file: !48, line: 57, type: !116)
!159 = !DILocation(line: 57, column: 13, scope: !156)
!160 = !DILocation(line: 60, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !48, line: 60, column: 13)
!162 = !DILocation(line: 60, column: 18, scope: !161)
!163 = !DILocation(line: 60, column: 13, scope: !156)
!164 = !DILocation(line: 62, column: 20, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !48, line: 61, column: 9)
!166 = !DILocation(line: 62, column: 13, scope: !165)
!167 = !DILocation(line: 62, column: 26, scope: !165)
!168 = !DILocation(line: 64, column: 19, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !48, line: 64, column: 13)
!170 = !DILocation(line: 64, column: 17, scope: !169)
!171 = !DILocation(line: 64, column: 24, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !48, line: 64, column: 13)
!173 = !DILocation(line: 64, column: 26, scope: !172)
!174 = !DILocation(line: 64, column: 13, scope: !169)
!175 = !DILocation(line: 66, column: 37, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !48, line: 65, column: 13)
!177 = !DILocation(line: 66, column: 30, scope: !176)
!178 = !DILocation(line: 66, column: 17, scope: !176)
!179 = !DILocation(line: 67, column: 13, scope: !176)
!180 = !DILocation(line: 64, column: 33, scope: !172)
!181 = !DILocation(line: 64, column: 13, scope: !172)
!182 = distinct !{!182, !174, !183, !144}
!183 = !DILocation(line: 67, column: 13, scope: !169)
!184 = !DILocation(line: 68, column: 9, scope: !165)
!185 = !DILocation(line: 71, column: 13, scope: !186)
!186 = distinct !DILexicalBlock(scope: !161, file: !48, line: 70, column: 9)
!187 = !DILocation(line: 74, column: 1, scope: !149)
!188 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodB2GSink", scope: !48, file: !48, line: 77, type: !104, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!189 = !DILocalVariable(name: "dataArray", arg: 1, scope: !188, file: !48, line: 77, type: !106)
!190 = !DILocation(line: 77, column: 76, scope: !188)
!191 = !DILocalVariable(name: "data", scope: !188, file: !48, line: 79, type: !23)
!192 = !DILocation(line: 79, column: 9, scope: !188)
!193 = !DILocation(line: 79, column: 16, scope: !188)
!194 = !DILocalVariable(name: "i", scope: !195, file: !48, line: 81, type: !23)
!195 = distinct !DILexicalBlock(scope: !188, file: !48, line: 80, column: 5)
!196 = !DILocation(line: 81, column: 13, scope: !195)
!197 = !DILocalVariable(name: "buffer", scope: !195, file: !48, line: 82, type: !116)
!198 = !DILocation(line: 82, column: 13, scope: !195)
!199 = !DILocation(line: 84, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !48, line: 84, column: 13)
!201 = !DILocation(line: 84, column: 18, scope: !200)
!202 = !DILocation(line: 84, column: 23, scope: !200)
!203 = !DILocation(line: 84, column: 26, scope: !200)
!204 = !DILocation(line: 84, column: 31, scope: !200)
!205 = !DILocation(line: 84, column: 13, scope: !195)
!206 = !DILocation(line: 86, column: 20, scope: !207)
!207 = distinct !DILexicalBlock(scope: !200, file: !48, line: 85, column: 9)
!208 = !DILocation(line: 86, column: 13, scope: !207)
!209 = !DILocation(line: 86, column: 26, scope: !207)
!210 = !DILocation(line: 88, column: 19, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !48, line: 88, column: 13)
!212 = !DILocation(line: 88, column: 17, scope: !211)
!213 = !DILocation(line: 88, column: 24, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !48, line: 88, column: 13)
!215 = !DILocation(line: 88, column: 26, scope: !214)
!216 = !DILocation(line: 88, column: 13, scope: !211)
!217 = !DILocation(line: 90, column: 37, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !48, line: 89, column: 13)
!219 = !DILocation(line: 90, column: 30, scope: !218)
!220 = !DILocation(line: 90, column: 17, scope: !218)
!221 = !DILocation(line: 91, column: 13, scope: !218)
!222 = !DILocation(line: 88, column: 33, scope: !214)
!223 = !DILocation(line: 88, column: 13, scope: !214)
!224 = distinct !{!224, !216, !225, !144}
!225 = !DILocation(line: 91, column: 13, scope: !211)
!226 = !DILocation(line: 92, column: 9, scope: !207)
!227 = !DILocation(line: 95, column: 13, scope: !228)
!228 = distinct !DILexicalBlock(scope: !200, file: !48, line: 94, column: 9)
!229 = !DILocation(line: 98, column: 1, scope: !188)
!230 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !231, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !42}
!233 = !DILocalVariable(name: "line", arg: 1, scope: !230, file: !3, line: 11, type: !42)
!234 = !DILocation(line: 11, column: 25, scope: !230)
!235 = !DILocation(line: 13, column: 1, scope: !230)
!236 = !DILocation(line: 14, column: 8, scope: !237)
!237 = distinct !DILexicalBlock(scope: !230, file: !3, line: 14, column: 8)
!238 = !DILocation(line: 14, column: 13, scope: !237)
!239 = !DILocation(line: 14, column: 8, scope: !230)
!240 = !DILocation(line: 16, column: 24, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !3, line: 15, column: 5)
!242 = !DILocation(line: 16, column: 9, scope: !241)
!243 = !DILocation(line: 17, column: 5, scope: !241)
!244 = !DILocation(line: 18, column: 5, scope: !230)
!245 = !DILocation(line: 19, column: 1, scope: !230)
!246 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !231, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!247 = !DILocalVariable(name: "line", arg: 1, scope: !246, file: !3, line: 20, type: !42)
!248 = !DILocation(line: 20, column: 29, scope: !246)
!249 = !DILocation(line: 22, column: 8, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 22, column: 8)
!251 = !DILocation(line: 22, column: 13, scope: !250)
!252 = !DILocation(line: 22, column: 8, scope: !246)
!253 = !DILocation(line: 24, column: 24, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !3, line: 23, column: 5)
!255 = !DILocation(line: 24, column: 9, scope: !254)
!256 = !DILocation(line: 25, column: 5, scope: !254)
!257 = !DILocation(line: 26, column: 1, scope: !246)
!258 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !259, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !263, line: 74, baseType: !23)
!263 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!264 = !DILocalVariable(name: "line", arg: 1, scope: !258, file: !3, line: 27, type: !261)
!265 = !DILocation(line: 27, column: 29, scope: !258)
!266 = !DILocation(line: 29, column: 8, scope: !267)
!267 = distinct !DILexicalBlock(scope: !258, file: !3, line: 29, column: 8)
!268 = !DILocation(line: 29, column: 13, scope: !267)
!269 = !DILocation(line: 29, column: 8, scope: !258)
!270 = !DILocation(line: 31, column: 27, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !3, line: 30, column: 5)
!272 = !DILocation(line: 31, column: 9, scope: !271)
!273 = !DILocation(line: 32, column: 5, scope: !271)
!274 = !DILocation(line: 33, column: 1, scope: !258)
!275 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !276, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !23}
!278 = !DILocalVariable(name: "intNumber", arg: 1, scope: !275, file: !3, line: 35, type: !23)
!279 = !DILocation(line: 35, column: 24, scope: !275)
!280 = !DILocation(line: 37, column: 20, scope: !275)
!281 = !DILocation(line: 37, column: 5, scope: !275)
!282 = !DILocation(line: 38, column: 1, scope: !275)
!283 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !284, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !286}
!286 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!287 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !283, file: !3, line: 40, type: !286)
!288 = !DILocation(line: 40, column: 28, scope: !283)
!289 = !DILocation(line: 42, column: 21, scope: !283)
!290 = !DILocation(line: 42, column: 5, scope: !283)
!291 = !DILocation(line: 43, column: 1, scope: !283)
!292 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !293, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295}
!295 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!296 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !292, file: !3, line: 45, type: !295)
!297 = !DILocation(line: 45, column: 28, scope: !292)
!298 = !DILocation(line: 47, column: 20, scope: !292)
!299 = !DILocation(line: 47, column: 5, scope: !292)
!300 = !DILocation(line: 48, column: 1, scope: !292)
!301 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !302, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !304}
!304 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!305 = !DILocalVariable(name: "longNumber", arg: 1, scope: !301, file: !3, line: 50, type: !304)
!306 = !DILocation(line: 50, column: 26, scope: !301)
!307 = !DILocation(line: 52, column: 21, scope: !301)
!308 = !DILocation(line: 52, column: 5, scope: !301)
!309 = !DILocation(line: 53, column: 1, scope: !301)
!310 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !311, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !313}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !314, line: 27, baseType: !315)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !316, line: 44, baseType: !304)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!317 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !310, file: !3, line: 55, type: !313)
!318 = !DILocation(line: 55, column: 33, scope: !310)
!319 = !DILocation(line: 57, column: 29, scope: !310)
!320 = !DILocation(line: 57, column: 5, scope: !310)
!321 = !DILocation(line: 58, column: 1, scope: !310)
!322 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !323, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !325}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !263, line: 46, baseType: !326)
!326 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!327 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !322, file: !3, line: 60, type: !325)
!328 = !DILocation(line: 60, column: 29, scope: !322)
!329 = !DILocation(line: 62, column: 21, scope: !322)
!330 = !DILocation(line: 62, column: 5, scope: !322)
!331 = !DILocation(line: 63, column: 1, scope: !322)
!332 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !333, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !43}
!335 = !DILocalVariable(name: "charHex", arg: 1, scope: !332, file: !3, line: 65, type: !43)
!336 = !DILocation(line: 65, column: 29, scope: !332)
!337 = !DILocation(line: 67, column: 22, scope: !332)
!338 = !DILocation(line: 67, column: 5, scope: !332)
!339 = !DILocation(line: 68, column: 1, scope: !332)
!340 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !341, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !262}
!343 = !DILocalVariable(name: "wideChar", arg: 1, scope: !340, file: !3, line: 70, type: !262)
!344 = !DILocation(line: 70, column: 29, scope: !340)
!345 = !DILocalVariable(name: "s", scope: !340, file: !3, line: 74, type: !346)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 64, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 2)
!349 = !DILocation(line: 74, column: 13, scope: !340)
!350 = !DILocation(line: 75, column: 16, scope: !340)
!351 = !DILocation(line: 75, column: 9, scope: !340)
!352 = !DILocation(line: 75, column: 14, scope: !340)
!353 = !DILocation(line: 76, column: 9, scope: !340)
!354 = !DILocation(line: 76, column: 14, scope: !340)
!355 = !DILocation(line: 77, column: 21, scope: !340)
!356 = !DILocation(line: 77, column: 5, scope: !340)
!357 = !DILocation(line: 78, column: 1, scope: !340)
!358 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !359, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !7}
!361 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !358, file: !3, line: 80, type: !7)
!362 = !DILocation(line: 80, column: 33, scope: !358)
!363 = !DILocation(line: 82, column: 20, scope: !358)
!364 = !DILocation(line: 82, column: 5, scope: !358)
!365 = !DILocation(line: 83, column: 1, scope: !358)
!366 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !367, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !25}
!369 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !366, file: !3, line: 85, type: !25)
!370 = !DILocation(line: 85, column: 45, scope: !366)
!371 = !DILocation(line: 87, column: 22, scope: !366)
!372 = !DILocation(line: 87, column: 5, scope: !366)
!373 = !DILocation(line: 88, column: 1, scope: !366)
!374 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !375, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377}
!377 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!378 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !374, file: !3, line: 90, type: !377)
!379 = !DILocation(line: 90, column: 29, scope: !374)
!380 = !DILocation(line: 92, column: 20, scope: !374)
!381 = !DILocation(line: 92, column: 5, scope: !374)
!382 = !DILocation(line: 93, column: 1, scope: !374)
!383 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !384, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !388, line: 100, baseType: !389)
!388 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_650/source_code")
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !388, line: 96, size: 64, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !389, file: !388, line: 98, baseType: !23, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !389, file: !388, line: 99, baseType: !23, size: 32, offset: 32)
!393 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !383, file: !3, line: 95, type: !386)
!394 = !DILocation(line: 95, column: 40, scope: !383)
!395 = !DILocation(line: 97, column: 26, scope: !383)
!396 = !DILocation(line: 97, column: 47, scope: !383)
!397 = !DILocation(line: 97, column: 55, scope: !383)
!398 = !DILocation(line: 97, column: 76, scope: !383)
!399 = !DILocation(line: 97, column: 5, scope: !383)
!400 = !DILocation(line: 98, column: 1, scope: !383)
!401 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !402, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !404, !325}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!405 = !DILocalVariable(name: "bytes", arg: 1, scope: !401, file: !3, line: 100, type: !404)
!406 = !DILocation(line: 100, column: 38, scope: !401)
!407 = !DILocalVariable(name: "numBytes", arg: 2, scope: !401, file: !3, line: 100, type: !325)
!408 = !DILocation(line: 100, column: 52, scope: !401)
!409 = !DILocalVariable(name: "i", scope: !401, file: !3, line: 102, type: !325)
!410 = !DILocation(line: 102, column: 12, scope: !401)
!411 = !DILocation(line: 103, column: 12, scope: !412)
!412 = distinct !DILexicalBlock(scope: !401, file: !3, line: 103, column: 5)
!413 = !DILocation(line: 103, column: 10, scope: !412)
!414 = !DILocation(line: 103, column: 17, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !3, line: 103, column: 5)
!416 = !DILocation(line: 103, column: 21, scope: !415)
!417 = !DILocation(line: 103, column: 19, scope: !415)
!418 = !DILocation(line: 103, column: 5, scope: !412)
!419 = !DILocation(line: 105, column: 24, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !3, line: 104, column: 5)
!421 = !DILocation(line: 105, column: 30, scope: !420)
!422 = !DILocation(line: 105, column: 9, scope: !420)
!423 = !DILocation(line: 106, column: 5, scope: !420)
!424 = !DILocation(line: 103, column: 31, scope: !415)
!425 = !DILocation(line: 103, column: 5, scope: !415)
!426 = distinct !{!426, !418, !427, !144}
!427 = !DILocation(line: 106, column: 5, scope: !412)
!428 = !DILocation(line: 107, column: 5, scope: !401)
!429 = !DILocation(line: 108, column: 1, scope: !401)
!430 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !431, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{!325, !404, !325, !42}
!433 = !DILocalVariable(name: "bytes", arg: 1, scope: !430, file: !3, line: 113, type: !404)
!434 = !DILocation(line: 113, column: 39, scope: !430)
!435 = !DILocalVariable(name: "numBytes", arg: 2, scope: !430, file: !3, line: 113, type: !325)
!436 = !DILocation(line: 113, column: 53, scope: !430)
!437 = !DILocalVariable(name: "hex", arg: 3, scope: !430, file: !3, line: 113, type: !42)
!438 = !DILocation(line: 113, column: 71, scope: !430)
!439 = !DILocalVariable(name: "numWritten", scope: !430, file: !3, line: 115, type: !325)
!440 = !DILocation(line: 115, column: 12, scope: !430)
!441 = !DILocation(line: 121, column: 5, scope: !430)
!442 = !DILocation(line: 121, column: 12, scope: !430)
!443 = !DILocation(line: 121, column: 25, scope: !430)
!444 = !DILocation(line: 121, column: 23, scope: !430)
!445 = !DILocation(line: 121, column: 34, scope: !430)
!446 = !DILocation(line: 121, column: 37, scope: !430)
!447 = !DILocation(line: 121, column: 67, scope: !430)
!448 = !DILocation(line: 121, column: 70, scope: !430)
!449 = !DILocation(line: 0, scope: !430)
!450 = !DILocalVariable(name: "byte", scope: !451, file: !3, line: 123, type: !23)
!451 = distinct !DILexicalBlock(scope: !430, file: !3, line: 122, column: 5)
!452 = !DILocation(line: 123, column: 13, scope: !451)
!453 = !DILocation(line: 124, column: 17, scope: !451)
!454 = !DILocation(line: 124, column: 25, scope: !451)
!455 = !DILocation(line: 124, column: 23, scope: !451)
!456 = !DILocation(line: 124, column: 9, scope: !451)
!457 = !DILocation(line: 125, column: 45, scope: !451)
!458 = !DILocation(line: 125, column: 29, scope: !451)
!459 = !DILocation(line: 125, column: 9, scope: !451)
!460 = !DILocation(line: 125, column: 15, scope: !451)
!461 = !DILocation(line: 125, column: 27, scope: !451)
!462 = !DILocation(line: 126, column: 9, scope: !451)
!463 = distinct !{!463, !441, !464, !144}
!464 = !DILocation(line: 127, column: 5, scope: !430)
!465 = !DILocation(line: 129, column: 12, scope: !430)
!466 = !DILocation(line: 129, column: 5, scope: !430)
!467 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !468, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!468 = !DISubroutineType(types: !469)
!469 = !{!325, !404, !325, !261}
!470 = !DILocalVariable(name: "bytes", arg: 1, scope: !467, file: !3, line: 135, type: !404)
!471 = !DILocation(line: 135, column: 41, scope: !467)
!472 = !DILocalVariable(name: "numBytes", arg: 2, scope: !467, file: !3, line: 135, type: !325)
!473 = !DILocation(line: 135, column: 55, scope: !467)
!474 = !DILocalVariable(name: "hex", arg: 3, scope: !467, file: !3, line: 135, type: !261)
!475 = !DILocation(line: 135, column: 76, scope: !467)
!476 = !DILocalVariable(name: "numWritten", scope: !467, file: !3, line: 137, type: !325)
!477 = !DILocation(line: 137, column: 12, scope: !467)
!478 = !DILocation(line: 143, column: 5, scope: !467)
!479 = !DILocation(line: 143, column: 12, scope: !467)
!480 = !DILocation(line: 143, column: 25, scope: !467)
!481 = !DILocation(line: 143, column: 23, scope: !467)
!482 = !DILocation(line: 143, column: 34, scope: !467)
!483 = !DILocation(line: 143, column: 47, scope: !467)
!484 = !DILocation(line: 143, column: 55, scope: !467)
!485 = !DILocation(line: 143, column: 53, scope: !467)
!486 = !DILocation(line: 143, column: 37, scope: !467)
!487 = !DILocation(line: 143, column: 68, scope: !467)
!488 = !DILocation(line: 143, column: 81, scope: !467)
!489 = !DILocation(line: 143, column: 89, scope: !467)
!490 = !DILocation(line: 143, column: 87, scope: !467)
!491 = !DILocation(line: 143, column: 100, scope: !467)
!492 = !DILocation(line: 143, column: 71, scope: !467)
!493 = !DILocation(line: 0, scope: !467)
!494 = !DILocalVariable(name: "byte", scope: !495, file: !3, line: 145, type: !23)
!495 = distinct !DILexicalBlock(scope: !467, file: !3, line: 144, column: 5)
!496 = !DILocation(line: 145, column: 13, scope: !495)
!497 = !DILocation(line: 146, column: 18, scope: !495)
!498 = !DILocation(line: 146, column: 26, scope: !495)
!499 = !DILocation(line: 146, column: 24, scope: !495)
!500 = !DILocation(line: 146, column: 9, scope: !495)
!501 = !DILocation(line: 147, column: 45, scope: !495)
!502 = !DILocation(line: 147, column: 29, scope: !495)
!503 = !DILocation(line: 147, column: 9, scope: !495)
!504 = !DILocation(line: 147, column: 15, scope: !495)
!505 = !DILocation(line: 147, column: 27, scope: !495)
!506 = !DILocation(line: 148, column: 9, scope: !495)
!507 = distinct !{!507, !478, !508, !144}
!508 = !DILocation(line: 149, column: 5, scope: !467)
!509 = !DILocation(line: 151, column: 12, scope: !467)
!510 = !DILocation(line: 151, column: 5, scope: !467)
!511 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !512, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DISubroutineType(types: !513)
!513 = !{!23}
!514 = !DILocation(line: 158, column: 5, scope: !511)
!515 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !512, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DILocation(line: 163, column: 5, scope: !515)
!517 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !512, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DILocation(line: 168, column: 13, scope: !517)
!519 = !DILocation(line: 168, column: 20, scope: !517)
!520 = !DILocation(line: 168, column: 5, scope: !517)
!521 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !54, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DILocation(line: 187, column: 16, scope: !521)
!523 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !54, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 188, column: 16, scope: !523)
!525 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !54, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 189, column: 16, scope: !525)
!527 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !54, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 190, column: 16, scope: !527)
!529 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !54, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 191, column: 16, scope: !529)
!531 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !54, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 192, column: 16, scope: !531)
!533 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !54, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 193, column: 16, scope: !533)
!535 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !54, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 194, column: 16, scope: !535)
!537 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !54, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 195, column: 16, scope: !537)
!539 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !54, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 198, column: 15, scope: !539)
!541 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !54, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 199, column: 15, scope: !541)
!543 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !54, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 200, column: 15, scope: !543)
!545 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !54, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 201, column: 15, scope: !545)
!547 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !54, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 202, column: 15, scope: !547)
!549 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !54, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 203, column: 15, scope: !549)
!551 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !54, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 204, column: 15, scope: !551)
!553 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !54, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 205, column: 15, scope: !553)
!555 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !54, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 206, column: 15, scope: !555)
