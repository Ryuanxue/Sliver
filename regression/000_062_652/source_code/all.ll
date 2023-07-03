; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_badData = dso_local global i32 0, align 4, !dbg !0
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodG2BData = dso_local global i32 0, align 4, !dbg !6
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodB2GData = dso_local global i32 0, align 4, !dbg !9
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !11
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !37
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !39
@globalTrue = dso_local global i32 1, align 4, !dbg !41
@globalFalse = dso_local global i32 0, align 4, !dbg !43
@globalFive = dso_local global i32 5, align 4, !dbg !45
@globalArgc = dso_local global i32 0, align 4, !dbg !47
@globalArgv = dso_local global i8** null, align 8, !dbg !49
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_bad() #0 !dbg !60 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 -1, i32* %data, align 4, !dbg !65
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !66
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !67
  %1 = load i32, i32* %data, align 4, !dbg !68
  store i32 %1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_badData, align 4, !dbg !69
  call void (...) bitcast (void ()* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink to void (...)*)(), !dbg !70
  ret void, !dbg !71
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !72 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !73, metadata !DIExpression()), !dbg !74
  store i32 -1, i32* %data, align 4, !dbg !75
  store i32 7, i32* %data, align 4, !dbg !76
  %0 = load i32, i32* %data, align 4, !dbg !77
  store i32 %0, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodG2BData, align 4, !dbg !78
  call void (...) bitcast (void ()* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodG2BSink to void (...)*)(), !dbg !79
  ret void, !dbg !80
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !81 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 -1, i32* %data, align 4, !dbg !84
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !85
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !86
  %1 = load i32, i32* %data, align 4, !dbg !87
  store i32 %1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodB2GData, align 4, !dbg !88
  call void (...) bitcast (void ()* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink to void (...)*)(), !dbg !89
  ret void, !dbg !90
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_good() #0 !dbg !91 {
entry:
  call void @goodG2B(), !dbg !92
  call void @goodB2G(), !dbg !93
  ret void, !dbg !94
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink() #0 !dbg !95 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !96, metadata !DIExpression()), !dbg !97
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_badData, align 4, !dbg !98
  store i32 %0, i32* %data, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %i, metadata !99, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !102, metadata !DIExpression()), !dbg !106
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !106
  %2 = load i32, i32* %data, align 4, !dbg !107
  %cmp = icmp sge i32 %2, 0, !dbg !109
  br i1 %cmp, label %if.then, label %if.else, !dbg !110

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !111
  %idxprom = sext i32 %3 to i64, !dbg !113
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !113
  store i32 1, i32* %arrayidx, align 4, !dbg !114
  store i32 0, i32* %i, align 4, !dbg !115
  br label %for.cond, !dbg !117

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !118
  %cmp1 = icmp slt i32 %4, 10, !dbg !120
  br i1 %cmp1, label %for.body, label %for.end, !dbg !121

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !122
  %idxprom2 = sext i32 %5 to i64, !dbg !124
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !124
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !124
  call void @printIntLine(i32 %6), !dbg !125
  br label %for.inc, !dbg !126

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !127
  %inc = add nsw i32 %7, 1, !dbg !127
  store i32 %inc, i32* %i, align 4, !dbg !127
  br label %for.cond, !dbg !128, !llvm.loop !129

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !132

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !133
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !135
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodG2BSink() #0 !dbg !136 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !137, metadata !DIExpression()), !dbg !138
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodG2BData, align 4, !dbg !139
  store i32 %0, i32* %data, align 4, !dbg !138
  call void @llvm.dbg.declare(metadata i32* %i, metadata !140, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !143, metadata !DIExpression()), !dbg !144
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !144
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !144
  %2 = load i32, i32* %data, align 4, !dbg !145
  %cmp = icmp sge i32 %2, 0, !dbg !147
  br i1 %cmp, label %if.then, label %if.else, !dbg !148

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !149
  %idxprom = sext i32 %3 to i64, !dbg !151
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !151
  store i32 1, i32* %arrayidx, align 4, !dbg !152
  store i32 0, i32* %i, align 4, !dbg !153
  br label %for.cond, !dbg !155

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !156
  %cmp1 = icmp slt i32 %4, 10, !dbg !158
  br i1 %cmp1, label %for.body, label %for.end, !dbg !159

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !160
  %idxprom2 = sext i32 %5 to i64, !dbg !162
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !162
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !162
  call void @printIntLine(i32 %6), !dbg !163
  br label %for.inc, !dbg !164

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !165
  %inc = add nsw i32 %7, 1, !dbg !165
  store i32 %inc, i32* %i, align 4, !dbg !165
  br label %for.cond, !dbg !166, !llvm.loop !167

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !169

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !170
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !172
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink() #0 !dbg !173 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !174, metadata !DIExpression()), !dbg !175
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodB2GData, align 4, !dbg !176
  store i32 %0, i32* %data, align 4, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %i, metadata !177, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !180, metadata !DIExpression()), !dbg !181
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !181
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !181
  %2 = load i32, i32* %data, align 4, !dbg !182
  %cmp = icmp sge i32 %2, 0, !dbg !184
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !185

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !186
  %cmp1 = icmp slt i32 %3, 10, !dbg !187
  br i1 %cmp1, label %if.then, label %if.else, !dbg !188

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !189
  %idxprom = sext i32 %4 to i64, !dbg !191
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !191
  store i32 1, i32* %arrayidx, align 4, !dbg !192
  store i32 0, i32* %i, align 4, !dbg !193
  br label %for.cond, !dbg !195

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !196
  %cmp2 = icmp slt i32 %5, 10, !dbg !198
  br i1 %cmp2, label %for.body, label %for.end, !dbg !199

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !200
  %idxprom3 = sext i32 %6 to i64, !dbg !202
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !202
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !202
  call void @printIntLine(i32 %7), !dbg !203
  br label %for.inc, !dbg !204

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !205
  %inc = add nsw i32 %8, 1, !dbg !205
  store i32 %inc, i32* %i, align 4, !dbg !205
  br label %for.cond, !dbg !206, !llvm.loop !207

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !209

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !210
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !212
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !213 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !216, metadata !DIExpression()), !dbg !217
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !218
  %0 = load i8*, i8** %line.addr, align 8, !dbg !219
  %cmp = icmp ne i8* %0, null, !dbg !221
  br i1 %cmp, label %if.then, label %if.end, !dbg !222

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !223
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !225
  br label %if.end, !dbg !226

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !227
  ret void, !dbg !228
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !229 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !230, metadata !DIExpression()), !dbg !231
  %0 = load i8*, i8** %line.addr, align 8, !dbg !232
  %cmp = icmp ne i8* %0, null, !dbg !234
  br i1 %cmp, label %if.then, label %if.end, !dbg !235

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !236
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !238
  br label %if.end, !dbg !239

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !241 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !247, metadata !DIExpression()), !dbg !248
  %0 = load i32*, i32** %line.addr, align 8, !dbg !249
  %cmp = icmp ne i32* %0, null, !dbg !251
  br i1 %cmp, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !253
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !255
  br label %if.end, !dbg !256

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !257
}

