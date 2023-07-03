; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@STATIC_CONST_FIVE = dso_local global i32 5, align 4, !dbg !0
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_bad() #0 !dbg !13 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 -1, i32* %data, align 4, !dbg !18
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !19
  %cmp = icmp eq i32 %0, 5, !dbg !21
  br i1 %cmp, label %if.then, label %if.end5, !dbg !22

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !23, metadata !DIExpression()), !dbg !30
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !31
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !33
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !34
  %cmp1 = icmp ne i8* %call, null, !dbg !35
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !36

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !37
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !39
  store i32 %call4, i32* %data, align 4, !dbg !40
  br label %if.end, !dbg !41

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !42
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !44

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !45
  %cmp6 = icmp eq i32 %3, 5, !dbg !47
  br i1 %cmp6, label %if.then7, label %if.end15, !dbg !48

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !49, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !53, metadata !DIExpression()), !dbg !57
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !57
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !57
  %5 = load i32, i32* %data, align 4, !dbg !58
  %cmp8 = icmp sge i32 %5, 0, !dbg !60
  br i1 %cmp8, label %if.then9, label %if.else13, !dbg !61

if.then9:                                         ; preds = %if.then7
  %6 = load i32, i32* %data, align 4, !dbg !62
  %idxprom = sext i32 %6 to i64, !dbg !64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !64
  store i32 1, i32* %arrayidx, align 4, !dbg !65
  store i32 0, i32* %i, align 4, !dbg !66
  br label %for.cond, !dbg !68

for.cond:                                         ; preds = %for.inc, %if.then9
  %7 = load i32, i32* %i, align 4, !dbg !69
  %cmp10 = icmp slt i32 %7, 10, !dbg !71
  br i1 %cmp10, label %for.body, label %for.end, !dbg !72

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !73
  %idxprom11 = sext i32 %8 to i64, !dbg !75
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom11, !dbg !75
  %9 = load i32, i32* %arrayidx12, align 4, !dbg !75
  call void @printIntLine(i32 %9), !dbg !76
  br label %for.inc, !dbg !77

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !78
  %inc = add nsw i32 %10, 1, !dbg !78
  store i32 %inc, i32* %i, align 4, !dbg !78
  br label %for.cond, !dbg !79, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  br label %if.end14, !dbg !83

if.else13:                                        ; preds = %if.then7
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !84
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %for.end
  br label %if.end15, !dbg !86

if.end15:                                         ; preds = %if.end14, %if.end5
  ret void, !dbg !87
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
define dso_local void @goodB2G1() #0 !dbg !88 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !89, metadata !DIExpression()), !dbg !90
  store i32 -1, i32* %data, align 4, !dbg !91
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !92
  %cmp = icmp eq i32 %0, 5, !dbg !94
  br i1 %cmp, label %if.then, label %if.end5, !dbg !95

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !96, metadata !DIExpression()), !dbg !99
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !99
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !99
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !100
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !102
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !103
  %cmp1 = icmp ne i8* %call, null, !dbg !104
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !105

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !106
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !108
  store i32 %call4, i32* %data, align 4, !dbg !109
  br label %if.end, !dbg !110

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !111
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !113

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !114
  %cmp6 = icmp ne i32 %3, 5, !dbg !116
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !117

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !118
  br label %if.end17, !dbg !120

if.else8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !121, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !125, metadata !DIExpression()), !dbg !126
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !126
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !126
  %5 = load i32, i32* %data, align 4, !dbg !127
  %cmp9 = icmp sge i32 %5, 0, !dbg !129
  br i1 %cmp9, label %land.lhs.true, label %if.else15, !dbg !130

land.lhs.true:                                    ; preds = %if.else8
  %6 = load i32, i32* %data, align 4, !dbg !131
  %cmp10 = icmp slt i32 %6, 10, !dbg !132
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !133

if.then11:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !134
  %idxprom = sext i32 %7 to i64, !dbg !136
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !136
  store i32 1, i32* %arrayidx, align 4, !dbg !137
  store i32 0, i32* %i, align 4, !dbg !138
  br label %for.cond, !dbg !140

