; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_02.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_02.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_02_bad() #0 !dbg !9 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 -1, i32* %data, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !16, metadata !DIExpression()), !dbg !24
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !24
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !24
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !25
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !27
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !28
  %cmp = icmp ne i8* %call, null, !dbg !29
  br i1 %cmp, label %if.then, label %if.else, !dbg !30

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !31
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !33
  store i32 %call2, i32* %data, align 4, !dbg !34
  br label %if.end, !dbg !35

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !38, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !43, metadata !DIExpression()), !dbg !47
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !47
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !47
  %3 = load i32, i32* %data, align 4, !dbg !48
  %cmp3 = icmp sge i32 %3, 0, !dbg !50
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !51

if.then4:                                         ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !52
  %idxprom = sext i32 %4 to i64, !dbg !54
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !54
  store i32 1, i32* %arrayidx, align 4, !dbg !55
  store i32 0, i32* %i, align 4, !dbg !56
  br label %for.cond, !dbg !58

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !59
  %cmp5 = icmp slt i32 %5, 10, !dbg !61
  br i1 %cmp5, label %for.body, label %for.end, !dbg !62

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !63
  %idxprom6 = sext i32 %6 to i64, !dbg !65
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !65
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !65
  call void @printIntLine(i32 %7), !dbg !66
  br label %for.inc, !dbg !67

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !68
  %inc = add nsw i32 %8, 1, !dbg !68
  store i32 %inc, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !69, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !73

if.else8:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !74
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  ret void, !dbg !76
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
define dso_local void @goodB2G1() #0 !dbg !77 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !78, metadata !DIExpression()), !dbg !79
  store i32 -1, i32* %data, align 4, !dbg !80
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !81, metadata !DIExpression()), !dbg !85
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !85
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !85
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !86
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !88
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !89
  %cmp = icmp ne i8* %call, null, !dbg !90
  br i1 %cmp, label %if.then, label %if.else, !dbg !91

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !92
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !94
  store i32 %call2, i32* %data, align 4, !dbg !95
  br label %if.end, !dbg !96

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !97
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !99, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !104, metadata !DIExpression()), !dbg !105
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !105
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !105
  %3 = load i32, i32* %data, align 4, !dbg !106
  %cmp3 = icmp sge i32 %3, 0, !dbg !108
  br i1 %cmp3, label %land.lhs.true, label %if.else9, !dbg !109

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !110
  %cmp4 = icmp slt i32 %4, 10, !dbg !111
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !112

if.then5:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !113
  %idxprom = sext i32 %5 to i64, !dbg !115
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !115
  store i32 1, i32* %arrayidx, align 4, !dbg !116
  store i32 0, i32* %i, align 4, !dbg !117
  br label %for.cond, !dbg !119

for.cond:                                         ; preds = %for.inc, %if.then5
  %6 = load i32, i32* %i, align 4, !dbg !120
  %cmp6 = icmp slt i32 %6, 10, !dbg !122
  br i1 %cmp6, label %for.body, label %for.end, !dbg !123

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !124
  %idxprom7 = sext i32 %7 to i64, !dbg !126
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !126
  %8 = load i32, i32* %arrayidx8, align 4, !dbg !126
  call void @printIntLine(i32 %8), !dbg !127
  br label %for.inc, !dbg !128

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !129
  %inc = add nsw i32 %9, 1, !dbg !129
  store i32 %inc, i32* %i, align 4, !dbg !129
  br label %for.cond, !dbg !130, !llvm.loop !131

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !133

if.else9:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !134
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  ret void, !dbg !136
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !137 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !138, metadata !DIExpression()), !dbg !139
  store i32 -1, i32* %data, align 4, !dbg !140
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !141, metadata !DIExpression()), !dbg !145
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !145
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !145
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !146
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !148
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !149
  %cmp = icmp ne i8* %call, null, !dbg !150
  br i1 %cmp, label %if.then, label %if.else, !dbg !151

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !152
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !154
  store i32 %call2, i32* %data, align 4, !dbg !155
  br label %if.end, !dbg !156

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !157
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %i, metadata !159, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !164, metadata !DIExpression()), !dbg !165
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !165
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !165
  %3 = load i32, i32* %data, align 4, !dbg !166
  %cmp3 = icmp sge i32 %3, 0, !dbg !168
  br i1 %cmp3, label %land.lhs.true, label %if.else9, !dbg !169

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %data, align 4, !dbg !170
  %cmp4 = icmp slt i32 %4, 10, !dbg !171
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !172

