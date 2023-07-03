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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad() #0 !dbg !52 {
entry:
  %data = alloca i32, align 4
  %dataPtr1 = alloca i32*, align 8
  %dataPtr2 = alloca i32*, align 8
  %data1 = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data4 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32** %dataPtr1, metadata !57, metadata !DIExpression()), !dbg !59
  store i32* %data, i32** %dataPtr1, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata i32** %dataPtr2, metadata !60, metadata !DIExpression()), !dbg !61
  store i32* %data, i32** %dataPtr2, align 8, !dbg !61
  store i32 -1, i32* %data, align 4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !63, metadata !DIExpression()), !dbg !65
  %0 = load i32*, i32** %dataPtr1, align 8, !dbg !66
  %1 = load i32, i32* %0, align 4, !dbg !67
  store i32 %1, i32* %data1, align 4, !dbg !65
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !68, metadata !DIExpression()), !dbg !73
  %2 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !73
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 14, i1 false), !dbg !73
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !74
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !76
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %3), !dbg !77
  %cmp = icmp ne i8* %call, null, !dbg !78
  br i1 %cmp, label %if.then, label %if.else, !dbg !79

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !80
  %call3 = call i32 @atoi(i8* %arraydecay2) #7, !dbg !82
  store i32 %call3, i32* %data1, align 4, !dbg !83
  br label %if.end, !dbg !84

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !85
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %data1, align 4, !dbg !87
  %5 = load i32*, i32** %dataPtr1, align 8, !dbg !88
  store i32 %4, i32* %5, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %data4, metadata !90, metadata !DIExpression()), !dbg !92
  %6 = load i32*, i32** %dataPtr2, align 8, !dbg !93
  %7 = load i32, i32* %6, align 4, !dbg !94
  store i32 %7, i32* %data4, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %i, metadata !95, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !98, metadata !DIExpression()), !dbg !102
  %8 = bitcast [10 x i32]* %buffer to i8*, !dbg !102
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 40, i1 false), !dbg !102
  %9 = load i32, i32* %data4, align 4, !dbg !103
  %cmp5 = icmp sge i32 %9, 0, !dbg !105
  br i1 %cmp5, label %if.then6, label %if.else10, !dbg !106

if.then6:                                         ; preds = %if.end
  %10 = load i32, i32* %data4, align 4, !dbg !107
  %idxprom = sext i32 %10 to i64, !dbg !109
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !109
  store i32 1, i32* %arrayidx, align 4, !dbg !110
  store i32 0, i32* %i, align 4, !dbg !111
  br label %for.cond, !dbg !113

for.cond:                                         ; preds = %for.inc, %if.then6
  %11 = load i32, i32* %i, align 4, !dbg !114
  %cmp7 = icmp slt i32 %11, 10, !dbg !116
  br i1 %cmp7, label %for.body, label %for.end, !dbg !117

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !118
  %idxprom8 = sext i32 %12 to i64, !dbg !120
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom8, !dbg !120
  %13 = load i32, i32* %arrayidx9, align 4, !dbg !120
  call void @printIntLine(i32 %13), !dbg !121
  br label %for.inc, !dbg !122

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !123
  %inc = add nsw i32 %14, 1, !dbg !123
  store i32 %inc, i32* %i, align 4, !dbg !123
  br label %for.cond, !dbg !124, !llvm.loop !125

for.end:                                          ; preds = %for.cond
  br label %if.end11, !dbg !128

