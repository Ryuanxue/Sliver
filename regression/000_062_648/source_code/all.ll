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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_bad() #0 !dbg !55 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 -1, i32* %data, align 4, !dbg !60
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !61
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !62
  %1 = bitcast i32* %data to i8*, !dbg !63
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_badSink(i8* %1), !dbg !64
  ret void, !dbg !65
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !66 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 -1, i32* %data, align 4, !dbg !69
  store i32 7, i32* %data, align 4, !dbg !70
  %0 = bitcast i32* %data to i8*, !dbg !71
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodG2BSink(i8* %0), !dbg !72
  ret void, !dbg !73
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !74 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !75, metadata !DIExpression()), !dbg !76
  store i32 -1, i32* %data, align 4, !dbg !77
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !78
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !79
  %1 = bitcast i32* %data to i8*, !dbg !80
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink(i8* %1), !dbg !81
  ret void, !dbg !82
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_good() #0 !dbg !83 {
entry:
  call void @goodG2B(), !dbg !84
  call void @goodB2G(), !dbg !85
  ret void, !dbg !86
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_badSink(i8* %dataVoidPtr) #0 !dbg !87 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32** %dataPtr, metadata !92, metadata !DIExpression()), !dbg !93
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !94
  %1 = bitcast i8* %0 to i32*, !dbg !95
  store i32* %1, i32** %dataPtr, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata i32* %data, metadata !96, metadata !DIExpression()), !dbg !97
  %2 = load i32*, i32** %dataPtr, align 8, !dbg !98
  %3 = load i32, i32* %2, align 4, !dbg !99
  store i32 %3, i32* %data, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %i, metadata !100, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !103, metadata !DIExpression()), !dbg !107
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !107
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !107
  %5 = load i32, i32* %data, align 4, !dbg !108
  %cmp = icmp sge i32 %5, 0, !dbg !110
  br i1 %cmp, label %if.then, label %if.else, !dbg !111

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %data, align 4, !dbg !112
  %idxprom = sext i32 %6 to i64, !dbg !114
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !114
  store i32 1, i32* %arrayidx, align 4, !dbg !115
  store i32 0, i32* %i, align 4, !dbg !116
  br label %for.cond, !dbg !118

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !dbg !119
  %cmp1 = icmp slt i32 %7, 10, !dbg !121
  br i1 %cmp1, label %for.body, label %for.end, !dbg !122

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !123
  %idxprom2 = sext i32 %8 to i64, !dbg !125
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !125
  %9 = load i32, i32* %arrayidx3, align 4, !dbg !125
  call void @printIntLine(i32 %9), !dbg !126
  br label %for.inc, !dbg !127

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !128
  %inc = add nsw i32 %10, 1, !dbg !128
  store i32 %inc, i32* %i, align 4, !dbg !128
  br label %for.cond, !dbg !129, !llvm.loop !130

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !133

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !134
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !136
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodG2BSink(i8* %dataVoidPtr) #0 !dbg !137 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32** %dataPtr, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !142
  %1 = bitcast i8* %0 to i32*, !dbg !143
  store i32* %1, i32** %dataPtr, align 8, !dbg !141
  call void @llvm.dbg.declare(metadata i32* %data, metadata !144, metadata !DIExpression()), !dbg !145
  %2 = load i32*, i32** %dataPtr, align 8, !dbg !146
  %3 = load i32, i32* %2, align 4, !dbg !147
  store i32 %3, i32* %data, align 4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %i, metadata !148, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !151, metadata !DIExpression()), !dbg !152
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !152
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !152
  %5 = load i32, i32* %data, align 4, !dbg !153
  %cmp = icmp sge i32 %5, 0, !dbg !155
  br i1 %cmp, label %if.then, label %if.else, !dbg !156

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %data, align 4, !dbg !157
  %idxprom = sext i32 %6 to i64, !dbg !159
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !159
  store i32 1, i32* %arrayidx, align 4, !dbg !160
  store i32 0, i32* %i, align 4, !dbg !161
  br label %for.cond, !dbg !163

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !dbg !164
  %cmp1 = icmp slt i32 %7, 10, !dbg !166
  br i1 %cmp1, label %for.body, label %for.end, !dbg !167

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !168
  %idxprom2 = sext i32 %8 to i64, !dbg !170
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !170
  %9 = load i32, i32* %arrayidx3, align 4, !dbg !170
  call void @printIntLine(i32 %9), !dbg !171
  br label %for.inc, !dbg !172

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !173
  %inc = add nsw i32 %10, 1, !dbg !173
  store i32 %inc, i32* %i, align 4, !dbg !173
  br label %for.cond, !dbg !174, !llvm.loop !175

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !177

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !178
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !180
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink(i8* %dataVoidPtr) #0 !dbg !181 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32** %dataPtr, metadata !184, metadata !DIExpression()), !dbg !185
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !186
  %1 = bitcast i8* %0 to i32*, !dbg !187
  store i32* %1, i32** %dataPtr, align 8, !dbg !185
  call void @llvm.dbg.declare(metadata i32* %data, metadata !188, metadata !DIExpression()), !dbg !189
  %2 = load i32*, i32** %dataPtr, align 8, !dbg !190
  %3 = load i32, i32* %2, align 4, !dbg !191
  store i32 %3, i32* %data, align 4, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %i, metadata !192, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !195, metadata !DIExpression()), !dbg !196
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !196
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !196
  %5 = load i32, i32* %data, align 4, !dbg !197
  %cmp = icmp sge i32 %5, 0, !dbg !199
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !200

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %data, align 4, !dbg !201
  %cmp1 = icmp slt i32 %6, 10, !dbg !202
  br i1 %cmp1, label %if.then, label %if.else, !dbg !203

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !204
  %idxprom = sext i32 %7 to i64, !dbg !206
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !206
  store i32 1, i32* %arrayidx, align 4, !dbg !207
  store i32 0, i32* %i, align 4, !dbg !208
  br label %for.cond, !dbg !210

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !dbg !211
  %cmp2 = icmp slt i32 %8, 10, !dbg !213
  br i1 %cmp2, label %for.body, label %for.end, !dbg !214

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !215
  %idxprom3 = sext i32 %9 to i64, !dbg !217
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !217
  %10 = load i32, i32* %arrayidx4, align 4, !dbg !217
  call void @printIntLine(i32 %10), !dbg !218
  br label %for.inc, !dbg !219

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !220
  %inc = add nsw i32 %11, 1, !dbg !220
  store i32 %inc, i32* %i, align 4, !dbg !220
  br label %for.cond, !dbg !221, !llvm.loop !222

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !224

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !225
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !228 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !231, metadata !DIExpression()), !dbg !232
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !233
  %0 = load i8*, i8** %line.addr, align 8, !dbg !234
  %cmp = icmp ne i8* %0, null, !dbg !236
  br i1 %cmp, label %if.then, label %if.end, !dbg !237

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !238
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !240
  br label %if.end, !dbg !241

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !242
  ret void, !dbg !243
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !244 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i8*, i8** %line.addr, align 8, !dbg !247
  %cmp = icmp ne i8* %0, null, !dbg !249
  br i1 %cmp, label %if.then, label %if.end, !dbg !250

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !251
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !253
  br label %if.end, !dbg !254

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !256 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !262, metadata !DIExpression()), !dbg !263
  %0 = load i32*, i32** %line.addr, align 8, !dbg !264
  %cmp = icmp ne i32* %0, null, !dbg !266
  br i1 %cmp, label %if.then, label %if.end, !dbg !267

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !268
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !270
  br label %if.end, !dbg !271

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !272
}

