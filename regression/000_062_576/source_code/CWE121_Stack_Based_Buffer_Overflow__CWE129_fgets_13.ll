; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@GLOBAL_CONST_FIVE = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13_bad() #0 !dbg !9 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 -1, i32* %data, align 4, !dbg !15
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !16
  %cmp = icmp eq i32 %0, 5, !dbg !18
  br i1 %cmp, label %if.then, label %if.end5, !dbg !19

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !20, metadata !DIExpression()), !dbg !27
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !28
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !30
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !31
  %cmp1 = icmp ne i8* %call, null, !dbg !32
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !33

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !34
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !36
  store i32 %call4, i32* %data, align 4, !dbg !37
  br label %if.end, !dbg !38

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !39
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !41

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !42
  %cmp6 = icmp eq i32 %3, 5, !dbg !44
  br i1 %cmp6, label %if.then7, label %if.end15, !dbg !45

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !50, metadata !DIExpression()), !dbg !54
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !54
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !54
  %5 = load i32, i32* %data, align 4, !dbg !55
  %cmp8 = icmp sge i32 %5, 0, !dbg !57
  br i1 %cmp8, label %if.then9, label %if.else13, !dbg !58

if.then9:                                         ; preds = %if.then7
  %6 = load i32, i32* %data, align 4, !dbg !59
  %idxprom = sext i32 %6 to i64, !dbg !61
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !61
  store i32 1, i32* %arrayidx, align 4, !dbg !62
  store i32 0, i32* %i, align 4, !dbg !63
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc, %if.then9
  %7 = load i32, i32* %i, align 4, !dbg !66
  %cmp10 = icmp slt i32 %7, 10, !dbg !68
  br i1 %cmp10, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !70
  %idxprom11 = sext i32 %8 to i64, !dbg !72
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom11, !dbg !72
  %9 = load i32, i32* %arrayidx12, align 4, !dbg !72
  call void @printIntLine(i32 %9), !dbg !73
  br label %for.inc, !dbg !74

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !75
  %inc = add nsw i32 %10, 1, !dbg !75
  store i32 %inc, i32* %i, align 4, !dbg !75
  br label %for.cond, !dbg !76, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  br label %if.end14, !dbg !80

if.else13:                                        ; preds = %if.then7
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !81
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %for.end
  br label %if.end15, !dbg !83

if.end15:                                         ; preds = %if.end14, %if.end5
  ret void, !dbg !84
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
define dso_local void @goodB2G1() #0 !dbg !85 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !86, metadata !DIExpression()), !dbg !87
  store i32 -1, i32* %data, align 4, !dbg !88
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !89
  %cmp = icmp eq i32 %0, 5, !dbg !91
  br i1 %cmp, label %if.then, label %if.end5, !dbg !92

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !93, metadata !DIExpression()), !dbg !96
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !96
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !96
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !97
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !99
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !100
  %cmp1 = icmp ne i8* %call, null, !dbg !101
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !102

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !103
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !105
  store i32 %call4, i32* %data, align 4, !dbg !106
  br label %if.end, !dbg !107

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !108
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !110

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !111
  %cmp6 = icmp ne i32 %3, 5, !dbg !113
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !114

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !115
  br label %if.end17, !dbg !117

if.else8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !118, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !122, metadata !DIExpression()), !dbg !123
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !123
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !123
  %5 = load i32, i32* %data, align 4, !dbg !124
  %cmp9 = icmp sge i32 %5, 0, !dbg !126
  br i1 %cmp9, label %land.lhs.true, label %if.else15, !dbg !127

land.lhs.true:                                    ; preds = %if.else8
  %6 = load i32, i32* %data, align 4, !dbg !128
  %cmp10 = icmp slt i32 %6, 10, !dbg !129
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !130

if.then11:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !131
  %idxprom = sext i32 %7 to i64, !dbg !133
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !133
  store i32 1, i32* %arrayidx, align 4, !dbg !134
  store i32 0, i32* %i, align 4, !dbg !135
  br label %for.cond, !dbg !137

