; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@staticFive = dso_local global i32 5, align 4, !dbg !0
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"buffer overread....\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07_bad() #0 !dbg !13 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 -1, i32* %data, align 4, !dbg !18
  %0 = load i32, i32* @staticFive, align 4, !dbg !19
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
  %3 = load i32, i32* @staticFive, align 4, !dbg !45
  %cmp6 = icmp eq i32 %3, 5, !dbg !47
  br i1 %cmp6, label %if.then7, label %if.end19, !dbg !48

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !49, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !53, metadata !DIExpression()), !dbg !57
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !57
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !57
  %5 = load i32, i32* %data, align 4, !dbg !58
  %cmp8 = icmp sge i32 %5, 0, !dbg !60
  br i1 %cmp8, label %if.then9, label %if.else17, !dbg !61

if.then9:                                         ; preds = %if.then7
  %6 = load i32, i32* %data, align 4, !dbg !62
  %cmp10 = icmp sgt i32 %6, 9, !dbg !65
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !66

if.then11:                                        ; preds = %if.then9
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)), !dbg !67
  br label %if.end13, !dbg !69

if.end13:                                         ; preds = %if.then11, %if.then9
  %7 = load i32, i32* %data, align 4, !dbg !70
  %idxprom = sext i32 %7 to i64, !dbg !71
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !71
  store i32 1, i32* %arrayidx, align 4, !dbg !72
  store i32 0, i32* %i, align 4, !dbg !73
  br label %for.cond, !dbg !75

for.cond:                                         ; preds = %for.inc, %if.end13
  %8 = load i32, i32* %i, align 4, !dbg !76
  %cmp14 = icmp slt i32 %8, 10, !dbg !78
  br i1 %cmp14, label %for.body, label %for.end, !dbg !79

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !80
  %idxprom15 = sext i32 %9 to i64, !dbg !82
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom15, !dbg !82
  %10 = load i32, i32* %arrayidx16, align 4, !dbg !82
  call void @printIntLine(i32 %10), !dbg !83
  br label %for.inc, !dbg !84

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !85
  %inc = add nsw i32 %11, 1, !dbg !85
  store i32 %inc, i32* %i, align 4, !dbg !85
  br label %for.cond, !dbg !86, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  br label %if.end18, !dbg !90

if.else17:                                        ; preds = %if.then7
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !91
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %for.end
  br label %if.end19, !dbg !93

if.end19:                                         ; preds = %if.end18, %if.end5
  ret void, !dbg !94
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !95 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !96, metadata !DIExpression()), !dbg !97
  store i32 -1, i32* %data, align 4, !dbg !98
  %0 = load i32, i32* @staticFive, align 4, !dbg !99
  %cmp = icmp eq i32 %0, 5, !dbg !101
  br i1 %cmp, label %if.then, label %if.end5, !dbg !102

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !103, metadata !DIExpression()), !dbg !106
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !106
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !107
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !109
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !110
  %cmp1 = icmp ne i8* %call, null, !dbg !111
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !112

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !113
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !115
  store i32 %call4, i32* %data, align 4, !dbg !116
  br label %if.end, !dbg !117

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !118
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !120

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @staticFive, align 4, !dbg !121
  %cmp6 = icmp ne i32 %3, 5, !dbg !123
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !124

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !125
  br label %if.end17, !dbg !127

if.else8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !128, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !132, metadata !DIExpression()), !dbg !133
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !133
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !133
  %5 = load i32, i32* %data, align 4, !dbg !134
  %cmp9 = icmp sge i32 %5, 0, !dbg !136
  br i1 %cmp9, label %land.lhs.true, label %if.else15, !dbg !137

land.lhs.true:                                    ; preds = %if.else8
  %6 = load i32, i32* %data, align 4, !dbg !138
  %cmp10 = icmp slt i32 %6, 10, !dbg !139
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !140