declare dso_local i32 @wprintf(i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !273 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !276, metadata !DIExpression()), !dbg !277
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !278
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !279
  ret void, !dbg !280
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !281 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !287
  %conv = sext i16 %0 to i32, !dbg !287
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !288
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !290 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !296
  %conv = fpext float %0 to double, !dbg !296
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !299 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !305
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !306
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !308 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !315, metadata !DIExpression()), !dbg !316
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !317
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !318
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !320 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !327
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !328
  ret void, !dbg !329
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !330 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !335
  %conv = sext i8 %0 to i32, !dbg !335
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !338 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !343, metadata !DIExpression()), !dbg !347
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !348
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !349
  store i32 %0, i32* %arrayidx, align 4, !dbg !350
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !351
  store i32 0, i32* %arrayidx1, align 4, !dbg !352
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !356 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !361
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !362
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !364 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !369
  %conv = zext i8 %0 to i32, !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !372 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !381 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !393
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !394
  %1 = load i32, i32* %intOne, align 4, !dbg !394
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !395
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !396
  %3 = load i32, i32* %intTwo, align 4, !dbg !396
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !397
  ret void, !dbg !398
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !399 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !403, metadata !DIExpression()), !dbg !404
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata i64* %i, metadata !407, metadata !DIExpression()), !dbg !408
  store i64 0, i64* %i, align 8, !dbg !409
  br label %for.cond, !dbg !411

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !412
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !414
  %cmp = icmp ult i64 %0, %1, !dbg !415
  br i1 %cmp, label %for.body, label %for.end, !dbg !416

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !417
  %3 = load i64, i64* %i, align 8, !dbg !419
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !417
  %4 = load i8, i8* %arrayidx, align 1, !dbg !417
  %conv = zext i8 %4 to i32, !dbg !417
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !420
  br label %for.inc, !dbg !421

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !422
  %inc = add i64 %5, 1, !dbg !422
  store i64 %inc, i64* %i, align 8, !dbg !422
  br label %for.cond, !dbg !423, !llvm.loop !424

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !426
  ret void, !dbg !427
}