for.cond:                                         ; preds = %for.inc, %if.then11
  %8 = load i32, i32* %i, align 4, !dbg !138
  %cmp12 = icmp slt i32 %8, 10, !dbg !140
  br i1 %cmp12, label %for.body, label %for.end, !dbg !141

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !142
  %idxprom13 = sext i32 %9 to i64, !dbg !144
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !144
  %10 = load i32, i32* %arrayidx14, align 4, !dbg !144
  call void @printIntLine(i32 %10), !dbg !145
  br label %for.inc, !dbg !146

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !147
  %inc = add nsw i32 %11, 1, !dbg !147
  store i32 %inc, i32* %i, align 4, !dbg !147
  br label %for.cond, !dbg !148, !llvm.loop !149

for.end:                                          ; preds = %for.cond
  br label %if.end16, !dbg !151

if.else15:                                        ; preds = %land.lhs.true, %if.else8
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !152
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %for.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  ret void, !dbg !154
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !155 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !156, metadata !DIExpression()), !dbg !157
  store i32 -1, i32* %data, align 4, !dbg !158
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !159
  %cmp = icmp eq i32 %0, 5, !dbg !161
  br i1 %cmp, label %if.then, label %if.end5, !dbg !162

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !163, metadata !DIExpression()), !dbg !166
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !166
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !166
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !167
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !169
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !170
  %cmp1 = icmp ne i8* %call, null, !dbg !171
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !172

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !173
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !175
  store i32 %call4, i32* %data, align 4, !dbg !176
  br label %if.end, !dbg !177

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !178
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !180

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !181
  %cmp6 = icmp eq i32 %3, 5, !dbg !183
  br i1 %cmp6, label %if.then7, label %if.end16, !dbg !184

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !185, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !189, metadata !DIExpression()), !dbg !190
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !190
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !190
  %5 = load i32, i32* %data, align 4, !dbg !191
  %cmp8 = icmp sge i32 %5, 0, !dbg !193
  br i1 %cmp8, label %land.lhs.true, label %if.else14, !dbg !194

land.lhs.true:                                    ; preds = %if.then7
  %6 = load i32, i32* %data, align 4, !dbg !195
  %cmp9 = icmp slt i32 %6, 10, !dbg !196
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !197

if.then10:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !198
  %idxprom = sext i32 %7 to i64, !dbg !200
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !200
  store i32 1, i32* %arrayidx, align 4, !dbg !201
  store i32 0, i32* %i, align 4, !dbg !202
  br label %for.cond, !dbg !204

for.cond:                                         ; preds = %for.inc, %if.then10
  %8 = load i32, i32* %i, align 4, !dbg !205
  %cmp11 = icmp slt i32 %8, 10, !dbg !207
  br i1 %cmp11, label %for.body, label %for.end, !dbg !208

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !209
  %idxprom12 = sext i32 %9 to i64, !dbg !211
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom12, !dbg !211
  %10 = load i32, i32* %arrayidx13, align 4, !dbg !211
  call void @printIntLine(i32 %10), !dbg !212
  br label %for.inc, !dbg !213

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !214
  %inc = add nsw i32 %11, 1, !dbg !214
  store i32 %inc, i32* %i, align 4, !dbg !214
  br label %for.cond, !dbg !215, !llvm.loop !216

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !218

if.else14:                                        ; preds = %land.lhs.true, %if.then7
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !219
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16, !dbg !221

