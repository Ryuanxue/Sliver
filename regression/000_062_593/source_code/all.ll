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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51_bad() #0 !dbg !54 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !57, metadata !DIExpression()), !dbg !58
  store i32 -1, i32* %data, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !60, metadata !DIExpression()), !dbg !65
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !66
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !68
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !69
  %cmp = icmp ne i8* %call, null, !dbg !70
  br i1 %cmp, label %if.then, label %if.else, !dbg !71

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !72
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !74
  store i32 %call2, i32* %data, align 4, !dbg !75
  br label %if.end, !dbg !76

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !77
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !79
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_badSink(i32 %2), !dbg !80
  ret void, !dbg !81
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !82 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !83, metadata !DIExpression()), !dbg !84
  store i32 -1, i32* %data, align 4, !dbg !85
  store i32 7, i32* %data, align 4, !dbg !86
  %0 = load i32, i32* %data, align 4, !dbg !87
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodG2BSink(i32 %0), !dbg !88
  ret void, !dbg !89
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !90 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !91, metadata !DIExpression()), !dbg !92
  store i32 -1, i32* %data, align 4, !dbg !93
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !94, metadata !DIExpression()), !dbg !96
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !96
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !96
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !97
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !99
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !100
  %cmp = icmp ne i8* %call, null, !dbg !101
  br i1 %cmp, label %if.then, label %if.else, !dbg !102

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !103
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !105
  store i32 %call2, i32* %data, align 4, !dbg !106
  br label %if.end, !dbg !107

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !108
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data, align 4, !dbg !110
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink(i32 %2), !dbg !111
  ret void, !dbg !112
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51_good() #0 !dbg !113 {
entry:
  call void @goodG2B(), !dbg !114
  call void @goodB2G(), !dbg !115
  ret void, !dbg !116
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_badSink(i32 %data) #0 !dbg !117 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %i, metadata !122, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !125, metadata !DIExpression()), !dbg !129
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !129
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !129
  %1 = load i32, i32* %data.addr, align 4, !dbg !130
  %cmp = icmp sge i32 %1, 0, !dbg !132
  br i1 %cmp, label %if.then, label %if.else, !dbg !133

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !134
  %idxprom = sext i32 %2 to i64, !dbg !136
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !136
  store i32 1, i32* %arrayidx, align 4, !dbg !137
  store i32 0, i32* %i, align 4, !dbg !138
  br label %for.cond, !dbg !140

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !141
  %cmp1 = icmp slt i32 %3, 10, !dbg !143
  br i1 %cmp1, label %for.body, label %for.end, !dbg !144

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !145
  %idxprom2 = sext i32 %4 to i64, !dbg !147
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !147
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !147
  call void @printIntLine(i32 %5), !dbg !148
  br label %for.inc, !dbg !149

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !150
  %inc = add nsw i32 %6, 1, !dbg !150
  store i32 %inc, i32* %i, align 4, !dbg !150
  br label %for.cond, !dbg !151, !llvm.loop !152

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !155

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !156
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !158
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodG2BSink(i32 %data) #0 !dbg !159 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %i, metadata !162, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !166
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !166
  %1 = load i32, i32* %data.addr, align 4, !dbg !167
  %cmp = icmp sge i32 %1, 0, !dbg !169
  br i1 %cmp, label %if.then, label %if.else, !dbg !170

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !171
  %idxprom = sext i32 %2 to i64, !dbg !173
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !173
  store i32 1, i32* %arrayidx, align 4, !dbg !174
  store i32 0, i32* %i, align 4, !dbg !175
  br label %for.cond, !dbg !177

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !178
  %cmp1 = icmp slt i32 %3, 10, !dbg !180
  br i1 %cmp1, label %for.body, label %for.end, !dbg !181

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !182
  %idxprom2 = sext i32 %4 to i64, !dbg !184
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !184
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !184
  call void @printIntLine(i32 %5), !dbg !185
  br label %for.inc, !dbg !186

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !187
  %inc = add nsw i32 %6, 1, !dbg !187
  store i32 %inc, i32* %i, align 4, !dbg !187
  br label %for.cond, !dbg !188, !llvm.loop !189

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !191

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !192
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !194
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink(i32 %data) #0 !dbg !195 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata i32* %i, metadata !198, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !201, metadata !DIExpression()), !dbg !202
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !202
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !202
  %1 = load i32, i32* %data.addr, align 4, !dbg !203
  %cmp = icmp sge i32 %1, 0, !dbg !205
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !206

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !207
  %cmp1 = icmp slt i32 %2, 10, !dbg !208
  br i1 %cmp1, label %if.then, label %if.else, !dbg !209

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !210
  %idxprom = sext i32 %3 to i64, !dbg !212
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !212
  store i32 1, i32* %arrayidx, align 4, !dbg !213
  store i32 0, i32* %i, align 4, !dbg !214
  br label %for.cond, !dbg !216

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !217
  %cmp2 = icmp slt i32 %4, 10, !dbg !219
  br i1 %cmp2, label %for.body, label %for.end, !dbg !220

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !221
  %idxprom3 = sext i32 %5 to i64, !dbg !223
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !223
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !223
  call void @printIntLine(i32 %6), !dbg !224
  br label %for.inc, !dbg !225

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !226
  %inc = add nsw i32 %7, 1, !dbg !226
  store i32 %inc, i32* %i, align 4, !dbg !226
  br label %for.cond, !dbg !227, !llvm.loop !228

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !230

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !231
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !234 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !237, metadata !DIExpression()), !dbg !238
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !239
  %0 = load i8*, i8** %line.addr, align 8, !dbg !240
  %cmp = icmp ne i8* %0, null, !dbg !242
  br i1 %cmp, label %if.then, label %if.end, !dbg !243

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !244
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !246
  br label %if.end, !dbg !247

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !248
  ret void, !dbg !249
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !250 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = load i8*, i8** %line.addr, align 8, !dbg !253
  %cmp = icmp ne i8* %0, null, !dbg !255
  br i1 %cmp, label %if.then, label %if.end, !dbg !256

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !257
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !259
  br label %if.end, !dbg !260

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !261
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !262 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = load i32*, i32** %line.addr, align 8, !dbg !270
  %cmp = icmp ne i32* %0, null, !dbg !272
  br i1 %cmp, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !274
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.12, i64 0, i64 0), i32* %1), !dbg !276
  br label %if.end, !dbg !277

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !278
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !279 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !282
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !283
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !285 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !291
  %conv = sext i16 %0 to i32, !dbg !291
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !292
  ret void, !dbg !293
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !294 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !300
  %conv = fpext float %0 to double, !dbg !300
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !301
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !303 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !307, metadata !DIExpression()), !dbg !308
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !309
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !310
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !312 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !321
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !324 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !331
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !332
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !334 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !339
  %conv = sext i8 %0 to i32, !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !342 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !347, metadata !DIExpression()), !dbg !351
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !352
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !353
  store i32 %0, i32* %arrayidx, align 4, !dbg !354
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !355
  store i32 0, i32* %arrayidx1, align 4, !dbg !356
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !357
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !358
  ret void, !dbg !359
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !360 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !368 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !373
  %conv = zext i8 %0 to i32, !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !374
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !376 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !382
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !383
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !385 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !397
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !398
  %1 = load i32, i32* %intOne, align 4, !dbg !398
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !399
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !400
  %3 = load i32, i32* %intTwo, align 4, !dbg !400
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !401
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !403 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !407, metadata !DIExpression()), !dbg !408
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !409, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata i64* %i, metadata !411, metadata !DIExpression()), !dbg !412
  store i64 0, i64* %i, align 8, !dbg !413
  br label %for.cond, !dbg !415

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !416
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !418
  %cmp = icmp ult i64 %0, %1, !dbg !419
  br i1 %cmp, label %for.body, label %for.end, !dbg !420

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !421
  %3 = load i64, i64* %i, align 8, !dbg !423
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !421
  %4 = load i8, i8* %arrayidx, align 1, !dbg !421
  %conv = zext i8 %4 to i32, !dbg !421
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !424
  br label %for.inc, !dbg !425

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !426
  %inc = add i64 %5, 1, !dbg !426
  store i64 %inc, i64* %i, align 8, !dbg !426
  br label %for.cond, !dbg !427, !llvm.loop !428

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !430
  ret void, !dbg !431
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !432 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !435, metadata !DIExpression()), !dbg !436
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !437, metadata !DIExpression()), !dbg !438
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !439, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !441, metadata !DIExpression()), !dbg !442
  store i64 0, i64* %numWritten, align 8, !dbg !442
  br label %while.cond, !dbg !443

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !444
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !445
  %cmp = icmp ult i64 %0, %1, !dbg !446
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !447

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !448
  %2 = load i16*, i16** %call, align 8, !dbg !448
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !448
  %4 = load i64, i64* %numWritten, align 8, !dbg !448
  %mul = mul i64 2, %4, !dbg !448
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !448
  %5 = load i8, i8* %arrayidx, align 1, !dbg !448
  %conv = sext i8 %5 to i32, !dbg !448
  %idxprom = sext i32 %conv to i64, !dbg !448
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !448
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !448
  %conv2 = zext i16 %6 to i32, !dbg !448
  %and = and i32 %conv2, 4096, !dbg !448
  %tobool = icmp ne i32 %and, 0, !dbg !448
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !449

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !450
  %7 = load i16*, i16** %call3, align 8, !dbg !450
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !450
  %9 = load i64, i64* %numWritten, align 8, !dbg !450
  %mul4 = mul i64 2, %9, !dbg !450
  %add = add i64 %mul4, 1, !dbg !450
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !450
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !450
  %conv6 = sext i8 %10 to i32, !dbg !450
  %idxprom7 = sext i32 %conv6 to i64, !dbg !450
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !450
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !450
  %conv9 = zext i16 %11 to i32, !dbg !450
  %and10 = and i32 %conv9, 4096, !dbg !450
  %tobool11 = icmp ne i32 %and10, 0, !dbg !449
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !451
  br i1 %12, label %while.body, label %while.end, !dbg !443

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !452, metadata !DIExpression()), !dbg !454
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !455
  %14 = load i64, i64* %numWritten, align 8, !dbg !456
  %mul12 = mul i64 2, %14, !dbg !457
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !455
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !458
  %15 = load i32, i32* %byte, align 4, !dbg !459
  %conv15 = trunc i32 %15 to i8, !dbg !460
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !461
  %17 = load i64, i64* %numWritten, align 8, !dbg !462
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !461
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !463
  %18 = load i64, i64* %numWritten, align 8, !dbg !464
  %inc = add i64 %18, 1, !dbg !464
  store i64 %inc, i64* %numWritten, align 8, !dbg !464
  br label %while.cond, !dbg !443, !llvm.loop !465

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !467
  ret i64 %19, !dbg !468
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !469 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !472, metadata !DIExpression()), !dbg !473
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !474, metadata !DIExpression()), !dbg !475
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !476, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !478, metadata !DIExpression()), !dbg !479
  store i64 0, i64* %numWritten, align 8, !dbg !479
  br label %while.cond, !dbg !480

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !481
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !482
  %cmp = icmp ult i64 %0, %1, !dbg !483
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !484

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !485
  %3 = load i64, i64* %numWritten, align 8, !dbg !486
  %mul = mul i64 2, %3, !dbg !487
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !485
  %4 = load i32, i32* %arrayidx, align 4, !dbg !485
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !488
  %tobool = icmp ne i32 %call, 0, !dbg !488
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !489

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !490
  %6 = load i64, i64* %numWritten, align 8, !dbg !491
  %mul1 = mul i64 2, %6, !dbg !492
  %add = add i64 %mul1, 1, !dbg !493
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !490
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !490
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !494
  %tobool4 = icmp ne i32 %call3, 0, !dbg !489
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !495
  br i1 %8, label %while.body, label %while.end, !dbg !480

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !496, metadata !DIExpression()), !dbg !498
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !499
  %10 = load i64, i64* %numWritten, align 8, !dbg !500
  %mul5 = mul i64 2, %10, !dbg !501
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !499
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !502
  %11 = load i32, i32* %byte, align 4, !dbg !503
  %conv = trunc i32 %11 to i8, !dbg !504
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !505
  %13 = load i64, i64* %numWritten, align 8, !dbg !506
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !505
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !507
  %14 = load i64, i64* %numWritten, align 8, !dbg !508
  %inc = add i64 %14, 1, !dbg !508
  store i64 %inc, i64* %numWritten, align 8, !dbg !508
  br label %while.cond, !dbg !480, !llvm.loop !509

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !511
  ret i64 %15, !dbg !512
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !513 {
entry:
  ret i32 1, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !517 {
entry:
  ret i32 0, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !519 {
entry:
  %call = call i32 @rand() #9, !dbg !520
  %rem = srem i32 %call, 2, !dbg !521
  ret i32 %rem, !dbg !522
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !523 {
entry:
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !557 {
entry:
  ret void, !dbg !558
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

!llvm.dbg.cu = !{!44, !48, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_593/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_593/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_593/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51_bad", scope: !45, file: !45, line: 27, type: !55, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 29, type: !23)
!58 = !DILocation(line: 29, column: 9, scope: !54)
!59 = !DILocation(line: 31, column: 10, scope: !54)
!60 = !DILocalVariable(name: "inputBuffer", scope: !61, file: !45, line: 33, type: !62)
!61 = distinct !DILexicalBlock(scope: !54, file: !45, line: 32, column: 5)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 14)
!65 = !DILocation(line: 33, column: 14, scope: !61)
!66 = !DILocation(line: 35, column: 19, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !45, line: 35, column: 13)
!68 = !DILocation(line: 35, column: 49, scope: !67)
!69 = !DILocation(line: 35, column: 13, scope: !67)
!70 = !DILocation(line: 35, column: 56, scope: !67)
!71 = !DILocation(line: 35, column: 13, scope: !61)
!72 = !DILocation(line: 38, column: 25, scope: !73)
!73 = distinct !DILexicalBlock(scope: !67, file: !45, line: 36, column: 9)
!74 = !DILocation(line: 38, column: 20, scope: !73)
!75 = !DILocation(line: 38, column: 18, scope: !73)
!76 = !DILocation(line: 39, column: 9, scope: !73)
!77 = !DILocation(line: 42, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !67, file: !45, line: 41, column: 9)
!79 = !DILocation(line: 45, column: 66, scope: !54)
!80 = !DILocation(line: 45, column: 5, scope: !54)
!81 = !DILocation(line: 46, column: 1, scope: !54)
!82 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 54, type: !55, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!83 = !DILocalVariable(name: "data", scope: !82, file: !45, line: 56, type: !23)
!84 = !DILocation(line: 56, column: 9, scope: !82)
!85 = !DILocation(line: 58, column: 10, scope: !82)
!86 = !DILocation(line: 61, column: 10, scope: !82)
!87 = !DILocation(line: 62, column: 70, scope: !82)
!88 = !DILocation(line: 62, column: 5, scope: !82)
!89 = !DILocation(line: 63, column: 1, scope: !82)
!90 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 67, type: !55, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!91 = !DILocalVariable(name: "data", scope: !90, file: !45, line: 69, type: !23)
!92 = !DILocation(line: 69, column: 9, scope: !90)
!93 = !DILocation(line: 71, column: 10, scope: !90)
!94 = !DILocalVariable(name: "inputBuffer", scope: !95, file: !45, line: 73, type: !62)
!95 = distinct !DILexicalBlock(scope: !90, file: !45, line: 72, column: 5)
!96 = !DILocation(line: 73, column: 14, scope: !95)
!97 = !DILocation(line: 75, column: 19, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !45, line: 75, column: 13)
!99 = !DILocation(line: 75, column: 49, scope: !98)
!100 = !DILocation(line: 75, column: 13, scope: !98)
!101 = !DILocation(line: 75, column: 56, scope: !98)
!102 = !DILocation(line: 75, column: 13, scope: !95)
!103 = !DILocation(line: 78, column: 25, scope: !104)
!104 = distinct !DILexicalBlock(scope: !98, file: !45, line: 76, column: 9)
!105 = !DILocation(line: 78, column: 20, scope: !104)
!106 = !DILocation(line: 78, column: 18, scope: !104)
!107 = !DILocation(line: 79, column: 9, scope: !104)
!108 = !DILocation(line: 82, column: 13, scope: !109)
!109 = distinct !DILexicalBlock(scope: !98, file: !45, line: 81, column: 9)
!110 = !DILocation(line: 85, column: 70, scope: !90)
!111 = !DILocation(line: 85, column: 5, scope: !90)
!112 = !DILocation(line: 86, column: 1, scope: !90)
!113 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51_good", scope: !45, file: !45, line: 88, type: !55, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!114 = !DILocation(line: 90, column: 5, scope: !113)
!115 = !DILocation(line: 91, column: 5, scope: !113)
!116 = !DILocation(line: 92, column: 1, scope: !113)
!117 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_badSink", scope: !49, file: !49, line: 24, type: !118, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !23}
!120 = !DILocalVariable(name: "data", arg: 1, scope: !117, file: !49, line: 24, type: !23)
!121 = !DILocation(line: 24, column: 71, scope: !117)
!122 = !DILocalVariable(name: "i", scope: !123, file: !49, line: 27, type: !23)
!123 = distinct !DILexicalBlock(scope: !117, file: !49, line: 26, column: 5)
!124 = !DILocation(line: 27, column: 13, scope: !123)
!125 = !DILocalVariable(name: "buffer", scope: !123, file: !49, line: 28, type: !126)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 10)
!129 = !DILocation(line: 28, column: 13, scope: !123)
!130 = !DILocation(line: 31, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !49, line: 31, column: 13)
!132 = !DILocation(line: 31, column: 18, scope: !131)
!133 = !DILocation(line: 31, column: 13, scope: !123)
!134 = !DILocation(line: 33, column: 20, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !49, line: 32, column: 9)
!136 = !DILocation(line: 33, column: 13, scope: !135)
!137 = !DILocation(line: 33, column: 26, scope: !135)
!138 = !DILocation(line: 35, column: 19, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !49, line: 35, column: 13)
!140 = !DILocation(line: 35, column: 17, scope: !139)
!141 = !DILocation(line: 35, column: 24, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !49, line: 35, column: 13)
!143 = !DILocation(line: 35, column: 26, scope: !142)
!144 = !DILocation(line: 35, column: 13, scope: !139)
!145 = !DILocation(line: 37, column: 37, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !49, line: 36, column: 13)
!147 = !DILocation(line: 37, column: 30, scope: !146)
!148 = !DILocation(line: 37, column: 17, scope: !146)
!149 = !DILocation(line: 38, column: 13, scope: !146)
!150 = !DILocation(line: 35, column: 33, scope: !142)
!151 = !DILocation(line: 35, column: 13, scope: !142)
!152 = distinct !{!152, !144, !153, !154}
!153 = !DILocation(line: 38, column: 13, scope: !139)
!154 = !{!"llvm.loop.mustprogress"}
!155 = !DILocation(line: 39, column: 9, scope: !135)
!156 = !DILocation(line: 42, column: 13, scope: !157)
!157 = distinct !DILexicalBlock(scope: !131, file: !49, line: 41, column: 9)
!158 = !DILocation(line: 45, column: 1, scope: !117)
!159 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodG2BSink", scope: !49, file: !49, line: 52, type: !118, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!160 = !DILocalVariable(name: "data", arg: 1, scope: !159, file: !49, line: 52, type: !23)
!161 = !DILocation(line: 52, column: 75, scope: !159)
!162 = !DILocalVariable(name: "i", scope: !163, file: !49, line: 55, type: !23)
!163 = distinct !DILexicalBlock(scope: !159, file: !49, line: 54, column: 5)
!164 = !DILocation(line: 55, column: 13, scope: !163)
!165 = !DILocalVariable(name: "buffer", scope: !163, file: !49, line: 56, type: !126)
!166 = !DILocation(line: 56, column: 13, scope: !163)
!167 = !DILocation(line: 59, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !163, file: !49, line: 59, column: 13)
!169 = !DILocation(line: 59, column: 18, scope: !168)
!170 = !DILocation(line: 59, column: 13, scope: !163)
!171 = !DILocation(line: 61, column: 20, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !49, line: 60, column: 9)
!173 = !DILocation(line: 61, column: 13, scope: !172)
!174 = !DILocation(line: 61, column: 26, scope: !172)
!175 = !DILocation(line: 63, column: 19, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !49, line: 63, column: 13)
!177 = !DILocation(line: 63, column: 17, scope: !176)
!178 = !DILocation(line: 63, column: 24, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !49, line: 63, column: 13)
!180 = !DILocation(line: 63, column: 26, scope: !179)
!181 = !DILocation(line: 63, column: 13, scope: !176)
!182 = !DILocation(line: 65, column: 37, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !49, line: 64, column: 13)
!184 = !DILocation(line: 65, column: 30, scope: !183)
!185 = !DILocation(line: 65, column: 17, scope: !183)
!186 = !DILocation(line: 66, column: 13, scope: !183)
!187 = !DILocation(line: 63, column: 33, scope: !179)
!188 = !DILocation(line: 63, column: 13, scope: !179)
!189 = distinct !{!189, !181, !190, !154}
!190 = !DILocation(line: 66, column: 13, scope: !176)
!191 = !DILocation(line: 67, column: 9, scope: !172)
!192 = !DILocation(line: 70, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !168, file: !49, line: 69, column: 9)
!194 = !DILocation(line: 73, column: 1, scope: !159)
!195 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink", scope: !49, file: !49, line: 76, type: !118, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!196 = !DILocalVariable(name: "data", arg: 1, scope: !195, file: !49, line: 76, type: !23)
!197 = !DILocation(line: 76, column: 75, scope: !195)
!198 = !DILocalVariable(name: "i", scope: !199, file: !49, line: 79, type: !23)
!199 = distinct !DILexicalBlock(scope: !195, file: !49, line: 78, column: 5)
!200 = !DILocation(line: 79, column: 13, scope: !199)
!201 = !DILocalVariable(name: "buffer", scope: !199, file: !49, line: 80, type: !126)
!202 = !DILocation(line: 80, column: 13, scope: !199)
!203 = !DILocation(line: 82, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !49, line: 82, column: 13)
!205 = !DILocation(line: 82, column: 18, scope: !204)
!206 = !DILocation(line: 82, column: 23, scope: !204)
!207 = !DILocation(line: 82, column: 26, scope: !204)
!208 = !DILocation(line: 82, column: 31, scope: !204)
!209 = !DILocation(line: 82, column: 13, scope: !199)
!210 = !DILocation(line: 84, column: 20, scope: !211)
!211 = distinct !DILexicalBlock(scope: !204, file: !49, line: 83, column: 9)
!212 = !DILocation(line: 84, column: 13, scope: !211)
!213 = !DILocation(line: 84, column: 26, scope: !211)
!214 = !DILocation(line: 86, column: 19, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !49, line: 86, column: 13)
!216 = !DILocation(line: 86, column: 17, scope: !215)
!217 = !DILocation(line: 86, column: 24, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !49, line: 86, column: 13)
!219 = !DILocation(line: 86, column: 26, scope: !218)
!220 = !DILocation(line: 86, column: 13, scope: !215)
!221 = !DILocation(line: 88, column: 37, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !49, line: 87, column: 13)
!223 = !DILocation(line: 88, column: 30, scope: !222)
!224 = !DILocation(line: 88, column: 17, scope: !222)
!225 = !DILocation(line: 89, column: 13, scope: !222)
!226 = !DILocation(line: 86, column: 33, scope: !218)
!227 = !DILocation(line: 86, column: 13, scope: !218)
!228 = distinct !{!228, !220, !229, !154}
!229 = !DILocation(line: 89, column: 13, scope: !215)
!230 = !DILocation(line: 90, column: 9, scope: !211)
!231 = !DILocation(line: 93, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !204, file: !49, line: 92, column: 9)
!233 = !DILocation(line: 96, column: 1, scope: !195)
!234 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !235, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !42}
!237 = !DILocalVariable(name: "line", arg: 1, scope: !234, file: !3, line: 11, type: !42)
!238 = !DILocation(line: 11, column: 25, scope: !234)
!239 = !DILocation(line: 13, column: 1, scope: !234)
!240 = !DILocation(line: 14, column: 8, scope: !241)
!241 = distinct !DILexicalBlock(scope: !234, file: !3, line: 14, column: 8)
!242 = !DILocation(line: 14, column: 13, scope: !241)
!243 = !DILocation(line: 14, column: 8, scope: !234)
!244 = !DILocation(line: 16, column: 24, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !3, line: 15, column: 5)
!246 = !DILocation(line: 16, column: 9, scope: !245)
!247 = !DILocation(line: 17, column: 5, scope: !245)
!248 = !DILocation(line: 18, column: 5, scope: !234)
!249 = !DILocation(line: 19, column: 1, scope: !234)
!250 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !235, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!251 = !DILocalVariable(name: "line", arg: 1, scope: !250, file: !3, line: 20, type: !42)
!252 = !DILocation(line: 20, column: 29, scope: !250)
!253 = !DILocation(line: 22, column: 8, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !3, line: 22, column: 8)
!255 = !DILocation(line: 22, column: 13, scope: !254)
!256 = !DILocation(line: 22, column: 8, scope: !250)
!257 = !DILocation(line: 24, column: 24, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 23, column: 5)
!259 = !DILocation(line: 24, column: 9, scope: !258)
!260 = !DILocation(line: 25, column: 5, scope: !258)
!261 = !DILocation(line: 26, column: 1, scope: !250)
!262 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !263, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !267, line: 74, baseType: !23)
!267 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!268 = !DILocalVariable(name: "line", arg: 1, scope: !262, file: !3, line: 27, type: !265)
!269 = !DILocation(line: 27, column: 29, scope: !262)
!270 = !DILocation(line: 29, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !262, file: !3, line: 29, column: 8)
!272 = !DILocation(line: 29, column: 13, scope: !271)
!273 = !DILocation(line: 29, column: 8, scope: !262)
!274 = !DILocation(line: 31, column: 27, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 30, column: 5)
!276 = !DILocation(line: 31, column: 9, scope: !275)
!277 = !DILocation(line: 32, column: 5, scope: !275)
!278 = !DILocation(line: 33, column: 1, scope: !262)
!279 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !118, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!280 = !DILocalVariable(name: "intNumber", arg: 1, scope: !279, file: !3, line: 35, type: !23)
!281 = !DILocation(line: 35, column: 24, scope: !279)
!282 = !DILocation(line: 37, column: 20, scope: !279)
!283 = !DILocation(line: 37, column: 5, scope: !279)
!284 = !DILocation(line: 38, column: 1, scope: !279)
!285 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !286, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !288}
!288 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!289 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !285, file: !3, line: 40, type: !288)
!290 = !DILocation(line: 40, column: 28, scope: !285)
!291 = !DILocation(line: 42, column: 21, scope: !285)
!292 = !DILocation(line: 42, column: 5, scope: !285)
!293 = !DILocation(line: 43, column: 1, scope: !285)
!294 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !295, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !297}
!297 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!298 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !294, file: !3, line: 45, type: !297)
!299 = !DILocation(line: 45, column: 28, scope: !294)
!300 = !DILocation(line: 47, column: 20, scope: !294)
!301 = !DILocation(line: 47, column: 5, scope: !294)
!302 = !DILocation(line: 48, column: 1, scope: !294)
!303 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !304, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !306}
!306 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!307 = !DILocalVariable(name: "longNumber", arg: 1, scope: !303, file: !3, line: 50, type: !306)
!308 = !DILocation(line: 50, column: 26, scope: !303)
!309 = !DILocation(line: 52, column: 21, scope: !303)
!310 = !DILocation(line: 52, column: 5, scope: !303)
!311 = !DILocation(line: 53, column: 1, scope: !303)
!312 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !313, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !315}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !316, line: 27, baseType: !317)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !318, line: 44, baseType: !306)
!318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!319 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !312, file: !3, line: 55, type: !315)
!320 = !DILocation(line: 55, column: 33, scope: !312)
!321 = !DILocation(line: 57, column: 29, scope: !312)
!322 = !DILocation(line: 57, column: 5, scope: !312)
!323 = !DILocation(line: 58, column: 1, scope: !312)
!324 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !325, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !327}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !267, line: 46, baseType: !328)
!328 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!329 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !324, file: !3, line: 60, type: !327)
!330 = !DILocation(line: 60, column: 29, scope: !324)
!331 = !DILocation(line: 62, column: 21, scope: !324)
!332 = !DILocation(line: 62, column: 5, scope: !324)
!333 = !DILocation(line: 63, column: 1, scope: !324)
!334 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !335, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !43}
!337 = !DILocalVariable(name: "charHex", arg: 1, scope: !334, file: !3, line: 65, type: !43)
!338 = !DILocation(line: 65, column: 29, scope: !334)
!339 = !DILocation(line: 67, column: 22, scope: !334)
!340 = !DILocation(line: 67, column: 5, scope: !334)
!341 = !DILocation(line: 68, column: 1, scope: !334)
!342 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !343, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !266}
!345 = !DILocalVariable(name: "wideChar", arg: 1, scope: !342, file: !3, line: 70, type: !266)
!346 = !DILocation(line: 70, column: 29, scope: !342)
!347 = !DILocalVariable(name: "s", scope: !342, file: !3, line: 74, type: !348)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 2)
!351 = !DILocation(line: 74, column: 13, scope: !342)
!352 = !DILocation(line: 75, column: 16, scope: !342)
!353 = !DILocation(line: 75, column: 9, scope: !342)
!354 = !DILocation(line: 75, column: 14, scope: !342)
!355 = !DILocation(line: 76, column: 9, scope: !342)
!356 = !DILocation(line: 76, column: 14, scope: !342)
!357 = !DILocation(line: 77, column: 21, scope: !342)
!358 = !DILocation(line: 77, column: 5, scope: !342)
!359 = !DILocation(line: 78, column: 1, scope: !342)
!360 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !361, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !7}
!363 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !360, file: !3, line: 80, type: !7)
!364 = !DILocation(line: 80, column: 33, scope: !360)
!365 = !DILocation(line: 82, column: 20, scope: !360)
!366 = !DILocation(line: 82, column: 5, scope: !360)
!367 = !DILocation(line: 83, column: 1, scope: !360)
!368 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !369, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !25}
!371 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !368, file: !3, line: 85, type: !25)
!372 = !DILocation(line: 85, column: 45, scope: !368)
!373 = !DILocation(line: 87, column: 22, scope: !368)
!374 = !DILocation(line: 87, column: 5, scope: !368)
!375 = !DILocation(line: 88, column: 1, scope: !368)
!376 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !377, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379}
!379 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!380 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !376, file: !3, line: 90, type: !379)
!381 = !DILocation(line: 90, column: 29, scope: !376)
!382 = !DILocation(line: 92, column: 20, scope: !376)
!383 = !DILocation(line: 92, column: 5, scope: !376)
!384 = !DILocation(line: 93, column: 1, scope: !376)
!385 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !386, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !390, line: 100, baseType: !391)
!390 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_593/source_code")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !390, line: 96, size: 64, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !391, file: !390, line: 98, baseType: !23, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !391, file: !390, line: 99, baseType: !23, size: 32, offset: 32)
!395 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !385, file: !3, line: 95, type: !388)
!396 = !DILocation(line: 95, column: 40, scope: !385)
!397 = !DILocation(line: 97, column: 26, scope: !385)
!398 = !DILocation(line: 97, column: 47, scope: !385)
!399 = !DILocation(line: 97, column: 55, scope: !385)
!400 = !DILocation(line: 97, column: 76, scope: !385)
!401 = !DILocation(line: 97, column: 5, scope: !385)
!402 = !DILocation(line: 98, column: 1, scope: !385)
!403 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !404, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !406, !327}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!407 = !DILocalVariable(name: "bytes", arg: 1, scope: !403, file: !3, line: 100, type: !406)
!408 = !DILocation(line: 100, column: 38, scope: !403)
!409 = !DILocalVariable(name: "numBytes", arg: 2, scope: !403, file: !3, line: 100, type: !327)
!410 = !DILocation(line: 100, column: 52, scope: !403)
!411 = !DILocalVariable(name: "i", scope: !403, file: !3, line: 102, type: !327)
!412 = !DILocation(line: 102, column: 12, scope: !403)
!413 = !DILocation(line: 103, column: 12, scope: !414)
!414 = distinct !DILexicalBlock(scope: !403, file: !3, line: 103, column: 5)
!415 = !DILocation(line: 103, column: 10, scope: !414)
!416 = !DILocation(line: 103, column: 17, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !3, line: 103, column: 5)
!418 = !DILocation(line: 103, column: 21, scope: !417)
!419 = !DILocation(line: 103, column: 19, scope: !417)
!420 = !DILocation(line: 103, column: 5, scope: !414)
!421 = !DILocation(line: 105, column: 24, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !3, line: 104, column: 5)
!423 = !DILocation(line: 105, column: 30, scope: !422)
!424 = !DILocation(line: 105, column: 9, scope: !422)
!425 = !DILocation(line: 106, column: 5, scope: !422)
!426 = !DILocation(line: 103, column: 31, scope: !417)
!427 = !DILocation(line: 103, column: 5, scope: !417)
!428 = distinct !{!428, !420, !429, !154}
!429 = !DILocation(line: 106, column: 5, scope: !414)
!430 = !DILocation(line: 107, column: 5, scope: !403)
!431 = !DILocation(line: 108, column: 1, scope: !403)
!432 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !433, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!433 = !DISubroutineType(types: !434)
!434 = !{!327, !406, !327, !42}
!435 = !DILocalVariable(name: "bytes", arg: 1, scope: !432, file: !3, line: 113, type: !406)
!436 = !DILocation(line: 113, column: 39, scope: !432)
!437 = !DILocalVariable(name: "numBytes", arg: 2, scope: !432, file: !3, line: 113, type: !327)
!438 = !DILocation(line: 113, column: 53, scope: !432)
!439 = !DILocalVariable(name: "hex", arg: 3, scope: !432, file: !3, line: 113, type: !42)
!440 = !DILocation(line: 113, column: 71, scope: !432)
!441 = !DILocalVariable(name: "numWritten", scope: !432, file: !3, line: 115, type: !327)
!442 = !DILocation(line: 115, column: 12, scope: !432)
!443 = !DILocation(line: 121, column: 5, scope: !432)
!444 = !DILocation(line: 121, column: 12, scope: !432)
!445 = !DILocation(line: 121, column: 25, scope: !432)
!446 = !DILocation(line: 121, column: 23, scope: !432)
!447 = !DILocation(line: 121, column: 34, scope: !432)
!448 = !DILocation(line: 121, column: 37, scope: !432)
!449 = !DILocation(line: 121, column: 67, scope: !432)
!450 = !DILocation(line: 121, column: 70, scope: !432)
!451 = !DILocation(line: 0, scope: !432)
!452 = !DILocalVariable(name: "byte", scope: !453, file: !3, line: 123, type: !23)
!453 = distinct !DILexicalBlock(scope: !432, file: !3, line: 122, column: 5)
!454 = !DILocation(line: 123, column: 13, scope: !453)
!455 = !DILocation(line: 124, column: 17, scope: !453)
!456 = !DILocation(line: 124, column: 25, scope: !453)
!457 = !DILocation(line: 124, column: 23, scope: !453)
!458 = !DILocation(line: 124, column: 9, scope: !453)
!459 = !DILocation(line: 125, column: 45, scope: !453)
!460 = !DILocation(line: 125, column: 29, scope: !453)
!461 = !DILocation(line: 125, column: 9, scope: !453)
!462 = !DILocation(line: 125, column: 15, scope: !453)
!463 = !DILocation(line: 125, column: 27, scope: !453)
!464 = !DILocation(line: 126, column: 9, scope: !453)
!465 = distinct !{!465, !443, !466, !154}
!466 = !DILocation(line: 127, column: 5, scope: !432)
!467 = !DILocation(line: 129, column: 12, scope: !432)
!468 = !DILocation(line: 129, column: 5, scope: !432)
!469 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !470, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!470 = !DISubroutineType(types: !471)
!471 = !{!327, !406, !327, !265}
!472 = !DILocalVariable(name: "bytes", arg: 1, scope: !469, file: !3, line: 135, type: !406)
!473 = !DILocation(line: 135, column: 41, scope: !469)
!474 = !DILocalVariable(name: "numBytes", arg: 2, scope: !469, file: !3, line: 135, type: !327)
!475 = !DILocation(line: 135, column: 55, scope: !469)
!476 = !DILocalVariable(name: "hex", arg: 3, scope: !469, file: !3, line: 135, type: !265)
!477 = !DILocation(line: 135, column: 76, scope: !469)
!478 = !DILocalVariable(name: "numWritten", scope: !469, file: !3, line: 137, type: !327)
!479 = !DILocation(line: 137, column: 12, scope: !469)
!480 = !DILocation(line: 143, column: 5, scope: !469)
!481 = !DILocation(line: 143, column: 12, scope: !469)
!482 = !DILocation(line: 143, column: 25, scope: !469)
!483 = !DILocation(line: 143, column: 23, scope: !469)
!484 = !DILocation(line: 143, column: 34, scope: !469)
!485 = !DILocation(line: 143, column: 47, scope: !469)
!486 = !DILocation(line: 143, column: 55, scope: !469)
!487 = !DILocation(line: 143, column: 53, scope: !469)
!488 = !DILocation(line: 143, column: 37, scope: !469)
!489 = !DILocation(line: 143, column: 68, scope: !469)
!490 = !DILocation(line: 143, column: 81, scope: !469)
!491 = !DILocation(line: 143, column: 89, scope: !469)
!492 = !DILocation(line: 143, column: 87, scope: !469)
!493 = !DILocation(line: 143, column: 100, scope: !469)
!494 = !DILocation(line: 143, column: 71, scope: !469)
!495 = !DILocation(line: 0, scope: !469)
!496 = !DILocalVariable(name: "byte", scope: !497, file: !3, line: 145, type: !23)
!497 = distinct !DILexicalBlock(scope: !469, file: !3, line: 144, column: 5)
!498 = !DILocation(line: 145, column: 13, scope: !497)
!499 = !DILocation(line: 146, column: 18, scope: !497)
!500 = !DILocation(line: 146, column: 26, scope: !497)
!501 = !DILocation(line: 146, column: 24, scope: !497)
!502 = !DILocation(line: 146, column: 9, scope: !497)
!503 = !DILocation(line: 147, column: 45, scope: !497)
!504 = !DILocation(line: 147, column: 29, scope: !497)
!505 = !DILocation(line: 147, column: 9, scope: !497)
!506 = !DILocation(line: 147, column: 15, scope: !497)
!507 = !DILocation(line: 147, column: 27, scope: !497)
!508 = !DILocation(line: 148, column: 9, scope: !497)
!509 = distinct !{!509, !480, !510, !154}
!510 = !DILocation(line: 149, column: 5, scope: !469)
!511 = !DILocation(line: 151, column: 12, scope: !469)
!512 = !DILocation(line: 151, column: 5, scope: !469)
!513 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !514, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DISubroutineType(types: !515)
!515 = !{!23}
!516 = !DILocation(line: 158, column: 5, scope: !513)
!517 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !514, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DILocation(line: 163, column: 5, scope: !517)
!519 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !514, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DILocation(line: 168, column: 13, scope: !519)
!521 = !DILocation(line: 168, column: 20, scope: !519)
!522 = !DILocation(line: 168, column: 5, scope: !519)
!523 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 187, column: 16, scope: !523)
!525 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 188, column: 16, scope: !525)
!527 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 189, column: 16, scope: !527)
!529 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 190, column: 16, scope: !529)
!531 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 191, column: 16, scope: !531)
!533 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 192, column: 16, scope: !533)
!535 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 193, column: 16, scope: !535)
!537 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 194, column: 16, scope: !537)
!539 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 195, column: 16, scope: !539)
!541 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 198, column: 15, scope: !541)
!543 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 199, column: 15, scope: !543)
!545 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 200, column: 15, scope: !545)
!547 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 201, column: 15, scope: !547)
!549 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 202, column: 15, scope: !549)
!551 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 203, column: 15, scope: !551)
!553 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 204, column: 15, scope: !553)
!555 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 205, column: 15, scope: !555)
!557 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 206, column: 15, scope: !557)
