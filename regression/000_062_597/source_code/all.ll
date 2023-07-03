; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad() #0 !dbg !54 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !57, metadata !DIExpression()), !dbg !58
  store i32 -1, i32* %data, align 4, !dbg !59
  %0 = load i32, i32* %data, align 4, !dbg !60
  %call = call i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource(i32 %0), !dbg !61
  store i32 %call, i32* %data, align 4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %i, metadata !63, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !66, metadata !DIExpression()), !dbg !70
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !70
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !70
  %2 = load i32, i32* %data, align 4, !dbg !71
  %cmp = icmp sge i32 %2, 0, !dbg !73
  br i1 %cmp, label %if.then, label %if.else, !dbg !74

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !75
  %idxprom = sext i32 %3 to i64, !dbg !77
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !77
  store i32 1, i32* %arrayidx, align 4, !dbg !78
  store i32 0, i32* %i, align 4, !dbg !79
  br label %for.cond, !dbg !81

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !82
  %cmp1 = icmp slt i32 %4, 10, !dbg !84
  br i1 %cmp1, label %for.body, label %for.end, !dbg !85

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !86
  %idxprom2 = sext i32 %5 to i64, !dbg !88
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !88
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !88
  call void @printIntLine(i32 %6), !dbg !89
  br label %for.inc, !dbg !90

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !91
  %inc = add nsw i32 %7, 1, !dbg !91
  store i32 %inc, i32* %i, align 4, !dbg !91
  br label %for.cond, !dbg !92, !llvm.loop !93

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !96

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !97
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !99
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !100 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !101, metadata !DIExpression()), !dbg !102
  store i32 -1, i32* %data, align 4, !dbg !103
  %0 = load i32, i32* %data, align 4, !dbg !104
  %call = call i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_goodG2BSource(i32 %0), !dbg !105
  store i32 %call, i32* %data, align 4, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %i, metadata !107, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !110, metadata !DIExpression()), !dbg !111
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !111
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !111
  %2 = load i32, i32* %data, align 4, !dbg !112
  %cmp = icmp sge i32 %2, 0, !dbg !114
  br i1 %cmp, label %if.then, label %if.else, !dbg !115

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !116
  %idxprom = sext i32 %3 to i64, !dbg !118
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !118
  store i32 1, i32* %arrayidx, align 4, !dbg !119
  store i32 0, i32* %i, align 4, !dbg !120
  br label %for.cond, !dbg !122

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !123
  %cmp1 = icmp slt i32 %4, 10, !dbg !125
  br i1 %cmp1, label %for.body, label %for.end, !dbg !126

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !127
  %idxprom2 = sext i32 %5 to i64, !dbg !129
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !129
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !129
  call void @printIntLine(i32 %6), !dbg !130
  br label %for.inc, !dbg !131

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !132
  %inc = add nsw i32 %7, 1, !dbg !132
  store i32 %inc, i32* %i, align 4, !dbg !132
  br label %for.cond, !dbg !133, !llvm.loop !134

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !136

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !137
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !139
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !140 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !141, metadata !DIExpression()), !dbg !142
  store i32 -1, i32* %data, align 4, !dbg !143
  %0 = load i32, i32* %data, align 4, !dbg !144
  %call = call i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_goodB2GSource(i32 %0), !dbg !145
  store i32 %call, i32* %data, align 4, !dbg !146
  call void @llvm.dbg.declare(metadata i32* %i, metadata !147, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !150, metadata !DIExpression()), !dbg !151
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !151
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !151
  %2 = load i32, i32* %data, align 4, !dbg !152
  %cmp = icmp sge i32 %2, 0, !dbg !154
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !155

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !156
  %cmp1 = icmp slt i32 %3, 10, !dbg !157
  br i1 %cmp1, label %if.then, label %if.else, !dbg !158

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !159
  %idxprom = sext i32 %4 to i64, !dbg !161
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !161
  store i32 1, i32* %arrayidx, align 4, !dbg !162
  store i32 0, i32* %i, align 4, !dbg !163
  br label %for.cond, !dbg !165

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !166
  %cmp2 = icmp slt i32 %5, 10, !dbg !168
  br i1 %cmp2, label %for.body, label %for.end, !dbg !169

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !170
  %idxprom3 = sext i32 %6 to i64, !dbg !172
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !172
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !172
  call void @printIntLine(i32 %7), !dbg !173
  br label %for.inc, !dbg !174

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !175
  %inc = add nsw i32 %8, 1, !dbg !175
  store i32 %inc, i32* %i, align 4, !dbg !175
  br label %for.cond, !dbg !176, !llvm.loop !177

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !179

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !180
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !182
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_good() #0 !dbg !183 {
entry:
  call void @goodG2B(), !dbg !184
  call void @goodB2G(), !dbg !185
  ret void, !dbg !186
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource(i32 %data) #0 !dbg !187 {
entry:
  %data.addr = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !192, metadata !DIExpression()), !dbg !197
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !197
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !197
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !198
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !200
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !201
  %cmp = icmp ne i8* %call, null, !dbg !202
  br i1 %cmp, label %if.then, label %if.else, !dbg !203

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !204
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !206
  store i32 %call2, i32* %data.addr, align 4, !dbg !207
  br label %if.end, !dbg !208

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)), !dbg !209
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data.addr, align 4, !dbg !211
  ret i32 %2, !dbg !212
}

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_goodG2BSource(i32 %data) #0 !dbg !213 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !214, metadata !DIExpression()), !dbg !215
  store i32 7, i32* %data.addr, align 4, !dbg !216
  %0 = load i32, i32* %data.addr, align 4, !dbg !217
  ret i32 %0, !dbg !218
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_goodB2GSource(i32 %data) #0 !dbg !219 {
entry:
  %data.addr = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !222, metadata !DIExpression()), !dbg !224
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !224
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !224
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !225
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !227
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !228
  %cmp = icmp ne i8* %call, null, !dbg !229
  br i1 %cmp, label %if.then, label %if.else, !dbg !230

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !231
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !233
  store i32 %call2, i32* %data.addr, align 4, !dbg !234
  br label %if.end, !dbg !235

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)), !dbg !236
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data.addr, align 4, !dbg !238
  ret i32 %2, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !240 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !243, metadata !DIExpression()), !dbg !244
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !245
  %0 = load i8*, i8** %line.addr, align 8, !dbg !246
  %cmp = icmp ne i8* %0, null, !dbg !248
  br i1 %cmp, label %if.then, label %if.end, !dbg !249

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !250
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !252
  br label %if.end, !dbg !253

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !254
  ret void, !dbg !255
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !256 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load i8*, i8** %line.addr, align 8, !dbg !259
  %cmp = icmp ne i8* %0, null, !dbg !261
  br i1 %cmp, label %if.then, label %if.end, !dbg !262

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !263
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !265
  br label %if.end, !dbg !266

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !267
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !268 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !274, metadata !DIExpression()), !dbg !275
  %0 = load i32*, i32** %line.addr, align 8, !dbg !276
  %cmp = icmp ne i32* %0, null, !dbg !278
  br i1 %cmp, label %if.then, label %if.end, !dbg !279

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !280
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !282
  br label %if.end, !dbg !283

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !284
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !285 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !288, metadata !DIExpression()), !dbg !289
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !290
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !291
  ret void, !dbg !292
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !293 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !299
  %conv = sext i16 %0 to i32, !dbg !299
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !300
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !302 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !308
  %conv = fpext float %0 to double, !dbg !308
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !309
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !311 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !315, metadata !DIExpression()), !dbg !316
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !317
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !318
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !320 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !327, metadata !DIExpression()), !dbg !328
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !329
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !330
  ret void, !dbg !331
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !332 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !342 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !345, metadata !DIExpression()), !dbg !346
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !347
  %conv = sext i8 %0 to i32, !dbg !347
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !348
  ret void, !dbg !349
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !350 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !353, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !355, metadata !DIExpression()), !dbg !359
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !360
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !361
  store i32 %0, i32* %arrayidx, align 4, !dbg !362
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !363
  store i32 0, i32* %arrayidx1, align 4, !dbg !364
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !368 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !374
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !376 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !379, metadata !DIExpression()), !dbg !380
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !381
  %conv = zext i8 %0 to i32, !dbg !381
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !382
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !384 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !390
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !393 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !405
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !406
  %1 = load i32, i32* %intOne, align 4, !dbg !406
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !407
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !408
  %3 = load i32, i32* %intTwo, align 4, !dbg !408
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !411 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !415, metadata !DIExpression()), !dbg !416
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata i64* %i, metadata !419, metadata !DIExpression()), !dbg !420
  store i64 0, i64* %i, align 8, !dbg !421
  br label %for.cond, !dbg !423

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !424
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !426
  %cmp = icmp ult i64 %0, %1, !dbg !427
  br i1 %cmp, label %for.body, label %for.end, !dbg !428

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !429
  %3 = load i64, i64* %i, align 8, !dbg !431
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !429
  %4 = load i8, i8* %arrayidx, align 1, !dbg !429
  %conv = zext i8 %4 to i32, !dbg !429
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !432
  br label %for.inc, !dbg !433

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !434
  %inc = add i64 %5, 1, !dbg !434
  store i64 %inc, i64* %i, align 8, !dbg !434
  br label %for.cond, !dbg !435, !llvm.loop !436

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !438
  ret void, !dbg !439
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !440 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !443, metadata !DIExpression()), !dbg !444
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !445, metadata !DIExpression()), !dbg !446
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !447, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !449, metadata !DIExpression()), !dbg !450
  store i64 0, i64* %numWritten, align 8, !dbg !450
  br label %while.cond, !dbg !451

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !452
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !453
  %cmp = icmp ult i64 %0, %1, !dbg !454
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !455

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !456
  %2 = load i16*, i16** %call, align 8, !dbg !456
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !456
  %4 = load i64, i64* %numWritten, align 8, !dbg !456
  %mul = mul i64 2, %4, !dbg !456
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !456
  %5 = load i8, i8* %arrayidx, align 1, !dbg !456
  %conv = sext i8 %5 to i32, !dbg !456
  %idxprom = sext i32 %conv to i64, !dbg !456
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !456
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !456
  %conv2 = zext i16 %6 to i32, !dbg !456
  %and = and i32 %conv2, 4096, !dbg !456
  %tobool = icmp ne i32 %and, 0, !dbg !456
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !457

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !458
  %7 = load i16*, i16** %call3, align 8, !dbg !458
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !458
  %9 = load i64, i64* %numWritten, align 8, !dbg !458
  %mul4 = mul i64 2, %9, !dbg !458
  %add = add i64 %mul4, 1, !dbg !458
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !458
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !458
  %conv6 = sext i8 %10 to i32, !dbg !458
  %idxprom7 = sext i32 %conv6 to i64, !dbg !458
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !458
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !458
  %conv9 = zext i16 %11 to i32, !dbg !458
  %and10 = and i32 %conv9, 4096, !dbg !458
  %tobool11 = icmp ne i32 %and10, 0, !dbg !457
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !459
  br i1 %12, label %while.body, label %while.end, !dbg !451

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !460, metadata !DIExpression()), !dbg !462
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !463
  %14 = load i64, i64* %numWritten, align 8, !dbg !464
  %mul12 = mul i64 2, %14, !dbg !465
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !463
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !466
  %15 = load i32, i32* %byte, align 4, !dbg !467
  %conv15 = trunc i32 %15 to i8, !dbg !468
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !469
  %17 = load i64, i64* %numWritten, align 8, !dbg !470
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !469
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !471
  %18 = load i64, i64* %numWritten, align 8, !dbg !472
  %inc = add i64 %18, 1, !dbg !472
  store i64 %inc, i64* %numWritten, align 8, !dbg !472
  br label %while.cond, !dbg !451, !llvm.loop !473

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !475
  ret i64 %19, !dbg !476
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !477 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !480, metadata !DIExpression()), !dbg !481
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !482, metadata !DIExpression()), !dbg !483
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !484, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !486, metadata !DIExpression()), !dbg !487
  store i64 0, i64* %numWritten, align 8, !dbg !487
  br label %while.cond, !dbg !488

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !489
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !490
  %cmp = icmp ult i64 %0, %1, !dbg !491
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !492

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !493
  %3 = load i64, i64* %numWritten, align 8, !dbg !494
  %mul = mul i64 2, %3, !dbg !495
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !493
  %4 = load i32, i32* %arrayidx, align 4, !dbg !493
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !496
  %tobool = icmp ne i32 %call, 0, !dbg !496
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !497

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !498
  %6 = load i64, i64* %numWritten, align 8, !dbg !499
  %mul1 = mul i64 2, %6, !dbg !500
  %add = add i64 %mul1, 1, !dbg !501
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !498
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !498
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !502
  %tobool4 = icmp ne i32 %call3, 0, !dbg !497
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !503
  br i1 %8, label %while.body, label %while.end, !dbg !488

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !504, metadata !DIExpression()), !dbg !506
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !507
  %10 = load i64, i64* %numWritten, align 8, !dbg !508
  %mul5 = mul i64 2, %10, !dbg !509
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !507
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !510
  %11 = load i32, i32* %byte, align 4, !dbg !511
  %conv = trunc i32 %11 to i8, !dbg !512
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !513
  %13 = load i64, i64* %numWritten, align 8, !dbg !514
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !513
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !515
  %14 = load i64, i64* %numWritten, align 8, !dbg !516
  %inc = add i64 %14, 1, !dbg !516
  store i64 %inc, i64* %numWritten, align 8, !dbg !516
  br label %while.cond, !dbg !488, !llvm.loop !517

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !519
  ret i64 %15, !dbg !520
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !521 {
entry:
  ret i32 1, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !525 {
entry:
  ret i32 0, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !527 {
entry:
  %call = call i32 @rand() #9, !dbg !528
  %rem = srem i32 %call, 2, !dbg !529
  ret i32 %rem, !dbg !530
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !565 {
entry:
  ret void, !dbg !566
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

!llvm.dbg.cu = !{!44, !47, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_597/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_597/source_code")
!46 = !{}
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !49, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_597/source_code")
!49 = !{!22}
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad", scope: !45, file: !45, line: 27, type: !55, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 29, type: !23)
!58 = !DILocation(line: 29, column: 9, scope: !54)
!59 = !DILocation(line: 31, column: 10, scope: !54)
!60 = !DILocation(line: 32, column: 75, scope: !54)
!61 = !DILocation(line: 32, column: 12, scope: !54)
!62 = !DILocation(line: 32, column: 10, scope: !54)
!63 = !DILocalVariable(name: "i", scope: !64, file: !45, line: 34, type: !23)
!64 = distinct !DILexicalBlock(scope: !54, file: !45, line: 33, column: 5)
!65 = !DILocation(line: 34, column: 13, scope: !64)
!66 = !DILocalVariable(name: "buffer", scope: !64, file: !45, line: 35, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 10)
!70 = !DILocation(line: 35, column: 13, scope: !64)
!71 = !DILocation(line: 38, column: 13, scope: !72)
!72 = distinct !DILexicalBlock(scope: !64, file: !45, line: 38, column: 13)
!73 = !DILocation(line: 38, column: 18, scope: !72)
!74 = !DILocation(line: 38, column: 13, scope: !64)
!75 = !DILocation(line: 40, column: 20, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !45, line: 39, column: 9)
!77 = !DILocation(line: 40, column: 13, scope: !76)
!78 = !DILocation(line: 40, column: 26, scope: !76)
!79 = !DILocation(line: 42, column: 19, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !45, line: 42, column: 13)
!81 = !DILocation(line: 42, column: 17, scope: !80)
!82 = !DILocation(line: 42, column: 24, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !45, line: 42, column: 13)
!84 = !DILocation(line: 42, column: 26, scope: !83)
!85 = !DILocation(line: 42, column: 13, scope: !80)
!86 = !DILocation(line: 44, column: 37, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !45, line: 43, column: 13)
!88 = !DILocation(line: 44, column: 30, scope: !87)
!89 = !DILocation(line: 44, column: 17, scope: !87)
!90 = !DILocation(line: 45, column: 13, scope: !87)
!91 = !DILocation(line: 42, column: 33, scope: !83)
!92 = !DILocation(line: 42, column: 13, scope: !83)
!93 = distinct !{!93, !85, !94, !95}
!94 = !DILocation(line: 45, column: 13, scope: !80)
!95 = !{!"llvm.loop.mustprogress"}
!96 = !DILocation(line: 46, column: 9, scope: !76)
!97 = !DILocation(line: 49, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !72, file: !45, line: 48, column: 9)
!99 = !DILocation(line: 52, column: 1, scope: !54)
!100 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 60, type: !55, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!101 = !DILocalVariable(name: "data", scope: !100, file: !45, line: 62, type: !23)
!102 = !DILocation(line: 62, column: 9, scope: !100)
!103 = !DILocation(line: 64, column: 10, scope: !100)
!104 = !DILocation(line: 65, column: 79, scope: !100)
!105 = !DILocation(line: 65, column: 12, scope: !100)
!106 = !DILocation(line: 65, column: 10, scope: !100)
!107 = !DILocalVariable(name: "i", scope: !108, file: !45, line: 67, type: !23)
!108 = distinct !DILexicalBlock(scope: !100, file: !45, line: 66, column: 5)
!109 = !DILocation(line: 67, column: 13, scope: !108)
!110 = !DILocalVariable(name: "buffer", scope: !108, file: !45, line: 68, type: !67)
!111 = !DILocation(line: 68, column: 13, scope: !108)
!112 = !DILocation(line: 71, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !108, file: !45, line: 71, column: 13)
!114 = !DILocation(line: 71, column: 18, scope: !113)
!115 = !DILocation(line: 71, column: 13, scope: !108)
!116 = !DILocation(line: 73, column: 20, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !45, line: 72, column: 9)
!118 = !DILocation(line: 73, column: 13, scope: !117)
!119 = !DILocation(line: 73, column: 26, scope: !117)
!120 = !DILocation(line: 75, column: 19, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !45, line: 75, column: 13)
!122 = !DILocation(line: 75, column: 17, scope: !121)
!123 = !DILocation(line: 75, column: 24, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !45, line: 75, column: 13)
!125 = !DILocation(line: 75, column: 26, scope: !124)
!126 = !DILocation(line: 75, column: 13, scope: !121)
!127 = !DILocation(line: 77, column: 37, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !45, line: 76, column: 13)
!129 = !DILocation(line: 77, column: 30, scope: !128)
!130 = !DILocation(line: 77, column: 17, scope: !128)
!131 = !DILocation(line: 78, column: 13, scope: !128)
!132 = !DILocation(line: 75, column: 33, scope: !124)
!133 = !DILocation(line: 75, column: 13, scope: !124)
!134 = distinct !{!134, !126, !135, !95}
!135 = !DILocation(line: 78, column: 13, scope: !121)
!136 = !DILocation(line: 79, column: 9, scope: !117)
!137 = !DILocation(line: 82, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !113, file: !45, line: 81, column: 9)
!139 = !DILocation(line: 85, column: 1, scope: !100)
!140 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 89, type: !55, scopeLine: 90, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!141 = !DILocalVariable(name: "data", scope: !140, file: !45, line: 91, type: !23)
!142 = !DILocation(line: 91, column: 9, scope: !140)
!143 = !DILocation(line: 93, column: 10, scope: !140)
!144 = !DILocation(line: 94, column: 79, scope: !140)
!145 = !DILocation(line: 94, column: 12, scope: !140)
!146 = !DILocation(line: 94, column: 10, scope: !140)
!147 = !DILocalVariable(name: "i", scope: !148, file: !45, line: 96, type: !23)
!148 = distinct !DILexicalBlock(scope: !140, file: !45, line: 95, column: 5)
!149 = !DILocation(line: 96, column: 13, scope: !148)
!150 = !DILocalVariable(name: "buffer", scope: !148, file: !45, line: 97, type: !67)
!151 = !DILocation(line: 97, column: 13, scope: !148)
!152 = !DILocation(line: 99, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !45, line: 99, column: 13)
!154 = !DILocation(line: 99, column: 18, scope: !153)
!155 = !DILocation(line: 99, column: 23, scope: !153)
!156 = !DILocation(line: 99, column: 26, scope: !153)
!157 = !DILocation(line: 99, column: 31, scope: !153)
!158 = !DILocation(line: 99, column: 13, scope: !148)
!159 = !DILocation(line: 101, column: 20, scope: !160)
!160 = distinct !DILexicalBlock(scope: !153, file: !45, line: 100, column: 9)
!161 = !DILocation(line: 101, column: 13, scope: !160)
!162 = !DILocation(line: 101, column: 26, scope: !160)
!163 = !DILocation(line: 103, column: 19, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !45, line: 103, column: 13)
!165 = !DILocation(line: 103, column: 17, scope: !164)
!166 = !DILocation(line: 103, column: 24, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !45, line: 103, column: 13)
!168 = !DILocation(line: 103, column: 26, scope: !167)
!169 = !DILocation(line: 103, column: 13, scope: !164)
!170 = !DILocation(line: 105, column: 37, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !45, line: 104, column: 13)
!172 = !DILocation(line: 105, column: 30, scope: !171)
!173 = !DILocation(line: 105, column: 17, scope: !171)
!174 = !DILocation(line: 106, column: 13, scope: !171)
!175 = !DILocation(line: 103, column: 33, scope: !167)
!176 = !DILocation(line: 103, column: 13, scope: !167)
!177 = distinct !{!177, !169, !178, !95}
!178 = !DILocation(line: 106, column: 13, scope: !164)
!179 = !DILocation(line: 107, column: 9, scope: !160)
!180 = !DILocation(line: 110, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !153, file: !45, line: 109, column: 9)
!182 = !DILocation(line: 113, column: 1, scope: !140)
!183 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_good", scope: !45, file: !45, line: 115, type: !55, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!184 = !DILocation(line: 117, column: 5, scope: !183)
!185 = !DILocation(line: 118, column: 5, scope: !183)
!186 = !DILocation(line: 119, column: 1, scope: !183)
!187 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource", scope: !48, file: !48, line: 24, type: !188, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!188 = !DISubroutineType(types: !189)
!189 = !{!23, !23}
!190 = !DILocalVariable(name: "data", arg: 1, scope: !187, file: !48, line: 24, type: !23)
!191 = !DILocation(line: 24, column: 72, scope: !187)
!192 = !DILocalVariable(name: "inputBuffer", scope: !193, file: !48, line: 27, type: !194)
!193 = distinct !DILexicalBlock(scope: !187, file: !48, line: 26, column: 5)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 14)
!197 = !DILocation(line: 27, column: 14, scope: !193)
!198 = !DILocation(line: 29, column: 19, scope: !199)
!199 = distinct !DILexicalBlock(scope: !193, file: !48, line: 29, column: 13)
!200 = !DILocation(line: 29, column: 49, scope: !199)
!201 = !DILocation(line: 29, column: 13, scope: !199)
!202 = !DILocation(line: 29, column: 56, scope: !199)
!203 = !DILocation(line: 29, column: 13, scope: !193)
!204 = !DILocation(line: 32, column: 25, scope: !205)
!205 = distinct !DILexicalBlock(scope: !199, file: !48, line: 30, column: 9)
!206 = !DILocation(line: 32, column: 20, scope: !205)
!207 = !DILocation(line: 32, column: 18, scope: !205)
!208 = !DILocation(line: 33, column: 9, scope: !205)
!209 = !DILocation(line: 36, column: 13, scope: !210)
!210 = distinct !DILexicalBlock(scope: !199, file: !48, line: 35, column: 9)
!211 = !DILocation(line: 39, column: 12, scope: !187)
!212 = !DILocation(line: 39, column: 5, scope: !187)
!213 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_goodG2BSource", scope: !48, file: !48, line: 47, type: !188, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!214 = !DILocalVariable(name: "data", arg: 1, scope: !213, file: !48, line: 47, type: !23)
!215 = !DILocation(line: 47, column: 76, scope: !213)
!216 = !DILocation(line: 51, column: 10, scope: !213)
!217 = !DILocation(line: 52, column: 12, scope: !213)
!218 = !DILocation(line: 52, column: 5, scope: !213)
!219 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_goodB2GSource", scope: !48, file: !48, line: 56, type: !188, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!220 = !DILocalVariable(name: "data", arg: 1, scope: !219, file: !48, line: 56, type: !23)
!221 = !DILocation(line: 56, column: 76, scope: !219)
!222 = !DILocalVariable(name: "inputBuffer", scope: !223, file: !48, line: 59, type: !194)
!223 = distinct !DILexicalBlock(scope: !219, file: !48, line: 58, column: 5)
!224 = !DILocation(line: 59, column: 14, scope: !223)
!225 = !DILocation(line: 61, column: 19, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !48, line: 61, column: 13)
!227 = !DILocation(line: 61, column: 49, scope: !226)
!228 = !DILocation(line: 61, column: 13, scope: !226)
!229 = !DILocation(line: 61, column: 56, scope: !226)
!230 = !DILocation(line: 61, column: 13, scope: !223)
!231 = !DILocation(line: 64, column: 25, scope: !232)
!232 = distinct !DILexicalBlock(scope: !226, file: !48, line: 62, column: 9)
!233 = !DILocation(line: 64, column: 20, scope: !232)
!234 = !DILocation(line: 64, column: 18, scope: !232)
!235 = !DILocation(line: 65, column: 9, scope: !232)
!236 = !DILocation(line: 68, column: 13, scope: !237)
!237 = distinct !DILexicalBlock(scope: !226, file: !48, line: 67, column: 9)
!238 = !DILocation(line: 71, column: 12, scope: !219)
!239 = !DILocation(line: 71, column: 5, scope: !219)
!240 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !241, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !42}
!243 = !DILocalVariable(name: "line", arg: 1, scope: !240, file: !3, line: 11, type: !42)
!244 = !DILocation(line: 11, column: 25, scope: !240)
!245 = !DILocation(line: 13, column: 1, scope: !240)
!246 = !DILocation(line: 14, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !240, file: !3, line: 14, column: 8)
!248 = !DILocation(line: 14, column: 13, scope: !247)
!249 = !DILocation(line: 14, column: 8, scope: !240)
!250 = !DILocation(line: 16, column: 24, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !3, line: 15, column: 5)
!252 = !DILocation(line: 16, column: 9, scope: !251)
!253 = !DILocation(line: 17, column: 5, scope: !251)
!254 = !DILocation(line: 18, column: 5, scope: !240)
!255 = !DILocation(line: 19, column: 1, scope: !240)
!256 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !241, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!257 = !DILocalVariable(name: "line", arg: 1, scope: !256, file: !3, line: 20, type: !42)
!258 = !DILocation(line: 20, column: 29, scope: !256)
!259 = !DILocation(line: 22, column: 8, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !3, line: 22, column: 8)
!261 = !DILocation(line: 22, column: 13, scope: !260)
!262 = !DILocation(line: 22, column: 8, scope: !256)
!263 = !DILocation(line: 24, column: 24, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !3, line: 23, column: 5)
!265 = !DILocation(line: 24, column: 9, scope: !264)
!266 = !DILocation(line: 25, column: 5, scope: !264)
!267 = !DILocation(line: 26, column: 1, scope: !256)
!268 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !269, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !273, line: 74, baseType: !23)
!273 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!274 = !DILocalVariable(name: "line", arg: 1, scope: !268, file: !3, line: 27, type: !271)
!275 = !DILocation(line: 27, column: 29, scope: !268)
!276 = !DILocation(line: 29, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !268, file: !3, line: 29, column: 8)
!278 = !DILocation(line: 29, column: 13, scope: !277)
!279 = !DILocation(line: 29, column: 8, scope: !268)
!280 = !DILocation(line: 31, column: 27, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !3, line: 30, column: 5)
!282 = !DILocation(line: 31, column: 9, scope: !281)
!283 = !DILocation(line: 32, column: 5, scope: !281)
!284 = !DILocation(line: 33, column: 1, scope: !268)
!285 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !286, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !23}
!288 = !DILocalVariable(name: "intNumber", arg: 1, scope: !285, file: !3, line: 35, type: !23)
!289 = !DILocation(line: 35, column: 24, scope: !285)
!290 = !DILocation(line: 37, column: 20, scope: !285)
!291 = !DILocation(line: 37, column: 5, scope: !285)
!292 = !DILocation(line: 38, column: 1, scope: !285)
!293 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !294, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !296}
!296 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!297 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !293, file: !3, line: 40, type: !296)
!298 = !DILocation(line: 40, column: 28, scope: !293)
!299 = !DILocation(line: 42, column: 21, scope: !293)
!300 = !DILocation(line: 42, column: 5, scope: !293)
!301 = !DILocation(line: 43, column: 1, scope: !293)
!302 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !303, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !305}
!305 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!306 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !302, file: !3, line: 45, type: !305)
!307 = !DILocation(line: 45, column: 28, scope: !302)
!308 = !DILocation(line: 47, column: 20, scope: !302)
!309 = !DILocation(line: 47, column: 5, scope: !302)
!310 = !DILocation(line: 48, column: 1, scope: !302)
!311 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !312, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !314}
!314 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!315 = !DILocalVariable(name: "longNumber", arg: 1, scope: !311, file: !3, line: 50, type: !314)
!316 = !DILocation(line: 50, column: 26, scope: !311)
!317 = !DILocation(line: 52, column: 21, scope: !311)
!318 = !DILocation(line: 52, column: 5, scope: !311)
!319 = !DILocation(line: 53, column: 1, scope: !311)
!320 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !321, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !324, line: 27, baseType: !325)
!324 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !326, line: 44, baseType: !314)
!326 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!327 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !320, file: !3, line: 55, type: !323)
!328 = !DILocation(line: 55, column: 33, scope: !320)
!329 = !DILocation(line: 57, column: 29, scope: !320)
!330 = !DILocation(line: 57, column: 5, scope: !320)
!331 = !DILocation(line: 58, column: 1, scope: !320)
!332 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !333, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !335}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !273, line: 46, baseType: !336)
!336 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!337 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !332, file: !3, line: 60, type: !335)
!338 = !DILocation(line: 60, column: 29, scope: !332)
!339 = !DILocation(line: 62, column: 21, scope: !332)
!340 = !DILocation(line: 62, column: 5, scope: !332)
!341 = !DILocation(line: 63, column: 1, scope: !332)
!342 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !343, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !43}
!345 = !DILocalVariable(name: "charHex", arg: 1, scope: !342, file: !3, line: 65, type: !43)
!346 = !DILocation(line: 65, column: 29, scope: !342)
!347 = !DILocation(line: 67, column: 22, scope: !342)
!348 = !DILocation(line: 67, column: 5, scope: !342)
!349 = !DILocation(line: 68, column: 1, scope: !342)
!350 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !351, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !272}
!353 = !DILocalVariable(name: "wideChar", arg: 1, scope: !350, file: !3, line: 70, type: !272)
!354 = !DILocation(line: 70, column: 29, scope: !350)
!355 = !DILocalVariable(name: "s", scope: !350, file: !3, line: 74, type: !356)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 64, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 2)
!359 = !DILocation(line: 74, column: 13, scope: !350)
!360 = !DILocation(line: 75, column: 16, scope: !350)
!361 = !DILocation(line: 75, column: 9, scope: !350)
!362 = !DILocation(line: 75, column: 14, scope: !350)
!363 = !DILocation(line: 76, column: 9, scope: !350)
!364 = !DILocation(line: 76, column: 14, scope: !350)
!365 = !DILocation(line: 77, column: 21, scope: !350)
!366 = !DILocation(line: 77, column: 5, scope: !350)
!367 = !DILocation(line: 78, column: 1, scope: !350)
!368 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !369, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !7}
!371 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !368, file: !3, line: 80, type: !7)
!372 = !DILocation(line: 80, column: 33, scope: !368)
!373 = !DILocation(line: 82, column: 20, scope: !368)
!374 = !DILocation(line: 82, column: 5, scope: !368)
!375 = !DILocation(line: 83, column: 1, scope: !368)
!376 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !377, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !25}
!379 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !376, file: !3, line: 85, type: !25)
!380 = !DILocation(line: 85, column: 45, scope: !376)
!381 = !DILocation(line: 87, column: 22, scope: !376)
!382 = !DILocation(line: 87, column: 5, scope: !376)
!383 = !DILocation(line: 88, column: 1, scope: !376)
!384 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !385, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387}
!387 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!388 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !384, file: !3, line: 90, type: !387)
!389 = !DILocation(line: 90, column: 29, scope: !384)
!390 = !DILocation(line: 92, column: 20, scope: !384)
!391 = !DILocation(line: 92, column: 5, scope: !384)
!392 = !DILocation(line: 93, column: 1, scope: !384)
!393 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !394, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !398, line: 100, baseType: !399)
!398 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_597/source_code")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !398, line: 96, size: 64, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !399, file: !398, line: 98, baseType: !23, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !399, file: !398, line: 99, baseType: !23, size: 32, offset: 32)
!403 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !393, file: !3, line: 95, type: !396)
!404 = !DILocation(line: 95, column: 40, scope: !393)
!405 = !DILocation(line: 97, column: 26, scope: !393)
!406 = !DILocation(line: 97, column: 47, scope: !393)
!407 = !DILocation(line: 97, column: 55, scope: !393)
!408 = !DILocation(line: 97, column: 76, scope: !393)
!409 = !DILocation(line: 97, column: 5, scope: !393)
!410 = !DILocation(line: 98, column: 1, scope: !393)
!411 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !412, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !414, !335}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!415 = !DILocalVariable(name: "bytes", arg: 1, scope: !411, file: !3, line: 100, type: !414)
!416 = !DILocation(line: 100, column: 38, scope: !411)
!417 = !DILocalVariable(name: "numBytes", arg: 2, scope: !411, file: !3, line: 100, type: !335)
!418 = !DILocation(line: 100, column: 52, scope: !411)
!419 = !DILocalVariable(name: "i", scope: !411, file: !3, line: 102, type: !335)
!420 = !DILocation(line: 102, column: 12, scope: !411)
!421 = !DILocation(line: 103, column: 12, scope: !422)
!422 = distinct !DILexicalBlock(scope: !411, file: !3, line: 103, column: 5)
!423 = !DILocation(line: 103, column: 10, scope: !422)
!424 = !DILocation(line: 103, column: 17, scope: !425)
!425 = distinct !DILexicalBlock(scope: !422, file: !3, line: 103, column: 5)
!426 = !DILocation(line: 103, column: 21, scope: !425)
!427 = !DILocation(line: 103, column: 19, scope: !425)
!428 = !DILocation(line: 103, column: 5, scope: !422)
!429 = !DILocation(line: 105, column: 24, scope: !430)
!430 = distinct !DILexicalBlock(scope: !425, file: !3, line: 104, column: 5)
!431 = !DILocation(line: 105, column: 30, scope: !430)
!432 = !DILocation(line: 105, column: 9, scope: !430)
!433 = !DILocation(line: 106, column: 5, scope: !430)
!434 = !DILocation(line: 103, column: 31, scope: !425)
!435 = !DILocation(line: 103, column: 5, scope: !425)
!436 = distinct !{!436, !428, !437, !95}
!437 = !DILocation(line: 106, column: 5, scope: !422)
!438 = !DILocation(line: 107, column: 5, scope: !411)
!439 = !DILocation(line: 108, column: 1, scope: !411)
!440 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !441, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!441 = !DISubroutineType(types: !442)
!442 = !{!335, !414, !335, !42}
!443 = !DILocalVariable(name: "bytes", arg: 1, scope: !440, file: !3, line: 113, type: !414)
!444 = !DILocation(line: 113, column: 39, scope: !440)
!445 = !DILocalVariable(name: "numBytes", arg: 2, scope: !440, file: !3, line: 113, type: !335)
!446 = !DILocation(line: 113, column: 53, scope: !440)
!447 = !DILocalVariable(name: "hex", arg: 3, scope: !440, file: !3, line: 113, type: !42)
!448 = !DILocation(line: 113, column: 71, scope: !440)
!449 = !DILocalVariable(name: "numWritten", scope: !440, file: !3, line: 115, type: !335)
!450 = !DILocation(line: 115, column: 12, scope: !440)
!451 = !DILocation(line: 121, column: 5, scope: !440)
!452 = !DILocation(line: 121, column: 12, scope: !440)
!453 = !DILocation(line: 121, column: 25, scope: !440)
!454 = !DILocation(line: 121, column: 23, scope: !440)
!455 = !DILocation(line: 121, column: 34, scope: !440)
!456 = !DILocation(line: 121, column: 37, scope: !440)
!457 = !DILocation(line: 121, column: 67, scope: !440)
!458 = !DILocation(line: 121, column: 70, scope: !440)
!459 = !DILocation(line: 0, scope: !440)
!460 = !DILocalVariable(name: "byte", scope: !461, file: !3, line: 123, type: !23)
!461 = distinct !DILexicalBlock(scope: !440, file: !3, line: 122, column: 5)
!462 = !DILocation(line: 123, column: 13, scope: !461)
!463 = !DILocation(line: 124, column: 17, scope: !461)
!464 = !DILocation(line: 124, column: 25, scope: !461)
!465 = !DILocation(line: 124, column: 23, scope: !461)
!466 = !DILocation(line: 124, column: 9, scope: !461)
!467 = !DILocation(line: 125, column: 45, scope: !461)
!468 = !DILocation(line: 125, column: 29, scope: !461)
!469 = !DILocation(line: 125, column: 9, scope: !461)
!470 = !DILocation(line: 125, column: 15, scope: !461)
!471 = !DILocation(line: 125, column: 27, scope: !461)
!472 = !DILocation(line: 126, column: 9, scope: !461)
!473 = distinct !{!473, !451, !474, !95}
!474 = !DILocation(line: 127, column: 5, scope: !440)
!475 = !DILocation(line: 129, column: 12, scope: !440)
!476 = !DILocation(line: 129, column: 5, scope: !440)
!477 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !478, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!478 = !DISubroutineType(types: !479)
!479 = !{!335, !414, !335, !271}
!480 = !DILocalVariable(name: "bytes", arg: 1, scope: !477, file: !3, line: 135, type: !414)
!481 = !DILocation(line: 135, column: 41, scope: !477)
!482 = !DILocalVariable(name: "numBytes", arg: 2, scope: !477, file: !3, line: 135, type: !335)
!483 = !DILocation(line: 135, column: 55, scope: !477)
!484 = !DILocalVariable(name: "hex", arg: 3, scope: !477, file: !3, line: 135, type: !271)
!485 = !DILocation(line: 135, column: 76, scope: !477)
!486 = !DILocalVariable(name: "numWritten", scope: !477, file: !3, line: 137, type: !335)
!487 = !DILocation(line: 137, column: 12, scope: !477)
!488 = !DILocation(line: 143, column: 5, scope: !477)
!489 = !DILocation(line: 143, column: 12, scope: !477)
!490 = !DILocation(line: 143, column: 25, scope: !477)
!491 = !DILocation(line: 143, column: 23, scope: !477)
!492 = !DILocation(line: 143, column: 34, scope: !477)
!493 = !DILocation(line: 143, column: 47, scope: !477)
!494 = !DILocation(line: 143, column: 55, scope: !477)
!495 = !DILocation(line: 143, column: 53, scope: !477)
!496 = !DILocation(line: 143, column: 37, scope: !477)
!497 = !DILocation(line: 143, column: 68, scope: !477)
!498 = !DILocation(line: 143, column: 81, scope: !477)
!499 = !DILocation(line: 143, column: 89, scope: !477)
!500 = !DILocation(line: 143, column: 87, scope: !477)
!501 = !DILocation(line: 143, column: 100, scope: !477)
!502 = !DILocation(line: 143, column: 71, scope: !477)
!503 = !DILocation(line: 0, scope: !477)
!504 = !DILocalVariable(name: "byte", scope: !505, file: !3, line: 145, type: !23)
!505 = distinct !DILexicalBlock(scope: !477, file: !3, line: 144, column: 5)
!506 = !DILocation(line: 145, column: 13, scope: !505)
!507 = !DILocation(line: 146, column: 18, scope: !505)
!508 = !DILocation(line: 146, column: 26, scope: !505)
!509 = !DILocation(line: 146, column: 24, scope: !505)
!510 = !DILocation(line: 146, column: 9, scope: !505)
!511 = !DILocation(line: 147, column: 45, scope: !505)
!512 = !DILocation(line: 147, column: 29, scope: !505)
!513 = !DILocation(line: 147, column: 9, scope: !505)
!514 = !DILocation(line: 147, column: 15, scope: !505)
!515 = !DILocation(line: 147, column: 27, scope: !505)
!516 = !DILocation(line: 148, column: 9, scope: !505)
!517 = distinct !{!517, !488, !518, !95}
!518 = !DILocation(line: 149, column: 5, scope: !477)
!519 = !DILocation(line: 151, column: 12, scope: !477)
!520 = !DILocation(line: 151, column: 5, scope: !477)
!521 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !522, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DISubroutineType(types: !523)
!523 = !{!23}
!524 = !DILocation(line: 158, column: 5, scope: !521)
!525 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !522, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 163, column: 5, scope: !525)
!527 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !522, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 168, column: 13, scope: !527)
!529 = !DILocation(line: 168, column: 20, scope: !527)
!530 = !DILocation(line: 168, column: 5, scope: !527)
!531 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 187, column: 16, scope: !531)
!533 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 188, column: 16, scope: !533)
!535 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 189, column: 16, scope: !535)
!537 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 190, column: 16, scope: !537)
!539 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 191, column: 16, scope: !539)
!541 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 192, column: 16, scope: !541)
!543 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 193, column: 16, scope: !543)
!545 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 194, column: 16, scope: !545)
!547 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 195, column: 16, scope: !547)
!549 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 198, column: 15, scope: !549)
!551 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 199, column: 15, scope: !551)
!553 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 200, column: 15, scope: !553)
!555 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 201, column: 15, scope: !555)
!557 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 202, column: 15, scope: !557)
!559 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 203, column: 15, scope: !559)
!561 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 204, column: 15, scope: !561)
!563 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 205, column: 15, scope: !563)
!565 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 206, column: 15, scope: !565)
