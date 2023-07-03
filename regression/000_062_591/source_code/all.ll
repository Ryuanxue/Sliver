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
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
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
define dso_local void @badSink(i32 %data) #0 !dbg !52 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %i, metadata !57, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !64
  %1 = load i32, i32* %data.addr, align 4, !dbg !65
  %cmp = icmp sge i32 %1, 0, !dbg !67
  br i1 %cmp, label %if.then, label %if.else, !dbg !68

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !69
  %idxprom = sext i32 %2 to i64, !dbg !71
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !71
  store i32 1, i32* %arrayidx, align 4, !dbg !72
  store i32 0, i32* %i, align 4, !dbg !73
  br label %for.cond, !dbg !75

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !76
  %cmp1 = icmp slt i32 %3, 10, !dbg !78
  br i1 %cmp1, label %for.body, label %for.end, !dbg !79

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !80
  %idxprom2 = sext i32 %4 to i64, !dbg !82
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !82
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !82
  call void @printIntLine(i32 %5), !dbg !83
  br label %for.inc, !dbg !84

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !85
  %inc = add nsw i32 %6, 1, !dbg !85
  store i32 %inc, i32* %i, align 4, !dbg !85
  br label %for.cond, !dbg !86, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !90

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !91
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44_bad() #0 !dbg !94 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !99, metadata !DIExpression()), !dbg !101
  store void (i32)* @badSink, void (i32)** %funcPtr, align 8, !dbg !101
  store i32 -1, i32* %data, align 4, !dbg !102
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !103, metadata !DIExpression()), !dbg !108
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !108
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !108
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !109
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !111
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !112
  %cmp = icmp ne i8* %call, null, !dbg !113
  br i1 %cmp, label %if.then, label %if.else, !dbg !114

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !115
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !117
  store i32 %call2, i32* %data, align 4, !dbg !118
  br label %if.end, !dbg !119

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !120
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !122
  %3 = load i32, i32* %data, align 4, !dbg !123
  call void %2(i32 %3), !dbg !122
  ret void, !dbg !124
}

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i32 %data) #0 !dbg !125 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %i, metadata !128, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !132
  %1 = load i32, i32* %data.addr, align 4, !dbg !133
  %cmp = icmp sge i32 %1, 0, !dbg !135
  br i1 %cmp, label %if.then, label %if.else, !dbg !136

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !137
  %idxprom = sext i32 %2 to i64, !dbg !139
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !139
  store i32 1, i32* %arrayidx, align 4, !dbg !140
  store i32 0, i32* %i, align 4, !dbg !141
  br label %for.cond, !dbg !143

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !144
  %cmp1 = icmp slt i32 %3, 10, !dbg !146
  br i1 %cmp1, label %for.body, label %for.end, !dbg !147

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !148
  %idxprom2 = sext i32 %4 to i64, !dbg !150
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !150
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !150
  call void @printIntLine(i32 %5), !dbg !151
  br label %for.inc, !dbg !152

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !153
  %inc = add nsw i32 %6, 1, !dbg !153
  store i32 %inc, i32* %i, align 4, !dbg !153
  br label %for.cond, !dbg !154, !llvm.loop !155

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !157

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !158
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !160
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !161 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  call void @llvm.dbg.declare(metadata i32* %data, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !164, metadata !DIExpression()), !dbg !165
  store void (i32)* @goodG2BSink, void (i32)** %funcPtr, align 8, !dbg !165
  store i32 -1, i32* %data, align 4, !dbg !166
  store i32 7, i32* %data, align 4, !dbg !167
  %0 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !168
  %1 = load i32, i32* %data, align 4, !dbg !169
  call void %0(i32 %1), !dbg !168
  ret void, !dbg !170
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i32 %data) #0 !dbg !171 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %i, metadata !174, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !177, metadata !DIExpression()), !dbg !178
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !178
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !178
  %1 = load i32, i32* %data.addr, align 4, !dbg !179
  %cmp = icmp sge i32 %1, 0, !dbg !181
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !182

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !183
  %cmp1 = icmp slt i32 %2, 10, !dbg !184
  br i1 %cmp1, label %if.then, label %if.else, !dbg !185

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !186
  %idxprom = sext i32 %3 to i64, !dbg !188
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !188
  store i32 1, i32* %arrayidx, align 4, !dbg !189
  store i32 0, i32* %i, align 4, !dbg !190
  br label %for.cond, !dbg !192

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !193
  %cmp2 = icmp slt i32 %4, 10, !dbg !195
  br i1 %cmp2, label %for.body, label %for.end, !dbg !196

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !197
  %idxprom3 = sext i32 %5 to i64, !dbg !199
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !199
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !199
  call void @printIntLine(i32 %6), !dbg !200
  br label %for.inc, !dbg !201

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !202
  %inc = add nsw i32 %7, 1, !dbg !202
  store i32 %inc, i32* %i, align 4, !dbg !202
  br label %for.cond, !dbg !203, !llvm.loop !204

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !206

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !207
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !210 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !213, metadata !DIExpression()), !dbg !214
  store void (i32)* @goodB2GSink, void (i32)** %funcPtr, align 8, !dbg !214
  store i32 -1, i32* %data, align 4, !dbg !215
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !216, metadata !DIExpression()), !dbg !218
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !218
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !218
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !219
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !221
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !222
  %cmp = icmp ne i8* %call, null, !dbg !223
  br i1 %cmp, label %if.then, label %if.else, !dbg !224

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !225
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !227
  store i32 %call2, i32* %data, align 4, !dbg !228
  br label %if.end, !dbg !229

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !230
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !232
  %3 = load i32, i32* %data, align 4, !dbg !233
  call void %2(i32 %3), !dbg !232
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44_good() #0 !dbg !235 {
entry:
  call void @goodG2B(), !dbg !236
  call void @goodB2G(), !dbg !237
  ret void, !dbg !238
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !239 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !242, metadata !DIExpression()), !dbg !243
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !244
  %0 = load i8*, i8** %line.addr, align 8, !dbg !245
  %cmp = icmp ne i8* %0, null, !dbg !247
  br i1 %cmp, label %if.then, label %if.end, !dbg !248

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !249
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !251
  br label %if.end, !dbg !252

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !253
  ret void, !dbg !254
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !255 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = load i8*, i8** %line.addr, align 8, !dbg !258
  %cmp = icmp ne i8* %0, null, !dbg !260
  br i1 %cmp, label %if.then, label %if.end, !dbg !261

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !262
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !264
  br label %if.end, !dbg !265

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !267 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = load i32*, i32** %line.addr, align 8, !dbg !275
  %cmp = icmp ne i32* %0, null, !dbg !277
  br i1 %cmp, label %if.then, label %if.end, !dbg !278

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !279
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !281
  br label %if.end, !dbg !282

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !283
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !284 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !287
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !288
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !290 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !296
  %conv = sext i16 %0 to i32, !dbg !296
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !299 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !305
  %conv = fpext float %0 to double, !dbg !305
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !306
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !308 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !314
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !317 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !326
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !327
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !329 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !334, metadata !DIExpression()), !dbg !335
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !336
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !337
  ret void, !dbg !338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !339 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !344
  %conv = sext i8 %0 to i32, !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !347 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !352, metadata !DIExpression()), !dbg !356
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !357
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !358
  store i32 %0, i32* %arrayidx, align 4, !dbg !359
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !360
  store i32 0, i32* %arrayidx1, align 4, !dbg !361
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !362
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !363
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !365 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !370
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !371
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !373 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !378
  %conv = zext i8 %0 to i32, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !381 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !390 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !402
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !403
  %1 = load i32, i32* %intOne, align 4, !dbg !403
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !404
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !405
  %3 = load i32, i32* %intTwo, align 4, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !408 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !412, metadata !DIExpression()), !dbg !413
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i64* %i, metadata !416, metadata !DIExpression()), !dbg !417
  store i64 0, i64* %i, align 8, !dbg !418
  br label %for.cond, !dbg !420

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !421
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !423
  %cmp = icmp ult i64 %0, %1, !dbg !424
  br i1 %cmp, label %for.body, label %for.end, !dbg !425

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !426
  %3 = load i64, i64* %i, align 8, !dbg !428
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !426
  %4 = load i8, i8* %arrayidx, align 1, !dbg !426
  %conv = zext i8 %4 to i32, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !429
  br label %for.inc, !dbg !430

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !431
  %inc = add i64 %5, 1, !dbg !431
  store i64 %inc, i64* %i, align 8, !dbg !431
  br label %for.cond, !dbg !432, !llvm.loop !433

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !435
  ret void, !dbg !436
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !437 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !440, metadata !DIExpression()), !dbg !441
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !442, metadata !DIExpression()), !dbg !443
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !444, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !446, metadata !DIExpression()), !dbg !447
  store i64 0, i64* %numWritten, align 8, !dbg !447
  br label %while.cond, !dbg !448

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !449
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !450
  %cmp = icmp ult i64 %0, %1, !dbg !451
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !452

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !453
  %2 = load i16*, i16** %call, align 8, !dbg !453
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !453
  %4 = load i64, i64* %numWritten, align 8, !dbg !453
  %mul = mul i64 2, %4, !dbg !453
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !453
  %5 = load i8, i8* %arrayidx, align 1, !dbg !453
  %conv = sext i8 %5 to i32, !dbg !453
  %idxprom = sext i32 %conv to i64, !dbg !453
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !453
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !453
  %conv2 = zext i16 %6 to i32, !dbg !453
  %and = and i32 %conv2, 4096, !dbg !453
  %tobool = icmp ne i32 %and, 0, !dbg !453
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !454

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !455
  %7 = load i16*, i16** %call3, align 8, !dbg !455
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !455
  %9 = load i64, i64* %numWritten, align 8, !dbg !455
  %mul4 = mul i64 2, %9, !dbg !455
  %add = add i64 %mul4, 1, !dbg !455
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !455
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !455
  %conv6 = sext i8 %10 to i32, !dbg !455
  %idxprom7 = sext i32 %conv6 to i64, !dbg !455
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !455
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !455
  %conv9 = zext i16 %11 to i32, !dbg !455
  %and10 = and i32 %conv9, 4096, !dbg !455
  %tobool11 = icmp ne i32 %and10, 0, !dbg !454
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !456
  br i1 %12, label %while.body, label %while.end, !dbg !448

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !457, metadata !DIExpression()), !dbg !459
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !460
  %14 = load i64, i64* %numWritten, align 8, !dbg !461
  %mul12 = mul i64 2, %14, !dbg !462
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !460
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !463
  %15 = load i32, i32* %byte, align 4, !dbg !464
  %conv15 = trunc i32 %15 to i8, !dbg !465
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !466
  %17 = load i64, i64* %numWritten, align 8, !dbg !467
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !466
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !468
  %18 = load i64, i64* %numWritten, align 8, !dbg !469
  %inc = add i64 %18, 1, !dbg !469
  store i64 %inc, i64* %numWritten, align 8, !dbg !469
  br label %while.cond, !dbg !448, !llvm.loop !470

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !472
  ret i64 %19, !dbg !473
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !474 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !477, metadata !DIExpression()), !dbg !478
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !479, metadata !DIExpression()), !dbg !480
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !481, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !483, metadata !DIExpression()), !dbg !484
  store i64 0, i64* %numWritten, align 8, !dbg !484
  br label %while.cond, !dbg !485

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !486
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !487
  %cmp = icmp ult i64 %0, %1, !dbg !488
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !489

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !490
  %3 = load i64, i64* %numWritten, align 8, !dbg !491
  %mul = mul i64 2, %3, !dbg !492
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !490
  %4 = load i32, i32* %arrayidx, align 4, !dbg !490
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !493
  %tobool = icmp ne i32 %call, 0, !dbg !493
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !494

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !495
  %6 = load i64, i64* %numWritten, align 8, !dbg !496
  %mul1 = mul i64 2, %6, !dbg !497
  %add = add i64 %mul1, 1, !dbg !498
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !495
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !495
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !499
  %tobool4 = icmp ne i32 %call3, 0, !dbg !494
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !500
  br i1 %8, label %while.body, label %while.end, !dbg !485

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !501, metadata !DIExpression()), !dbg !503
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !504
  %10 = load i64, i64* %numWritten, align 8, !dbg !505
  %mul5 = mul i64 2, %10, !dbg !506
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !504
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !507
  %11 = load i32, i32* %byte, align 4, !dbg !508
  %conv = trunc i32 %11 to i8, !dbg !509
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !510
  %13 = load i64, i64* %numWritten, align 8, !dbg !511
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !510
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !512
  %14 = load i64, i64* %numWritten, align 8, !dbg !513
  %inc = add i64 %14, 1, !dbg !513
  store i64 %inc, i64* %numWritten, align 8, !dbg !513
  br label %while.cond, !dbg !485, !llvm.loop !514

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !516
  ret i64 %15, !dbg !517
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !518 {
entry:
  ret i32 1, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !522 {
entry:
  ret i32 0, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !524 {
entry:
  %call = call i32 @rand() #9, !dbg !525
  %rem = srem i32 %call, 2, !dbg !526
  ret i32 %rem, !dbg !527
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !528 {
entry:
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !530 {
entry:
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !532 {
entry:
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !534 {
entry:
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !536 {
entry:
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !540 {
entry:
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !542 {
entry:
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !544 {
entry:
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !548 {
entry:
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !562 {
entry:
  ret void, !dbg !563
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_591/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_591/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSink", scope: !45, file: !45, line: 25, type: !53, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !23}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 25, type: !23)
!56 = !DILocation(line: 25, column: 18, scope: !52)
!57 = !DILocalVariable(name: "i", scope: !58, file: !45, line: 28, type: !23)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 27, column: 5)
!59 = !DILocation(line: 28, column: 13, scope: !58)
!60 = !DILocalVariable(name: "buffer", scope: !58, file: !45, line: 29, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 10)
!64 = !DILocation(line: 29, column: 13, scope: !58)
!65 = !DILocation(line: 32, column: 13, scope: !66)
!66 = distinct !DILexicalBlock(scope: !58, file: !45, line: 32, column: 13)
!67 = !DILocation(line: 32, column: 18, scope: !66)
!68 = !DILocation(line: 32, column: 13, scope: !58)
!69 = !DILocation(line: 34, column: 20, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !45, line: 33, column: 9)
!71 = !DILocation(line: 34, column: 13, scope: !70)
!72 = !DILocation(line: 34, column: 26, scope: !70)
!73 = !DILocation(line: 36, column: 19, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !45, line: 36, column: 13)
!75 = !DILocation(line: 36, column: 17, scope: !74)
!76 = !DILocation(line: 36, column: 24, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !45, line: 36, column: 13)
!78 = !DILocation(line: 36, column: 26, scope: !77)
!79 = !DILocation(line: 36, column: 13, scope: !74)
!80 = !DILocation(line: 38, column: 37, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !45, line: 37, column: 13)
!82 = !DILocation(line: 38, column: 30, scope: !81)
!83 = !DILocation(line: 38, column: 17, scope: !81)
!84 = !DILocation(line: 39, column: 13, scope: !81)
!85 = !DILocation(line: 36, column: 33, scope: !77)
!86 = !DILocation(line: 36, column: 13, scope: !77)
!87 = distinct !{!87, !79, !88, !89}
!88 = !DILocation(line: 39, column: 13, scope: !74)
!89 = !{!"llvm.loop.mustprogress"}
!90 = !DILocation(line: 40, column: 9, scope: !70)
!91 = !DILocation(line: 43, column: 13, scope: !92)
!92 = distinct !DILexicalBlock(scope: !66, file: !45, line: 42, column: 9)
!93 = !DILocation(line: 46, column: 1, scope: !52)
!94 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44_bad", scope: !45, file: !45, line: 48, type: !95, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DILocalVariable(name: "data", scope: !94, file: !45, line: 50, type: !23)
!98 = !DILocation(line: 50, column: 9, scope: !94)
!99 = !DILocalVariable(name: "funcPtr", scope: !94, file: !45, line: 52, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!101 = !DILocation(line: 52, column: 12, scope: !94)
!102 = !DILocation(line: 54, column: 10, scope: !94)
!103 = !DILocalVariable(name: "inputBuffer", scope: !104, file: !45, line: 56, type: !105)
!104 = distinct !DILexicalBlock(scope: !94, file: !45, line: 55, column: 5)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 14)
!108 = !DILocation(line: 56, column: 14, scope: !104)
!109 = !DILocation(line: 58, column: 19, scope: !110)
!110 = distinct !DILexicalBlock(scope: !104, file: !45, line: 58, column: 13)
!111 = !DILocation(line: 58, column: 49, scope: !110)
!112 = !DILocation(line: 58, column: 13, scope: !110)
!113 = !DILocation(line: 58, column: 56, scope: !110)
!114 = !DILocation(line: 58, column: 13, scope: !104)
!115 = !DILocation(line: 61, column: 25, scope: !116)
!116 = distinct !DILexicalBlock(scope: !110, file: !45, line: 59, column: 9)
!117 = !DILocation(line: 61, column: 20, scope: !116)
!118 = !DILocation(line: 61, column: 18, scope: !116)
!119 = !DILocation(line: 62, column: 9, scope: !116)
!120 = !DILocation(line: 65, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !110, file: !45, line: 64, column: 9)
!122 = !DILocation(line: 69, column: 5, scope: !94)
!123 = !DILocation(line: 69, column: 13, scope: !94)
!124 = !DILocation(line: 70, column: 1, scope: !94)
!125 = distinct !DISubprogram(name: "goodG2BSink", scope: !45, file: !45, line: 77, type: !53, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!126 = !DILocalVariable(name: "data", arg: 1, scope: !125, file: !45, line: 77, type: !23)
!127 = !DILocation(line: 77, column: 22, scope: !125)
!128 = !DILocalVariable(name: "i", scope: !129, file: !45, line: 80, type: !23)
!129 = distinct !DILexicalBlock(scope: !125, file: !45, line: 79, column: 5)
!130 = !DILocation(line: 80, column: 13, scope: !129)
!131 = !DILocalVariable(name: "buffer", scope: !129, file: !45, line: 81, type: !61)
!132 = !DILocation(line: 81, column: 13, scope: !129)
!133 = !DILocation(line: 84, column: 13, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !45, line: 84, column: 13)
!135 = !DILocation(line: 84, column: 18, scope: !134)
!136 = !DILocation(line: 84, column: 13, scope: !129)
!137 = !DILocation(line: 86, column: 20, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !45, line: 85, column: 9)
!139 = !DILocation(line: 86, column: 13, scope: !138)
!140 = !DILocation(line: 86, column: 26, scope: !138)
!141 = !DILocation(line: 88, column: 19, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !45, line: 88, column: 13)
!143 = !DILocation(line: 88, column: 17, scope: !142)
!144 = !DILocation(line: 88, column: 24, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !45, line: 88, column: 13)
!146 = !DILocation(line: 88, column: 26, scope: !145)
!147 = !DILocation(line: 88, column: 13, scope: !142)
!148 = !DILocation(line: 90, column: 37, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !45, line: 89, column: 13)
!150 = !DILocation(line: 90, column: 30, scope: !149)
!151 = !DILocation(line: 90, column: 17, scope: !149)
!152 = !DILocation(line: 91, column: 13, scope: !149)
!153 = !DILocation(line: 88, column: 33, scope: !145)
!154 = !DILocation(line: 88, column: 13, scope: !145)
!155 = distinct !{!155, !147, !156, !89}
!156 = !DILocation(line: 91, column: 13, scope: !142)
!157 = !DILocation(line: 92, column: 9, scope: !138)
!158 = !DILocation(line: 95, column: 13, scope: !159)
!159 = distinct !DILexicalBlock(scope: !134, file: !45, line: 94, column: 9)
!160 = !DILocation(line: 98, column: 1, scope: !125)
!161 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 100, type: !95, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!162 = !DILocalVariable(name: "data", scope: !161, file: !45, line: 102, type: !23)
!163 = !DILocation(line: 102, column: 9, scope: !161)
!164 = !DILocalVariable(name: "funcPtr", scope: !161, file: !45, line: 103, type: !100)
!165 = !DILocation(line: 103, column: 12, scope: !161)
!166 = !DILocation(line: 105, column: 10, scope: !161)
!167 = !DILocation(line: 108, column: 10, scope: !161)
!168 = !DILocation(line: 109, column: 5, scope: !161)
!169 = !DILocation(line: 109, column: 13, scope: !161)
!170 = !DILocation(line: 110, column: 1, scope: !161)
!171 = distinct !DISubprogram(name: "goodB2GSink", scope: !45, file: !45, line: 113, type: !53, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!172 = !DILocalVariable(name: "data", arg: 1, scope: !171, file: !45, line: 113, type: !23)
!173 = !DILocation(line: 113, column: 22, scope: !171)
!174 = !DILocalVariable(name: "i", scope: !175, file: !45, line: 116, type: !23)
!175 = distinct !DILexicalBlock(scope: !171, file: !45, line: 115, column: 5)
!176 = !DILocation(line: 116, column: 13, scope: !175)
!177 = !DILocalVariable(name: "buffer", scope: !175, file: !45, line: 117, type: !61)
!178 = !DILocation(line: 117, column: 13, scope: !175)
!179 = !DILocation(line: 119, column: 13, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !45, line: 119, column: 13)
!181 = !DILocation(line: 119, column: 18, scope: !180)
!182 = !DILocation(line: 119, column: 23, scope: !180)
!183 = !DILocation(line: 119, column: 26, scope: !180)
!184 = !DILocation(line: 119, column: 31, scope: !180)
!185 = !DILocation(line: 119, column: 13, scope: !175)
!186 = !DILocation(line: 121, column: 20, scope: !187)
!187 = distinct !DILexicalBlock(scope: !180, file: !45, line: 120, column: 9)
!188 = !DILocation(line: 121, column: 13, scope: !187)
!189 = !DILocation(line: 121, column: 26, scope: !187)
!190 = !DILocation(line: 123, column: 19, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !45, line: 123, column: 13)
!192 = !DILocation(line: 123, column: 17, scope: !191)
!193 = !DILocation(line: 123, column: 24, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !45, line: 123, column: 13)
!195 = !DILocation(line: 123, column: 26, scope: !194)
!196 = !DILocation(line: 123, column: 13, scope: !191)
!197 = !DILocation(line: 125, column: 37, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !45, line: 124, column: 13)
!199 = !DILocation(line: 125, column: 30, scope: !198)
!200 = !DILocation(line: 125, column: 17, scope: !198)
!201 = !DILocation(line: 126, column: 13, scope: !198)
!202 = !DILocation(line: 123, column: 33, scope: !194)
!203 = !DILocation(line: 123, column: 13, scope: !194)
!204 = distinct !{!204, !196, !205, !89}
!205 = !DILocation(line: 126, column: 13, scope: !191)
!206 = !DILocation(line: 127, column: 9, scope: !187)
!207 = !DILocation(line: 130, column: 13, scope: !208)
!208 = distinct !DILexicalBlock(scope: !180, file: !45, line: 129, column: 9)
!209 = !DILocation(line: 133, column: 1, scope: !171)
!210 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 135, type: !95, scopeLine: 136, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!211 = !DILocalVariable(name: "data", scope: !210, file: !45, line: 137, type: !23)
!212 = !DILocation(line: 137, column: 9, scope: !210)
!213 = !DILocalVariable(name: "funcPtr", scope: !210, file: !45, line: 138, type: !100)
!214 = !DILocation(line: 138, column: 12, scope: !210)
!215 = !DILocation(line: 140, column: 10, scope: !210)
!216 = !DILocalVariable(name: "inputBuffer", scope: !217, file: !45, line: 142, type: !105)
!217 = distinct !DILexicalBlock(scope: !210, file: !45, line: 141, column: 5)
!218 = !DILocation(line: 142, column: 14, scope: !217)
!219 = !DILocation(line: 144, column: 19, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !45, line: 144, column: 13)
!221 = !DILocation(line: 144, column: 49, scope: !220)
!222 = !DILocation(line: 144, column: 13, scope: !220)
!223 = !DILocation(line: 144, column: 56, scope: !220)
!224 = !DILocation(line: 144, column: 13, scope: !217)
!225 = !DILocation(line: 147, column: 25, scope: !226)
!226 = distinct !DILexicalBlock(scope: !220, file: !45, line: 145, column: 9)
!227 = !DILocation(line: 147, column: 20, scope: !226)
!228 = !DILocation(line: 147, column: 18, scope: !226)
!229 = !DILocation(line: 148, column: 9, scope: !226)
!230 = !DILocation(line: 151, column: 13, scope: !231)
!231 = distinct !DILexicalBlock(scope: !220, file: !45, line: 150, column: 9)
!232 = !DILocation(line: 154, column: 5, scope: !210)
!233 = !DILocation(line: 154, column: 13, scope: !210)
!234 = !DILocation(line: 155, column: 1, scope: !210)
!235 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44_good", scope: !45, file: !45, line: 157, type: !95, scopeLine: 158, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!236 = !DILocation(line: 159, column: 5, scope: !235)
!237 = !DILocation(line: 160, column: 5, scope: !235)
!238 = !DILocation(line: 161, column: 1, scope: !235)
!239 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !240, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !42}
!242 = !DILocalVariable(name: "line", arg: 1, scope: !239, file: !3, line: 11, type: !42)
!243 = !DILocation(line: 11, column: 25, scope: !239)
!244 = !DILocation(line: 13, column: 1, scope: !239)
!245 = !DILocation(line: 14, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !239, file: !3, line: 14, column: 8)
!247 = !DILocation(line: 14, column: 13, scope: !246)
!248 = !DILocation(line: 14, column: 8, scope: !239)
!249 = !DILocation(line: 16, column: 24, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 15, column: 5)
!251 = !DILocation(line: 16, column: 9, scope: !250)
!252 = !DILocation(line: 17, column: 5, scope: !250)
!253 = !DILocation(line: 18, column: 5, scope: !239)
!254 = !DILocation(line: 19, column: 1, scope: !239)
!255 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !240, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!256 = !DILocalVariable(name: "line", arg: 1, scope: !255, file: !3, line: 20, type: !42)
!257 = !DILocation(line: 20, column: 29, scope: !255)
!258 = !DILocation(line: 22, column: 8, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !3, line: 22, column: 8)
!260 = !DILocation(line: 22, column: 13, scope: !259)
!261 = !DILocation(line: 22, column: 8, scope: !255)
!262 = !DILocation(line: 24, column: 24, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !3, line: 23, column: 5)
!264 = !DILocation(line: 24, column: 9, scope: !263)
!265 = !DILocation(line: 25, column: 5, scope: !263)
!266 = !DILocation(line: 26, column: 1, scope: !255)
!267 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !268, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !272, line: 74, baseType: !23)
!272 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!273 = !DILocalVariable(name: "line", arg: 1, scope: !267, file: !3, line: 27, type: !270)
!274 = !DILocation(line: 27, column: 29, scope: !267)
!275 = !DILocation(line: 29, column: 8, scope: !276)
!276 = distinct !DILexicalBlock(scope: !267, file: !3, line: 29, column: 8)
!277 = !DILocation(line: 29, column: 13, scope: !276)
!278 = !DILocation(line: 29, column: 8, scope: !267)
!279 = !DILocation(line: 31, column: 27, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !3, line: 30, column: 5)
!281 = !DILocation(line: 31, column: 9, scope: !280)
!282 = !DILocation(line: 32, column: 5, scope: !280)
!283 = !DILocation(line: 33, column: 1, scope: !267)
!284 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !53, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!285 = !DILocalVariable(name: "intNumber", arg: 1, scope: !284, file: !3, line: 35, type: !23)
!286 = !DILocation(line: 35, column: 24, scope: !284)
!287 = !DILocation(line: 37, column: 20, scope: !284)
!288 = !DILocation(line: 37, column: 5, scope: !284)
!289 = !DILocation(line: 38, column: 1, scope: !284)
!290 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !291, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293}
!293 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!294 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !290, file: !3, line: 40, type: !293)
!295 = !DILocation(line: 40, column: 28, scope: !290)
!296 = !DILocation(line: 42, column: 21, scope: !290)
!297 = !DILocation(line: 42, column: 5, scope: !290)
!298 = !DILocation(line: 43, column: 1, scope: !290)
!299 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !300, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !302}
!302 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!303 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !299, file: !3, line: 45, type: !302)
!304 = !DILocation(line: 45, column: 28, scope: !299)
!305 = !DILocation(line: 47, column: 20, scope: !299)
!306 = !DILocation(line: 47, column: 5, scope: !299)
!307 = !DILocation(line: 48, column: 1, scope: !299)
!308 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !309, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !311}
!311 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!312 = !DILocalVariable(name: "longNumber", arg: 1, scope: !308, file: !3, line: 50, type: !311)
!313 = !DILocation(line: 50, column: 26, scope: !308)
!314 = !DILocation(line: 52, column: 21, scope: !308)
!315 = !DILocation(line: 52, column: 5, scope: !308)
!316 = !DILocation(line: 53, column: 1, scope: !308)
!317 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !318, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !321, line: 27, baseType: !322)
!321 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !323, line: 44, baseType: !311)
!323 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!324 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !317, file: !3, line: 55, type: !320)
!325 = !DILocation(line: 55, column: 33, scope: !317)
!326 = !DILocation(line: 57, column: 29, scope: !317)
!327 = !DILocation(line: 57, column: 5, scope: !317)
!328 = !DILocation(line: 58, column: 1, scope: !317)
!329 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !330, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !332}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !272, line: 46, baseType: !333)
!333 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!334 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !329, file: !3, line: 60, type: !332)
!335 = !DILocation(line: 60, column: 29, scope: !329)
!336 = !DILocation(line: 62, column: 21, scope: !329)
!337 = !DILocation(line: 62, column: 5, scope: !329)
!338 = !DILocation(line: 63, column: 1, scope: !329)
!339 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !340, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !43}
!342 = !DILocalVariable(name: "charHex", arg: 1, scope: !339, file: !3, line: 65, type: !43)
!343 = !DILocation(line: 65, column: 29, scope: !339)
!344 = !DILocation(line: 67, column: 22, scope: !339)
!345 = !DILocation(line: 67, column: 5, scope: !339)
!346 = !DILocation(line: 68, column: 1, scope: !339)
!347 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !348, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !271}
!350 = !DILocalVariable(name: "wideChar", arg: 1, scope: !347, file: !3, line: 70, type: !271)
!351 = !DILocation(line: 70, column: 29, scope: !347)
!352 = !DILocalVariable(name: "s", scope: !347, file: !3, line: 74, type: !353)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 64, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 2)
!356 = !DILocation(line: 74, column: 13, scope: !347)
!357 = !DILocation(line: 75, column: 16, scope: !347)
!358 = !DILocation(line: 75, column: 9, scope: !347)
!359 = !DILocation(line: 75, column: 14, scope: !347)
!360 = !DILocation(line: 76, column: 9, scope: !347)
!361 = !DILocation(line: 76, column: 14, scope: !347)
!362 = !DILocation(line: 77, column: 21, scope: !347)
!363 = !DILocation(line: 77, column: 5, scope: !347)
!364 = !DILocation(line: 78, column: 1, scope: !347)
!365 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !366, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !7}
!368 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !365, file: !3, line: 80, type: !7)
!369 = !DILocation(line: 80, column: 33, scope: !365)
!370 = !DILocation(line: 82, column: 20, scope: !365)
!371 = !DILocation(line: 82, column: 5, scope: !365)
!372 = !DILocation(line: 83, column: 1, scope: !365)
!373 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !374, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !25}
!376 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !373, file: !3, line: 85, type: !25)
!377 = !DILocation(line: 85, column: 45, scope: !373)
!378 = !DILocation(line: 87, column: 22, scope: !373)
!379 = !DILocation(line: 87, column: 5, scope: !373)
!380 = !DILocation(line: 88, column: 1, scope: !373)
!381 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !382, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384}
!384 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!385 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !381, file: !3, line: 90, type: !384)
!386 = !DILocation(line: 90, column: 29, scope: !381)
!387 = !DILocation(line: 92, column: 20, scope: !381)
!388 = !DILocation(line: 92, column: 5, scope: !381)
!389 = !DILocation(line: 93, column: 1, scope: !381)
!390 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !391, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !395, line: 100, baseType: !396)
!395 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_591/source_code")
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !395, line: 96, size: 64, elements: !397)
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !396, file: !395, line: 98, baseType: !23, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !396, file: !395, line: 99, baseType: !23, size: 32, offset: 32)
!400 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !390, file: !3, line: 95, type: !393)
!401 = !DILocation(line: 95, column: 40, scope: !390)
!402 = !DILocation(line: 97, column: 26, scope: !390)
!403 = !DILocation(line: 97, column: 47, scope: !390)
!404 = !DILocation(line: 97, column: 55, scope: !390)
!405 = !DILocation(line: 97, column: 76, scope: !390)
!406 = !DILocation(line: 97, column: 5, scope: !390)
!407 = !DILocation(line: 98, column: 1, scope: !390)
!408 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !409, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411, !332}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!412 = !DILocalVariable(name: "bytes", arg: 1, scope: !408, file: !3, line: 100, type: !411)
!413 = !DILocation(line: 100, column: 38, scope: !408)
!414 = !DILocalVariable(name: "numBytes", arg: 2, scope: !408, file: !3, line: 100, type: !332)
!415 = !DILocation(line: 100, column: 52, scope: !408)
!416 = !DILocalVariable(name: "i", scope: !408, file: !3, line: 102, type: !332)
!417 = !DILocation(line: 102, column: 12, scope: !408)
!418 = !DILocation(line: 103, column: 12, scope: !419)
!419 = distinct !DILexicalBlock(scope: !408, file: !3, line: 103, column: 5)
!420 = !DILocation(line: 103, column: 10, scope: !419)
!421 = !DILocation(line: 103, column: 17, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !3, line: 103, column: 5)
!423 = !DILocation(line: 103, column: 21, scope: !422)
!424 = !DILocation(line: 103, column: 19, scope: !422)
!425 = !DILocation(line: 103, column: 5, scope: !419)
!426 = !DILocation(line: 105, column: 24, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !3, line: 104, column: 5)
!428 = !DILocation(line: 105, column: 30, scope: !427)
!429 = !DILocation(line: 105, column: 9, scope: !427)
!430 = !DILocation(line: 106, column: 5, scope: !427)
!431 = !DILocation(line: 103, column: 31, scope: !422)
!432 = !DILocation(line: 103, column: 5, scope: !422)
!433 = distinct !{!433, !425, !434, !89}
!434 = !DILocation(line: 106, column: 5, scope: !419)
!435 = !DILocation(line: 107, column: 5, scope: !408)
!436 = !DILocation(line: 108, column: 1, scope: !408)
!437 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !438, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!438 = !DISubroutineType(types: !439)
!439 = !{!332, !411, !332, !42}
!440 = !DILocalVariable(name: "bytes", arg: 1, scope: !437, file: !3, line: 113, type: !411)
!441 = !DILocation(line: 113, column: 39, scope: !437)
!442 = !DILocalVariable(name: "numBytes", arg: 2, scope: !437, file: !3, line: 113, type: !332)
!443 = !DILocation(line: 113, column: 53, scope: !437)
!444 = !DILocalVariable(name: "hex", arg: 3, scope: !437, file: !3, line: 113, type: !42)
!445 = !DILocation(line: 113, column: 71, scope: !437)
!446 = !DILocalVariable(name: "numWritten", scope: !437, file: !3, line: 115, type: !332)
!447 = !DILocation(line: 115, column: 12, scope: !437)
!448 = !DILocation(line: 121, column: 5, scope: !437)
!449 = !DILocation(line: 121, column: 12, scope: !437)
!450 = !DILocation(line: 121, column: 25, scope: !437)
!451 = !DILocation(line: 121, column: 23, scope: !437)
!452 = !DILocation(line: 121, column: 34, scope: !437)
!453 = !DILocation(line: 121, column: 37, scope: !437)
!454 = !DILocation(line: 121, column: 67, scope: !437)
!455 = !DILocation(line: 121, column: 70, scope: !437)
!456 = !DILocation(line: 0, scope: !437)
!457 = !DILocalVariable(name: "byte", scope: !458, file: !3, line: 123, type: !23)
!458 = distinct !DILexicalBlock(scope: !437, file: !3, line: 122, column: 5)
!459 = !DILocation(line: 123, column: 13, scope: !458)
!460 = !DILocation(line: 124, column: 17, scope: !458)
!461 = !DILocation(line: 124, column: 25, scope: !458)
!462 = !DILocation(line: 124, column: 23, scope: !458)
!463 = !DILocation(line: 124, column: 9, scope: !458)
!464 = !DILocation(line: 125, column: 45, scope: !458)
!465 = !DILocation(line: 125, column: 29, scope: !458)
!466 = !DILocation(line: 125, column: 9, scope: !458)
!467 = !DILocation(line: 125, column: 15, scope: !458)
!468 = !DILocation(line: 125, column: 27, scope: !458)
!469 = !DILocation(line: 126, column: 9, scope: !458)
!470 = distinct !{!470, !448, !471, !89}
!471 = !DILocation(line: 127, column: 5, scope: !437)
!472 = !DILocation(line: 129, column: 12, scope: !437)
!473 = !DILocation(line: 129, column: 5, scope: !437)
!474 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !475, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DISubroutineType(types: !476)
!476 = !{!332, !411, !332, !270}
!477 = !DILocalVariable(name: "bytes", arg: 1, scope: !474, file: !3, line: 135, type: !411)
!478 = !DILocation(line: 135, column: 41, scope: !474)
!479 = !DILocalVariable(name: "numBytes", arg: 2, scope: !474, file: !3, line: 135, type: !332)
!480 = !DILocation(line: 135, column: 55, scope: !474)
!481 = !DILocalVariable(name: "hex", arg: 3, scope: !474, file: !3, line: 135, type: !270)
!482 = !DILocation(line: 135, column: 76, scope: !474)
!483 = !DILocalVariable(name: "numWritten", scope: !474, file: !3, line: 137, type: !332)
!484 = !DILocation(line: 137, column: 12, scope: !474)
!485 = !DILocation(line: 143, column: 5, scope: !474)
!486 = !DILocation(line: 143, column: 12, scope: !474)
!487 = !DILocation(line: 143, column: 25, scope: !474)
!488 = !DILocation(line: 143, column: 23, scope: !474)
!489 = !DILocation(line: 143, column: 34, scope: !474)
!490 = !DILocation(line: 143, column: 47, scope: !474)
!491 = !DILocation(line: 143, column: 55, scope: !474)
!492 = !DILocation(line: 143, column: 53, scope: !474)
!493 = !DILocation(line: 143, column: 37, scope: !474)
!494 = !DILocation(line: 143, column: 68, scope: !474)
!495 = !DILocation(line: 143, column: 81, scope: !474)
!496 = !DILocation(line: 143, column: 89, scope: !474)
!497 = !DILocation(line: 143, column: 87, scope: !474)
!498 = !DILocation(line: 143, column: 100, scope: !474)
!499 = !DILocation(line: 143, column: 71, scope: !474)
!500 = !DILocation(line: 0, scope: !474)
!501 = !DILocalVariable(name: "byte", scope: !502, file: !3, line: 145, type: !23)
!502 = distinct !DILexicalBlock(scope: !474, file: !3, line: 144, column: 5)
!503 = !DILocation(line: 145, column: 13, scope: !502)
!504 = !DILocation(line: 146, column: 18, scope: !502)
!505 = !DILocation(line: 146, column: 26, scope: !502)
!506 = !DILocation(line: 146, column: 24, scope: !502)
!507 = !DILocation(line: 146, column: 9, scope: !502)
!508 = !DILocation(line: 147, column: 45, scope: !502)
!509 = !DILocation(line: 147, column: 29, scope: !502)
!510 = !DILocation(line: 147, column: 9, scope: !502)
!511 = !DILocation(line: 147, column: 15, scope: !502)
!512 = !DILocation(line: 147, column: 27, scope: !502)
!513 = !DILocation(line: 148, column: 9, scope: !502)
!514 = distinct !{!514, !485, !515, !89}
!515 = !DILocation(line: 149, column: 5, scope: !474)
!516 = !DILocation(line: 151, column: 12, scope: !474)
!517 = !DILocation(line: 151, column: 5, scope: !474)
!518 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !519, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DISubroutineType(types: !520)
!520 = !{!23}
!521 = !DILocation(line: 158, column: 5, scope: !518)
!522 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !519, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!523 = !DILocation(line: 163, column: 5, scope: !522)
!524 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !519, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!525 = !DILocation(line: 168, column: 13, scope: !524)
!526 = !DILocation(line: 168, column: 20, scope: !524)
!527 = !DILocation(line: 168, column: 5, scope: !524)
!528 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !95, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DILocation(line: 187, column: 16, scope: !528)
!530 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !95, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!531 = !DILocation(line: 188, column: 16, scope: !530)
!532 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !95, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DILocation(line: 189, column: 16, scope: !532)
!534 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !95, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DILocation(line: 190, column: 16, scope: !534)
!536 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !95, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DILocation(line: 191, column: 16, scope: !536)
!538 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !95, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DILocation(line: 192, column: 16, scope: !538)
!540 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !95, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DILocation(line: 193, column: 16, scope: !540)
!542 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !95, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DILocation(line: 194, column: 16, scope: !542)
!544 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !95, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DILocation(line: 195, column: 16, scope: !544)
!546 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !95, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 198, column: 15, scope: !546)
!548 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !95, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DILocation(line: 199, column: 15, scope: !548)
!550 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !95, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 200, column: 15, scope: !550)
!552 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !95, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 201, column: 15, scope: !552)
!554 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !95, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 202, column: 15, scope: !554)
!556 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !95, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 203, column: 15, scope: !556)
!558 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !95, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 204, column: 15, scope: !558)
!560 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !95, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 205, column: 15, scope: !560)
!562 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !95, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DILocation(line: 206, column: 15, scope: !562)