declare dso_local i32 @puts(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !428 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !431, metadata !DIExpression()), !dbg !432
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !433, metadata !DIExpression()), !dbg !434
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !435, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !437, metadata !DIExpression()), !dbg !438
  store i64 0, i64* %numWritten, align 8, !dbg !438
  br label %while.cond, !dbg !439

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !440
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !441
  %cmp = icmp ult i64 %0, %1, !dbg !442
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !443

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #6, !dbg !444
  %2 = load i16*, i16** %call, align 8, !dbg !444
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !444
  %4 = load i64, i64* %numWritten, align 8, !dbg !444
  %mul = mul i64 2, %4, !dbg !444
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !444
  %5 = load i8, i8* %arrayidx, align 1, !dbg !444
  %conv = sext i8 %5 to i32, !dbg !444
  %idxprom = sext i32 %conv to i64, !dbg !444
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !444
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !444
  %conv2 = zext i16 %6 to i32, !dbg !444
  %and = and i32 %conv2, 4096, !dbg !444
  %tobool = icmp ne i32 %and, 0, !dbg !444
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !445

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #6, !dbg !446
  %7 = load i16*, i16** %call3, align 8, !dbg !446
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !446
  %9 = load i64, i64* %numWritten, align 8, !dbg !446
  %mul4 = mul i64 2, %9, !dbg !446
  %add = add i64 %mul4, 1, !dbg !446
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !446
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !446
  %conv6 = sext i8 %10 to i32, !dbg !446
  %idxprom7 = sext i32 %conv6 to i64, !dbg !446
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !446
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !446
  %conv9 = zext i16 %11 to i32, !dbg !446
  %and10 = and i32 %conv9, 4096, !dbg !446
  %tobool11 = icmp ne i32 %and10, 0, !dbg !445
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !447
  br i1 %12, label %while.body, label %while.end, !dbg !439

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !448, metadata !DIExpression()), !dbg !450
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !451
  %14 = load i64, i64* %numWritten, align 8, !dbg !452
  %mul12 = mul i64 2, %14, !dbg !453
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !451
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !454
  %15 = load i32, i32* %byte, align 4, !dbg !455
  %conv15 = trunc i32 %15 to i8, !dbg !456
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !457
  %17 = load i64, i64* %numWritten, align 8, !dbg !458
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !457
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !459
  %18 = load i64, i64* %numWritten, align 8, !dbg !460
  %inc = add i64 %18, 1, !dbg !460
  store i64 %inc, i64* %numWritten, align 8, !dbg !460
  br label %while.cond, !dbg !439, !llvm.loop !461

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !463
  ret i64 %19, !dbg !464
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !465 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !468, metadata !DIExpression()), !dbg !469
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !470, metadata !DIExpression()), !dbg !471
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !472, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !474, metadata !DIExpression()), !dbg !475
  store i64 0, i64* %numWritten, align 8, !dbg !475
  br label %while.cond, !dbg !476

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !477
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !478
  %cmp = icmp ult i64 %0, %1, !dbg !479
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !480

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !481
  %3 = load i64, i64* %numWritten, align 8, !dbg !482
  %mul = mul i64 2, %3, !dbg !483
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !481
  %4 = load i32, i32* %arrayidx, align 4, !dbg !481
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !484
  %tobool = icmp ne i32 %call, 0, !dbg !484
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !485

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !486
  %6 = load i64, i64* %numWritten, align 8, !dbg !487
  %mul1 = mul i64 2, %6, !dbg !488
  %add = add i64 %mul1, 1, !dbg !489
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !486
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !486
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !490
  %tobool4 = icmp ne i32 %call3, 0, !dbg !485
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !491
  br i1 %8, label %while.body, label %while.end, !dbg !476

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !492, metadata !DIExpression()), !dbg !494
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !495
  %10 = load i64, i64* %numWritten, align 8, !dbg !496
  %mul5 = mul i64 2, %10, !dbg !497
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !495
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !498
  %11 = load i32, i32* %byte, align 4, !dbg !499
  %conv = trunc i32 %11 to i8, !dbg !500
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !501
  %13 = load i64, i64* %numWritten, align 8, !dbg !502
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !501
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !503
  %14 = load i64, i64* %numWritten, align 8, !dbg !504
  %inc = add i64 %14, 1, !dbg !504
  store i64 %inc, i64* %numWritten, align 8, !dbg !504
  br label %while.cond, !dbg !476, !llvm.loop !505

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !507
  ret i64 %15, !dbg !508
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !509 {
entry:
  ret i32 1, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !513 {
entry:
  ret i32 0, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !515 {
entry:
  %call = call i32 @rand() #7, !dbg !516
  %rem = srem i32 %call, 2, !dbg !517
  ret i32 %rem, !dbg !518
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !519 {
entry:
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !521 {
entry:
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !523 {
entry:
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !553 {
entry:
  ret void, !dbg !554
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
!llvm.ident = !{!51, !51, !51}
!llvm.module.flags = !{!52, !53, !54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_648/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_648/source_code")
!46 = !{}
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !49, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_648/source_code")
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!51 = !{!"clang version 12.0.0"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_bad", scope: !45, file: !45, line: 25, type: !56, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !45, line: 27, type: !23)
!59 = !DILocation(line: 27, column: 9, scope: !55)
!60 = !DILocation(line: 29, column: 10, scope: !55)
!61 = !DILocation(line: 31, column: 12, scope: !55)
!62 = !DILocation(line: 31, column: 5, scope: !55)
!63 = !DILocation(line: 32, column: 67, scope: !55)
!64 = !DILocation(line: 32, column: 5, scope: !55)
!65 = !DILocation(line: 33, column: 1, scope: !55)
!66 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 41, type: !56, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!67 = !DILocalVariable(name: "data", scope: !66, file: !45, line: 43, type: !23)
!68 = !DILocation(line: 43, column: 9, scope: !66)
!69 = !DILocation(line: 45, column: 10, scope: !66)
!70 = !DILocation(line: 48, column: 10, scope: !66)
!71 = !DILocation(line: 49, column: 71, scope: !66)
!72 = !DILocation(line: 49, column: 5, scope: !66)
!73 = !DILocation(line: 50, column: 1, scope: !66)
!74 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 54, type: !56, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!75 = !DILocalVariable(name: "data", scope: !74, file: !45, line: 56, type: !23)
!76 = !DILocation(line: 56, column: 9, scope: !74)
!77 = !DILocation(line: 58, column: 10, scope: !74)
!78 = !DILocation(line: 60, column: 12, scope: !74)
!79 = !DILocation(line: 60, column: 5, scope: !74)
!80 = !DILocation(line: 61, column: 71, scope: !74)
!81 = !DILocation(line: 61, column: 5, scope: !74)
!82 = !DILocation(line: 62, column: 1, scope: !74)
!83 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_good", scope: !45, file: !45, line: 64, type: !56, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!84 = !DILocation(line: 66, column: 5, scope: !83)
!85 = !DILocation(line: 67, column: 5, scope: !83)
!86 = !DILocation(line: 68, column: 1, scope: !83)
!87 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_badSink", scope: !48, file: !48, line: 22, type: !88, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !22}
!90 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !87, file: !48, line: 22, type: !22)
!91 = !DILocation(line: 22, column: 75, scope: !87)
!92 = !DILocalVariable(name: "dataPtr", scope: !87, file: !48, line: 25, type: !50)
!93 = !DILocation(line: 25, column: 11, scope: !87)
!94 = !DILocation(line: 25, column: 28, scope: !87)
!95 = !DILocation(line: 25, column: 21, scope: !87)
!96 = !DILocalVariable(name: "data", scope: !87, file: !48, line: 27, type: !23)
!97 = !DILocation(line: 27, column: 9, scope: !87)
!98 = !DILocation(line: 27, column: 18, scope: !87)
!99 = !DILocation(line: 27, column: 17, scope: !87)
!100 = !DILocalVariable(name: "i", scope: !101, file: !48, line: 29, type: !23)
!101 = distinct !DILexicalBlock(scope: !87, file: !48, line: 28, column: 5)
!102 = !DILocation(line: 29, column: 13, scope: !101)
!103 = !DILocalVariable(name: "buffer", scope: !101, file: !48, line: 30, type: !104)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 10)
!107 = !DILocation(line: 30, column: 13, scope: !101)
!108 = !DILocation(line: 33, column: 13, scope: !109)
!109 = distinct !DILexicalBlock(scope: !101, file: !48, line: 33, column: 13)
!110 = !DILocation(line: 33, column: 18, scope: !109)
!111 = !DILocation(line: 33, column: 13, scope: !101)
!112 = !DILocation(line: 35, column: 20, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !48, line: 34, column: 9)
!114 = !DILocation(line: 35, column: 13, scope: !113)
!115 = !DILocation(line: 35, column: 26, scope: !113)
!116 = !DILocation(line: 37, column: 19, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !48, line: 37, column: 13)
!118 = !DILocation(line: 37, column: 17, scope: !117)
!119 = !DILocation(line: 37, column: 24, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !48, line: 37, column: 13)
!121 = !DILocation(line: 37, column: 26, scope: !120)
!122 = !DILocation(line: 37, column: 13, scope: !117)
!123 = !DILocation(line: 39, column: 37, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !48, line: 38, column: 13)
!125 = !DILocation(line: 39, column: 30, scope: !124)
!126 = !DILocation(line: 39, column: 17, scope: !124)
!127 = !DILocation(line: 40, column: 13, scope: !124)
!128 = !DILocation(line: 37, column: 33, scope: !120)
!129 = !DILocation(line: 37, column: 13, scope: !120)
!130 = distinct !{!130, !122, !131, !132}
!131 = !DILocation(line: 40, column: 13, scope: !117)
!132 = !{!"llvm.loop.mustprogress"}
!133 = !DILocation(line: 41, column: 9, scope: !113)
!134 = !DILocation(line: 44, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !109, file: !48, line: 43, column: 9)
!136 = !DILocation(line: 47, column: 1, scope: !87)
!137 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodG2BSink", scope: !48, file: !48, line: 54, type: !88, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!138 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !137, file: !48, line: 54, type: !22)
!139 = !DILocation(line: 54, column: 79, scope: !137)
!140 = !DILocalVariable(name: "dataPtr", scope: !137, file: !48, line: 57, type: !50)
!141 = !DILocation(line: 57, column: 11, scope: !137)
!142 = !DILocation(line: 57, column: 28, scope: !137)
!143 = !DILocation(line: 57, column: 21, scope: !137)
!144 = !DILocalVariable(name: "data", scope: !137, file: !48, line: 59, type: !23)
!145 = !DILocation(line: 59, column: 9, scope: !137)
!146 = !DILocation(line: 59, column: 18, scope: !137)
!147 = !DILocation(line: 59, column: 17, scope: !137)
!148 = !DILocalVariable(name: "i", scope: !149, file: !48, line: 61, type: !23)
!149 = distinct !DILexicalBlock(scope: !137, file: !48, line: 60, column: 5)
!150 = !DILocation(line: 61, column: 13, scope: !149)
!151 = !DILocalVariable(name: "buffer", scope: !149, file: !48, line: 62, type: !104)
!152 = !DILocation(line: 62, column: 13, scope: !149)
!153 = !DILocation(line: 65, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !48, line: 65, column: 13)
!155 = !DILocation(line: 65, column: 18, scope: !154)
!156 = !DILocation(line: 65, column: 13, scope: !149)
!157 = !DILocation(line: 67, column: 20, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !48, line: 66, column: 9)
!159 = !DILocation(line: 67, column: 13, scope: !158)
!160 = !DILocation(line: 67, column: 26, scope: !158)
!161 = !DILocation(line: 69, column: 19, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !48, line: 69, column: 13)
!163 = !DILocation(line: 69, column: 17, scope: !162)
!164 = !DILocation(line: 69, column: 24, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !48, line: 69, column: 13)
!166 = !DILocation(line: 69, column: 26, scope: !165)
!167 = !DILocation(line: 69, column: 13, scope: !162)
!168 = !DILocation(line: 71, column: 37, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !48, line: 70, column: 13)
!170 = !DILocation(line: 71, column: 30, scope: !169)
!171 = !DILocation(line: 71, column: 17, scope: !169)
!172 = !DILocation(line: 72, column: 13, scope: !169)
!173 = !DILocation(line: 69, column: 33, scope: !165)
!174 = !DILocation(line: 69, column: 13, scope: !165)
!175 = distinct !{!175, !167, !176, !132}
!176 = !DILocation(line: 72, column: 13, scope: !162)
!177 = !DILocation(line: 73, column: 9, scope: !158)
!178 = !DILocation(line: 76, column: 13, scope: !179)
!179 = distinct !DILexicalBlock(scope: !154, file: !48, line: 75, column: 9)
!180 = !DILocation(line: 79, column: 1, scope: !137)
!181 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink", scope: !48, file: !48, line: 82, type: !88, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!182 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !181, file: !48, line: 82, type: !22)
!183 = !DILocation(line: 82, column: 79, scope: !181)
!184 = !DILocalVariable(name: "dataPtr", scope: !181, file: !48, line: 85, type: !50)
!185 = !DILocation(line: 85, column: 11, scope: !181)
!186 = !DILocation(line: 85, column: 28, scope: !181)
!187 = !DILocation(line: 85, column: 21, scope: !181)
!188 = !DILocalVariable(name: "data", scope: !181, file: !48, line: 87, type: !23)
!189 = !DILocation(line: 87, column: 9, scope: !181)
!190 = !DILocation(line: 87, column: 18, scope: !181)
!191 = !DILocation(line: 87, column: 17, scope: !181)
!192 = !DILocalVariable(name: "i", scope: !193, file: !48, line: 89, type: !23)
!193 = distinct !DILexicalBlock(scope: !181, file: !48, line: 88, column: 5)
!194 = !DILocation(line: 89, column: 13, scope: !193)
!195 = !DILocalVariable(name: "buffer", scope: !193, file: !48, line: 90, type: !104)
!196 = !DILocation(line: 90, column: 13, scope: !193)
!197 = !DILocation(line: 92, column: 13, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !48, line: 92, column: 13)
!199 = !DILocation(line: 92, column: 18, scope: !198)
!200 = !DILocation(line: 92, column: 23, scope: !198)
!201 = !DILocation(line: 92, column: 26, scope: !198)
!202 = !DILocation(line: 92, column: 31, scope: !198)
!203 = !DILocation(line: 92, column: 13, scope: !193)
!204 = !DILocation(line: 94, column: 20, scope: !205)
!205 = distinct !DILexicalBlock(scope: !198, file: !48, line: 93, column: 9)
!206 = !DILocation(line: 94, column: 13, scope: !205)
!207 = !DILocation(line: 94, column: 26, scope: !205)
!208 = !DILocation(line: 96, column: 19, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !48, line: 96, column: 13)
!210 = !DILocation(line: 96, column: 17, scope: !209)
!211 = !DILocation(line: 96, column: 24, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !48, line: 96, column: 13)
!213 = !DILocation(line: 96, column: 26, scope: !212)
!214 = !DILocation(line: 96, column: 13, scope: !209)
!215 = !DILocation(line: 98, column: 37, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !48, line: 97, column: 13)
!217 = !DILocation(line: 98, column: 30, scope: !216)
!218 = !DILocation(line: 98, column: 17, scope: !216)
!219 = !DILocation(line: 99, column: 13, scope: !216)
!220 = !DILocation(line: 96, column: 33, scope: !212)
!221 = !DILocation(line: 96, column: 13, scope: !212)
!222 = distinct !{!222, !214, !223, !132}
!223 = !DILocation(line: 99, column: 13, scope: !209)
!224 = !DILocation(line: 100, column: 9, scope: !205)
!225 = !DILocation(line: 103, column: 13, scope: !226)
!226 = distinct !DILexicalBlock(scope: !198, file: !48, line: 102, column: 9)
!227 = !DILocation(line: 106, column: 1, scope: !181)
!228 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !229, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !42}
!231 = !DILocalVariable(name: "line", arg: 1, scope: !228, file: !3, line: 11, type: !42)
!232 = !DILocation(line: 11, column: 25, scope: !228)
!233 = !DILocation(line: 13, column: 1, scope: !228)
!234 = !DILocation(line: 14, column: 8, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !3, line: 14, column: 8)
!236 = !DILocation(line: 14, column: 13, scope: !235)
!237 = !DILocation(line: 14, column: 8, scope: !228)
!238 = !DILocation(line: 16, column: 24, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !3, line: 15, column: 5)
!240 = !DILocation(line: 16, column: 9, scope: !239)
!241 = !DILocation(line: 17, column: 5, scope: !239)
!242 = !DILocation(line: 18, column: 5, scope: !228)
!243 = !DILocation(line: 19, column: 1, scope: !228)
!244 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !229, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!245 = !DILocalVariable(name: "line", arg: 1, scope: !244, file: !3, line: 20, type: !42)
!246 = !DILocation(line: 20, column: 29, scope: !244)
!247 = !DILocation(line: 22, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !3, line: 22, column: 8)
!249 = !DILocation(line: 22, column: 13, scope: !248)
!250 = !DILocation(line: 22, column: 8, scope: !244)
!251 = !DILocation(line: 24, column: 24, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !3, line: 23, column: 5)
!253 = !DILocation(line: 24, column: 9, scope: !252)
!254 = !DILocation(line: 25, column: 5, scope: !252)
!255 = !DILocation(line: 26, column: 1, scope: !244)
!256 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !257, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !261, line: 74, baseType: !23)
!261 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!262 = !DILocalVariable(name: "line", arg: 1, scope: !256, file: !3, line: 27, type: !259)
!263 = !DILocation(line: 27, column: 29, scope: !256)
!264 = !DILocation(line: 29, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !256, file: !3, line: 29, column: 8)
!266 = !DILocation(line: 29, column: 13, scope: !265)
!267 = !DILocation(line: 29, column: 8, scope: !256)
!268 = !DILocation(line: 31, column: 27, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !3, line: 30, column: 5)
!270 = !DILocation(line: 31, column: 9, scope: !269)
!271 = !DILocation(line: 32, column: 5, scope: !269)
!272 = !DILocation(line: 33, column: 1, scope: !256)
!273 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !274, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !23}
!276 = !DILocalVariable(name: "intNumber", arg: 1, scope: !273, file: !3, line: 35, type: !23)
!277 = !DILocation(line: 35, column: 24, scope: !273)
!278 = !DILocation(line: 37, column: 20, scope: !273)
!279 = !DILocation(line: 37, column: 5, scope: !273)
!280 = !DILocation(line: 38, column: 1, scope: !273)
!281 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !282, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !284}
!284 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!285 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !281, file: !3, line: 40, type: !284)
!286 = !DILocation(line: 40, column: 28, scope: !281)
!287 = !DILocation(line: 42, column: 21, scope: !281)
!288 = !DILocation(line: 42, column: 5, scope: !281)
!289 = !DILocation(line: 43, column: 1, scope: !281)
!290 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !291, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293}
!293 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!294 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !290, file: !3, line: 45, type: !293)
!295 = !DILocation(line: 45, column: 28, scope: !290)
!296 = !DILocation(line: 47, column: 20, scope: !290)
!297 = !DILocation(line: 47, column: 5, scope: !290)
!298 = !DILocation(line: 48, column: 1, scope: !290)
!299 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !300, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !302}
!302 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!303 = !DILocalVariable(name: "longNumber", arg: 1, scope: !299, file: !3, line: 50, type: !302)
!304 = !DILocation(line: 50, column: 26, scope: !299)
!305 = !DILocation(line: 52, column: 21, scope: !299)
!306 = !DILocation(line: 52, column: 5, scope: !299)
!307 = !DILocation(line: 53, column: 1, scope: !299)
!308 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !309, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !311}
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !312, line: 27, baseType: !313)
!312 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !314, line: 44, baseType: !302)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!315 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !308, file: !3, line: 55, type: !311)
!316 = !DILocation(line: 55, column: 33, scope: !308)
!317 = !DILocation(line: 57, column: 29, scope: !308)
!318 = !DILocation(line: 57, column: 5, scope: !308)
!319 = !DILocation(line: 58, column: 1, scope: !308)
!320 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !321, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !261, line: 46, baseType: !324)
!324 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!325 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !320, file: !3, line: 60, type: !323)
!326 = !DILocation(line: 60, column: 29, scope: !320)
!327 = !DILocation(line: 62, column: 21, scope: !320)
!328 = !DILocation(line: 62, column: 5, scope: !320)
!329 = !DILocation(line: 63, column: 1, scope: !320)
!330 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !331, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !43}
!333 = !DILocalVariable(name: "charHex", arg: 1, scope: !330, file: !3, line: 65, type: !43)
!334 = !DILocation(line: 65, column: 29, scope: !330)
!335 = !DILocation(line: 67, column: 22, scope: !330)
!336 = !DILocation(line: 67, column: 5, scope: !330)
!337 = !DILocation(line: 68, column: 1, scope: !330)
!338 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !339, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !260}
!341 = !DILocalVariable(name: "wideChar", arg: 1, scope: !338, file: !3, line: 70, type: !260)
!342 = !DILocation(line: 70, column: 29, scope: !338)
!343 = !DILocalVariable(name: "s", scope: !338, file: !3, line: 74, type: !344)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 2)
!347 = !DILocation(line: 74, column: 13, scope: !338)
!348 = !DILocation(line: 75, column: 16, scope: !338)
!349 = !DILocation(line: 75, column: 9, scope: !338)
!350 = !DILocation(line: 75, column: 14, scope: !338)
!351 = !DILocation(line: 76, column: 9, scope: !338)
!352 = !DILocation(line: 76, column: 14, scope: !338)
!353 = !DILocation(line: 77, column: 21, scope: !338)
!354 = !DILocation(line: 77, column: 5, scope: !338)
!355 = !DILocation(line: 78, column: 1, scope: !338)
!356 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !357, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !7}
!359 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !356, file: !3, line: 80, type: !7)
!360 = !DILocation(line: 80, column: 33, scope: !356)
!361 = !DILocation(line: 82, column: 20, scope: !356)
!362 = !DILocation(line: 82, column: 5, scope: !356)
!363 = !DILocation(line: 83, column: 1, scope: !356)
!364 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !365, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !25}
!367 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !364, file: !3, line: 85, type: !25)
!368 = !DILocation(line: 85, column: 45, scope: !364)
!369 = !DILocation(line: 87, column: 22, scope: !364)
!370 = !DILocation(line: 87, column: 5, scope: !364)
!371 = !DILocation(line: 88, column: 1, scope: !364)
!372 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !373, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375}
!375 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!376 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !372, file: !3, line: 90, type: !375)
!377 = !DILocation(line: 90, column: 29, scope: !372)
!378 = !DILocation(line: 92, column: 20, scope: !372)
!379 = !DILocation(line: 92, column: 5, scope: !372)
!380 = !DILocation(line: 93, column: 1, scope: !372)
!381 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !382, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !386, line: 100, baseType: !387)
!386 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_648/source_code")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !386, line: 96, size: 64, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !387, file: !386, line: 98, baseType: !23, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !387, file: !386, line: 99, baseType: !23, size: 32, offset: 32)
!391 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !381, file: !3, line: 95, type: !384)
!392 = !DILocation(line: 95, column: 40, scope: !381)
!393 = !DILocation(line: 97, column: 26, scope: !381)
!394 = !DILocation(line: 97, column: 47, scope: !381)
!395 = !DILocation(line: 97, column: 55, scope: !381)
!396 = !DILocation(line: 97, column: 76, scope: !381)
!397 = !DILocation(line: 97, column: 5, scope: !381)
!398 = !DILocation(line: 98, column: 1, scope: !381)
!399 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !400, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402, !323}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!403 = !DILocalVariable(name: "bytes", arg: 1, scope: !399, file: !3, line: 100, type: !402)
!404 = !DILocation(line: 100, column: 38, scope: !399)
!405 = !DILocalVariable(name: "numBytes", arg: 2, scope: !399, file: !3, line: 100, type: !323)
!406 = !DILocation(line: 100, column: 52, scope: !399)
!407 = !DILocalVariable(name: "i", scope: !399, file: !3, line: 102, type: !323)
!408 = !DILocation(line: 102, column: 12, scope: !399)
!409 = !DILocation(line: 103, column: 12, scope: !410)
!410 = distinct !DILexicalBlock(scope: !399, file: !3, line: 103, column: 5)
!411 = !DILocation(line: 103, column: 10, scope: !410)
!412 = !DILocation(line: 103, column: 17, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !3, line: 103, column: 5)
!414 = !DILocation(line: 103, column: 21, scope: !413)
!415 = !DILocation(line: 103, column: 19, scope: !413)
!416 = !DILocation(line: 103, column: 5, scope: !410)
!417 = !DILocation(line: 105, column: 24, scope: !418)
!418 = distinct !DILexicalBlock(scope: !413, file: !3, line: 104, column: 5)
!419 = !DILocation(line: 105, column: 30, scope: !418)
!420 = !DILocation(line: 105, column: 9, scope: !418)
!421 = !DILocation(line: 106, column: 5, scope: !418)
!422 = !DILocation(line: 103, column: 31, scope: !413)
!423 = !DILocation(line: 103, column: 5, scope: !413)
!424 = distinct !{!424, !416, !425, !132}
!425 = !DILocation(line: 106, column: 5, scope: !410)
!426 = !DILocation(line: 107, column: 5, scope: !399)
!427 = !DILocation(line: 108, column: 1, scope: !399)
!428 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !429, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!429 = !DISubroutineType(types: !430)
!430 = !{!323, !402, !323, !42}
!431 = !DILocalVariable(name: "bytes", arg: 1, scope: !428, file: !3, line: 113, type: !402)
!432 = !DILocation(line: 113, column: 39, scope: !428)
!433 = !DILocalVariable(name: "numBytes", arg: 2, scope: !428, file: !3, line: 113, type: !323)
!434 = !DILocation(line: 113, column: 53, scope: !428)
!435 = !DILocalVariable(name: "hex", arg: 3, scope: !428, file: !3, line: 113, type: !42)
!436 = !DILocation(line: 113, column: 71, scope: !428)
!437 = !DILocalVariable(name: "numWritten", scope: !428, file: !3, line: 115, type: !323)
!438 = !DILocation(line: 115, column: 12, scope: !428)
!439 = !DILocation(line: 121, column: 5, scope: !428)
!440 = !DILocation(line: 121, column: 12, scope: !428)
!441 = !DILocation(line: 121, column: 25, scope: !428)
!442 = !DILocation(line: 121, column: 23, scope: !428)
!443 = !DILocation(line: 121, column: 34, scope: !428)
!444 = !DILocation(line: 121, column: 37, scope: !428)
!445 = !DILocation(line: 121, column: 67, scope: !428)
!446 = !DILocation(line: 121, column: 70, scope: !428)
!447 = !DILocation(line: 0, scope: !428)
!448 = !DILocalVariable(name: "byte", scope: !449, file: !3, line: 123, type: !23)
!449 = distinct !DILexicalBlock(scope: !428, file: !3, line: 122, column: 5)
!450 = !DILocation(line: 123, column: 13, scope: !449)
!451 = !DILocation(line: 124, column: 17, scope: !449)
!452 = !DILocation(line: 124, column: 25, scope: !449)
!453 = !DILocation(line: 124, column: 23, scope: !449)
!454 = !DILocation(line: 124, column: 9, scope: !449)
!455 = !DILocation(line: 125, column: 45, scope: !449)
!456 = !DILocation(line: 125, column: 29, scope: !449)
!457 = !DILocation(line: 125, column: 9, scope: !449)
!458 = !DILocation(line: 125, column: 15, scope: !449)
!459 = !DILocation(line: 125, column: 27, scope: !449)
!460 = !DILocation(line: 126, column: 9, scope: !449)
!461 = distinct !{!461, !439, !462, !132}
!462 = !DILocation(line: 127, column: 5, scope: !428)
!463 = !DILocation(line: 129, column: 12, scope: !428)
!464 = !DILocation(line: 129, column: 5, scope: !428)
!465 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !466, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!466 = !DISubroutineType(types: !467)
!467 = !{!323, !402, !323, !259}
!468 = !DILocalVariable(name: "bytes", arg: 1, scope: !465, file: !3, line: 135, type: !402)
!469 = !DILocation(line: 135, column: 41, scope: !465)
!470 = !DILocalVariable(name: "numBytes", arg: 2, scope: !465, file: !3, line: 135, type: !323)
!471 = !DILocation(line: 135, column: 55, scope: !465)
!472 = !DILocalVariable(name: "hex", arg: 3, scope: !465, file: !3, line: 135, type: !259)
!473 = !DILocation(line: 135, column: 76, scope: !465)
!474 = !DILocalVariable(name: "numWritten", scope: !465, file: !3, line: 137, type: !323)
!475 = !DILocation(line: 137, column: 12, scope: !465)
!476 = !DILocation(line: 143, column: 5, scope: !465)
!477 = !DILocation(line: 143, column: 12, scope: !465)
!478 = !DILocation(line: 143, column: 25, scope: !465)
!479 = !DILocation(line: 143, column: 23, scope: !465)
!480 = !DILocation(line: 143, column: 34, scope: !465)
!481 = !DILocation(line: 143, column: 47, scope: !465)
!482 = !DILocation(line: 143, column: 55, scope: !465)
!483 = !DILocation(line: 143, column: 53, scope: !465)
!484 = !DILocation(line: 143, column: 37, scope: !465)
!485 = !DILocation(line: 143, column: 68, scope: !465)
!486 = !DILocation(line: 143, column: 81, scope: !465)
!487 = !DILocation(line: 143, column: 89, scope: !465)
!488 = !DILocation(line: 143, column: 87, scope: !465)
!489 = !DILocation(line: 143, column: 100, scope: !465)
!490 = !DILocation(line: 143, column: 71, scope: !465)
!491 = !DILocation(line: 0, scope: !465)
!492 = !DILocalVariable(name: "byte", scope: !493, file: !3, line: 145, type: !23)
!493 = distinct !DILexicalBlock(scope: !465, file: !3, line: 144, column: 5)
!494 = !DILocation(line: 145, column: 13, scope: !493)
!495 = !DILocation(line: 146, column: 18, scope: !493)
!496 = !DILocation(line: 146, column: 26, scope: !493)
!497 = !DILocation(line: 146, column: 24, scope: !493)
!498 = !DILocation(line: 146, column: 9, scope: !493)
!499 = !DILocation(line: 147, column: 45, scope: !493)
!500 = !DILocation(line: 147, column: 29, scope: !493)
!501 = !DILocation(line: 147, column: 9, scope: !493)
!502 = !DILocation(line: 147, column: 15, scope: !493)
!503 = !DILocation(line: 147, column: 27, scope: !493)
!504 = !DILocation(line: 148, column: 9, scope: !493)
!505 = distinct !{!505, !476, !506, !132}
!506 = !DILocation(line: 149, column: 5, scope: !465)
!507 = !DILocation(line: 151, column: 12, scope: !465)
!508 = !DILocation(line: 151, column: 5, scope: !465)
!509 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !510, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DISubroutineType(types: !511)
!511 = !{!23}
!512 = !DILocation(line: 158, column: 5, scope: !509)
!513 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !510, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DILocation(line: 163, column: 5, scope: !513)
!515 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !510, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DILocation(line: 168, column: 13, scope: !515)
!517 = !DILocation(line: 168, column: 20, scope: !515)
!518 = !DILocation(line: 168, column: 5, scope: !515)
!519 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DILocation(line: 187, column: 16, scope: !519)
!521 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DILocation(line: 188, column: 16, scope: !521)
!523 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 189, column: 16, scope: !523)
!525 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 190, column: 16, scope: !525)
!527 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 191, column: 16, scope: !527)
!529 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 192, column: 16, scope: !529)
!531 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 193, column: 16, scope: !531)
!533 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 194, column: 16, scope: !533)
!535 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 195, column: 16, scope: !535)
!537 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 198, column: 15, scope: !537)
!539 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 199, column: 15, scope: !539)
!541 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 200, column: 15, scope: !541)
!543 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 201, column: 15, scope: !543)
!545 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 202, column: 15, scope: !545)
!547 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 203, column: 15, scope: !547)
!549 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 204, column: 15, scope: !549)
!551 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 205, column: 15, scope: !551)
!553 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 206, column: 15, scope: !553)
