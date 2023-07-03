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
define dso_local i32 @badSource(i32 %data) #0 !dbg !52 {
entry:
  %data.addr = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !57, metadata !DIExpression()), !dbg !62
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !62
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !62
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !63
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !65
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !66
  %cmp = icmp ne i8* %call, null, !dbg !67
  br i1 %cmp, label %if.then, label %if.else, !dbg !68

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !69
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !71
  store i32 %call2, i32* %data.addr, align 4, !dbg !72
  br label %if.end, !dbg !73

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !74
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data.addr, align 4, !dbg !76
  ret i32 %2, !dbg !77
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad() #0 !dbg !78 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !81, metadata !DIExpression()), !dbg !82
  store i32 -1, i32* %data, align 4, !dbg !83
  %0 = load i32, i32* %data, align 4, !dbg !84
  %call = call i32 @badSource(i32 %0), !dbg !85
  store i32 %call, i32* %data, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i, metadata !87, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !90, metadata !DIExpression()), !dbg !94
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !94
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !94
  %2 = load i32, i32* %data, align 4, !dbg !95
  %cmp = icmp sge i32 %2, 0, !dbg !97
  br i1 %cmp, label %if.then, label %if.else, !dbg !98

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !99
  %idxprom = sext i32 %3 to i64, !dbg !101
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !101
  store i32 1, i32* %arrayidx, align 4, !dbg !102
  store i32 0, i32* %i, align 4, !dbg !103
  br label %for.cond, !dbg !105

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !106
  %cmp1 = icmp slt i32 %4, 10, !dbg !108
  br i1 %cmp1, label %for.body, label %for.end, !dbg !109

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !110
  %idxprom2 = sext i32 %5 to i64, !dbg !112
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !112
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !112
  call void @printIntLine(i32 %6), !dbg !113
  br label %for.inc, !dbg !114

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !115
  %inc = add nsw i32 %7, 1, !dbg !115
  store i32 %inc, i32* %i, align 4, !dbg !115
  br label %for.cond, !dbg !116, !llvm.loop !117

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !120

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !121
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !123
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goodG2BSource(i32 %data) #0 !dbg !124 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !125, metadata !DIExpression()), !dbg !126
  store i32 7, i32* %data.addr, align 4, !dbg !127
  %0 = load i32, i32* %data.addr, align 4, !dbg !128
  ret i32 %0, !dbg !129
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !130 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !131, metadata !DIExpression()), !dbg !132
  store i32 -1, i32* %data, align 4, !dbg !133
  %0 = load i32, i32* %data, align 4, !dbg !134
  %call = call i32 @goodG2BSource(i32 %0), !dbg !135
  store i32 %call, i32* %data, align 4, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %i, metadata !137, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !140, metadata !DIExpression()), !dbg !141
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !141
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !141
  %2 = load i32, i32* %data, align 4, !dbg !142
  %cmp = icmp sge i32 %2, 0, !dbg !144
  br i1 %cmp, label %if.then, label %if.else, !dbg !145

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !146
  %idxprom = sext i32 %3 to i64, !dbg !148
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !148
  store i32 1, i32* %arrayidx, align 4, !dbg !149
  store i32 0, i32* %i, align 4, !dbg !150
  br label %for.cond, !dbg !152

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !153
  %cmp1 = icmp slt i32 %4, 10, !dbg !155
  br i1 %cmp1, label %for.body, label %for.end, !dbg !156

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !157
  %idxprom2 = sext i32 %5 to i64, !dbg !159
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !159
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !159
  call void @printIntLine(i32 %6), !dbg !160
  br label %for.inc, !dbg !161

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !162
  %inc = add nsw i32 %7, 1, !dbg !162
  store i32 %inc, i32* %i, align 4, !dbg !162
  br label %for.cond, !dbg !163, !llvm.loop !164

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !166

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !167
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !169
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goodB2GSource(i32 %data) #0 !dbg !170 {
entry:
  %data.addr = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !173, metadata !DIExpression()), !dbg !175
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !175
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !175
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !176
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !178
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !179
  %cmp = icmp ne i8* %call, null, !dbg !180
  br i1 %cmp, label %if.then, label %if.else, !dbg !181

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !182
  %call2 = call i32 @atoi(i8* %arraydecay1) #7, !dbg !184
  store i32 %call2, i32* %data.addr, align 4, !dbg !185
  br label %if.end, !dbg !186

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !187
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %data.addr, align 4, !dbg !189
  ret i32 %2, !dbg !190
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !191 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !192, metadata !DIExpression()), !dbg !193
  store i32 -1, i32* %data, align 4, !dbg !194
  %0 = load i32, i32* %data, align 4, !dbg !195
  %call = call i32 @goodB2GSource(i32 %0), !dbg !196
  store i32 %call, i32* %data, align 4, !dbg !197
  call void @llvm.dbg.declare(metadata i32* %i, metadata !198, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !201, metadata !DIExpression()), !dbg !202
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !202
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !202
  %2 = load i32, i32* %data, align 4, !dbg !203
  %cmp = icmp sge i32 %2, 0, !dbg !205
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !206

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !207
  %cmp1 = icmp slt i32 %3, 10, !dbg !208
  br i1 %cmp1, label %if.then, label %if.else, !dbg !209

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !210
  %idxprom = sext i32 %4 to i64, !dbg !212
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !212
  store i32 1, i32* %arrayidx, align 4, !dbg !213
  store i32 0, i32* %i, align 4, !dbg !214
  br label %for.cond, !dbg !216

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !217
  %cmp2 = icmp slt i32 %5, 10, !dbg !219
  br i1 %cmp2, label %for.body, label %for.end, !dbg !220

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !221
  %idxprom3 = sext i32 %6 to i64, !dbg !223
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !223
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !223
  call void @printIntLine(i32 %7), !dbg !224
  br label %for.inc, !dbg !225

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !226
  %inc = add nsw i32 %8, 1, !dbg !226
  store i32 %inc, i32* %i, align 4, !dbg !226
  br label %for.cond, !dbg !227, !llvm.loop !228

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !230

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !231
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_good() #0 !dbg !234 {
entry:
  call void @goodB2G(), !dbg !235
  call void @goodG2B(), !dbg !236
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !238 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !241, metadata !DIExpression()), !dbg !242
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !243
  %0 = load i8*, i8** %line.addr, align 8, !dbg !244
  %cmp = icmp ne i8* %0, null, !dbg !246
  br i1 %cmp, label %if.then, label %if.end, !dbg !247

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !248
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !250
  br label %if.end, !dbg !251

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !252
  ret void, !dbg !253
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !254 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !255, metadata !DIExpression()), !dbg !256
  %0 = load i8*, i8** %line.addr, align 8, !dbg !257
  %cmp = icmp ne i8* %0, null, !dbg !259
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !261
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !263
  br label %if.end, !dbg !264

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !266 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = load i32*, i32** %line.addr, align 8, !dbg !274
  %cmp = icmp ne i32* %0, null, !dbg !276
  br i1 %cmp, label %if.then, label %if.end, !dbg !277

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !278
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !280
  br label %if.end, !dbg !281

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !282
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !283 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !286, metadata !DIExpression()), !dbg !287
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !288
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !289
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !291 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !295, metadata !DIExpression()), !dbg !296
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !297
  %conv = sext i16 %0 to i32, !dbg !297
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !298
  ret void, !dbg !299
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !300 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !304, metadata !DIExpression()), !dbg !305
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !306
  %conv = fpext float %0 to double, !dbg !306
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !307
  ret void, !dbg !308
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !309 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !313, metadata !DIExpression()), !dbg !314
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !315
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !316
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !318 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !327
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !328
  ret void, !dbg !329
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !330 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !337
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !338
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !340 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !343, metadata !DIExpression()), !dbg !344
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !345
  %conv = sext i8 %0 to i32, !dbg !345
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !346
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !348 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !353, metadata !DIExpression()), !dbg !357
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !358
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !359
  store i32 %0, i32* %arrayidx, align 4, !dbg !360
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !361
  store i32 0, i32* %arrayidx1, align 4, !dbg !362
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !363
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !366 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !374 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !379
  %conv = zext i8 %0 to i32, !dbg !379
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !382 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !388
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !389
  ret void, !dbg !390
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !391 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !403
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !404
  %1 = load i32, i32* %intOne, align 4, !dbg !404
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !405
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !406
  %3 = load i32, i32* %intTwo, align 4, !dbg !406
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !409 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !413, metadata !DIExpression()), !dbg !414
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !415, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.declare(metadata i64* %i, metadata !417, metadata !DIExpression()), !dbg !418
  store i64 0, i64* %i, align 8, !dbg !419
  br label %for.cond, !dbg !421

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !422
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !424
  %cmp = icmp ult i64 %0, %1, !dbg !425
  br i1 %cmp, label %for.body, label %for.end, !dbg !426

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !427
  %3 = load i64, i64* %i, align 8, !dbg !429
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !427
  %4 = load i8, i8* %arrayidx, align 1, !dbg !427
  %conv = zext i8 %4 to i32, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !430
  br label %for.inc, !dbg !431

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !432
  %inc = add i64 %5, 1, !dbg !432
  store i64 %inc, i64* %i, align 8, !dbg !432
  br label %for.cond, !dbg !433, !llvm.loop !434

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !436
  ret void, !dbg !437
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !438 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !441, metadata !DIExpression()), !dbg !442
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !443, metadata !DIExpression()), !dbg !444
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !445, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !447, metadata !DIExpression()), !dbg !448
  store i64 0, i64* %numWritten, align 8, !dbg !448
  br label %while.cond, !dbg !449

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !450
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !451
  %cmp = icmp ult i64 %0, %1, !dbg !452
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !453

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #8, !dbg !454
  %2 = load i16*, i16** %call, align 8, !dbg !454
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !454
  %4 = load i64, i64* %numWritten, align 8, !dbg !454
  %mul = mul i64 2, %4, !dbg !454
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !454
  %5 = load i8, i8* %arrayidx, align 1, !dbg !454
  %conv = sext i8 %5 to i32, !dbg !454
  %idxprom = sext i32 %conv to i64, !dbg !454
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !454
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !454
  %conv2 = zext i16 %6 to i32, !dbg !454
  %and = and i32 %conv2, 4096, !dbg !454
  %tobool = icmp ne i32 %and, 0, !dbg !454
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !455

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #8, !dbg !456
  %7 = load i16*, i16** %call3, align 8, !dbg !456
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !456
  %9 = load i64, i64* %numWritten, align 8, !dbg !456
  %mul4 = mul i64 2, %9, !dbg !456
  %add = add i64 %mul4, 1, !dbg !456
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !456
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !456
  %conv6 = sext i8 %10 to i32, !dbg !456
  %idxprom7 = sext i32 %conv6 to i64, !dbg !456
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !456
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !456
  %conv9 = zext i16 %11 to i32, !dbg !456
  %and10 = and i32 %conv9, 4096, !dbg !456
  %tobool11 = icmp ne i32 %and10, 0, !dbg !455
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !457
  br i1 %12, label %while.body, label %while.end, !dbg !449

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !458, metadata !DIExpression()), !dbg !460
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !461
  %14 = load i64, i64* %numWritten, align 8, !dbg !462
  %mul12 = mul i64 2, %14, !dbg !463
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !461
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !464
  %15 = load i32, i32* %byte, align 4, !dbg !465
  %conv15 = trunc i32 %15 to i8, !dbg !466
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !467
  %17 = load i64, i64* %numWritten, align 8, !dbg !468
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !467
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !469
  %18 = load i64, i64* %numWritten, align 8, !dbg !470
  %inc = add i64 %18, 1, !dbg !470
  store i64 %inc, i64* %numWritten, align 8, !dbg !470
  br label %while.cond, !dbg !449, !llvm.loop !471

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !473
  ret i64 %19, !dbg !474
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !475 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !478, metadata !DIExpression()), !dbg !479
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !480, metadata !DIExpression()), !dbg !481
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !482, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !484, metadata !DIExpression()), !dbg !485
  store i64 0, i64* %numWritten, align 8, !dbg !485
  br label %while.cond, !dbg !486

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !487
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !488
  %cmp = icmp ult i64 %0, %1, !dbg !489
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !490

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !491
  %3 = load i64, i64* %numWritten, align 8, !dbg !492
  %mul = mul i64 2, %3, !dbg !493
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !491
  %4 = load i32, i32* %arrayidx, align 4, !dbg !491
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !494
  %tobool = icmp ne i32 %call, 0, !dbg !494
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !495

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !496
  %6 = load i64, i64* %numWritten, align 8, !dbg !497
  %mul1 = mul i64 2, %6, !dbg !498
  %add = add i64 %mul1, 1, !dbg !499
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !496
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !496
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !500
  %tobool4 = icmp ne i32 %call3, 0, !dbg !495
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !501
  br i1 %8, label %while.body, label %while.end, !dbg !486

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !502, metadata !DIExpression()), !dbg !504
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !505
  %10 = load i64, i64* %numWritten, align 8, !dbg !506
  %mul5 = mul i64 2, %10, !dbg !507
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !505
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !508
  %11 = load i32, i32* %byte, align 4, !dbg !509
  %conv = trunc i32 %11 to i8, !dbg !510
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !511
  %13 = load i64, i64* %numWritten, align 8, !dbg !512
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !511
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !513
  %14 = load i64, i64* %numWritten, align 8, !dbg !514
  %inc = add i64 %14, 1, !dbg !514
  store i64 %inc, i64* %numWritten, align 8, !dbg !514
  br label %while.cond, !dbg !486, !llvm.loop !515

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !517
  ret i64 %15, !dbg !518
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !519 {
entry:
  ret i32 1, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !523 {
entry:
  ret i32 0, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !525 {
entry:
  %call = call i32 @rand() #9, !dbg !526
  %rem = srem i32 %call, 2, !dbg !527
  ret i32 %rem, !dbg !528
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !563 {
entry:
  ret void, !dbg !564
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_589/source_code")
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
!45 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_589/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSource", scope: !45, file: !45, line: 25, type: !53, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{!23, !23}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 25, type: !23)
!56 = !DILocation(line: 25, column: 19, scope: !52)
!57 = !DILocalVariable(name: "inputBuffer", scope: !58, file: !45, line: 28, type: !59)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 27, column: 5)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 112, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 14)
!62 = !DILocation(line: 28, column: 14, scope: !58)
!63 = !DILocation(line: 30, column: 19, scope: !64)
!64 = distinct !DILexicalBlock(scope: !58, file: !45, line: 30, column: 13)
!65 = !DILocation(line: 30, column: 49, scope: !64)
!66 = !DILocation(line: 30, column: 13, scope: !64)
!67 = !DILocation(line: 30, column: 56, scope: !64)
!68 = !DILocation(line: 30, column: 13, scope: !58)
!69 = !DILocation(line: 33, column: 25, scope: !70)
!70 = distinct !DILexicalBlock(scope: !64, file: !45, line: 31, column: 9)
!71 = !DILocation(line: 33, column: 20, scope: !70)
!72 = !DILocation(line: 33, column: 18, scope: !70)
!73 = !DILocation(line: 34, column: 9, scope: !70)
!74 = !DILocation(line: 37, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !64, file: !45, line: 36, column: 9)
!76 = !DILocation(line: 40, column: 12, scope: !52)
!77 = !DILocation(line: 40, column: 5, scope: !52)
!78 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad", scope: !45, file: !45, line: 43, type: !79, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!79 = !DISubroutineType(types: !80)
!80 = !{null}
!81 = !DILocalVariable(name: "data", scope: !78, file: !45, line: 45, type: !23)
!82 = !DILocation(line: 45, column: 9, scope: !78)
!83 = !DILocation(line: 47, column: 10, scope: !78)
!84 = !DILocation(line: 48, column: 22, scope: !78)
!85 = !DILocation(line: 48, column: 12, scope: !78)
!86 = !DILocation(line: 48, column: 10, scope: !78)
!87 = !DILocalVariable(name: "i", scope: !88, file: !45, line: 50, type: !23)
!88 = distinct !DILexicalBlock(scope: !78, file: !45, line: 49, column: 5)
!89 = !DILocation(line: 50, column: 13, scope: !88)
!90 = !DILocalVariable(name: "buffer", scope: !88, file: !45, line: 51, type: !91)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 10)
!94 = !DILocation(line: 51, column: 13, scope: !88)
!95 = !DILocation(line: 54, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !88, file: !45, line: 54, column: 13)
!97 = !DILocation(line: 54, column: 18, scope: !96)
!98 = !DILocation(line: 54, column: 13, scope: !88)
!99 = !DILocation(line: 56, column: 20, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !45, line: 55, column: 9)
!101 = !DILocation(line: 56, column: 13, scope: !100)
!102 = !DILocation(line: 56, column: 26, scope: !100)
!103 = !DILocation(line: 58, column: 19, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !45, line: 58, column: 13)
!105 = !DILocation(line: 58, column: 17, scope: !104)
!106 = !DILocation(line: 58, column: 24, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !45, line: 58, column: 13)
!108 = !DILocation(line: 58, column: 26, scope: !107)
!109 = !DILocation(line: 58, column: 13, scope: !104)
!110 = !DILocation(line: 60, column: 37, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !45, line: 59, column: 13)
!112 = !DILocation(line: 60, column: 30, scope: !111)
!113 = !DILocation(line: 60, column: 17, scope: !111)
!114 = !DILocation(line: 61, column: 13, scope: !111)
!115 = !DILocation(line: 58, column: 33, scope: !107)
!116 = !DILocation(line: 58, column: 13, scope: !107)
!117 = distinct !{!117, !109, !118, !119}
!118 = !DILocation(line: 61, column: 13, scope: !104)
!119 = !{!"llvm.loop.mustprogress"}
!120 = !DILocation(line: 62, column: 9, scope: !100)
!121 = !DILocation(line: 65, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !96, file: !45, line: 64, column: 9)
!123 = !DILocation(line: 68, column: 1, scope: !78)
!124 = distinct !DISubprogram(name: "goodG2BSource", scope: !45, file: !45, line: 75, type: !53, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!125 = !DILocalVariable(name: "data", arg: 1, scope: !124, file: !45, line: 75, type: !23)
!126 = !DILocation(line: 75, column: 23, scope: !124)
!127 = !DILocation(line: 79, column: 10, scope: !124)
!128 = !DILocation(line: 80, column: 12, scope: !124)
!129 = !DILocation(line: 80, column: 5, scope: !124)
!130 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 83, type: !79, scopeLine: 84, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!131 = !DILocalVariable(name: "data", scope: !130, file: !45, line: 85, type: !23)
!132 = !DILocation(line: 85, column: 9, scope: !130)
!133 = !DILocation(line: 87, column: 10, scope: !130)
!134 = !DILocation(line: 88, column: 26, scope: !130)
!135 = !DILocation(line: 88, column: 12, scope: !130)
!136 = !DILocation(line: 88, column: 10, scope: !130)
!137 = !DILocalVariable(name: "i", scope: !138, file: !45, line: 90, type: !23)
!138 = distinct !DILexicalBlock(scope: !130, file: !45, line: 89, column: 5)
!139 = !DILocation(line: 90, column: 13, scope: !138)
!140 = !DILocalVariable(name: "buffer", scope: !138, file: !45, line: 91, type: !91)
!141 = !DILocation(line: 91, column: 13, scope: !138)
!142 = !DILocation(line: 94, column: 13, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 94, column: 13)
!144 = !DILocation(line: 94, column: 18, scope: !143)
!145 = !DILocation(line: 94, column: 13, scope: !138)
!146 = !DILocation(line: 96, column: 20, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !45, line: 95, column: 9)
!148 = !DILocation(line: 96, column: 13, scope: !147)
!149 = !DILocation(line: 96, column: 26, scope: !147)
!150 = !DILocation(line: 98, column: 19, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !45, line: 98, column: 13)
!152 = !DILocation(line: 98, column: 17, scope: !151)
!153 = !DILocation(line: 98, column: 24, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !45, line: 98, column: 13)
!155 = !DILocation(line: 98, column: 26, scope: !154)
!156 = !DILocation(line: 98, column: 13, scope: !151)
!157 = !DILocation(line: 100, column: 37, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !45, line: 99, column: 13)
!159 = !DILocation(line: 100, column: 30, scope: !158)
!160 = !DILocation(line: 100, column: 17, scope: !158)
!161 = !DILocation(line: 101, column: 13, scope: !158)
!162 = !DILocation(line: 98, column: 33, scope: !154)
!163 = !DILocation(line: 98, column: 13, scope: !154)
!164 = distinct !{!164, !156, !165, !119}
!165 = !DILocation(line: 101, column: 13, scope: !151)
!166 = !DILocation(line: 102, column: 9, scope: !147)
!167 = !DILocation(line: 105, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !143, file: !45, line: 104, column: 9)
!169 = !DILocation(line: 108, column: 1, scope: !130)
!170 = distinct !DISubprogram(name: "goodB2GSource", scope: !45, file: !45, line: 111, type: !53, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!171 = !DILocalVariable(name: "data", arg: 1, scope: !170, file: !45, line: 111, type: !23)
!172 = !DILocation(line: 111, column: 23, scope: !170)
!173 = !DILocalVariable(name: "inputBuffer", scope: !174, file: !45, line: 114, type: !59)
!174 = distinct !DILexicalBlock(scope: !170, file: !45, line: 113, column: 5)
!175 = !DILocation(line: 114, column: 14, scope: !174)
!176 = !DILocation(line: 116, column: 19, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !45, line: 116, column: 13)
!178 = !DILocation(line: 116, column: 49, scope: !177)
!179 = !DILocation(line: 116, column: 13, scope: !177)
!180 = !DILocation(line: 116, column: 56, scope: !177)
!181 = !DILocation(line: 116, column: 13, scope: !174)
!182 = !DILocation(line: 119, column: 25, scope: !183)
!183 = distinct !DILexicalBlock(scope: !177, file: !45, line: 117, column: 9)
!184 = !DILocation(line: 119, column: 20, scope: !183)
!185 = !DILocation(line: 119, column: 18, scope: !183)
!186 = !DILocation(line: 120, column: 9, scope: !183)
!187 = !DILocation(line: 123, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !177, file: !45, line: 122, column: 9)
!189 = !DILocation(line: 126, column: 12, scope: !170)
!190 = !DILocation(line: 126, column: 5, scope: !170)
!191 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 129, type: !79, scopeLine: 130, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!192 = !DILocalVariable(name: "data", scope: !191, file: !45, line: 131, type: !23)
!193 = !DILocation(line: 131, column: 9, scope: !191)
!194 = !DILocation(line: 133, column: 10, scope: !191)
!195 = !DILocation(line: 134, column: 26, scope: !191)
!196 = !DILocation(line: 134, column: 12, scope: !191)
!197 = !DILocation(line: 134, column: 10, scope: !191)
!198 = !DILocalVariable(name: "i", scope: !199, file: !45, line: 136, type: !23)
!199 = distinct !DILexicalBlock(scope: !191, file: !45, line: 135, column: 5)
!200 = !DILocation(line: 136, column: 13, scope: !199)
!201 = !DILocalVariable(name: "buffer", scope: !199, file: !45, line: 137, type: !91)
!202 = !DILocation(line: 137, column: 13, scope: !199)
!203 = !DILocation(line: 139, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !45, line: 139, column: 13)
!205 = !DILocation(line: 139, column: 18, scope: !204)
!206 = !DILocation(line: 139, column: 23, scope: !204)
!207 = !DILocation(line: 139, column: 26, scope: !204)
!208 = !DILocation(line: 139, column: 31, scope: !204)
!209 = !DILocation(line: 139, column: 13, scope: !199)
!210 = !DILocation(line: 141, column: 20, scope: !211)
!211 = distinct !DILexicalBlock(scope: !204, file: !45, line: 140, column: 9)
!212 = !DILocation(line: 141, column: 13, scope: !211)
!213 = !DILocation(line: 141, column: 26, scope: !211)
!214 = !DILocation(line: 143, column: 19, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !45, line: 143, column: 13)
!216 = !DILocation(line: 143, column: 17, scope: !215)
!217 = !DILocation(line: 143, column: 24, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !45, line: 143, column: 13)
!219 = !DILocation(line: 143, column: 26, scope: !218)
!220 = !DILocation(line: 143, column: 13, scope: !215)
!221 = !DILocation(line: 145, column: 37, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !45, line: 144, column: 13)
!223 = !DILocation(line: 145, column: 30, scope: !222)
!224 = !DILocation(line: 145, column: 17, scope: !222)
!225 = !DILocation(line: 146, column: 13, scope: !222)
!226 = !DILocation(line: 143, column: 33, scope: !218)
!227 = !DILocation(line: 143, column: 13, scope: !218)
!228 = distinct !{!228, !220, !229, !119}
!229 = !DILocation(line: 146, column: 13, scope: !215)
!230 = !DILocation(line: 147, column: 9, scope: !211)
!231 = !DILocation(line: 150, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !204, file: !45, line: 149, column: 9)
!233 = !DILocation(line: 153, column: 1, scope: !191)
!234 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_good", scope: !45, file: !45, line: 155, type: !79, scopeLine: 156, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!235 = !DILocation(line: 157, column: 5, scope: !234)
!236 = !DILocation(line: 158, column: 5, scope: !234)
!237 = !DILocation(line: 159, column: 1, scope: !234)
!238 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !239, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !42}
!241 = !DILocalVariable(name: "line", arg: 1, scope: !238, file: !3, line: 11, type: !42)
!242 = !DILocation(line: 11, column: 25, scope: !238)
!243 = !DILocation(line: 13, column: 1, scope: !238)
!244 = !DILocation(line: 14, column: 8, scope: !245)
!245 = distinct !DILexicalBlock(scope: !238, file: !3, line: 14, column: 8)
!246 = !DILocation(line: 14, column: 13, scope: !245)
!247 = !DILocation(line: 14, column: 8, scope: !238)
!248 = !DILocation(line: 16, column: 24, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !3, line: 15, column: 5)
!250 = !DILocation(line: 16, column: 9, scope: !249)
!251 = !DILocation(line: 17, column: 5, scope: !249)
!252 = !DILocation(line: 18, column: 5, scope: !238)
!253 = !DILocation(line: 19, column: 1, scope: !238)
!254 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !239, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!255 = !DILocalVariable(name: "line", arg: 1, scope: !254, file: !3, line: 20, type: !42)
!256 = !DILocation(line: 20, column: 29, scope: !254)
!257 = !DILocation(line: 22, column: 8, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 22, column: 8)
!259 = !DILocation(line: 22, column: 13, scope: !258)
!260 = !DILocation(line: 22, column: 8, scope: !254)
!261 = !DILocation(line: 24, column: 24, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !3, line: 23, column: 5)
!263 = !DILocation(line: 24, column: 9, scope: !262)
!264 = !DILocation(line: 25, column: 5, scope: !262)
!265 = !DILocation(line: 26, column: 1, scope: !254)
!266 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !267, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !271, line: 74, baseType: !23)
!271 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!272 = !DILocalVariable(name: "line", arg: 1, scope: !266, file: !3, line: 27, type: !269)
!273 = !DILocation(line: 27, column: 29, scope: !266)
!274 = !DILocation(line: 29, column: 8, scope: !275)
!275 = distinct !DILexicalBlock(scope: !266, file: !3, line: 29, column: 8)
!276 = !DILocation(line: 29, column: 13, scope: !275)
!277 = !DILocation(line: 29, column: 8, scope: !266)
!278 = !DILocation(line: 31, column: 27, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !3, line: 30, column: 5)
!280 = !DILocation(line: 31, column: 9, scope: !279)
!281 = !DILocation(line: 32, column: 5, scope: !279)
!282 = !DILocation(line: 33, column: 1, scope: !266)
!283 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !284, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !23}
!286 = !DILocalVariable(name: "intNumber", arg: 1, scope: !283, file: !3, line: 35, type: !23)
!287 = !DILocation(line: 35, column: 24, scope: !283)
!288 = !DILocation(line: 37, column: 20, scope: !283)
!289 = !DILocation(line: 37, column: 5, scope: !283)
!290 = !DILocation(line: 38, column: 1, scope: !283)
!291 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !292, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294}
!294 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!295 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !291, file: !3, line: 40, type: !294)
!296 = !DILocation(line: 40, column: 28, scope: !291)
!297 = !DILocation(line: 42, column: 21, scope: !291)
!298 = !DILocation(line: 42, column: 5, scope: !291)
!299 = !DILocation(line: 43, column: 1, scope: !291)
!300 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !301, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !303}
!303 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!304 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !300, file: !3, line: 45, type: !303)
!305 = !DILocation(line: 45, column: 28, scope: !300)
!306 = !DILocation(line: 47, column: 20, scope: !300)
!307 = !DILocation(line: 47, column: 5, scope: !300)
!308 = !DILocation(line: 48, column: 1, scope: !300)
!309 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !310, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !312}
!312 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!313 = !DILocalVariable(name: "longNumber", arg: 1, scope: !309, file: !3, line: 50, type: !312)
!314 = !DILocation(line: 50, column: 26, scope: !309)
!315 = !DILocation(line: 52, column: 21, scope: !309)
!316 = !DILocation(line: 52, column: 5, scope: !309)
!317 = !DILocation(line: 53, column: 1, scope: !309)
!318 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !319, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !321}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !322, line: 27, baseType: !323)
!322 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !324, line: 44, baseType: !312)
!324 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!325 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !318, file: !3, line: 55, type: !321)
!326 = !DILocation(line: 55, column: 33, scope: !318)
!327 = !DILocation(line: 57, column: 29, scope: !318)
!328 = !DILocation(line: 57, column: 5, scope: !318)
!329 = !DILocation(line: 58, column: 1, scope: !318)
!330 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !331, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !271, line: 46, baseType: !334)
!334 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!335 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !330, file: !3, line: 60, type: !333)
!336 = !DILocation(line: 60, column: 29, scope: !330)
!337 = !DILocation(line: 62, column: 21, scope: !330)
!338 = !DILocation(line: 62, column: 5, scope: !330)
!339 = !DILocation(line: 63, column: 1, scope: !330)
!340 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !341, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !43}
!343 = !DILocalVariable(name: "charHex", arg: 1, scope: !340, file: !3, line: 65, type: !43)
!344 = !DILocation(line: 65, column: 29, scope: !340)
!345 = !DILocation(line: 67, column: 22, scope: !340)
!346 = !DILocation(line: 67, column: 5, scope: !340)
!347 = !DILocation(line: 68, column: 1, scope: !340)
!348 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !349, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !270}
!351 = !DILocalVariable(name: "wideChar", arg: 1, scope: !348, file: !3, line: 70, type: !270)
!352 = !DILocation(line: 70, column: 29, scope: !348)
!353 = !DILocalVariable(name: "s", scope: !348, file: !3, line: 74, type: !354)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 64, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 2)
!357 = !DILocation(line: 74, column: 13, scope: !348)
!358 = !DILocation(line: 75, column: 16, scope: !348)
!359 = !DILocation(line: 75, column: 9, scope: !348)
!360 = !DILocation(line: 75, column: 14, scope: !348)
!361 = !DILocation(line: 76, column: 9, scope: !348)
!362 = !DILocation(line: 76, column: 14, scope: !348)
!363 = !DILocation(line: 77, column: 21, scope: !348)
!364 = !DILocation(line: 77, column: 5, scope: !348)
!365 = !DILocation(line: 78, column: 1, scope: !348)
!366 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !367, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !7}
!369 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !366, file: !3, line: 80, type: !7)
!370 = !DILocation(line: 80, column: 33, scope: !366)
!371 = !DILocation(line: 82, column: 20, scope: !366)
!372 = !DILocation(line: 82, column: 5, scope: !366)
!373 = !DILocation(line: 83, column: 1, scope: !366)
!374 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !375, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !25}
!377 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !374, file: !3, line: 85, type: !25)
!378 = !DILocation(line: 85, column: 45, scope: !374)
!379 = !DILocation(line: 87, column: 22, scope: !374)
!380 = !DILocation(line: 87, column: 5, scope: !374)
!381 = !DILocation(line: 88, column: 1, scope: !374)
!382 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !383, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !385}
!385 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!386 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !382, file: !3, line: 90, type: !385)
!387 = !DILocation(line: 90, column: 29, scope: !382)
!388 = !DILocation(line: 92, column: 20, scope: !382)
!389 = !DILocation(line: 92, column: 5, scope: !382)
!390 = !DILocation(line: 93, column: 1, scope: !382)
!391 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !392, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !396, line: 100, baseType: !397)
!396 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_589/source_code")
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !396, line: 96, size: 64, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !397, file: !396, line: 98, baseType: !23, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !397, file: !396, line: 99, baseType: !23, size: 32, offset: 32)
!401 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !391, file: !3, line: 95, type: !394)
!402 = !DILocation(line: 95, column: 40, scope: !391)
!403 = !DILocation(line: 97, column: 26, scope: !391)
!404 = !DILocation(line: 97, column: 47, scope: !391)
!405 = !DILocation(line: 97, column: 55, scope: !391)
!406 = !DILocation(line: 97, column: 76, scope: !391)
!407 = !DILocation(line: 97, column: 5, scope: !391)
!408 = !DILocation(line: 98, column: 1, scope: !391)
!409 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !410, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !412, !333}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!413 = !DILocalVariable(name: "bytes", arg: 1, scope: !409, file: !3, line: 100, type: !412)
!414 = !DILocation(line: 100, column: 38, scope: !409)
!415 = !DILocalVariable(name: "numBytes", arg: 2, scope: !409, file: !3, line: 100, type: !333)
!416 = !DILocation(line: 100, column: 52, scope: !409)
!417 = !DILocalVariable(name: "i", scope: !409, file: !3, line: 102, type: !333)
!418 = !DILocation(line: 102, column: 12, scope: !409)
!419 = !DILocation(line: 103, column: 12, scope: !420)
!420 = distinct !DILexicalBlock(scope: !409, file: !3, line: 103, column: 5)
!421 = !DILocation(line: 103, column: 10, scope: !420)
!422 = !DILocation(line: 103, column: 17, scope: !423)
!423 = distinct !DILexicalBlock(scope: !420, file: !3, line: 103, column: 5)
!424 = !DILocation(line: 103, column: 21, scope: !423)
!425 = !DILocation(line: 103, column: 19, scope: !423)
!426 = !DILocation(line: 103, column: 5, scope: !420)
!427 = !DILocation(line: 105, column: 24, scope: !428)
!428 = distinct !DILexicalBlock(scope: !423, file: !3, line: 104, column: 5)
!429 = !DILocation(line: 105, column: 30, scope: !428)
!430 = !DILocation(line: 105, column: 9, scope: !428)
!431 = !DILocation(line: 106, column: 5, scope: !428)
!432 = !DILocation(line: 103, column: 31, scope: !423)
!433 = !DILocation(line: 103, column: 5, scope: !423)
!434 = distinct !{!434, !426, !435, !119}
!435 = !DILocation(line: 106, column: 5, scope: !420)
!436 = !DILocation(line: 107, column: 5, scope: !409)
!437 = !DILocation(line: 108, column: 1, scope: !409)
!438 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !439, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!439 = !DISubroutineType(types: !440)
!440 = !{!333, !412, !333, !42}
!441 = !DILocalVariable(name: "bytes", arg: 1, scope: !438, file: !3, line: 113, type: !412)
!442 = !DILocation(line: 113, column: 39, scope: !438)
!443 = !DILocalVariable(name: "numBytes", arg: 2, scope: !438, file: !3, line: 113, type: !333)
!444 = !DILocation(line: 113, column: 53, scope: !438)
!445 = !DILocalVariable(name: "hex", arg: 3, scope: !438, file: !3, line: 113, type: !42)
!446 = !DILocation(line: 113, column: 71, scope: !438)
!447 = !DILocalVariable(name: "numWritten", scope: !438, file: !3, line: 115, type: !333)
!448 = !DILocation(line: 115, column: 12, scope: !438)
!449 = !DILocation(line: 121, column: 5, scope: !438)
!450 = !DILocation(line: 121, column: 12, scope: !438)
!451 = !DILocation(line: 121, column: 25, scope: !438)
!452 = !DILocation(line: 121, column: 23, scope: !438)
!453 = !DILocation(line: 121, column: 34, scope: !438)
!454 = !DILocation(line: 121, column: 37, scope: !438)
!455 = !DILocation(line: 121, column: 67, scope: !438)
!456 = !DILocation(line: 121, column: 70, scope: !438)
!457 = !DILocation(line: 0, scope: !438)
!458 = !DILocalVariable(name: "byte", scope: !459, file: !3, line: 123, type: !23)
!459 = distinct !DILexicalBlock(scope: !438, file: !3, line: 122, column: 5)
!460 = !DILocation(line: 123, column: 13, scope: !459)
!461 = !DILocation(line: 124, column: 17, scope: !459)
!462 = !DILocation(line: 124, column: 25, scope: !459)
!463 = !DILocation(line: 124, column: 23, scope: !459)
!464 = !DILocation(line: 124, column: 9, scope: !459)
!465 = !DILocation(line: 125, column: 45, scope: !459)
!466 = !DILocation(line: 125, column: 29, scope: !459)
!467 = !DILocation(line: 125, column: 9, scope: !459)
!468 = !DILocation(line: 125, column: 15, scope: !459)
!469 = !DILocation(line: 125, column: 27, scope: !459)
!470 = !DILocation(line: 126, column: 9, scope: !459)
!471 = distinct !{!471, !449, !472, !119}
!472 = !DILocation(line: 127, column: 5, scope: !438)
!473 = !DILocation(line: 129, column: 12, scope: !438)
!474 = !DILocation(line: 129, column: 5, scope: !438)
!475 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !476, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!476 = !DISubroutineType(types: !477)
!477 = !{!333, !412, !333, !269}
!478 = !DILocalVariable(name: "bytes", arg: 1, scope: !475, file: !3, line: 135, type: !412)
!479 = !DILocation(line: 135, column: 41, scope: !475)
!480 = !DILocalVariable(name: "numBytes", arg: 2, scope: !475, file: !3, line: 135, type: !333)
!481 = !DILocation(line: 135, column: 55, scope: !475)
!482 = !DILocalVariable(name: "hex", arg: 3, scope: !475, file: !3, line: 135, type: !269)
!483 = !DILocation(line: 135, column: 76, scope: !475)
!484 = !DILocalVariable(name: "numWritten", scope: !475, file: !3, line: 137, type: !333)
!485 = !DILocation(line: 137, column: 12, scope: !475)
!486 = !DILocation(line: 143, column: 5, scope: !475)
!487 = !DILocation(line: 143, column: 12, scope: !475)
!488 = !DILocation(line: 143, column: 25, scope: !475)
!489 = !DILocation(line: 143, column: 23, scope: !475)
!490 = !DILocation(line: 143, column: 34, scope: !475)
!491 = !DILocation(line: 143, column: 47, scope: !475)
!492 = !DILocation(line: 143, column: 55, scope: !475)
!493 = !DILocation(line: 143, column: 53, scope: !475)
!494 = !DILocation(line: 143, column: 37, scope: !475)
!495 = !DILocation(line: 143, column: 68, scope: !475)
!496 = !DILocation(line: 143, column: 81, scope: !475)
!497 = !DILocation(line: 143, column: 89, scope: !475)
!498 = !DILocation(line: 143, column: 87, scope: !475)
!499 = !DILocation(line: 143, column: 100, scope: !475)
!500 = !DILocation(line: 143, column: 71, scope: !475)
!501 = !DILocation(line: 0, scope: !475)
!502 = !DILocalVariable(name: "byte", scope: !503, file: !3, line: 145, type: !23)
!503 = distinct !DILexicalBlock(scope: !475, file: !3, line: 144, column: 5)
!504 = !DILocation(line: 145, column: 13, scope: !503)
!505 = !DILocation(line: 146, column: 18, scope: !503)
!506 = !DILocation(line: 146, column: 26, scope: !503)
!507 = !DILocation(line: 146, column: 24, scope: !503)
!508 = !DILocation(line: 146, column: 9, scope: !503)
!509 = !DILocation(line: 147, column: 45, scope: !503)
!510 = !DILocation(line: 147, column: 29, scope: !503)
!511 = !DILocation(line: 147, column: 9, scope: !503)
!512 = !DILocation(line: 147, column: 15, scope: !503)
!513 = !DILocation(line: 147, column: 27, scope: !503)
!514 = !DILocation(line: 148, column: 9, scope: !503)
!515 = distinct !{!515, !486, !516, !119}
!516 = !DILocation(line: 149, column: 5, scope: !475)
!517 = !DILocation(line: 151, column: 12, scope: !475)
!518 = !DILocation(line: 151, column: 5, scope: !475)
!519 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !520, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DISubroutineType(types: !521)
!521 = !{!23}
!522 = !DILocation(line: 158, column: 5, scope: !519)
!523 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !520, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 163, column: 5, scope: !523)
!525 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !520, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 168, column: 13, scope: !525)
!527 = !DILocation(line: 168, column: 20, scope: !525)
!528 = !DILocation(line: 168, column: 5, scope: !525)
!529 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !79, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 187, column: 16, scope: !529)
!531 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !79, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 188, column: 16, scope: !531)
!533 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !79, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 189, column: 16, scope: !533)
!535 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !79, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 190, column: 16, scope: !535)
!537 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !79, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 191, column: 16, scope: !537)
!539 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !79, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 192, column: 16, scope: !539)
!541 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !79, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 193, column: 16, scope: !541)
!543 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !79, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 194, column: 16, scope: !543)
!545 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !79, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 195, column: 16, scope: !545)
!547 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !79, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 198, column: 15, scope: !547)
!549 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !79, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 199, column: 15, scope: !549)
!551 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !79, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 200, column: 15, scope: !551)
!553 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !79, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 201, column: 15, scope: !553)
!555 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !79, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 202, column: 15, scope: !555)
!557 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !79, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 203, column: 15, scope: !557)
!559 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !79, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 204, column: 15, scope: !559)
!561 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !79, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 205, column: 15, scope: !561)
!563 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !79, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 206, column: 15, scope: !563)
