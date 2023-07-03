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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01_bad() #0 !dbg !52 {
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
define dso_local void @goodG2B() #0 !dbg !114 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 -1, i32* %data, align 4, !dbg !117
  store i32 7, i32* %data, align 4, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %i, metadata !119, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !122, metadata !DIExpression()), !dbg !123
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !123
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !123
  %1 = load i32, i32* %data, align 4, !dbg !124
  %cmp = icmp sge i32 %1, 0, !dbg !126
  br i1 %cmp, label %if.then, label %if.else, !dbg !127

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !128
  %idxprom = sext i32 %2 to i64, !dbg !130
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !130
  store i32 1, i32* %arrayidx, align 4, !dbg !131
  store i32 0, i32* %i, align 4, !dbg !132
  br label %for.cond, !dbg !134

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !135
  %cmp1 = icmp slt i32 %3, 10, !dbg !137
  br i1 %cmp1, label %for.body, label %for.end, !dbg !138

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !139
  %idxprom2 = sext i32 %4 to i64, !dbg !141
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !141
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !141
  call void @printIntLine(i32 %5), !dbg !142
  br label %for.inc, !dbg !143

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !144
  %inc = add nsw i32 %6, 1, !dbg !144
  store i32 %inc, i32* %i, align 4, !dbg !144
  br label %for.cond, !dbg !145, !llvm.loop !146

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !148

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !149
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !151
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !152 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !153, metadata !DIExpression()), !dbg !154
  store i32 -1, i32* %data, align 4, !dbg !155
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !156, metadata !DIExpression()), !dbg !158
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !158
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !158
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !159
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !161
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !162
  %cmp = icmp ne i8* %call, null, !dbg !163
  br i1 %cmp, label %if.then, label %if.else, !dbg !164

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !165
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !167
  store i32 %call2, i32* %data, align 4, !dbg !168
  br label %if.end, !dbg !169

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !170
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !172, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !175, metadata !DIExpression()), !dbg !176
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !176
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !176
  %3 = load i32, i32* %data, align 4, !dbg !177
  %cmp3 = icmp sge i32 %3, 0, !dbg !179
  br i1 %cmp3, label %land.lhs.true, label %if.else9, !dbg !180

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !181
  %cmp4 = icmp slt i32 %4, 10, !dbg !182
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !183

if.then5:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !184
  %idxprom = sext i32 %5 to i64, !dbg !186
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !186
  store i32 1, i32* %arrayidx, align 4, !dbg !187
  store i32 0, i32* %i, align 4, !dbg !188
  br label %for.cond, !dbg !190

for.cond:                                         ; preds = %for.inc, %if.then5
  %6 = load i32, i32* %i, align 4, !dbg !191
  %cmp6 = icmp slt i32 %6, 10, !dbg !193
  br i1 %cmp6, label %for.body, label %for.end, !dbg !194

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !195
  %idxprom7 = sext i32 %7 to i64, !dbg !197
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !197
  %8 = load i32, i32* %arrayidx8, align 4, !dbg !197
  call void @printIntLine(i32 %8), !dbg !198
  br label %for.inc, !dbg !199

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !200
  %inc = add nsw i32 %9, 1, !dbg !200
  store i32 %inc, i32* %i, align 4, !dbg !200
  br label %for.cond, !dbg !201, !llvm.loop !202

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !204