if.then5:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !173
  %idxprom = sext i32 %5 to i64, !dbg !175
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !175
  store i32 1, i32* %arrayidx, align 4, !dbg !176
  store i32 0, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !179

for.cond:                                         ; preds = %for.inc, %if.then5
  %6 = load i32, i32* %i, align 4, !dbg !180
  %cmp6 = icmp slt i32 %6, 10, !dbg !182
  br i1 %cmp6, label %for.body, label %for.end, !dbg !183

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !184
  %idxprom7 = sext i32 %7 to i64, !dbg !186
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom7, !dbg !186
  %8 = load i32, i32* %arrayidx8, align 4, !dbg !186
  call void @printIntLine(i32 %8), !dbg !187
  br label %for.inc, !dbg !188

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !189
  %inc = add nsw i32 %9, 1, !dbg !189
  store i32 %inc, i32* %i, align 4, !dbg !189
  br label %for.cond, !dbg !190, !llvm.loop !191

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !193

if.else9:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !194
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  ret void, !dbg !196
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !197 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !198, metadata !DIExpression()), !dbg !199
  store i32 -1, i32* %data, align 4, !dbg !200
  store i32 7, i32* %data, align 4, !dbg !201
  call void @llvm.dbg.declare(metadata i32* %i, metadata !204, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !210
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !210
  %1 = load i32, i32* %data, align 4, !dbg !211
  %cmp = icmp sge i32 %1, 0, !dbg !213
  br i1 %cmp, label %if.then, label %if.else, !dbg !214

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !215
  %idxprom = sext i32 %2 to i64, !dbg !217
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !217
  store i32 1, i32* %arrayidx, align 4, !dbg !218
  store i32 0, i32* %i, align 4, !dbg !219
  br label %for.cond, !dbg !221

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !222
  %cmp1 = icmp slt i32 %3, 10, !dbg !224
  br i1 %cmp1, label %for.body, label %for.end, !dbg !225

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !226
  %idxprom2 = sext i32 %4 to i64, !dbg !228
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !228
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !228
  call void @printIntLine(i32 %5), !dbg !229
  br label %for.inc, !dbg !230

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !231
  %inc = add nsw i32 %6, 1, !dbg !231
  store i32 %inc, i32* %i, align 4, !dbg !231
  br label %for.cond, !dbg !232, !llvm.loop !233

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !235

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !236
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !238
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !239 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !240, metadata !DIExpression()), !dbg !241
  store i32 -1, i32* %data, align 4, !dbg !242
  store i32 7, i32* %data, align 4, !dbg !243
  call void @llvm.dbg.declare(metadata i32* %i, metadata !246, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !252
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !252
  %1 = load i32, i32* %data, align 4, !dbg !253
  %cmp = icmp sge i32 %1, 0, !dbg !255
  br i1 %cmp, label %if.then, label %if.else, !dbg !256

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data, align 4, !dbg !257
  %idxprom = sext i32 %2 to i64, !dbg !259
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !259
  store i32 1, i32* %arrayidx, align 4, !dbg !260
  store i32 0, i32* %i, align 4, !dbg !261
  br label %for.cond, !dbg !263

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !264
  %cmp1 = icmp slt i32 %3, 10, !dbg !266
  br i1 %cmp1, label %for.body, label %for.end, !dbg !267

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !268
  %idxprom2 = sext i32 %4 to i64, !dbg !270
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !270
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !270
  call void @printIntLine(i32 %5), !dbg !271
  br label %for.inc, !dbg !272

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !273
  %inc = add nsw i32 %6, 1, !dbg !273
  store i32 %inc, i32* %i, align 4, !dbg !273
  br label %for.cond, !dbg !274, !llvm.loop !275

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !277

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !278
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !280
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_02_good() #0 !dbg !281 {
entry:
  call void @goodB2G1(), !dbg !282
  call void @goodB2G2(), !dbg !283
  call void @goodG2B1(), !dbg !284
  call void @goodG2B2(), !dbg !285
  ret void, !dbg !286
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_02.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_565/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_02_bad", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 27, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 27, column: 9, scope: !9)
!15 = !DILocation(line: 29, column: 10, scope: !9)
!16 = !DILocalVariable(name: "inputBuffer", scope: !17, file: !1, line: 33, type: !20)
!17 = distinct !DILexicalBlock(scope: !18, file: !1, line: 32, column: 9)
!18 = distinct !DILexicalBlock(scope: !19, file: !1, line: 31, column: 5)
!19 = distinct !DILexicalBlock(scope: !9, file: !1, line: 30, column: 8)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 112, elements: !22)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23}
!23 = !DISubrange(count: 14)
!24 = !DILocation(line: 33, column: 18, scope: !17)
!25 = !DILocation(line: 35, column: 23, scope: !26)
!26 = distinct !DILexicalBlock(scope: !17, file: !1, line: 35, column: 17)
!27 = !DILocation(line: 35, column: 53, scope: !26)
!28 = !DILocation(line: 35, column: 17, scope: !26)
!29 = !DILocation(line: 35, column: 60, scope: !26)
!30 = !DILocation(line: 35, column: 17, scope: !17)
!31 = !DILocation(line: 38, column: 29, scope: !32)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 36, column: 13)
!33 = !DILocation(line: 38, column: 24, scope: !32)
!34 = !DILocation(line: 38, column: 22, scope: !32)
!35 = !DILocation(line: 39, column: 13, scope: !32)
!36 = !DILocation(line: 42, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !26, file: !1, line: 41, column: 13)
!38 = !DILocalVariable(name: "i", scope: !39, file: !1, line: 49, type: !13)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 48, column: 9)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 47, column: 5)
!41 = distinct !DILexicalBlock(scope: !9, file: !1, line: 46, column: 8)
!42 = !DILocation(line: 49, column: 17, scope: !39)
!43 = !DILocalVariable(name: "buffer", scope: !39, file: !1, line: 50, type: !44)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 10)
!47 = !DILocation(line: 50, column: 17, scope: !39)
!48 = !DILocation(line: 53, column: 17, scope: !49)
!49 = distinct !DILexicalBlock(scope: !39, file: !1, line: 53, column: 17)
!50 = !DILocation(line: 53, column: 22, scope: !49)
!51 = !DILocation(line: 53, column: 17, scope: !39)
!52 = !DILocation(line: 55, column: 24, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 54, column: 13)
!54 = !DILocation(line: 55, column: 17, scope: !53)
!55 = !DILocation(line: 55, column: 30, scope: !53)
!56 = !DILocation(line: 57, column: 23, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 57, column: 17)
!58 = !DILocation(line: 57, column: 21, scope: !57)
!59 = !DILocation(line: 57, column: 28, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 57, column: 17)
!61 = !DILocation(line: 57, column: 30, scope: !60)
!62 = !DILocation(line: 57, column: 17, scope: !57)
!63 = !DILocation(line: 59, column: 41, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 58, column: 17)
!65 = !DILocation(line: 59, column: 34, scope: !64)
!66 = !DILocation(line: 59, column: 21, scope: !64)
!67 = !DILocation(line: 60, column: 17, scope: !64)
!68 = !DILocation(line: 57, column: 37, scope: !60)
!69 = !DILocation(line: 57, column: 17, scope: !60)
!70 = distinct !{!70, !62, !71, !72}
!71 = !DILocation(line: 60, column: 17, scope: !57)
!72 = !{!"llvm.loop.mustprogress"}
!73 = !DILocation(line: 61, column: 13, scope: !53)
!74 = !DILocation(line: 64, column: 17, scope: !75)
!75 = distinct !DILexicalBlock(scope: !49, file: !1, line: 63, column: 13)
!76 = !DILocation(line: 68, column: 1, scope: !9)
!77 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 75, type: !10, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!78 = !DILocalVariable(name: "data", scope: !77, file: !1, line: 77, type: !13)
!79 = !DILocation(line: 77, column: 9, scope: !77)
!80 = !DILocation(line: 79, column: 10, scope: !77)
!81 = !DILocalVariable(name: "inputBuffer", scope: !82, file: !1, line: 83, type: !20)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 82, column: 9)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 81, column: 5)
!84 = distinct !DILexicalBlock(scope: !77, file: !1, line: 80, column: 8)
!85 = !DILocation(line: 83, column: 18, scope: !82)
!86 = !DILocation(line: 85, column: 23, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !1, line: 85, column: 17)
!88 = !DILocation(line: 85, column: 53, scope: !87)
!89 = !DILocation(line: 85, column: 17, scope: !87)
!90 = !DILocation(line: 85, column: 60, scope: !87)
!91 = !DILocation(line: 85, column: 17, scope: !82)
!92 = !DILocation(line: 88, column: 29, scope: !93)
!93 = distinct !DILexicalBlock(scope: !87, file: !1, line: 86, column: 13)
!94 = !DILocation(line: 88, column: 24, scope: !93)
!95 = !DILocation(line: 88, column: 22, scope: !93)
!96 = !DILocation(line: 89, column: 13, scope: !93)
!97 = !DILocation(line: 92, column: 17, scope: !98)
!98 = distinct !DILexicalBlock(scope: !87, file: !1, line: 91, column: 13)
!99 = !DILocalVariable(name: "i", scope: !100, file: !1, line: 104, type: !13)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 103, column: 9)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 102, column: 5)
!102 = distinct !DILexicalBlock(scope: !77, file: !1, line: 96, column: 8)
!103 = !DILocation(line: 104, column: 17, scope: !100)
!104 = !DILocalVariable(name: "buffer", scope: !100, file: !1, line: 105, type: !44)
!105 = !DILocation(line: 105, column: 17, scope: !100)
!106 = !DILocation(line: 107, column: 17, scope: !107)
!107 = distinct !DILexicalBlock(scope: !100, file: !1, line: 107, column: 17)
!108 = !DILocation(line: 107, column: 22, scope: !107)
!109 = !DILocation(line: 107, column: 27, scope: !107)
!110 = !DILocation(line: 107, column: 30, scope: !107)
!111 = !DILocation(line: 107, column: 35, scope: !107)
!112 = !DILocation(line: 107, column: 17, scope: !100)
!113 = !DILocation(line: 109, column: 24, scope: !114)
!114 = distinct !DILexicalBlock(scope: !107, file: !1, line: 108, column: 13)
!115 = !DILocation(line: 109, column: 17, scope: !114)
!116 = !DILocation(line: 109, column: 30, scope: !114)
!117 = !DILocation(line: 111, column: 23, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 111, column: 17)
!119 = !DILocation(line: 111, column: 21, scope: !118)
!120 = !DILocation(line: 111, column: 28, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 111, column: 17)
!122 = !DILocation(line: 111, column: 30, scope: !121)
!123 = !DILocation(line: 111, column: 17, scope: !118)
!124 = !DILocation(line: 113, column: 41, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 112, column: 17)
!126 = !DILocation(line: 113, column: 34, scope: !125)
!127 = !DILocation(line: 113, column: 21, scope: !125)
!128 = !DILocation(line: 114, column: 17, scope: !125)
!129 = !DILocation(line: 111, column: 37, scope: !121)
!130 = !DILocation(line: 111, column: 17, scope: !121)
!131 = distinct !{!131, !123, !132, !72}
!132 = !DILocation(line: 114, column: 17, scope: !118)
!133 = !DILocation(line: 115, column: 13, scope: !114)
!134 = !DILocation(line: 118, column: 17, scope: !135)
!135 = distinct !DILexicalBlock(scope: !107, file: !1, line: 117, column: 13)
!136 = !DILocation(line: 122, column: 1, scope: !77)
!137 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 125, type: !10, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!138 = !DILocalVariable(name: "data", scope: !137, file: !1, line: 127, type: !13)
!139 = !DILocation(line: 127, column: 9, scope: !137)
!140 = !DILocation(line: 129, column: 10, scope: !137)
!141 = !DILocalVariable(name: "inputBuffer", scope: !142, file: !1, line: 133, type: !20)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 132, column: 9)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 131, column: 5)
!144 = distinct !DILexicalBlock(scope: !137, file: !1, line: 130, column: 8)
!145 = !DILocation(line: 133, column: 18, scope: !142)
!146 = !DILocation(line: 135, column: 23, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !1, line: 135, column: 17)
!148 = !DILocation(line: 135, column: 53, scope: !147)
!149 = !DILocation(line: 135, column: 17, scope: !147)
!150 = !DILocation(line: 135, column: 60, scope: !147)
!151 = !DILocation(line: 135, column: 17, scope: !142)
!152 = !DILocation(line: 138, column: 29, scope: !153)
!153 = distinct !DILexicalBlock(scope: !147, file: !1, line: 136, column: 13)
!154 = !DILocation(line: 138, column: 24, scope: !153)
!155 = !DILocation(line: 138, column: 22, scope: !153)
!156 = !DILocation(line: 139, column: 13, scope: !153)
!157 = !DILocation(line: 142, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !147, file: !1, line: 141, column: 13)
!159 = !DILocalVariable(name: "i", scope: !160, file: !1, line: 149, type: !13)
!160 = distinct !DILexicalBlock(scope: !161, file: !1, line: 148, column: 9)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 147, column: 5)
!162 = distinct !DILexicalBlock(scope: !137, file: !1, line: 146, column: 8)
!163 = !DILocation(line: 149, column: 17, scope: !160)
!164 = !DILocalVariable(name: "buffer", scope: !160, file: !1, line: 150, type: !44)
!165 = !DILocation(line: 150, column: 17, scope: !160)
!166 = !DILocation(line: 152, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !160, file: !1, line: 152, column: 17)
!168 = !DILocation(line: 152, column: 22, scope: !167)
!169 = !DILocation(line: 152, column: 27, scope: !167)
!170 = !DILocation(line: 152, column: 30, scope: !167)
!171 = !DILocation(line: 152, column: 35, scope: !167)
!172 = !DILocation(line: 152, column: 17, scope: !160)
!173 = !DILocation(line: 154, column: 24, scope: !174)
!174 = distinct !DILexicalBlock(scope: !167, file: !1, line: 153, column: 13)
!175 = !DILocation(line: 154, column: 17, scope: !174)
!176 = !DILocation(line: 154, column: 30, scope: !174)
!177 = !DILocation(line: 156, column: 23, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 156, column: 17)
!179 = !DILocation(line: 156, column: 21, scope: !178)
!180 = !DILocation(line: 156, column: 28, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !1, line: 156, column: 17)
!182 = !DILocation(line: 156, column: 30, scope: !181)
!183 = !DILocation(line: 156, column: 17, scope: !178)
!184 = !DILocation(line: 158, column: 41, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 157, column: 17)
!186 = !DILocation(line: 158, column: 34, scope: !185)
!187 = !DILocation(line: 158, column: 21, scope: !185)
!188 = !DILocation(line: 159, column: 17, scope: !185)
!189 = !DILocation(line: 156, column: 37, scope: !181)
!190 = !DILocation(line: 156, column: 17, scope: !181)
!191 = distinct !{!191, !183, !192, !72}
!192 = !DILocation(line: 159, column: 17, scope: !178)
!193 = !DILocation(line: 160, column: 13, scope: !174)
!194 = !DILocation(line: 163, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !167, file: !1, line: 162, column: 13)
!196 = !DILocation(line: 167, column: 1, scope: !137)
!197 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 170, type: !10, scopeLine: 171, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!198 = !DILocalVariable(name: "data", scope: !197, file: !1, line: 172, type: !13)
!199 = !DILocation(line: 172, column: 9, scope: !197)
!200 = !DILocation(line: 174, column: 10, scope: !197)
!201 = !DILocation(line: 184, column: 14, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 181, column: 5)
!203 = distinct !DILexicalBlock(scope: !197, file: !1, line: 175, column: 8)
!204 = !DILocalVariable(name: "i", scope: !205, file: !1, line: 189, type: !13)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 188, column: 9)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 187, column: 5)
!207 = distinct !DILexicalBlock(scope: !197, file: !1, line: 186, column: 8)
!208 = !DILocation(line: 189, column: 17, scope: !205)
!209 = !DILocalVariable(name: "buffer", scope: !205, file: !1, line: 190, type: !44)
!210 = !DILocation(line: 190, column: 17, scope: !205)
!211 = !DILocation(line: 193, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !205, file: !1, line: 193, column: 17)
!213 = !DILocation(line: 193, column: 22, scope: !212)
!214 = !DILocation(line: 193, column: 17, scope: !205)
!215 = !DILocation(line: 195, column: 24, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !1, line: 194, column: 13)
!217 = !DILocation(line: 195, column: 17, scope: !216)
!218 = !DILocation(line: 195, column: 30, scope: !216)
!219 = !DILocation(line: 197, column: 23, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !1, line: 197, column: 17)
!221 = !DILocation(line: 197, column: 21, scope: !220)
!222 = !DILocation(line: 197, column: 28, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !1, line: 197, column: 17)
!224 = !DILocation(line: 197, column: 30, scope: !223)
!225 = !DILocation(line: 197, column: 17, scope: !220)
!226 = !DILocation(line: 199, column: 41, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !1, line: 198, column: 17)
!228 = !DILocation(line: 199, column: 34, scope: !227)
!229 = !DILocation(line: 199, column: 21, scope: !227)
!230 = !DILocation(line: 200, column: 17, scope: !227)
!231 = !DILocation(line: 197, column: 37, scope: !223)
!232 = !DILocation(line: 197, column: 17, scope: !223)
!233 = distinct !{!233, !225, !234, !72}
!234 = !DILocation(line: 200, column: 17, scope: !220)
!235 = !DILocation(line: 201, column: 13, scope: !216)
!236 = !DILocation(line: 204, column: 17, scope: !237)
!237 = distinct !DILexicalBlock(scope: !212, file: !1, line: 203, column: 13)
!238 = !DILocation(line: 208, column: 1, scope: !197)
!239 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 211, type: !10, scopeLine: 212, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!240 = !DILocalVariable(name: "data", scope: !239, file: !1, line: 213, type: !13)
!241 = !DILocation(line: 213, column: 9, scope: !239)
!242 = !DILocation(line: 215, column: 10, scope: !239)
!243 = !DILocation(line: 220, column: 14, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 217, column: 5)
!245 = distinct !DILexicalBlock(scope: !239, file: !1, line: 216, column: 8)
!246 = !DILocalVariable(name: "i", scope: !247, file: !1, line: 225, type: !13)
!247 = distinct !DILexicalBlock(scope: !248, file: !1, line: 224, column: 9)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 223, column: 5)
!249 = distinct !DILexicalBlock(scope: !239, file: !1, line: 222, column: 8)
!250 = !DILocation(line: 225, column: 17, scope: !247)
!251 = !DILocalVariable(name: "buffer", scope: !247, file: !1, line: 226, type: !44)
!252 = !DILocation(line: 226, column: 17, scope: !247)
!253 = !DILocation(line: 229, column: 17, scope: !254)
!254 = distinct !DILexicalBlock(scope: !247, file: !1, line: 229, column: 17)
!255 = !DILocation(line: 229, column: 22, scope: !254)
!256 = !DILocation(line: 229, column: 17, scope: !247)
!257 = !DILocation(line: 231, column: 24, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !1, line: 230, column: 13)
!259 = !DILocation(line: 231, column: 17, scope: !258)
!260 = !DILocation(line: 231, column: 30, scope: !258)
!261 = !DILocation(line: 233, column: 23, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !1, line: 233, column: 17)
!263 = !DILocation(line: 233, column: 21, scope: !262)
!264 = !DILocation(line: 233, column: 28, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !1, line: 233, column: 17)
!266 = !DILocation(line: 233, column: 30, scope: !265)
!267 = !DILocation(line: 233, column: 17, scope: !262)
!268 = !DILocation(line: 235, column: 41, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !1, line: 234, column: 17)
!270 = !DILocation(line: 235, column: 34, scope: !269)
!271 = !DILocation(line: 235, column: 21, scope: !269)
!272 = !DILocation(line: 236, column: 17, scope: !269)
!273 = !DILocation(line: 233, column: 37, scope: !265)
!274 = !DILocation(line: 233, column: 17, scope: !265)
!275 = distinct !{!275, !267, !276, !72}
!276 = !DILocation(line: 236, column: 17, scope: !262)
!277 = !DILocation(line: 237, column: 13, scope: !258)
!278 = !DILocation(line: 240, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !254, file: !1, line: 239, column: 13)
!280 = !DILocation(line: 244, column: 1, scope: !239)
!281 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_02_good", scope: !1, file: !1, line: 246, type: !10, scopeLine: 247, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!282 = !DILocation(line: 248, column: 5, scope: !281)
!283 = !DILocation(line: 249, column: 5, scope: !281)
!284 = !DILocation(line: 250, column: 5, scope: !281)
!285 = !DILocation(line: 251, column: 5, scope: !281)
!286 = !DILocation(line: 252, column: 1, scope: !281)