if.else10:                                        ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !129
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %for.end
  ret void, !dbg !131
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !132 {
entry:
  %data = alloca i32, align 4
  %dataPtr1 = alloca i32*, align 8
  %dataPtr2 = alloca i32*, align 8
  %data1 = alloca i32, align 4
  %data2 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32** %dataPtr1, metadata !135, metadata !DIExpression()), !dbg !136
  store i32* %data, i32** %dataPtr1, align 8, !dbg !136
  call void @llvm.dbg.declare(metadata i32** %dataPtr2, metadata !137, metadata !DIExpression()), !dbg !138
  store i32* %data, i32** %dataPtr2, align 8, !dbg !138
  store i32 -1, i32* %data, align 4, !dbg !139
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !140, metadata !DIExpression()), !dbg !142
  %0 = load i32*, i32** %dataPtr1, align 8, !dbg !143
  %1 = load i32, i32* %0, align 4, !dbg !144
  store i32 %1, i32* %data1, align 4, !dbg !142
  store i32 7, i32* %data1, align 4, !dbg !145
  %2 = load i32, i32* %data1, align 4, !dbg !146
  %3 = load i32*, i32** %dataPtr1, align 8, !dbg !147
  store i32 %2, i32* %3, align 4, !dbg !148
  call void @llvm.dbg.declare(metadata i32* %data2, metadata !149, metadata !DIExpression()), !dbg !151
  %4 = load i32*, i32** %dataPtr2, align 8, !dbg !152
  %5 = load i32, i32* %4, align 4, !dbg !153
  store i32 %5, i32* %data2, align 4, !dbg !151
  call void @llvm.dbg.declare(metadata i32* %i, metadata !154, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !157, metadata !DIExpression()), !dbg !158
  %6 = bitcast [10 x i32]* %buffer to i8*, !dbg !158
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 40, i1 false), !dbg !158
  %7 = load i32, i32* %data2, align 4, !dbg !159
  %cmp = icmp sge i32 %7, 0, !dbg !161
  br i1 %cmp, label %if.then, label %if.else, !dbg !162

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %data2, align 4, !dbg !163
  %idxprom = sext i32 %8 to i64, !dbg !165
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !165
  store i32 1, i32* %arrayidx, align 4, !dbg !166
  store i32 0, i32* %i, align 4, !dbg !167
  br label %for.cond, !dbg !169

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !dbg !170
  %cmp3 = icmp slt i32 %9, 10, !dbg !172
  br i1 %cmp3, label %for.body, label %for.end, !dbg !173

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !174
  %idxprom4 = sext i32 %10 to i64, !dbg !176
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !176
  %11 = load i32, i32* %arrayidx5, align 4, !dbg !176
  call void @printIntLine(i32 %11), !dbg !177
  br label %for.inc, !dbg !178

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !179
  %inc = add nsw i32 %12, 1, !dbg !179
  store i32 %inc, i32* %i, align 4, !dbg !179
  br label %for.cond, !dbg !180, !llvm.loop !181

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !183

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !184
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !186
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !187 {
entry:
  %data = alloca i32, align 4
  %dataPtr1 = alloca i32*, align 8
  %dataPtr2 = alloca i32*, align 8
  %data1 = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %data4 = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i32** %dataPtr1, metadata !190, metadata !DIExpression()), !dbg !191
  store i32* %data, i32** %dataPtr1, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata i32** %dataPtr2, metadata !192, metadata !DIExpression()), !dbg !193
  store i32* %data, i32** %dataPtr2, align 8, !dbg !193
  store i32 -1, i32* %data, align 4, !dbg !194
  call void @llvm.dbg.declare(metadata i32* %data1, metadata !195, metadata !DIExpression()), !dbg !197
  %0 = load i32*, i32** %dataPtr1, align 8, !dbg !198
  %1 = load i32, i32* %0, align 4, !dbg !199
  store i32 %1, i32* %data1, align 4, !dbg !197
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !200, metadata !DIExpression()), !dbg !202
  %2 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !202
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 14, i1 false), !dbg !202
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !203
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !205
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %3), !dbg !206
  %cmp = icmp ne i8* %call, null, !dbg !207
  br i1 %cmp, label %if.then, label %if.else, !dbg !208

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !209
  %call3 = call i32 @atoi(i8* %arraydecay2) #7, !dbg !211
  store i32 %call3, i32* %data1, align 4, !dbg !212
  br label %if.end, !dbg !213

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !214
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %data1, align 4, !dbg !216
  %5 = load i32*, i32** %dataPtr1, align 8, !dbg !217
  store i32 %4, i32* %5, align 4, !dbg !218
  call void @llvm.dbg.declare(metadata i32* %data4, metadata !219, metadata !DIExpression()), !dbg !221
  %6 = load i32*, i32** %dataPtr2, align 8, !dbg !222
  %7 = load i32, i32* %6, align 4, !dbg !223
  store i32 %7, i32* %data4, align 4, !dbg !221
  call void @llvm.dbg.declare(metadata i32* %i, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !227, metadata !DIExpression()), !dbg !228
  %8 = bitcast [10 x i32]* %buffer to i8*, !dbg !228
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 40, i1 false), !dbg !228
  %9 = load i32, i32* %data4, align 4, !dbg !229
  %cmp5 = icmp sge i32 %9, 0, !dbg !231
  br i1 %cmp5, label %land.lhs.true, label %if.else11, !dbg !232

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %data4, align 4, !dbg !233
  %cmp6 = icmp slt i32 %10, 10, !dbg !234
  br i1 %cmp6, label %if.then7, label %if.else11, !dbg !235

if.then7:                                         ; preds = %land.lhs.true
  %11 = load i32, i32* %data4, align 4, !dbg !236
  %idxprom = sext i32 %11 to i64, !dbg !238
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !238
  store i32 1, i32* %arrayidx, align 4, !dbg !239
  store i32 0, i32* %i, align 4, !dbg !240
  br label %for.cond, !dbg !242

for.cond:                                         ; preds = %for.inc, %if.then7
  %12 = load i32, i32* %i, align 4, !dbg !243
  %cmp8 = icmp slt i32 %12, 10, !dbg !245
  br i1 %cmp8, label %for.body, label %for.end, !dbg !246

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !dbg !247
  %idxprom9 = sext i32 %13 to i64, !dbg !249
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom9, !dbg !249
  %14 = load i32, i32* %arrayidx10, align 4, !dbg !249
  call void @printIntLine(i32 %14), !dbg !250
  br label %for.inc, !dbg !251

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !252
  %inc = add nsw i32 %15, 1, !dbg !252
  store i32 %inc, i32* %i, align 4, !dbg !252
  br label %for.cond, !dbg !253, !llvm.loop !254

for.end:                                          ; preds = %for.cond
  br label %if.end12, !dbg !256