if.end16:                                         ; preds = %if.end15, %if.end5
  ret void, !dbg !222
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !223 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !224, metadata !DIExpression()), !dbg !225
  store i32 -1, i32* %data, align 4, !dbg !226
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !227
  %cmp = icmp ne i32 %0, 5, !dbg !229
  br i1 %cmp, label %if.then, label %if.else, !dbg !230

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !231
  br label %if.end, !dbg !233

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !234
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !236
  %cmp1 = icmp eq i32 %1, 5, !dbg !238
  br i1 %cmp1, label %if.then2, label %if.end10, !dbg !239

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !240, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !244, metadata !DIExpression()), !dbg !245
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !245
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !245
  %3 = load i32, i32* %data, align 4, !dbg !246
  %cmp3 = icmp sge i32 %3, 0, !dbg !248
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !249

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !250
  %idxprom = sext i32 %4 to i64, !dbg !252
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !252
  store i32 1, i32* %arrayidx, align 4, !dbg !253
  store i32 0, i32* %i, align 4, !dbg !254
  br label %for.cond, !dbg !256

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !257
  %cmp5 = icmp slt i32 %5, 10, !dbg !259
  br i1 %cmp5, label %for.body, label %for.end, !dbg !260

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !261
  %idxprom6 = sext i32 %6 to i64, !dbg !263
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !263
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !263
  call void @printIntLine(i32 %7), !dbg !264
  br label %for.inc, !dbg !265

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !266
  %inc = add nsw i32 %8, 1, !dbg !266
  store i32 %inc, i32* %i, align 4, !dbg !266
  br label %for.cond, !dbg !267, !llvm.loop !268

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !270

