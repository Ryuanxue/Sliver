; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@staticTrue = dso_local global i32 1, align 4, !dbg !0
@staticFalse = dso_local global i32 0, align 4, !dbg !8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05_bad() #0 !dbg !15 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 -1, i32* %data, align 4, !dbg !20
  %0 = load i32, i32* @staticTrue, align 4, !dbg !21
  %tobool = icmp ne i32 %0, 0, !dbg !21
  br i1 %tobool, label %if.then, label %if.end4, !dbg !23

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !24, metadata !DIExpression()), !dbg !31
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !31
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !31
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !32
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !34
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !35
  %cmp = icmp ne i8* %call, null, !dbg !36
  br i1 %cmp, label %if.then1, label %if.else, !dbg !37

if.then1:                                         ; preds = %if.then
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !38
  %call3 = call i32 @atoi(i8* %arraydecay2) #5, !dbg !40
  store i32 %call3, i32* %data, align 4, !dbg !41
  br label %if.end, !dbg !42

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !43
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end4, !dbg !45

if.end4:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @staticTrue, align 4, !dbg !46
  %tobool5 = icmp ne i32 %3, 0, !dbg !46
  br i1 %tobool5, label %if.then6, label %if.end14, !dbg !48

if.then6:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !49, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !53, metadata !DIExpression()), !dbg !57
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !57
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !57
  %5 = load i32, i32* %data, align 4, !dbg !58
  %cmp7 = icmp sge i32 %5, 0, !dbg !60
  br i1 %cmp7, label %if.then8, label %if.else12, !dbg !61

if.then8:                                         ; preds = %if.then6
  %6 = load i32, i32* %data, align 4, !dbg !62
  %idxprom = sext i32 %6 to i64, !dbg !64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !64
  store i32 1, i32* %arrayidx, align 4, !dbg !65
  store i32 0, i32* %i, align 4, !dbg !66
  br label %for.cond, !dbg !68

for.cond:                                         ; preds = %for.inc, %if.then8
  %7 = load i32, i32* %i, align 4, !dbg !69
  %cmp9 = icmp slt i32 %7, 10, !dbg !71
  br i1 %cmp9, label %for.body, label %for.end, !dbg !72

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !73
  %idxprom10 = sext i32 %8 to i64, !dbg !75
  %arrayidx11 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom10, !dbg !75
  %9 = load i32, i32* %arrayidx11, align 4, !dbg !75
  call void @printIntLine(i32 %9), !dbg !76
  br label %for.inc, !dbg !77

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !78
  %inc = add nsw i32 %10, 1, !dbg !78
  store i32 %inc, i32* %i, align 4, !dbg !78
  br label %for.cond, !dbg !79, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  br label %if.end13, !dbg !83

if.else12:                                        ; preds = %if.then6
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !84
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %for.end
  br label %if.end14, !dbg !86

if.end14:                                         ; preds = %if.end13, %if.end4
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
  %0 = load i32, i32* @staticTrue, align 4, !dbg !92
  %tobool = icmp ne i32 %0, 0, !dbg !92
  br i1 %tobool, label %if.then, label %if.end4, !dbg !94

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !95, metadata !DIExpression()), !dbg !98
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !98
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !99
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !101
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !102
  %cmp = icmp ne i8* %call, null, !dbg !103
  br i1 %cmp, label %if.then1, label %if.else, !dbg !104

if.then1:                                         ; preds = %if.then
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !105
  %call3 = call i32 @atoi(i8* %arraydecay2) #5, !dbg !107
  store i32 %call3, i32* %data, align 4, !dbg !108
  br label %if.end, !dbg !109

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !110
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end4, !dbg !112

if.end4:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @staticFalse, align 4, !dbg !113
  %tobool5 = icmp ne i32 %3, 0, !dbg !113
  br i1 %tobool5, label %if.then6, label %if.else7, !dbg !115

if.then6:                                         ; preds = %if.end4
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !116
  br label %if.end16, !dbg !118

if.else7:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !119, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !123, metadata !DIExpression()), !dbg !124
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !124
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !124
  %5 = load i32, i32* %data, align 4, !dbg !125
  %cmp8 = icmp sge i32 %5, 0, !dbg !127
  br i1 %cmp8, label %land.lhs.true, label %if.else14, !dbg !128

