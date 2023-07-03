; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@badStatic = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !8
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !11
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !13
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i32 %data) #0 !dbg !19 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = load i32, i32* @badStatic, align 4, !dbg !24
  %tobool = icmp ne i32 %0, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.end5, !dbg !26

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !31, metadata !DIExpression()), !dbg !35
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !35
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !35
  %2 = load i32, i32* %data.addr, align 4, !dbg !36
  %cmp = icmp sge i32 %2, 0, !dbg !38
  br i1 %cmp, label %if.then1, label %if.else, !dbg !39

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !40
  %idxprom = sext i32 %3 to i64, !dbg !42
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !42
  store i32 1, i32* %arrayidx, align 4, !dbg !43
  store i32 0, i32* %i, align 4, !dbg !44
  br label %for.cond, !dbg !46

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !47
  %cmp2 = icmp slt i32 %4, 10, !dbg !49
  br i1 %cmp2, label %for.body, label %for.end, !dbg !50

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !51
  %idxprom3 = sext i32 %5 to i64, !dbg !53
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !53
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !53
  call void @printIntLine(i32 %6), !dbg !54
  br label %for.inc, !dbg !55

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !56
  %inc = add nsw i32 %7, 1, !dbg !56
  store i32 %inc, i32* %i, align 4, !dbg !56
  br label %for.cond, !dbg !57, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !61

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !62
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !64

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !65
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad() #0 !dbg !66 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !69, metadata !DIExpression()), !dbg !70
  store i32 -1, i32* %data, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !72, metadata !DIExpression()), !dbg !78
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !78
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !78
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !79
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !81
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !82
  %cmp = icmp ne i8* %call, null, !dbg !83
  br i1 %cmp, label %if.then, label %if.else, !dbg !84

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !85
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !87
  store i32 %call2, i32* %data, align 4, !dbg !88
  br label %if.end, !dbg !89

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !90
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1, i32* @badStatic, align 4, !dbg !92
  %2 = load i32, i32* %data, align 4, !dbg !93
  call void @badSink(i32 %2), !dbg !94
  ret void, !dbg !95
}

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1Sink(i32 %data) #0 !dbg !96 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !97, metadata !DIExpression()), !dbg !98
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !99
  %tobool = icmp ne i32 %0, 0, !dbg !99
  br i1 %tobool, label %if.then, label %if.else, !dbg !101

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !102
  br label %if.end7, !dbg !104

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !105, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !109, metadata !DIExpression()), !dbg !110
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !110
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !110
  %2 = load i32, i32* %data.addr, align 4, !dbg !111
  %cmp = icmp sge i32 %2, 0, !dbg !113
  br i1 %cmp, label %land.lhs.true, label %if.else6, !dbg !114

land.lhs.true:                                    ; preds = %if.else
  %3 = load i32, i32* %data.addr, align 4, !dbg !115
  %cmp1 = icmp slt i32 %3, 10, !dbg !116
  br i1 %cmp1, label %if.then2, label %if.else6, !dbg !117

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !118
  %idxprom = sext i32 %4 to i64, !dbg !120
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !120
  store i32 1, i32* %arrayidx, align 4, !dbg !121
  store i32 0, i32* %i, align 4, !dbg !122
  br label %for.cond, !dbg !124

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !125
  %cmp3 = icmp slt i32 %5, 10, !dbg !127
  br i1 %cmp3, label %for.body, label %for.end, !dbg !128

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !129
  %idxprom4 = sext i32 %6 to i64, !dbg !131
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !131
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !131
  call void @printIntLine(i32 %7), !dbg !132
  br label %for.inc, !dbg !133

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !134
  %inc = add nsw i32 %8, 1, !dbg !134
  store i32 %inc, i32* %i, align 4, !dbg !134
  br label %for.cond, !dbg !135, !llvm.loop !136

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !138

if.else6:                                         ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !139
  br label %if.end