declare dso_local i32 @wprintf(i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !258 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !261, metadata !DIExpression()), !dbg !262
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !263
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !264
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !266 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !272
  %conv = sext i16 %0 to i32, !dbg !272
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !273
  ret void, !dbg !274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !275 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !279, metadata !DIExpression()), !dbg !280
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !281
  %conv = fpext float %0 to double, !dbg !281
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !282
  ret void, !dbg !283
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !284 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !288, metadata !DIExpression()), !dbg !289
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !290
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !291
  ret void, !dbg !292
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !293 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !302
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !303
  ret void, !dbg !304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !305 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !310, metadata !DIExpression()), !dbg !311
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !312
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !313
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !315 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !318, metadata !DIExpression()), !dbg !319
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !320
  %conv = sext i8 %0 to i32, !dbg !320
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !321
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !323 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !326, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !328, metadata !DIExpression()), !dbg !332
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !333
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !334
  store i32 %0, i32* %arrayidx, align 4, !dbg !335
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !336
  store i32 0, i32* %arrayidx1, align 4, !dbg !337
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !338
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !341 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !346
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !349 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !352, metadata !DIExpression()), !dbg !353
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !354
  %conv = zext i8 %0 to i32, !dbg !354
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !355
  ret void, !dbg !356
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !357 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !361, metadata !DIExpression()), !dbg !362
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !363
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !366 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !378
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !379
  %1 = load i32, i32* %intOne, align 4, !dbg !379
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !380
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !381
  %3 = load i32, i32* %intTwo, align 4, !dbg !381
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !382
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !384 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !388, metadata !DIExpression()), !dbg !389
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !390, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata i64* %i, metadata !392, metadata !DIExpression()), !dbg !393
  store i64 0, i64* %i, align 8, !dbg !394
  br label %for.cond, !dbg !396

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !397
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !399
  %cmp = icmp ult i64 %0, %1, !dbg !400
  br i1 %cmp, label %for.body, label %for.end, !dbg !401

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !402
  %3 = load i64, i64* %i, align 8, !dbg !404
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !402
  %4 = load i8, i8* %arrayidx, align 1, !dbg !402
  %conv = zext i8 %4 to i32, !dbg !402
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !405
  br label %for.inc, !dbg !406

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !407
  %inc = add i64 %5, 1, !dbg !407
  store i64 %inc, i64* %i, align 8, !dbg !407
  br label %for.cond, !dbg !408, !llvm.loop !409

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !411
  ret void, !dbg !412
}