land.lhs.true:                                    ; preds = %if.else7
  %6 = load i32, i32* %data, align 4, !dbg !129
  %cmp9 = icmp slt i32 %6, 10, !dbg !130
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !131

if.then10:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !132
  %idxprom = sext i32 %7 to i64, !dbg !134
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !134
  store i32 1, i32* %arrayidx, align 4, !dbg !135
  store i32 0, i32* %i, align 4, !dbg !136
  br label %for.cond, !dbg !138

for.cond:                                         ; preds = %for.inc, %if.then10
  %8 = load i32, i32* %i, align 4, !dbg !139
  %cmp11 = icmp slt i32 %8, 10, !dbg !141
  br i1 %cmp11, label %for.body, label %for.end, !dbg !142

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !143
  %idxprom12 = sext i32 %9 to i64, !dbg !145
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom12, !dbg !145
  %10 = load i32, i32* %arrayidx13, align 4, !dbg !145
  call void @printIntLine(i32 %10), !dbg !146
  br label %for.inc, !dbg !147

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !148
  %inc = add nsw i32 %11, 1, !dbg !148
  store i32 %inc, i32* %i, align 4, !dbg !148
  br label %for.cond, !dbg !149, !llvm.loop !150

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !152

if.else14:                                        ; preds = %land.lhs.true, %if.else7
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !153
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then6
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !156 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !157, metadata !DIExpression()), !dbg !158
  store i32 -1, i32* %data, align 4, !dbg !159
  %0 = load i32, i32* @staticTrue, align 4, !dbg !160
  %tobool = icmp ne i32 %0, 0, !dbg !160
  br i1 %tobool, label %if.then, label %if.end4, !dbg !162

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !163, metadata !DIExpression()), !dbg !166
  %1 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !166
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 14, i1 false), !dbg !166
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !167
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !169
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %2), !dbg !170
  %cmp = icmp ne i8* %call, null, !dbg !171
  br i1 %cmp, label %if.then1, label %if.else, !dbg !172

if.then1:                                         ; preds = %if.then
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !173
  %call3 = call i32 @atoi(i8* %arraydecay2) #5, !dbg !175
  store i32 %call3, i32* %data, align 4, !dbg !176
  br label %if.end, !dbg !177

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !178
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end4, !dbg !180

if.end4:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* @staticTrue, align 4, !dbg !181
  %tobool5 = icmp ne i32 %3, 0, !dbg !181
  br i1 %tobool5, label %if.then6, label %if.end15, !dbg !183

if.then6:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !184, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !188, metadata !DIExpression()), !dbg !189
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !189
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !189
  %5 = load i32, i32* %data, align 4, !dbg !190
  %cmp7 = icmp sge i32 %5, 0, !dbg !192
  br i1 %cmp7, label %land.lhs.true, label %if.else13, !dbg !193

land.lhs.true:                                    ; preds = %if.then6
  %6 = load i32, i32* %data, align 4, !dbg !194
  %cmp8 = icmp slt i32 %6, 10, !dbg !195
  br i1 %cmp8, label %if.then9, label %if.else13, !dbg !196

if.then9:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !197
  %idxprom = sext i32 %7 to i64, !dbg !199
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !199
  store i32 1, i32* %arrayidx, align 4, !dbg !200
  store i32 0, i32* %i, align 4, !dbg !201
  br label %for.cond, !dbg !203

for.cond:                                         ; preds = %for.inc, %if.then9
  %8 = load i32, i32* %i, align 4, !dbg !204
  %cmp10 = icmp slt i32 %8, 10, !dbg !206
  br i1 %cmp10, label %for.body, label %for.end, !dbg !207

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !208
  %idxprom11 = sext i32 %9 to i64, !dbg !210
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom11, !dbg !210
  %10 = load i32, i32* %arrayidx12, align 4, !dbg !210
  call void @printIntLine(i32 %10), !dbg !211
  br label %for.inc, !dbg !212

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !213
  %inc = add nsw i32 %11, 1, !dbg !213
  store i32 %inc, i32* %i, align 4, !dbg !213
  br label %for.cond, !dbg !214, !llvm.loop !215

