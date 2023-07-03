; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad() #0 !dbg !9 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 -1, i32* %data, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !16, metadata !DIExpression()), !dbg !22
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !22
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !22
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !23
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !25
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !26
  %cmp = icmp ne i8* %call, null, !dbg !27
  br i1 %cmp, label %if.then, label %if.else, !dbg !28

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !29
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !31
  store i32 %call2, i32* %data, align 4, !dbg !32
  br label %if.end, !dbg !33

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !34
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !36, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !39, metadata !DIExpression()), !dbg !43
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !43
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !43
  %3 = load i32, i32* %data, align 4, !dbg !44
  %cmp3 = icmp sge i32 %3, 0, !dbg !46
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !47

if.then4:                                         ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !48
  %idxprom = sext i32 %4 to i64, !dbg !50
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !50
  store i32 1, i32* %arrayidx, align 4, !dbg !51
  store i32 0, i32* %i, align 4, !dbg !52
  br label %for.cond, !dbg !54

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !55
  %cmp5 = icmp slt i32 %5, 10, !dbg !57
  br i1 %cmp5, label %for.body, label %for.end, !dbg !58

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !59
  %idxprom6 = sext i32 %6 to i64, !dbg !61
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !61
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !61
  call void @printIntLine(i32 %7), !dbg !62
  br label %for.inc, !dbg !63

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !64
  %inc = add nsw i32 %8, 1, !dbg !64
  store i32 %inc, i32* %i, align 4, !dbg !64
  br label %for.cond, !dbg !65, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !69

if.else8:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !70
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  ret void, !dbg !72
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

declare dso_local void @printLine(i8*) #3

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !73 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !74, metadata !DIExpression()), !dbg !75
  store i32 -1, i32* %data, align 4, !dbg !76
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !77, metadata !DIExpression()), !dbg !79
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !79
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !79
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !80
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !82
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !83
  %cmp = icmp ne i8* %call, null, !dbg !84
  br i1 %cmp, label %if.then, label %if.else, !dbg !85

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !86
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !88
  store i32 %call2, i32* %data, align 4, !dbg !89
  br label %if.end, !dbg !90

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !91
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !93, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !96, metadata !DIExpression()), !dbg !97
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !97
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !97
  %3 = load i32, i32* %data, align 4, !dbg !98
  %cmp3 = icmp sge i32 %3, 0, !dbg !100
  br i1 %cmp3, label %land.lhs.true, label %if.else9, !dbg !101

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !102
  %cmp4 = icmp slt i32 %4, 10, !dbg !103
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !104

if.then5:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !105
  %idxprom = sext i32 %5 to i64, !dbg !107
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !107
  store i32 1, i32* %arrayidx, align 4, !dbg !108
  store i32 0, i32* %i, align 4, !dbg !109
  br label %for.cond, !dbg !111

for.cond:                                         ; preds = %for.inc, %if.then5
  %6 = load i32, i32* %i, align 4, !dbg !112
  %cmp6 = icmp slt i32 %6, 10, !dbg !114
  br i1 %cmp6, label %for.body, label %for.end, !dbg !115

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !116
  %idxprom7 = sext i32 %7 to i64, !dbg !118
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !118
  %8 = load i32, i32* %arrayidx8, align 4, !dbg !118
  call void @printIntLine(i32 %8), !dbg !119
  br label %for.inc, !dbg !120

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !121
  %inc = add nsw i32 %9, 1, !dbg !121
  store i32 %inc, i32* %i, align 4, !dbg !121
  br label %for.cond, !dbg !122, !llvm.loop !123

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !125

if.else9:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !126
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  ret void, !dbg !128
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !129 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !130, metadata !DIExpression()), !dbg !131
  store i32 -1, i32* %data, align 4, !dbg !132
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !133, metadata !DIExpression()), !dbg !135
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !135
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !136
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !138
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !139
  %cmp = icmp ne i8* %call, null, !dbg !140
  br i1 %cmp, label %if.then, label %if.else, !dbg !141

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !142
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !144
  store i32 %call2, i32* %data, align 4, !dbg !145
  br label %if.end, !dbg !146

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !147
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !149, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !152, metadata !DIExpression()), !dbg !153
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !153
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !153
  %3 = load i32, i32* %data, align 4, !dbg !154
  %cmp3 = icmp sge i32 %3, 0, !dbg !156
  br i1 %cmp3, label %land.lhs.true, label %if.else9, !dbg !157

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !158
  %cmp4 = icmp slt i32 %4, 10, !dbg !159
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !160

