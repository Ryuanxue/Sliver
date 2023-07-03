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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_31_bad() #0 !dbg !52 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %dataCopy = alloca i32, align 4
  %data3 = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %dataCopy, metadata !77, metadata !DIExpression()), !dbg !79
  %2 = load i32, i32* %data, align 4, !dbg !80
  store i32 %2, i32* %dataCopy, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %data3, metadata !81, metadata !DIExpression()), !dbg !82
  %3 = load i32, i32* %dataCopy, align 4, !dbg !83
  store i32 %3, i32* %data3, align 4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %i, metadata !84, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !87, metadata !DIExpression()), !dbg !91
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !91
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !91
  %5 = load i32, i32* %data3, align 4, !dbg !92
  %cmp4 = icmp sge i32 %5, 0, !dbg !94
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !95

if.then5:                                         ; preds = %if.end
  %6 = load i32, i32* %data3, align 4, !dbg !96
  %idxprom = sext i32 %6 to i64, !dbg !98
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !98
  store i32 1, i32* %arrayidx, align 4, !dbg !99
  store i32 0, i32* %i, align 4, !dbg !100
  br label %for.cond, !dbg !102

for.cond:                                         ; preds = %for.inc, %if.then5
  %7 = load i32, i32* %i, align 4, !dbg !103
  %cmp6 = icmp slt i32 %7, 10, !dbg !105
  br i1 %cmp6, label %for.body, label %for.end, !dbg !106

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !107
  %idxprom7 = sext i32 %8 to i64, !dbg !109
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !109
  %9 = load i32, i32* %arrayidx8, align 4, !dbg !109
  call void @printIntLine(i32 %9), !dbg !110
  br label %for.inc, !dbg !111

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !112
  %inc = add nsw i32 %10, 1, !dbg !112
  store i32 %inc, i32* %i, align 4, !dbg !112
  br label %for.cond, !dbg !113, !llvm.loop !114

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !117

if.else9:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !118
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  ret void, !dbg !120
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !121 {
entry:
  %data = alloca i32, align 4
  %dataCopy = alloca i32, align 4
  %data1 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !122, metadata !DIExpression()), !dbg !123
  store i32 -1, i32* %data, align 4, !dbg !124
  store i32 7, i32* %data, align 4, !dbg !125
  call void @llvm.dbg.declare(metadata i32* %dataCopy, metadata !126, metadata !DIExpression()), !dbg !128
  %0 = load i32, i32* %data, align 4, !dbg !129
  store i32 %0, i32* %dataCopy, align 4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !130, metadata !DIExpression()), !dbg !131
  %1 = load i32, i32* %dataCopy, align 4, !dbg !132
  store i32 %1, i32* %data1, align 4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %i, metadata !133, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !136, metadata !DIExpression()), !dbg !137
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !137
  %3 = load i32, i32* %data1, align 4, !dbg !138
  %cmp = icmp sge i32 %3, 0, !dbg !140
  br i1 %cmp, label %if.then, label %if.else, !dbg !141

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data1, align 4, !dbg !142
  %idxprom = sext i32 %4 to i64, !dbg !144
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !144
  store i32 1, i32* %arrayidx, align 4, !dbg !145
  store i32 0, i32* %i, align 4, !dbg !146
  br label %for.cond, !dbg !148

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !149
  %cmp2 = icmp slt i32 %5, 10, !dbg !151
  br i1 %cmp2, label %for.body, label %for.end, !dbg !152

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !153
  %idxprom3 = sext i32 %6 to i64, !dbg !155
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !155
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !155
  call void @printIntLine(i32 %7), !dbg !156
  br label %for.inc, !dbg !157

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !158
  %inc = add nsw i32 %8, 1, !dbg !158
  store i32 %inc, i32* %i, align 4, !dbg !158
  br label %for.cond, !dbg !159, !llvm.loop !160

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !162

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !163
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !166 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %dataCopy = alloca i32, align 4
  %data3 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !167, metadata !DIExpression()), !dbg !168
  store i32 -1, i32* %data, align 4, !dbg !169
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !170, metadata !DIExpression()), !dbg !172
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !172
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !172
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !173
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !175
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !176
  %cmp = icmp ne i8* %call, null, !dbg !177
  br i1 %cmp, label %if.then, label %if.else, !dbg !178

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !179
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !181
  store i32 %call2, i32* %data, align 4, !dbg !182
  br label %if.end, !dbg !183

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !184
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %dataCopy, metadata !186, metadata !DIExpression()), !dbg !188
  %2 = load i32, i32* %data, align 4, !dbg !189
  store i32 %2, i32* %dataCopy, align 4, !dbg !188
  call void @llvm.dbg.declare(metadata i32* %data3, metadata !190, metadata !DIExpression()), !dbg !191
  %3 = load i32, i32* %dataCopy, align 4, !dbg !192
  store i32 %3, i32* %data3, align 4, !dbg !191
  call void @llvm.dbg.declare(metadata i32* %i, metadata !193, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !196, metadata !DIExpression()), !dbg !197
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !197
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !197
  %5 = load i32, i32* %data3, align 4, !dbg !198
  %cmp4 = icmp sge i32 %5, 0, !dbg !200
  br i1 %cmp4, label %land.lhs.true, label %if.else10, !dbg !201

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %data3, align 4, !dbg !202
  %cmp5 = icmp slt i32 %6, 10, !dbg !203
  br i1 %cmp5, label %if.then6, label %if.else10, !dbg !204