if.else8:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !271
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !273

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !275 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !276, metadata !DIExpression()), !dbg !277
  store i32 -1, i32* %data, align 4, !dbg !278
  %0 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !279
  %cmp = icmp eq i32 %0, 5, !dbg !281
  br i1 %cmp, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !283
  br label %if.end, !dbg !285

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !286
  %cmp1 = icmp eq i32 %1, 5, !dbg !288
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !289

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !294, metadata !DIExpression()), !dbg !295
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !295
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !295
  %3 = load i32, i32* %data, align 4, !dbg !296
  %cmp3 = icmp sge i32 %3, 0, !dbg !298
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !299

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !300
  %idxprom = sext i32 %4 to i64, !dbg !302
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !302
  store i32 1, i32* %arrayidx, align 4, !dbg !303
  store i32 0, i32* %i, align 4, !dbg !304
  br label %for.cond, !dbg !306

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !307
  %cmp5 = icmp slt i32 %5, 10, !dbg !309
  br i1 %cmp5, label %for.body, label %for.end, !dbg !310

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !311
  %idxprom6 = sext i32 %6 to i64, !dbg !313
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !313
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !313
  call void @printIntLine(i32 %7), !dbg !314
  br label %for.inc, !dbg !315

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !316
  %inc = add nsw i32 %8, 1, !dbg !316
  store i32 %inc, i32* %i, align 4, !dbg !316
  br label %for.cond, !dbg !317, !llvm.loop !318

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !320

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !321
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !323

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13_good() #0 !dbg !325 {
entry:
  call void @goodB2G1(), !dbg !326
  call void @goodB2G2(), !dbg !327
  call void @goodG2B1(), !dbg !328
  call void @goodG2B2(), !dbg !329
  ret void, !dbg !330
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_576/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13_bad", scope: !1, file: !1, line: 25, type: !10, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 27, type: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocation(line: 27, column: 9, scope: !9)
!15 = !DILocation(line: 29, column: 10, scope: !9)
!16 = !DILocation(line: 30, column: 8, scope: !17)
!17 = distinct !DILexicalBlock(scope: !9, file: !1, line: 30, column: 8)
!18 = !DILocation(line: 30, column: 25, scope: !17)
!19 = !DILocation(line: 30, column: 8, scope: !9)
!20 = !DILocalVariable(name: "inputBuffer", scope: !21, file: !1, line: 33, type: !23)
!21 = distinct !DILexicalBlock(scope: !22, file: !1, line: 32, column: 9)
!22 = distinct !DILexicalBlock(scope: !17, file: !1, line: 31, column: 5)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 112, elements: !25)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{!26}
!26 = !DISubrange(count: 14)
!27 = !DILocation(line: 33, column: 18, scope: !21)
!28 = !DILocation(line: 35, column: 23, scope: !29)
!29 = distinct !DILexicalBlock(scope: !21, file: !1, line: 35, column: 17)
!30 = !DILocation(line: 35, column: 53, scope: !29)
!31 = !DILocation(line: 35, column: 17, scope: !29)
!32 = !DILocation(line: 35, column: 60, scope: !29)
!33 = !DILocation(line: 35, column: 17, scope: !21)
!34 = !DILocation(line: 38, column: 29, scope: !35)
!35 = distinct !DILexicalBlock(scope: !29, file: !1, line: 36, column: 13)
!36 = !DILocation(line: 38, column: 24, scope: !35)
!37 = !DILocation(line: 38, column: 22, scope: !35)
!38 = !DILocation(line: 39, column: 13, scope: !35)
!39 = !DILocation(line: 42, column: 17, scope: !40)
!40 = distinct !DILexicalBlock(scope: !29, file: !1, line: 41, column: 13)
!41 = !DILocation(line: 45, column: 5, scope: !22)
!42 = !DILocation(line: 46, column: 8, scope: !43)
!43 = distinct !DILexicalBlock(scope: !9, file: !1, line: 46, column: 8)
!44 = !DILocation(line: 46, column: 25, scope: !43)
!45 = !DILocation(line: 46, column: 8, scope: !9)
!46 = !DILocalVariable(name: "i", scope: !47, file: !1, line: 49, type: !13)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 48, column: 9)
!48 = distinct !DILexicalBlock(scope: !43, file: !1, line: 47, column: 5)
!49 = !DILocation(line: 49, column: 17, scope: !47)
!50 = !DILocalVariable(name: "buffer", scope: !47, file: !1, line: 50, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 10)
!54 = !DILocation(line: 50, column: 17, scope: !47)
!55 = !DILocation(line: 53, column: 17, scope: !56)
!56 = distinct !DILexicalBlock(scope: !47, file: !1, line: 53, column: 17)
!57 = !DILocation(line: 53, column: 22, scope: !56)
!58 = !DILocation(line: 53, column: 17, scope: !47)
!59 = !DILocation(line: 55, column: 24, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 54, column: 13)
!61 = !DILocation(line: 55, column: 17, scope: !60)
!62 = !DILocation(line: 55, column: 30, scope: !60)
!63 = !DILocation(line: 57, column: 23, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 57, column: 17)
!65 = !DILocation(line: 57, column: 21, scope: !64)
!66 = !DILocation(line: 57, column: 28, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 57, column: 17)
!68 = !DILocation(line: 57, column: 30, scope: !67)
!69 = !DILocation(line: 57, column: 17, scope: !64)
!70 = !DILocation(line: 59, column: 41, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 58, column: 17)
!72 = !DILocation(line: 59, column: 34, scope: !71)
!73 = !DILocation(line: 59, column: 21, scope: !71)
!74 = !DILocation(line: 60, column: 17, scope: !71)
!75 = !DILocation(line: 57, column: 37, scope: !67)
!76 = !DILocation(line: 57, column: 17, scope: !67)
!77 = distinct !{!77, !69, !78, !79}
!78 = !DILocation(line: 60, column: 17, scope: !64)
!79 = !{!"llvm.loop.mustprogress"}
!80 = !DILocation(line: 61, column: 13, scope: !60)
!81 = !DILocation(line: 64, column: 17, scope: !82)
!82 = distinct !DILexicalBlock(scope: !56, file: !1, line: 63, column: 13)
!83 = !DILocation(line: 67, column: 5, scope: !48)
!84 = !DILocation(line: 68, column: 1, scope: !9)
!85 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 75, type: !10, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!86 = !DILocalVariable(name: "data", scope: !85, file: !1, line: 77, type: !13)
!87 = !DILocation(line: 77, column: 9, scope: !85)
!88 = !DILocation(line: 79, column: 10, scope: !85)
!89 = !DILocation(line: 80, column: 8, scope: !90)
!90 = distinct !DILexicalBlock(scope: !85, file: !1, line: 80, column: 8)
!91 = !DILocation(line: 80, column: 25, scope: !90)
!92 = !DILocation(line: 80, column: 8, scope: !85)
!93 = !DILocalVariable(name: "inputBuffer", scope: !94, file: !1, line: 83, type: !23)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 82, column: 9)
!95 = distinct !DILexicalBlock(scope: !90, file: !1, line: 81, column: 5)
!96 = !DILocation(line: 83, column: 18, scope: !94)
!97 = !DILocation(line: 85, column: 23, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 85, column: 17)
!99 = !DILocation(line: 85, column: 53, scope: !98)
!100 = !DILocation(line: 85, column: 17, scope: !98)
!101 = !DILocation(line: 85, column: 60, scope: !98)
!102 = !DILocation(line: 85, column: 17, scope: !94)
!103 = !DILocation(line: 88, column: 29, scope: !104)
!104 = distinct !DILexicalBlock(scope: !98, file: !1, line: 86, column: 13)
!105 = !DILocation(line: 88, column: 24, scope: !104)
!106 = !DILocation(line: 88, column: 22, scope: !104)
!107 = !DILocation(line: 89, column: 13, scope: !104)
!108 = !DILocation(line: 92, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !98, file: !1, line: 91, column: 13)
!110 = !DILocation(line: 95, column: 5, scope: !95)
!111 = !DILocation(line: 96, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !85, file: !1, line: 96, column: 8)
!113 = !DILocation(line: 96, column: 25, scope: !112)
!114 = !DILocation(line: 96, column: 8, scope: !85)
!115 = !DILocation(line: 99, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 97, column: 5)
!117 = !DILocation(line: 100, column: 5, scope: !116)
!118 = !DILocalVariable(name: "i", scope: !119, file: !1, line: 104, type: !13)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 103, column: 9)
!120 = distinct !DILexicalBlock(scope: !112, file: !1, line: 102, column: 5)
!121 = !DILocation(line: 104, column: 17, scope: !119)
!122 = !DILocalVariable(name: "buffer", scope: !119, file: !1, line: 105, type: !51)
!123 = !DILocation(line: 105, column: 17, scope: !119)
!124 = !DILocation(line: 107, column: 17, scope: !125)
!125 = distinct !DILexicalBlock(scope: !119, file: !1, line: 107, column: 17)
!126 = !DILocation(line: 107, column: 22, scope: !125)
!127 = !DILocation(line: 107, column: 27, scope: !125)
!128 = !DILocation(line: 107, column: 30, scope: !125)
!129 = !DILocation(line: 107, column: 35, scope: !125)
!130 = !DILocation(line: 107, column: 17, scope: !119)
!131 = !DILocation(line: 109, column: 24, scope: !132)
!132 = distinct !DILexicalBlock(scope: !125, file: !1, line: 108, column: 13)
!133 = !DILocation(line: 109, column: 17, scope: !132)
!134 = !DILocation(line: 109, column: 30, scope: !132)
!135 = !DILocation(line: 111, column: 23, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 111, column: 17)
!137 = !DILocation(line: 111, column: 21, scope: !136)
!138 = !DILocation(line: 111, column: 28, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !1, line: 111, column: 17)
!140 = !DILocation(line: 111, column: 30, scope: !139)
!141 = !DILocation(line: 111, column: 17, scope: !136)
!142 = !DILocation(line: 113, column: 41, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 112, column: 17)
!144 = !DILocation(line: 113, column: 34, scope: !143)
!145 = !DILocation(line: 113, column: 21, scope: !143)
!146 = !DILocation(line: 114, column: 17, scope: !143)
!147 = !DILocation(line: 111, column: 37, scope: !139)
!148 = !DILocation(line: 111, column: 17, scope: !139)
!149 = distinct !{!149, !141, !150, !79}
!150 = !DILocation(line: 114, column: 17, scope: !136)
!151 = !DILocation(line: 115, column: 13, scope: !132)
!152 = !DILocation(line: 118, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !125, file: !1, line: 117, column: 13)
!154 = !DILocation(line: 122, column: 1, scope: !85)
!155 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 125, type: !10, scopeLine: 126, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!156 = !DILocalVariable(name: "data", scope: !155, file: !1, line: 127, type: !13)
!157 = !DILocation(line: 127, column: 9, scope: !155)
!158 = !DILocation(line: 129, column: 10, scope: !155)
!159 = !DILocation(line: 130, column: 8, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !1, line: 130, column: 8)
!161 = !DILocation(line: 130, column: 25, scope: !160)
!162 = !DILocation(line: 130, column: 8, scope: !155)
!163 = !DILocalVariable(name: "inputBuffer", scope: !164, file: !1, line: 133, type: !23)
!164 = distinct !DILexicalBlock(scope: !165, file: !1, line: 132, column: 9)
!165 = distinct !DILexicalBlock(scope: !160, file: !1, line: 131, column: 5)
!166 = !DILocation(line: 133, column: 18, scope: !164)
!167 = !DILocation(line: 135, column: 23, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 135, column: 17)
!169 = !DILocation(line: 135, column: 53, scope: !168)
!170 = !DILocation(line: 135, column: 17, scope: !168)
!171 = !DILocation(line: 135, column: 60, scope: !168)
!172 = !DILocation(line: 135, column: 17, scope: !164)
!173 = !DILocation(line: 138, column: 29, scope: !174)
!174 = distinct !DILexicalBlock(scope: !168, file: !1, line: 136, column: 13)
!175 = !DILocation(line: 138, column: 24, scope: !174)
!176 = !DILocation(line: 138, column: 22, scope: !174)
!177 = !DILocation(line: 139, column: 13, scope: !174)
!178 = !DILocation(line: 142, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !168, file: !1, line: 141, column: 13)
!180 = !DILocation(line: 145, column: 5, scope: !165)
!181 = !DILocation(line: 146, column: 8, scope: !182)
!182 = distinct !DILexicalBlock(scope: !155, file: !1, line: 146, column: 8)
!183 = !DILocation(line: 146, column: 25, scope: !182)
!184 = !DILocation(line: 146, column: 8, scope: !155)
!185 = !DILocalVariable(name: "i", scope: !186, file: !1, line: 149, type: !13)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 148, column: 9)
!187 = distinct !DILexicalBlock(scope: !182, file: !1, line: 147, column: 5)
!188 = !DILocation(line: 149, column: 17, scope: !186)
!189 = !DILocalVariable(name: "buffer", scope: !186, file: !1, line: 150, type: !51)
!190 = !DILocation(line: 150, column: 17, scope: !186)
!191 = !DILocation(line: 152, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !186, file: !1, line: 152, column: 17)
!193 = !DILocation(line: 152, column: 22, scope: !192)
!194 = !DILocation(line: 152, column: 27, scope: !192)
!195 = !DILocation(line: 152, column: 30, scope: !192)
!196 = !DILocation(line: 152, column: 35, scope: !192)
!197 = !DILocation(line: 152, column: 17, scope: !186)
!198 = !DILocation(line: 154, column: 24, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !1, line: 153, column: 13)
!200 = !DILocation(line: 154, column: 17, scope: !199)
!201 = !DILocation(line: 154, column: 30, scope: !199)
!202 = !DILocation(line: 156, column: 23, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 156, column: 17)
!204 = !DILocation(line: 156, column: 21, scope: !203)
!205 = !DILocation(line: 156, column: 28, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !1, line: 156, column: 17)
!207 = !DILocation(line: 156, column: 30, scope: !206)
!208 = !DILocation(line: 156, column: 17, scope: !203)
!209 = !DILocation(line: 158, column: 41, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !1, line: 157, column: 17)
!211 = !DILocation(line: 158, column: 34, scope: !210)
!212 = !DILocation(line: 158, column: 21, scope: !210)
!213 = !DILocation(line: 159, column: 17, scope: !210)
!214 = !DILocation(line: 156, column: 37, scope: !206)
!215 = !DILocation(line: 156, column: 17, scope: !206)
!216 = distinct !{!216, !208, !217, !79}
!217 = !DILocation(line: 159, column: 17, scope: !203)
!218 = !DILocation(line: 160, column: 13, scope: !199)
!219 = !DILocation(line: 163, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !192, file: !1, line: 162, column: 13)
!221 = !DILocation(line: 166, column: 5, scope: !187)
!222 = !DILocation(line: 167, column: 1, scope: !155)
!223 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 170, type: !10, scopeLine: 171, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!224 = !DILocalVariable(name: "data", scope: !223, file: !1, line: 172, type: !13)
!225 = !DILocation(line: 172, column: 9, scope: !223)
!226 = !DILocation(line: 174, column: 10, scope: !223)
!227 = !DILocation(line: 175, column: 8, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !1, line: 175, column: 8)
!229 = !DILocation(line: 175, column: 25, scope: !228)
!230 = !DILocation(line: 175, column: 8, scope: !223)
!231 = !DILocation(line: 178, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !1, line: 176, column: 5)
!233 = !DILocation(line: 179, column: 5, scope: !232)
!234 = !DILocation(line: 184, column: 14, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !1, line: 181, column: 5)
!236 = !DILocation(line: 186, column: 8, scope: !237)
!237 = distinct !DILexicalBlock(scope: !223, file: !1, line: 186, column: 8)
!238 = !DILocation(line: 186, column: 25, scope: !237)
!239 = !DILocation(line: 186, column: 8, scope: !223)
!240 = !DILocalVariable(name: "i", scope: !241, file: !1, line: 189, type: !13)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 188, column: 9)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 187, column: 5)
!243 = !DILocation(line: 189, column: 17, scope: !241)
!244 = !DILocalVariable(name: "buffer", scope: !241, file: !1, line: 190, type: !51)
!245 = !DILocation(line: 190, column: 17, scope: !241)
!246 = !DILocation(line: 193, column: 17, scope: !247)
!247 = distinct !DILexicalBlock(scope: !241, file: !1, line: 193, column: 17)
!248 = !DILocation(line: 193, column: 22, scope: !247)
!249 = !DILocation(line: 193, column: 17, scope: !241)
!250 = !DILocation(line: 195, column: 24, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !1, line: 194, column: 13)
!252 = !DILocation(line: 195, column: 17, scope: !251)
!253 = !DILocation(line: 195, column: 30, scope: !251)
!254 = !DILocation(line: 197, column: 23, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !1, line: 197, column: 17)
!256 = !DILocation(line: 197, column: 21, scope: !255)
!257 = !DILocation(line: 197, column: 28, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !1, line: 197, column: 17)
!259 = !DILocation(line: 197, column: 30, scope: !258)
!260 = !DILocation(line: 197, column: 17, scope: !255)
!261 = !DILocation(line: 199, column: 41, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !1, line: 198, column: 17)
!263 = !DILocation(line: 199, column: 34, scope: !262)
!264 = !DILocation(line: 199, column: 21, scope: !262)
!265 = !DILocation(line: 200, column: 17, scope: !262)
!266 = !DILocation(line: 197, column: 37, scope: !258)
!267 = !DILocation(line: 197, column: 17, scope: !258)
!268 = distinct !{!268, !260, !269, !79}
!269 = !DILocation(line: 200, column: 17, scope: !255)
!270 = !DILocation(line: 201, column: 13, scope: !251)
!271 = !DILocation(line: 204, column: 17, scope: !272)
!272 = distinct !DILexicalBlock(scope: !247, file: !1, line: 203, column: 13)
!273 = !DILocation(line: 207, column: 5, scope: !242)
!274 = !DILocation(line: 208, column: 1, scope: !223)
!275 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 211, type: !10, scopeLine: 212, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!276 = !DILocalVariable(name: "data", scope: !275, file: !1, line: 213, type: !13)
!277 = !DILocation(line: 213, column: 9, scope: !275)
!278 = !DILocation(line: 215, column: 10, scope: !275)
!279 = !DILocation(line: 216, column: 8, scope: !280)
!280 = distinct !DILexicalBlock(scope: !275, file: !1, line: 216, column: 8)
!281 = !DILocation(line: 216, column: 25, scope: !280)
!282 = !DILocation(line: 216, column: 8, scope: !275)
!283 = !DILocation(line: 220, column: 14, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !1, line: 217, column: 5)
!285 = !DILocation(line: 221, column: 5, scope: !284)
!286 = !DILocation(line: 222, column: 8, scope: !287)
!287 = distinct !DILexicalBlock(scope: !275, file: !1, line: 222, column: 8)
!288 = !DILocation(line: 222, column: 25, scope: !287)
!289 = !DILocation(line: 222, column: 8, scope: !275)
!290 = !DILocalVariable(name: "i", scope: !291, file: !1, line: 225, type: !13)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 224, column: 9)
!292 = distinct !DILexicalBlock(scope: !287, file: !1, line: 223, column: 5)
!293 = !DILocation(line: 225, column: 17, scope: !291)
!294 = !DILocalVariable(name: "buffer", scope: !291, file: !1, line: 226, type: !51)
!295 = !DILocation(line: 226, column: 17, scope: !291)
!296 = !DILocation(line: 229, column: 17, scope: !297)
!297 = distinct !DILexicalBlock(scope: !291, file: !1, line: 229, column: 17)
!298 = !DILocation(line: 229, column: 22, scope: !297)
!299 = !DILocation(line: 229, column: 17, scope: !291)
!300 = !DILocation(line: 231, column: 24, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !1, line: 230, column: 13)
!302 = !DILocation(line: 231, column: 17, scope: !301)
!303 = !DILocation(line: 231, column: 30, scope: !301)
!304 = !DILocation(line: 233, column: 23, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !1, line: 233, column: 17)
!306 = !DILocation(line: 233, column: 21, scope: !305)
!307 = !DILocation(line: 233, column: 28, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !1, line: 233, column: 17)
!309 = !DILocation(line: 233, column: 30, scope: !308)
!310 = !DILocation(line: 233, column: 17, scope: !305)
!311 = !DILocation(line: 235, column: 41, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !1, line: 234, column: 17)
!313 = !DILocation(line: 235, column: 34, scope: !312)
!314 = !DILocation(line: 235, column: 21, scope: !312)
!315 = !DILocation(line: 236, column: 17, scope: !312)
!316 = !DILocation(line: 233, column: 37, scope: !308)
!317 = !DILocation(line: 233, column: 17, scope: !308)
!318 = distinct !{!318, !310, !319, !79}
!319 = !DILocation(line: 236, column: 17, scope: !305)
!320 = !DILocation(line: 237, column: 13, scope: !301)
!321 = !DILocation(line: 240, column: 17, scope: !322)
!322 = distinct !DILexicalBlock(scope: !297, file: !1, line: 239, column: 13)
!323 = !DILocation(line: 243, column: 5, scope: !292)
!324 = !DILocation(line: 244, column: 1, scope: !275)
!325 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13_good", scope: !1, file: !1, line: 246, type: !10, scopeLine: 247, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!326 = !DILocation(line: 248, column: 5, scope: !325)
!327 = !DILocation(line: 249, column: 5, scope: !325)
!328 = !DILocation(line: 250, column: 5, scope: !325)
!329 = !DILocation(line: 251, column: 5, scope: !325)
!330 = !DILocation(line: 252, column: 1, scope: !325)