declare dso_local i32 @puts(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !413 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !416, metadata !DIExpression()), !dbg !417
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !418, metadata !DIExpression()), !dbg !419
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !422, metadata !DIExpression()), !dbg !423
  store i64 0, i64* %numWritten, align 8, !dbg !423
  br label %while.cond, !dbg !424

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !425
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !426
  %cmp = icmp ult i64 %0, %1, !dbg !427
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !428

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #6, !dbg !429
  %2 = load i16*, i16** %call, align 8, !dbg !429
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !429
  %4 = load i64, i64* %numWritten, align 8, !dbg !429
  %mul = mul i64 2, %4, !dbg !429
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !429
  %5 = load i8, i8* %arrayidx, align 1, !dbg !429
  %conv = sext i8 %5 to i32, !dbg !429
  %idxprom = sext i32 %conv to i64, !dbg !429
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !429
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !429
  %conv2 = zext i16 %6 to i32, !dbg !429
  %and = and i32 %conv2, 4096, !dbg !429
  %tobool = icmp ne i32 %and, 0, !dbg !429
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !430

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #6, !dbg !431
  %7 = load i16*, i16** %call3, align 8, !dbg !431
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !431
  %9 = load i64, i64* %numWritten, align 8, !dbg !431
  %mul4 = mul i64 2, %9, !dbg !431
  %add = add i64 %mul4, 1, !dbg !431
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !431
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !431
  %conv6 = sext i8 %10 to i32, !dbg !431
  %idxprom7 = sext i32 %conv6 to i64, !dbg !431
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !431
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !431
  %conv9 = zext i16 %11 to i32, !dbg !431
  %and10 = and i32 %conv9, 4096, !dbg !431
  %tobool11 = icmp ne i32 %and10, 0, !dbg !430
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !432
  br i1 %12, label %while.body, label %while.end, !dbg !424

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !433, metadata !DIExpression()), !dbg !435
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !436
  %14 = load i64, i64* %numWritten, align 8, !dbg !437
  %mul12 = mul i64 2, %14, !dbg !438
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !436
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !439
  %15 = load i32, i32* %byte, align 4, !dbg !440
  %conv15 = trunc i32 %15 to i8, !dbg !441
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !442
  %17 = load i64, i64* %numWritten, align 8, !dbg !443
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !442
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !444
  %18 = load i64, i64* %numWritten, align 8, !dbg !445
  %inc = add i64 %18, 1, !dbg !445
  store i64 %inc, i64* %numWritten, align 8, !dbg !445
  br label %while.cond, !dbg !424, !llvm.loop !446

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !448
  ret i64 %19, !dbg !449
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !450 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !453, metadata !DIExpression()), !dbg !454
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !455, metadata !DIExpression()), !dbg !456
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !459, metadata !DIExpression()), !dbg !460
  store i64 0, i64* %numWritten, align 8, !dbg !460
  br label %while.cond, !dbg !461

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !462
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !463
  %cmp = icmp ult i64 %0, %1, !dbg !464
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !465

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !466
  %3 = load i64, i64* %numWritten, align 8, !dbg !467
  %mul = mul i64 2, %3, !dbg !468
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !466
  %4 = load i32, i32* %arrayidx, align 4, !dbg !466
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !469
  %tobool = icmp ne i32 %call, 0, !dbg !469
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !470

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !471
  %6 = load i64, i64* %numWritten, align 8, !dbg !472
  %mul1 = mul i64 2, %6, !dbg !473
  %add = add i64 %mul1, 1, !dbg !474
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !471
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !471
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !475
  %tobool4 = icmp ne i32 %call3, 0, !dbg !470
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !476
  br i1 %8, label %while.body, label %while.end, !dbg !461

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !477, metadata !DIExpression()), !dbg !479
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !480
  %10 = load i64, i64* %numWritten, align 8, !dbg !481
  %mul5 = mul i64 2, %10, !dbg !482
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !480
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !483
  %11 = load i32, i32* %byte, align 4, !dbg !484
  %conv = trunc i32 %11 to i8, !dbg !485
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !486
  %13 = load i64, i64* %numWritten, align 8, !dbg !487
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !486
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !488
  %14 = load i64, i64* %numWritten, align 8, !dbg !489
  %inc = add i64 %14, 1, !dbg !489
  store i64 %inc, i64* %numWritten, align 8, !dbg !489
  br label %while.cond, !dbg !461, !llvm.loop !490

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !492
  ret i64 %15, !dbg !493
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !494 {
entry:
  ret i32 1, !dbg !497
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !498 {
entry:
  ret i32 0, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !500 {
entry:
  %call = call i32 @rand() #7, !dbg !501
  %rem = srem i32 %call, 2, !dbg !502
  ret i32 %rem, !dbg !503
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !504 {
entry:
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !506 {
entry:
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !508 {
entry:
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !510 {
entry:
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !512 {
entry:
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !514 {
entry:
  ret void, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !516 {
entry:
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !518 {
entry:
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !520 {
entry:
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !522 {
entry:
  ret void, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !524 {
entry:
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !526 {
entry:
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !528 {
entry:
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !530 {
entry:
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !532 {
entry:
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !534 {
entry:
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !536 {
entry:
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2, !54, !13}
!llvm.ident = !{!56, !56, !56}
!llvm.module.flags = !{!57, !58, !59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_badData", scope: !2, file: !3, line: 21, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_652/source_code")
!4 = !{}
!5 = !{!0, !6, !9}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodG2BData", scope: !2, file: !3, line: 22, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodB2GData", scope: !2, file: !3, line: 23, type: !8, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !13, file: !14, line: 174, type: !8, isLocal: false, isDefinition: true)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !32, globals: !36, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_652/source_code")
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 46, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!20 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!32 = !{!33, !8, !34, !35}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!11, !37, !39, !41, !43, !45, !47, !49}
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !13, file: !14, line: 175, type: !8, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !13, file: !14, line: 176, type: !8, isLocal: false, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "globalTrue", scope: !13, file: !14, line: 181, type: !8, isLocal: false, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "globalFalse", scope: !13, file: !14, line: 182, type: !8, isLocal: false, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "globalFive", scope: !13, file: !14, line: 183, type: !8, isLocal: false, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "globalArgc", scope: !13, file: !14, line: 214, type: !8, isLocal: false, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "globalArgv", scope: !13, file: !14, line: 215, type: !51, isLocal: false, isDefinition: true)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_652/source_code")
!56 = !{!"clang version 12.0.0"}
!57 = !{i32 7, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_bad", scope: !3, file: !3, line: 29, type: !61, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !DILocalVariable(name: "data", scope: !60, file: !3, line: 31, type: !8)
!64 = !DILocation(line: 31, column: 9, scope: !60)
!65 = !DILocation(line: 33, column: 10, scope: !60)
!66 = !DILocation(line: 35, column: 12, scope: !60)
!67 = !DILocation(line: 35, column: 5, scope: !60)
!68 = !DILocation(line: 36, column: 68, scope: !60)
!69 = !DILocation(line: 36, column: 66, scope: !60)
!70 = !DILocation(line: 37, column: 5, scope: !60)
!71 = !DILocation(line: 38, column: 1, scope: !60)
!72 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 47, type: !61, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!73 = !DILocalVariable(name: "data", scope: !72, file: !3, line: 49, type: !8)
!74 = !DILocation(line: 49, column: 9, scope: !72)
!75 = !DILocation(line: 51, column: 10, scope: !72)
!76 = !DILocation(line: 54, column: 10, scope: !72)
!77 = !DILocation(line: 55, column: 72, scope: !72)
!78 = !DILocation(line: 55, column: 70, scope: !72)
!79 = !DILocation(line: 56, column: 5, scope: !72)
!80 = !DILocation(line: 57, column: 1, scope: !72)
!81 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 60, type: !61, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!82 = !DILocalVariable(name: "data", scope: !81, file: !3, line: 62, type: !8)
!83 = !DILocation(line: 62, column: 9, scope: !81)
!84 = !DILocation(line: 64, column: 10, scope: !81)
!85 = !DILocation(line: 66, column: 12, scope: !81)
!86 = !DILocation(line: 66, column: 5, scope: !81)
!87 = !DILocation(line: 67, column: 72, scope: !81)
!88 = !DILocation(line: 67, column: 70, scope: !81)
!89 = !DILocation(line: 68, column: 5, scope: !81)
!90 = !DILocation(line: 69, column: 1, scope: !81)
!91 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_good", scope: !3, file: !3, line: 71, type: !61, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!92 = !DILocation(line: 73, column: 5, scope: !91)
!93 = !DILocation(line: 74, column: 5, scope: !91)
!94 = !DILocation(line: 75, column: 1, scope: !91)
!95 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink", scope: !55, file: !55, line: 26, type: !61, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !4)
!96 = !DILocalVariable(name: "data", scope: !95, file: !55, line: 28, type: !8)
!97 = !DILocation(line: 28, column: 9, scope: !95)
!98 = !DILocation(line: 28, column: 16, scope: !95)
!99 = !DILocalVariable(name: "i", scope: !100, file: !55, line: 30, type: !8)
!100 = distinct !DILexicalBlock(scope: !95, file: !55, line: 29, column: 5)
!101 = !DILocation(line: 30, column: 13, scope: !100)
!102 = !DILocalVariable(name: "buffer", scope: !100, file: !55, line: 31, type: !103)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 320, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 10)
!106 = !DILocation(line: 31, column: 13, scope: !100)
!107 = !DILocation(line: 34, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !100, file: !55, line: 34, column: 13)
!109 = !DILocation(line: 34, column: 18, scope: !108)
!110 = !DILocation(line: 34, column: 13, scope: !100)
!111 = !DILocation(line: 36, column: 20, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !55, line: 35, column: 9)
!113 = !DILocation(line: 36, column: 13, scope: !112)
!114 = !DILocation(line: 36, column: 26, scope: !112)
!115 = !DILocation(line: 38, column: 19, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !55, line: 38, column: 13)
!117 = !DILocation(line: 38, column: 17, scope: !116)
!118 = !DILocation(line: 38, column: 24, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !55, line: 38, column: 13)
!120 = !DILocation(line: 38, column: 26, scope: !119)
!121 = !DILocation(line: 38, column: 13, scope: !116)
!122 = !DILocation(line: 40, column: 37, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !55, line: 39, column: 13)
!124 = !DILocation(line: 40, column: 30, scope: !123)
!125 = !DILocation(line: 40, column: 17, scope: !123)
!126 = !DILocation(line: 41, column: 13, scope: !123)
!127 = !DILocation(line: 38, column: 33, scope: !119)
!128 = !DILocation(line: 38, column: 13, scope: !119)
!129 = distinct !{!129, !121, !130, !131}
!130 = !DILocation(line: 41, column: 13, scope: !116)
!131 = !{!"llvm.loop.mustprogress"}
!132 = !DILocation(line: 42, column: 9, scope: !112)
!133 = !DILocation(line: 45, column: 13, scope: !134)
!134 = distinct !DILexicalBlock(scope: !108, file: !55, line: 44, column: 9)
!135 = !DILocation(line: 48, column: 1, scope: !95)
!136 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodG2BSink", scope: !55, file: !55, line: 55, type: !61, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !4)
!137 = !DILocalVariable(name: "data", scope: !136, file: !55, line: 57, type: !8)
!138 = !DILocation(line: 57, column: 9, scope: !136)
!139 = !DILocation(line: 57, column: 16, scope: !136)
!140 = !DILocalVariable(name: "i", scope: !141, file: !55, line: 59, type: !8)
!141 = distinct !DILexicalBlock(scope: !136, file: !55, line: 58, column: 5)
!142 = !DILocation(line: 59, column: 13, scope: !141)
!143 = !DILocalVariable(name: "buffer", scope: !141, file: !55, line: 60, type: !103)
!144 = !DILocation(line: 60, column: 13, scope: !141)
!145 = !DILocation(line: 63, column: 13, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !55, line: 63, column: 13)
!147 = !DILocation(line: 63, column: 18, scope: !146)
!148 = !DILocation(line: 63, column: 13, scope: !141)
!149 = !DILocation(line: 65, column: 20, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !55, line: 64, column: 9)
!151 = !DILocation(line: 65, column: 13, scope: !150)
!152 = !DILocation(line: 65, column: 26, scope: !150)
!153 = !DILocation(line: 67, column: 19, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !55, line: 67, column: 13)
!155 = !DILocation(line: 67, column: 17, scope: !154)
!156 = !DILocation(line: 67, column: 24, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !55, line: 67, column: 13)
!158 = !DILocation(line: 67, column: 26, scope: !157)
!159 = !DILocation(line: 67, column: 13, scope: !154)
!160 = !DILocation(line: 69, column: 37, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !55, line: 68, column: 13)
!162 = !DILocation(line: 69, column: 30, scope: !161)
!163 = !DILocation(line: 69, column: 17, scope: !161)
!164 = !DILocation(line: 70, column: 13, scope: !161)
!165 = !DILocation(line: 67, column: 33, scope: !157)
!166 = !DILocation(line: 67, column: 13, scope: !157)
!167 = distinct !{!167, !159, !168, !131}
!168 = !DILocation(line: 70, column: 13, scope: !154)
!169 = !DILocation(line: 71, column: 9, scope: !150)
!170 = !DILocation(line: 74, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !146, file: !55, line: 73, column: 9)
!172 = !DILocation(line: 77, column: 1, scope: !136)
!173 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink", scope: !55, file: !55, line: 80, type: !61, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !4)
!174 = !DILocalVariable(name: "data", scope: !173, file: !55, line: 82, type: !8)
!175 = !DILocation(line: 82, column: 9, scope: !173)
!176 = !DILocation(line: 82, column: 16, scope: !173)
!177 = !DILocalVariable(name: "i", scope: !178, file: !55, line: 84, type: !8)
!178 = distinct !DILexicalBlock(scope: !173, file: !55, line: 83, column: 5)
!179 = !DILocation(line: 84, column: 13, scope: !178)
!180 = !DILocalVariable(name: "buffer", scope: !178, file: !55, line: 85, type: !103)
!181 = !DILocation(line: 85, column: 13, scope: !178)
!182 = !DILocation(line: 87, column: 13, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !55, line: 87, column: 13)
!184 = !DILocation(line: 87, column: 18, scope: !183)
!185 = !DILocation(line: 87, column: 23, scope: !183)
!186 = !DILocation(line: 87, column: 26, scope: !183)
!187 = !DILocation(line: 87, column: 31, scope: !183)
!188 = !DILocation(line: 87, column: 13, scope: !178)
!189 = !DILocation(line: 89, column: 20, scope: !190)
!190 = distinct !DILexicalBlock(scope: !183, file: !55, line: 88, column: 9)
!191 = !DILocation(line: 89, column: 13, scope: !190)
!192 = !DILocation(line: 89, column: 26, scope: !190)
!193 = !DILocation(line: 91, column: 19, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !55, line: 91, column: 13)
!195 = !DILocation(line: 91, column: 17, scope: !194)
!196 = !DILocation(line: 91, column: 24, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !55, line: 91, column: 13)
!198 = !DILocation(line: 91, column: 26, scope: !197)
!199 = !DILocation(line: 91, column: 13, scope: !194)
!200 = !DILocation(line: 93, column: 37, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !55, line: 92, column: 13)
!202 = !DILocation(line: 93, column: 30, scope: !201)
!203 = !DILocation(line: 93, column: 17, scope: !201)
!204 = !DILocation(line: 94, column: 13, scope: !201)
!205 = !DILocation(line: 91, column: 33, scope: !197)
!206 = !DILocation(line: 91, column: 13, scope: !197)
!207 = distinct !{!207, !199, !208, !131}
!208 = !DILocation(line: 94, column: 13, scope: !194)
!209 = !DILocation(line: 95, column: 9, scope: !190)
!210 = !DILocation(line: 98, column: 13, scope: !211)
!211 = distinct !DILexicalBlock(scope: !183, file: !55, line: 97, column: 9)
!212 = !DILocation(line: 101, column: 1, scope: !173)
!213 = distinct !DISubprogram(name: "printLine", scope: !14, file: !14, line: 11, type: !214, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !52}
!216 = !DILocalVariable(name: "line", arg: 1, scope: !213, file: !14, line: 11, type: !52)
!217 = !DILocation(line: 11, column: 25, scope: !213)
!218 = !DILocation(line: 13, column: 1, scope: !213)
!219 = !DILocation(line: 14, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !213, file: !14, line: 14, column: 8)
!221 = !DILocation(line: 14, column: 13, scope: !220)
!222 = !DILocation(line: 14, column: 8, scope: !213)
!223 = !DILocation(line: 16, column: 24, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !14, line: 15, column: 5)
!225 = !DILocation(line: 16, column: 9, scope: !224)
!226 = !DILocation(line: 17, column: 5, scope: !224)
!227 = !DILocation(line: 18, column: 5, scope: !213)
!228 = !DILocation(line: 19, column: 1, scope: !213)
!229 = distinct !DISubprogram(name: "printSinkLine", scope: !14, file: !14, line: 20, type: !214, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!230 = !DILocalVariable(name: "line", arg: 1, scope: !229, file: !14, line: 20, type: !52)
!231 = !DILocation(line: 20, column: 29, scope: !229)
!232 = !DILocation(line: 22, column: 8, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !14, line: 22, column: 8)
!234 = !DILocation(line: 22, column: 13, scope: !233)
!235 = !DILocation(line: 22, column: 8, scope: !229)
!236 = !DILocation(line: 24, column: 24, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !14, line: 23, column: 5)
!238 = !DILocation(line: 24, column: 9, scope: !237)
!239 = !DILocation(line: 25, column: 5, scope: !237)
!240 = !DILocation(line: 26, column: 1, scope: !229)
!241 = distinct !DISubprogram(name: "printWLine", scope: !14, file: !14, line: 27, type: !242, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !246, line: 74, baseType: !8)
!246 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!247 = !DILocalVariable(name: "line", arg: 1, scope: !241, file: !14, line: 27, type: !244)
!248 = !DILocation(line: 27, column: 29, scope: !241)
!249 = !DILocation(line: 29, column: 8, scope: !250)
!250 = distinct !DILexicalBlock(scope: !241, file: !14, line: 29, column: 8)
!251 = !DILocation(line: 29, column: 13, scope: !250)
!252 = !DILocation(line: 29, column: 8, scope: !241)
!253 = !DILocation(line: 31, column: 27, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !14, line: 30, column: 5)
!255 = !DILocation(line: 31, column: 9, scope: !254)
!256 = !DILocation(line: 32, column: 5, scope: !254)
!257 = !DILocation(line: 33, column: 1, scope: !241)
!258 = distinct !DISubprogram(name: "printIntLine", scope: !14, file: !14, line: 35, type: !259, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !8}
!261 = !DILocalVariable(name: "intNumber", arg: 1, scope: !258, file: !14, line: 35, type: !8)
!262 = !DILocation(line: 35, column: 24, scope: !258)
!263 = !DILocation(line: 37, column: 20, scope: !258)
!264 = !DILocation(line: 37, column: 5, scope: !258)
!265 = !DILocation(line: 38, column: 1, scope: !258)
!266 = distinct !DISubprogram(name: "printShortLine", scope: !14, file: !14, line: 40, type: !267, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !269}
!269 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!270 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !266, file: !14, line: 40, type: !269)
!271 = !DILocation(line: 40, column: 28, scope: !266)
!272 = !DILocation(line: 42, column: 21, scope: !266)
!273 = !DILocation(line: 42, column: 5, scope: !266)
!274 = !DILocation(line: 43, column: 1, scope: !266)
!275 = distinct !DISubprogram(name: "printFloatLine", scope: !14, file: !14, line: 45, type: !276, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !278}
!278 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!279 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !275, file: !14, line: 45, type: !278)
!280 = !DILocation(line: 45, column: 28, scope: !275)
!281 = !DILocation(line: 47, column: 20, scope: !275)
!282 = !DILocation(line: 47, column: 5, scope: !275)
!283 = !DILocation(line: 48, column: 1, scope: !275)
!284 = distinct !DISubprogram(name: "printLongLine", scope: !14, file: !14, line: 50, type: !285, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !287}
!287 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!288 = !DILocalVariable(name: "longNumber", arg: 1, scope: !284, file: !14, line: 50, type: !287)
!289 = !DILocation(line: 50, column: 26, scope: !284)
!290 = !DILocation(line: 52, column: 21, scope: !284)
!291 = !DILocation(line: 52, column: 5, scope: !284)
!292 = !DILocation(line: 53, column: 1, scope: !284)
!293 = distinct !DISubprogram(name: "printLongLongLine", scope: !14, file: !14, line: 55, type: !294, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !296}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !297, line: 27, baseType: !298)
!297 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !299, line: 44, baseType: !287)
!299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!300 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !293, file: !14, line: 55, type: !296)
!301 = !DILocation(line: 55, column: 33, scope: !293)
!302 = !DILocation(line: 57, column: 29, scope: !293)
!303 = !DILocation(line: 57, column: 5, scope: !293)
!304 = !DILocation(line: 58, column: 1, scope: !293)
!305 = distinct !DISubprogram(name: "printSizeTLine", scope: !14, file: !14, line: 60, type: !306, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !308}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !246, line: 46, baseType: !309)
!309 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!310 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !305, file: !14, line: 60, type: !308)
!311 = !DILocation(line: 60, column: 29, scope: !305)
!312 = !DILocation(line: 62, column: 21, scope: !305)
!313 = !DILocation(line: 62, column: 5, scope: !305)
!314 = !DILocation(line: 63, column: 1, scope: !305)
!315 = distinct !DISubprogram(name: "printHexCharLine", scope: !14, file: !14, line: 65, type: !316, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !53}
!318 = !DILocalVariable(name: "charHex", arg: 1, scope: !315, file: !14, line: 65, type: !53)
!319 = !DILocation(line: 65, column: 29, scope: !315)
!320 = !DILocation(line: 67, column: 22, scope: !315)
!321 = !DILocation(line: 67, column: 5, scope: !315)
!322 = !DILocation(line: 68, column: 1, scope: !315)
!323 = distinct !DISubprogram(name: "printWcharLine", scope: !14, file: !14, line: 70, type: !324, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !245}
!326 = !DILocalVariable(name: "wideChar", arg: 1, scope: !323, file: !14, line: 70, type: !245)
!327 = !DILocation(line: 70, column: 29, scope: !323)
!328 = !DILocalVariable(name: "s", scope: !323, file: !14, line: 74, type: !329)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 64, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 2)
!332 = !DILocation(line: 74, column: 13, scope: !323)
!333 = !DILocation(line: 75, column: 16, scope: !323)
!334 = !DILocation(line: 75, column: 9, scope: !323)
!335 = !DILocation(line: 75, column: 14, scope: !323)
!336 = !DILocation(line: 76, column: 9, scope: !323)
!337 = !DILocation(line: 76, column: 14, scope: !323)
!338 = !DILocation(line: 77, column: 21, scope: !323)
!339 = !DILocation(line: 77, column: 5, scope: !323)
!340 = !DILocation(line: 78, column: 1, scope: !323)
!341 = distinct !DISubprogram(name: "printUnsignedLine", scope: !14, file: !14, line: 80, type: !342, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !18}
!344 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !341, file: !14, line: 80, type: !18)
!345 = !DILocation(line: 80, column: 33, scope: !341)
!346 = !DILocation(line: 82, column: 20, scope: !341)
!347 = !DILocation(line: 82, column: 5, scope: !341)
!348 = !DILocation(line: 83, column: 1, scope: !341)
!349 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !14, file: !14, line: 85, type: !350, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !35}
!352 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !349, file: !14, line: 85, type: !35)
!353 = !DILocation(line: 85, column: 45, scope: !349)
!354 = !DILocation(line: 87, column: 22, scope: !349)
!355 = !DILocation(line: 87, column: 5, scope: !349)
!356 = !DILocation(line: 88, column: 1, scope: !349)
!357 = distinct !DISubprogram(name: "printDoubleLine", scope: !14, file: !14, line: 90, type: !358, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !360}
!360 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!361 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !357, file: !14, line: 90, type: !360)
!362 = !DILocation(line: 90, column: 29, scope: !357)
!363 = !DILocation(line: 92, column: 20, scope: !357)
!364 = !DILocation(line: 92, column: 5, scope: !357)
!365 = !DILocation(line: 93, column: 1, scope: !357)
!366 = distinct !DISubprogram(name: "printStructLine", scope: !14, file: !14, line: 95, type: !367, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !371, line: 100, baseType: !372)
!371 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_652/source_code")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !371, line: 96, size: 64, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !372, file: !371, line: 98, baseType: !8, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !372, file: !371, line: 99, baseType: !8, size: 32, offset: 32)
!376 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !366, file: !14, line: 95, type: !369)
!377 = !DILocation(line: 95, column: 40, scope: !366)
!378 = !DILocation(line: 97, column: 26, scope: !366)
!379 = !DILocation(line: 97, column: 47, scope: !366)
!380 = !DILocation(line: 97, column: 55, scope: !366)
!381 = !DILocation(line: 97, column: 76, scope: !366)
!382 = !DILocation(line: 97, column: 5, scope: !366)
!383 = !DILocation(line: 98, column: 1, scope: !366)
!384 = distinct !DISubprogram(name: "printBytesLine", scope: !14, file: !14, line: 100, type: !385, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387, !308}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!388 = !DILocalVariable(name: "bytes", arg: 1, scope: !384, file: !14, line: 100, type: !387)
!389 = !DILocation(line: 100, column: 38, scope: !384)
!390 = !DILocalVariable(name: "numBytes", arg: 2, scope: !384, file: !14, line: 100, type: !308)
!391 = !DILocation(line: 100, column: 52, scope: !384)
!392 = !DILocalVariable(name: "i", scope: !384, file: !14, line: 102, type: !308)
!393 = !DILocation(line: 102, column: 12, scope: !384)
!394 = !DILocation(line: 103, column: 12, scope: !395)
!395 = distinct !DILexicalBlock(scope: !384, file: !14, line: 103, column: 5)
!396 = !DILocation(line: 103, column: 10, scope: !395)
!397 = !DILocation(line: 103, column: 17, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !14, line: 103, column: 5)
!399 = !DILocation(line: 103, column: 21, scope: !398)
!400 = !DILocation(line: 103, column: 19, scope: !398)
!401 = !DILocation(line: 103, column: 5, scope: !395)
!402 = !DILocation(line: 105, column: 24, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !14, line: 104, column: 5)
!404 = !DILocation(line: 105, column: 30, scope: !403)
!405 = !DILocation(line: 105, column: 9, scope: !403)
!406 = !DILocation(line: 106, column: 5, scope: !403)
!407 = !DILocation(line: 103, column: 31, scope: !398)
!408 = !DILocation(line: 103, column: 5, scope: !398)
!409 = distinct !{!409, !401, !410, !131}
!410 = !DILocation(line: 106, column: 5, scope: !395)
!411 = !DILocation(line: 107, column: 5, scope: !384)
!412 = !DILocation(line: 108, column: 1, scope: !384)
!413 = distinct !DISubprogram(name: "decodeHexChars", scope: !14, file: !14, line: 113, type: !414, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!414 = !DISubroutineType(types: !415)
!415 = !{!308, !387, !308, !52}
!416 = !DILocalVariable(name: "bytes", arg: 1, scope: !413, file: !14, line: 113, type: !387)
!417 = !DILocation(line: 113, column: 39, scope: !413)
!418 = !DILocalVariable(name: "numBytes", arg: 2, scope: !413, file: !14, line: 113, type: !308)
!419 = !DILocation(line: 113, column: 53, scope: !413)
!420 = !DILocalVariable(name: "hex", arg: 3, scope: !413, file: !14, line: 113, type: !52)
!421 = !DILocation(line: 113, column: 71, scope: !413)
!422 = !DILocalVariable(name: "numWritten", scope: !413, file: !14, line: 115, type: !308)
!423 = !DILocation(line: 115, column: 12, scope: !413)
!424 = !DILocation(line: 121, column: 5, scope: !413)
!425 = !DILocation(line: 121, column: 12, scope: !413)
!426 = !DILocation(line: 121, column: 25, scope: !413)
!427 = !DILocation(line: 121, column: 23, scope: !413)
!428 = !DILocation(line: 121, column: 34, scope: !413)
!429 = !DILocation(line: 121, column: 37, scope: !413)
!430 = !DILocation(line: 121, column: 67, scope: !413)
!431 = !DILocation(line: 121, column: 70, scope: !413)
!432 = !DILocation(line: 0, scope: !413)
!433 = !DILocalVariable(name: "byte", scope: !434, file: !14, line: 123, type: !8)
!434 = distinct !DILexicalBlock(scope: !413, file: !14, line: 122, column: 5)
!435 = !DILocation(line: 123, column: 13, scope: !434)
!436 = !DILocation(line: 124, column: 17, scope: !434)
!437 = !DILocation(line: 124, column: 25, scope: !434)
!438 = !DILocation(line: 124, column: 23, scope: !434)
!439 = !DILocation(line: 124, column: 9, scope: !434)
!440 = !DILocation(line: 125, column: 45, scope: !434)
!441 = !DILocation(line: 125, column: 29, scope: !434)
!442 = !DILocation(line: 125, column: 9, scope: !434)
!443 = !DILocation(line: 125, column: 15, scope: !434)
!444 = !DILocation(line: 125, column: 27, scope: !434)
!445 = !DILocation(line: 126, column: 9, scope: !434)
!446 = distinct !{!446, !424, !447, !131}
!447 = !DILocation(line: 127, column: 5, scope: !413)
!448 = !DILocation(line: 129, column: 12, scope: !413)
!449 = !DILocation(line: 129, column: 5, scope: !413)
!450 = distinct !DISubprogram(name: "decodeHexWChars", scope: !14, file: !14, line: 135, type: !451, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!451 = !DISubroutineType(types: !452)
!452 = !{!308, !387, !308, !244}
!453 = !DILocalVariable(name: "bytes", arg: 1, scope: !450, file: !14, line: 135, type: !387)
!454 = !DILocation(line: 135, column: 41, scope: !450)
!455 = !DILocalVariable(name: "numBytes", arg: 2, scope: !450, file: !14, line: 135, type: !308)
!456 = !DILocation(line: 135, column: 55, scope: !450)
!457 = !DILocalVariable(name: "hex", arg: 3, scope: !450, file: !14, line: 135, type: !244)
!458 = !DILocation(line: 135, column: 76, scope: !450)
!459 = !DILocalVariable(name: "numWritten", scope: !450, file: !14, line: 137, type: !308)
!460 = !DILocation(line: 137, column: 12, scope: !450)
!461 = !DILocation(line: 143, column: 5, scope: !450)
!462 = !DILocation(line: 143, column: 12, scope: !450)
!463 = !DILocation(line: 143, column: 25, scope: !450)
!464 = !DILocation(line: 143, column: 23, scope: !450)
!465 = !DILocation(line: 143, column: 34, scope: !450)
!466 = !DILocation(line: 143, column: 47, scope: !450)
!467 = !DILocation(line: 143, column: 55, scope: !450)
!468 = !DILocation(line: 143, column: 53, scope: !450)
!469 = !DILocation(line: 143, column: 37, scope: !450)
!470 = !DILocation(line: 143, column: 68, scope: !450)
!471 = !DILocation(line: 143, column: 81, scope: !450)
!472 = !DILocation(line: 143, column: 89, scope: !450)
!473 = !DILocation(line: 143, column: 87, scope: !450)
!474 = !DILocation(line: 143, column: 100, scope: !450)
!475 = !DILocation(line: 143, column: 71, scope: !450)
!476 = !DILocation(line: 0, scope: !450)
!477 = !DILocalVariable(name: "byte", scope: !478, file: !14, line: 145, type: !8)
!478 = distinct !DILexicalBlock(scope: !450, file: !14, line: 144, column: 5)
!479 = !DILocation(line: 145, column: 13, scope: !478)
!480 = !DILocation(line: 146, column: 18, scope: !478)
!481 = !DILocation(line: 146, column: 26, scope: !478)
!482 = !DILocation(line: 146, column: 24, scope: !478)
!483 = !DILocation(line: 146, column: 9, scope: !478)
!484 = !DILocation(line: 147, column: 45, scope: !478)
!485 = !DILocation(line: 147, column: 29, scope: !478)
!486 = !DILocation(line: 147, column: 9, scope: !478)
!487 = !DILocation(line: 147, column: 15, scope: !478)
!488 = !DILocation(line: 147, column: 27, scope: !478)
!489 = !DILocation(line: 148, column: 9, scope: !478)
!490 = distinct !{!490, !461, !491, !131}
!491 = !DILocation(line: 149, column: 5, scope: !450)
!492 = !DILocation(line: 151, column: 12, scope: !450)
!493 = !DILocation(line: 151, column: 5, scope: !450)
!494 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !14, file: !14, line: 156, type: !495, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!495 = !DISubroutineType(types: !496)
!496 = !{!8}
!497 = !DILocation(line: 158, column: 5, scope: !494)
!498 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !14, file: !14, line: 161, type: !495, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!499 = !DILocation(line: 163, column: 5, scope: !498)
!500 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !14, file: !14, line: 166, type: !495, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!501 = !DILocation(line: 168, column: 13, scope: !500)
!502 = !DILocation(line: 168, column: 20, scope: !500)
!503 = !DILocation(line: 168, column: 5, scope: !500)
!504 = distinct !DISubprogram(name: "good1", scope: !14, file: !14, line: 187, type: !61, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!505 = !DILocation(line: 187, column: 16, scope: !504)
!506 = distinct !DISubprogram(name: "good2", scope: !14, file: !14, line: 188, type: !61, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!507 = !DILocation(line: 188, column: 16, scope: !506)
!508 = distinct !DISubprogram(name: "good3", scope: !14, file: !14, line: 189, type: !61, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!509 = !DILocation(line: 189, column: 16, scope: !508)
!510 = distinct !DISubprogram(name: "good4", scope: !14, file: !14, line: 190, type: !61, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!511 = !DILocation(line: 190, column: 16, scope: !510)
!512 = distinct !DISubprogram(name: "good5", scope: !14, file: !14, line: 191, type: !61, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!513 = !DILocation(line: 191, column: 16, scope: !512)
!514 = distinct !DISubprogram(name: "good6", scope: !14, file: !14, line: 192, type: !61, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!515 = !DILocation(line: 192, column: 16, scope: !514)
!516 = distinct !DISubprogram(name: "good7", scope: !14, file: !14, line: 193, type: !61, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!517 = !DILocation(line: 193, column: 16, scope: !516)
!518 = distinct !DISubprogram(name: "good8", scope: !14, file: !14, line: 194, type: !61, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!519 = !DILocation(line: 194, column: 16, scope: !518)
!520 = distinct !DISubprogram(name: "good9", scope: !14, file: !14, line: 195, type: !61, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!521 = !DILocation(line: 195, column: 16, scope: !520)
!522 = distinct !DISubprogram(name: "bad1", scope: !14, file: !14, line: 198, type: !61, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!523 = !DILocation(line: 198, column: 15, scope: !522)
!524 = distinct !DISubprogram(name: "bad2", scope: !14, file: !14, line: 199, type: !61, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!525 = !DILocation(line: 199, column: 15, scope: !524)
!526 = distinct !DISubprogram(name: "bad3", scope: !14, file: !14, line: 200, type: !61, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!527 = !DILocation(line: 200, column: 15, scope: !526)
!528 = distinct !DISubprogram(name: "bad4", scope: !14, file: !14, line: 201, type: !61, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!529 = !DILocation(line: 201, column: 15, scope: !528)
!530 = distinct !DISubprogram(name: "bad5", scope: !14, file: !14, line: 202, type: !61, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!531 = !DILocation(line: 202, column: 15, scope: !530)
!532 = distinct !DISubprogram(name: "bad6", scope: !14, file: !14, line: 203, type: !61, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!533 = !DILocation(line: 203, column: 15, scope: !532)
!534 = distinct !DISubprogram(name: "bad7", scope: !14, file: !14, line: 204, type: !61, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!535 = !DILocation(line: 204, column: 15, scope: !534)
!536 = distinct !DISubprogram(name: "bad8", scope: !14, file: !14, line: 205, type: !61, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!537 = !DILocation(line: 205, column: 15, scope: !536)
!538 = distinct !DISubprogram(name: "bad9", scope: !14, file: !14, line: 206, type: !61, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!539 = !DILocation(line: 206, column: 15, scope: !538)