if.end:                                           ; preds = %if.else6, %for.end
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret void, !dbg !141
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !142 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !143, metadata !DIExpression()), !dbg !144
  store i32 -1, i32* %data, align 4, !dbg !145
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !146, metadata !DIExpression()), !dbg !148
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !148
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !148
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !149
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !151
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !152
  %cmp = icmp ne i8* %call, null, !dbg !153
  br i1 %cmp, label %if.then, label %if.else, !dbg !154

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !155
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !157
  store i32 %call2, i32* %data, align 4, !dbg !158
  br label %if.end, !dbg !159

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !160
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !162
  %2 = load i32, i32* %data, align 4, !dbg !163
  call void @goodB2G1Sink(i32 %2), !dbg !164
  ret void, !dbg !165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2Sink(i32 %data) #0 !dbg !166 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !167, metadata !DIExpression()), !dbg !168
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !169
  %tobool = icmp ne i32 %0, 0, !dbg !169
  br i1 %tobool, label %if.then, label %if.end6, !dbg !171

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !172, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !176, metadata !DIExpression()), !dbg !177
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !177
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !177
  %2 = load i32, i32* %data.addr, align 4, !dbg !178
  %cmp = icmp sge i32 %2, 0, !dbg !180
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !181

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !182
  %cmp1 = icmp slt i32 %3, 10, !dbg !183
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !184

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !185
  %idxprom = sext i32 %4 to i64, !dbg !187
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !187
  store i32 1, i32* %arrayidx, align 4, !dbg !188
  store i32 0, i32* %i, align 4, !dbg !189
  br label %for.cond, !dbg !191

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !192
  %cmp3 = icmp slt i32 %5, 10, !dbg !194
  br i1 %cmp3, label %for.body, label %for.end, !dbg !195

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !196
  %idxprom4 = sext i32 %6 to i64, !dbg !198
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !198
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !198
  call void @printIntLine(i32 %7), !dbg !199
  br label %for.inc, !dbg !200

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !201
  %inc = add nsw i32 %8, 1, !dbg !201
  store i32 %inc, i32* %i, align 4, !dbg !201
  br label %for.cond, !dbg !202, !llvm.loop !203

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !205