if.then6:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* %data3, align 4, !dbg !205
  %idxprom = sext i32 %7 to i64, !dbg !207
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !207
  store i32 1, i32* %arrayidx, align 4, !dbg !208
  store i32 0, i32* %i, align 4, !dbg !209
  br label %for.cond, !dbg !211

for.cond:                                         ; preds = %for.inc, %if.then6
  %8 = load i32, i32* %i, align 4, !dbg !212
  %cmp7 = icmp slt i32 %8, 10, !dbg !214
  br i1 %cmp7, label %for.body, label %for.end, !dbg !215

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !216
  %idxprom8 = sext i32 %9 to i64, !dbg !218
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom8, !dbg !218
  %10 = load i32, i32* %arrayidx9, align 4, !dbg !218
  call void @printIntLine(i32 %10), !dbg !219
  br label %for.inc, !dbg !220

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !221
  %inc = add nsw i32 %11, 1, !dbg !221
  store i32 %inc, i32* %i, align 4, !dbg !221
  br label %for.cond, !dbg !222, !llvm.loop !223

for.end:                                          ; preds = %for.cond
  br label %if.end11, !dbg !225

if.else10:                                        ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !226
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %for.end
  ret void, !dbg !228
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_31_good() #0 !dbg !229 {
entry:
  call void @goodG2B(), !dbg !230
  call void @goodB2G(), !dbg !231
  ret void, !dbg !232
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !233 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !236, metadata !DIExpression()), !dbg !237
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !238
  %0 = load i8*, i8** %line.addr, align 8, !dbg !239
  %cmp = icmp ne i8* %0, null, !dbg !241
  br i1 %cmp, label %if.then, label %if.end, !dbg !242

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !243
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !245
  br label %if.end, !dbg !246

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !247
  ret void, !dbg !248
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !249 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !250, metadata !DIExpression()), !dbg !251
  %0 = load i8*, i8** %line.addr, align 8, !dbg !252
  %cmp = icmp ne i8* %0, null, !dbg !254
  br i1 %cmp, label %if.then, label %if.end, !dbg !255

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !256
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !258
  br label %if.end, !dbg !259

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !261 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !267, metadata !DIExpression()), !dbg !268
  %0 = load i32*, i32** %line.addr, align 8, !dbg !269
  %cmp = icmp ne i32* %0, null, !dbg !271
  br i1 %cmp, label %if.then, label %if.end, !dbg !272

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !273
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !275
  br label %if.end, !dbg !276

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !277
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !278 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !283
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !284
  ret void, !dbg !285
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !286 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !290, metadata !DIExpression()), !dbg !291
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !292
  %conv = sext i16 %0 to i32, !dbg !292
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !293
  ret void, !dbg !294
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !295 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !301
  %conv = fpext float %0 to double, !dbg !301
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !302
  ret void, !dbg !303
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !304 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !308, metadata !DIExpression()), !dbg !309
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !310
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !311
  ret void, !dbg !312
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !313 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !322
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !325 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !333
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !335 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !340
  %conv = sext i8 %0 to i32, !dbg !340
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !341
  ret void, !dbg !342
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !343 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !346, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !348, metadata !DIExpression()), !dbg !352
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !353
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !354
  store i32 %0, i32* %arrayidx, align 4, !dbg !355
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !356
  store i32 0, i32* %arrayidx1, align 4, !dbg !357
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !358
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !359
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !361 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !366
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !367
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !369 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !374
  %conv = zext i8 %0 to i32, !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !377 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !381, metadata !DIExpression()), !dbg !382
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !383
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !384
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !386 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !398
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !399
  %1 = load i32, i32* %intOne, align 4, !dbg !399
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !400
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !401
  %3 = load i32, i32* %intTwo, align 4, !dbg !401
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !402
  ret void, !dbg !403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !404 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !408, metadata !DIExpression()), !dbg !409
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata i64* %i, metadata !412, metadata !DIExpression()), !dbg !413
  store i64 0, i64* %i, align 8, !dbg !414
  br label %for.cond, !dbg !416

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !417
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !419
  %cmp = icmp ult i64 %0, %1, !dbg !420
  br i1 %cmp, label %for.body, label %for.end, !dbg !421

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !422
  %3 = load i64, i64* %i, align 8, !dbg !424
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !422
  %4 = load i8, i8* %arrayidx, align 1, !dbg !422
  %conv = zext i8 %4 to i32, !dbg !422
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !425
  br label %for.inc, !dbg !426

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !427
  %inc = add i64 %5, 1, !dbg !427
  store i64 %inc, i64* %i, align 8, !dbg !427
  br label %for.cond, !dbg !428, !llvm.loop !429

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !431
  ret void, !dbg !432
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !433 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !436, metadata !DIExpression()), !dbg !437
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !438, metadata !DIExpression()), !dbg !439
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !440, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !442, metadata !DIExpression()), !dbg !443
  store i64 0, i64* %numWritten, align 8, !dbg !443
  br label %while.cond, !dbg !444

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !445
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !446
  %cmp = icmp ult i64 %0, %1, !dbg !447
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !448

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !449
  %2 = load i16*, i16** %call, align 8, !dbg !449
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !449
  %4 = load i64, i64* %numWritten, align 8, !dbg !449
  %mul = mul i64 2, %4, !dbg !449
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !449
  %5 = load i8, i8* %arrayidx, align 1, !dbg !449
  %conv = sext i8 %5 to i32, !dbg !449
  %idxprom = sext i32 %conv to i64, !dbg !449
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !449
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !449
  %conv2 = zext i16 %6 to i32, !dbg !449
  %and = and i32 %conv2, 4096, !dbg !449
  %tobool = icmp ne i32 %and, 0, !dbg !449
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !450

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !451
  %7 = load i16*, i16** %call3, align 8, !dbg !451
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !451
  %9 = load i64, i64* %numWritten, align 8, !dbg !451
  %mul4 = mul i64 2, %9, !dbg !451
  %add = add i64 %mul4, 1, !dbg !451
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !451
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !451
  %conv6 = sext i8 %10 to i32, !dbg !451
  %idxprom7 = sext i32 %conv6 to i64, !dbg !451
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !451
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !451
  %conv9 = zext i16 %11 to i32, !dbg !451
  %and10 = and i32 %conv9, 4096, !dbg !451
  %tobool11 = icmp ne i32 %and10, 0, !dbg !450
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !452
  br i1 %12, label %while.body, label %while.end, !dbg !444

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !453, metadata !DIExpression()), !dbg !455
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !456
  %14 = load i64, i64* %numWritten, align 8, !dbg !457
  %mul12 = mul i64 2, %14, !dbg !458
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !456
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !459
  %15 = load i32, i32* %byte, align 4, !dbg !460
  %conv15 = trunc i32 %15 to i8, !dbg !461
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !462
  %17 = load i64, i64* %numWritten, align 8, !dbg !463
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !462
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !464
  %18 = load i64, i64* %numWritten, align 8, !dbg !465
  %inc = add i64 %18, 1, !dbg !465
  store i64 %inc, i64* %numWritten, align 8, !dbg !465
  br label %while.cond, !dbg !444, !llvm.loop !466

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !468
  ret i64 %19, !dbg !469
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !470 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !473, metadata !DIExpression()), !dbg !474
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !475, metadata !DIExpression()), !dbg !476
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !479, metadata !DIExpression()), !dbg !480
  store i64 0, i64* %numWritten, align 8, !dbg !480
  br label %while.cond, !dbg !481

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !482
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !483
  %cmp = icmp ult i64 %0, %1, !dbg !484
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !485

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !486
  %3 = load i64, i64* %numWritten, align 8, !dbg !487
  %mul = mul i64 2, %3, !dbg !488
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !486
  %4 = load i32, i32* %arrayidx, align 4, !dbg !486
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !489
  %tobool = icmp ne i32 %call, 0, !dbg !489
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !490

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !491
  %6 = load i64, i64* %numWritten, align 8, !dbg !492
  %mul1 = mul i64 2, %6, !dbg !493
  %add = add i64 %mul1, 1, !dbg !494
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !491
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !491
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !495
  %tobool4 = icmp ne i32 %call3, 0, !dbg !490
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !496
  br i1 %8, label %while.body, label %while.end, !dbg !481

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !497, metadata !DIExpression()), !dbg !499
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !500
  %10 = load i64, i64* %numWritten, align 8, !dbg !501
  %mul5 = mul i64 2, %10, !dbg !502
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !500
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !503
  %11 = load i32, i32* %byte, align 4, !dbg !504
  %conv = trunc i32 %11 to i8, !dbg !505
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !506
  %13 = load i64, i64* %numWritten, align 8, !dbg !507
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !506
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !508
  %14 = load i64, i64* %numWritten, align 8, !dbg !509
  %inc = add i64 %14, 1, !dbg !509
  store i64 %inc, i64* %numWritten, align 8, !dbg !509
  br label %while.cond, !dbg !481, !llvm.loop !510

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !512
  ret i64 %15, !dbg !513
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !514 {
entry:
  ret i32 1, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !518 {
entry:
  ret i32 0, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !520 {
entry:
  %call = call i32 @rand() #9, !dbg !521
  %rem = srem i32 %call, 2, !dbg !522
  ret i32 %rem, !dbg !523
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !524 {
entry:
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !526 {
entry:
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !528 {
entry:
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !530 {
entry:
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !532 {
entry:
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !534 {
entry:
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !536 {
entry:
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !540 {
entry:
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !542 {
entry:
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !544 {
entry:
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !548 {
entry:
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !558 {
entry:
  ret void, !dbg !559
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_584/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_584/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_31_bad", scope: !45, file: !45, line: 25, type: !53, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!77 = !DILocalVariable(name: "dataCopy", scope: !78, file: !45, line: 44, type: !23)
!78 = distinct !DILexicalBlock(scope: !52, file: !45, line: 43, column: 5)
!79 = !DILocation(line: 44, column: 13, scope: !78)
!80 = !DILocation(line: 44, column: 24, scope: !78)
!81 = !DILocalVariable(name: "data", scope: !78, file: !45, line: 45, type: !23)
!82 = !DILocation(line: 45, column: 13, scope: !78)
!83 = !DILocation(line: 45, column: 20, scope: !78)
!84 = !DILocalVariable(name: "i", scope: !85, file: !45, line: 47, type: !23)
!85 = distinct !DILexicalBlock(scope: !78, file: !45, line: 46, column: 9)
!86 = !DILocation(line: 47, column: 17, scope: !85)
!87 = !DILocalVariable(name: "buffer", scope: !85, file: !45, line: 48, type: !88)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 10)
!91 = !DILocation(line: 48, column: 17, scope: !85)
!92 = !DILocation(line: 51, column: 17, scope: !93)
!93 = distinct !DILexicalBlock(scope: !85, file: !45, line: 51, column: 17)
!94 = !DILocation(line: 51, column: 22, scope: !93)
!95 = !DILocation(line: 51, column: 17, scope: !85)
!96 = !DILocation(line: 53, column: 24, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !45, line: 52, column: 13)
!98 = !DILocation(line: 53, column: 17, scope: !97)
!99 = !DILocation(line: 53, column: 30, scope: !97)
!100 = !DILocation(line: 55, column: 23, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !45, line: 55, column: 17)
!102 = !DILocation(line: 55, column: 21, scope: !101)
!103 = !DILocation(line: 55, column: 28, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !45, line: 55, column: 17)
!105 = !DILocation(line: 55, column: 30, scope: !104)
!106 = !DILocation(line: 55, column: 17, scope: !101)
!107 = !DILocation(line: 57, column: 41, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !45, line: 56, column: 17)
!109 = !DILocation(line: 57, column: 34, scope: !108)
!110 = !DILocation(line: 57, column: 21, scope: !108)
!111 = !DILocation(line: 58, column: 17, scope: !108)
!112 = !DILocation(line: 55, column: 37, scope: !104)
!113 = !DILocation(line: 55, column: 17, scope: !104)
!114 = distinct !{!114, !106, !115, !116}
!115 = !DILocation(line: 58, column: 17, scope: !101)
!116 = !{!"llvm.loop.mustprogress"}
!117 = !DILocation(line: 59, column: 13, scope: !97)
!118 = !DILocation(line: 62, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !93, file: !45, line: 61, column: 13)
!120 = !DILocation(line: 66, column: 1, scope: !52)
!121 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 73, type: !53, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!122 = !DILocalVariable(name: "data", scope: !121, file: !45, line: 75, type: !23)
!123 = !DILocation(line: 75, column: 9, scope: !121)
!124 = !DILocation(line: 77, column: 10, scope: !121)
!125 = !DILocation(line: 80, column: 10, scope: !121)
!126 = !DILocalVariable(name: "dataCopy", scope: !127, file: !45, line: 82, type: !23)
!127 = distinct !DILexicalBlock(scope: !121, file: !45, line: 81, column: 5)
!128 = !DILocation(line: 82, column: 13, scope: !127)
!129 = !DILocation(line: 82, column: 24, scope: !127)
!130 = !DILocalVariable(name: "data", scope: !127, file: !45, line: 83, type: !23)
!131 = !DILocation(line: 83, column: 13, scope: !127)
!132 = !DILocation(line: 83, column: 20, scope: !127)
!133 = !DILocalVariable(name: "i", scope: !134, file: !45, line: 85, type: !23)
!134 = distinct !DILexicalBlock(scope: !127, file: !45, line: 84, column: 9)
!135 = !DILocation(line: 85, column: 17, scope: !134)
!136 = !DILocalVariable(name: "buffer", scope: !134, file: !45, line: 86, type: !88)
!137 = !DILocation(line: 86, column: 17, scope: !134)
!138 = !DILocation(line: 89, column: 17, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !45, line: 89, column: 17)
!140 = !DILocation(line: 89, column: 22, scope: !139)
!141 = !DILocation(line: 89, column: 17, scope: !134)
!142 = !DILocation(line: 91, column: 24, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !45, line: 90, column: 13)
!144 = !DILocation(line: 91, column: 17, scope: !143)
!145 = !DILocation(line: 91, column: 30, scope: !143)
!146 = !DILocation(line: 93, column: 23, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !45, line: 93, column: 17)
!148 = !DILocation(line: 93, column: 21, scope: !147)
!149 = !DILocation(line: 93, column: 28, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !45, line: 93, column: 17)
!151 = !DILocation(line: 93, column: 30, scope: !150)
!152 = !DILocation(line: 93, column: 17, scope: !147)
!153 = !DILocation(line: 95, column: 41, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !45, line: 94, column: 17)
!155 = !DILocation(line: 95, column: 34, scope: !154)
!156 = !DILocation(line: 95, column: 21, scope: !154)
!157 = !DILocation(line: 96, column: 17, scope: !154)
!158 = !DILocation(line: 93, column: 37, scope: !150)
!159 = !DILocation(line: 93, column: 17, scope: !150)
!160 = distinct !{!160, !152, !161, !116}
!161 = !DILocation(line: 96, column: 17, scope: !147)
!162 = !DILocation(line: 97, column: 13, scope: !143)
!163 = !DILocation(line: 100, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !139, file: !45, line: 99, column: 13)
!165 = !DILocation(line: 104, column: 1, scope: !121)
!166 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 107, type: !53, scopeLine: 108, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!167 = !DILocalVariable(name: "data", scope: !166, file: !45, line: 109, type: !23)
!168 = !DILocation(line: 109, column: 9, scope: !166)
!169 = !DILocation(line: 111, column: 10, scope: !166)
!170 = !DILocalVariable(name: "inputBuffer", scope: !171, file: !45, line: 113, type: !60)
!171 = distinct !DILexicalBlock(scope: !166, file: !45, line: 112, column: 5)
!172 = !DILocation(line: 113, column: 14, scope: !171)
!173 = !DILocation(line: 115, column: 19, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !45, line: 115, column: 13)
!175 = !DILocation(line: 115, column: 49, scope: !174)
!176 = !DILocation(line: 115, column: 13, scope: !174)
!177 = !DILocation(line: 115, column: 56, scope: !174)
!178 = !DILocation(line: 115, column: 13, scope: !171)
!179 = !DILocation(line: 118, column: 25, scope: !180)
!180 = distinct !DILexicalBlock(scope: !174, file: !45, line: 116, column: 9)
!181 = !DILocation(line: 118, column: 20, scope: !180)
!182 = !DILocation(line: 118, column: 18, scope: !180)
!183 = !DILocation(line: 119, column: 9, scope: !180)
!184 = !DILocation(line: 122, column: 13, scope: !185)
!185 = distinct !DILexicalBlock(scope: !174, file: !45, line: 121, column: 9)
!186 = !DILocalVariable(name: "dataCopy", scope: !187, file: !45, line: 126, type: !23)
!187 = distinct !DILexicalBlock(scope: !166, file: !45, line: 125, column: 5)
!188 = !DILocation(line: 126, column: 13, scope: !187)
!189 = !DILocation(line: 126, column: 24, scope: !187)
!190 = !DILocalVariable(name: "data", scope: !187, file: !45, line: 127, type: !23)
!191 = !DILocation(line: 127, column: 13, scope: !187)
!192 = !DILocation(line: 127, column: 20, scope: !187)
!193 = !DILocalVariable(name: "i", scope: !194, file: !45, line: 129, type: !23)
!194 = distinct !DILexicalBlock(scope: !187, file: !45, line: 128, column: 9)
!195 = !DILocation(line: 129, column: 17, scope: !194)
!196 = !DILocalVariable(name: "buffer", scope: !194, file: !45, line: 130, type: !88)
!197 = !DILocation(line: 130, column: 17, scope: !194)
!198 = !DILocation(line: 132, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !45, line: 132, column: 17)
!200 = !DILocation(line: 132, column: 22, scope: !199)
!201 = !DILocation(line: 132, column: 27, scope: !199)
!202 = !DILocation(line: 132, column: 30, scope: !199)
!203 = !DILocation(line: 132, column: 35, scope: !199)
!204 = !DILocation(line: 132, column: 17, scope: !194)
!205 = !DILocation(line: 134, column: 24, scope: !206)
!206 = distinct !DILexicalBlock(scope: !199, file: !45, line: 133, column: 13)
!207 = !DILocation(line: 134, column: 17, scope: !206)
!208 = !DILocation(line: 134, column: 30, scope: !206)
!209 = !DILocation(line: 136, column: 23, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !45, line: 136, column: 17)
!211 = !DILocation(line: 136, column: 21, scope: !210)
!212 = !DILocation(line: 136, column: 28, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !45, line: 136, column: 17)
!214 = !DILocation(line: 136, column: 30, scope: !213)
!215 = !DILocation(line: 136, column: 17, scope: !210)
!216 = !DILocation(line: 138, column: 41, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !45, line: 137, column: 17)
!218 = !DILocation(line: 138, column: 34, scope: !217)
!219 = !DILocation(line: 138, column: 21, scope: !217)
!220 = !DILocation(line: 139, column: 17, scope: !217)
!221 = !DILocation(line: 136, column: 37, scope: !213)
!222 = !DILocation(line: 136, column: 17, scope: !213)
!223 = distinct !{!223, !215, !224, !116}
!224 = !DILocation(line: 139, column: 17, scope: !210)
!225 = !DILocation(line: 140, column: 13, scope: !206)
!226 = !DILocation(line: 143, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !199, file: !45, line: 142, column: 13)
!228 = !DILocation(line: 147, column: 1, scope: !166)
!229 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_31_good", scope: !45, file: !45, line: 149, type: !53, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!230 = !DILocation(line: 151, column: 5, scope: !229)
!231 = !DILocation(line: 152, column: 5, scope: !229)
!232 = !DILocation(line: 153, column: 1, scope: !229)
!233 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !234, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !42}
!236 = !DILocalVariable(name: "line", arg: 1, scope: !233, file: !3, line: 11, type: !42)
!237 = !DILocation(line: 11, column: 25, scope: !233)
!238 = !DILocation(line: 13, column: 1, scope: !233)
!239 = !DILocation(line: 14, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !233, file: !3, line: 14, column: 8)
!241 = !DILocation(line: 14, column: 13, scope: !240)
!242 = !DILocation(line: 14, column: 8, scope: !233)
!243 = !DILocation(line: 16, column: 24, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !3, line: 15, column: 5)
!245 = !DILocation(line: 16, column: 9, scope: !244)
!246 = !DILocation(line: 17, column: 5, scope: !244)
!247 = !DILocation(line: 18, column: 5, scope: !233)
!248 = !DILocation(line: 19, column: 1, scope: !233)
!249 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !234, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!250 = !DILocalVariable(name: "line", arg: 1, scope: !249, file: !3, line: 20, type: !42)
!251 = !DILocation(line: 20, column: 29, scope: !249)
!252 = !DILocation(line: 22, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !3, line: 22, column: 8)
!254 = !DILocation(line: 22, column: 13, scope: !253)
!255 = !DILocation(line: 22, column: 8, scope: !249)
!256 = !DILocation(line: 24, column: 24, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 23, column: 5)
!258 = !DILocation(line: 24, column: 9, scope: !257)
!259 = !DILocation(line: 25, column: 5, scope: !257)
!260 = !DILocation(line: 26, column: 1, scope: !249)
!261 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !262, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !266, line: 74, baseType: !23)
!266 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!267 = !DILocalVariable(name: "line", arg: 1, scope: !261, file: !3, line: 27, type: !264)
!268 = !DILocation(line: 27, column: 29, scope: !261)
!269 = !DILocation(line: 29, column: 8, scope: !270)
!270 = distinct !DILexicalBlock(scope: !261, file: !3, line: 29, column: 8)
!271 = !DILocation(line: 29, column: 13, scope: !270)
!272 = !DILocation(line: 29, column: 8, scope: !261)
!273 = !DILocation(line: 31, column: 27, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !3, line: 30, column: 5)
!275 = !DILocation(line: 31, column: 9, scope: !274)
!276 = !DILocation(line: 32, column: 5, scope: !274)
!277 = !DILocation(line: 33, column: 1, scope: !261)
!278 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !279, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !23}
!281 = !DILocalVariable(name: "intNumber", arg: 1, scope: !278, file: !3, line: 35, type: !23)
!282 = !DILocation(line: 35, column: 24, scope: !278)
!283 = !DILocation(line: 37, column: 20, scope: !278)
!284 = !DILocation(line: 37, column: 5, scope: !278)
!285 = !DILocation(line: 38, column: 1, scope: !278)
!286 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !287, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289}
!289 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!290 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !286, file: !3, line: 40, type: !289)
!291 = !DILocation(line: 40, column: 28, scope: !286)
!292 = !DILocation(line: 42, column: 21, scope: !286)
!293 = !DILocation(line: 42, column: 5, scope: !286)
!294 = !DILocation(line: 43, column: 1, scope: !286)
!295 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !296, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298}
!298 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!299 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !295, file: !3, line: 45, type: !298)
!300 = !DILocation(line: 45, column: 28, scope: !295)
!301 = !DILocation(line: 47, column: 20, scope: !295)
!302 = !DILocation(line: 47, column: 5, scope: !295)
!303 = !DILocation(line: 48, column: 1, scope: !295)
!304 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !305, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !307}
!307 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!308 = !DILocalVariable(name: "longNumber", arg: 1, scope: !304, file: !3, line: 50, type: !307)
!309 = !DILocation(line: 50, column: 26, scope: !304)
!310 = !DILocation(line: 52, column: 21, scope: !304)
!311 = !DILocation(line: 52, column: 5, scope: !304)
!312 = !DILocation(line: 53, column: 1, scope: !304)
!313 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !314, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !316}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !317, line: 27, baseType: !318)
!317 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !319, line: 44, baseType: !307)
!319 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!320 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !313, file: !3, line: 55, type: !316)
!321 = !DILocation(line: 55, column: 33, scope: !313)
!322 = !DILocation(line: 57, column: 29, scope: !313)
!323 = !DILocation(line: 57, column: 5, scope: !313)
!324 = !DILocation(line: 58, column: 1, scope: !313)
!325 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !326, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !266, line: 46, baseType: !329)
!329 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!330 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !325, file: !3, line: 60, type: !328)
!331 = !DILocation(line: 60, column: 29, scope: !325)
!332 = !DILocation(line: 62, column: 21, scope: !325)
!333 = !DILocation(line: 62, column: 5, scope: !325)
!334 = !DILocation(line: 63, column: 1, scope: !325)
!335 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !336, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !43}
!338 = !DILocalVariable(name: "charHex", arg: 1, scope: !335, file: !3, line: 65, type: !43)
!339 = !DILocation(line: 65, column: 29, scope: !335)
!340 = !DILocation(line: 67, column: 22, scope: !335)
!341 = !DILocation(line: 67, column: 5, scope: !335)
!342 = !DILocation(line: 68, column: 1, scope: !335)
!343 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !344, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !265}
!346 = !DILocalVariable(name: "wideChar", arg: 1, scope: !343, file: !3, line: 70, type: !265)
!347 = !DILocation(line: 70, column: 29, scope: !343)
!348 = !DILocalVariable(name: "s", scope: !343, file: !3, line: 74, type: !349)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 64, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 2)
!352 = !DILocation(line: 74, column: 13, scope: !343)
!353 = !DILocation(line: 75, column: 16, scope: !343)
!354 = !DILocation(line: 75, column: 9, scope: !343)
!355 = !DILocation(line: 75, column: 14, scope: !343)
!356 = !DILocation(line: 76, column: 9, scope: !343)
!357 = !DILocation(line: 76, column: 14, scope: !343)
!358 = !DILocation(line: 77, column: 21, scope: !343)
!359 = !DILocation(line: 77, column: 5, scope: !343)
!360 = !DILocation(line: 78, column: 1, scope: !343)
!361 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !362, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !7}
!364 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !361, file: !3, line: 80, type: !7)
!365 = !DILocation(line: 80, column: 33, scope: !361)
!366 = !DILocation(line: 82, column: 20, scope: !361)
!367 = !DILocation(line: 82, column: 5, scope: !361)
!368 = !DILocation(line: 83, column: 1, scope: !361)
!369 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !370, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !25}
!372 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !369, file: !3, line: 85, type: !25)
!373 = !DILocation(line: 85, column: 45, scope: !369)
!374 = !DILocation(line: 87, column: 22, scope: !369)
!375 = !DILocation(line: 87, column: 5, scope: !369)
!376 = !DILocation(line: 88, column: 1, scope: !369)
!377 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !378, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380}
!380 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!381 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !377, file: !3, line: 90, type: !380)
!382 = !DILocation(line: 90, column: 29, scope: !377)
!383 = !DILocation(line: 92, column: 20, scope: !377)
!384 = !DILocation(line: 92, column: 5, scope: !377)
!385 = !DILocation(line: 93, column: 1, scope: !377)
!386 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !387, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !391, line: 100, baseType: !392)
!391 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_584/source_code")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !391, line: 96, size: 64, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !392, file: !391, line: 98, baseType: !23, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !392, file: !391, line: 99, baseType: !23, size: 32, offset: 32)
!396 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !386, file: !3, line: 95, type: !389)
!397 = !DILocation(line: 95, column: 40, scope: !386)
!398 = !DILocation(line: 97, column: 26, scope: !386)
!399 = !DILocation(line: 97, column: 47, scope: !386)
!400 = !DILocation(line: 97, column: 55, scope: !386)
!401 = !DILocation(line: 97, column: 76, scope: !386)
!402 = !DILocation(line: 97, column: 5, scope: !386)
!403 = !DILocation(line: 98, column: 1, scope: !386)
!404 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !405, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !407, !328}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!408 = !DILocalVariable(name: "bytes", arg: 1, scope: !404, file: !3, line: 100, type: !407)
!409 = !DILocation(line: 100, column: 38, scope: !404)
!410 = !DILocalVariable(name: "numBytes", arg: 2, scope: !404, file: !3, line: 100, type: !328)
!411 = !DILocation(line: 100, column: 52, scope: !404)
!412 = !DILocalVariable(name: "i", scope: !404, file: !3, line: 102, type: !328)
!413 = !DILocation(line: 102, column: 12, scope: !404)
!414 = !DILocation(line: 103, column: 12, scope: !415)
!415 = distinct !DILexicalBlock(scope: !404, file: !3, line: 103, column: 5)
!416 = !DILocation(line: 103, column: 10, scope: !415)
!417 = !DILocation(line: 103, column: 17, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !3, line: 103, column: 5)
!419 = !DILocation(line: 103, column: 21, scope: !418)
!420 = !DILocation(line: 103, column: 19, scope: !418)
!421 = !DILocation(line: 103, column: 5, scope: !415)
!422 = !DILocation(line: 105, column: 24, scope: !423)
!423 = distinct !DILexicalBlock(scope: !418, file: !3, line: 104, column: 5)
!424 = !DILocation(line: 105, column: 30, scope: !423)
!425 = !DILocation(line: 105, column: 9, scope: !423)
!426 = !DILocation(line: 106, column: 5, scope: !423)
!427 = !DILocation(line: 103, column: 31, scope: !418)
!428 = !DILocation(line: 103, column: 5, scope: !418)
!429 = distinct !{!429, !421, !430, !116}
!430 = !DILocation(line: 106, column: 5, scope: !415)
!431 = !DILocation(line: 107, column: 5, scope: !404)
!432 = !DILocation(line: 108, column: 1, scope: !404)
!433 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !434, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!434 = !DISubroutineType(types: !435)
!435 = !{!328, !407, !328, !42}
!436 = !DILocalVariable(name: "bytes", arg: 1, scope: !433, file: !3, line: 113, type: !407)
!437 = !DILocation(line: 113, column: 39, scope: !433)
!438 = !DILocalVariable(name: "numBytes", arg: 2, scope: !433, file: !3, line: 113, type: !328)
!439 = !DILocation(line: 113, column: 53, scope: !433)
!440 = !DILocalVariable(name: "hex", arg: 3, scope: !433, file: !3, line: 113, type: !42)
!441 = !DILocation(line: 113, column: 71, scope: !433)
!442 = !DILocalVariable(name: "numWritten", scope: !433, file: !3, line: 115, type: !328)
!443 = !DILocation(line: 115, column: 12, scope: !433)
!444 = !DILocation(line: 121, column: 5, scope: !433)
!445 = !DILocation(line: 121, column: 12, scope: !433)
!446 = !DILocation(line: 121, column: 25, scope: !433)
!447 = !DILocation(line: 121, column: 23, scope: !433)
!448 = !DILocation(line: 121, column: 34, scope: !433)
!449 = !DILocation(line: 121, column: 37, scope: !433)
!450 = !DILocation(line: 121, column: 67, scope: !433)
!451 = !DILocation(line: 121, column: 70, scope: !433)
!452 = !DILocation(line: 0, scope: !433)
!453 = !DILocalVariable(name: "byte", scope: !454, file: !3, line: 123, type: !23)
!454 = distinct !DILexicalBlock(scope: !433, file: !3, line: 122, column: 5)
!455 = !DILocation(line: 123, column: 13, scope: !454)
!456 = !DILocation(line: 124, column: 17, scope: !454)
!457 = !DILocation(line: 124, column: 25, scope: !454)
!458 = !DILocation(line: 124, column: 23, scope: !454)
!459 = !DILocation(line: 124, column: 9, scope: !454)
!460 = !DILocation(line: 125, column: 45, scope: !454)
!461 = !DILocation(line: 125, column: 29, scope: !454)
!462 = !DILocation(line: 125, column: 9, scope: !454)
!463 = !DILocation(line: 125, column: 15, scope: !454)
!464 = !DILocation(line: 125, column: 27, scope: !454)
!465 = !DILocation(line: 126, column: 9, scope: !454)
!466 = distinct !{!466, !444, !467, !116}
!467 = !DILocation(line: 127, column: 5, scope: !433)
!468 = !DILocation(line: 129, column: 12, scope: !433)
!469 = !DILocation(line: 129, column: 5, scope: !433)
!470 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !471, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!471 = !DISubroutineType(types: !472)
!472 = !{!328, !407, !328, !264}
!473 = !DILocalVariable(name: "bytes", arg: 1, scope: !470, file: !3, line: 135, type: !407)
!474 = !DILocation(line: 135, column: 41, scope: !470)
!475 = !DILocalVariable(name: "numBytes", arg: 2, scope: !470, file: !3, line: 135, type: !328)
!476 = !DILocation(line: 135, column: 55, scope: !470)
!477 = !DILocalVariable(name: "hex", arg: 3, scope: !470, file: !3, line: 135, type: !264)
!478 = !DILocation(line: 135, column: 76, scope: !470)
!479 = !DILocalVariable(name: "numWritten", scope: !470, file: !3, line: 137, type: !328)
!480 = !DILocation(line: 137, column: 12, scope: !470)
!481 = !DILocation(line: 143, column: 5, scope: !470)
!482 = !DILocation(line: 143, column: 12, scope: !470)
!483 = !DILocation(line: 143, column: 25, scope: !470)
!484 = !DILocation(line: 143, column: 23, scope: !470)
!485 = !DILocation(line: 143, column: 34, scope: !470)
!486 = !DILocation(line: 143, column: 47, scope: !470)
!487 = !DILocation(line: 143, column: 55, scope: !470)
!488 = !DILocation(line: 143, column: 53, scope: !470)
!489 = !DILocation(line: 143, column: 37, scope: !470)
!490 = !DILocation(line: 143, column: 68, scope: !470)
!491 = !DILocation(line: 143, column: 81, scope: !470)
!492 = !DILocation(line: 143, column: 89, scope: !470)
!493 = !DILocation(line: 143, column: 87, scope: !470)
!494 = !DILocation(line: 143, column: 100, scope: !470)
!495 = !DILocation(line: 143, column: 71, scope: !470)
!496 = !DILocation(line: 0, scope: !470)
!497 = !DILocalVariable(name: "byte", scope: !498, file: !3, line: 145, type: !23)
!498 = distinct !DILexicalBlock(scope: !470, file: !3, line: 144, column: 5)
!499 = !DILocation(line: 145, column: 13, scope: !498)
!500 = !DILocation(line: 146, column: 18, scope: !498)
!501 = !DILocation(line: 146, column: 26, scope: !498)
!502 = !DILocation(line: 146, column: 24, scope: !498)
!503 = !DILocation(line: 146, column: 9, scope: !498)
!504 = !DILocation(line: 147, column: 45, scope: !498)
!505 = !DILocation(line: 147, column: 29, scope: !498)
!506 = !DILocation(line: 147, column: 9, scope: !498)
!507 = !DILocation(line: 147, column: 15, scope: !498)
!508 = !DILocation(line: 147, column: 27, scope: !498)
!509 = !DILocation(line: 148, column: 9, scope: !498)
!510 = distinct !{!510, !481, !511, !116}
!511 = !DILocation(line: 149, column: 5, scope: !470)
!512 = !DILocation(line: 151, column: 12, scope: !470)
!513 = !DILocation(line: 151, column: 5, scope: !470)
!514 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !515, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DISubroutineType(types: !516)
!516 = !{!23}
!517 = !DILocation(line: 158, column: 5, scope: !514)
!518 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !515, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DILocation(line: 163, column: 5, scope: !518)
!520 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !515, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DILocation(line: 168, column: 13, scope: !520)
!522 = !DILocation(line: 168, column: 20, scope: !520)
!523 = !DILocation(line: 168, column: 5, scope: !520)
!524 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!525 = !DILocation(line: 187, column: 16, scope: !524)
!526 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DILocation(line: 188, column: 16, scope: !526)
!528 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DILocation(line: 189, column: 16, scope: !528)
!530 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!531 = !DILocation(line: 190, column: 16, scope: !530)
!532 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DILocation(line: 191, column: 16, scope: !532)
!534 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DILocation(line: 192, column: 16, scope: !534)
!536 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DILocation(line: 193, column: 16, scope: !536)
!538 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DILocation(line: 194, column: 16, scope: !538)
!540 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DILocation(line: 195, column: 16, scope: !540)
!542 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DILocation(line: 198, column: 15, scope: !542)
!544 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DILocation(line: 199, column: 15, scope: !544)
!546 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 200, column: 15, scope: !546)
!548 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DILocation(line: 201, column: 15, scope: !548)
!550 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 202, column: 15, scope: !550)
!552 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 203, column: 15, scope: !552)
!554 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 204, column: 15, scope: !554)
!556 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 205, column: 15, scope: !556)
!558 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 206, column: 15, scope: !558)
