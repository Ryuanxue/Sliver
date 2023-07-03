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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_bad() #0 !dbg !53 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  call void @llvm.dbg.declare(metadata i32* %data, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !58, metadata !DIExpression()), !dbg !62
  store void (i32)* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink, void (i32)** %funcPtr, align 8, !dbg !62
  store i32 -1, i32* %data, align 4, !dbg !63
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !64
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !65
  %1 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !66
  %2 = load i32, i32* %data, align 4, !dbg !67
  call void %1(i32 %2), !dbg !66
  ret void, !dbg !68
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !69 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  call void @llvm.dbg.declare(metadata i32* %data, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !72, metadata !DIExpression()), !dbg !73
  store void (i32)* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink, void (i32)** %funcPtr, align 8, !dbg !73
  store i32 -1, i32* %data, align 4, !dbg !74
  store i32 7, i32* %data, align 4, !dbg !75
  %0 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !76
  %1 = load i32, i32* %data, align 4, !dbg !77
  call void %0(i32 %1), !dbg !76
  ret void, !dbg !78
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !79 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  call void @llvm.dbg.declare(metadata i32* %data, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !82, metadata !DIExpression()), !dbg !83
  store void (i32)* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodB2GSink, void (i32)** %funcPtr, align 8, !dbg !83
  store i32 -1, i32* %data, align 4, !dbg !84
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !85
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !86
  %1 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !87
  %2 = load i32, i32* %data, align 4, !dbg !88
  call void %1(i32 %2), !dbg !87
  ret void, !dbg !89
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_good() #0 !dbg !90 {
entry:
  call void @goodG2B(), !dbg !91
  call void @goodB2G(), !dbg !92
  ret void, !dbg !93
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink(i32 %data) #0 !dbg !94 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %i, metadata !97, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !100, metadata !DIExpression()), !dbg !104
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !104
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !104
  %1 = load i32, i32* %data.addr, align 4, !dbg !105
  %cmp = icmp sge i32 %1, 0, !dbg !107
  br i1 %cmp, label %if.then, label %if.else, !dbg !108

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !109
  %idxprom = sext i32 %2 to i64, !dbg !111
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !111
  store i32 1, i32* %arrayidx, align 4, !dbg !112
  store i32 0, i32* %i, align 4, !dbg !113
  br label %for.cond, !dbg !115

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !116
  %cmp1 = icmp slt i32 %3, 10, !dbg !118
  br i1 %cmp1, label %for.body, label %for.end, !dbg !119

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !120
  %idxprom2 = sext i32 %4 to i64, !dbg !122
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !122
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !122
  call void @printIntLine(i32 %5), !dbg !123
  br label %for.inc, !dbg !124

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !125
  %inc = add nsw i32 %6, 1, !dbg !125
  store i32 %inc, i32* %i, align 4, !dbg !125
  br label %for.cond, !dbg !126, !llvm.loop !127

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !130

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !131
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !133
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink(i32 %data) #0 !dbg !134 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %i, metadata !137, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !141
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !141
  %1 = load i32, i32* %data.addr, align 4, !dbg !142
  %cmp = icmp sge i32 %1, 0, !dbg !144
  br i1 %cmp, label %if.then, label %if.else, !dbg !145

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !146
  %idxprom = sext i32 %2 to i64, !dbg !148
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !148
  store i32 1, i32* %arrayidx, align 4, !dbg !149
  store i32 0, i32* %i, align 4, !dbg !150
  br label %for.cond, !dbg !152

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !153
  %cmp1 = icmp slt i32 %3, 10, !dbg !155
  br i1 %cmp1, label %for.body, label %for.end, !dbg !156

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !157
  %idxprom2 = sext i32 %4 to i64, !dbg !159
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !159
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !159
  call void @printIntLine(i32 %5), !dbg !160
  br label %for.inc, !dbg !161

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !162
  %inc = add nsw i32 %6, 1, !dbg !162
  store i32 %inc, i32* %i, align 4, !dbg !162
  br label %for.cond, !dbg !163, !llvm.loop !164

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !166

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !167
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !169
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodB2GSink(i32 %data) #0 !dbg !170 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %i, metadata !173, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !176, metadata !DIExpression()), !dbg !177
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !177
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !177
  %1 = load i32, i32* %data.addr, align 4, !dbg !178
  %cmp = icmp sge i32 %1, 0, !dbg !180
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !181

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !182
  %cmp1 = icmp slt i32 %2, 10, !dbg !183
  br i1 %cmp1, label %if.then, label %if.else, !dbg !184

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !185
  %idxprom = sext i32 %3 to i64, !dbg !187
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !187
  store i32 1, i32* %arrayidx, align 4, !dbg !188
  store i32 0, i32* %i, align 4, !dbg !189
  br label %for.cond, !dbg !191

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !192
  %cmp2 = icmp slt i32 %4, 10, !dbg !194
  br i1 %cmp2, label %for.body, label %for.end, !dbg !195

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !196
  %idxprom3 = sext i32 %5 to i64, !dbg !198
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !198
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !198
  call void @printIntLine(i32 %6), !dbg !199
  br label %for.inc, !dbg !200

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !201
  %inc = add nsw i32 %7, 1, !dbg !201
  store i32 %inc, i32* %i, align 4, !dbg !201
  br label %for.cond, !dbg !202, !llvm.loop !203

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !205

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !206
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !208
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !209 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !212, metadata !DIExpression()), !dbg !213
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !214
  %0 = load i8*, i8** %line.addr, align 8, !dbg !215
  %cmp = icmp ne i8* %0, null, !dbg !217
  br i1 %cmp, label %if.then, label %if.end, !dbg !218

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !219
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !221
  br label %if.end, !dbg !222

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !223
  ret void, !dbg !224
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !225 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !226, metadata !DIExpression()), !dbg !227
  %0 = load i8*, i8** %line.addr, align 8, !dbg !228
  %cmp = icmp ne i8* %0, null, !dbg !230
  br i1 %cmp, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !232
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !234
  br label %if.end, !dbg !235

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !237 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !243, metadata !DIExpression()), !dbg !244
  %0 = load i32*, i32** %line.addr, align 8, !dbg !245
  %cmp = icmp ne i32* %0, null, !dbg !247
  br i1 %cmp, label %if.then, label %if.end, !dbg !248

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !249
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !251
  br label %if.end, !dbg !252

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !253
}