if.then11:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !141
  %idxprom = sext i32 %7 to i64, !dbg !143
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !143
  store i32 1, i32* %arrayidx, align 4, !dbg !144
  store i32 0, i32* %i, align 4, !dbg !145
  br label %for.cond, !dbg !147

for.cond:                                         ; preds = %for.inc, %if.then11
  %8 = load i32, i32* %i, align 4, !dbg !148
  %cmp12 = icmp slt i32 %8, 10, !dbg !150
  br i1 %cmp12, label %for.body, label %for.end, !dbg !151

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !152
  %idxprom13 = sext i32 %9 to i64, !dbg !154
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom13, !dbg !154
  %10 = load i32, i32* %arrayidx14, align 4, !dbg !154
  call void @printIntLine(i32 %10), !dbg !155
  br label %for.inc, !dbg !156

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !157
  %inc = add nsw i32 %11, 1, !dbg !157
  store i32 %inc, i32* %i, align 4, !dbg !157
  br label %for.cond, !dbg !158, !llvm.loop !159

for.end:                                          ; preds = %for.cond
  br label %if.end16, !dbg !161

if.else15:                                        ; preds = %land.lhs.true, %if.else8
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)), !dbg !162
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %for.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  ret void, !dbg !164
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !165 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !166, metadata !DIExpression()), !dbg !167
  store i32 -1, i32* %data, align 4, !dbg !168
  %0 = load i32, i32* @staticFive, align 4, !dbg !169
  %cmp = icmp eq i32 %0, 5, !dbg !171
  br i1 %cmp, label %if.then, label %if.end5, !dbg !172

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !173, metadata !DIExpression()), !dbg !176
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !176
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !176
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !177
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !179
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !180
  %cmp1 = icmp ne i8* %call, null, !dbg !181
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !182

if.then2:                                         ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !183
  %call4 = call i32 @atoi(i8* %arraydecay3) #5, !dbg !185
  store i32 %call4, i32* %data, align 4, !dbg !186
  br label %if.end, !dbg !187

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !188
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !190

if.end5:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @staticFive, align 4, !dbg !191
  %cmp6 = icmp eq i32 %3, 5, !dbg !193
  br i1 %cmp6, label %if.then7, label %if.end16, !dbg !194

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !195, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !199, metadata !DIExpression()), !dbg !200
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !200
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !200
  %5 = load i32, i32* %data, align 4, !dbg !201
  %cmp8 = icmp sge i32 %5, 0, !dbg !203
  br i1 %cmp8, label %land.lhs.true, label %if.else14, !dbg !204

land.lhs.true:                                    ; preds = %if.then7
  %6 = load i32, i32* %data, align 4, !dbg !205
  %cmp9 = icmp slt i32 %6, 10, !dbg !206
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !207

if.then10:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !208
  %idxprom = sext i32 %7 to i64, !dbg !210
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !210
  store i32 1, i32* %arrayidx, align 4, !dbg !211
  store i32 0, i32* %i, align 4, !dbg !212
  br label %for.cond, !dbg !214

for.cond:                                         ; preds = %for.inc, %if.then10
  %8 = load i32, i32* %i, align 4, !dbg !215
  %cmp11 = icmp slt i32 %8, 10, !dbg !217
  br i1 %cmp11, label %for.body, label %for.end, !dbg !218

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !219
  %idxprom12 = sext i32 %9 to i64, !dbg !221
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom12, !dbg !221
  %10 = load i32, i32* %arrayidx13, align 4, !dbg !221
  call void @printIntLine(i32 %10), !dbg !222
  br label %for.inc, !dbg !223

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !224
  %inc = add nsw i32 %11, 1, !dbg !224
  store i32 %inc, i32* %i, align 4, !dbg !224
  br label %for.cond, !dbg !225, !llvm.loop !226

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !228

if.else14:                                        ; preds = %land.lhs.true, %if.then7
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)), !dbg !229
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16, !dbg !231