if.else9:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !205
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  ret void, !dbg !207
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01_good() #0 !dbg !208 {
entry:
  call void @goodG2B(), !dbg !209
  call void @goodB2G(), !dbg !210
  ret void, !dbg !211
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !212 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !215, metadata !DIExpression()), !dbg !216
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !217
  %0 = load i8*, i8** %line.addr, align 8, !dbg !218
  %cmp = icmp ne i8* %0, null, !dbg !220
  br i1 %cmp, label %if.then, label %if.end, !dbg !221

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !222
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !224
  br label %if.end, !dbg !225

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !226
  ret void, !dbg !227
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !228 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !229, metadata !DIExpression()), !dbg !230
  %0 = load i8*, i8** %line.addr, align 8, !dbg !231
  %cmp = icmp ne i8* %0, null, !dbg !233
  br i1 %cmp, label %if.then, label %if.end, !dbg !234

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !235
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !237
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !240 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = load i32*, i32** %line.addr, align 8, !dbg !248
  %cmp = icmp ne i32* %0, null, !dbg !250
  br i1 %cmp, label %if.then, label %if.end, !dbg !251

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !252
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !254
  br label %if.end, !dbg !255

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !256
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !257 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !262
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !265 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !271
  %conv = sext i16 %0 to i32, !dbg !271
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !272
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !274 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !280
  %conv = fpext float %0 to double, !dbg !280
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !281
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !283 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !289
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !290
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !292 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !301
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !302
  ret void, !dbg !303
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !304 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !311
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !314 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !319
  %conv = sext i8 %0 to i32, !dbg !319
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !320
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !322 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !325, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !327, metadata !DIExpression()), !dbg !331
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !332
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !333
  store i32 %0, i32* %arrayidx, align 4, !dbg !334
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !335
  store i32 0, i32* %arrayidx1, align 4, !dbg !336
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !337
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !338
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !340 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !343, metadata !DIExpression()), !dbg !344
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !345
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !346
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !348 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !353
  %conv = zext i8 %0 to i32, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !356 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !360, metadata !DIExpression()), !dbg !361
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !362
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !363
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !365 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !377
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !378
  %1 = load i32, i32* %intOne, align 4, !dbg !378
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !379
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !380
  %3 = load i32, i32* %intTwo, align 4, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !381
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !383 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !387, metadata !DIExpression()), !dbg !388
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata i64* %i, metadata !391, metadata !DIExpression()), !dbg !392
  store i64 0, i64* %i, align 8, !dbg !393
  br label %for.cond, !dbg !395

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !396
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !398
  %cmp = icmp ult i64 %0, %1, !dbg !399
  br i1 %cmp, label %for.body, label %for.end, !dbg !400

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !401
  %3 = load i64, i64* %i, align 8, !dbg !403
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !401
  %4 = load i8, i8* %arrayidx, align 1, !dbg !401
  %conv = zext i8 %4 to i32, !dbg !401
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !404
  br label %for.inc, !dbg !405

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !406
  %inc = add i64 %5, 1, !dbg !406
  store i64 %inc, i64* %i, align 8, !dbg !406
  br label %for.cond, !dbg !407, !llvm.loop !408

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !410
  ret void, !dbg !411
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !412 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !415, metadata !DIExpression()), !dbg !416
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !417, metadata !DIExpression()), !dbg !418
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !421, metadata !DIExpression()), !dbg !422
  store i64 0, i64* %numWritten, align 8, !dbg !422
  br label %while.cond, !dbg !423

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !424
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !425
  %cmp = icmp ult i64 %0, %1, !dbg !426
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !427

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !428
  %2 = load i16*, i16** %call, align 8, !dbg !428
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !428
  %4 = load i64, i64* %numWritten, align 8, !dbg !428
  %mul = mul i64 2, %4, !dbg !428
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !428
  %5 = load i8, i8* %arrayidx, align 1, !dbg !428
  %conv = sext i8 %5 to i32, !dbg !428
  %idxprom = sext i32 %conv to i64, !dbg !428
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !428
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !428
  %conv2 = zext i16 %6 to i32, !dbg !428
  %and = and i32 %conv2, 4096, !dbg !428
  %tobool = icmp ne i32 %and, 0, !dbg !428
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !429

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !430
  %7 = load i16*, i16** %call3, align 8, !dbg !430
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !430
  %9 = load i64, i64* %numWritten, align 8, !dbg !430
  %mul4 = mul i64 2, %9, !dbg !430
  %add = add i64 %mul4, 1, !dbg !430
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !430
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !430
  %conv6 = sext i8 %10 to i32, !dbg !430
  %idxprom7 = sext i32 %conv6 to i64, !dbg !430
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !430
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !430
  %conv9 = zext i16 %11 to i32, !dbg !430
  %and10 = and i32 %conv9, 4096, !dbg !430
  %tobool11 = icmp ne i32 %and10, 0, !dbg !429
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !431
  br i1 %12, label %while.body, label %while.end, !dbg !423

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !432, metadata !DIExpression()), !dbg !434
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !435
  %14 = load i64, i64* %numWritten, align 8, !dbg !436
  %mul12 = mul i64 2, %14, !dbg !437
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !435
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !438
  %15 = load i32, i32* %byte, align 4, !dbg !439
  %conv15 = trunc i32 %15 to i8, !dbg !440
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !441
  %17 = load i64, i64* %numWritten, align 8, !dbg !442
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !441
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !443
  %18 = load i64, i64* %numWritten, align 8, !dbg !444
  %inc = add i64 %18, 1, !dbg !444
  store i64 %inc, i64* %numWritten, align 8, !dbg !444
  br label %while.cond, !dbg !423, !llvm.loop !445

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !447
  ret i64 %19, !dbg !448
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !449 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !452, metadata !DIExpression()), !dbg !453
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !454, metadata !DIExpression()), !dbg !455
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !458, metadata !DIExpression()), !dbg !459
  store i64 0, i64* %numWritten, align 8, !dbg !459
  br label %while.cond, !dbg !460

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !461
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !462
  %cmp = icmp ult i64 %0, %1, !dbg !463
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !464

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !465
  %3 = load i64, i64* %numWritten, align 8, !dbg !466
  %mul = mul i64 2, %3, !dbg !467
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !465
  %4 = load i32, i32* %arrayidx, align 4, !dbg !465
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !468
  %tobool = icmp ne i32 %call, 0, !dbg !468
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !469

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !470
  %6 = load i64, i64* %numWritten, align 8, !dbg !471
  %mul1 = mul i64 2, %6, !dbg !472
  %add = add i64 %mul1, 1, !dbg !473
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !470
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !470
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !474
  %tobool4 = icmp ne i32 %call3, 0, !dbg !469
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !475
  br i1 %8, label %while.body, label %while.end, !dbg !460

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !476, metadata !DIExpression()), !dbg !478
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !479
  %10 = load i64, i64* %numWritten, align 8, !dbg !480
  %mul5 = mul i64 2, %10, !dbg !481
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !479
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !482
  %11 = load i32, i32* %byte, align 4, !dbg !483
  %conv = trunc i32 %11 to i8, !dbg !484
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !485
  %13 = load i64, i64* %numWritten, align 8, !dbg !486
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !485
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !487
  %14 = load i64, i64* %numWritten, align 8, !dbg !488
  %inc = add i64 %14, 1, !dbg !488
  store i64 %inc, i64* %numWritten, align 8, !dbg !488
  br label %while.cond, !dbg !460, !llvm.loop !489

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !491
  ret i64 %15, !dbg !492
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !493 {
entry:
  ret i32 1, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !497 {
entry:
  ret i32 0, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !499 {
entry:
  %call = call i32 @rand() #9, !dbg !500
  %rem = srem i32 %call, 2, !dbg !501
  ret i32 %rem, !dbg !502
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !503 {
entry:
  ret void, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !505 {
entry:
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !507 {
entry:
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !509 {
entry:
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !511 {
entry:
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !513 {
entry:
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !515 {
entry:
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !517 {
entry:
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !519 {
entry:
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !521 {
entry:
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !523 {
entry:
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !537 {
entry:
  ret void, !dbg !538
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_564/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_564/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01_bad", scope: !45, file: !45, line: 25, type: !53, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 27, type: !23)
!56 = !DILocation(line: 27, column: 9, scope: !52)
!57 = !DILocation(line: 29, column: 10, scope: !52)
!58 = !DILocalVariable(name: "inputBuffer", scope: !59, file: !45, line: 31, type: !60)
!59 = distinct !DILexicalBlock(scope: !52, file: !45, line: 30, column: 5)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 14)
!63 = !DILocation(line: 31, column: 14, scope: !59)
!64 = !DILocation(line: 33, column: 19, scope: !65)
!65 = distinct !DILexicalBlock(scope: !59, file: !45, line: 33, column: 13)
!66 = !DILocation(line: 33, column: 49, scope: !65)
!67 = !DILocation(line: 33, column: 13, scope: !65)
!68 = !DILocation(line: 33, column: 56, scope: !65)
!69 = !DILocation(line: 33, column: 13, scope: !59)
!70 = !DILocation(line: 36, column: 25, scope: !71)
!71 = distinct !DILexicalBlock(scope: !65, file: !45, line: 34, column: 9)
!72 = !DILocation(line: 36, column: 20, scope: !71)
!73 = !DILocation(line: 36, column: 18, scope: !71)
!74 = !DILocation(line: 37, column: 9, scope: !71)
!75 = !DILocation(line: 40, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !45, line: 39, column: 9)
!77 = !DILocalVariable(name: "i", scope: !78, file: !45, line: 44, type: !23)
!78 = distinct !DILexicalBlock(scope: !52, file: !45, line: 43, column: 5)
!79 = !DILocation(line: 44, column: 13, scope: !78)
!80 = !DILocalVariable(name: "buffer", scope: !78, file: !45, line: 45, type: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 10)
!84 = !DILocation(line: 45, column: 13, scope: !78)
!85 = !DILocation(line: 48, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !78, file: !45, line: 48, column: 13)
!87 = !DILocation(line: 48, column: 18, scope: !86)
!88 = !DILocation(line: 48, column: 13, scope: !78)
!89 = !DILocation(line: 50, column: 20, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !45, line: 49, column: 9)
!91 = !DILocation(line: 50, column: 13, scope: !90)
!92 = !DILocation(line: 50, column: 26, scope: !90)
!93 = !DILocation(line: 52, column: 19, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !45, line: 52, column: 13)
!95 = !DILocation(line: 52, column: 17, scope: !94)
!96 = !DILocation(line: 52, column: 24, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !45, line: 52, column: 13)
!98 = !DILocation(line: 52, column: 26, scope: !97)
!99 = !DILocation(line: 52, column: 13, scope: !94)
!100 = !DILocation(line: 54, column: 37, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !45, line: 53, column: 13)
!102 = !DILocation(line: 54, column: 30, scope: !101)
!103 = !DILocation(line: 54, column: 17, scope: !101)
!104 = !DILocation(line: 55, column: 13, scope: !101)
!105 = !DILocation(line: 52, column: 33, scope: !97)
!106 = !DILocation(line: 52, column: 13, scope: !97)
!107 = distinct !{!107, !99, !108, !109}
!108 = !DILocation(line: 55, column: 13, scope: !94)
!109 = !{!"llvm.loop.mustprogress"}
!110 = !DILocation(line: 56, column: 9, scope: !90)
!111 = !DILocation(line: 59, column: 13, scope: !112)
!112 = distinct !DILexicalBlock(scope: !86, file: !45, line: 58, column: 9)
!113 = !DILocation(line: 62, column: 1, scope: !52)
!114 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 69, type: !53, scopeLine: 70, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!115 = !DILocalVariable(name: "data", scope: !114, file: !45, line: 71, type: !23)
!116 = !DILocation(line: 71, column: 9, scope: !114)
!117 = !DILocation(line: 73, column: 10, scope: !114)
!118 = !DILocation(line: 76, column: 10, scope: !114)
!119 = !DILocalVariable(name: "i", scope: !120, file: !45, line: 78, type: !23)
!120 = distinct !DILexicalBlock(scope: !114, file: !45, line: 77, column: 5)
!121 = !DILocation(line: 78, column: 13, scope: !120)
!122 = !DILocalVariable(name: "buffer", scope: !120, file: !45, line: 79, type: !81)
!123 = !DILocation(line: 79, column: 13, scope: !120)
!124 = !DILocation(line: 82, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !120, file: !45, line: 82, column: 13)
!126 = !DILocation(line: 82, column: 18, scope: !125)
!127 = !DILocation(line: 82, column: 13, scope: !120)
!128 = !DILocation(line: 84, column: 20, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !45, line: 83, column: 9)
!130 = !DILocation(line: 84, column: 13, scope: !129)
!131 = !DILocation(line: 84, column: 26, scope: !129)
!132 = !DILocation(line: 86, column: 19, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !45, line: 86, column: 13)
!134 = !DILocation(line: 86, column: 17, scope: !133)
!135 = !DILocation(line: 86, column: 24, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !45, line: 86, column: 13)
!137 = !DILocation(line: 86, column: 26, scope: !136)
!138 = !DILocation(line: 86, column: 13, scope: !133)
!139 = !DILocation(line: 88, column: 37, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !45, line: 87, column: 13)
!141 = !DILocation(line: 88, column: 30, scope: !140)
!142 = !DILocation(line: 88, column: 17, scope: !140)
!143 = !DILocation(line: 89, column: 13, scope: !140)
!144 = !DILocation(line: 86, column: 33, scope: !136)
!145 = !DILocation(line: 86, column: 13, scope: !136)
!146 = distinct !{!146, !138, !147, !109}
!147 = !DILocation(line: 89, column: 13, scope: !133)
!148 = !DILocation(line: 90, column: 9, scope: !129)
!149 = !DILocation(line: 93, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !125, file: !45, line: 92, column: 9)
!151 = !DILocation(line: 96, column: 1, scope: !114)
!152 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 99, type: !53, scopeLine: 100, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!153 = !DILocalVariable(name: "data", scope: !152, file: !45, line: 101, type: !23)
!154 = !DILocation(line: 101, column: 9, scope: !152)
!155 = !DILocation(line: 103, column: 10, scope: !152)
!156 = !DILocalVariable(name: "inputBuffer", scope: !157, file: !45, line: 105, type: !60)
!157 = distinct !DILexicalBlock(scope: !152, file: !45, line: 104, column: 5)
!158 = !DILocation(line: 105, column: 14, scope: !157)
!159 = !DILocation(line: 107, column: 19, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !45, line: 107, column: 13)
!161 = !DILocation(line: 107, column: 49, scope: !160)
!162 = !DILocation(line: 107, column: 13, scope: !160)
!163 = !DILocation(line: 107, column: 56, scope: !160)
!164 = !DILocation(line: 107, column: 13, scope: !157)
!165 = !DILocation(line: 110, column: 25, scope: !166)
!166 = distinct !DILexicalBlock(scope: !160, file: !45, line: 108, column: 9)
!167 = !DILocation(line: 110, column: 20, scope: !166)
!168 = !DILocation(line: 110, column: 18, scope: !166)
!169 = !DILocation(line: 111, column: 9, scope: !166)
!170 = !DILocation(line: 114, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !160, file: !45, line: 113, column: 9)
!172 = !DILocalVariable(name: "i", scope: !173, file: !45, line: 118, type: !23)
!173 = distinct !DILexicalBlock(scope: !152, file: !45, line: 117, column: 5)
!174 = !DILocation(line: 118, column: 13, scope: !173)
!175 = !DILocalVariable(name: "buffer", scope: !173, file: !45, line: 119, type: !81)
!176 = !DILocation(line: 119, column: 13, scope: !173)
!177 = !DILocation(line: 121, column: 13, scope: !178)
!178 = distinct !DILexicalBlock(scope: !173, file: !45, line: 121, column: 13)
!179 = !DILocation(line: 121, column: 18, scope: !178)
!180 = !DILocation(line: 121, column: 23, scope: !178)
!181 = !DILocation(line: 121, column: 26, scope: !178)
!182 = !DILocation(line: 121, column: 31, scope: !178)
!183 = !DILocation(line: 121, column: 13, scope: !173)
!184 = !DILocation(line: 123, column: 20, scope: !185)
!185 = distinct !DILexicalBlock(scope: !178, file: !45, line: 122, column: 9)
!186 = !DILocation(line: 123, column: 13, scope: !185)
!187 = !DILocation(line: 123, column: 26, scope: !185)
!188 = !DILocation(line: 125, column: 19, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !45, line: 125, column: 13)
!190 = !DILocation(line: 125, column: 17, scope: !189)
!191 = !DILocation(line: 125, column: 24, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !45, line: 125, column: 13)
!193 = !DILocation(line: 125, column: 26, scope: !192)
!194 = !DILocation(line: 125, column: 13, scope: !189)
!195 = !DILocation(line: 127, column: 37, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !45, line: 126, column: 13)
!197 = !DILocation(line: 127, column: 30, scope: !196)
!198 = !DILocation(line: 127, column: 17, scope: !196)
!199 = !DILocation(line: 128, column: 13, scope: !196)
!200 = !DILocation(line: 125, column: 33, scope: !192)
!201 = !DILocation(line: 125, column: 13, scope: !192)
!202 = distinct !{!202, !194, !203, !109}
!203 = !DILocation(line: 128, column: 13, scope: !189)
!204 = !DILocation(line: 129, column: 9, scope: !185)
!205 = !DILocation(line: 132, column: 13, scope: !206)
!206 = distinct !DILexicalBlock(scope: !178, file: !45, line: 131, column: 9)
!207 = !DILocation(line: 135, column: 1, scope: !152)
!208 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01_good", scope: !45, file: !45, line: 137, type: !53, scopeLine: 138, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!209 = !DILocation(line: 139, column: 5, scope: !208)
!210 = !DILocation(line: 140, column: 5, scope: !208)
!211 = !DILocation(line: 141, column: 1, scope: !208)
!212 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !213, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !42}
!215 = !DILocalVariable(name: "line", arg: 1, scope: !212, file: !3, line: 11, type: !42)
!216 = !DILocation(line: 11, column: 25, scope: !212)
!217 = !DILocation(line: 13, column: 1, scope: !212)
!218 = !DILocation(line: 14, column: 8, scope: !219)
!219 = distinct !DILexicalBlock(scope: !212, file: !3, line: 14, column: 8)
!220 = !DILocation(line: 14, column: 13, scope: !219)
!221 = !DILocation(line: 14, column: 8, scope: !212)
!222 = !DILocation(line: 16, column: 24, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 15, column: 5)
!224 = !DILocation(line: 16, column: 9, scope: !223)
!225 = !DILocation(line: 17, column: 5, scope: !223)
!226 = !DILocation(line: 18, column: 5, scope: !212)
!227 = !DILocation(line: 19, column: 1, scope: !212)
!228 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !213, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!229 = !DILocalVariable(name: "line", arg: 1, scope: !228, file: !3, line: 20, type: !42)
!230 = !DILocation(line: 20, column: 29, scope: !228)
!231 = !DILocation(line: 22, column: 8, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !3, line: 22, column: 8)
!233 = !DILocation(line: 22, column: 13, scope: !232)
!234 = !DILocation(line: 22, column: 8, scope: !228)
!235 = !DILocation(line: 24, column: 24, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !3, line: 23, column: 5)
!237 = !DILocation(line: 24, column: 9, scope: !236)
!238 = !DILocation(line: 25, column: 5, scope: !236)
!239 = !DILocation(line: 26, column: 1, scope: !228)
!240 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !241, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !245, line: 74, baseType: !23)
!245 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!246 = !DILocalVariable(name: "line", arg: 1, scope: !240, file: !3, line: 27, type: !243)
!247 = !DILocation(line: 27, column: 29, scope: !240)
!248 = !DILocation(line: 29, column: 8, scope: !249)
!249 = distinct !DILexicalBlock(scope: !240, file: !3, line: 29, column: 8)
!250 = !DILocation(line: 29, column: 13, scope: !249)
!251 = !DILocation(line: 29, column: 8, scope: !240)
!252 = !DILocation(line: 31, column: 27, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !3, line: 30, column: 5)
!254 = !DILocation(line: 31, column: 9, scope: !253)
!255 = !DILocation(line: 32, column: 5, scope: !253)
!256 = !DILocation(line: 33, column: 1, scope: !240)
!257 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !258, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !23}
!260 = !DILocalVariable(name: "intNumber", arg: 1, scope: !257, file: !3, line: 35, type: !23)
!261 = !DILocation(line: 35, column: 24, scope: !257)
!262 = !DILocation(line: 37, column: 20, scope: !257)
!263 = !DILocation(line: 37, column: 5, scope: !257)
!264 = !DILocation(line: 38, column: 1, scope: !257)
!265 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !266, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !268}
!268 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!269 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !265, file: !3, line: 40, type: !268)
!270 = !DILocation(line: 40, column: 28, scope: !265)
!271 = !DILocation(line: 42, column: 21, scope: !265)
!272 = !DILocation(line: 42, column: 5, scope: !265)
!273 = !DILocation(line: 43, column: 1, scope: !265)
!274 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !275, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !277}
!277 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!278 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !274, file: !3, line: 45, type: !277)
!279 = !DILocation(line: 45, column: 28, scope: !274)
!280 = !DILocation(line: 47, column: 20, scope: !274)
!281 = !DILocation(line: 47, column: 5, scope: !274)
!282 = !DILocation(line: 48, column: 1, scope: !274)
!283 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !284, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !286}
!286 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!287 = !DILocalVariable(name: "longNumber", arg: 1, scope: !283, file: !3, line: 50, type: !286)
!288 = !DILocation(line: 50, column: 26, scope: !283)
!289 = !DILocation(line: 52, column: 21, scope: !283)
!290 = !DILocation(line: 52, column: 5, scope: !283)
!291 = !DILocation(line: 53, column: 1, scope: !283)
!292 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !293, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295}
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !296, line: 27, baseType: !297)
!296 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !298, line: 44, baseType: !286)
!298 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!299 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !292, file: !3, line: 55, type: !295)
!300 = !DILocation(line: 55, column: 33, scope: !292)
!301 = !DILocation(line: 57, column: 29, scope: !292)
!302 = !DILocation(line: 57, column: 5, scope: !292)
!303 = !DILocation(line: 58, column: 1, scope: !292)
!304 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !305, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !307}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !245, line: 46, baseType: !308)
!308 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!309 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !304, file: !3, line: 60, type: !307)
!310 = !DILocation(line: 60, column: 29, scope: !304)
!311 = !DILocation(line: 62, column: 21, scope: !304)
!312 = !DILocation(line: 62, column: 5, scope: !304)
!313 = !DILocation(line: 63, column: 1, scope: !304)
!314 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !315, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !43}
!317 = !DILocalVariable(name: "charHex", arg: 1, scope: !314, file: !3, line: 65, type: !43)
!318 = !DILocation(line: 65, column: 29, scope: !314)
!319 = !DILocation(line: 67, column: 22, scope: !314)
!320 = !DILocation(line: 67, column: 5, scope: !314)
!321 = !DILocation(line: 68, column: 1, scope: !314)
!322 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !323, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !244}
!325 = !DILocalVariable(name: "wideChar", arg: 1, scope: !322, file: !3, line: 70, type: !244)
!326 = !DILocation(line: 70, column: 29, scope: !322)
!327 = !DILocalVariable(name: "s", scope: !322, file: !3, line: 74, type: !328)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 64, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 2)
!331 = !DILocation(line: 74, column: 13, scope: !322)
!332 = !DILocation(line: 75, column: 16, scope: !322)
!333 = !DILocation(line: 75, column: 9, scope: !322)
!334 = !DILocation(line: 75, column: 14, scope: !322)
!335 = !DILocation(line: 76, column: 9, scope: !322)
!336 = !DILocation(line: 76, column: 14, scope: !322)
!337 = !DILocation(line: 77, column: 21, scope: !322)
!338 = !DILocation(line: 77, column: 5, scope: !322)
!339 = !DILocation(line: 78, column: 1, scope: !322)
!340 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !341, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !7}
!343 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !340, file: !3, line: 80, type: !7)
!344 = !DILocation(line: 80, column: 33, scope: !340)
!345 = !DILocation(line: 82, column: 20, scope: !340)
!346 = !DILocation(line: 82, column: 5, scope: !340)
!347 = !DILocation(line: 83, column: 1, scope: !340)
!348 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !349, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !25}
!351 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !348, file: !3, line: 85, type: !25)
!352 = !DILocation(line: 85, column: 45, scope: !348)
!353 = !DILocation(line: 87, column: 22, scope: !348)
!354 = !DILocation(line: 87, column: 5, scope: !348)
!355 = !DILocation(line: 88, column: 1, scope: !348)
!356 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !357, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359}
!359 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!360 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !356, file: !3, line: 90, type: !359)
!361 = !DILocation(line: 90, column: 29, scope: !356)
!362 = !DILocation(line: 92, column: 20, scope: !356)
!363 = !DILocation(line: 92, column: 5, scope: !356)
!364 = !DILocation(line: 93, column: 1, scope: !356)
!365 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !366, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !370, line: 100, baseType: !371)
!370 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_564/source_code")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !370, line: 96, size: 64, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !371, file: !370, line: 98, baseType: !23, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !371, file: !370, line: 99, baseType: !23, size: 32, offset: 32)
!375 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !365, file: !3, line: 95, type: !368)
!376 = !DILocation(line: 95, column: 40, scope: !365)
!377 = !DILocation(line: 97, column: 26, scope: !365)
!378 = !DILocation(line: 97, column: 47, scope: !365)
!379 = !DILocation(line: 97, column: 55, scope: !365)
!380 = !DILocation(line: 97, column: 76, scope: !365)
!381 = !DILocation(line: 97, column: 5, scope: !365)
!382 = !DILocation(line: 98, column: 1, scope: !365)
!383 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !384, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386, !307}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!387 = !DILocalVariable(name: "bytes", arg: 1, scope: !383, file: !3, line: 100, type: !386)
!388 = !DILocation(line: 100, column: 38, scope: !383)
!389 = !DILocalVariable(name: "numBytes", arg: 2, scope: !383, file: !3, line: 100, type: !307)
!390 = !DILocation(line: 100, column: 52, scope: !383)
!391 = !DILocalVariable(name: "i", scope: !383, file: !3, line: 102, type: !307)
!392 = !DILocation(line: 102, column: 12, scope: !383)
!393 = !DILocation(line: 103, column: 12, scope: !394)
!394 = distinct !DILexicalBlock(scope: !383, file: !3, line: 103, column: 5)
!395 = !DILocation(line: 103, column: 10, scope: !394)
!396 = !DILocation(line: 103, column: 17, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !3, line: 103, column: 5)
!398 = !DILocation(line: 103, column: 21, scope: !397)
!399 = !DILocation(line: 103, column: 19, scope: !397)
!400 = !DILocation(line: 103, column: 5, scope: !394)
!401 = !DILocation(line: 105, column: 24, scope: !402)
!402 = distinct !DILexicalBlock(scope: !397, file: !3, line: 104, column: 5)
!403 = !DILocation(line: 105, column: 30, scope: !402)
!404 = !DILocation(line: 105, column: 9, scope: !402)
!405 = !DILocation(line: 106, column: 5, scope: !402)
!406 = !DILocation(line: 103, column: 31, scope: !397)
!407 = !DILocation(line: 103, column: 5, scope: !397)
!408 = distinct !{!408, !400, !409, !109}
!409 = !DILocation(line: 106, column: 5, scope: !394)
!410 = !DILocation(line: 107, column: 5, scope: !383)
!411 = !DILocation(line: 108, column: 1, scope: !383)
!412 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !413, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!413 = !DISubroutineType(types: !414)
!414 = !{!307, !386, !307, !42}
!415 = !DILocalVariable(name: "bytes", arg: 1, scope: !412, file: !3, line: 113, type: !386)
!416 = !DILocation(line: 113, column: 39, scope: !412)
!417 = !DILocalVariable(name: "numBytes", arg: 2, scope: !412, file: !3, line: 113, type: !307)
!418 = !DILocation(line: 113, column: 53, scope: !412)
!419 = !DILocalVariable(name: "hex", arg: 3, scope: !412, file: !3, line: 113, type: !42)
!420 = !DILocation(line: 113, column: 71, scope: !412)
!421 = !DILocalVariable(name: "numWritten", scope: !412, file: !3, line: 115, type: !307)
!422 = !DILocation(line: 115, column: 12, scope: !412)
!423 = !DILocation(line: 121, column: 5, scope: !412)
!424 = !DILocation(line: 121, column: 12, scope: !412)
!425 = !DILocation(line: 121, column: 25, scope: !412)
!426 = !DILocation(line: 121, column: 23, scope: !412)
!427 = !DILocation(line: 121, column: 34, scope: !412)
!428 = !DILocation(line: 121, column: 37, scope: !412)
!429 = !DILocation(line: 121, column: 67, scope: !412)
!430 = !DILocation(line: 121, column: 70, scope: !412)
!431 = !DILocation(line: 0, scope: !412)
!432 = !DILocalVariable(name: "byte", scope: !433, file: !3, line: 123, type: !23)
!433 = distinct !DILexicalBlock(scope: !412, file: !3, line: 122, column: 5)
!434 = !DILocation(line: 123, column: 13, scope: !433)
!435 = !DILocation(line: 124, column: 17, scope: !433)
!436 = !DILocation(line: 124, column: 25, scope: !433)
!437 = !DILocation(line: 124, column: 23, scope: !433)
!438 = !DILocation(line: 124, column: 9, scope: !433)
!439 = !DILocation(line: 125, column: 45, scope: !433)
!440 = !DILocation(line: 125, column: 29, scope: !433)
!441 = !DILocation(line: 125, column: 9, scope: !433)
!442 = !DILocation(line: 125, column: 15, scope: !433)
!443 = !DILocation(line: 125, column: 27, scope: !433)
!444 = !DILocation(line: 126, column: 9, scope: !433)
!445 = distinct !{!445, !423, !446, !109}
!446 = !DILocation(line: 127, column: 5, scope: !412)
!447 = !DILocation(line: 129, column: 12, scope: !412)
!448 = !DILocation(line: 129, column: 5, scope: !412)
!449 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !450, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!450 = !DISubroutineType(types: !451)
!451 = !{!307, !386, !307, !243}
!452 = !DILocalVariable(name: "bytes", arg: 1, scope: !449, file: !3, line: 135, type: !386)
!453 = !DILocation(line: 135, column: 41, scope: !449)
!454 = !DILocalVariable(name: "numBytes", arg: 2, scope: !449, file: !3, line: 135, type: !307)
!455 = !DILocation(line: 135, column: 55, scope: !449)
!456 = !DILocalVariable(name: "hex", arg: 3, scope: !449, file: !3, line: 135, type: !243)
!457 = !DILocation(line: 135, column: 76, scope: !449)
!458 = !DILocalVariable(name: "numWritten", scope: !449, file: !3, line: 137, type: !307)
!459 = !DILocation(line: 137, column: 12, scope: !449)
!460 = !DILocation(line: 143, column: 5, scope: !449)
!461 = !DILocation(line: 143, column: 12, scope: !449)
!462 = !DILocation(line: 143, column: 25, scope: !449)
!463 = !DILocation(line: 143, column: 23, scope: !449)
!464 = !DILocation(line: 143, column: 34, scope: !449)
!465 = !DILocation(line: 143, column: 47, scope: !449)
!466 = !DILocation(line: 143, column: 55, scope: !449)
!467 = !DILocation(line: 143, column: 53, scope: !449)
!468 = !DILocation(line: 143, column: 37, scope: !449)
!469 = !DILocation(line: 143, column: 68, scope: !449)
!470 = !DILocation(line: 143, column: 81, scope: !449)
!471 = !DILocation(line: 143, column: 89, scope: !449)
!472 = !DILocation(line: 143, column: 87, scope: !449)
!473 = !DILocation(line: 143, column: 100, scope: !449)
!474 = !DILocation(line: 143, column: 71, scope: !449)
!475 = !DILocation(line: 0, scope: !449)
!476 = !DILocalVariable(name: "byte", scope: !477, file: !3, line: 145, type: !23)
!477 = distinct !DILexicalBlock(scope: !449, file: !3, line: 144, column: 5)
!478 = !DILocation(line: 145, column: 13, scope: !477)
!479 = !DILocation(line: 146, column: 18, scope: !477)
!480 = !DILocation(line: 146, column: 26, scope: !477)
!481 = !DILocation(line: 146, column: 24, scope: !477)
!482 = !DILocation(line: 146, column: 9, scope: !477)
!483 = !DILocation(line: 147, column: 45, scope: !477)
!484 = !DILocation(line: 147, column: 29, scope: !477)
!485 = !DILocation(line: 147, column: 9, scope: !477)
!486 = !DILocation(line: 147, column: 15, scope: !477)
!487 = !DILocation(line: 147, column: 27, scope: !477)
!488 = !DILocation(line: 148, column: 9, scope: !477)
!489 = distinct !{!489, !460, !490, !109}
!490 = !DILocation(line: 149, column: 5, scope: !449)
!491 = !DILocation(line: 151, column: 12, scope: !449)
!492 = !DILocation(line: 151, column: 5, scope: !449)
!493 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !494, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!494 = !DISubroutineType(types: !495)
!495 = !{!23}
!496 = !DILocation(line: 158, column: 5, scope: !493)
!497 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !494, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DILocation(line: 163, column: 5, scope: !497)
!499 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !494, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DILocation(line: 168, column: 13, scope: !499)
!501 = !DILocation(line: 168, column: 20, scope: !499)
!502 = !DILocation(line: 168, column: 5, scope: !499)
!503 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!504 = !DILocation(line: 187, column: 16, scope: !503)
!505 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DILocation(line: 188, column: 16, scope: !505)
!507 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DILocation(line: 189, column: 16, scope: !507)
!509 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DILocation(line: 190, column: 16, scope: !509)
!511 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DILocation(line: 191, column: 16, scope: !511)
!513 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DILocation(line: 192, column: 16, scope: !513)
!515 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DILocation(line: 193, column: 16, scope: !515)
!517 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DILocation(line: 194, column: 16, scope: !517)
!519 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DILocation(line: 195, column: 16, scope: !519)
!521 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DILocation(line: 198, column: 15, scope: !521)
!523 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 199, column: 15, scope: !523)
!525 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 200, column: 15, scope: !525)
!527 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 201, column: 15, scope: !527)
!529 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 202, column: 15, scope: !529)
!531 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 203, column: 15, scope: !531)
!533 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 204, column: 15, scope: !533)
!535 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 205, column: 15, scope: !535)
!537 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 206, column: 15, scope: !537)