if.else:                                          ; preds = %land.lhs.true, %if.then
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !206
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end6, !dbg !208

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !210 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !211, metadata !DIExpression()), !dbg !212
  store i32 -1, i32* %data, align 4, !dbg !213
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !214, metadata !DIExpression()), !dbg !216
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !216
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !216
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !217
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !219
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !220
  %cmp = icmp ne i8* %call, null, !dbg !221
  br i1 %cmp, label %if.then, label %if.else, !dbg !222

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !223
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !225
  store i32 %call2, i32* %data, align 4, !dbg !226
  br label %if.end, !dbg !227

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !228
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !230
  %2 = load i32, i32* %data, align 4, !dbg !231
  call void @goodB2G2Sink(i32 %2), !dbg !232
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i32 %data) #0 !dbg !234 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !235, metadata !DIExpression()), !dbg !236
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !237
  %tobool = icmp ne i32 %0, 0, !dbg !237
  br i1 %tobool, label %if.then, label %if.end5, !dbg !239

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !240, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !244, metadata !DIExpression()), !dbg !245
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !245
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !245
  %2 = load i32, i32* %data.addr, align 4, !dbg !246
  %cmp = icmp sge i32 %2, 0, !dbg !248
  br i1 %cmp, label %if.then1, label %if.else, !dbg !249

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !250
  %idxprom = sext i32 %3 to i64, !dbg !252
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !252
  store i32 1, i32* %arrayidx, align 4, !dbg !253
  store i32 0, i32* %i, align 4, !dbg !254
  br label %for.cond, !dbg !256

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !257
  %cmp2 = icmp slt i32 %4, 10, !dbg !259
  br i1 %cmp2, label %for.body, label %for.end, !dbg !260

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !261
  %idxprom3 = sext i32 %5 to i64, !dbg !263
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !263
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !263
  call void @printIntLine(i32 %6), !dbg !264
  br label %for.inc, !dbg !265

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !266
  %inc = add nsw i32 %7, 1, !dbg !266
  store i32 %inc, i32* %i, align 4, !dbg !266
  br label %for.cond, !dbg !267, !llvm.loop !268

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !270

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !271
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !273

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !275 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !276, metadata !DIExpression()), !dbg !277
  store i32 -1, i32* %data, align 4, !dbg !278
  store i32 7, i32* %data, align 4, !dbg !279
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !280
  %0 = load i32, i32* %data, align 4, !dbg !281
  call void @goodG2BSink(i32 %0), !dbg !282
  ret void, !dbg !283
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_good() #0 !dbg !284 {
entry:
  call void @goodB2G1(), !dbg !285
  call void @goodB2G2(), !dbg !286
  call void @goodG2B(), !dbg !287
  ret void, !dbg !288
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 26, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_582/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !11, !13}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 81, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 82, type: !10, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 83, type: !10, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 28, type: !20, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !10}
!22 = !DILocalVariable(name: "data", arg: 1, scope: !19, file: !3, line: 28, type: !10)
!23 = !DILocation(line: 28, column: 18, scope: !19)
!24 = !DILocation(line: 30, column: 8, scope: !25)
!25 = distinct !DILexicalBlock(scope: !19, file: !3, line: 30, column: 8)
!26 = !DILocation(line: 30, column: 8, scope: !19)
!27 = !DILocalVariable(name: "i", scope: !28, file: !3, line: 33, type: !10)
!28 = distinct !DILexicalBlock(scope: !29, file: !3, line: 32, column: 9)
!29 = distinct !DILexicalBlock(scope: !25, file: !3, line: 31, column: 5)
!30 = !DILocation(line: 33, column: 17, scope: !28)
!31 = !DILocalVariable(name: "buffer", scope: !28, file: !3, line: 34, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 10)
!35 = !DILocation(line: 34, column: 17, scope: !28)
!36 = !DILocation(line: 37, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !28, file: !3, line: 37, column: 17)
!38 = !DILocation(line: 37, column: 22, scope: !37)
!39 = !DILocation(line: 37, column: 17, scope: !28)
!40 = !DILocation(line: 39, column: 24, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !3, line: 38, column: 13)
!42 = !DILocation(line: 39, column: 17, scope: !41)
!43 = !DILocation(line: 39, column: 30, scope: !41)
!44 = !DILocation(line: 41, column: 23, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !3, line: 41, column: 17)
!46 = !DILocation(line: 41, column: 21, scope: !45)
!47 = !DILocation(line: 41, column: 28, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !3, line: 41, column: 17)
!49 = !DILocation(line: 41, column: 30, scope: !48)
!50 = !DILocation(line: 41, column: 17, scope: !45)
!51 = !DILocation(line: 43, column: 41, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !3, line: 42, column: 17)
!53 = !DILocation(line: 43, column: 34, scope: !52)
!54 = !DILocation(line: 43, column: 21, scope: !52)
!55 = !DILocation(line: 44, column: 17, scope: !52)
!56 = !DILocation(line: 41, column: 37, scope: !48)
!57 = !DILocation(line: 41, column: 17, scope: !48)
!58 = distinct !{!58, !50, !59, !60}
!59 = !DILocation(line: 44, column: 17, scope: !45)
!60 = !{!"llvm.loop.mustprogress"}
!61 = !DILocation(line: 45, column: 13, scope: !41)
!62 = !DILocation(line: 48, column: 17, scope: !63)
!63 = distinct !DILexicalBlock(scope: !37, file: !3, line: 47, column: 13)
!64 = !DILocation(line: 51, column: 5, scope: !29)
!65 = !DILocation(line: 52, column: 1, scope: !19)
!66 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad", scope: !3, file: !3, line: 54, type: !67, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!67 = !DISubroutineType(types: !68)
!68 = !{null}
!69 = !DILocalVariable(name: "data", scope: !66, file: !3, line: 56, type: !10)
!70 = !DILocation(line: 56, column: 9, scope: !66)
!71 = !DILocation(line: 58, column: 10, scope: !66)
!72 = !DILocalVariable(name: "inputBuffer", scope: !73, file: !3, line: 60, type: !74)
!73 = distinct !DILexicalBlock(scope: !66, file: !3, line: 59, column: 5)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 112, elements: !76)
!75 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!76 = !{!77}
!77 = !DISubrange(count: 14)
!78 = !DILocation(line: 60, column: 14, scope: !73)
!79 = !DILocation(line: 62, column: 19, scope: !80)
!80 = distinct !DILexicalBlock(scope: !73, file: !3, line: 62, column: 13)
!81 = !DILocation(line: 62, column: 49, scope: !80)
!82 = !DILocation(line: 62, column: 13, scope: !80)
!83 = !DILocation(line: 62, column: 56, scope: !80)
!84 = !DILocation(line: 62, column: 13, scope: !73)
!85 = !DILocation(line: 65, column: 25, scope: !86)
!86 = distinct !DILexicalBlock(scope: !80, file: !3, line: 63, column: 9)
!87 = !DILocation(line: 65, column: 20, scope: !86)
!88 = !DILocation(line: 65, column: 18, scope: !86)
!89 = !DILocation(line: 66, column: 9, scope: !86)
!90 = !DILocation(line: 69, column: 13, scope: !91)
!91 = distinct !DILexicalBlock(scope: !80, file: !3, line: 68, column: 9)
!92 = !DILocation(line: 72, column: 15, scope: !66)
!93 = !DILocation(line: 73, column: 13, scope: !66)
!94 = !DILocation(line: 73, column: 5, scope: !66)
!95 = !DILocation(line: 74, column: 1, scope: !66)
!96 = distinct !DISubprogram(name: "goodB2G1Sink", scope: !3, file: !3, line: 86, type: !20, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!97 = !DILocalVariable(name: "data", arg: 1, scope: !96, file: !3, line: 86, type: !10)
!98 = !DILocation(line: 86, column: 23, scope: !96)
!99 = !DILocation(line: 88, column: 8, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !3, line: 88, column: 8)
!101 = !DILocation(line: 88, column: 8, scope: !96)
!102 = !DILocation(line: 91, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !3, line: 89, column: 5)
!104 = !DILocation(line: 92, column: 5, scope: !103)
!105 = !DILocalVariable(name: "i", scope: !106, file: !3, line: 96, type: !10)
!106 = distinct !DILexicalBlock(scope: !107, file: !3, line: 95, column: 9)
!107 = distinct !DILexicalBlock(scope: !100, file: !3, line: 94, column: 5)
!108 = !DILocation(line: 96, column: 17, scope: !106)
!109 = !DILocalVariable(name: "buffer", scope: !106, file: !3, line: 97, type: !32)
!110 = !DILocation(line: 97, column: 17, scope: !106)
!111 = !DILocation(line: 99, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !106, file: !3, line: 99, column: 17)
!113 = !DILocation(line: 99, column: 22, scope: !112)
!114 = !DILocation(line: 99, column: 27, scope: !112)
!115 = !DILocation(line: 99, column: 30, scope: !112)
!116 = !DILocation(line: 99, column: 35, scope: !112)
!117 = !DILocation(line: 99, column: 17, scope: !106)
!118 = !DILocation(line: 101, column: 24, scope: !119)
!119 = distinct !DILexicalBlock(scope: !112, file: !3, line: 100, column: 13)
!120 = !DILocation(line: 101, column: 17, scope: !119)
!121 = !DILocation(line: 101, column: 30, scope: !119)
!122 = !DILocation(line: 103, column: 23, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !3, line: 103, column: 17)
!124 = !DILocation(line: 103, column: 21, scope: !123)
!125 = !DILocation(line: 103, column: 28, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !3, line: 103, column: 17)
!127 = !DILocation(line: 103, column: 30, scope: !126)
!128 = !DILocation(line: 103, column: 17, scope: !123)
!129 = !DILocation(line: 105, column: 41, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !3, line: 104, column: 17)
!131 = !DILocation(line: 105, column: 34, scope: !130)
!132 = !DILocation(line: 105, column: 21, scope: !130)
!133 = !DILocation(line: 106, column: 17, scope: !130)
!134 = !DILocation(line: 103, column: 37, scope: !126)
!135 = !DILocation(line: 103, column: 17, scope: !126)
!136 = distinct !{!136, !128, !137, !60}
!137 = !DILocation(line: 106, column: 17, scope: !123)
!138 = !DILocation(line: 107, column: 13, scope: !119)
!139 = !DILocation(line: 110, column: 17, scope: !140)
!140 = distinct !DILexicalBlock(scope: !112, file: !3, line: 109, column: 13)
!141 = !DILocation(line: 114, column: 1, scope: !96)
!142 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 116, type: !67, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!143 = !DILocalVariable(name: "data", scope: !142, file: !3, line: 118, type: !10)
!144 = !DILocation(line: 118, column: 9, scope: !142)
!145 = !DILocation(line: 120, column: 10, scope: !142)
!146 = !DILocalVariable(name: "inputBuffer", scope: !147, file: !3, line: 122, type: !74)
!147 = distinct !DILexicalBlock(scope: !142, file: !3, line: 121, column: 5)
!148 = !DILocation(line: 122, column: 14, scope: !147)
!149 = !DILocation(line: 124, column: 19, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !3, line: 124, column: 13)
!151 = !DILocation(line: 124, column: 49, scope: !150)
!152 = !DILocation(line: 124, column: 13, scope: !150)
!153 = !DILocation(line: 124, column: 56, scope: !150)
!154 = !DILocation(line: 124, column: 13, scope: !147)
!155 = !DILocation(line: 127, column: 25, scope: !156)
!156 = distinct !DILexicalBlock(scope: !150, file: !3, line: 125, column: 9)
!157 = !DILocation(line: 127, column: 20, scope: !156)
!158 = !DILocation(line: 127, column: 18, scope: !156)
!159 = !DILocation(line: 128, column: 9, scope: !156)
!160 = !DILocation(line: 131, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !150, file: !3, line: 130, column: 9)
!162 = !DILocation(line: 134, column: 20, scope: !142)
!163 = !DILocation(line: 135, column: 18, scope: !142)
!164 = !DILocation(line: 135, column: 5, scope: !142)
!165 = !DILocation(line: 136, column: 1, scope: !142)
!166 = distinct !DISubprogram(name: "goodB2G2Sink", scope: !3, file: !3, line: 139, type: !20, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!167 = !DILocalVariable(name: "data", arg: 1, scope: !166, file: !3, line: 139, type: !10)
!168 = !DILocation(line: 139, column: 23, scope: !166)
!169 = !DILocation(line: 141, column: 8, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !3, line: 141, column: 8)
!171 = !DILocation(line: 141, column: 8, scope: !166)
!172 = !DILocalVariable(name: "i", scope: !173, file: !3, line: 144, type: !10)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 143, column: 9)
!174 = distinct !DILexicalBlock(scope: !170, file: !3, line: 142, column: 5)
!175 = !DILocation(line: 144, column: 17, scope: !173)
!176 = !DILocalVariable(name: "buffer", scope: !173, file: !3, line: 145, type: !32)
!177 = !DILocation(line: 145, column: 17, scope: !173)
!178 = !DILocation(line: 147, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !173, file: !3, line: 147, column: 17)
!180 = !DILocation(line: 147, column: 22, scope: !179)
!181 = !DILocation(line: 147, column: 27, scope: !179)
!182 = !DILocation(line: 147, column: 30, scope: !179)
!183 = !DILocation(line: 147, column: 35, scope: !179)
!184 = !DILocation(line: 147, column: 17, scope: !173)
!185 = !DILocation(line: 149, column: 24, scope: !186)
!186 = distinct !DILexicalBlock(scope: !179, file: !3, line: 148, column: 13)
!187 = !DILocation(line: 149, column: 17, scope: !186)
!188 = !DILocation(line: 149, column: 30, scope: !186)
!189 = !DILocation(line: 151, column: 23, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !3, line: 151, column: 17)
!191 = !DILocation(line: 151, column: 21, scope: !190)
!192 = !DILocation(line: 151, column: 28, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !3, line: 151, column: 17)
!194 = !DILocation(line: 151, column: 30, scope: !193)
!195 = !DILocation(line: 151, column: 17, scope: !190)
!196 = !DILocation(line: 153, column: 41, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !3, line: 152, column: 17)
!198 = !DILocation(line: 153, column: 34, scope: !197)
!199 = !DILocation(line: 153, column: 21, scope: !197)
!200 = !DILocation(line: 154, column: 17, scope: !197)
!201 = !DILocation(line: 151, column: 37, scope: !193)
!202 = !DILocation(line: 151, column: 17, scope: !193)
!203 = distinct !{!203, !195, !204, !60}
!204 = !DILocation(line: 154, column: 17, scope: !190)
!205 = !DILocation(line: 155, column: 13, scope: !186)
!206 = !DILocation(line: 158, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !179, file: !3, line: 157, column: 13)
!208 = !DILocation(line: 161, column: 5, scope: !174)
!209 = !DILocation(line: 162, column: 1, scope: !166)
!210 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 164, type: !67, scopeLine: 165, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!211 = !DILocalVariable(name: "data", scope: !210, file: !3, line: 166, type: !10)
!212 = !DILocation(line: 166, column: 9, scope: !210)
!213 = !DILocation(line: 168, column: 10, scope: !210)
!214 = !DILocalVariable(name: "inputBuffer", scope: !215, file: !3, line: 170, type: !74)
!215 = distinct !DILexicalBlock(scope: !210, file: !3, line: 169, column: 5)
!216 = !DILocation(line: 170, column: 14, scope: !215)
!217 = !DILocation(line: 172, column: 19, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !3, line: 172, column: 13)
!219 = !DILocation(line: 172, column: 49, scope: !218)
!220 = !DILocation(line: 172, column: 13, scope: !218)
!221 = !DILocation(line: 172, column: 56, scope: !218)
!222 = !DILocation(line: 172, column: 13, scope: !215)
!223 = !DILocation(line: 175, column: 25, scope: !224)
!224 = distinct !DILexicalBlock(scope: !218, file: !3, line: 173, column: 9)
!225 = !DILocation(line: 175, column: 20, scope: !224)
!226 = !DILocation(line: 175, column: 18, scope: !224)
!227 = !DILocation(line: 176, column: 9, scope: !224)
!228 = !DILocation(line: 179, column: 13, scope: !229)
!229 = distinct !DILexicalBlock(scope: !218, file: !3, line: 178, column: 9)
!230 = !DILocation(line: 182, column: 20, scope: !210)
!231 = !DILocation(line: 183, column: 18, scope: !210)
!232 = !DILocation(line: 183, column: 5, scope: !210)
!233 = !DILocation(line: 184, column: 1, scope: !210)
!234 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 187, type: !20, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!235 = !DILocalVariable(name: "data", arg: 1, scope: !234, file: !3, line: 187, type: !10)
!236 = !DILocation(line: 187, column: 22, scope: !234)
!237 = !DILocation(line: 189, column: 8, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !3, line: 189, column: 8)
!239 = !DILocation(line: 189, column: 8, scope: !234)
!240 = !DILocalVariable(name: "i", scope: !241, file: !3, line: 192, type: !10)
!241 = distinct !DILexicalBlock(scope: !242, file: !3, line: 191, column: 9)
!242 = distinct !DILexicalBlock(scope: !238, file: !3, line: 190, column: 5)
!243 = !DILocation(line: 192, column: 17, scope: !241)
!244 = !DILocalVariable(name: "buffer", scope: !241, file: !3, line: 193, type: !32)
!245 = !DILocation(line: 193, column: 17, scope: !241)
!246 = !DILocation(line: 196, column: 17, scope: !247)
!247 = distinct !DILexicalBlock(scope: !241, file: !3, line: 196, column: 17)
!248 = !DILocation(line: 196, column: 22, scope: !247)
!249 = !DILocation(line: 196, column: 17, scope: !241)
!250 = !DILocation(line: 198, column: 24, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !3, line: 197, column: 13)
!252 = !DILocation(line: 198, column: 17, scope: !251)
!253 = !DILocation(line: 198, column: 30, scope: !251)
!254 = !DILocation(line: 200, column: 23, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !3, line: 200, column: 17)
!256 = !DILocation(line: 200, column: 21, scope: !255)
!257 = !DILocation(line: 200, column: 28, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !3, line: 200, column: 17)
!259 = !DILocation(line: 200, column: 30, scope: !258)
!260 = !DILocation(line: 200, column: 17, scope: !255)
!261 = !DILocation(line: 202, column: 41, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !3, line: 201, column: 17)
!263 = !DILocation(line: 202, column: 34, scope: !262)
!264 = !DILocation(line: 202, column: 21, scope: !262)
!265 = !DILocation(line: 203, column: 17, scope: !262)
!266 = !DILocation(line: 200, column: 37, scope: !258)
!267 = !DILocation(line: 200, column: 17, scope: !258)
!268 = distinct !{!268, !260, !269, !60}
!269 = !DILocation(line: 203, column: 17, scope: !255)
!270 = !DILocation(line: 204, column: 13, scope: !251)
!271 = !DILocation(line: 207, column: 17, scope: !272)
!272 = distinct !DILexicalBlock(scope: !247, file: !3, line: 206, column: 13)
!273 = !DILocation(line: 210, column: 5, scope: !242)
!274 = !DILocation(line: 211, column: 1, scope: !234)
!275 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 213, type: !67, scopeLine: 214, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!276 = !DILocalVariable(name: "data", scope: !275, file: !3, line: 215, type: !10)
!277 = !DILocation(line: 215, column: 9, scope: !275)
!278 = !DILocation(line: 217, column: 10, scope: !275)
!279 = !DILocation(line: 220, column: 10, scope: !275)
!280 = !DILocation(line: 221, column: 19, scope: !275)
!281 = !DILocation(line: 222, column: 17, scope: !275)
!282 = !DILocation(line: 222, column: 5, scope: !275)
!283 = !DILocation(line: 223, column: 1, scope: !275)
!284 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_good", scope: !3, file: !3, line: 225, type: !67, scopeLine: 226, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!285 = !DILocation(line: 227, column: 5, scope: !284)
!286 = !DILocation(line: 228, column: 5, scope: !284)
!287 = !DILocation(line: 229, column: 5, scope: !284)
!288 = !DILocation(line: 230, column: 1, scope: !284)
