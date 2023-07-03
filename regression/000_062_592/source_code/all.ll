; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_badData = dso_local global i32 0, align 4, !dbg !0
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodG2BData = dso_local global i32 0, align 4, !dbg !8
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData = dso_local global i32 0, align 4, !dbg !11
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !13
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !38
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !40
@globalTrue = dso_local global i32 1, align 4, !dbg !42
@globalFalse = dso_local global i32 0, align 4, !dbg !44
@globalFive = dso_local global i32 5, align 4, !dbg !46
@globalArgc = dso_local global i32 0, align 4, !dbg !48
@globalArgv = dso_local global i8** null, align 8, !dbg !50
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
define dso_local void @badSink() #0 !dbg !59 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_badData, align 4, !dbg !64
  store i32 %0, i32* %data, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %i, metadata !65, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !68, metadata !DIExpression()), !dbg !72
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !72
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !72
  %2 = load i32, i32* %data, align 4, !dbg !73
  %cmp = icmp sge i32 %2, 0, !dbg !75
  br i1 %cmp, label %if.then, label %if.else, !dbg !76

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !77
  %idxprom = sext i32 %3 to i64, !dbg !79
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !79
  store i32 1, i32* %arrayidx, align 4, !dbg !80
  store i32 0, i32* %i, align 4, !dbg !81
  br label %for.cond, !dbg !83

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !84
  %cmp1 = icmp slt i32 %4, 10, !dbg !86
  br i1 %cmp1, label %for.body, label %for.end, !dbg !87

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !88
  %idxprom2 = sext i32 %5 to i64, !dbg !90
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !90
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !90
  call void @printIntLine(i32 %6), !dbg !91
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !93
  %inc = add nsw i32 %7, 1, !dbg !93
  store i32 %inc, i32* %i, align 4, !dbg !93
  br label %for.cond, !dbg !94, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !98

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !99
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !101
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_bad() #0 !dbg !102 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !103, metadata !DIExpression()), !dbg !104
  store i32 -1, i32* %data, align 4, !dbg !105
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !106, metadata !DIExpression()), !dbg !111
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !111
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !111
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !112
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !114
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !115
  %cmp = icmp ne i8* %call, null, !dbg !116
  br i1 %cmp, label %if.then, label %if.else, !dbg !117

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !118
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !120
  store i32 %call2, i32* %data, align 4, !dbg !121
  br label %if.end, !dbg !122

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !123
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !125
  store i32 %2, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_badData, align 4, !dbg !126
  call void @badSink(), !dbg !127
  ret void, !dbg !128
}

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !129 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodG2BData, align 4, !dbg !132
  store i32 %0, i32* %data, align 4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %i, metadata !133, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !136, metadata !DIExpression()), !dbg !137
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !137
  %2 = load i32, i32* %data, align 4, !dbg !138
  %cmp = icmp sge i32 %2, 0, !dbg !140
  br i1 %cmp, label %if.then, label %if.else, !dbg !141

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !142
  %idxprom = sext i32 %3 to i64, !dbg !144
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !144
  store i32 1, i32* %arrayidx, align 4, !dbg !145
  store i32 0, i32* %i, align 4, !dbg !146
  br label %for.cond, !dbg !148

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !149
  %cmp1 = icmp slt i32 %4, 10, !dbg !151
  br i1 %cmp1, label %for.body, label %for.end, !dbg !152

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !153
  %idxprom2 = sext i32 %5 to i64, !dbg !155
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !155
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !155
  call void @printIntLine(i32 %6), !dbg !156
  br label %for.inc, !dbg !157

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !158
  %inc = add nsw i32 %7, 1, !dbg !158
  store i32 %inc, i32* %i, align 4, !dbg !158
  br label %for.cond, !dbg !159, !llvm.loop !160

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !162

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !163
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !166 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !167, metadata !DIExpression()), !dbg !168
  store i32 -1, i32* %data, align 4, !dbg !169
  store i32 7, i32* %data, align 4, !dbg !170
  %0 = load i32, i32* %data, align 4, !dbg !171
  store i32 %0, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodG2BData, align 4, !dbg !172
  call void @goodG2BSink(), !dbg !173
  ret void, !dbg !174
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !175 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !176, metadata !DIExpression()), !dbg !177
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData, align 4, !dbg !178
  store i32 %0, i32* %data, align 4, !dbg !177
  call void @llvm.dbg.declare(metadata i32* %i, metadata !179, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !182, metadata !DIExpression()), !dbg !183
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !183
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !183
  %2 = load i32, i32* %data, align 4, !dbg !184
  %cmp = icmp sge i32 %2, 0, !dbg !186
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !187

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !188
  %cmp1 = icmp slt i32 %3, 10, !dbg !189
  br i1 %cmp1, label %if.then, label %if.else, !dbg !190

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !191
  %idxprom = sext i32 %4 to i64, !dbg !193
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !193
  store i32 1, i32* %arrayidx, align 4, !dbg !194
  store i32 0, i32* %i, align 4, !dbg !195
  br label %for.cond, !dbg !197

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !198
  %cmp2 = icmp slt i32 %5, 10, !dbg !200
  br i1 %cmp2, label %for.body, label %for.end, !dbg !201

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !202
  %idxprom3 = sext i32 %6 to i64, !dbg !204
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !204
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !204
  call void @printIntLine(i32 %7), !dbg !205
  br label %for.inc, !dbg !206

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !207
  %inc = add nsw i32 %8, 1, !dbg !207
  store i32 %inc, i32* %i, align 4, !dbg !207
  br label %for.cond, !dbg !208, !llvm.loop !209

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !211

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !212
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !214
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !215 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !216, metadata !DIExpression()), !dbg !217
  store i32 -1, i32* %data, align 4, !dbg !218
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !219, metadata !DIExpression()), !dbg !221
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !221
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !221
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !222
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !224
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !225
  %cmp = icmp ne i8* %call, null, !dbg !226
  br i1 %cmp, label %if.then, label %if.else, !dbg !227

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !228
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !230
  store i32 %call2, i32* %data, align 4, !dbg !231
  br label %if.end, !dbg !232

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !233
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !235
  store i32 %2, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData, align 4, !dbg !236
  call void @goodB2GSink(), !dbg !237
  ret void, !dbg !238
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_good() #0 !dbg !239 {
entry:
  call void @goodG2B(), !dbg !240
  call void @goodB2G(), !dbg !241
  ret void, !dbg !242
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !243 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !246, metadata !DIExpression()), !dbg !247
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !248
  %0 = load i8*, i8** %line.addr, align 8, !dbg !249
  %cmp = icmp ne i8* %0, null, !dbg !251
  br i1 %cmp, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !253
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !255
  br label %if.end, !dbg !256

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !257
  ret void, !dbg !258
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !259 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = load i8*, i8** %line.addr, align 8, !dbg !262
  %cmp = icmp ne i8* %0, null, !dbg !264
  br i1 %cmp, label %if.then, label %if.end, !dbg !265

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !266
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !268
  br label %if.end, !dbg !269

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !271 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !277, metadata !DIExpression()), !dbg !278
  %0 = load i32*, i32** %line.addr, align 8, !dbg !279
  %cmp = icmp ne i32* %0, null, !dbg !281
  br i1 %cmp, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !283
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !285
  br label %if.end, !dbg !286

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !287
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !288 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !293
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !294
  ret void, !dbg !295
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !296 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !302
  %conv = sext i16 %0 to i32, !dbg !302
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !303
  ret void, !dbg !304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !305 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !311
  %conv = fpext float %0 to double, !dbg !311
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !314 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !318, metadata !DIExpression()), !dbg !319
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !320
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !321
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !323 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !333
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !335 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !342
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !345 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !350
  %conv = sext i8 %0 to i32, !dbg !350
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !353 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !356, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !358, metadata !DIExpression()), !dbg !362
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !363
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !364
  store i32 %0, i32* %arrayidx, align 4, !dbg !365
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !366
  store i32 0, i32* %arrayidx1, align 4, !dbg !367
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !368
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !369
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !371 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !376
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !379 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !384
  %conv = zext i8 %0 to i32, !dbg !384
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !385
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !387 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !393
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !396 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !408
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !409
  %1 = load i32, i32* %intOne, align 4, !dbg !409
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !410
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !411
  %3 = load i32, i32* %intTwo, align 4, !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !414 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !418, metadata !DIExpression()), !dbg !419
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata i64* %i, metadata !422, metadata !DIExpression()), !dbg !423
  store i64 0, i64* %i, align 8, !dbg !424
  br label %for.cond, !dbg !426

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !427
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !429
  %cmp = icmp ult i64 %0, %1, !dbg !430
  br i1 %cmp, label %for.body, label %for.end, !dbg !431

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !432
  %3 = load i64, i64* %i, align 8, !dbg !434
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !432
  %4 = load i8, i8* %arrayidx, align 1, !dbg !432
  %conv = zext i8 %4 to i32, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !435
  br label %for.inc, !dbg !436

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !437
  %inc = add i64 %5, 1, !dbg !437
  store i64 %inc, i64* %i, align 8, !dbg !437
  br label %for.cond, !dbg !438, !llvm.loop !439

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !441
  ret void, !dbg !442
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !443 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !446, metadata !DIExpression()), !dbg !447
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !448, metadata !DIExpression()), !dbg !449
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !450, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !452, metadata !DIExpression()), !dbg !453
  store i64 0, i64* %numWritten, align 8, !dbg !453
  br label %while.cond, !dbg !454

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !455
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !456
  %cmp = icmp ult i64 %0, %1, !dbg !457
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !458

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !459
  %2 = load i16*, i16** %call, align 8, !dbg !459
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !459
  %4 = load i64, i64* %numWritten, align 8, !dbg !459
  %mul = mul i64 2, %4, !dbg !459
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !459
  %5 = load i8, i8* %arrayidx, align 1, !dbg !459
  %conv = sext i8 %5 to i32, !dbg !459
  %idxprom = sext i32 %conv to i64, !dbg !459
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !459
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !459
  %conv2 = zext i16 %6 to i32, !dbg !459
  %and = and i32 %conv2, 4096, !dbg !459
  %tobool = icmp ne i32 %and, 0, !dbg !459
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !460

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !461
  %7 = load i16*, i16** %call3, align 8, !dbg !461
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !461
  %9 = load i64, i64* %numWritten, align 8, !dbg !461
  %mul4 = mul i64 2, %9, !dbg !461
  %add = add i64 %mul4, 1, !dbg !461
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !461
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !461
  %conv6 = sext i8 %10 to i32, !dbg !461
  %idxprom7 = sext i32 %conv6 to i64, !dbg !461
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !461
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !461
  %conv9 = zext i16 %11 to i32, !dbg !461
  %and10 = and i32 %conv9, 4096, !dbg !461
  %tobool11 = icmp ne i32 %and10, 0, !dbg !460
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !462
  br i1 %12, label %while.body, label %while.end, !dbg !454

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !463, metadata !DIExpression()), !dbg !465
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !466
  %14 = load i64, i64* %numWritten, align 8, !dbg !467
  %mul12 = mul i64 2, %14, !dbg !468
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !466
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !469
  %15 = load i32, i32* %byte, align 4, !dbg !470
  %conv15 = trunc i32 %15 to i8, !dbg !471
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !472
  %17 = load i64, i64* %numWritten, align 8, !dbg !473
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !472
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !474
  %18 = load i64, i64* %numWritten, align 8, !dbg !475
  %inc = add i64 %18, 1, !dbg !475
  store i64 %inc, i64* %numWritten, align 8, !dbg !475
  br label %while.cond, !dbg !454, !llvm.loop !476

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !478
  ret i64 %19, !dbg !479
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !480 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !483, metadata !DIExpression()), !dbg !484
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !485, metadata !DIExpression()), !dbg !486
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !487, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !489, metadata !DIExpression()), !dbg !490
  store i64 0, i64* %numWritten, align 8, !dbg !490
  br label %while.cond, !dbg !491

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !492
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !493
  %cmp = icmp ult i64 %0, %1, !dbg !494
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !495

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !496
  %3 = load i64, i64* %numWritten, align 8, !dbg !497
  %mul = mul i64 2, %3, !dbg !498
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !496
  %4 = load i32, i32* %arrayidx, align 4, !dbg !496
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !499
  %tobool = icmp ne i32 %call, 0, !dbg !499
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !500

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !501
  %6 = load i64, i64* %numWritten, align 8, !dbg !502
  %mul1 = mul i64 2, %6, !dbg !503
  %add = add i64 %mul1, 1, !dbg !504
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !501
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !501
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !505
  %tobool4 = icmp ne i32 %call3, 0, !dbg !500
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !506
  br i1 %8, label %while.body, label %while.end, !dbg !491

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !507, metadata !DIExpression()), !dbg !509
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !510
  %10 = load i64, i64* %numWritten, align 8, !dbg !511
  %mul5 = mul i64 2, %10, !dbg !512
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !510
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !513
  %11 = load i32, i32* %byte, align 4, !dbg !514
  %conv = trunc i32 %11 to i8, !dbg !515
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !516
  %13 = load i64, i64* %numWritten, align 8, !dbg !517
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !516
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !518
  %14 = load i64, i64* %numWritten, align 8, !dbg !519
  %inc = add i64 %14, 1, !dbg !519
  store i64 %inc, i64* %numWritten, align 8, !dbg !519
  br label %while.cond, !dbg !491, !llvm.loop !520

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !522
  ret i64 %15, !dbg !523
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !524 {
entry:
  ret i32 1, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !528 {
entry:
  ret i32 0, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !530 {
entry:
  %call = call i32 @rand() #9, !dbg !531
  %rem = srem i32 %call, 2, !dbg !532
  ret i32 %rem, !dbg !533
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !534 {
entry:
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !536 {
entry:
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !540 {
entry:
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !542 {
entry:
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !544 {
entry:
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !548 {
entry:
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !568 {
entry:
  ret void, !dbg !569
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

!llvm.dbg.cu = !{!2, !15}
!llvm.ident = !{!55, !55}
!llvm.module.flags = !{!56, !57, !58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_badData", scope: !2, file: !3, line: 23, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_592/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !11}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodG2BData", scope: !2, file: !3, line: 24, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_goodB2GData", scope: !2, file: !3, line: 25, type: !10, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !15, file: !16, line: 174, type: !10, isLocal: false, isDefinition: true)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !17, retainedTypes: !34, globals: !37, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_592/source_code")
!17 = !{!18}
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 46, baseType: !20, size: 32, elements: !21)
!19 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!22 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!33 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!34 = !{!6, !10, !35, !36}
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !{!13, !38, !40, !42, !44, !46, !48, !50}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !15, file: !16, line: 175, type: !10, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !15, file: !16, line: 176, type: !10, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "globalTrue", scope: !15, file: !16, line: 181, type: !10, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalFalse", scope: !15, file: !16, line: 182, type: !10, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalFive", scope: !15, file: !16, line: 183, type: !10, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalArgc", scope: !15, file: !16, line: 214, type: !10, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "globalArgv", scope: !15, file: !16, line: 215, type: !52, isLocal: false, isDefinition: true)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !{!"clang version 12.0.0"}
!56 = !{i32 7, !"Dwarf Version", i32 4}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 29, type: !60, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!60 = !DISubroutineType(types: !61)
!61 = !{null}
!62 = !DILocalVariable(name: "data", scope: !59, file: !3, line: 31, type: !10)
!63 = !DILocation(line: 31, column: 9, scope: !59)
!64 = !DILocation(line: 31, column: 16, scope: !59)
!65 = !DILocalVariable(name: "i", scope: !66, file: !3, line: 33, type: !10)
!66 = distinct !DILexicalBlock(scope: !59, file: !3, line: 32, column: 5)
!67 = !DILocation(line: 33, column: 13, scope: !66)
!68 = !DILocalVariable(name: "buffer", scope: !66, file: !3, line: 34, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 10)
!72 = !DILocation(line: 34, column: 13, scope: !66)
!73 = !DILocation(line: 37, column: 13, scope: !74)
!74 = distinct !DILexicalBlock(scope: !66, file: !3, line: 37, column: 13)
!75 = !DILocation(line: 37, column: 18, scope: !74)
!76 = !DILocation(line: 37, column: 13, scope: !66)
!77 = !DILocation(line: 39, column: 20, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !3, line: 38, column: 9)
!79 = !DILocation(line: 39, column: 13, scope: !78)
!80 = !DILocation(line: 39, column: 26, scope: !78)
!81 = !DILocation(line: 41, column: 19, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !3, line: 41, column: 13)
!83 = !DILocation(line: 41, column: 17, scope: !82)
!84 = !DILocation(line: 41, column: 24, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !3, line: 41, column: 13)
!86 = !DILocation(line: 41, column: 26, scope: !85)
!87 = !DILocation(line: 41, column: 13, scope: !82)
!88 = !DILocation(line: 43, column: 37, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !3, line: 42, column: 13)
!90 = !DILocation(line: 43, column: 30, scope: !89)
!91 = !DILocation(line: 43, column: 17, scope: !89)
!92 = !DILocation(line: 44, column: 13, scope: !89)
!93 = !DILocation(line: 41, column: 33, scope: !85)
!94 = !DILocation(line: 41, column: 13, scope: !85)
!95 = distinct !{!95, !87, !96, !97}
!96 = !DILocation(line: 44, column: 13, scope: !82)
!97 = !{!"llvm.loop.mustprogress"}
!98 = !DILocation(line: 45, column: 9, scope: !78)
!99 = !DILocation(line: 48, column: 13, scope: !100)
!100 = distinct !DILexicalBlock(scope: !74, file: !3, line: 47, column: 9)
!101 = !DILocation(line: 51, column: 1, scope: !59)
!102 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_bad", scope: !3, file: !3, line: 53, type: !60, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!103 = !DILocalVariable(name: "data", scope: !102, file: !3, line: 55, type: !10)
!104 = !DILocation(line: 55, column: 9, scope: !102)
!105 = !DILocation(line: 57, column: 10, scope: !102)
!106 = !DILocalVariable(name: "inputBuffer", scope: !107, file: !3, line: 59, type: !108)
!107 = distinct !DILexicalBlock(scope: !102, file: !3, line: 58, column: 5)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 112, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 14)
!111 = !DILocation(line: 59, column: 14, scope: !107)
!112 = !DILocation(line: 61, column: 19, scope: !113)
!113 = distinct !DILexicalBlock(scope: !107, file: !3, line: 61, column: 13)
!114 = !DILocation(line: 61, column: 49, scope: !113)
!115 = !DILocation(line: 61, column: 13, scope: !113)
!116 = !DILocation(line: 61, column: 56, scope: !113)
!117 = !DILocation(line: 61, column: 13, scope: !107)
!118 = !DILocation(line: 64, column: 25, scope: !119)
!119 = distinct !DILexicalBlock(scope: !113, file: !3, line: 62, column: 9)
!120 = !DILocation(line: 64, column: 20, scope: !119)
!121 = !DILocation(line: 64, column: 18, scope: !119)
!122 = !DILocation(line: 65, column: 9, scope: !119)
!123 = !DILocation(line: 68, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !113, file: !3, line: 67, column: 9)
!125 = !DILocation(line: 71, column: 67, scope: !102)
!126 = !DILocation(line: 71, column: 65, scope: !102)
!127 = !DILocation(line: 72, column: 5, scope: !102)
!128 = !DILocation(line: 73, column: 1, scope: !102)
!129 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 80, type: !60, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!130 = !DILocalVariable(name: "data", scope: !129, file: !3, line: 82, type: !10)
!131 = !DILocation(line: 82, column: 9, scope: !129)
!132 = !DILocation(line: 82, column: 16, scope: !129)
!133 = !DILocalVariable(name: "i", scope: !134, file: !3, line: 84, type: !10)
!134 = distinct !DILexicalBlock(scope: !129, file: !3, line: 83, column: 5)
!135 = !DILocation(line: 84, column: 13, scope: !134)
!136 = !DILocalVariable(name: "buffer", scope: !134, file: !3, line: 85, type: !69)
!137 = !DILocation(line: 85, column: 13, scope: !134)
!138 = !DILocation(line: 88, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !3, line: 88, column: 13)
!140 = !DILocation(line: 88, column: 18, scope: !139)
!141 = !DILocation(line: 88, column: 13, scope: !134)
!142 = !DILocation(line: 90, column: 20, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !3, line: 89, column: 9)
!144 = !DILocation(line: 90, column: 13, scope: !143)
!145 = !DILocation(line: 90, column: 26, scope: !143)
!146 = !DILocation(line: 92, column: 19, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !3, line: 92, column: 13)
!148 = !DILocation(line: 92, column: 17, scope: !147)
!149 = !DILocation(line: 92, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !3, line: 92, column: 13)
!151 = !DILocation(line: 92, column: 26, scope: !150)
!152 = !DILocation(line: 92, column: 13, scope: !147)
!153 = !DILocation(line: 94, column: 37, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !3, line: 93, column: 13)
!155 = !DILocation(line: 94, column: 30, scope: !154)
!156 = !DILocation(line: 94, column: 17, scope: !154)
!157 = !DILocation(line: 95, column: 13, scope: !154)
!158 = !DILocation(line: 92, column: 33, scope: !150)
!159 = !DILocation(line: 92, column: 13, scope: !150)
!160 = distinct !{!160, !152, !161, !97}
!161 = !DILocation(line: 95, column: 13, scope: !147)
!162 = !DILocation(line: 96, column: 9, scope: !143)
!163 = !DILocation(line: 99, column: 13, scope: !164)
!164 = distinct !DILexicalBlock(scope: !139, file: !3, line: 98, column: 9)
!165 = !DILocation(line: 102, column: 1, scope: !129)
!166 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 104, type: !60, scopeLine: 105, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!167 = !DILocalVariable(name: "data", scope: !166, file: !3, line: 106, type: !10)
!168 = !DILocation(line: 106, column: 9, scope: !166)
!169 = !DILocation(line: 108, column: 10, scope: !166)
!170 = !DILocation(line: 111, column: 10, scope: !166)
!171 = !DILocation(line: 112, column: 71, scope: !166)
!172 = !DILocation(line: 112, column: 69, scope: !166)
!173 = !DILocation(line: 113, column: 5, scope: !166)
!174 = !DILocation(line: 114, column: 1, scope: !166)
!175 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 117, type: !60, scopeLine: 118, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!176 = !DILocalVariable(name: "data", scope: !175, file: !3, line: 119, type: !10)
!177 = !DILocation(line: 119, column: 9, scope: !175)
!178 = !DILocation(line: 119, column: 16, scope: !175)
!179 = !DILocalVariable(name: "i", scope: !180, file: !3, line: 121, type: !10)
!180 = distinct !DILexicalBlock(scope: !175, file: !3, line: 120, column: 5)
!181 = !DILocation(line: 121, column: 13, scope: !180)
!182 = !DILocalVariable(name: "buffer", scope: !180, file: !3, line: 122, type: !69)
!183 = !DILocation(line: 122, column: 13, scope: !180)
!184 = !DILocation(line: 124, column: 13, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !3, line: 124, column: 13)
!186 = !DILocation(line: 124, column: 18, scope: !185)
!187 = !DILocation(line: 124, column: 23, scope: !185)
!188 = !DILocation(line: 124, column: 26, scope: !185)
!189 = !DILocation(line: 124, column: 31, scope: !185)
!190 = !DILocation(line: 124, column: 13, scope: !180)
!191 = !DILocation(line: 126, column: 20, scope: !192)
!192 = distinct !DILexicalBlock(scope: !185, file: !3, line: 125, column: 9)
!193 = !DILocation(line: 126, column: 13, scope: !192)
!194 = !DILocation(line: 126, column: 26, scope: !192)
!195 = !DILocation(line: 128, column: 19, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !3, line: 128, column: 13)
!197 = !DILocation(line: 128, column: 17, scope: !196)
!198 = !DILocation(line: 128, column: 24, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !3, line: 128, column: 13)
!200 = !DILocation(line: 128, column: 26, scope: !199)
!201 = !DILocation(line: 128, column: 13, scope: !196)
!202 = !DILocation(line: 130, column: 37, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !3, line: 129, column: 13)
!204 = !DILocation(line: 130, column: 30, scope: !203)
!205 = !DILocation(line: 130, column: 17, scope: !203)
!206 = !DILocation(line: 131, column: 13, scope: !203)
!207 = !DILocation(line: 128, column: 33, scope: !199)
!208 = !DILocation(line: 128, column: 13, scope: !199)
!209 = distinct !{!209, !201, !210, !97}
!210 = !DILocation(line: 131, column: 13, scope: !196)
!211 = !DILocation(line: 132, column: 9, scope: !192)
!212 = !DILocation(line: 135, column: 13, scope: !213)
!213 = distinct !DILexicalBlock(scope: !185, file: !3, line: 134, column: 9)
!214 = !DILocation(line: 138, column: 1, scope: !175)
!215 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 140, type: !60, scopeLine: 141, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!216 = !DILocalVariable(name: "data", scope: !215, file: !3, line: 142, type: !10)
!217 = !DILocation(line: 142, column: 9, scope: !215)
!218 = !DILocation(line: 144, column: 10, scope: !215)
!219 = !DILocalVariable(name: "inputBuffer", scope: !220, file: !3, line: 146, type: !108)
!220 = distinct !DILexicalBlock(scope: !215, file: !3, line: 145, column: 5)
!221 = !DILocation(line: 146, column: 14, scope: !220)
!222 = !DILocation(line: 148, column: 19, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !3, line: 148, column: 13)
!224 = !DILocation(line: 148, column: 49, scope: !223)
!225 = !DILocation(line: 148, column: 13, scope: !223)
!226 = !DILocation(line: 148, column: 56, scope: !223)
!227 = !DILocation(line: 148, column: 13, scope: !220)
!228 = !DILocation(line: 151, column: 25, scope: !229)
!229 = distinct !DILexicalBlock(scope: !223, file: !3, line: 149, column: 9)
!230 = !DILocation(line: 151, column: 20, scope: !229)
!231 = !DILocation(line: 151, column: 18, scope: !229)
!232 = !DILocation(line: 152, column: 9, scope: !229)
!233 = !DILocation(line: 155, column: 13, scope: !234)
!234 = distinct !DILexicalBlock(scope: !223, file: !3, line: 154, column: 9)
!235 = !DILocation(line: 158, column: 71, scope: !215)
!236 = !DILocation(line: 158, column: 69, scope: !215)
!237 = !DILocation(line: 159, column: 5, scope: !215)
!238 = !DILocation(line: 160, column: 1, scope: !215)
!239 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_45_good", scope: !3, file: !3, line: 162, type: !60, scopeLine: 163, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!240 = !DILocation(line: 164, column: 5, scope: !239)
!241 = !DILocation(line: 165, column: 5, scope: !239)
!242 = !DILocation(line: 166, column: 1, scope: !239)
!243 = distinct !DISubprogram(name: "printLine", scope: !16, file: !16, line: 11, type: !244, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !53}
!246 = !DILocalVariable(name: "line", arg: 1, scope: !243, file: !16, line: 11, type: !53)
!247 = !DILocation(line: 11, column: 25, scope: !243)
!248 = !DILocation(line: 13, column: 1, scope: !243)
!249 = !DILocation(line: 14, column: 8, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !16, line: 14, column: 8)
!251 = !DILocation(line: 14, column: 13, scope: !250)
!252 = !DILocation(line: 14, column: 8, scope: !243)
!253 = !DILocation(line: 16, column: 24, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !16, line: 15, column: 5)
!255 = !DILocation(line: 16, column: 9, scope: !254)
!256 = !DILocation(line: 17, column: 5, scope: !254)
!257 = !DILocation(line: 18, column: 5, scope: !243)
!258 = !DILocation(line: 19, column: 1, scope: !243)
!259 = distinct !DISubprogram(name: "printSinkLine", scope: !16, file: !16, line: 20, type: !244, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!260 = !DILocalVariable(name: "line", arg: 1, scope: !259, file: !16, line: 20, type: !53)
!261 = !DILocation(line: 20, column: 29, scope: !259)
!262 = !DILocation(line: 22, column: 8, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !16, line: 22, column: 8)
!264 = !DILocation(line: 22, column: 13, scope: !263)
!265 = !DILocation(line: 22, column: 8, scope: !259)
!266 = !DILocation(line: 24, column: 24, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !16, line: 23, column: 5)
!268 = !DILocation(line: 24, column: 9, scope: !267)
!269 = !DILocation(line: 25, column: 5, scope: !267)
!270 = !DILocation(line: 26, column: 1, scope: !259)
!271 = distinct !DISubprogram(name: "printWLine", scope: !16, file: !16, line: 27, type: !272, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !276, line: 74, baseType: !10)
!276 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!277 = !DILocalVariable(name: "line", arg: 1, scope: !271, file: !16, line: 27, type: !274)
!278 = !DILocation(line: 27, column: 29, scope: !271)
!279 = !DILocation(line: 29, column: 8, scope: !280)
!280 = distinct !DILexicalBlock(scope: !271, file: !16, line: 29, column: 8)
!281 = !DILocation(line: 29, column: 13, scope: !280)
!282 = !DILocation(line: 29, column: 8, scope: !271)
!283 = !DILocation(line: 31, column: 27, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !16, line: 30, column: 5)
!285 = !DILocation(line: 31, column: 9, scope: !284)
!286 = !DILocation(line: 32, column: 5, scope: !284)
!287 = !DILocation(line: 33, column: 1, scope: !271)
!288 = distinct !DISubprogram(name: "printIntLine", scope: !16, file: !16, line: 35, type: !289, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !10}
!291 = !DILocalVariable(name: "intNumber", arg: 1, scope: !288, file: !16, line: 35, type: !10)
!292 = !DILocation(line: 35, column: 24, scope: !288)
!293 = !DILocation(line: 37, column: 20, scope: !288)
!294 = !DILocation(line: 37, column: 5, scope: !288)
!295 = !DILocation(line: 38, column: 1, scope: !288)
!296 = distinct !DISubprogram(name: "printShortLine", scope: !16, file: !16, line: 40, type: !297, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299}
!299 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!300 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !296, file: !16, line: 40, type: !299)
!301 = !DILocation(line: 40, column: 28, scope: !296)
!302 = !DILocation(line: 42, column: 21, scope: !296)
!303 = !DILocation(line: 42, column: 5, scope: !296)
!304 = !DILocation(line: 43, column: 1, scope: !296)
!305 = distinct !DISubprogram(name: "printFloatLine", scope: !16, file: !16, line: 45, type: !306, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !308}
!308 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!309 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !305, file: !16, line: 45, type: !308)
!310 = !DILocation(line: 45, column: 28, scope: !305)
!311 = !DILocation(line: 47, column: 20, scope: !305)
!312 = !DILocation(line: 47, column: 5, scope: !305)
!313 = !DILocation(line: 48, column: 1, scope: !305)
!314 = distinct !DISubprogram(name: "printLongLine", scope: !16, file: !16, line: 50, type: !315, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317}
!317 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!318 = !DILocalVariable(name: "longNumber", arg: 1, scope: !314, file: !16, line: 50, type: !317)
!319 = !DILocation(line: 50, column: 26, scope: !314)
!320 = !DILocation(line: 52, column: 21, scope: !314)
!321 = !DILocation(line: 52, column: 5, scope: !314)
!322 = !DILocation(line: 53, column: 1, scope: !314)
!323 = distinct !DISubprogram(name: "printLongLongLine", scope: !16, file: !16, line: 55, type: !324, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !326}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !327, line: 27, baseType: !328)
!327 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !329, line: 44, baseType: !317)
!329 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!330 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !323, file: !16, line: 55, type: !326)
!331 = !DILocation(line: 55, column: 33, scope: !323)
!332 = !DILocation(line: 57, column: 29, scope: !323)
!333 = !DILocation(line: 57, column: 5, scope: !323)
!334 = !DILocation(line: 58, column: 1, scope: !323)
!335 = distinct !DISubprogram(name: "printSizeTLine", scope: !16, file: !16, line: 60, type: !336, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338}
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !276, line: 46, baseType: !339)
!339 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!340 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !335, file: !16, line: 60, type: !338)
!341 = !DILocation(line: 60, column: 29, scope: !335)
!342 = !DILocation(line: 62, column: 21, scope: !335)
!343 = !DILocation(line: 62, column: 5, scope: !335)
!344 = !DILocation(line: 63, column: 1, scope: !335)
!345 = distinct !DISubprogram(name: "printHexCharLine", scope: !16, file: !16, line: 65, type: !346, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !54}
!348 = !DILocalVariable(name: "charHex", arg: 1, scope: !345, file: !16, line: 65, type: !54)
!349 = !DILocation(line: 65, column: 29, scope: !345)
!350 = !DILocation(line: 67, column: 22, scope: !345)
!351 = !DILocation(line: 67, column: 5, scope: !345)
!352 = !DILocation(line: 68, column: 1, scope: !345)
!353 = distinct !DISubprogram(name: "printWcharLine", scope: !16, file: !16, line: 70, type: !354, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !275}
!356 = !DILocalVariable(name: "wideChar", arg: 1, scope: !353, file: !16, line: 70, type: !275)
!357 = !DILocation(line: 70, column: 29, scope: !353)
!358 = !DILocalVariable(name: "s", scope: !353, file: !16, line: 74, type: !359)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 64, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 2)
!362 = !DILocation(line: 74, column: 13, scope: !353)
!363 = !DILocation(line: 75, column: 16, scope: !353)
!364 = !DILocation(line: 75, column: 9, scope: !353)
!365 = !DILocation(line: 75, column: 14, scope: !353)
!366 = !DILocation(line: 76, column: 9, scope: !353)
!367 = !DILocation(line: 76, column: 14, scope: !353)
!368 = !DILocation(line: 77, column: 21, scope: !353)
!369 = !DILocation(line: 77, column: 5, scope: !353)
!370 = !DILocation(line: 78, column: 1, scope: !353)
!371 = distinct !DISubprogram(name: "printUnsignedLine", scope: !16, file: !16, line: 80, type: !372, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !20}
!374 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !371, file: !16, line: 80, type: !20)
!375 = !DILocation(line: 80, column: 33, scope: !371)
!376 = !DILocation(line: 82, column: 20, scope: !371)
!377 = !DILocation(line: 82, column: 5, scope: !371)
!378 = !DILocation(line: 83, column: 1, scope: !371)
!379 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !16, file: !16, line: 85, type: !380, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !36}
!382 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !379, file: !16, line: 85, type: !36)
!383 = !DILocation(line: 85, column: 45, scope: !379)
!384 = !DILocation(line: 87, column: 22, scope: !379)
!385 = !DILocation(line: 87, column: 5, scope: !379)
!386 = !DILocation(line: 88, column: 1, scope: !379)
!387 = distinct !DISubprogram(name: "printDoubleLine", scope: !16, file: !16, line: 90, type: !388, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !390}
!390 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!391 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !387, file: !16, line: 90, type: !390)
!392 = !DILocation(line: 90, column: 29, scope: !387)
!393 = !DILocation(line: 92, column: 20, scope: !387)
!394 = !DILocation(line: 92, column: 5, scope: !387)
!395 = !DILocation(line: 93, column: 1, scope: !387)
!396 = distinct !DISubprogram(name: "printStructLine", scope: !16, file: !16, line: 95, type: !397, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !401, line: 100, baseType: !402)
!401 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_592/source_code")
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !401, line: 96, size: 64, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !402, file: !401, line: 98, baseType: !10, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !402, file: !401, line: 99, baseType: !10, size: 32, offset: 32)
!406 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !396, file: !16, line: 95, type: !399)
!407 = !DILocation(line: 95, column: 40, scope: !396)
!408 = !DILocation(line: 97, column: 26, scope: !396)
!409 = !DILocation(line: 97, column: 47, scope: !396)
!410 = !DILocation(line: 97, column: 55, scope: !396)
!411 = !DILocation(line: 97, column: 76, scope: !396)
!412 = !DILocation(line: 97, column: 5, scope: !396)
!413 = !DILocation(line: 98, column: 1, scope: !396)
!414 = distinct !DISubprogram(name: "printBytesLine", scope: !16, file: !16, line: 100, type: !415, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417, !338}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!418 = !DILocalVariable(name: "bytes", arg: 1, scope: !414, file: !16, line: 100, type: !417)
!419 = !DILocation(line: 100, column: 38, scope: !414)
!420 = !DILocalVariable(name: "numBytes", arg: 2, scope: !414, file: !16, line: 100, type: !338)
!421 = !DILocation(line: 100, column: 52, scope: !414)
!422 = !DILocalVariable(name: "i", scope: !414, file: !16, line: 102, type: !338)
!423 = !DILocation(line: 102, column: 12, scope: !414)
!424 = !DILocation(line: 103, column: 12, scope: !425)
!425 = distinct !DILexicalBlock(scope: !414, file: !16, line: 103, column: 5)
!426 = !DILocation(line: 103, column: 10, scope: !425)
!427 = !DILocation(line: 103, column: 17, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !16, line: 103, column: 5)
!429 = !DILocation(line: 103, column: 21, scope: !428)
!430 = !DILocation(line: 103, column: 19, scope: !428)
!431 = !DILocation(line: 103, column: 5, scope: !425)
!432 = !DILocation(line: 105, column: 24, scope: !433)
!433 = distinct !DILexicalBlock(scope: !428, file: !16, line: 104, column: 5)
!434 = !DILocation(line: 105, column: 30, scope: !433)
!435 = !DILocation(line: 105, column: 9, scope: !433)
!436 = !DILocation(line: 106, column: 5, scope: !433)
!437 = !DILocation(line: 103, column: 31, scope: !428)
!438 = !DILocation(line: 103, column: 5, scope: !428)
!439 = distinct !{!439, !431, !440, !97}
!440 = !DILocation(line: 106, column: 5, scope: !425)
!441 = !DILocation(line: 107, column: 5, scope: !414)
!442 = !DILocation(line: 108, column: 1, scope: !414)
!443 = distinct !DISubprogram(name: "decodeHexChars", scope: !16, file: !16, line: 113, type: !444, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!444 = !DISubroutineType(types: !445)
!445 = !{!338, !417, !338, !53}
!446 = !DILocalVariable(name: "bytes", arg: 1, scope: !443, file: !16, line: 113, type: !417)
!447 = !DILocation(line: 113, column: 39, scope: !443)
!448 = !DILocalVariable(name: "numBytes", arg: 2, scope: !443, file: !16, line: 113, type: !338)
!449 = !DILocation(line: 113, column: 53, scope: !443)
!450 = !DILocalVariable(name: "hex", arg: 3, scope: !443, file: !16, line: 113, type: !53)
!451 = !DILocation(line: 113, column: 71, scope: !443)
!452 = !DILocalVariable(name: "numWritten", scope: !443, file: !16, line: 115, type: !338)
!453 = !DILocation(line: 115, column: 12, scope: !443)
!454 = !DILocation(line: 121, column: 5, scope: !443)
!455 = !DILocation(line: 121, column: 12, scope: !443)
!456 = !DILocation(line: 121, column: 25, scope: !443)
!457 = !DILocation(line: 121, column: 23, scope: !443)
!458 = !DILocation(line: 121, column: 34, scope: !443)
!459 = !DILocation(line: 121, column: 37, scope: !443)
!460 = !DILocation(line: 121, column: 67, scope: !443)
!461 = !DILocation(line: 121, column: 70, scope: !443)
!462 = !DILocation(line: 0, scope: !443)
!463 = !DILocalVariable(name: "byte", scope: !464, file: !16, line: 123, type: !10)
!464 = distinct !DILexicalBlock(scope: !443, file: !16, line: 122, column: 5)
!465 = !DILocation(line: 123, column: 13, scope: !464)
!466 = !DILocation(line: 124, column: 17, scope: !464)
!467 = !DILocation(line: 124, column: 25, scope: !464)
!468 = !DILocation(line: 124, column: 23, scope: !464)
!469 = !DILocation(line: 124, column: 9, scope: !464)
!470 = !DILocation(line: 125, column: 45, scope: !464)
!471 = !DILocation(line: 125, column: 29, scope: !464)
!472 = !DILocation(line: 125, column: 9, scope: !464)
!473 = !DILocation(line: 125, column: 15, scope: !464)
!474 = !DILocation(line: 125, column: 27, scope: !464)
!475 = !DILocation(line: 126, column: 9, scope: !464)
!476 = distinct !{!476, !454, !477, !97}
!477 = !DILocation(line: 127, column: 5, scope: !443)
!478 = !DILocation(line: 129, column: 12, scope: !443)
!479 = !DILocation(line: 129, column: 5, scope: !443)
!480 = distinct !DISubprogram(name: "decodeHexWChars", scope: !16, file: !16, line: 135, type: !481, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!481 = !DISubroutineType(types: !482)
!482 = !{!338, !417, !338, !274}
!483 = !DILocalVariable(name: "bytes", arg: 1, scope: !480, file: !16, line: 135, type: !417)
!484 = !DILocation(line: 135, column: 41, scope: !480)
!485 = !DILocalVariable(name: "numBytes", arg: 2, scope: !480, file: !16, line: 135, type: !338)
!486 = !DILocation(line: 135, column: 55, scope: !480)
!487 = !DILocalVariable(name: "hex", arg: 3, scope: !480, file: !16, line: 135, type: !274)
!488 = !DILocation(line: 135, column: 76, scope: !480)
!489 = !DILocalVariable(name: "numWritten", scope: !480, file: !16, line: 137, type: !338)
!490 = !DILocation(line: 137, column: 12, scope: !480)
!491 = !DILocation(line: 143, column: 5, scope: !480)
!492 = !DILocation(line: 143, column: 12, scope: !480)
!493 = !DILocation(line: 143, column: 25, scope: !480)
!494 = !DILocation(line: 143, column: 23, scope: !480)
!495 = !DILocation(line: 143, column: 34, scope: !480)
!496 = !DILocation(line: 143, column: 47, scope: !480)
!497 = !DILocation(line: 143, column: 55, scope: !480)
!498 = !DILocation(line: 143, column: 53, scope: !480)
!499 = !DILocation(line: 143, column: 37, scope: !480)
!500 = !DILocation(line: 143, column: 68, scope: !480)
!501 = !DILocation(line: 143, column: 81, scope: !480)
!502 = !DILocation(line: 143, column: 89, scope: !480)
!503 = !DILocation(line: 143, column: 87, scope: !480)
!504 = !DILocation(line: 143, column: 100, scope: !480)
!505 = !DILocation(line: 143, column: 71, scope: !480)
!506 = !DILocation(line: 0, scope: !480)
!507 = !DILocalVariable(name: "byte", scope: !508, file: !16, line: 145, type: !10)
!508 = distinct !DILexicalBlock(scope: !480, file: !16, line: 144, column: 5)
!509 = !DILocation(line: 145, column: 13, scope: !508)
!510 = !DILocation(line: 146, column: 18, scope: !508)
!511 = !DILocation(line: 146, column: 26, scope: !508)
!512 = !DILocation(line: 146, column: 24, scope: !508)
!513 = !DILocation(line: 146, column: 9, scope: !508)
!514 = !DILocation(line: 147, column: 45, scope: !508)
!515 = !DILocation(line: 147, column: 29, scope: !508)
!516 = !DILocation(line: 147, column: 9, scope: !508)
!517 = !DILocation(line: 147, column: 15, scope: !508)
!518 = !DILocation(line: 147, column: 27, scope: !508)
!519 = !DILocation(line: 148, column: 9, scope: !508)
!520 = distinct !{!520, !491, !521, !97}
!521 = !DILocation(line: 149, column: 5, scope: !480)
!522 = !DILocation(line: 151, column: 12, scope: !480)
!523 = !DILocation(line: 151, column: 5, scope: !480)
!524 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !16, file: !16, line: 156, type: !525, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!525 = !DISubroutineType(types: !526)
!526 = !{!10}
!527 = !DILocation(line: 158, column: 5, scope: !524)
!528 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !16, file: !16, line: 161, type: !525, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!529 = !DILocation(line: 163, column: 5, scope: !528)
!530 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !16, file: !16, line: 166, type: !525, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!531 = !DILocation(line: 168, column: 13, scope: !530)
!532 = !DILocation(line: 168, column: 20, scope: !530)
!533 = !DILocation(line: 168, column: 5, scope: !530)
!534 = distinct !DISubprogram(name: "good1", scope: !16, file: !16, line: 187, type: !60, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!535 = !DILocation(line: 187, column: 16, scope: !534)
!536 = distinct !DISubprogram(name: "good2", scope: !16, file: !16, line: 188, type: !60, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!537 = !DILocation(line: 188, column: 16, scope: !536)
!538 = distinct !DISubprogram(name: "good3", scope: !16, file: !16, line: 189, type: !60, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!539 = !DILocation(line: 189, column: 16, scope: !538)
!540 = distinct !DISubprogram(name: "good4", scope: !16, file: !16, line: 190, type: !60, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!541 = !DILocation(line: 190, column: 16, scope: !540)
!542 = distinct !DISubprogram(name: "good5", scope: !16, file: !16, line: 191, type: !60, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!543 = !DILocation(line: 191, column: 16, scope: !542)
!544 = distinct !DISubprogram(name: "good6", scope: !16, file: !16, line: 192, type: !60, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!545 = !DILocation(line: 192, column: 16, scope: !544)
!546 = distinct !DISubprogram(name: "good7", scope: !16, file: !16, line: 193, type: !60, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!547 = !DILocation(line: 193, column: 16, scope: !546)
!548 = distinct !DISubprogram(name: "good8", scope: !16, file: !16, line: 194, type: !60, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!549 = !DILocation(line: 194, column: 16, scope: !548)
!550 = distinct !DISubprogram(name: "good9", scope: !16, file: !16, line: 195, type: !60, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!551 = !DILocation(line: 195, column: 16, scope: !550)
!552 = distinct !DISubprogram(name: "bad1", scope: !16, file: !16, line: 198, type: !60, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!553 = !DILocation(line: 198, column: 15, scope: !552)
!554 = distinct !DISubprogram(name: "bad2", scope: !16, file: !16, line: 199, type: !60, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!555 = !DILocation(line: 199, column: 15, scope: !554)
!556 = distinct !DISubprogram(name: "bad3", scope: !16, file: !16, line: 200, type: !60, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!557 = !DILocation(line: 200, column: 15, scope: !556)
!558 = distinct !DISubprogram(name: "bad4", scope: !16, file: !16, line: 201, type: !60, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!559 = !DILocation(line: 201, column: 15, scope: !558)
!560 = distinct !DISubprogram(name: "bad5", scope: !16, file: !16, line: 202, type: !60, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!561 = !DILocation(line: 202, column: 15, scope: !560)
!562 = distinct !DISubprogram(name: "bad6", scope: !16, file: !16, line: 203, type: !60, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!563 = !DILocation(line: 203, column: 15, scope: !562)
!564 = distinct !DISubprogram(name: "bad7", scope: !16, file: !16, line: 204, type: !60, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!565 = !DILocation(line: 204, column: 15, scope: !564)
!566 = distinct !DISubprogram(name: "bad8", scope: !16, file: !16, line: 205, type: !60, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!567 = !DILocation(line: 205, column: 15, scope: !566)
!568 = distinct !DISubprogram(name: "bad9", scope: !16, file: !16, line: 206, type: !60, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !4)
!569 = !DILocation(line: 206, column: 15, scope: !568)