for.cond:                                         ; preds = %for.inc, %if.then11
  %8 = load i32, i32* %i, align 4, !dbg !141
  %cmp12 = icmp slt i32 %8, 10, !dbg !143
  br i1 %cmp12, label %for.body, label %for.end, !dbg !144

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !145
  %idxprom13 = sext i32 %9 to i64, !dbg !147
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !147
  %10 = load i32, i32* %arrayidx14, align 4, !dbg !147
  call void @printIntLine(i32 %10), !dbg !148
  br label %for.inc, !dbg !149

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !150
  %inc = add nsw i32 %11, 1, !dbg !150
  store i32 %inc, i32* %i, align 4, !dbg !150
  br label %for.cond, !dbg !151, !llvm.loop !152

for.end:                                          ; preds = %for.cond
  br label %if.end16, !dbg !154

if.else15:                                        ; preds = %land.lhs.true, %if.else8
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !155
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %for.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  ret void, !dbg !157
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !158 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !159, metadata !DIExpression()), !dbg !160
  store i32 -1, i32* %data, align 4, !dbg !161
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !162
  %cmp = icmp eq i32 %0, 5, !dbg !164
  br i1 %cmp, label %if.then, label %if.end5, !dbg !165

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !166, metadata !DIExpression()), !dbg !169
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !169
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !169
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !170
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !172
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !173
  %cmp1 = icmp ne i8* %call, null, !dbg !174
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !175

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !176
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !178
  store i32 %call4, i32* %data, align 4, !dbg !179
  br label %if.end, !dbg !180

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !181
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !183

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !184
  %cmp6 = icmp eq i32 %3, 5, !dbg !186
  br i1 %cmp6, label %if.then7, label %if.end16, !dbg !187

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !188, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !192, metadata !DIExpression()), !dbg !193
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !193
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !193
  %5 = load i32, i32* %data, align 4, !dbg !194
  %cmp8 = icmp sge i32 %5, 0, !dbg !196
  br i1 %cmp8, label %land.lhs.true, label %if.else14, !dbg !197

land.lhs.true:                                    ; preds = %if.then7
  %6 = load i32, i32* %data, align 4, !dbg !198
  %cmp9 = icmp slt i32 %6, 10, !dbg !199
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !200

if.then10:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !201
  %idxprom = sext i32 %7 to i64, !dbg !203
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !203
  store i32 1, i32* %arrayidx, align 4, !dbg !204
  store i32 0, i32* %i, align 4, !dbg !205
  br label %for.cond, !dbg !207

for.cond:                                         ; preds = %for.inc, %if.then10
  %8 = load i32, i32* %i, align 4, !dbg !208
  %cmp11 = icmp slt i32 %8, 10, !dbg !210
  br i1 %cmp11, label %for.body, label %for.end, !dbg !211

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !212
  %idxprom12 = sext i32 %9 to i64, !dbg !214
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom12, !dbg !214
  %10 = load i32, i32* %arrayidx13, align 4, !dbg !214
  call void @printIntLine(i32 %10), !dbg !215
  br label %for.inc, !dbg !216

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !217
  %inc = add nsw i32 %11, 1, !dbg !217
  store i32 %inc, i32* %i, align 4, !dbg !217
  br label %for.cond, !dbg !218, !llvm.loop !219

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !221

if.else14:                                        ; preds = %land.lhs.true, %if.then7
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !222
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16, !dbg !224