if.else11:                                        ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !257
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %for.end
  ret void, !dbg !259
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_good() #0 !dbg !260 {
entry:
  call void @goodG2B(), !dbg !261
  call void @goodB2G(), !dbg !262
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !264 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !267, metadata !DIExpression()), !dbg !268
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !269
  %0 = load i8*, i8** %line.addr, align 8, !dbg !270
  %cmp = icmp ne i8* %0, null, !dbg !272
  br i1 %cmp, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !274
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !276
  br label %if.end, !dbg !277

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !278
  ret void, !dbg !279
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !280 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load i8*, i8** %line.addr, align 8, !dbg !283
  %cmp = icmp ne i8* %0, null, !dbg !285
  br i1 %cmp, label %if.then, label %if.end, !dbg !286

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !287
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !289
  br label %if.end, !dbg !290

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !292 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = load i32*, i32** %line.addr, align 8, !dbg !300
  %cmp = icmp ne i32* %0, null, !dbg !302
  br i1 %cmp, label %if.then, label %if.end, !dbg !303

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !304
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !306
  br label %if.end, !dbg !307

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !308
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !309 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !314
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !317 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !323
  %conv = sext i16 %0 to i32, !dbg !323
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !324
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !326 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !332
  %conv = fpext float %0 to double, !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !333
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !335 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !341
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !344 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !356 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !361, metadata !DIExpression()), !dbg !362
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !363
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !366 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !371
  %conv = sext i8 %0 to i32, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !374 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !379, metadata !DIExpression()), !dbg !383
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !384
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !385
  store i32 %0, i32* %arrayidx, align 4, !dbg !386
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !387
  store i32 0, i32* %arrayidx1, align 4, !dbg !388
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !389
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !390
  ret void, !dbg !391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !392 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !397
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !400 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !405
  %conv = zext i8 %0 to i32, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !408 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !417 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !427, metadata !DIExpression()), !dbg !428
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !429
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !430
  %1 = load i32, i32* %intOne, align 4, !dbg !430
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !431
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !432
  %3 = load i32, i32* %intTwo, align 4, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !435 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !439, metadata !DIExpression()), !dbg !440
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata i64* %i, metadata !443, metadata !DIExpression()), !dbg !444
  store i64 0, i64* %i, align 8, !dbg !445
  br label %for.cond, !dbg !447

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !448
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !450
  %cmp = icmp ult i64 %0, %1, !dbg !451
  br i1 %cmp, label %for.body, label %for.end, !dbg !452

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !453
  %3 = load i64, i64* %i, align 8, !dbg !455
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !453
  %4 = load i8, i8* %arrayidx, align 1, !dbg !453
  %conv = zext i8 %4 to i32, !dbg !453
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !456
  br label %for.inc, !dbg !457

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !458
  %inc = add i64 %5, 1, !dbg !458
  store i64 %inc, i64* %i, align 8, !dbg !458
  br label %for.cond, !dbg !459, !llvm.loop !460

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !462
  ret void, !dbg !463
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !464 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !467, metadata !DIExpression()), !dbg !468
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !469, metadata !DIExpression()), !dbg !470
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !473, metadata !DIExpression()), !dbg !474
  store i64 0, i64* %numWritten, align 8, !dbg !474
  br label %while.cond, !dbg !475

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !476
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !477
  %cmp = icmp ult i64 %0, %1, !dbg !478
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !479

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !480
  %2 = load i16*, i16** %call, align 8, !dbg !480
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !480
  %4 = load i64, i64* %numWritten, align 8, !dbg !480
  %mul = mul i64 2, %4, !dbg !480
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !480
  %5 = load i8, i8* %arrayidx, align 1, !dbg !480
  %conv = sext i8 %5 to i32, !dbg !480
  %idxprom = sext i32 %conv to i64, !dbg !480
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !480
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !480
  %conv2 = zext i16 %6 to i32, !dbg !480
  %and = and i32 %conv2, 4096, !dbg !480
  %tobool = icmp ne i32 %and, 0, !dbg !480
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !481

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !482
  %7 = load i16*, i16** %call3, align 8, !dbg !482
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !482
  %9 = load i64, i64* %numWritten, align 8, !dbg !482
  %mul4 = mul i64 2, %9, !dbg !482
  %add = add i64 %mul4, 1, !dbg !482
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !482
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !482
  %conv6 = sext i8 %10 to i32, !dbg !482
  %idxprom7 = sext i32 %conv6 to i64, !dbg !482
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !482
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !482
  %conv9 = zext i16 %11 to i32, !dbg !482
  %and10 = and i32 %conv9, 4096, !dbg !482
  %tobool11 = icmp ne i32 %and10, 0, !dbg !481
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !483
  br i1 %12, label %while.body, label %while.end, !dbg !475

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !484, metadata !DIExpression()), !dbg !486
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !487
  %14 = load i64, i64* %numWritten, align 8, !dbg !488
  %mul12 = mul i64 2, %14, !dbg !489
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !487
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !490
  %15 = load i32, i32* %byte, align 4, !dbg !491
  %conv15 = trunc i32 %15 to i8, !dbg !492
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !493
  %17 = load i64, i64* %numWritten, align 8, !dbg !494
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !493
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !495
  %18 = load i64, i64* %numWritten, align 8, !dbg !496
  %inc = add i64 %18, 1, !dbg !496
  store i64 %inc, i64* %numWritten, align 8, !dbg !496
  br label %while.cond, !dbg !475, !llvm.loop !497

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !499
  ret i64 %19, !dbg !500
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !501 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !504, metadata !DIExpression()), !dbg !505
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !506, metadata !DIExpression()), !dbg !507
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !508, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !510, metadata !DIExpression()), !dbg !511
  store i64 0, i64* %numWritten, align 8, !dbg !511
  br label %while.cond, !dbg !512

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !513
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !514
  %cmp = icmp ult i64 %0, %1, !dbg !515
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !516

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !517
  %3 = load i64, i64* %numWritten, align 8, !dbg !518
  %mul = mul i64 2, %3, !dbg !519
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !517
  %4 = load i32, i32* %arrayidx, align 4, !dbg !517
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !520
  %tobool = icmp ne i32 %call, 0, !dbg !520
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !521

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !522
  %6 = load i64, i64* %numWritten, align 8, !dbg !523
  %mul1 = mul i64 2, %6, !dbg !524
  %add = add i64 %mul1, 1, !dbg !525
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !522
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !522
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !526
  %tobool4 = icmp ne i32 %call3, 0, !dbg !521
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !527
  br i1 %8, label %while.body, label %while.end, !dbg !512

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !528, metadata !DIExpression()), !dbg !530
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !531
  %10 = load i64, i64* %numWritten, align 8, !dbg !532
  %mul5 = mul i64 2, %10, !dbg !533
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !531
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !534
  %11 = load i32, i32* %byte, align 4, !dbg !535
  %conv = trunc i32 %11 to i8, !dbg !536
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !537
  %13 = load i64, i64* %numWritten, align 8, !dbg !538
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !537
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !539
  %14 = load i64, i64* %numWritten, align 8, !dbg !540
  %inc = add i64 %14, 1, !dbg !540
  store i64 %inc, i64* %numWritten, align 8, !dbg !540
  br label %while.cond, !dbg !512, !llvm.loop !541

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !543
  ret i64 %15, !dbg !544
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !545 {
entry:
  ret i32 1, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !549 {
entry:
  ret i32 0, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !551 {
entry:
  %call = call i32 @rand() #9, !dbg !552
  %rem = srem i32 %call, 2, !dbg !553
  ret i32 %rem, !dbg !554
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !589 {
entry:
  ret void, !dbg !590
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_585/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_585/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad", scope: !45, file: !45, line: 25, type: !53, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 27, type: !23)
!56 = !DILocation(line: 27, column: 9, scope: !52)
!57 = !DILocalVariable(name: "dataPtr1", scope: !52, file: !45, line: 28, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!59 = !DILocation(line: 28, column: 10, scope: !52)
!60 = !DILocalVariable(name: "dataPtr2", scope: !52, file: !45, line: 29, type: !58)
!61 = !DILocation(line: 29, column: 10, scope: !52)
!62 = !DILocation(line: 31, column: 10, scope: !52)
!63 = !DILocalVariable(name: "data", scope: !64, file: !45, line: 33, type: !23)
!64 = distinct !DILexicalBlock(scope: !52, file: !45, line: 32, column: 5)
!65 = !DILocation(line: 33, column: 13, scope: !64)
!66 = !DILocation(line: 33, column: 21, scope: !64)
!67 = !DILocation(line: 33, column: 20, scope: !64)
!68 = !DILocalVariable(name: "inputBuffer", scope: !69, file: !45, line: 35, type: !70)
!69 = distinct !DILexicalBlock(scope: !64, file: !45, line: 34, column: 9)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 14)
!73 = !DILocation(line: 35, column: 18, scope: !69)
!74 = !DILocation(line: 37, column: 23, scope: !75)
!75 = distinct !DILexicalBlock(scope: !69, file: !45, line: 37, column: 17)
!76 = !DILocation(line: 37, column: 53, scope: !75)
!77 = !DILocation(line: 37, column: 17, scope: !75)
!78 = !DILocation(line: 37, column: 60, scope: !75)
!79 = !DILocation(line: 37, column: 17, scope: !69)
!80 = !DILocation(line: 40, column: 29, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !45, line: 38, column: 13)
!82 = !DILocation(line: 40, column: 24, scope: !81)
!83 = !DILocation(line: 40, column: 22, scope: !81)
!84 = !DILocation(line: 41, column: 13, scope: !81)
!85 = !DILocation(line: 44, column: 17, scope: !86)
!86 = distinct !DILexicalBlock(scope: !75, file: !45, line: 43, column: 13)
!87 = !DILocation(line: 47, column: 21, scope: !64)
!88 = !DILocation(line: 47, column: 10, scope: !64)
!89 = !DILocation(line: 47, column: 19, scope: !64)
!90 = !DILocalVariable(name: "data", scope: !91, file: !45, line: 50, type: !23)
!91 = distinct !DILexicalBlock(scope: !52, file: !45, line: 49, column: 5)
!92 = !DILocation(line: 50, column: 13, scope: !91)
!93 = !DILocation(line: 50, column: 21, scope: !91)
!94 = !DILocation(line: 50, column: 20, scope: !91)
!95 = !DILocalVariable(name: "i", scope: !96, file: !45, line: 52, type: !23)
!96 = distinct !DILexicalBlock(scope: !91, file: !45, line: 51, column: 9)
!97 = !DILocation(line: 52, column: 17, scope: !96)
!98 = !DILocalVariable(name: "buffer", scope: !96, file: !45, line: 53, type: !99)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 10)
!102 = !DILocation(line: 53, column: 17, scope: !96)
!103 = !DILocation(line: 56, column: 17, scope: !104)
!104 = distinct !DILexicalBlock(scope: !96, file: !45, line: 56, column: 17)
!105 = !DILocation(line: 56, column: 22, scope: !104)
!106 = !DILocation(line: 56, column: 17, scope: !96)
!107 = !DILocation(line: 58, column: 24, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !45, line: 57, column: 13)
!109 = !DILocation(line: 58, column: 17, scope: !108)
!110 = !DILocation(line: 58, column: 30, scope: !108)
!111 = !DILocation(line: 60, column: 23, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !45, line: 60, column: 17)
!113 = !DILocation(line: 60, column: 21, scope: !112)
!114 = !DILocation(line: 60, column: 28, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !45, line: 60, column: 17)
!116 = !DILocation(line: 60, column: 30, scope: !115)
!117 = !DILocation(line: 60, column: 17, scope: !112)
!118 = !DILocation(line: 62, column: 41, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !45, line: 61, column: 17)
!120 = !DILocation(line: 62, column: 34, scope: !119)
!121 = !DILocation(line: 62, column: 21, scope: !119)
!122 = !DILocation(line: 63, column: 17, scope: !119)
!123 = !DILocation(line: 60, column: 37, scope: !115)
!124 = !DILocation(line: 60, column: 17, scope: !115)
!125 = distinct !{!125, !117, !126, !127}
!126 = !DILocation(line: 63, column: 17, scope: !112)
!127 = !{!"llvm.loop.mustprogress"}
!128 = !DILocation(line: 64, column: 13, scope: !108)
!129 = !DILocation(line: 67, column: 17, scope: !130)
!130 = distinct !DILexicalBlock(scope: !104, file: !45, line: 66, column: 13)
!131 = !DILocation(line: 71, column: 1, scope: !52)
!132 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 78, type: !53, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!133 = !DILocalVariable(name: "data", scope: !132, file: !45, line: 80, type: !23)
!134 = !DILocation(line: 80, column: 9, scope: !132)
!135 = !DILocalVariable(name: "dataPtr1", scope: !132, file: !45, line: 81, type: !58)
!136 = !DILocation(line: 81, column: 10, scope: !132)
!137 = !DILocalVariable(name: "dataPtr2", scope: !132, file: !45, line: 82, type: !58)
!138 = !DILocation(line: 82, column: 10, scope: !132)
!139 = !DILocation(line: 84, column: 10, scope: !132)
!140 = !DILocalVariable(name: "data", scope: !141, file: !45, line: 86, type: !23)
!141 = distinct !DILexicalBlock(scope: !132, file: !45, line: 85, column: 5)
!142 = !DILocation(line: 86, column: 13, scope: !141)
!143 = !DILocation(line: 86, column: 21, scope: !141)
!144 = !DILocation(line: 86, column: 20, scope: !141)
!145 = !DILocation(line: 89, column: 14, scope: !141)
!146 = !DILocation(line: 90, column: 21, scope: !141)
!147 = !DILocation(line: 90, column: 10, scope: !141)
!148 = !DILocation(line: 90, column: 19, scope: !141)
!149 = !DILocalVariable(name: "data", scope: !150, file: !45, line: 93, type: !23)
!150 = distinct !DILexicalBlock(scope: !132, file: !45, line: 92, column: 5)
!151 = !DILocation(line: 93, column: 13, scope: !150)
!152 = !DILocation(line: 93, column: 21, scope: !150)
!153 = !DILocation(line: 93, column: 20, scope: !150)
!154 = !DILocalVariable(name: "i", scope: !155, file: !45, line: 95, type: !23)
!155 = distinct !DILexicalBlock(scope: !150, file: !45, line: 94, column: 9)
!156 = !DILocation(line: 95, column: 17, scope: !155)
!157 = !DILocalVariable(name: "buffer", scope: !155, file: !45, line: 96, type: !99)
!158 = !DILocation(line: 96, column: 17, scope: !155)
!159 = !DILocation(line: 99, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !45, line: 99, column: 17)
!161 = !DILocation(line: 99, column: 22, scope: !160)
!162 = !DILocation(line: 99, column: 17, scope: !155)
!163 = !DILocation(line: 101, column: 24, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !45, line: 100, column: 13)
!165 = !DILocation(line: 101, column: 17, scope: !164)
!166 = !DILocation(line: 101, column: 30, scope: !164)
!167 = !DILocation(line: 103, column: 23, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !45, line: 103, column: 17)
!169 = !DILocation(line: 103, column: 21, scope: !168)
!170 = !DILocation(line: 103, column: 28, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !45, line: 103, column: 17)
!172 = !DILocation(line: 103, column: 30, scope: !171)
!173 = !DILocation(line: 103, column: 17, scope: !168)
!174 = !DILocation(line: 105, column: 41, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !45, line: 104, column: 17)
!176 = !DILocation(line: 105, column: 34, scope: !175)
!177 = !DILocation(line: 105, column: 21, scope: !175)
!178 = !DILocation(line: 106, column: 17, scope: !175)
!179 = !DILocation(line: 103, column: 37, scope: !171)
!180 = !DILocation(line: 103, column: 17, scope: !171)
!181 = distinct !{!181, !173, !182, !127}
!182 = !DILocation(line: 106, column: 17, scope: !168)
!183 = !DILocation(line: 107, column: 13, scope: !164)
!184 = !DILocation(line: 110, column: 17, scope: !185)
!185 = distinct !DILexicalBlock(scope: !160, file: !45, line: 109, column: 13)
!186 = !DILocation(line: 114, column: 1, scope: !132)
!187 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 117, type: !53, scopeLine: 118, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!188 = !DILocalVariable(name: "data", scope: !187, file: !45, line: 119, type: !23)
!189 = !DILocation(line: 119, column: 9, scope: !187)
!190 = !DILocalVariable(name: "dataPtr1", scope: !187, file: !45, line: 120, type: !58)
!191 = !DILocation(line: 120, column: 10, scope: !187)
!192 = !DILocalVariable(name: "dataPtr2", scope: !187, file: !45, line: 121, type: !58)
!193 = !DILocation(line: 121, column: 10, scope: !187)
!194 = !DILocation(line: 123, column: 10, scope: !187)
!195 = !DILocalVariable(name: "data", scope: !196, file: !45, line: 125, type: !23)
!196 = distinct !DILexicalBlock(scope: !187, file: !45, line: 124, column: 5)
!197 = !DILocation(line: 125, column: 13, scope: !196)
!198 = !DILocation(line: 125, column: 21, scope: !196)
!199 = !DILocation(line: 125, column: 20, scope: !196)
!200 = !DILocalVariable(name: "inputBuffer", scope: !201, file: !45, line: 127, type: !70)
!201 = distinct !DILexicalBlock(scope: !196, file: !45, line: 126, column: 9)
!202 = !DILocation(line: 127, column: 18, scope: !201)
!203 = !DILocation(line: 129, column: 23, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !45, line: 129, column: 17)
!205 = !DILocation(line: 129, column: 53, scope: !204)
!206 = !DILocation(line: 129, column: 17, scope: !204)
!207 = !DILocation(line: 129, column: 60, scope: !204)
!208 = !DILocation(line: 129, column: 17, scope: !201)
!209 = !DILocation(line: 132, column: 29, scope: !210)
!210 = distinct !DILexicalBlock(scope: !204, file: !45, line: 130, column: 13)
!211 = !DILocation(line: 132, column: 24, scope: !210)
!212 = !DILocation(line: 132, column: 22, scope: !210)
!213 = !DILocation(line: 133, column: 13, scope: !210)
!214 = !DILocation(line: 136, column: 17, scope: !215)
!215 = distinct !DILexicalBlock(scope: !204, file: !45, line: 135, column: 13)
!216 = !DILocation(line: 139, column: 21, scope: !196)
!217 = !DILocation(line: 139, column: 10, scope: !196)
!218 = !DILocation(line: 139, column: 19, scope: !196)
!219 = !DILocalVariable(name: "data", scope: !220, file: !45, line: 142, type: !23)
!220 = distinct !DILexicalBlock(scope: !187, file: !45, line: 141, column: 5)
!221 = !DILocation(line: 142, column: 13, scope: !220)
!222 = !DILocation(line: 142, column: 21, scope: !220)
!223 = !DILocation(line: 142, column: 20, scope: !220)
!224 = !DILocalVariable(name: "i", scope: !225, file: !45, line: 144, type: !23)
!225 = distinct !DILexicalBlock(scope: !220, file: !45, line: 143, column: 9)
!226 = !DILocation(line: 144, column: 17, scope: !225)
!227 = !DILocalVariable(name: "buffer", scope: !225, file: !45, line: 145, type: !99)
!228 = !DILocation(line: 145, column: 17, scope: !225)
!229 = !DILocation(line: 147, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !45, line: 147, column: 17)
!231 = !DILocation(line: 147, column: 22, scope: !230)
!232 = !DILocation(line: 147, column: 27, scope: !230)
!233 = !DILocation(line: 147, column: 30, scope: !230)
!234 = !DILocation(line: 147, column: 35, scope: !230)
!235 = !DILocation(line: 147, column: 17, scope: !225)
!236 = !DILocation(line: 149, column: 24, scope: !237)
!237 = distinct !DILexicalBlock(scope: !230, file: !45, line: 148, column: 13)
!238 = !DILocation(line: 149, column: 17, scope: !237)
!239 = !DILocation(line: 149, column: 30, scope: !237)
!240 = !DILocation(line: 151, column: 23, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !45, line: 151, column: 17)
!242 = !DILocation(line: 151, column: 21, scope: !241)
!243 = !DILocation(line: 151, column: 28, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !45, line: 151, column: 17)
!245 = !DILocation(line: 151, column: 30, scope: !244)
!246 = !DILocation(line: 151, column: 17, scope: !241)
!247 = !DILocation(line: 153, column: 41, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !45, line: 152, column: 17)
!249 = !DILocation(line: 153, column: 34, scope: !248)
!250 = !DILocation(line: 153, column: 21, scope: !248)
!251 = !DILocation(line: 154, column: 17, scope: !248)
!252 = !DILocation(line: 151, column: 37, scope: !244)
!253 = !DILocation(line: 151, column: 17, scope: !244)
!254 = distinct !{!254, !246, !255, !127}
!255 = !DILocation(line: 154, column: 17, scope: !241)
!256 = !DILocation(line: 155, column: 13, scope: !237)
!257 = !DILocation(line: 158, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !230, file: !45, line: 157, column: 13)
!259 = !DILocation(line: 162, column: 1, scope: !187)
!260 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_good", scope: !45, file: !45, line: 164, type: !53, scopeLine: 165, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!261 = !DILocation(line: 166, column: 5, scope: !260)
!262 = !DILocation(line: 167, column: 5, scope: !260)
!263 = !DILocation(line: 168, column: 1, scope: !260)
!264 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !265, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !42}
!267 = !DILocalVariable(name: "line", arg: 1, scope: !264, file: !3, line: 11, type: !42)
!268 = !DILocation(line: 11, column: 25, scope: !264)
!269 = !DILocation(line: 13, column: 1, scope: !264)
!270 = !DILocation(line: 14, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !264, file: !3, line: 14, column: 8)
!272 = !DILocation(line: 14, column: 13, scope: !271)
!273 = !DILocation(line: 14, column: 8, scope: !264)
!274 = !DILocation(line: 16, column: 24, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 15, column: 5)
!276 = !DILocation(line: 16, column: 9, scope: !275)
!277 = !DILocation(line: 17, column: 5, scope: !275)
!278 = !DILocation(line: 18, column: 5, scope: !264)
!279 = !DILocation(line: 19, column: 1, scope: !264)
!280 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !265, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!281 = !DILocalVariable(name: "line", arg: 1, scope: !280, file: !3, line: 20, type: !42)
!282 = !DILocation(line: 20, column: 29, scope: !280)
!283 = !DILocation(line: 22, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !3, line: 22, column: 8)
!285 = !DILocation(line: 22, column: 13, scope: !284)
!286 = !DILocation(line: 22, column: 8, scope: !280)
!287 = !DILocation(line: 24, column: 24, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !3, line: 23, column: 5)
!289 = !DILocation(line: 24, column: 9, scope: !288)
!290 = !DILocation(line: 25, column: 5, scope: !288)
!291 = !DILocation(line: 26, column: 1, scope: !280)
!292 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !293, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !297, line: 74, baseType: !23)
!297 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!298 = !DILocalVariable(name: "line", arg: 1, scope: !292, file: !3, line: 27, type: !295)
!299 = !DILocation(line: 27, column: 29, scope: !292)
!300 = !DILocation(line: 29, column: 8, scope: !301)
!301 = distinct !DILexicalBlock(scope: !292, file: !3, line: 29, column: 8)
!302 = !DILocation(line: 29, column: 13, scope: !301)
!303 = !DILocation(line: 29, column: 8, scope: !292)
!304 = !DILocation(line: 31, column: 27, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !3, line: 30, column: 5)
!306 = !DILocation(line: 31, column: 9, scope: !305)
!307 = !DILocation(line: 32, column: 5, scope: !305)
!308 = !DILocation(line: 33, column: 1, scope: !292)
!309 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !310, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !23}
!312 = !DILocalVariable(name: "intNumber", arg: 1, scope: !309, file: !3, line: 35, type: !23)
!313 = !DILocation(line: 35, column: 24, scope: !309)
!314 = !DILocation(line: 37, column: 20, scope: !309)
!315 = !DILocation(line: 37, column: 5, scope: !309)
!316 = !DILocation(line: 38, column: 1, scope: !309)
!317 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !318, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!321 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !317, file: !3, line: 40, type: !320)
!322 = !DILocation(line: 40, column: 28, scope: !317)
!323 = !DILocation(line: 42, column: 21, scope: !317)
!324 = !DILocation(line: 42, column: 5, scope: !317)
!325 = !DILocation(line: 43, column: 1, scope: !317)
!326 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !327, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329}
!329 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!330 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !326, file: !3, line: 45, type: !329)
!331 = !DILocation(line: 45, column: 28, scope: !326)
!332 = !DILocation(line: 47, column: 20, scope: !326)
!333 = !DILocation(line: 47, column: 5, scope: !326)
!334 = !DILocation(line: 48, column: 1, scope: !326)
!335 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !336, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338}
!338 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!339 = !DILocalVariable(name: "longNumber", arg: 1, scope: !335, file: !3, line: 50, type: !338)
!340 = !DILocation(line: 50, column: 26, scope: !335)
!341 = !DILocation(line: 52, column: 21, scope: !335)
!342 = !DILocation(line: 52, column: 5, scope: !335)
!343 = !DILocation(line: 53, column: 1, scope: !335)
!344 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !345, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347}
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !348, line: 27, baseType: !349)
!348 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !350, line: 44, baseType: !338)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!351 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !344, file: !3, line: 55, type: !347)
!352 = !DILocation(line: 55, column: 33, scope: !344)
!353 = !DILocation(line: 57, column: 29, scope: !344)
!354 = !DILocation(line: 57, column: 5, scope: !344)
!355 = !DILocation(line: 58, column: 1, scope: !344)
!356 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !357, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359}
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !297, line: 46, baseType: !360)
!360 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!361 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !356, file: !3, line: 60, type: !359)
!362 = !DILocation(line: 60, column: 29, scope: !356)
!363 = !DILocation(line: 62, column: 21, scope: !356)
!364 = !DILocation(line: 62, column: 5, scope: !356)
!365 = !DILocation(line: 63, column: 1, scope: !356)
!366 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !367, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !43}
!369 = !DILocalVariable(name: "charHex", arg: 1, scope: !366, file: !3, line: 65, type: !43)
!370 = !DILocation(line: 65, column: 29, scope: !366)
!371 = !DILocation(line: 67, column: 22, scope: !366)
!372 = !DILocation(line: 67, column: 5, scope: !366)
!373 = !DILocation(line: 68, column: 1, scope: !366)
!374 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !375, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !296}
!377 = !DILocalVariable(name: "wideChar", arg: 1, scope: !374, file: !3, line: 70, type: !296)
!378 = !DILocation(line: 70, column: 29, scope: !374)
!379 = !DILocalVariable(name: "s", scope: !374, file: !3, line: 74, type: !380)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 64, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 2)
!383 = !DILocation(line: 74, column: 13, scope: !374)
!384 = !DILocation(line: 75, column: 16, scope: !374)
!385 = !DILocation(line: 75, column: 9, scope: !374)
!386 = !DILocation(line: 75, column: 14, scope: !374)
!387 = !DILocation(line: 76, column: 9, scope: !374)
!388 = !DILocation(line: 76, column: 14, scope: !374)
!389 = !DILocation(line: 77, column: 21, scope: !374)
!390 = !DILocation(line: 77, column: 5, scope: !374)
!391 = !DILocation(line: 78, column: 1, scope: !374)
!392 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !393, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !7}
!395 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !392, file: !3, line: 80, type: !7)
!396 = !DILocation(line: 80, column: 33, scope: !392)
!397 = !DILocation(line: 82, column: 20, scope: !392)
!398 = !DILocation(line: 82, column: 5, scope: !392)
!399 = !DILocation(line: 83, column: 1, scope: !392)
!400 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !401, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !25}
!403 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !400, file: !3, line: 85, type: !25)
!404 = !DILocation(line: 85, column: 45, scope: !400)
!405 = !DILocation(line: 87, column: 22, scope: !400)
!406 = !DILocation(line: 87, column: 5, scope: !400)
!407 = !DILocation(line: 88, column: 1, scope: !400)
!408 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !409, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!412 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !408, file: !3, line: 90, type: !411)
!413 = !DILocation(line: 90, column: 29, scope: !408)
!414 = !DILocation(line: 92, column: 20, scope: !408)
!415 = !DILocation(line: 92, column: 5, scope: !408)
!416 = !DILocation(line: 93, column: 1, scope: !408)
!417 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !418, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !422, line: 100, baseType: !423)
!422 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_585/source_code")
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !422, line: 96, size: 64, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !423, file: !422, line: 98, baseType: !23, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !423, file: !422, line: 99, baseType: !23, size: 32, offset: 32)
!427 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !417, file: !3, line: 95, type: !420)
!428 = !DILocation(line: 95, column: 40, scope: !417)
!429 = !DILocation(line: 97, column: 26, scope: !417)
!430 = !DILocation(line: 97, column: 47, scope: !417)
!431 = !DILocation(line: 97, column: 55, scope: !417)
!432 = !DILocation(line: 97, column: 76, scope: !417)
!433 = !DILocation(line: 97, column: 5, scope: !417)
!434 = !DILocation(line: 98, column: 1, scope: !417)
!435 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !436, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !438, !359}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!439 = !DILocalVariable(name: "bytes", arg: 1, scope: !435, file: !3, line: 100, type: !438)
!440 = !DILocation(line: 100, column: 38, scope: !435)
!441 = !DILocalVariable(name: "numBytes", arg: 2, scope: !435, file: !3, line: 100, type: !359)
!442 = !DILocation(line: 100, column: 52, scope: !435)
!443 = !DILocalVariable(name: "i", scope: !435, file: !3, line: 102, type: !359)
!444 = !DILocation(line: 102, column: 12, scope: !435)
!445 = !DILocation(line: 103, column: 12, scope: !446)
!446 = distinct !DILexicalBlock(scope: !435, file: !3, line: 103, column: 5)
!447 = !DILocation(line: 103, column: 10, scope: !446)
!448 = !DILocation(line: 103, column: 17, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !3, line: 103, column: 5)
!450 = !DILocation(line: 103, column: 21, scope: !449)
!451 = !DILocation(line: 103, column: 19, scope: !449)
!452 = !DILocation(line: 103, column: 5, scope: !446)
!453 = !DILocation(line: 105, column: 24, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !3, line: 104, column: 5)
!455 = !DILocation(line: 105, column: 30, scope: !454)
!456 = !DILocation(line: 105, column: 9, scope: !454)
!457 = !DILocation(line: 106, column: 5, scope: !454)
!458 = !DILocation(line: 103, column: 31, scope: !449)
!459 = !DILocation(line: 103, column: 5, scope: !449)
!460 = distinct !{!460, !452, !461, !127}
!461 = !DILocation(line: 106, column: 5, scope: !446)
!462 = !DILocation(line: 107, column: 5, scope: !435)
!463 = !DILocation(line: 108, column: 1, scope: !435)
!464 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !465, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!465 = !DISubroutineType(types: !466)
!466 = !{!359, !438, !359, !42}
!467 = !DILocalVariable(name: "bytes", arg: 1, scope: !464, file: !3, line: 113, type: !438)
!468 = !DILocation(line: 113, column: 39, scope: !464)
!469 = !DILocalVariable(name: "numBytes", arg: 2, scope: !464, file: !3, line: 113, type: !359)
!470 = !DILocation(line: 113, column: 53, scope: !464)
!471 = !DILocalVariable(name: "hex", arg: 3, scope: !464, file: !3, line: 113, type: !42)
!472 = !DILocation(line: 113, column: 71, scope: !464)
!473 = !DILocalVariable(name: "numWritten", scope: !464, file: !3, line: 115, type: !359)
!474 = !DILocation(line: 115, column: 12, scope: !464)
!475 = !DILocation(line: 121, column: 5, scope: !464)
!476 = !DILocation(line: 121, column: 12, scope: !464)
!477 = !DILocation(line: 121, column: 25, scope: !464)
!478 = !DILocation(line: 121, column: 23, scope: !464)
!479 = !DILocation(line: 121, column: 34, scope: !464)
!480 = !DILocation(line: 121, column: 37, scope: !464)
!481 = !DILocation(line: 121, column: 67, scope: !464)
!482 = !DILocation(line: 121, column: 70, scope: !464)
!483 = !DILocation(line: 0, scope: !464)
!484 = !DILocalVariable(name: "byte", scope: !485, file: !3, line: 123, type: !23)
!485 = distinct !DILexicalBlock(scope: !464, file: !3, line: 122, column: 5)
!486 = !DILocation(line: 123, column: 13, scope: !485)
!487 = !DILocation(line: 124, column: 17, scope: !485)
!488 = !DILocation(line: 124, column: 25, scope: !485)
!489 = !DILocation(line: 124, column: 23, scope: !485)
!490 = !DILocation(line: 124, column: 9, scope: !485)
!491 = !DILocation(line: 125, column: 45, scope: !485)
!492 = !DILocation(line: 125, column: 29, scope: !485)
!493 = !DILocation(line: 125, column: 9, scope: !485)
!494 = !DILocation(line: 125, column: 15, scope: !485)
!495 = !DILocation(line: 125, column: 27, scope: !485)
!496 = !DILocation(line: 126, column: 9, scope: !485)
!497 = distinct !{!497, !475, !498, !127}
!498 = !DILocation(line: 127, column: 5, scope: !464)
!499 = !DILocation(line: 129, column: 12, scope: !464)
!500 = !DILocation(line: 129, column: 5, scope: !464)
!501 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !502, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!502 = !DISubroutineType(types: !503)
!503 = !{!359, !438, !359, !295}
!504 = !DILocalVariable(name: "bytes", arg: 1, scope: !501, file: !3, line: 135, type: !438)
!505 = !DILocation(line: 135, column: 41, scope: !501)
!506 = !DILocalVariable(name: "numBytes", arg: 2, scope: !501, file: !3, line: 135, type: !359)
!507 = !DILocation(line: 135, column: 55, scope: !501)
!508 = !DILocalVariable(name: "hex", arg: 3, scope: !501, file: !3, line: 135, type: !295)
!509 = !DILocation(line: 135, column: 76, scope: !501)
!510 = !DILocalVariable(name: "numWritten", scope: !501, file: !3, line: 137, type: !359)
!511 = !DILocation(line: 137, column: 12, scope: !501)
!512 = !DILocation(line: 143, column: 5, scope: !501)
!513 = !DILocation(line: 143, column: 12, scope: !501)
!514 = !DILocation(line: 143, column: 25, scope: !501)
!515 = !DILocation(line: 143, column: 23, scope: !501)
!516 = !DILocation(line: 143, column: 34, scope: !501)
!517 = !DILocation(line: 143, column: 47, scope: !501)
!518 = !DILocation(line: 143, column: 55, scope: !501)
!519 = !DILocation(line: 143, column: 53, scope: !501)
!520 = !DILocation(line: 143, column: 37, scope: !501)
!521 = !DILocation(line: 143, column: 68, scope: !501)
!522 = !DILocation(line: 143, column: 81, scope: !501)
!523 = !DILocation(line: 143, column: 89, scope: !501)
!524 = !DILocation(line: 143, column: 87, scope: !501)
!525 = !DILocation(line: 143, column: 100, scope: !501)
!526 = !DILocation(line: 143, column: 71, scope: !501)
!527 = !DILocation(line: 0, scope: !501)
!528 = !DILocalVariable(name: "byte", scope: !529, file: !3, line: 145, type: !23)
!529 = distinct !DILexicalBlock(scope: !501, file: !3, line: 144, column: 5)
!530 = !DILocation(line: 145, column: 13, scope: !529)
!531 = !DILocation(line: 146, column: 18, scope: !529)
!532 = !DILocation(line: 146, column: 26, scope: !529)
!533 = !DILocation(line: 146, column: 24, scope: !529)
!534 = !DILocation(line: 146, column: 9, scope: !529)
!535 = !DILocation(line: 147, column: 45, scope: !529)
!536 = !DILocation(line: 147, column: 29, scope: !529)
!537 = !DILocation(line: 147, column: 9, scope: !529)
!538 = !DILocation(line: 147, column: 15, scope: !529)
!539 = !DILocation(line: 147, column: 27, scope: !529)
!540 = !DILocation(line: 148, column: 9, scope: !529)
!541 = distinct !{!541, !512, !542, !127}
!542 = !DILocation(line: 149, column: 5, scope: !501)
!543 = !DILocation(line: 151, column: 12, scope: !501)
!544 = !DILocation(line: 151, column: 5, scope: !501)
!545 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !546, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DISubroutineType(types: !547)
!547 = !{!23}
!548 = !DILocation(line: 158, column: 5, scope: !545)
!549 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !546, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 163, column: 5, scope: !549)
!551 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !546, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 168, column: 13, scope: !551)
!553 = !DILocation(line: 168, column: 20, scope: !551)
!554 = !DILocation(line: 168, column: 5, scope: !551)
!555 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 187, column: 16, scope: !555)
!557 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 188, column: 16, scope: !557)
!559 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 189, column: 16, scope: !559)
!561 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 190, column: 16, scope: !561)
!563 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 191, column: 16, scope: !563)
!565 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 192, column: 16, scope: !565)
!567 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 193, column: 16, scope: !567)
!569 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 194, column: 16, scope: !569)
!571 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 195, column: 16, scope: !571)
!573 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 198, column: 15, scope: !573)
!575 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 199, column: 15, scope: !575)
!577 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 200, column: 15, scope: !577)
!579 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 201, column: 15, scope: !579)
!581 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 202, column: 15, scope: !581)
!583 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 203, column: 15, scope: !583)
!585 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 204, column: 15, scope: !585)
!587 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 205, column: 15, scope: !587)
!589 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 206, column: 15, scope: !589)