if.then5:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !161
  %idxprom = sext i32 %5 to i64, !dbg !163
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !163
  store i32 1, i32* %arrayidx, align 4, !dbg !164
  store i32 0, i32* %i, align 4, !dbg !165
  br label %for.cond, !dbg !167

for.cond:                                         ; preds = %for.inc, %if.then5
  %6 = load i32, i32* %i, align 4, !dbg !168
  %cmp6 = icmp slt i32 %6, 10, !dbg !170
  br i1 %cmp6, label %for.body, label %for.end, !dbg !171

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !172
  %idxprom7 = sext i32 %7 to i64, !dbg !174
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !174
  %8 = load i32, i32* %arrayidx8, align 4, !dbg !174
  call void @printIntLine(i32 %8), !dbg !175
  br label %for.inc, !dbg !176

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !177
  %inc = add nsw i32 %9, 1, !dbg !177
  store i32 %inc, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !178, !llvm.loop !179

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !181

if.else9:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !182
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  ret void, !dbg !184
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !185 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !186, metadata !DIExpression()), !dbg !187
  store i32 -1, i32* %data, align 4, !dbg !188
  store i32 7, i32* %data, align 4, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %i, metadata !190, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !193, metadata !DIExpression()), !dbg !194
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !194
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !194
  %1 = load i32, i32* %data, align 4, !dbg !195
  %cmp = icmp sge i32 %1, 0, !dbg !197
  br i1 %cmp, label %if.then, label %if.else, !dbg !198

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !199
  %idxprom = sext i32 %2 to i64, !dbg !201
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !201
  store i32 1, i32* %arrayidx, align 4, !dbg !202
  store i32 0, i32* %i, align 4, !dbg !203
  br label %for.cond, !dbg !205

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !206
  %cmp1 = icmp slt i32 %3, 10, !dbg !208
  br i1 %cmp1, label %for.body, label %for.end, !dbg !209

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !210
  %idxprom2 = sext i32 %4 to i64, !dbg !212
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !212
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !212
  call void @printIntLine(i32 %5), !dbg !213
  br label %for.inc, !dbg !214

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !215
  %inc = add nsw i32 %6, 1, !dbg !215
  store i32 %inc, i32* %i, align 4, !dbg !215
  br label %for.cond, !dbg !216, !llvm.loop !217

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !219

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !220
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !222
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !223 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !224, metadata !DIExpression()), !dbg !225
  store i32 -1, i32* %data, align 4, !dbg !226
  store i32 7, i32* %data, align 4, !dbg !227
  call void @llvm.dbg.declare(metadata i32* %i, metadata !228, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !231, metadata !DIExpression()), !dbg !232
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !232
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !232
  %1 = load i32, i32* %data, align 4, !dbg !233
  %cmp = icmp sge i32 %1, 0, !dbg !235
  br i1 %cmp, label %if.then, label %if.else, !dbg !236

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !237
  %idxprom = sext i32 %2 to i64, !dbg !239
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !239
  store i32 1, i32* %arrayidx, align 4, !dbg !240
  store i32 0, i32* %i, align 4, !dbg !241
  br label %for.cond, !dbg !243

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !244
  %cmp1 = icmp slt i32 %3, 10, !dbg !246
  br i1 %cmp1, label %for.body, label %for.end, !dbg !247

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !248
  %idxprom2 = sext i32 %4 to i64, !dbg !250
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !250
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !250
  call void @printIntLine(i32 %5), !dbg !251
  br label %for.inc, !dbg !252

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !253
  %inc = add nsw i32 %6, 1, !dbg !253
  store i32 %inc, i32* %i, align 4, !dbg !253
  br label %for.cond, !dbg !254, !llvm.loop !255

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !257

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !258
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_good() #0 !dbg !261 {
entry:
  call void @goodB2G1(), !dbg !262
  call void @goodB2G2(), !dbg !263
  call void @goodG2B1(), !dbg !264
  call void @goodG2B2(), !dbg !265
  ret void, !dbg !266
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_578/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_bad", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 27, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 27, column: 9, scope: !9)
!15 = !DILocation(line: 29, column: 10, scope: !9)
!16 = !DILocalVariable(name: "inputBuffer", scope: !17, file: !1, line: 34, type: !18)
!17 = distinct !DILexicalBlock(scope: !9, file: !1, line: 33, column: 5)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 112, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 14)
!22 = !DILocation(line: 34, column: 14, scope: !17)
!23 = !DILocation(line: 36, column: 19, scope: !24)
!24 = distinct !DILexicalBlock(scope: !17, file: !1, line: 36, column: 13)
!25 = !DILocation(line: 36, column: 49, scope: !24)
!26 = !DILocation(line: 36, column: 13, scope: !24)
!27 = !DILocation(line: 36, column: 56, scope: !24)
!28 = !DILocation(line: 36, column: 13, scope: !17)
!29 = !DILocation(line: 39, column: 25, scope: !30)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 37, column: 9)
!31 = !DILocation(line: 39, column: 20, scope: !30)
!32 = !DILocation(line: 39, column: 18, scope: !30)
!33 = !DILocation(line: 40, column: 9, scope: !30)
!34 = !DILocation(line: 43, column: 13, scope: !35)
!35 = distinct !DILexicalBlock(scope: !24, file: !1, line: 42, column: 9)
!36 = !DILocalVariable(name: "i", scope: !37, file: !1, line: 56, type: !13)
!37 = distinct !DILexicalBlock(scope: !9, file: !1, line: 55, column: 5)
!38 = !DILocation(line: 56, column: 13, scope: !37)
!39 = !DILocalVariable(name: "buffer", scope: !37, file: !1, line: 57, type: !40)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 10)
!43 = !DILocation(line: 57, column: 13, scope: !37)
!44 = !DILocation(line: 60, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !37, file: !1, line: 60, column: 13)
!46 = !DILocation(line: 60, column: 18, scope: !45)
!47 = !DILocation(line: 60, column: 13, scope: !37)
!48 = !DILocation(line: 62, column: 20, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 61, column: 9)
!50 = !DILocation(line: 62, column: 13, scope: !49)
!51 = !DILocation(line: 62, column: 26, scope: !49)
!52 = !DILocation(line: 64, column: 19, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 64, column: 13)
!54 = !DILocation(line: 64, column: 17, scope: !53)
!55 = !DILocation(line: 64, column: 24, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 64, column: 13)
!57 = !DILocation(line: 64, column: 26, scope: !56)
!58 = !DILocation(line: 64, column: 13, scope: !53)
!59 = !DILocation(line: 66, column: 37, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 65, column: 13)
!61 = !DILocation(line: 66, column: 30, scope: !60)
!62 = !DILocation(line: 66, column: 17, scope: !60)
!63 = !DILocation(line: 67, column: 13, scope: !60)
!64 = !DILocation(line: 64, column: 33, scope: !56)
!65 = !DILocation(line: 64, column: 13, scope: !56)
!66 = distinct !{!66, !58, !67, !68}
!67 = !DILocation(line: 67, column: 13, scope: !53)
!68 = !{!"llvm.loop.mustprogress"}
!69 = !DILocation(line: 68, column: 9, scope: !49)
!70 = !DILocation(line: 71, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !45, file: !1, line: 70, column: 9)
!72 = !DILocation(line: 80, column: 1, scope: !9)
!73 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 87, type: !10, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!74 = !DILocalVariable(name: "data", scope: !73, file: !1, line: 89, type: !13)
!75 = !DILocation(line: 89, column: 9, scope: !73)
!76 = !DILocation(line: 91, column: 10, scope: !73)
!77 = !DILocalVariable(name: "inputBuffer", scope: !78, file: !1, line: 96, type: !18)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 95, column: 5)
!79 = !DILocation(line: 96, column: 14, scope: !78)
!80 = !DILocation(line: 98, column: 19, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 98, column: 13)
!82 = !DILocation(line: 98, column: 49, scope: !81)
!83 = !DILocation(line: 98, column: 13, scope: !81)
!84 = !DILocation(line: 98, column: 56, scope: !81)
!85 = !DILocation(line: 98, column: 13, scope: !78)
!86 = !DILocation(line: 101, column: 25, scope: !87)
!87 = distinct !DILexicalBlock(scope: !81, file: !1, line: 99, column: 9)
!88 = !DILocation(line: 101, column: 20, scope: !87)
!89 = !DILocation(line: 101, column: 18, scope: !87)
!90 = !DILocation(line: 102, column: 9, scope: !87)
!91 = !DILocation(line: 105, column: 13, scope: !92)
!92 = distinct !DILexicalBlock(scope: !81, file: !1, line: 104, column: 9)
!93 = !DILocalVariable(name: "i", scope: !94, file: !1, line: 122, type: !13)
!94 = distinct !DILexicalBlock(scope: !73, file: !1, line: 121, column: 5)
!95 = !DILocation(line: 122, column: 13, scope: !94)
!96 = !DILocalVariable(name: "buffer", scope: !94, file: !1, line: 123, type: !40)
!97 = !DILocation(line: 123, column: 13, scope: !94)
!98 = !DILocation(line: 125, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !1, line: 125, column: 13)
!100 = !DILocation(line: 125, column: 18, scope: !99)
!101 = !DILocation(line: 125, column: 23, scope: !99)
!102 = !DILocation(line: 125, column: 26, scope: !99)
!103 = !DILocation(line: 125, column: 31, scope: !99)
!104 = !DILocation(line: 125, column: 13, scope: !94)
!105 = !DILocation(line: 127, column: 20, scope: !106)
!106 = distinct !DILexicalBlock(scope: !99, file: !1, line: 126, column: 9)
!107 = !DILocation(line: 127, column: 13, scope: !106)
!108 = !DILocation(line: 127, column: 26, scope: !106)
!109 = !DILocation(line: 129, column: 19, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 129, column: 13)
!111 = !DILocation(line: 129, column: 17, scope: !110)
!112 = !DILocation(line: 129, column: 24, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 129, column: 13)
!114 = !DILocation(line: 129, column: 26, scope: !113)
!115 = !DILocation(line: 129, column: 13, scope: !110)
!116 = !DILocation(line: 131, column: 37, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 130, column: 13)
!118 = !DILocation(line: 131, column: 30, scope: !117)
!119 = !DILocation(line: 131, column: 17, scope: !117)
!120 = !DILocation(line: 132, column: 13, scope: !117)
!121 = !DILocation(line: 129, column: 33, scope: !113)
!122 = !DILocation(line: 129, column: 13, scope: !113)
!123 = distinct !{!123, !115, !124, !68}
!124 = !DILocation(line: 132, column: 13, scope: !110)
!125 = !DILocation(line: 133, column: 9, scope: !106)
!126 = !DILocation(line: 136, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !99, file: !1, line: 135, column: 9)
!128 = !DILocation(line: 141, column: 1, scope: !73)
!129 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 144, type: !10, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!130 = !DILocalVariable(name: "data", scope: !129, file: !1, line: 146, type: !13)
!131 = !DILocation(line: 146, column: 9, scope: !129)
!132 = !DILocation(line: 148, column: 10, scope: !129)
!133 = !DILocalVariable(name: "inputBuffer", scope: !134, file: !1, line: 153, type: !18)
!134 = distinct !DILexicalBlock(scope: !129, file: !1, line: 152, column: 5)
!135 = !DILocation(line: 153, column: 14, scope: !134)
!136 = !DILocation(line: 155, column: 19, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !1, line: 155, column: 13)
!138 = !DILocation(line: 155, column: 49, scope: !137)
!139 = !DILocation(line: 155, column: 13, scope: !137)
!140 = !DILocation(line: 155, column: 56, scope: !137)
!141 = !DILocation(line: 155, column: 13, scope: !134)
!142 = !DILocation(line: 158, column: 25, scope: !143)
!143 = distinct !DILexicalBlock(scope: !137, file: !1, line: 156, column: 9)
!144 = !DILocation(line: 158, column: 20, scope: !143)
!145 = !DILocation(line: 158, column: 18, scope: !143)
!146 = !DILocation(line: 159, column: 9, scope: !143)
!147 = !DILocation(line: 162, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !137, file: !1, line: 161, column: 9)
!149 = !DILocalVariable(name: "i", scope: !150, file: !1, line: 175, type: !13)
!150 = distinct !DILexicalBlock(scope: !129, file: !1, line: 174, column: 5)
!151 = !DILocation(line: 175, column: 13, scope: !150)
!152 = !DILocalVariable(name: "buffer", scope: !150, file: !1, line: 176, type: !40)
!153 = !DILocation(line: 176, column: 13, scope: !150)
!154 = !DILocation(line: 178, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 178, column: 13)
!156 = !DILocation(line: 178, column: 18, scope: !155)
!157 = !DILocation(line: 178, column: 23, scope: !155)
!158 = !DILocation(line: 178, column: 26, scope: !155)
!159 = !DILocation(line: 178, column: 31, scope: !155)
!160 = !DILocation(line: 178, column: 13, scope: !150)
!161 = !DILocation(line: 180, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !1, line: 179, column: 9)
!163 = !DILocation(line: 180, column: 13, scope: !162)
!164 = !DILocation(line: 180, column: 26, scope: !162)
!165 = !DILocation(line: 182, column: 19, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 182, column: 13)
!167 = !DILocation(line: 182, column: 17, scope: !166)
!168 = !DILocation(line: 182, column: 24, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 182, column: 13)
!170 = !DILocation(line: 182, column: 26, scope: !169)
!171 = !DILocation(line: 182, column: 13, scope: !166)
!172 = !DILocation(line: 184, column: 37, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 183, column: 13)
!174 = !DILocation(line: 184, column: 30, scope: !173)
!175 = !DILocation(line: 184, column: 17, scope: !173)
!176 = !DILocation(line: 185, column: 13, scope: !173)
!177 = !DILocation(line: 182, column: 33, scope: !169)
!178 = !DILocation(line: 182, column: 13, scope: !169)
!179 = distinct !{!179, !171, !180, !68}
!180 = !DILocation(line: 185, column: 13, scope: !166)
!181 = !DILocation(line: 186, column: 9, scope: !162)
!182 = !DILocation(line: 189, column: 13, scope: !183)
!183 = distinct !DILexicalBlock(scope: !155, file: !1, line: 188, column: 9)
!184 = !DILocation(line: 198, column: 1, scope: !129)
!185 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 201, type: !10, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!186 = !DILocalVariable(name: "data", scope: !185, file: !1, line: 203, type: !13)
!187 = !DILocation(line: 203, column: 9, scope: !185)
!188 = !DILocation(line: 205, column: 10, scope: !185)
!189 = !DILocation(line: 215, column: 14, scope: !185)
!190 = !DILocalVariable(name: "i", scope: !191, file: !1, line: 222, type: !13)
!191 = distinct !DILexicalBlock(scope: !185, file: !1, line: 221, column: 5)
!192 = !DILocation(line: 222, column: 13, scope: !191)
!193 = !DILocalVariable(name: "buffer", scope: !191, file: !1, line: 223, type: !40)
!194 = !DILocation(line: 223, column: 13, scope: !191)
!195 = !DILocation(line: 226, column: 13, scope: !196)
!196 = distinct !DILexicalBlock(scope: !191, file: !1, line: 226, column: 13)
!197 = !DILocation(line: 226, column: 18, scope: !196)
!198 = !DILocation(line: 226, column: 13, scope: !191)
!199 = !DILocation(line: 228, column: 20, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 227, column: 9)
!201 = !DILocation(line: 228, column: 13, scope: !200)
!202 = !DILocation(line: 228, column: 26, scope: !200)
!203 = !DILocation(line: 230, column: 19, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 230, column: 13)
!205 = !DILocation(line: 230, column: 17, scope: !204)
!206 = !DILocation(line: 230, column: 24, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !1, line: 230, column: 13)
!208 = !DILocation(line: 230, column: 26, scope: !207)
!209 = !DILocation(line: 230, column: 13, scope: !204)
!210 = !DILocation(line: 232, column: 37, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 231, column: 13)
!212 = !DILocation(line: 232, column: 30, scope: !211)
!213 = !DILocation(line: 232, column: 17, scope: !211)
!214 = !DILocation(line: 233, column: 13, scope: !211)
!215 = !DILocation(line: 230, column: 33, scope: !207)
!216 = !DILocation(line: 230, column: 13, scope: !207)
!217 = distinct !{!217, !209, !218, !68}
!218 = !DILocation(line: 233, column: 13, scope: !204)
!219 = !DILocation(line: 234, column: 9, scope: !200)
!220 = !DILocation(line: 237, column: 13, scope: !221)
!221 = distinct !DILexicalBlock(scope: !196, file: !1, line: 236, column: 9)
!222 = !DILocation(line: 246, column: 1, scope: !185)
!223 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 249, type: !10, scopeLine: 250, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!224 = !DILocalVariable(name: "data", scope: !223, file: !1, line: 251, type: !13)
!225 = !DILocation(line: 251, column: 9, scope: !223)
!226 = !DILocation(line: 253, column: 10, scope: !223)
!227 = !DILocation(line: 259, column: 14, scope: !223)
!228 = !DILocalVariable(name: "i", scope: !229, file: !1, line: 270, type: !13)
!229 = distinct !DILexicalBlock(scope: !223, file: !1, line: 269, column: 5)
!230 = !DILocation(line: 270, column: 13, scope: !229)
!231 = !DILocalVariable(name: "buffer", scope: !229, file: !1, line: 271, type: !40)
!232 = !DILocation(line: 271, column: 13, scope: !229)
!233 = !DILocation(line: 274, column: 13, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !1, line: 274, column: 13)
!235 = !DILocation(line: 274, column: 18, scope: !234)
!236 = !DILocation(line: 274, column: 13, scope: !229)
!237 = !DILocation(line: 276, column: 20, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !1, line: 275, column: 9)
!239 = !DILocation(line: 276, column: 13, scope: !238)
!240 = !DILocation(line: 276, column: 26, scope: !238)
!241 = !DILocation(line: 278, column: 19, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !1, line: 278, column: 13)
!243 = !DILocation(line: 278, column: 17, scope: !242)
!244 = !DILocation(line: 278, column: 24, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !1, line: 278, column: 13)
!246 = !DILocation(line: 278, column: 26, scope: !245)
!247 = !DILocation(line: 278, column: 13, scope: !242)
!248 = !DILocation(line: 280, column: 37, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !1, line: 279, column: 13)
!250 = !DILocation(line: 280, column: 30, scope: !249)
!251 = !DILocation(line: 280, column: 17, scope: !249)
!252 = !DILocation(line: 281, column: 13, scope: !249)
!253 = !DILocation(line: 278, column: 33, scope: !245)
!254 = !DILocation(line: 278, column: 13, scope: !245)
!255 = distinct !{!255, !247, !256, !68}
!256 = !DILocation(line: 281, column: 13, scope: !242)
!257 = !DILocation(line: 282, column: 9, scope: !238)
!258 = !DILocation(line: 285, column: 13, scope: !259)
!259 = distinct !DILexicalBlock(scope: !234, file: !1, line: 284, column: 9)
!260 = !DILocation(line: 294, column: 1, scope: !223)
!261 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_good", scope: !1, file: !1, line: 296, type: !10, scopeLine: 297, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!262 = !DILocation(line: 298, column: 5, scope: !261)
!263 = !DILocation(line: 299, column: 5, scope: !261)
!264 = !DILocation(line: 300, column: 5, scope: !261)
!265 = !DILocation(line: 301, column: 5, scope: !261)
!266 = !DILocation(line: 302, column: 1, scope: !261)