if.end16:                                         ; preds = %if.end15, %if.end5
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !226 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !227, metadata !DIExpression()), !dbg !228
  store i32 -1, i32* %data, align 4, !dbg !229
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !230
  %cmp = icmp ne i32 %0, 5, !dbg !232
  br i1 %cmp, label %if.then, label %if.else, !dbg !233

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !234
  br label %if.end, !dbg !236

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !237
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !239
  %cmp1 = icmp eq i32 %1, 5, !dbg !241
  br i1 %cmp1, label %if.then2, label %if.end10, !dbg !242

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !243, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !247, metadata !DIExpression()), !dbg !248
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !248
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !248
  %3 = load i32, i32* %data, align 4, !dbg !249
  %cmp3 = icmp sge i32 %3, 0, !dbg !251
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !252

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !253
  %idxprom = sext i32 %4 to i64, !dbg !255
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !255
  store i32 1, i32* %arrayidx, align 4, !dbg !256
  store i32 0, i32* %i, align 4, !dbg !257
  br label %for.cond, !dbg !259

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !260
  %cmp5 = icmp slt i32 %5, 10, !dbg !262
  br i1 %cmp5, label %for.body, label %for.end, !dbg !263

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !264
  %idxprom6 = sext i32 %6 to i64, !dbg !266
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !266
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !266
  call void @printIntLine(i32 %7), !dbg !267
  br label %for.inc, !dbg !268

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !269
  %inc = add nsw i32 %8, 1, !dbg !269
  store i32 %inc, i32* %i, align 4, !dbg !269
  br label %for.cond, !dbg !270, !llvm.loop !271

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !273