if.end16:                                         ; preds = %if.end15, %if.end5
  ret void, !dbg !232
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !233 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !234, metadata !DIExpression()), !dbg !235
  store i32 -1, i32* %data, align 4, !dbg !236
  %0 = load i32, i32* @staticFive, align 4, !dbg !237
  %cmp = icmp ne i32 %0, 5, !dbg !239
  br i1 %cmp, label %if.then, label %if.else, !dbg !240

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !241
  br label %if.end, !dbg !243

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !244
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @staticFive, align 4, !dbg !246
  %cmp1 = icmp eq i32 %1, 5, !dbg !248
  br i1 %cmp1, label %if.then2, label %if.end10, !dbg !249

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !250, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !254, metadata !DIExpression()), !dbg !255
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !255
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !255
  %3 = load i32, i32* %data, align 4, !dbg !256
  %cmp3 = icmp sge i32 %3, 0, !dbg !258
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !259

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !260
  %idxprom = sext i32 %4 to i64, !dbg !262
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !262
  store i32 1, i32* %arrayidx, align 4, !dbg !263
  store i32 0, i32* %i, align 4, !dbg !264
  br label %for.cond, !dbg !266

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !267
  %cmp5 = icmp slt i32 %5, 10, !dbg !269
  br i1 %cmp5, label %for.body, label %for.end, !dbg !270

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !271
  %idxprom6 = sext i32 %6 to i64, !dbg !273
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !273
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !273
  call void @printIntLine(i32 %7), !dbg !274
  br label %for.inc, !dbg !275

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !276
  %inc = add nsw i32 %8, 1, !dbg !276
  store i32 %inc, i32* %i, align 4, !dbg !276
  br label %for.cond, !dbg !277, !llvm.loop !278

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !280

if.else8:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !281
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10, !dbg !283

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !285 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !286, metadata !DIExpression()), !dbg !287
  store i32 -1, i32* %data, align 4, !dbg !288
  %0 = load i32, i32* @staticFive, align 4, !dbg !289
  %cmp = icmp eq i32 %0, 5, !dbg !291
  br i1 %cmp, label %if.then, label %if.end, !dbg !292

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !293
  br label %if.end, !dbg !295

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @staticFive, align 4, !dbg !296
  %cmp1 = icmp eq i32 %1, 5, !dbg !298
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !299

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !300, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !304, metadata !DIExpression()), !dbg !305
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !305
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !305
  %3 = load i32, i32* %data, align 4, !dbg !306
  %cmp3 = icmp sge i32 %3, 0, !dbg !308
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !309