for.end:                                          ; preds = %for.cond
  br label %if.end14, !dbg !217

if.else13:                                        ; preds = %land.lhs.true, %if.then6
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !218
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %for.end
  br label %if.end15, !dbg !220

if.end15:                                         ; preds = %if.end14, %if.end4
  ret void, !dbg !221
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !222 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !223, metadata !DIExpression()), !dbg !224
  store i32 -1, i32* %data, align 4, !dbg !225
  %0 = load i32, i32* @staticFalse, align 4, !dbg !226
  %tobool = icmp ne i32 %0, 0, !dbg !226
  br i1 %tobool, label %if.then, label %if.else, !dbg !228

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !229
  br label %if.end, !dbg !231

if.else:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !232
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @staticTrue, align 4, !dbg !234
  %tobool1 = icmp ne i32 %1, 0, !dbg !234
  br i1 %tobool1, label %if.then2, label %if.end9, !dbg !236

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !237, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !241, metadata !DIExpression()), !dbg !242
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !242
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !242
  %3 = load i32, i32* %data, align 4, !dbg !243
  %cmp = icmp sge i32 %3, 0, !dbg !245
  br i1 %cmp, label %if.then3, label %if.else7, !dbg !246

if.then3:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !247
  %idxprom = sext i32 %4 to i64, !dbg !249
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !249
  store i32 1, i32* %arrayidx, align 4, !dbg !250
  store i32 0, i32* %i, align 4, !dbg !251
  br label %for.cond, !dbg !253

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, i32* %i, align 4, !dbg !254
  %cmp4 = icmp slt i32 %5, 10, !dbg !256
  br i1 %cmp4, label %for.body, label %for.end, !dbg !257

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !258
  %idxprom5 = sext i32 %6 to i64, !dbg !260
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom5, !dbg !260
  %7 = load i32, i32* %arrayidx6, align 4, !dbg !260
  call void @printIntLine(i32 %7), !dbg !261
  br label %for.inc, !dbg !262

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !263
  %inc = add nsw i32 %8, 1, !dbg !263
  store i32 %inc, i32* %i, align 4, !dbg !263
  br label %for.cond, !dbg !264, !llvm.loop !265

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !267

if.else7:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !268
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %for.end
  br label %if.end9, !dbg !270

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !272 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !273, metadata !DIExpression()), !dbg !274
  store i32 -1, i32* %data, align 4, !dbg !275
  %0 = load i32, i32* @staticTrue, align 4, !dbg !276
  %tobool = icmp ne i32 %0, 0, !dbg !276
  br i1 %tobool, label %if.then, label %if.end, !dbg !278

if.then:                                          ; preds = %entry
  store i32 7, i32* %data, align 4, !dbg !279
  br label %if.end, !dbg !281

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @staticTrue, align 4, !dbg !282
  %tobool1 = icmp ne i32 %1, 0, !dbg !282
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !284

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !285, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !289, metadata !DIExpression()), !dbg !290
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !290
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !290
  %3 = load i32, i32* %data, align 4, !dbg !291
  %cmp = icmp sge i32 %3, 0, !dbg !293
  br i1 %cmp, label %if.then3, label %if.else, !dbg !294

if.then3:                                         ; preds = %if.then2
  %4 = load i32, i32* %data, align 4, !dbg !295
  %idxprom = sext i32 %4 to i64, !dbg !297
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !297
  store i32 1, i32* %arrayidx, align 4, !dbg !298
  store i32 0, i32* %i, align 4, !dbg !299
  br label %for.cond, !dbg !301

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, i32* %i, align 4, !dbg !302
  %cmp4 = icmp slt i32 %5, 10, !dbg !304
  br i1 %cmp4, label %for.body, label %for.end, !dbg !305

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !306
  %idxprom5 = sext i32 %6 to i64, !dbg !308
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom5, !dbg !308
  %7 = load i32, i32* %arrayidx6, align 4, !dbg !308
  call void @printIntLine(i32 %7), !dbg !309
  br label %for.inc, !dbg !310

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !311
  %inc = add nsw i32 %8, 1, !dbg !311
  store i32 %inc, i32* %i, align 4, !dbg !311
  br label %for.cond, !dbg !312, !llvm.loop !313

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !315

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !316
  br label %if.end7