declare dso_local i32 @wprintf(i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !254 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !255, metadata !DIExpression()), !dbg !256
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !257
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !258
  ret void, !dbg !259
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !260 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !266
  %conv = sext i16 %0 to i32, !dbg !266
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !267
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !269 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !275
  %conv = fpext float %0 to double, !dbg !275
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !276
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !278 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !282, metadata !DIExpression()), !dbg !283
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !284
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !285
  ret void, !dbg !286
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !287 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !296
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !299 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !304, metadata !DIExpression()), !dbg !305
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !306
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !307
  ret void, !dbg !308
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !309 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !314
  %conv = sext i8 %0 to i32, !dbg !314
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !317 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !320, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !322, metadata !DIExpression()), !dbg !326
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !327
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !328
  store i32 %0, i32* %arrayidx, align 4, !dbg !329
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !330
  store i32 0, i32* %arrayidx1, align 4, !dbg !331
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !333
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !335 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !340
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !341
  ret void, !dbg !342
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !343 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !346, metadata !DIExpression()), !dbg !347
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !348
  %conv = zext i8 %0 to i32, !dbg !348
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !349
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !351 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !355, metadata !DIExpression()), !dbg !356
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !357
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !358
  ret void, !dbg !359
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !360 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !372
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !373
  %1 = load i32, i32* %intOne, align 4, !dbg !373
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !374
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !375
  %3 = load i32, i32* %intTwo, align 4, !dbg !375
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !376
  ret void, !dbg !377
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !378 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !382, metadata !DIExpression()), !dbg !383
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata i64* %i, metadata !386, metadata !DIExpression()), !dbg !387
  store i64 0, i64* %i, align 8, !dbg !388
  br label %for.cond, !dbg !390

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !391
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !393
  %cmp = icmp ult i64 %0, %1, !dbg !394
  br i1 %cmp, label %for.body, label %for.end, !dbg !395

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !396
  %3 = load i64, i64* %i, align 8, !dbg !398
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !396
  %4 = load i8, i8* %arrayidx, align 1, !dbg !396
  %conv = zext i8 %4 to i32, !dbg !396
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !399
  br label %for.inc, !dbg !400

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !401
  %inc = add i64 %5, 1, !dbg !401
  store i64 %inc, i64* %i, align 8, !dbg !401
  br label %for.cond, !dbg !402, !llvm.loop !403

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !405
  ret void, !dbg !406
}