if.else8:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !274
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !276

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !278 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !279, metadata !DIExpression()), !dbg !280
  store i32 -1, i32* %data, align 4, !dbg !281
  %0 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !282
  %cmp = icmp eq i32 %0, 5, !dbg !284
  br i1 %cmp, label %if.then, label %if.end, !dbg !285

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !286
  br label %if.end, !dbg !288

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !289
  %cmp1 = icmp eq i32 %1, 5, !dbg !291
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !292

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !293, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !297, metadata !DIExpression()), !dbg !298
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !298
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !298
  %3 = load i32, i32* %data, align 4, !dbg !299
  %cmp3 = icmp sge i32 %3, 0, !dbg !301
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !302

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !303
  %idxprom = sext i32 %4 to i64, !dbg !305
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !305
  store i32 1, i32* %arrayidx, align 4, !dbg !306
  store i32 0, i32* %i, align 4, !dbg !307
  br label %for.cond, !dbg !309

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !310
  %cmp5 = icmp slt i32 %5, 10, !dbg !312
  br i1 %cmp5, label %for.body, label %for.end, !dbg !313

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !314
  %idxprom6 = sext i32 %6 to i64, !dbg !316
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !316
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !316
  call void @printIntLine(i32 %7), !dbg !317
  br label %for.inc, !dbg !318

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !319
  %inc = add nsw i32 %8, 1, !dbg !319
  store i32 %inc, i32* %i, align 4, !dbg !319
  br label %for.cond, !dbg !320, !llvm.loop !321

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !323

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !324
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !326

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_good() #0 !dbg !328 {
entry:
  call void @goodB2G1(), !dbg !329
  call void @goodB2G2(), !dbg !330
  call void @goodG2B1(), !dbg !331
  call void @goodG2B2(), !dbg !332
  ret void, !dbg !333
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_FIVE", scope: !2, file: !3, line: 26, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_569/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 12.0.0"}
!13 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_bad", scope: !3, file: !3, line: 30, type: !14, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{null}
!16 = !DILocalVariable(name: "data", scope: !13, file: !3, line: 32, type: !8)
!17 = !DILocation(line: 32, column: 9, scope: !13)
!18 = !DILocation(line: 34, column: 10, scope: !13)
!19 = !DILocation(line: 35, column: 8, scope: !20)
!20 = distinct !DILexicalBlock(scope: !13, file: !3, line: 35, column: 8)
!21 = !DILocation(line: 35, column: 25, scope: !20)
!22 = !DILocation(line: 35, column: 8, scope: !13)
!23 = !DILocalVariable(name: "inputBuffer", scope: !24, file: !3, line: 38, type: !26)
!24 = distinct !DILexicalBlock(scope: !25, file: !3, line: 37, column: 9)
!25 = distinct !DILexicalBlock(scope: !20, file: !3, line: 36, column: 5)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 112, elements: !28)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29}
!29 = !DISubrange(count: 14)
!30 = !DILocation(line: 38, column: 18, scope: !24)
!31 = !DILocation(line: 40, column: 23, scope: !32)
!32 = distinct !DILexicalBlock(scope: !24, file: !3, line: 40, column: 17)
!33 = !DILocation(line: 40, column: 53, scope: !32)
!34 = !DILocation(line: 40, column: 17, scope: !32)
!35 = !DILocation(line: 40, column: 60, scope: !32)
!36 = !DILocation(line: 40, column: 17, scope: !24)
!37 = !DILocation(line: 43, column: 29, scope: !38)
!38 = distinct !DILexicalBlock(scope: !32, file: !3, line: 41, column: 13)
!39 = !DILocation(line: 43, column: 24, scope: !38)
!40 = !DILocation(line: 43, column: 22, scope: !38)
!41 = !DILocation(line: 44, column: 13, scope: !38)
!42 = !DILocation(line: 47, column: 17, scope: !43)
!43 = distinct !DILexicalBlock(scope: !32, file: !3, line: 46, column: 13)
!44 = !DILocation(line: 50, column: 5, scope: !25)
!45 = !DILocation(line: 51, column: 8, scope: !46)
!46 = distinct !DILexicalBlock(scope: !13, file: !3, line: 51, column: 8)
!47 = !DILocation(line: 51, column: 25, scope: !46)
!48 = !DILocation(line: 51, column: 8, scope: !13)
!49 = !DILocalVariable(name: "i", scope: !50, file: !3, line: 54, type: !8)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 53, column: 9)
!51 = distinct !DILexicalBlock(scope: !46, file: !3, line: 52, column: 5)
!52 = !DILocation(line: 54, column: 17, scope: !50)
!53 = !DILocalVariable(name: "buffer", scope: !50, file: !3, line: 55, type: !54)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 320, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 10)
!57 = !DILocation(line: 55, column: 17, scope: !50)
!58 = !DILocation(line: 58, column: 17, scope: !59)
!59 = distinct !DILexicalBlock(scope: !50, file: !3, line: 58, column: 17)
!60 = !DILocation(line: 58, column: 22, scope: !59)
!61 = !DILocation(line: 58, column: 17, scope: !50)
!62 = !DILocation(line: 60, column: 24, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !3, line: 59, column: 13)
!64 = !DILocation(line: 60, column: 17, scope: !63)
!65 = !DILocation(line: 60, column: 30, scope: !63)
!66 = !DILocation(line: 62, column: 23, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !3, line: 62, column: 17)
!68 = !DILocation(line: 62, column: 21, scope: !67)
!69 = !DILocation(line: 62, column: 28, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !3, line: 62, column: 17)
!71 = !DILocation(line: 62, column: 30, scope: !70)
!72 = !DILocation(line: 62, column: 17, scope: !67)
!73 = !DILocation(line: 64, column: 41, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !3, line: 63, column: 17)
!75 = !DILocation(line: 64, column: 34, scope: !74)
!76 = !DILocation(line: 64, column: 21, scope: !74)
!77 = !DILocation(line: 65, column: 17, scope: !74)
!78 = !DILocation(line: 62, column: 37, scope: !70)
!79 = !DILocation(line: 62, column: 17, scope: !70)
!80 = distinct !{!80, !72, !81, !82}
!81 = !DILocation(line: 65, column: 17, scope: !67)
!82 = !{!"llvm.loop.mustprogress"}
!83 = !DILocation(line: 66, column: 13, scope: !63)
!84 = !DILocation(line: 69, column: 17, scope: !85)
!85 = distinct !DILexicalBlock(scope: !59, file: !3, line: 68, column: 13)
!86 = !DILocation(line: 72, column: 5, scope: !51)
!87 = !DILocation(line: 73, column: 1, scope: !13)
!88 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 80, type: !14, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!89 = !DILocalVariable(name: "data", scope: !88, file: !3, line: 82, type: !8)
!90 = !DILocation(line: 82, column: 9, scope: !88)
!91 = !DILocation(line: 84, column: 10, scope: !88)
!92 = !DILocation(line: 85, column: 8, scope: !93)
!93 = distinct !DILexicalBlock(scope: !88, file: !3, line: 85, column: 8)
!94 = !DILocation(line: 85, column: 25, scope: !93)
!95 = !DILocation(line: 85, column: 8, scope: !88)
!96 = !DILocalVariable(name: "inputBuffer", scope: !97, file: !3, line: 88, type: !26)
!97 = distinct !DILexicalBlock(scope: !98, file: !3, line: 87, column: 9)
!98 = distinct !DILexicalBlock(scope: !93, file: !3, line: 86, column: 5)
!99 = !DILocation(line: 88, column: 18, scope: !97)
!100 = !DILocation(line: 90, column: 23, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !3, line: 90, column: 17)
!102 = !DILocation(line: 90, column: 53, scope: !101)
!103 = !DILocation(line: 90, column: 17, scope: !101)
!104 = !DILocation(line: 90, column: 60, scope: !101)
!105 = !DILocation(line: 90, column: 17, scope: !97)
!106 = !DILocation(line: 93, column: 29, scope: !107)
!107 = distinct !DILexicalBlock(scope: !101, file: !3, line: 91, column: 13)
!108 = !DILocation(line: 93, column: 24, scope: !107)
!109 = !DILocation(line: 93, column: 22, scope: !107)
!110 = !DILocation(line: 94, column: 13, scope: !107)
!111 = !DILocation(line: 97, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !101, file: !3, line: 96, column: 13)
!113 = !DILocation(line: 100, column: 5, scope: !98)
!114 = !DILocation(line: 101, column: 8, scope: !115)
!115 = distinct !DILexicalBlock(scope: !88, file: !3, line: 101, column: 8)
!116 = !DILocation(line: 101, column: 25, scope: !115)
!117 = !DILocation(line: 101, column: 8, scope: !88)
!118 = !DILocation(line: 104, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !3, line: 102, column: 5)
!120 = !DILocation(line: 105, column: 5, scope: !119)
!121 = !DILocalVariable(name: "i", scope: !122, file: !3, line: 109, type: !8)
!122 = distinct !DILexicalBlock(scope: !123, file: !3, line: 108, column: 9)
!123 = distinct !DILexicalBlock(scope: !115, file: !3, line: 107, column: 5)
!124 = !DILocation(line: 109, column: 17, scope: !122)
!125 = !DILocalVariable(name: "buffer", scope: !122, file: !3, line: 110, type: !54)
!126 = !DILocation(line: 110, column: 17, scope: !122)
!127 = !DILocation(line: 112, column: 17, scope: !128)
!128 = distinct !DILexicalBlock(scope: !122, file: !3, line: 112, column: 17)
!129 = !DILocation(line: 112, column: 22, scope: !128)
!130 = !DILocation(line: 112, column: 27, scope: !128)
!131 = !DILocation(line: 112, column: 30, scope: !128)
!132 = !DILocation(line: 112, column: 35, scope: !128)
!133 = !DILocation(line: 112, column: 17, scope: !122)
!134 = !DILocation(line: 114, column: 24, scope: !135)
!135 = distinct !DILexicalBlock(scope: !128, file: !3, line: 113, column: 13)
!136 = !DILocation(line: 114, column: 17, scope: !135)
!137 = !DILocation(line: 114, column: 30, scope: !135)
!138 = !DILocation(line: 116, column: 23, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !3, line: 116, column: 17)
!140 = !DILocation(line: 116, column: 21, scope: !139)
!141 = !DILocation(line: 116, column: 28, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !3, line: 116, column: 17)
!143 = !DILocation(line: 116, column: 30, scope: !142)
!144 = !DILocation(line: 116, column: 17, scope: !139)
!145 = !DILocation(line: 118, column: 41, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !3, line: 117, column: 17)
!147 = !DILocation(line: 118, column: 34, scope: !146)
!148 = !DILocation(line: 118, column: 21, scope: !146)
!149 = !DILocation(line: 119, column: 17, scope: !146)
!150 = !DILocation(line: 116, column: 37, scope: !142)
!151 = !DILocation(line: 116, column: 17, scope: !142)
!152 = distinct !{!152, !144, !153, !82}
!153 = !DILocation(line: 119, column: 17, scope: !139)
!154 = !DILocation(line: 120, column: 13, scope: !135)
!155 = !DILocation(line: 123, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !128, file: !3, line: 122, column: 13)
!157 = !DILocation(line: 127, column: 1, scope: !88)
!158 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 130, type: !14, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!159 = !DILocalVariable(name: "data", scope: !158, file: !3, line: 132, type: !8)
!160 = !DILocation(line: 132, column: 9, scope: !158)
!161 = !DILocation(line: 134, column: 10, scope: !158)
!162 = !DILocation(line: 135, column: 8, scope: !163)
!163 = distinct !DILexicalBlock(scope: !158, file: !3, line: 135, column: 8)
!164 = !DILocation(line: 135, column: 25, scope: !163)
!165 = !DILocation(line: 135, column: 8, scope: !158)
!166 = !DILocalVariable(name: "inputBuffer", scope: !167, file: !3, line: 138, type: !26)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 137, column: 9)
!168 = distinct !DILexicalBlock(scope: !163, file: !3, line: 136, column: 5)
!169 = !DILocation(line: 138, column: 18, scope: !167)
!170 = !DILocation(line: 140, column: 23, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !3, line: 140, column: 17)
!172 = !DILocation(line: 140, column: 53, scope: !171)
!173 = !DILocation(line: 140, column: 17, scope: !171)
!174 = !DILocation(line: 140, column: 60, scope: !171)
!175 = !DILocation(line: 140, column: 17, scope: !167)
!176 = !DILocation(line: 143, column: 29, scope: !177)
!177 = distinct !DILexicalBlock(scope: !171, file: !3, line: 141, column: 13)
!178 = !DILocation(line: 143, column: 24, scope: !177)
!179 = !DILocation(line: 143, column: 22, scope: !177)
!180 = !DILocation(line: 144, column: 13, scope: !177)
!181 = !DILocation(line: 147, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !171, file: !3, line: 146, column: 13)
!183 = !DILocation(line: 150, column: 5, scope: !168)
!184 = !DILocation(line: 151, column: 8, scope: !185)
!185 = distinct !DILexicalBlock(scope: !158, file: !3, line: 151, column: 8)
!186 = !DILocation(line: 151, column: 25, scope: !185)
!187 = !DILocation(line: 151, column: 8, scope: !158)
!188 = !DILocalVariable(name: "i", scope: !189, file: !3, line: 154, type: !8)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 153, column: 9)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 152, column: 5)
!191 = !DILocation(line: 154, column: 17, scope: !189)
!192 = !DILocalVariable(name: "buffer", scope: !189, file: !3, line: 155, type: !54)
!193 = !DILocation(line: 155, column: 17, scope: !189)
!194 = !DILocation(line: 157, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !189, file: !3, line: 157, column: 17)
!196 = !DILocation(line: 157, column: 22, scope: !195)
!197 = !DILocation(line: 157, column: 27, scope: !195)
!198 = !DILocation(line: 157, column: 30, scope: !195)
!199 = !DILocation(line: 157, column: 35, scope: !195)
!200 = !DILocation(line: 157, column: 17, scope: !189)
!201 = !DILocation(line: 159, column: 24, scope: !202)
!202 = distinct !DILexicalBlock(scope: !195, file: !3, line: 158, column: 13)
!203 = !DILocation(line: 159, column: 17, scope: !202)
!204 = !DILocation(line: 159, column: 30, scope: !202)
!205 = !DILocation(line: 161, column: 23, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !3, line: 161, column: 17)
!207 = !DILocation(line: 161, column: 21, scope: !206)
!208 = !DILocation(line: 161, column: 28, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !3, line: 161, column: 17)
!210 = !DILocation(line: 161, column: 30, scope: !209)
!211 = !DILocation(line: 161, column: 17, scope: !206)
!212 = !DILocation(line: 163, column: 41, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !3, line: 162, column: 17)
!214 = !DILocation(line: 163, column: 34, scope: !213)
!215 = !DILocation(line: 163, column: 21, scope: !213)
!216 = !DILocation(line: 164, column: 17, scope: !213)
!217 = !DILocation(line: 161, column: 37, scope: !209)
!218 = !DILocation(line: 161, column: 17, scope: !209)
!219 = distinct !{!219, !211, !220, !82}
!220 = !DILocation(line: 164, column: 17, scope: !206)
!221 = !DILocation(line: 165, column: 13, scope: !202)
!222 = !DILocation(line: 168, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !195, file: !3, line: 167, column: 13)
!224 = !DILocation(line: 171, column: 5, scope: !190)
!225 = !DILocation(line: 172, column: 1, scope: !158)
!226 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 175, type: !14, scopeLine: 176, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!227 = !DILocalVariable(name: "data", scope: !226, file: !3, line: 177, type: !8)
!228 = !DILocation(line: 177, column: 9, scope: !226)
!229 = !DILocation(line: 179, column: 10, scope: !226)
!230 = !DILocation(line: 180, column: 8, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !3, line: 180, column: 8)
!232 = !DILocation(line: 180, column: 25, scope: !231)
!233 = !DILocation(line: 180, column: 8, scope: !226)
!234 = !DILocation(line: 183, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !3, line: 181, column: 5)
!236 = !DILocation(line: 184, column: 5, scope: !235)
!237 = !DILocation(line: 189, column: 14, scope: !238)
!238 = distinct !DILexicalBlock(scope: !231, file: !3, line: 186, column: 5)
!239 = !DILocation(line: 191, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !226, file: !3, line: 191, column: 8)
!241 = !DILocation(line: 191, column: 25, scope: !240)
!242 = !DILocation(line: 191, column: 8, scope: !226)
!243 = !DILocalVariable(name: "i", scope: !244, file: !3, line: 194, type: !8)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 193, column: 9)
!245 = distinct !DILexicalBlock(scope: !240, file: !3, line: 192, column: 5)
!246 = !DILocation(line: 194, column: 17, scope: !244)
!247 = !DILocalVariable(name: "buffer", scope: !244, file: !3, line: 195, type: !54)
!248 = !DILocation(line: 195, column: 17, scope: !244)
!249 = !DILocation(line: 198, column: 17, scope: !250)
!250 = distinct !DILexicalBlock(scope: !244, file: !3, line: 198, column: 17)
!251 = !DILocation(line: 198, column: 22, scope: !250)
!252 = !DILocation(line: 198, column: 17, scope: !244)
!253 = !DILocation(line: 200, column: 24, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !3, line: 199, column: 13)
!255 = !DILocation(line: 200, column: 17, scope: !254)
!256 = !DILocation(line: 200, column: 30, scope: !254)
!257 = !DILocation(line: 202, column: 23, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 202, column: 17)
!259 = !DILocation(line: 202, column: 21, scope: !258)
!260 = !DILocation(line: 202, column: 28, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !3, line: 202, column: 17)
!262 = !DILocation(line: 202, column: 30, scope: !261)
!263 = !DILocation(line: 202, column: 17, scope: !258)
!264 = !DILocation(line: 204, column: 41, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !3, line: 203, column: 17)
!266 = !DILocation(line: 204, column: 34, scope: !265)
!267 = !DILocation(line: 204, column: 21, scope: !265)
!268 = !DILocation(line: 205, column: 17, scope: !265)
!269 = !DILocation(line: 202, column: 37, scope: !261)
!270 = !DILocation(line: 202, column: 17, scope: !261)
!271 = distinct !{!271, !263, !272, !82}
!272 = !DILocation(line: 205, column: 17, scope: !258)
!273 = !DILocation(line: 206, column: 13, scope: !254)
!274 = !DILocation(line: 209, column: 17, scope: !275)
!275 = distinct !DILexicalBlock(scope: !250, file: !3, line: 208, column: 13)
!276 = !DILocation(line: 212, column: 5, scope: !245)
!277 = !DILocation(line: 213, column: 1, scope: !226)
!278 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 216, type: !14, scopeLine: 217, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!279 = !DILocalVariable(name: "data", scope: !278, file: !3, line: 218, type: !8)
!280 = !DILocation(line: 218, column: 9, scope: !278)
!281 = !DILocation(line: 220, column: 10, scope: !278)
!282 = !DILocation(line: 221, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !3, line: 221, column: 8)
!284 = !DILocation(line: 221, column: 25, scope: !283)
!285 = !DILocation(line: 221, column: 8, scope: !278)
!286 = !DILocation(line: 225, column: 14, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !3, line: 222, column: 5)
!288 = !DILocation(line: 226, column: 5, scope: !287)
!289 = !DILocation(line: 227, column: 8, scope: !290)
!290 = distinct !DILexicalBlock(scope: !278, file: !3, line: 227, column: 8)
!291 = !DILocation(line: 227, column: 25, scope: !290)
!292 = !DILocation(line: 227, column: 8, scope: !278)
!293 = !DILocalVariable(name: "i", scope: !294, file: !3, line: 230, type: !8)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 229, column: 9)
!295 = distinct !DILexicalBlock(scope: !290, file: !3, line: 228, column: 5)
!296 = !DILocation(line: 230, column: 17, scope: !294)
!297 = !DILocalVariable(name: "buffer", scope: !294, file: !3, line: 231, type: !54)
!298 = !DILocation(line: 231, column: 17, scope: !294)
!299 = !DILocation(line: 234, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !294, file: !3, line: 234, column: 17)
!301 = !DILocation(line: 234, column: 22, scope: !300)
!302 = !DILocation(line: 234, column: 17, scope: !294)
!303 = !DILocation(line: 236, column: 24, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !3, line: 235, column: 13)
!305 = !DILocation(line: 236, column: 17, scope: !304)
!306 = !DILocation(line: 236, column: 30, scope: !304)
!307 = !DILocation(line: 238, column: 23, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !3, line: 238, column: 17)
!309 = !DILocation(line: 238, column: 21, scope: !308)
!310 = !DILocation(line: 238, column: 28, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !3, line: 238, column: 17)
!312 = !DILocation(line: 238, column: 30, scope: !311)
!313 = !DILocation(line: 238, column: 17, scope: !308)
!314 = !DILocation(line: 240, column: 41, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !3, line: 239, column: 17)
!316 = !DILocation(line: 240, column: 34, scope: !315)
!317 = !DILocation(line: 240, column: 21, scope: !315)
!318 = !DILocation(line: 241, column: 17, scope: !315)
!319 = !DILocation(line: 238, column: 37, scope: !311)
!320 = !DILocation(line: 238, column: 17, scope: !311)
!321 = distinct !{!321, !313, !322, !82}
!322 = !DILocation(line: 241, column: 17, scope: !308)
!323 = !DILocation(line: 242, column: 13, scope: !304)
!324 = !DILocation(line: 245, column: 17, scope: !325)
!325 = distinct !DILexicalBlock(scope: !300, file: !3, line: 244, column: 13)
!326 = !DILocation(line: 248, column: 5, scope: !295)
!327 = !DILocation(line: 249, column: 1, scope: !278)
!328 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_good", scope: !3, file: !3, line: 251, type: !14, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!329 = !DILocation(line: 253, column: 5, scope: !328)
!330 = !DILocation(line: 254, column: 5, scope: !328)
!331 = !DILocation(line: 255, column: 5, scope: !328)
!332 = !DILocation(line: 256, column: 5, scope: !328)
!333 = !DILocation(line: 257, column: 1, scope: !328)