if.end7:                                          ; preds = %if.else, %for.end
  br label %if.end8, !dbg !318

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05_good() #0 !dbg !320 {
entry:
  call void @goodB2G1(), !dbg !321
  call void @goodB2G2(), !dbg !322
  call void @goodG2B1(), !dbg !323
  call void @goodG2B2(), !dbg !324
  ret void, !dbg !325
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticTrue", scope: !2, file: !3, line: 26, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_568/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "staticFalse", scope: !2, file: !3, line: 27, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 12.0.0"}
!15 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05_bad", scope: !3, file: !3, line: 31, type: !16, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !DILocalVariable(name: "data", scope: !15, file: !3, line: 33, type: !10)
!19 = !DILocation(line: 33, column: 9, scope: !15)
!20 = !DILocation(line: 35, column: 10, scope: !15)
!21 = !DILocation(line: 36, column: 8, scope: !22)
!22 = distinct !DILexicalBlock(scope: !15, file: !3, line: 36, column: 8)
!23 = !DILocation(line: 36, column: 8, scope: !15)
!24 = !DILocalVariable(name: "inputBuffer", scope: !25, file: !3, line: 39, type: !27)
!25 = distinct !DILexicalBlock(scope: !26, file: !3, line: 38, column: 9)
!26 = distinct !DILexicalBlock(scope: !22, file: !3, line: 37, column: 5)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 112, elements: !29)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!30}
!30 = !DISubrange(count: 14)
!31 = !DILocation(line: 39, column: 18, scope: !25)
!32 = !DILocation(line: 41, column: 23, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !3, line: 41, column: 17)
!34 = !DILocation(line: 41, column: 53, scope: !33)
!35 = !DILocation(line: 41, column: 17, scope: !33)
!36 = !DILocation(line: 41, column: 60, scope: !33)
!37 = !DILocation(line: 41, column: 17, scope: !25)
!38 = !DILocation(line: 44, column: 29, scope: !39)
!39 = distinct !DILexicalBlock(scope: !33, file: !3, line: 42, column: 13)
!40 = !DILocation(line: 44, column: 24, scope: !39)
!41 = !DILocation(line: 44, column: 22, scope: !39)
!42 = !DILocation(line: 45, column: 13, scope: !39)
!43 = !DILocation(line: 48, column: 17, scope: !44)
!44 = distinct !DILexicalBlock(scope: !33, file: !3, line: 47, column: 13)
!45 = !DILocation(line: 51, column: 5, scope: !26)
!46 = !DILocation(line: 52, column: 8, scope: !47)
!47 = distinct !DILexicalBlock(scope: !15, file: !3, line: 52, column: 8)
!48 = !DILocation(line: 52, column: 8, scope: !15)
!49 = !DILocalVariable(name: "i", scope: !50, file: !3, line: 55, type: !10)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 54, column: 9)
!51 = distinct !DILexicalBlock(scope: !47, file: !3, line: 53, column: 5)
!52 = !DILocation(line: 55, column: 17, scope: !50)
!53 = !DILocalVariable(name: "buffer", scope: !50, file: !3, line: 56, type: !54)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 10)
!57 = !DILocation(line: 56, column: 17, scope: !50)
!58 = !DILocation(line: 59, column: 17, scope: !59)
!59 = distinct !DILexicalBlock(scope: !50, file: !3, line: 59, column: 17)
!60 = !DILocation(line: 59, column: 22, scope: !59)
!61 = !DILocation(line: 59, column: 17, scope: !50)
!62 = !DILocation(line: 61, column: 24, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !3, line: 60, column: 13)
!64 = !DILocation(line: 61, column: 17, scope: !63)
!65 = !DILocation(line: 61, column: 30, scope: !63)
!66 = !DILocation(line: 63, column: 23, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !3, line: 63, column: 17)
!68 = !DILocation(line: 63, column: 21, scope: !67)
!69 = !DILocation(line: 63, column: 28, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !3, line: 63, column: 17)
!71 = !DILocation(line: 63, column: 30, scope: !70)
!72 = !DILocation(line: 63, column: 17, scope: !67)
!73 = !DILocation(line: 65, column: 41, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !3, line: 64, column: 17)
!75 = !DILocation(line: 65, column: 34, scope: !74)
!76 = !DILocation(line: 65, column: 21, scope: !74)
!77 = !DILocation(line: 66, column: 17, scope: !74)
!78 = !DILocation(line: 63, column: 37, scope: !70)
!79 = !DILocation(line: 63, column: 17, scope: !70)
!80 = distinct !{!80, !72, !81, !82}
!81 = !DILocation(line: 66, column: 17, scope: !67)
!82 = !{!"llvm.loop.mustprogress"}
!83 = !DILocation(line: 67, column: 13, scope: !63)
!84 = !DILocation(line: 70, column: 17, scope: !85)
!85 = distinct !DILexicalBlock(scope: !59, file: !3, line: 69, column: 13)
!86 = !DILocation(line: 73, column: 5, scope: !51)
!87 = !DILocation(line: 74, column: 1, scope: !15)
!88 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 81, type: !16, scopeLine: 82, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!89 = !DILocalVariable(name: "data", scope: !88, file: !3, line: 83, type: !10)
!90 = !DILocation(line: 83, column: 9, scope: !88)
!91 = !DILocation(line: 85, column: 10, scope: !88)
!92 = !DILocation(line: 86, column: 8, scope: !93)
!93 = distinct !DILexicalBlock(scope: !88, file: !3, line: 86, column: 8)
!94 = !DILocation(line: 86, column: 8, scope: !88)
!95 = !DILocalVariable(name: "inputBuffer", scope: !96, file: !3, line: 89, type: !27)
!96 = distinct !DILexicalBlock(scope: !97, file: !3, line: 88, column: 9)
!97 = distinct !DILexicalBlock(scope: !93, file: !3, line: 87, column: 5)
!98 = !DILocation(line: 89, column: 18, scope: !96)
!99 = !DILocation(line: 91, column: 23, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !3, line: 91, column: 17)
!101 = !DILocation(line: 91, column: 53, scope: !100)
!102 = !DILocation(line: 91, column: 17, scope: !100)
!103 = !DILocation(line: 91, column: 60, scope: !100)
!104 = !DILocation(line: 91, column: 17, scope: !96)
!105 = !DILocation(line: 94, column: 29, scope: !106)
!106 = distinct !DILexicalBlock(scope: !100, file: !3, line: 92, column: 13)
!107 = !DILocation(line: 94, column: 24, scope: !106)
!108 = !DILocation(line: 94, column: 22, scope: !106)
!109 = !DILocation(line: 95, column: 13, scope: !106)
!110 = !DILocation(line: 98, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !100, file: !3, line: 97, column: 13)
!112 = !DILocation(line: 101, column: 5, scope: !97)
!113 = !DILocation(line: 102, column: 8, scope: !114)
!114 = distinct !DILexicalBlock(scope: !88, file: !3, line: 102, column: 8)
!115 = !DILocation(line: 102, column: 8, scope: !88)
!116 = !DILocation(line: 105, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !3, line: 103, column: 5)
!118 = !DILocation(line: 106, column: 5, scope: !117)
!119 = !DILocalVariable(name: "i", scope: !120, file: !3, line: 110, type: !10)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 109, column: 9)
!121 = distinct !DILexicalBlock(scope: !114, file: !3, line: 108, column: 5)
!122 = !DILocation(line: 110, column: 17, scope: !120)
!123 = !DILocalVariable(name: "buffer", scope: !120, file: !3, line: 111, type: !54)
!124 = !DILocation(line: 111, column: 17, scope: !120)
!125 = !DILocation(line: 113, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !120, file: !3, line: 113, column: 17)
!127 = !DILocation(line: 113, column: 22, scope: !126)
!128 = !DILocation(line: 113, column: 27, scope: !126)
!129 = !DILocation(line: 113, column: 30, scope: !126)
!130 = !DILocation(line: 113, column: 35, scope: !126)
!131 = !DILocation(line: 113, column: 17, scope: !120)
!132 = !DILocation(line: 115, column: 24, scope: !133)
!133 = distinct !DILexicalBlock(scope: !126, file: !3, line: 114, column: 13)
!134 = !DILocation(line: 115, column: 17, scope: !133)
!135 = !DILocation(line: 115, column: 30, scope: !133)
!136 = !DILocation(line: 117, column: 23, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !3, line: 117, column: 17)
!138 = !DILocation(line: 117, column: 21, scope: !137)
!139 = !DILocation(line: 117, column: 28, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !3, line: 117, column: 17)
!141 = !DILocation(line: 117, column: 30, scope: !140)
!142 = !DILocation(line: 117, column: 17, scope: !137)
!143 = !DILocation(line: 119, column: 41, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !3, line: 118, column: 17)
!145 = !DILocation(line: 119, column: 34, scope: !144)
!146 = !DILocation(line: 119, column: 21, scope: !144)
!147 = !DILocation(line: 120, column: 17, scope: !144)
!148 = !DILocation(line: 117, column: 37, scope: !140)
!149 = !DILocation(line: 117, column: 17, scope: !140)
!150 = distinct !{!150, !142, !151, !82}
!151 = !DILocation(line: 120, column: 17, scope: !137)
!152 = !DILocation(line: 121, column: 13, scope: !133)
!153 = !DILocation(line: 124, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !126, file: !3, line: 123, column: 13)
!155 = !DILocation(line: 128, column: 1, scope: !88)
!156 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 131, type: !16, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!157 = !DILocalVariable(name: "data", scope: !156, file: !3, line: 133, type: !10)
!158 = !DILocation(line: 133, column: 9, scope: !156)
!159 = !DILocation(line: 135, column: 10, scope: !156)
!160 = !DILocation(line: 136, column: 8, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !3, line: 136, column: 8)
!162 = !DILocation(line: 136, column: 8, scope: !156)
!163 = !DILocalVariable(name: "inputBuffer", scope: !164, file: !3, line: 139, type: !27)
!164 = distinct !DILexicalBlock(scope: !165, file: !3, line: 138, column: 9)
!165 = distinct !DILexicalBlock(scope: !161, file: !3, line: 137, column: 5)
!166 = !DILocation(line: 139, column: 18, scope: !164)
!167 = !DILocation(line: 141, column: 23, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !3, line: 141, column: 17)
!169 = !DILocation(line: 141, column: 53, scope: !168)
!170 = !DILocation(line: 141, column: 17, scope: !168)
!171 = !DILocation(line: 141, column: 60, scope: !168)
!172 = !DILocation(line: 141, column: 17, scope: !164)
!173 = !DILocation(line: 144, column: 29, scope: !174)
!174 = distinct !DILexicalBlock(scope: !168, file: !3, line: 142, column: 13)
!175 = !DILocation(line: 144, column: 24, scope: !174)
!176 = !DILocation(line: 144, column: 22, scope: !174)
!177 = !DILocation(line: 145, column: 13, scope: !174)
!178 = !DILocation(line: 148, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !168, file: !3, line: 147, column: 13)
!180 = !DILocation(line: 151, column: 5, scope: !165)
!181 = !DILocation(line: 152, column: 8, scope: !182)
!182 = distinct !DILexicalBlock(scope: !156, file: !3, line: 152, column: 8)
!183 = !DILocation(line: 152, column: 8, scope: !156)
!184 = !DILocalVariable(name: "i", scope: !185, file: !3, line: 155, type: !10)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 154, column: 9)
!186 = distinct !DILexicalBlock(scope: !182, file: !3, line: 153, column: 5)
!187 = !DILocation(line: 155, column: 17, scope: !185)
!188 = !DILocalVariable(name: "buffer", scope: !185, file: !3, line: 156, type: !54)
!189 = !DILocation(line: 156, column: 17, scope: !185)
!190 = !DILocation(line: 158, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !185, file: !3, line: 158, column: 17)
!192 = !DILocation(line: 158, column: 22, scope: !191)
!193 = !DILocation(line: 158, column: 27, scope: !191)
!194 = !DILocation(line: 158, column: 30, scope: !191)
!195 = !DILocation(line: 158, column: 35, scope: !191)
!196 = !DILocation(line: 158, column: 17, scope: !185)
!197 = !DILocation(line: 160, column: 24, scope: !198)
!198 = distinct !DILexicalBlock(scope: !191, file: !3, line: 159, column: 13)
!199 = !DILocation(line: 160, column: 17, scope: !198)
!200 = !DILocation(line: 160, column: 30, scope: !198)
!201 = !DILocation(line: 162, column: 23, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !3, line: 162, column: 17)
!203 = !DILocation(line: 162, column: 21, scope: !202)
!204 = !DILocation(line: 162, column: 28, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !3, line: 162, column: 17)
!206 = !DILocation(line: 162, column: 30, scope: !205)
!207 = !DILocation(line: 162, column: 17, scope: !202)
!208 = !DILocation(line: 164, column: 41, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !3, line: 163, column: 17)
!210 = !DILocation(line: 164, column: 34, scope: !209)
!211 = !DILocation(line: 164, column: 21, scope: !209)
!212 = !DILocation(line: 165, column: 17, scope: !209)
!213 = !DILocation(line: 162, column: 37, scope: !205)
!214 = !DILocation(line: 162, column: 17, scope: !205)
!215 = distinct !{!215, !207, !216, !82}
!216 = !DILocation(line: 165, column: 17, scope: !202)
!217 = !DILocation(line: 166, column: 13, scope: !198)
!218 = !DILocation(line: 169, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !191, file: !3, line: 168, column: 13)
!220 = !DILocation(line: 172, column: 5, scope: !186)
!221 = !DILocation(line: 173, column: 1, scope: !156)
!222 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 176, type: !16, scopeLine: 177, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!223 = !DILocalVariable(name: "data", scope: !222, file: !3, line: 178, type: !10)
!224 = !DILocation(line: 178, column: 9, scope: !222)
!225 = !DILocation(line: 180, column: 10, scope: !222)
!226 = !DILocation(line: 181, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !3, line: 181, column: 8)
!228 = !DILocation(line: 181, column: 8, scope: !222)
!229 = !DILocation(line: 184, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !3, line: 182, column: 5)
!231 = !DILocation(line: 185, column: 5, scope: !230)
!232 = !DILocation(line: 190, column: 14, scope: !233)
!233 = distinct !DILexicalBlock(scope: !227, file: !3, line: 187, column: 5)
!234 = !DILocation(line: 192, column: 8, scope: !235)
!235 = distinct !DILexicalBlock(scope: !222, file: !3, line: 192, column: 8)
!236 = !DILocation(line: 192, column: 8, scope: !222)
!237 = !DILocalVariable(name: "i", scope: !238, file: !3, line: 195, type: !10)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 194, column: 9)
!239 = distinct !DILexicalBlock(scope: !235, file: !3, line: 193, column: 5)
!240 = !DILocation(line: 195, column: 17, scope: !238)
!241 = !DILocalVariable(name: "buffer", scope: !238, file: !3, line: 196, type: !54)
!242 = !DILocation(line: 196, column: 17, scope: !238)
!243 = !DILocation(line: 199, column: 17, scope: !244)
!244 = distinct !DILexicalBlock(scope: !238, file: !3, line: 199, column: 17)
!245 = !DILocation(line: 199, column: 22, scope: !244)
!246 = !DILocation(line: 199, column: 17, scope: !238)
!247 = !DILocation(line: 201, column: 24, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !3, line: 200, column: 13)
!249 = !DILocation(line: 201, column: 17, scope: !248)
!250 = !DILocation(line: 201, column: 30, scope: !248)
!251 = !DILocation(line: 203, column: 23, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !3, line: 203, column: 17)
!253 = !DILocation(line: 203, column: 21, scope: !252)
!254 = !DILocation(line: 203, column: 28, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !3, line: 203, column: 17)
!256 = !DILocation(line: 203, column: 30, scope: !255)
!257 = !DILocation(line: 203, column: 17, scope: !252)
!258 = !DILocation(line: 205, column: 41, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !3, line: 204, column: 17)
!260 = !DILocation(line: 205, column: 34, scope: !259)
!261 = !DILocation(line: 205, column: 21, scope: !259)
!262 = !DILocation(line: 206, column: 17, scope: !259)
!263 = !DILocation(line: 203, column: 37, scope: !255)
!264 = !DILocation(line: 203, column: 17, scope: !255)
!265 = distinct !{!265, !257, !266, !82}
!266 = !DILocation(line: 206, column: 17, scope: !252)
!267 = !DILocation(line: 207, column: 13, scope: !248)
!268 = !DILocation(line: 210, column: 17, scope: !269)
!269 = distinct !DILexicalBlock(scope: !244, file: !3, line: 209, column: 13)
!270 = !DILocation(line: 213, column: 5, scope: !239)
!271 = !DILocation(line: 214, column: 1, scope: !222)
!272 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 217, type: !16, scopeLine: 218, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!273 = !DILocalVariable(name: "data", scope: !272, file: !3, line: 219, type: !10)
!274 = !DILocation(line: 219, column: 9, scope: !272)
!275 = !DILocation(line: 221, column: 10, scope: !272)
!276 = !DILocation(line: 222, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !3, line: 222, column: 8)
!278 = !DILocation(line: 222, column: 8, scope: !272)
!279 = !DILocation(line: 226, column: 14, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !3, line: 223, column: 5)
!281 = !DILocation(line: 227, column: 5, scope: !280)
!282 = !DILocation(line: 228, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !272, file: !3, line: 228, column: 8)
!284 = !DILocation(line: 228, column: 8, scope: !272)
!285 = !DILocalVariable(name: "i", scope: !286, file: !3, line: 231, type: !10)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 230, column: 9)
!287 = distinct !DILexicalBlock(scope: !283, file: !3, line: 229, column: 5)
!288 = !DILocation(line: 231, column: 17, scope: !286)
!289 = !DILocalVariable(name: "buffer", scope: !286, file: !3, line: 232, type: !54)
!290 = !DILocation(line: 232, column: 17, scope: !286)
!291 = !DILocation(line: 235, column: 17, scope: !292)
!292 = distinct !DILexicalBlock(scope: !286, file: !3, line: 235, column: 17)
!293 = !DILocation(line: 235, column: 22, scope: !292)
!294 = !DILocation(line: 235, column: 17, scope: !286)
!295 = !DILocation(line: 237, column: 24, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !3, line: 236, column: 13)
!297 = !DILocation(line: 237, column: 17, scope: !296)
!298 = !DILocation(line: 237, column: 30, scope: !296)
!299 = !DILocation(line: 239, column: 23, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !3, line: 239, column: 17)
!301 = !DILocation(line: 239, column: 21, scope: !300)
!302 = !DILocation(line: 239, column: 28, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !3, line: 239, column: 17)
!304 = !DILocation(line: 239, column: 30, scope: !303)
!305 = !DILocation(line: 239, column: 17, scope: !300)
!306 = !DILocation(line: 241, column: 41, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !3, line: 240, column: 17)
!308 = !DILocation(line: 241, column: 34, scope: !307)
!309 = !DILocation(line: 241, column: 21, scope: !307)
!310 = !DILocation(line: 242, column: 17, scope: !307)
!311 = !DILocation(line: 239, column: 37, scope: !303)
!312 = !DILocation(line: 239, column: 17, scope: !303)
!313 = distinct !{!313, !305, !314, !82}
!314 = !DILocation(line: 242, column: 17, scope: !300)
!315 = !DILocation(line: 243, column: 13, scope: !296)
!316 = !DILocation(line: 246, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !292, file: !3, line: 245, column: 13)
!318 = !DILocation(line: 249, column: 5, scope: !287)
!319 = !DILocation(line: 250, column: 1, scope: !272)
!320 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05_good", scope: !3, file: !3, line: 252, type: !16, scopeLine: 253, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!321 = !DILocation(line: 254, column: 5, scope: !320)
!322 = !DILocation(line: 255, column: 5, scope: !320)
!323 = !DILocation(line: 256, column: 5, scope: !320)
!324 = !DILocation(line: 257, column: 5, scope: !320)
!325 = !DILocation(line: 258, column: 1, scope: !320)