if.then4:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !310
  %idxprom = sext i32 %4 to i64, !dbg !312
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !312
  store i32 1, i32* %arrayidx, align 4, !dbg !313
  store i32 0, i32* %i, align 4, !dbg !314
  br label %for.cond, !dbg !316

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !317
  %cmp5 = icmp slt i32 %5, 10, !dbg !319
  br i1 %cmp5, label %for.body, label %for.end, !dbg !320

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !321
  %idxprom6 = sext i32 %6 to i64, !dbg !323
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom6, !dbg !323
  %7 = load i32, i32* %arrayidx7, align 4, !dbg !323
  call void @printIntLine(i32 %7), !dbg !324
  br label %for.inc, !dbg !325

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !326
  %inc = add nsw i32 %8, 1, !dbg !326
  store i32 %inc, i32* %i, align 4, !dbg !326
  br label %for.cond, !dbg !327, !llvm.loop !328

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !330

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !331
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  br label %if.end9, !dbg !333

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07_good() #0 !dbg !335 {
entry:
  call void @goodB2G1(), !dbg !336
  call void @goodB2G2(), !dbg !337
  call void @goodG2B1(), !dbg !338
  call void @goodG2B2(), !dbg !339
  ret void, !dbg !340
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
!1 = distinct !DIGlobalVariable(name: "staticFive", scope: !2, file: !3, line: 26, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_570/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 12.0.0"}
!13 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07_bad", scope: !3, file: !3, line: 30, type: !14, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{null}
!16 = !DILocalVariable(name: "data", scope: !13, file: !3, line: 32, type: !8)
!17 = !DILocation(line: 32, column: 9, scope: !13)
!18 = !DILocation(line: 34, column: 10, scope: !13)
!19 = !DILocation(line: 35, column: 8, scope: !20)
!20 = distinct !DILexicalBlock(scope: !13, file: !3, line: 35, column: 8)
!21 = !DILocation(line: 35, column: 18, scope: !20)
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
!47 = !DILocation(line: 51, column: 18, scope: !46)
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
!62 = !DILocation(line: 60, column: 17, scope: !63)
!63 = distinct !DILexicalBlock(scope: !64, file: !3, line: 60, column: 17)
!64 = distinct !DILexicalBlock(scope: !59, file: !3, line: 59, column: 13)
!65 = !DILocation(line: 60, column: 21, scope: !63)
!66 = !DILocation(line: 60, column: 17, scope: !64)
!67 = !DILocation(line: 62, column: 17, scope: !68)
!68 = distinct !DILexicalBlock(scope: !63, file: !3, line: 61, column: 17)
!69 = !DILocation(line: 63, column: 17, scope: !68)
!70 = !DILocation(line: 64, column: 24, scope: !64)
!71 = !DILocation(line: 64, column: 17, scope: !64)
!72 = !DILocation(line: 64, column: 30, scope: !64)
!73 = !DILocation(line: 67, column: 23, scope: !74)
!74 = distinct !DILexicalBlock(scope: !64, file: !3, line: 67, column: 17)
!75 = !DILocation(line: 67, column: 21, scope: !74)
!76 = !DILocation(line: 67, column: 28, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !3, line: 67, column: 17)
!78 = !DILocation(line: 67, column: 30, scope: !77)
!79 = !DILocation(line: 67, column: 17, scope: !74)
!80 = !DILocation(line: 69, column: 41, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !3, line: 68, column: 17)
!82 = !DILocation(line: 69, column: 34, scope: !81)
!83 = !DILocation(line: 69, column: 21, scope: !81)
!84 = !DILocation(line: 70, column: 17, scope: !81)
!85 = !DILocation(line: 67, column: 37, scope: !77)
!86 = !DILocation(line: 67, column: 17, scope: !77)
!87 = distinct !{!87, !79, !88, !89}
!88 = !DILocation(line: 70, column: 17, scope: !74)
!89 = !{!"llvm.loop.mustprogress"}
!90 = !DILocation(line: 71, column: 13, scope: !64)
!91 = !DILocation(line: 74, column: 17, scope: !92)
!92 = distinct !DILexicalBlock(scope: !59, file: !3, line: 73, column: 13)
!93 = !DILocation(line: 77, column: 5, scope: !51)
!94 = !DILocation(line: 78, column: 1, scope: !13)
!95 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 85, type: !14, scopeLine: 86, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!96 = !DILocalVariable(name: "data", scope: !95, file: !3, line: 87, type: !8)
!97 = !DILocation(line: 87, column: 9, scope: !95)
!98 = !DILocation(line: 89, column: 10, scope: !95)
!99 = !DILocation(line: 90, column: 8, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !3, line: 90, column: 8)
!101 = !DILocation(line: 90, column: 18, scope: !100)
!102 = !DILocation(line: 90, column: 8, scope: !95)
!103 = !DILocalVariable(name: "inputBuffer", scope: !104, file: !3, line: 93, type: !26)
!104 = distinct !DILexicalBlock(scope: !105, file: !3, line: 92, column: 9)
!105 = distinct !DILexicalBlock(scope: !100, file: !3, line: 91, column: 5)
!106 = !DILocation(line: 93, column: 18, scope: !104)
!107 = !DILocation(line: 95, column: 23, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !3, line: 95, column: 17)
!109 = !DILocation(line: 95, column: 53, scope: !108)
!110 = !DILocation(line: 95, column: 17, scope: !108)
!111 = !DILocation(line: 95, column: 60, scope: !108)
!112 = !DILocation(line: 95, column: 17, scope: !104)
!113 = !DILocation(line: 98, column: 29, scope: !114)
!114 = distinct !DILexicalBlock(scope: !108, file: !3, line: 96, column: 13)
!115 = !DILocation(line: 98, column: 24, scope: !114)
!116 = !DILocation(line: 98, column: 22, scope: !114)
!117 = !DILocation(line: 99, column: 13, scope: !114)
!118 = !DILocation(line: 102, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !108, file: !3, line: 101, column: 13)
!120 = !DILocation(line: 105, column: 5, scope: !105)
!121 = !DILocation(line: 106, column: 8, scope: !122)
!122 = distinct !DILexicalBlock(scope: !95, file: !3, line: 106, column: 8)
!123 = !DILocation(line: 106, column: 18, scope: !122)
!124 = !DILocation(line: 106, column: 8, scope: !95)
!125 = !DILocation(line: 109, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !3, line: 107, column: 5)
!127 = !DILocation(line: 110, column: 5, scope: !126)
!128 = !DILocalVariable(name: "i", scope: !129, file: !3, line: 114, type: !8)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 113, column: 9)
!130 = distinct !DILexicalBlock(scope: !122, file: !3, line: 112, column: 5)
!131 = !DILocation(line: 114, column: 17, scope: !129)
!132 = !DILocalVariable(name: "buffer", scope: !129, file: !3, line: 115, type: !54)
!133 = !DILocation(line: 115, column: 17, scope: !129)
!134 = !DILocation(line: 117, column: 17, scope: !135)
!135 = distinct !DILexicalBlock(scope: !129, file: !3, line: 117, column: 17)
!136 = !DILocation(line: 117, column: 22, scope: !135)
!137 = !DILocation(line: 117, column: 27, scope: !135)
!138 = !DILocation(line: 117, column: 30, scope: !135)
!139 = !DILocation(line: 117, column: 35, scope: !135)
!140 = !DILocation(line: 117, column: 17, scope: !129)
!141 = !DILocation(line: 119, column: 24, scope: !142)
!142 = distinct !DILexicalBlock(scope: !135, file: !3, line: 118, column: 13)
!143 = !DILocation(line: 119, column: 17, scope: !142)
!144 = !DILocation(line: 119, column: 30, scope: !142)
!145 = !DILocation(line: 121, column: 23, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !3, line: 121, column: 17)
!147 = !DILocation(line: 121, column: 21, scope: !146)
!148 = !DILocation(line: 121, column: 28, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !3, line: 121, column: 17)
!150 = !DILocation(line: 121, column: 30, scope: !149)
!151 = !DILocation(line: 121, column: 17, scope: !146)
!152 = !DILocation(line: 123, column: 41, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !3, line: 122, column: 17)
!154 = !DILocation(line: 123, column: 34, scope: !153)
!155 = !DILocation(line: 123, column: 21, scope: !153)
!156 = !DILocation(line: 124, column: 17, scope: !153)
!157 = !DILocation(line: 121, column: 37, scope: !149)
!158 = !DILocation(line: 121, column: 17, scope: !149)
!159 = distinct !{!159, !151, !160, !89}
!160 = !DILocation(line: 124, column: 17, scope: !146)
!161 = !DILocation(line: 125, column: 13, scope: !142)
!162 = !DILocation(line: 128, column: 17, scope: !163)
!163 = distinct !DILexicalBlock(scope: !135, file: !3, line: 127, column: 13)
!164 = !DILocation(line: 132, column: 1, scope: !95)
!165 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 135, type: !14, scopeLine: 136, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!166 = !DILocalVariable(name: "data", scope: !165, file: !3, line: 137, type: !8)
!167 = !DILocation(line: 137, column: 9, scope: !165)
!168 = !DILocation(line: 139, column: 10, scope: !165)
!169 = !DILocation(line: 140, column: 8, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !3, line: 140, column: 8)
!171 = !DILocation(line: 140, column: 18, scope: !170)
!172 = !DILocation(line: 140, column: 8, scope: !165)
!173 = !DILocalVariable(name: "inputBuffer", scope: !174, file: !3, line: 143, type: !26)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 142, column: 9)
!175 = distinct !DILexicalBlock(scope: !170, file: !3, line: 141, column: 5)
!176 = !DILocation(line: 143, column: 18, scope: !174)
!177 = !DILocation(line: 145, column: 23, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !3, line: 145, column: 17)
!179 = !DILocation(line: 145, column: 53, scope: !178)
!180 = !DILocation(line: 145, column: 17, scope: !178)
!181 = !DILocation(line: 145, column: 60, scope: !178)
!182 = !DILocation(line: 145, column: 17, scope: !174)
!183 = !DILocation(line: 148, column: 29, scope: !184)
!184 = distinct !DILexicalBlock(scope: !178, file: !3, line: 146, column: 13)
!185 = !DILocation(line: 148, column: 24, scope: !184)
!186 = !DILocation(line: 148, column: 22, scope: !184)
!187 = !DILocation(line: 149, column: 13, scope: !184)
!188 = !DILocation(line: 152, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !178, file: !3, line: 151, column: 13)
!190 = !DILocation(line: 155, column: 5, scope: !175)
!191 = !DILocation(line: 156, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !165, file: !3, line: 156, column: 8)
!193 = !DILocation(line: 156, column: 18, scope: !192)
!194 = !DILocation(line: 156, column: 8, scope: !165)
!195 = !DILocalVariable(name: "i", scope: !196, file: !3, line: 159, type: !8)
!196 = distinct !DILexicalBlock(scope: !197, file: !3, line: 158, column: 9)
!197 = distinct !DILexicalBlock(scope: !192, file: !3, line: 157, column: 5)
!198 = !DILocation(line: 159, column: 17, scope: !196)
!199 = !DILocalVariable(name: "buffer", scope: !196, file: !3, line: 160, type: !54)
!200 = !DILocation(line: 160, column: 17, scope: !196)
!201 = !DILocation(line: 162, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !196, file: !3, line: 162, column: 17)
!203 = !DILocation(line: 162, column: 22, scope: !202)
!204 = !DILocation(line: 162, column: 27, scope: !202)
!205 = !DILocation(line: 162, column: 30, scope: !202)
!206 = !DILocation(line: 162, column: 35, scope: !202)
!207 = !DILocation(line: 162, column: 17, scope: !196)
!208 = !DILocation(line: 164, column: 24, scope: !209)
!209 = distinct !DILexicalBlock(scope: !202, file: !3, line: 163, column: 13)
!210 = !DILocation(line: 164, column: 17, scope: !209)
!211 = !DILocation(line: 164, column: 30, scope: !209)
!212 = !DILocation(line: 166, column: 23, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !3, line: 166, column: 17)
!214 = !DILocation(line: 166, column: 21, scope: !213)
!215 = !DILocation(line: 166, column: 28, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !3, line: 166, column: 17)
!217 = !DILocation(line: 166, column: 30, scope: !216)
!218 = !DILocation(line: 166, column: 17, scope: !213)
!219 = !DILocation(line: 168, column: 41, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !3, line: 167, column: 17)
!221 = !DILocation(line: 168, column: 34, scope: !220)
!222 = !DILocation(line: 168, column: 21, scope: !220)
!223 = !DILocation(line: 169, column: 17, scope: !220)
!224 = !DILocation(line: 166, column: 37, scope: !216)
!225 = !DILocation(line: 166, column: 17, scope: !216)
!226 = distinct !{!226, !218, !227, !89}
!227 = !DILocation(line: 169, column: 17, scope: !213)
!228 = !DILocation(line: 170, column: 13, scope: !209)
!229 = !DILocation(line: 173, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !202, file: !3, line: 172, column: 13)
!231 = !DILocation(line: 176, column: 5, scope: !197)
!232 = !DILocation(line: 177, column: 1, scope: !165)
!233 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 180, type: !14, scopeLine: 181, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!234 = !DILocalVariable(name: "data", scope: !233, file: !3, line: 182, type: !8)
!235 = !DILocation(line: 182, column: 9, scope: !233)
!236 = !DILocation(line: 184, column: 10, scope: !233)
!237 = !DILocation(line: 185, column: 8, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !3, line: 185, column: 8)
!239 = !DILocation(line: 185, column: 18, scope: !238)
!240 = !DILocation(line: 185, column: 8, scope: !233)
!241 = !DILocation(line: 188, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !3, line: 186, column: 5)
!243 = !DILocation(line: 189, column: 5, scope: !242)
!244 = !DILocation(line: 194, column: 14, scope: !245)
!245 = distinct !DILexicalBlock(scope: !238, file: !3, line: 191, column: 5)
!246 = !DILocation(line: 196, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !233, file: !3, line: 196, column: 8)
!248 = !DILocation(line: 196, column: 18, scope: !247)
!249 = !DILocation(line: 196, column: 8, scope: !233)
!250 = !DILocalVariable(name: "i", scope: !251, file: !3, line: 199, type: !8)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 198, column: 9)
!252 = distinct !DILexicalBlock(scope: !247, file: !3, line: 197, column: 5)
!253 = !DILocation(line: 199, column: 17, scope: !251)
!254 = !DILocalVariable(name: "buffer", scope: !251, file: !3, line: 200, type: !54)
!255 = !DILocation(line: 200, column: 17, scope: !251)
!256 = !DILocation(line: 203, column: 17, scope: !257)
!257 = distinct !DILexicalBlock(scope: !251, file: !3, line: 203, column: 17)
!258 = !DILocation(line: 203, column: 22, scope: !257)
!259 = !DILocation(line: 203, column: 17, scope: !251)
!260 = !DILocation(line: 205, column: 24, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !3, line: 204, column: 13)
!262 = !DILocation(line: 205, column: 17, scope: !261)
!263 = !DILocation(line: 205, column: 30, scope: !261)
!264 = !DILocation(line: 207, column: 23, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !3, line: 207, column: 17)
!266 = !DILocation(line: 207, column: 21, scope: !265)
!267 = !DILocation(line: 207, column: 28, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !3, line: 207, column: 17)
!269 = !DILocation(line: 207, column: 30, scope: !268)
!270 = !DILocation(line: 207, column: 17, scope: !265)
!271 = !DILocation(line: 209, column: 41, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !3, line: 208, column: 17)
!273 = !DILocation(line: 209, column: 34, scope: !272)
!274 = !DILocation(line: 209, column: 21, scope: !272)
!275 = !DILocation(line: 210, column: 17, scope: !272)
!276 = !DILocation(line: 207, column: 37, scope: !268)
!277 = !DILocation(line: 207, column: 17, scope: !268)
!278 = distinct !{!278, !270, !279, !89}
!279 = !DILocation(line: 210, column: 17, scope: !265)
!280 = !DILocation(line: 211, column: 13, scope: !261)
!281 = !DILocation(line: 214, column: 17, scope: !282)
!282 = distinct !DILexicalBlock(scope: !257, file: !3, line: 213, column: 13)
!283 = !DILocation(line: 217, column: 5, scope: !252)
!284 = !DILocation(line: 218, column: 1, scope: !233)
!285 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 221, type: !14, scopeLine: 222, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!286 = !DILocalVariable(name: "data", scope: !285, file: !3, line: 223, type: !8)
!287 = !DILocation(line: 223, column: 9, scope: !285)
!288 = !DILocation(line: 225, column: 10, scope: !285)
!289 = !DILocation(line: 226, column: 8, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !3, line: 226, column: 8)
!291 = !DILocation(line: 226, column: 18, scope: !290)
!292 = !DILocation(line: 226, column: 8, scope: !285)
!293 = !DILocation(line: 230, column: 14, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !3, line: 227, column: 5)
!295 = !DILocation(line: 231, column: 5, scope: !294)
!296 = !DILocation(line: 232, column: 8, scope: !297)
!297 = distinct !DILexicalBlock(scope: !285, file: !3, line: 232, column: 8)
!298 = !DILocation(line: 232, column: 18, scope: !297)
!299 = !DILocation(line: 232, column: 8, scope: !285)
!300 = !DILocalVariable(name: "i", scope: !301, file: !3, line: 235, type: !8)
!301 = distinct !DILexicalBlock(scope: !302, file: !3, line: 234, column: 9)
!302 = distinct !DILexicalBlock(scope: !297, file: !3, line: 233, column: 5)
!303 = !DILocation(line: 235, column: 17, scope: !301)
!304 = !DILocalVariable(name: "buffer", scope: !301, file: !3, line: 236, type: !54)
!305 = !DILocation(line: 236, column: 17, scope: !301)
!306 = !DILocation(line: 239, column: 17, scope: !307)
!307 = distinct !DILexicalBlock(scope: !301, file: !3, line: 239, column: 17)
!308 = !DILocation(line: 239, column: 22, scope: !307)
!309 = !DILocation(line: 239, column: 17, scope: !301)
!310 = !DILocation(line: 241, column: 24, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !3, line: 240, column: 13)
!312 = !DILocation(line: 241, column: 17, scope: !311)
!313 = !DILocation(line: 241, column: 30, scope: !311)
!314 = !DILocation(line: 243, column: 23, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !3, line: 243, column: 17)
!316 = !DILocation(line: 243, column: 21, scope: !315)
!317 = !DILocation(line: 243, column: 28, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !3, line: 243, column: 17)
!319 = !DILocation(line: 243, column: 30, scope: !318)
!320 = !DILocation(line: 243, column: 17, scope: !315)
!321 = !DILocation(line: 245, column: 41, scope: !322)
!322 = distinct !DILexicalBlock(scope: !318, file: !3, line: 244, column: 17)
!323 = !DILocation(line: 245, column: 34, scope: !322)
!324 = !DILocation(line: 245, column: 21, scope: !322)
!325 = !DILocation(line: 246, column: 17, scope: !322)
!326 = !DILocation(line: 243, column: 37, scope: !318)
!327 = !DILocation(line: 243, column: 17, scope: !318)
!328 = distinct !{!328, !320, !329, !89}
!329 = !DILocation(line: 246, column: 17, scope: !315)
!330 = !DILocation(line: 247, column: 13, scope: !311)
!331 = !DILocation(line: 250, column: 17, scope: !332)
!332 = distinct !DILexicalBlock(scope: !307, file: !3, line: 249, column: 13)
!333 = !DILocation(line: 253, column: 5, scope: !302)
!334 = !DILocation(line: 254, column: 1, scope: !285)
!335 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07_good", scope: !3, file: !3, line: 256, type: !14, scopeLine: 257, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!336 = !DILocation(line: 258, column: 5, scope: !335)
!337 = !DILocation(line: 259, column: 5, scope: !335)
!338 = !DILocation(line: 260, column: 5, scope: !335)
!339 = !DILocation(line: 261, column: 5, scope: !335)
!340 = !DILocation(line: 262, column: 1, scope: !335)