declare dso_local i32 @puts(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !407 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !410, metadata !DIExpression()), !dbg !411
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !412, metadata !DIExpression()), !dbg !413
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !416, metadata !DIExpression()), !dbg !417
  store i64 0, i64* %numWritten, align 8, !dbg !417
  br label %while.cond, !dbg !418

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !419
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !420
  %cmp = icmp ult i64 %0, %1, !dbg !421
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !422

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #6, !dbg !423
  %2 = load i16*, i16** %call, align 8, !dbg !423
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !423
  %4 = load i64, i64* %numWritten, align 8, !dbg !423
  %mul = mul i64 2, %4, !dbg !423
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !423
  %5 = load i8, i8* %arrayidx, align 1, !dbg !423
  %conv = sext i8 %5 to i32, !dbg !423
  %idxprom = sext i32 %conv to i64, !dbg !423
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !423
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !423
  %conv2 = zext i16 %6 to i32, !dbg !423
  %and = and i32 %conv2, 4096, !dbg !423
  %tobool = icmp ne i32 %and, 0, !dbg !423
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !424

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #6, !dbg !425
  %7 = load i16*, i16** %call3, align 8, !dbg !425
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !425
  %9 = load i64, i64* %numWritten, align 8, !dbg !425
  %mul4 = mul i64 2, %9, !dbg !425
  %add = add i64 %mul4, 1, !dbg !425
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !425
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !425
  %conv6 = sext i8 %10 to i32, !dbg !425
  %idxprom7 = sext i32 %conv6 to i64, !dbg !425
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !425
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !425
  %conv9 = zext i16 %11 to i32, !dbg !425
  %and10 = and i32 %conv9, 4096, !dbg !425
  %tobool11 = icmp ne i32 %and10, 0, !dbg !424
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !426
  br i1 %12, label %while.body, label %while.end, !dbg !418

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !427, metadata !DIExpression()), !dbg !429
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !430
  %14 = load i64, i64* %numWritten, align 8, !dbg !431
  %mul12 = mul i64 2, %14, !dbg !432
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !430
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !433
  %15 = load i32, i32* %byte, align 4, !dbg !434
  %conv15 = trunc i32 %15 to i8, !dbg !435
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !436
  %17 = load i64, i64* %numWritten, align 8, !dbg !437
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !436
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !438
  %18 = load i64, i64* %numWritten, align 8, !dbg !439
  %inc = add i64 %18, 1, !dbg !439
  store i64 %inc, i64* %numWritten, align 8, !dbg !439
  br label %while.cond, !dbg !418, !llvm.loop !440

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !442
  ret i64 %19, !dbg !443
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !444 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !447, metadata !DIExpression()), !dbg !448
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !449, metadata !DIExpression()), !dbg !450
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !453, metadata !DIExpression()), !dbg !454
  store i64 0, i64* %numWritten, align 8, !dbg !454
  br label %while.cond, !dbg !455

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !456
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !457
  %cmp = icmp ult i64 %0, %1, !dbg !458
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !459

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !460
  %3 = load i64, i64* %numWritten, align 8, !dbg !461
  %mul = mul i64 2, %3, !dbg !462
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !460
  %4 = load i32, i32* %arrayidx, align 4, !dbg !460
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !463
  %tobool = icmp ne i32 %call, 0, !dbg !463
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !464

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !465
  %6 = load i64, i64* %numWritten, align 8, !dbg !466
  %mul1 = mul i64 2, %6, !dbg !467
  %add = add i64 %mul1, 1, !dbg !468
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !465
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !465
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !469
  %tobool4 = icmp ne i32 %call3, 0, !dbg !464
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !470
  br i1 %8, label %while.body, label %while.end, !dbg !455

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !471, metadata !DIExpression()), !dbg !473
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !474
  %10 = load i64, i64* %numWritten, align 8, !dbg !475
  %mul5 = mul i64 2, %10, !dbg !476
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !474
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !477
  %11 = load i32, i32* %byte, align 4, !dbg !478
  %conv = trunc i32 %11 to i8, !dbg !479
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !480
  %13 = load i64, i64* %numWritten, align 8, !dbg !481
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !480
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !482
  %14 = load i64, i64* %numWritten, align 8, !dbg !483
  %inc = add i64 %14, 1, !dbg !483
  store i64 %inc, i64* %numWritten, align 8, !dbg !483
  br label %while.cond, !dbg !455, !llvm.loop !484

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !486
  ret i64 %15, !dbg !487
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !488 {
entry:
  ret i32 1, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !492 {
entry:
  ret i32 0, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !494 {
entry:
  %call = call i32 @rand() #7, !dbg !495
  %rem = srem i32 %call, 2, !dbg !496
  ret i32 %rem, !dbg !497
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !498 {
entry:
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !500 {
entry:
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !502 {
entry:
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !504 {
entry:
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !506 {
entry:
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !508 {
entry:
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !510 {
entry:
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !512 {
entry:
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !514 {
entry:
  ret void, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !516 {
entry:
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !518 {
entry:
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !520 {
entry:
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !522 {
entry:
  ret void, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !524 {
entry:
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !526 {
entry:
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !528 {
entry:
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !530 {
entry:
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !532 {
entry:
  ret void, !dbg !533
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_649/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_649/source_code")
!46 = !{}
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_649/source_code")
!49 = !{!"clang version 12.0.0"}
!50 = !{i32 7, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_bad", scope: !45, file: !45, line: 25, type: !54, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!54 = !DISubroutineType(types: !55)
!55 = !{null}
!56 = !DILocalVariable(name: "data", scope: !53, file: !45, line: 27, type: !23)
!57 = !DILocation(line: 27, column: 9, scope: !53)
!58 = !DILocalVariable(name: "funcPtr", scope: !53, file: !45, line: 29, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !23}
!62 = !DILocation(line: 29, column: 12, scope: !53)
!63 = !DILocation(line: 31, column: 10, scope: !53)
!64 = !DILocation(line: 33, column: 12, scope: !53)
!65 = !DILocation(line: 33, column: 5, scope: !53)
!66 = !DILocation(line: 35, column: 5, scope: !53)
!67 = !DILocation(line: 35, column: 13, scope: !53)
!68 = !DILocation(line: 36, column: 1, scope: !53)
!69 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 44, type: !54, scopeLine: 45, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!70 = !DILocalVariable(name: "data", scope: !69, file: !45, line: 46, type: !23)
!71 = !DILocation(line: 46, column: 9, scope: !69)
!72 = !DILocalVariable(name: "funcPtr", scope: !69, file: !45, line: 47, type: !59)
!73 = !DILocation(line: 47, column: 12, scope: !69)
!74 = !DILocation(line: 49, column: 10, scope: !69)
!75 = !DILocation(line: 52, column: 10, scope: !69)
!76 = !DILocation(line: 53, column: 5, scope: !69)
!77 = !DILocation(line: 53, column: 13, scope: !69)
!78 = !DILocation(line: 54, column: 1, scope: !69)
!79 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 58, type: !54, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!80 = !DILocalVariable(name: "data", scope: !79, file: !45, line: 60, type: !23)
!81 = !DILocation(line: 60, column: 9, scope: !79)
!82 = !DILocalVariable(name: "funcPtr", scope: !79, file: !45, line: 61, type: !59)
!83 = !DILocation(line: 61, column: 12, scope: !79)
!84 = !DILocation(line: 63, column: 10, scope: !79)
!85 = !DILocation(line: 65, column: 12, scope: !79)
!86 = !DILocation(line: 65, column: 5, scope: !79)
!87 = !DILocation(line: 66, column: 5, scope: !79)
!88 = !DILocation(line: 66, column: 13, scope: !79)
!89 = !DILocation(line: 67, column: 1, scope: !79)
!90 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_good", scope: !45, file: !45, line: 69, type: !54, scopeLine: 70, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!91 = !DILocation(line: 71, column: 5, scope: !90)
!92 = !DILocation(line: 72, column: 5, scope: !90)
!93 = !DILocation(line: 73, column: 1, scope: !90)
!94 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink", scope: !48, file: !48, line: 22, type: !60, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!95 = !DILocalVariable(name: "data", arg: 1, scope: !94, file: !48, line: 22, type: !23)
!96 = !DILocation(line: 22, column: 72, scope: !94)
!97 = !DILocalVariable(name: "i", scope: !98, file: !48, line: 25, type: !23)
!98 = distinct !DILexicalBlock(scope: !94, file: !48, line: 24, column: 5)
!99 = !DILocation(line: 25, column: 13, scope: !98)
!100 = !DILocalVariable(name: "buffer", scope: !98, file: !48, line: 26, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 10)
!104 = !DILocation(line: 26, column: 13, scope: !98)
!105 = !DILocation(line: 29, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !98, file: !48, line: 29, column: 13)
!107 = !DILocation(line: 29, column: 18, scope: !106)
!108 = !DILocation(line: 29, column: 13, scope: !98)
!109 = !DILocation(line: 31, column: 20, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !48, line: 30, column: 9)
!111 = !DILocation(line: 31, column: 13, scope: !110)
!112 = !DILocation(line: 31, column: 26, scope: !110)
!113 = !DILocation(line: 33, column: 19, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !48, line: 33, column: 13)
!115 = !DILocation(line: 33, column: 17, scope: !114)
!116 = !DILocation(line: 33, column: 24, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !48, line: 33, column: 13)
!118 = !DILocation(line: 33, column: 26, scope: !117)
!119 = !DILocation(line: 33, column: 13, scope: !114)
!120 = !DILocation(line: 35, column: 37, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !48, line: 34, column: 13)
!122 = !DILocation(line: 35, column: 30, scope: !121)
!123 = !DILocation(line: 35, column: 17, scope: !121)
!124 = !DILocation(line: 36, column: 13, scope: !121)
!125 = !DILocation(line: 33, column: 33, scope: !117)
!126 = !DILocation(line: 33, column: 13, scope: !117)
!127 = distinct !{!127, !119, !128, !129}
!128 = !DILocation(line: 36, column: 13, scope: !114)
!129 = !{!"llvm.loop.mustprogress"}
!130 = !DILocation(line: 37, column: 9, scope: !110)
!131 = !DILocation(line: 40, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !106, file: !48, line: 39, column: 9)
!133 = !DILocation(line: 43, column: 1, scope: !94)
!134 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink", scope: !48, file: !48, line: 50, type: !60, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!135 = !DILocalVariable(name: "data", arg: 1, scope: !134, file: !48, line: 50, type: !23)
!136 = !DILocation(line: 50, column: 76, scope: !134)
!137 = !DILocalVariable(name: "i", scope: !138, file: !48, line: 53, type: !23)
!138 = distinct !DILexicalBlock(scope: !134, file: !48, line: 52, column: 5)
!139 = !DILocation(line: 53, column: 13, scope: !138)
!140 = !DILocalVariable(name: "buffer", scope: !138, file: !48, line: 54, type: !101)
!141 = !DILocation(line: 54, column: 13, scope: !138)
!142 = !DILocation(line: 57, column: 13, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !48, line: 57, column: 13)
!144 = !DILocation(line: 57, column: 18, scope: !143)
!145 = !DILocation(line: 57, column: 13, scope: !138)
!146 = !DILocation(line: 59, column: 20, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !48, line: 58, column: 9)
!148 = !DILocation(line: 59, column: 13, scope: !147)
!149 = !DILocation(line: 59, column: 26, scope: !147)
!150 = !DILocation(line: 61, column: 19, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !48, line: 61, column: 13)
!152 = !DILocation(line: 61, column: 17, scope: !151)
!153 = !DILocation(line: 61, column: 24, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !48, line: 61, column: 13)
!155 = !DILocation(line: 61, column: 26, scope: !154)
!156 = !DILocation(line: 61, column: 13, scope: !151)
!157 = !DILocation(line: 63, column: 37, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !48, line: 62, column: 13)
!159 = !DILocation(line: 63, column: 30, scope: !158)
!160 = !DILocation(line: 63, column: 17, scope: !158)
!161 = !DILocation(line: 64, column: 13, scope: !158)
!162 = !DILocation(line: 61, column: 33, scope: !154)
!163 = !DILocation(line: 61, column: 13, scope: !154)
!164 = distinct !{!164, !156, !165, !129}
!165 = !DILocation(line: 64, column: 13, scope: !151)
!166 = !DILocation(line: 65, column: 9, scope: !147)
!167 = !DILocation(line: 68, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !143, file: !48, line: 67, column: 9)
!169 = !DILocation(line: 71, column: 1, scope: !134)
!170 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodB2GSink", scope: !48, file: !48, line: 74, type: !60, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!171 = !DILocalVariable(name: "data", arg: 1, scope: !170, file: !48, line: 74, type: !23)
!172 = !DILocation(line: 74, column: 76, scope: !170)
!173 = !DILocalVariable(name: "i", scope: !174, file: !48, line: 77, type: !23)
!174 = distinct !DILexicalBlock(scope: !170, file: !48, line: 76, column: 5)
!175 = !DILocation(line: 77, column: 13, scope: !174)
!176 = !DILocalVariable(name: "buffer", scope: !174, file: !48, line: 78, type: !101)
!177 = !DILocation(line: 78, column: 13, scope: !174)
!178 = !DILocation(line: 80, column: 13, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !48, line: 80, column: 13)
!180 = !DILocation(line: 80, column: 18, scope: !179)
!181 = !DILocation(line: 80, column: 23, scope: !179)
!182 = !DILocation(line: 80, column: 26, scope: !179)
!183 = !DILocation(line: 80, column: 31, scope: !179)
!184 = !DILocation(line: 80, column: 13, scope: !174)
!185 = !DILocation(line: 82, column: 20, scope: !186)
!186 = distinct !DILexicalBlock(scope: !179, file: !48, line: 81, column: 9)
!187 = !DILocation(line: 82, column: 13, scope: !186)
!188 = !DILocation(line: 82, column: 26, scope: !186)
!189 = !DILocation(line: 84, column: 19, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !48, line: 84, column: 13)
!191 = !DILocation(line: 84, column: 17, scope: !190)
!192 = !DILocation(line: 84, column: 24, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !48, line: 84, column: 13)
!194 = !DILocation(line: 84, column: 26, scope: !193)
!195 = !DILocation(line: 84, column: 13, scope: !190)
!196 = !DILocation(line: 86, column: 37, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !48, line: 85, column: 13)
!198 = !DILocation(line: 86, column: 30, scope: !197)
!199 = !DILocation(line: 86, column: 17, scope: !197)
!200 = !DILocation(line: 87, column: 13, scope: !197)
!201 = !DILocation(line: 84, column: 33, scope: !193)
!202 = !DILocation(line: 84, column: 13, scope: !193)
!203 = distinct !{!203, !195, !204, !129}
!204 = !DILocation(line: 87, column: 13, scope: !190)
!205 = !DILocation(line: 88, column: 9, scope: !186)
!206 = !DILocation(line: 91, column: 13, scope: !207)
!207 = distinct !DILexicalBlock(scope: !179, file: !48, line: 90, column: 9)
!208 = !DILocation(line: 94, column: 1, scope: !170)
!209 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !210, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !42}
!212 = !DILocalVariable(name: "line", arg: 1, scope: !209, file: !3, line: 11, type: !42)
!213 = !DILocation(line: 11, column: 25, scope: !209)
!214 = !DILocation(line: 13, column: 1, scope: !209)
!215 = !DILocation(line: 14, column: 8, scope: !216)
!216 = distinct !DILexicalBlock(scope: !209, file: !3, line: 14, column: 8)
!217 = !DILocation(line: 14, column: 13, scope: !216)
!218 = !DILocation(line: 14, column: 8, scope: !209)
!219 = !DILocation(line: 16, column: 24, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !3, line: 15, column: 5)
!221 = !DILocation(line: 16, column: 9, scope: !220)
!222 = !DILocation(line: 17, column: 5, scope: !220)
!223 = !DILocation(line: 18, column: 5, scope: !209)
!224 = !DILocation(line: 19, column: 1, scope: !209)
!225 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !210, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!226 = !DILocalVariable(name: "line", arg: 1, scope: !225, file: !3, line: 20, type: !42)
!227 = !DILocation(line: 20, column: 29, scope: !225)
!228 = !DILocation(line: 22, column: 8, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !3, line: 22, column: 8)
!230 = !DILocation(line: 22, column: 13, scope: !229)
!231 = !DILocation(line: 22, column: 8, scope: !225)
!232 = !DILocation(line: 24, column: 24, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !3, line: 23, column: 5)
!234 = !DILocation(line: 24, column: 9, scope: !233)
!235 = !DILocation(line: 25, column: 5, scope: !233)
!236 = !DILocation(line: 26, column: 1, scope: !225)
!237 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !238, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !242, line: 74, baseType: !23)
!242 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!243 = !DILocalVariable(name: "line", arg: 1, scope: !237, file: !3, line: 27, type: !240)
!244 = !DILocation(line: 27, column: 29, scope: !237)
!245 = !DILocation(line: 29, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !237, file: !3, line: 29, column: 8)
!247 = !DILocation(line: 29, column: 13, scope: !246)
!248 = !DILocation(line: 29, column: 8, scope: !237)
!249 = !DILocation(line: 31, column: 27, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 30, column: 5)
!251 = !DILocation(line: 31, column: 9, scope: !250)
!252 = !DILocation(line: 32, column: 5, scope: !250)
!253 = !DILocation(line: 33, column: 1, scope: !237)
!254 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !60, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!255 = !DILocalVariable(name: "intNumber", arg: 1, scope: !254, file: !3, line: 35, type: !23)
!256 = !DILocation(line: 35, column: 24, scope: !254)
!257 = !DILocation(line: 37, column: 20, scope: !254)
!258 = !DILocation(line: 37, column: 5, scope: !254)
!259 = !DILocation(line: 38, column: 1, scope: !254)
!260 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !261, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !263}
!263 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!264 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !260, file: !3, line: 40, type: !263)
!265 = !DILocation(line: 40, column: 28, scope: !260)
!266 = !DILocation(line: 42, column: 21, scope: !260)
!267 = !DILocation(line: 42, column: 5, scope: !260)
!268 = !DILocation(line: 43, column: 1, scope: !260)
!269 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !270, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !272}
!272 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!273 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !269, file: !3, line: 45, type: !272)
!274 = !DILocation(line: 45, column: 28, scope: !269)
!275 = !DILocation(line: 47, column: 20, scope: !269)
!276 = !DILocation(line: 47, column: 5, scope: !269)
!277 = !DILocation(line: 48, column: 1, scope: !269)
!278 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !279, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !281}
!281 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!282 = !DILocalVariable(name: "longNumber", arg: 1, scope: !278, file: !3, line: 50, type: !281)
!283 = !DILocation(line: 50, column: 26, scope: !278)
!284 = !DILocation(line: 52, column: 21, scope: !278)
!285 = !DILocation(line: 52, column: 5, scope: !278)
!286 = !DILocation(line: 53, column: 1, scope: !278)
!287 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !288, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !290}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !291, line: 27, baseType: !292)
!291 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !293, line: 44, baseType: !281)
!293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!294 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !287, file: !3, line: 55, type: !290)
!295 = !DILocation(line: 55, column: 33, scope: !287)
!296 = !DILocation(line: 57, column: 29, scope: !287)
!297 = !DILocation(line: 57, column: 5, scope: !287)
!298 = !DILocation(line: 58, column: 1, scope: !287)
!299 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !300, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !302}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !242, line: 46, baseType: !303)
!303 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!304 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !299, file: !3, line: 60, type: !302)
!305 = !DILocation(line: 60, column: 29, scope: !299)
!306 = !DILocation(line: 62, column: 21, scope: !299)
!307 = !DILocation(line: 62, column: 5, scope: !299)
!308 = !DILocation(line: 63, column: 1, scope: !299)
!309 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !310, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !43}
!312 = !DILocalVariable(name: "charHex", arg: 1, scope: !309, file: !3, line: 65, type: !43)
!313 = !DILocation(line: 65, column: 29, scope: !309)
!314 = !DILocation(line: 67, column: 22, scope: !309)
!315 = !DILocation(line: 67, column: 5, scope: !309)
!316 = !DILocation(line: 68, column: 1, scope: !309)
!317 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !318, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !241}
!320 = !DILocalVariable(name: "wideChar", arg: 1, scope: !317, file: !3, line: 70, type: !241)
!321 = !DILocation(line: 70, column: 29, scope: !317)
!322 = !DILocalVariable(name: "s", scope: !317, file: !3, line: 74, type: !323)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 64, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 2)
!326 = !DILocation(line: 74, column: 13, scope: !317)
!327 = !DILocation(line: 75, column: 16, scope: !317)
!328 = !DILocation(line: 75, column: 9, scope: !317)
!329 = !DILocation(line: 75, column: 14, scope: !317)
!330 = !DILocation(line: 76, column: 9, scope: !317)
!331 = !DILocation(line: 76, column: 14, scope: !317)
!332 = !DILocation(line: 77, column: 21, scope: !317)
!333 = !DILocation(line: 77, column: 5, scope: !317)
!334 = !DILocation(line: 78, column: 1, scope: !317)
!335 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !336, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !7}
!338 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !335, file: !3, line: 80, type: !7)
!339 = !DILocation(line: 80, column: 33, scope: !335)
!340 = !DILocation(line: 82, column: 20, scope: !335)
!341 = !DILocation(line: 82, column: 5, scope: !335)
!342 = !DILocation(line: 83, column: 1, scope: !335)
!343 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !344, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !25}
!346 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !343, file: !3, line: 85, type: !25)
!347 = !DILocation(line: 85, column: 45, scope: !343)
!348 = !DILocation(line: 87, column: 22, scope: !343)
!349 = !DILocation(line: 87, column: 5, scope: !343)
!350 = !DILocation(line: 88, column: 1, scope: !343)
!351 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !352, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !354}
!354 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!355 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !351, file: !3, line: 90, type: !354)
!356 = !DILocation(line: 90, column: 29, scope: !351)
!357 = !DILocation(line: 92, column: 20, scope: !351)
!358 = !DILocation(line: 92, column: 5, scope: !351)
!359 = !DILocation(line: 93, column: 1, scope: !351)
!360 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !361, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !365, line: 100, baseType: !366)
!365 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_649/source_code")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !365, line: 96, size: 64, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !366, file: !365, line: 98, baseType: !23, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !366, file: !365, line: 99, baseType: !23, size: 32, offset: 32)
!370 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !360, file: !3, line: 95, type: !363)
!371 = !DILocation(line: 95, column: 40, scope: !360)
!372 = !DILocation(line: 97, column: 26, scope: !360)
!373 = !DILocation(line: 97, column: 47, scope: !360)
!374 = !DILocation(line: 97, column: 55, scope: !360)
!375 = !DILocation(line: 97, column: 76, scope: !360)
!376 = !DILocation(line: 97, column: 5, scope: !360)
!377 = !DILocation(line: 98, column: 1, scope: !360)
!378 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !379, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381, !302}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!382 = !DILocalVariable(name: "bytes", arg: 1, scope: !378, file: !3, line: 100, type: !381)
!383 = !DILocation(line: 100, column: 38, scope: !378)
!384 = !DILocalVariable(name: "numBytes", arg: 2, scope: !378, file: !3, line: 100, type: !302)
!385 = !DILocation(line: 100, column: 52, scope: !378)
!386 = !DILocalVariable(name: "i", scope: !378, file: !3, line: 102, type: !302)
!387 = !DILocation(line: 102, column: 12, scope: !378)
!388 = !DILocation(line: 103, column: 12, scope: !389)
!389 = distinct !DILexicalBlock(scope: !378, file: !3, line: 103, column: 5)
!390 = !DILocation(line: 103, column: 10, scope: !389)
!391 = !DILocation(line: 103, column: 17, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !3, line: 103, column: 5)
!393 = !DILocation(line: 103, column: 21, scope: !392)
!394 = !DILocation(line: 103, column: 19, scope: !392)
!395 = !DILocation(line: 103, column: 5, scope: !389)
!396 = !DILocation(line: 105, column: 24, scope: !397)
!397 = distinct !DILexicalBlock(scope: !392, file: !3, line: 104, column: 5)
!398 = !DILocation(line: 105, column: 30, scope: !397)
!399 = !DILocation(line: 105, column: 9, scope: !397)
!400 = !DILocation(line: 106, column: 5, scope: !397)
!401 = !DILocation(line: 103, column: 31, scope: !392)
!402 = !DILocation(line: 103, column: 5, scope: !392)
!403 = distinct !{!403, !395, !404, !129}
!404 = !DILocation(line: 106, column: 5, scope: !389)
!405 = !DILocation(line: 107, column: 5, scope: !378)
!406 = !DILocation(line: 108, column: 1, scope: !378)
!407 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !408, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!408 = !DISubroutineType(types: !409)
!409 = !{!302, !381, !302, !42}
!410 = !DILocalVariable(name: "bytes", arg: 1, scope: !407, file: !3, line: 113, type: !381)
!411 = !DILocation(line: 113, column: 39, scope: !407)
!412 = !DILocalVariable(name: "numBytes", arg: 2, scope: !407, file: !3, line: 113, type: !302)
!413 = !DILocation(line: 113, column: 53, scope: !407)
!414 = !DILocalVariable(name: "hex", arg: 3, scope: !407, file: !3, line: 113, type: !42)
!415 = !DILocation(line: 113, column: 71, scope: !407)
!416 = !DILocalVariable(name: "numWritten", scope: !407, file: !3, line: 115, type: !302)
!417 = !DILocation(line: 115, column: 12, scope: !407)
!418 = !DILocation(line: 121, column: 5, scope: !407)
!419 = !DILocation(line: 121, column: 12, scope: !407)
!420 = !DILocation(line: 121, column: 25, scope: !407)
!421 = !DILocation(line: 121, column: 23, scope: !407)
!422 = !DILocation(line: 121, column: 34, scope: !407)
!423 = !DILocation(line: 121, column: 37, scope: !407)
!424 = !DILocation(line: 121, column: 67, scope: !407)
!425 = !DILocation(line: 121, column: 70, scope: !407)
!426 = !DILocation(line: 0, scope: !407)
!427 = !DILocalVariable(name: "byte", scope: !428, file: !3, line: 123, type: !23)
!428 = distinct !DILexicalBlock(scope: !407, file: !3, line: 122, column: 5)
!429 = !DILocation(line: 123, column: 13, scope: !428)
!430 = !DILocation(line: 124, column: 17, scope: !428)
!431 = !DILocation(line: 124, column: 25, scope: !428)
!432 = !DILocation(line: 124, column: 23, scope: !428)
!433 = !DILocation(line: 124, column: 9, scope: !428)
!434 = !DILocation(line: 125, column: 45, scope: !428)
!435 = !DILocation(line: 125, column: 29, scope: !428)
!436 = !DILocation(line: 125, column: 9, scope: !428)
!437 = !DILocation(line: 125, column: 15, scope: !428)
!438 = !DILocation(line: 125, column: 27, scope: !428)
!439 = !DILocation(line: 126, column: 9, scope: !428)
!440 = distinct !{!440, !418, !441, !129}
!441 = !DILocation(line: 127, column: 5, scope: !407)
!442 = !DILocation(line: 129, column: 12, scope: !407)
!443 = !DILocation(line: 129, column: 5, scope: !407)
!444 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !445, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!445 = !DISubroutineType(types: !446)
!446 = !{!302, !381, !302, !240}
!447 = !DILocalVariable(name: "bytes", arg: 1, scope: !444, file: !3, line: 135, type: !381)
!448 = !DILocation(line: 135, column: 41, scope: !444)
!449 = !DILocalVariable(name: "numBytes", arg: 2, scope: !444, file: !3, line: 135, type: !302)
!450 = !DILocation(line: 135, column: 55, scope: !444)
!451 = !DILocalVariable(name: "hex", arg: 3, scope: !444, file: !3, line: 135, type: !240)
!452 = !DILocation(line: 135, column: 76, scope: !444)
!453 = !DILocalVariable(name: "numWritten", scope: !444, file: !3, line: 137, type: !302)
!454 = !DILocation(line: 137, column: 12, scope: !444)
!455 = !DILocation(line: 143, column: 5, scope: !444)
!456 = !DILocation(line: 143, column: 12, scope: !444)
!457 = !DILocation(line: 143, column: 25, scope: !444)
!458 = !DILocation(line: 143, column: 23, scope: !444)
!459 = !DILocation(line: 143, column: 34, scope: !444)
!460 = !DILocation(line: 143, column: 47, scope: !444)
!461 = !DILocation(line: 143, column: 55, scope: !444)
!462 = !DILocation(line: 143, column: 53, scope: !444)
!463 = !DILocation(line: 143, column: 37, scope: !444)
!464 = !DILocation(line: 143, column: 68, scope: !444)
!465 = !DILocation(line: 143, column: 81, scope: !444)
!466 = !DILocation(line: 143, column: 89, scope: !444)
!467 = !DILocation(line: 143, column: 87, scope: !444)
!468 = !DILocation(line: 143, column: 100, scope: !444)
!469 = !DILocation(line: 143, column: 71, scope: !444)
!470 = !DILocation(line: 0, scope: !444)
!471 = !DILocalVariable(name: "byte", scope: !472, file: !3, line: 145, type: !23)
!472 = distinct !DILexicalBlock(scope: !444, file: !3, line: 144, column: 5)
!473 = !DILocation(line: 145, column: 13, scope: !472)
!474 = !DILocation(line: 146, column: 18, scope: !472)
!475 = !DILocation(line: 146, column: 26, scope: !472)
!476 = !DILocation(line: 146, column: 24, scope: !472)
!477 = !DILocation(line: 146, column: 9, scope: !472)
!478 = !DILocation(line: 147, column: 45, scope: !472)
!479 = !DILocation(line: 147, column: 29, scope: !472)
!480 = !DILocation(line: 147, column: 9, scope: !472)
!481 = !DILocation(line: 147, column: 15, scope: !472)
!482 = !DILocation(line: 147, column: 27, scope: !472)
!483 = !DILocation(line: 148, column: 9, scope: !472)
!484 = distinct !{!484, !455, !485, !129}
!485 = !DILocation(line: 149, column: 5, scope: !444)
!486 = !DILocation(line: 151, column: 12, scope: !444)
!487 = !DILocation(line: 151, column: 5, scope: !444)
!488 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !489, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!489 = !DISubroutineType(types: !490)
!490 = !{!23}
!491 = !DILocation(line: 158, column: 5, scope: !488)
!492 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !489, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!493 = !DILocation(line: 163, column: 5, scope: !492)
!494 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !489, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!495 = !DILocation(line: 168, column: 13, scope: !494)
!496 = !DILocation(line: 168, column: 20, scope: !494)
!497 = !DILocation(line: 168, column: 5, scope: !494)
!498 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !54, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!499 = !DILocation(line: 187, column: 16, scope: !498)
!500 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !54, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!501 = !DILocation(line: 188, column: 16, scope: !500)
!502 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !54, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DILocation(line: 189, column: 16, scope: !502)
!504 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !54, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DILocation(line: 190, column: 16, scope: !504)
!506 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !54, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DILocation(line: 191, column: 16, scope: !506)
!508 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !54, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!509 = !DILocation(line: 192, column: 16, scope: !508)
!510 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !54, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!511 = !DILocation(line: 193, column: 16, scope: !510)
!512 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !54, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!513 = !DILocation(line: 194, column: 16, scope: !512)
!514 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !54, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DILocation(line: 195, column: 16, scope: !514)
!516 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !54, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DILocation(line: 198, column: 15, scope: !516)
!518 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !54, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DILocation(line: 199, column: 15, scope: !518)
!520 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !54, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DILocation(line: 200, column: 15, scope: !520)
!522 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !54, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!523 = !DILocation(line: 201, column: 15, scope: !522)
!524 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !54, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!525 = !DILocation(line: 202, column: 15, scope: !524)
!526 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !54, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DILocation(line: 203, column: 15, scope: !526)
!528 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !54, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DILocation(line: 204, column: 15, scope: !528)
!530 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !54, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!531 = !DILocation(line: 205, column: 15, scope: !530)
!532 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !54, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DILocation(line: 206, column: 15, scope: !532)
