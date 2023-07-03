; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_13.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@GLOBAL_CONST_FIVE = external dso_local global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_13_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !22
  store i8* %arraydecay, i8** %data, align 8, !dbg !23
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !24
  %cmp = icmp eq i32 %1, 5, !dbg !26
  br i1 %cmp, label %if.then, label %if.end14, !dbg !27

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !28, metadata !DIExpression()), !dbg !34
  %2 = load i8*, i8** %data, align 8, !dbg !35
  %call = call i64 @strlen(i8* %2) #6, !dbg !36
  store i64 %call, i64* %dataLen, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !37, metadata !DIExpression()), !dbg !94
  %3 = load i64, i64* %dataLen, align 8, !dbg !95
  %sub = sub i64 100, %3, !dbg !97
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !98
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !99

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !100
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !102
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !103
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !105
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !106

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !107
  %6 = load i64, i64* %dataLen, align 8, !dbg !110
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !111
  %7 = load i64, i64* %dataLen, align 8, !dbg !112
  %sub6 = sub i64 100, %7, !dbg !113
  %conv = trunc i64 %sub6 to i32, !dbg !114
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !115
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !116
  %cmp8 = icmp eq i8* %call7, null, !dbg !117
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !118

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !119
  %9 = load i8*, i8** %data, align 8, !dbg !121
  %10 = load i64, i64* %dataLen, align 8, !dbg !122
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !121
  store i8 0, i8* %arrayidx, align 1, !dbg !123
  br label %if.end, !dbg !124

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !125
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !126
  br label %if.end12, !dbg !127

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !128

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !129

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !130
  %cmp15 = icmp eq i32 %12, 5, !dbg !132
  br i1 %cmp15, label %if.then17, label %if.end26, !dbg !133

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !134, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %n, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !140, metadata !DIExpression()), !dbg !141
  %13 = load i8*, i8** %data, align 8, !dbg !142
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !144
  %cmp19 = icmp eq i32 %call18, 1, !dbg !145
  br i1 %cmp19, label %if.then21, label %if.end25, !dbg !146

if.then21:                                        ; preds = %if.then17
  store i32 0, i32* %intVariable, align 4, !dbg !147
  store i32 0, i32* %i, align 4, !dbg !149
  br label %for.cond, !dbg !151

for.cond:                                         ; preds = %for.inc, %if.then21
  %14 = load i32, i32* %i, align 4, !dbg !152
  %15 = load i32, i32* %n, align 4, !dbg !154
  %cmp22 = icmp slt i32 %14, %15, !dbg !155
  br i1 %cmp22, label %for.body, label %for.end, !dbg !156

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !157
  %inc = add nsw i32 %16, 1, !dbg !157
  store i32 %inc, i32* %intVariable, align 4, !dbg !157
  br label %for.inc, !dbg !159

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !160
  %inc24 = add nsw i32 %17, 1, !dbg !160
  store i32 %inc24, i32* %i, align 4, !dbg !160
  br label %for.cond, !dbg !161, !llvm.loop !162

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !165
  call void @printIntLine(i32 %18), !dbg !166
  br label %if.end25, !dbg !167

if.end25:                                         ; preds = %for.end, %if.then17
  br label %if.end26, !dbg !168

if.end26:                                         ; preds = %if.end25, %if.end14
  ret void, !dbg !169
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !170 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !174
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !174
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !175
  store i8* %arraydecay, i8** %data, align 8, !dbg !176
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !177
  %cmp = icmp eq i32 %1, 5, !dbg !179
  br i1 %cmp, label %if.then, label %if.end14, !dbg !180

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !181, metadata !DIExpression()), !dbg !184
  %2 = load i8*, i8** %data, align 8, !dbg !185
  %call = call i64 @strlen(i8* %2) #6, !dbg !186
  store i64 %call, i64* %dataLen, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !187, metadata !DIExpression()), !dbg !188
  %3 = load i64, i64* %dataLen, align 8, !dbg !189
  %sub = sub i64 100, %3, !dbg !191
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !192
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !193

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !194
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !196
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !197
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !199
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !200

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !201
  %6 = load i64, i64* %dataLen, align 8, !dbg !204
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !205
  %7 = load i64, i64* %dataLen, align 8, !dbg !206
  %sub6 = sub i64 100, %7, !dbg !207
  %conv = trunc i64 %sub6 to i32, !dbg !208
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !209
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !210
  %cmp8 = icmp eq i8* %call7, null, !dbg !211
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !212

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !213
  %9 = load i8*, i8** %data, align 8, !dbg !215
  %10 = load i64, i64* %dataLen, align 8, !dbg !216
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !215
  store i8 0, i8* %arrayidx, align 1, !dbg !217
  br label %if.end, !dbg !218

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !219
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !220
  br label %if.end12, !dbg !221

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !222

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !223

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !224
  %cmp15 = icmp ne i32 %12, 5, !dbg !226
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !227

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !228
  br label %if.end30, !dbg !230

if.else:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !231, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %n, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !237, metadata !DIExpression()), !dbg !238
  %13 = load i8*, i8** %data, align 8, !dbg !239
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !241
  %cmp19 = icmp eq i32 %call18, 1, !dbg !242
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !243

if.then21:                                        ; preds = %if.else
  %14 = load i32, i32* %n, align 4, !dbg !244
  %cmp22 = icmp slt i32 %14, 10000, !dbg !247
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !248

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !249
  store i32 0, i32* %i, align 4, !dbg !251
  br label %for.cond, !dbg !253

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %i, align 4, !dbg !254
  %16 = load i32, i32* %n, align 4, !dbg !256
  %cmp25 = icmp slt i32 %15, %16, !dbg !257
  br i1 %cmp25, label %for.body, label %for.end, !dbg !258

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !259
  %inc = add nsw i32 %17, 1, !dbg !259
  store i32 %inc, i32* %intVariable, align 4, !dbg !259
  br label %for.inc, !dbg !261

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !262
  %inc27 = add nsw i32 %18, 1, !dbg !262
  store i32 %inc27, i32* %i, align 4, !dbg !262
  br label %for.cond, !dbg !263, !llvm.loop !264

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !266
  call void @printIntLine(i32 %19), !dbg !267
  br label %if.end28, !dbg !268

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !269

if.end29:                                         ; preds = %if.end28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then17
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !271 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !274, metadata !DIExpression()), !dbg !275
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !275
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !275
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !276
  store i8* %arraydecay, i8** %data, align 8, !dbg !277
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !278
  %cmp = icmp eq i32 %1, 5, !dbg !280
  br i1 %cmp, label %if.then, label %if.end14, !dbg !281

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !282, metadata !DIExpression()), !dbg !285
  %2 = load i8*, i8** %data, align 8, !dbg !286
  %call = call i64 @strlen(i8* %2) #6, !dbg !287
  store i64 %call, i64* %dataLen, align 8, !dbg !285
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !288, metadata !DIExpression()), !dbg !289
  %3 = load i64, i64* %dataLen, align 8, !dbg !290
  %sub = sub i64 100, %3, !dbg !292
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !293
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !294

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !295
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !297
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !298
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !300
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !301

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !302
  %6 = load i64, i64* %dataLen, align 8, !dbg !305
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !306
  %7 = load i64, i64* %dataLen, align 8, !dbg !307
  %sub6 = sub i64 100, %7, !dbg !308
  %conv = trunc i64 %sub6 to i32, !dbg !309
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !310
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !311
  %cmp8 = icmp eq i8* %call7, null, !dbg !312
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !313

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !314
  %9 = load i8*, i8** %data, align 8, !dbg !316
  %10 = load i64, i64* %dataLen, align 8, !dbg !317
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !316
  store i8 0, i8* %arrayidx, align 1, !dbg !318
  br label %if.end, !dbg !319

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !320
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !321
  br label %if.end12, !dbg !322

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !323

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !324

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !325
  %cmp15 = icmp eq i32 %12, 5, !dbg !327
  br i1 %cmp15, label %if.then17, label %if.end30, !dbg !328

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !329, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %n, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !335, metadata !DIExpression()), !dbg !336
  %13 = load i8*, i8** %data, align 8, !dbg !337
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !339
  %cmp19 = icmp eq i32 %call18, 1, !dbg !340
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !341

if.then21:                                        ; preds = %if.then17
  %14 = load i32, i32* %n, align 4, !dbg !342
  %cmp22 = icmp slt i32 %14, 10000, !dbg !345
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !346

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !347
  store i32 0, i32* %i, align 4, !dbg !349
  br label %for.cond, !dbg !351

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %i, align 4, !dbg !352
  %16 = load i32, i32* %n, align 4, !dbg !354
  %cmp25 = icmp slt i32 %15, %16, !dbg !355
  br i1 %cmp25, label %for.body, label %for.end, !dbg !356

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !357
  %inc = add nsw i32 %17, 1, !dbg !357
  store i32 %inc, i32* %intVariable, align 4, !dbg !357
  br label %for.inc, !dbg !359

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !360
  %inc27 = add nsw i32 %18, 1, !dbg !360
  store i32 %inc27, i32* %i, align 4, !dbg !360
  br label %for.cond, !dbg !361, !llvm.loop !362

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !364
  call void @printIntLine(i32 %19), !dbg !365
  br label %if.end28, !dbg !366

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !367

if.end29:                                         ; preds = %if.end28, %if.then17
  br label %if.end30, !dbg !368

if.end30:                                         ; preds = %if.end29, %if.end14
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !370 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !373, metadata !DIExpression()), !dbg !374
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !374
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !374
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !375
  store i8* %arraydecay, i8** %data, align 8, !dbg !376
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !377
  %cmp = icmp ne i32 %1, 5, !dbg !379
  br i1 %cmp, label %if.then, label %if.else, !dbg !380

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !381
  br label %if.end, !dbg !383

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !384
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !386
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !387
  %cmp1 = icmp eq i32 %3, 5, !dbg !389
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !390

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !391, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata i32* %n, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !397, metadata !DIExpression()), !dbg !398
  %4 = load i8*, i8** %data, align 8, !dbg !399
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !401
  %cmp4 = icmp eq i32 %call3, 1, !dbg !402
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !403

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !404
  store i32 0, i32* %i, align 4, !dbg !406
  br label %for.cond, !dbg !408

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !409
  %6 = load i32, i32* %n, align 4, !dbg !411
  %cmp6 = icmp slt i32 %5, %6, !dbg !412
  br i1 %cmp6, label %for.body, label %for.end, !dbg !413

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !414
  %inc = add nsw i32 %7, 1, !dbg !414
  store i32 %inc, i32* %intVariable, align 4, !dbg !414
  br label %for.inc, !dbg !416

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !417
  %inc7 = add nsw i32 %8, 1, !dbg !417
  store i32 %inc7, i32* %i, align 4, !dbg !417
  br label %for.cond, !dbg !418, !llvm.loop !419

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !421
  call void @printIntLine(i32 %9), !dbg !422
  br label %if.end8, !dbg !423

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !424

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !425
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !426 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !427, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !429, metadata !DIExpression()), !dbg !430
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !430
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !430
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !431
  store i8* %arraydecay, i8** %data, align 8, !dbg !432
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !433
  %cmp = icmp eq i32 %1, 5, !dbg !435
  br i1 %cmp, label %if.then, label %if.end, !dbg !436

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !437
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !439
  br label %if.end, !dbg !440

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !441
  %cmp1 = icmp eq i32 %3, 5, !dbg !443
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !444

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !445, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata i32* %n, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !451, metadata !DIExpression()), !dbg !452
  %4 = load i8*, i8** %data, align 8, !dbg !453
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !455
  %cmp4 = icmp eq i32 %call3, 1, !dbg !456
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !457

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !458
  store i32 0, i32* %i, align 4, !dbg !460
  br label %for.cond, !dbg !462

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !463
  %6 = load i32, i32* %n, align 4, !dbg !465
  %cmp6 = icmp slt i32 %5, %6, !dbg !466
  br i1 %cmp6, label %for.body, label %for.end, !dbg !467

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !468
  %inc = add nsw i32 %7, 1, !dbg !468
  store i32 %inc, i32* %intVariable, align 4, !dbg !468
  br label %for.inc, !dbg !470

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !471
  %inc7 = add nsw i32 %8, 1, !dbg !471
  store i32 %inc7, i32* %i, align 4, !dbg !471
  br label %for.cond, !dbg !472, !llvm.loop !473

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !475
  call void @printIntLine(i32 %9), !dbg !476
  br label %if.end8, !dbg !477

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !478

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_13_good() #0 !dbg !480 {
entry:
  call void @goodB2G1(), !dbg !481
  call void @goodB2G2(), !dbg !482
  call void @goodG2B1(), !dbg !483
  call void @goodG2B2(), !dbg !484
  ret void, !dbg !485
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_13.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_086/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_13_bad", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 37, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 37, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 38, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 38, column: 10, scope: !10)
!22 = !DILocation(line: 39, column: 12, scope: !10)
!23 = !DILocation(line: 39, column: 10, scope: !10)
!24 = !DILocation(line: 40, column: 8, scope: !25)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 40, column: 8)
!26 = !DILocation(line: 40, column: 25, scope: !25)
!27 = !DILocation(line: 40, column: 8, scope: !10)
!28 = !DILocalVariable(name: "dataLen", scope: !29, file: !1, line: 44, type: !31)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 42, column: 9)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 41, column: 5)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 44, column: 20, scope: !29)
!35 = !DILocation(line: 44, column: 37, scope: !29)
!36 = !DILocation(line: 44, column: 30, scope: !29)
!37 = !DILocalVariable(name: "pFile", scope: !29, file: !1, line: 45, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !40, line: 7, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !59, !61, !62, !63, !67, !69, !71, !75, !78, !80, !83, !86, !87, !88, !89, !90}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !41, file: !42, line: 51, baseType: !5, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !41, file: !42, line: 54, baseType: !14, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !41, file: !42, line: 55, baseType: !14, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !41, file: !42, line: 56, baseType: !14, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !41, file: !42, line: 57, baseType: !14, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !41, file: !42, line: 58, baseType: !14, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !41, file: !42, line: 59, baseType: !14, size: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !41, file: !42, line: 60, baseType: !14, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !41, file: !42, line: 61, baseType: !14, size: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !41, file: !42, line: 64, baseType: !14, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !41, file: !42, line: 65, baseType: !14, size: 64, offset: 640)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !41, file: !42, line: 66, baseType: !14, size: 64, offset: 704)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !41, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !42, line: 36, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !41, file: !42, line: 70, baseType: !60, size: 64, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !41, file: !42, line: 72, baseType: !5, size: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !41, file: !42, line: 73, baseType: !5, size: 32, offset: 928)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !41, file: !42, line: 74, baseType: !64, size: 64, offset: 960)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !65, line: 152, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!66 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !41, file: !42, line: 77, baseType: !68, size: 16, offset: 1024)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !41, file: !42, line: 78, baseType: !70, size: 8, offset: 1040)
!70 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !41, file: !42, line: 79, baseType: !72, size: 8, offset: 1048)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !41, file: !42, line: 81, baseType: !76, size: 64, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !42, line: 43, baseType: null)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !41, file: !42, line: 89, baseType: !79, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !65, line: 153, baseType: !66)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !41, file: !42, line: 91, baseType: !81, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !42, line: 37, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !41, file: !42, line: 92, baseType: !84, size: 64, offset: 1280)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !42, line: 38, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !41, file: !42, line: 93, baseType: !60, size: 64, offset: 1344)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !41, file: !42, line: 94, baseType: !4, size: 64, offset: 1408)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !41, file: !42, line: 95, baseType: !31, size: 64, offset: 1472)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !41, file: !42, line: 96, baseType: !5, size: 32, offset: 1536)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !41, file: !42, line: 98, baseType: !91, size: 160, offset: 1568)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 20)
!94 = !DILocation(line: 45, column: 20, scope: !29)
!95 = !DILocation(line: 47, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !29, file: !1, line: 47, column: 17)
!97 = !DILocation(line: 47, column: 20, scope: !96)
!98 = !DILocation(line: 47, column: 29, scope: !96)
!99 = !DILocation(line: 47, column: 17, scope: !29)
!100 = !DILocation(line: 49, column: 25, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 48, column: 13)
!102 = !DILocation(line: 49, column: 23, scope: !101)
!103 = !DILocation(line: 50, column: 21, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 50, column: 21)
!105 = !DILocation(line: 50, column: 27, scope: !104)
!106 = !DILocation(line: 50, column: 21, scope: !101)
!107 = !DILocation(line: 53, column: 31, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 53, column: 25)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 51, column: 17)
!110 = !DILocation(line: 53, column: 36, scope: !108)
!111 = !DILocation(line: 53, column: 35, scope: !108)
!112 = !DILocation(line: 53, column: 55, scope: !108)
!113 = !DILocation(line: 53, column: 54, scope: !108)
!114 = !DILocation(line: 53, column: 45, scope: !108)
!115 = !DILocation(line: 53, column: 65, scope: !108)
!116 = !DILocation(line: 53, column: 25, scope: !108)
!117 = !DILocation(line: 53, column: 72, scope: !108)
!118 = !DILocation(line: 53, column: 25, scope: !109)
!119 = !DILocation(line: 55, column: 25, scope: !120)
!120 = distinct !DILexicalBlock(scope: !108, file: !1, line: 54, column: 21)
!121 = !DILocation(line: 57, column: 25, scope: !120)
!122 = !DILocation(line: 57, column: 30, scope: !120)
!123 = !DILocation(line: 57, column: 39, scope: !120)
!124 = !DILocation(line: 58, column: 21, scope: !120)
!125 = !DILocation(line: 59, column: 28, scope: !109)
!126 = !DILocation(line: 59, column: 21, scope: !109)
!127 = !DILocation(line: 60, column: 17, scope: !109)
!128 = !DILocation(line: 61, column: 13, scope: !101)
!129 = !DILocation(line: 63, column: 5, scope: !30)
!130 = !DILocation(line: 64, column: 8, scope: !131)
!131 = distinct !DILexicalBlock(scope: !10, file: !1, line: 64, column: 8)
!132 = !DILocation(line: 64, column: 25, scope: !131)
!133 = !DILocation(line: 64, column: 8, scope: !10)
!134 = !DILocalVariable(name: "i", scope: !135, file: !1, line: 67, type: !5)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 66, column: 9)
!136 = distinct !DILexicalBlock(scope: !131, file: !1, line: 65, column: 5)
!137 = !DILocation(line: 67, column: 17, scope: !135)
!138 = !DILocalVariable(name: "n", scope: !135, file: !1, line: 67, type: !5)
!139 = !DILocation(line: 67, column: 20, scope: !135)
!140 = !DILocalVariable(name: "intVariable", scope: !135, file: !1, line: 67, type: !5)
!141 = !DILocation(line: 67, column: 23, scope: !135)
!142 = !DILocation(line: 68, column: 24, scope: !143)
!143 = distinct !DILexicalBlock(scope: !135, file: !1, line: 68, column: 17)
!144 = !DILocation(line: 68, column: 17, scope: !143)
!145 = !DILocation(line: 68, column: 40, scope: !143)
!146 = !DILocation(line: 68, column: 17, scope: !135)
!147 = !DILocation(line: 71, column: 29, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !1, line: 69, column: 13)
!149 = !DILocation(line: 72, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !148, file: !1, line: 72, column: 17)
!151 = !DILocation(line: 72, column: 22, scope: !150)
!152 = !DILocation(line: 72, column: 29, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !1, line: 72, column: 17)
!154 = !DILocation(line: 72, column: 33, scope: !153)
!155 = !DILocation(line: 72, column: 31, scope: !153)
!156 = !DILocation(line: 72, column: 17, scope: !150)
!157 = !DILocation(line: 75, column: 32, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !1, line: 73, column: 17)
!159 = !DILocation(line: 76, column: 17, scope: !158)
!160 = !DILocation(line: 72, column: 37, scope: !153)
!161 = !DILocation(line: 72, column: 17, scope: !153)
!162 = distinct !{!162, !156, !163, !164}
!163 = !DILocation(line: 76, column: 17, scope: !150)
!164 = !{!"llvm.loop.mustprogress"}
!165 = !DILocation(line: 77, column: 30, scope: !148)
!166 = !DILocation(line: 77, column: 17, scope: !148)
!167 = !DILocation(line: 78, column: 13, scope: !148)
!168 = !DILocation(line: 80, column: 5, scope: !136)
!169 = !DILocation(line: 81, column: 1, scope: !10)
!170 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 88, type: !11, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!171 = !DILocalVariable(name: "data", scope: !170, file: !1, line: 90, type: !14)
!172 = !DILocation(line: 90, column: 12, scope: !170)
!173 = !DILocalVariable(name: "dataBuffer", scope: !170, file: !1, line: 91, type: !18)
!174 = !DILocation(line: 91, column: 10, scope: !170)
!175 = !DILocation(line: 92, column: 12, scope: !170)
!176 = !DILocation(line: 92, column: 10, scope: !170)
!177 = !DILocation(line: 93, column: 8, scope: !178)
!178 = distinct !DILexicalBlock(scope: !170, file: !1, line: 93, column: 8)
!179 = !DILocation(line: 93, column: 25, scope: !178)
!180 = !DILocation(line: 93, column: 8, scope: !170)
!181 = !DILocalVariable(name: "dataLen", scope: !182, file: !1, line: 97, type: !31)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 95, column: 9)
!183 = distinct !DILexicalBlock(scope: !178, file: !1, line: 94, column: 5)
!184 = !DILocation(line: 97, column: 20, scope: !182)
!185 = !DILocation(line: 97, column: 37, scope: !182)
!186 = !DILocation(line: 97, column: 30, scope: !182)
!187 = !DILocalVariable(name: "pFile", scope: !182, file: !1, line: 98, type: !38)
!188 = !DILocation(line: 98, column: 20, scope: !182)
!189 = !DILocation(line: 100, column: 21, scope: !190)
!190 = distinct !DILexicalBlock(scope: !182, file: !1, line: 100, column: 17)
!191 = !DILocation(line: 100, column: 20, scope: !190)
!192 = !DILocation(line: 100, column: 29, scope: !190)
!193 = !DILocation(line: 100, column: 17, scope: !182)
!194 = !DILocation(line: 102, column: 25, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !1, line: 101, column: 13)
!196 = !DILocation(line: 102, column: 23, scope: !195)
!197 = !DILocation(line: 103, column: 21, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !1, line: 103, column: 21)
!199 = !DILocation(line: 103, column: 27, scope: !198)
!200 = !DILocation(line: 103, column: 21, scope: !195)
!201 = !DILocation(line: 106, column: 31, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 106, column: 25)
!203 = distinct !DILexicalBlock(scope: !198, file: !1, line: 104, column: 17)
!204 = !DILocation(line: 106, column: 36, scope: !202)
!205 = !DILocation(line: 106, column: 35, scope: !202)
!206 = !DILocation(line: 106, column: 55, scope: !202)
!207 = !DILocation(line: 106, column: 54, scope: !202)
!208 = !DILocation(line: 106, column: 45, scope: !202)
!209 = !DILocation(line: 106, column: 65, scope: !202)
!210 = !DILocation(line: 106, column: 25, scope: !202)
!211 = !DILocation(line: 106, column: 72, scope: !202)
!212 = !DILocation(line: 106, column: 25, scope: !203)
!213 = !DILocation(line: 108, column: 25, scope: !214)
!214 = distinct !DILexicalBlock(scope: !202, file: !1, line: 107, column: 21)
!215 = !DILocation(line: 110, column: 25, scope: !214)
!216 = !DILocation(line: 110, column: 30, scope: !214)
!217 = !DILocation(line: 110, column: 39, scope: !214)
!218 = !DILocation(line: 111, column: 21, scope: !214)
!219 = !DILocation(line: 112, column: 28, scope: !203)
!220 = !DILocation(line: 112, column: 21, scope: !203)
!221 = !DILocation(line: 113, column: 17, scope: !203)
!222 = !DILocation(line: 114, column: 13, scope: !195)
!223 = !DILocation(line: 116, column: 5, scope: !183)
!224 = !DILocation(line: 117, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !170, file: !1, line: 117, column: 8)
!226 = !DILocation(line: 117, column: 25, scope: !225)
!227 = !DILocation(line: 117, column: 8, scope: !170)
!228 = !DILocation(line: 120, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !1, line: 118, column: 5)
!230 = !DILocation(line: 121, column: 5, scope: !229)
!231 = !DILocalVariable(name: "i", scope: !232, file: !1, line: 125, type: !5)
!232 = distinct !DILexicalBlock(scope: !233, file: !1, line: 124, column: 9)
!233 = distinct !DILexicalBlock(scope: !225, file: !1, line: 123, column: 5)
!234 = !DILocation(line: 125, column: 17, scope: !232)
!235 = !DILocalVariable(name: "n", scope: !232, file: !1, line: 125, type: !5)
!236 = !DILocation(line: 125, column: 20, scope: !232)
!237 = !DILocalVariable(name: "intVariable", scope: !232, file: !1, line: 125, type: !5)
!238 = !DILocation(line: 125, column: 23, scope: !232)
!239 = !DILocation(line: 126, column: 24, scope: !240)
!240 = distinct !DILexicalBlock(scope: !232, file: !1, line: 126, column: 17)
!241 = !DILocation(line: 126, column: 17, scope: !240)
!242 = !DILocation(line: 126, column: 40, scope: !240)
!243 = !DILocation(line: 126, column: 17, scope: !232)
!244 = !DILocation(line: 129, column: 21, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 129, column: 21)
!246 = distinct !DILexicalBlock(scope: !240, file: !1, line: 127, column: 13)
!247 = !DILocation(line: 129, column: 23, scope: !245)
!248 = !DILocation(line: 129, column: 21, scope: !246)
!249 = !DILocation(line: 131, column: 33, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !1, line: 130, column: 17)
!251 = !DILocation(line: 132, column: 28, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !1, line: 132, column: 21)
!253 = !DILocation(line: 132, column: 26, scope: !252)
!254 = !DILocation(line: 132, column: 33, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !1, line: 132, column: 21)
!256 = !DILocation(line: 132, column: 37, scope: !255)
!257 = !DILocation(line: 132, column: 35, scope: !255)
!258 = !DILocation(line: 132, column: 21, scope: !252)
!259 = !DILocation(line: 135, column: 36, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !1, line: 133, column: 21)
!261 = !DILocation(line: 136, column: 21, scope: !260)
!262 = !DILocation(line: 132, column: 41, scope: !255)
!263 = !DILocation(line: 132, column: 21, scope: !255)
!264 = distinct !{!264, !258, !265, !164}
!265 = !DILocation(line: 136, column: 21, scope: !252)
!266 = !DILocation(line: 137, column: 34, scope: !250)
!267 = !DILocation(line: 137, column: 21, scope: !250)
!268 = !DILocation(line: 138, column: 17, scope: !250)
!269 = !DILocation(line: 139, column: 13, scope: !246)
!270 = !DILocation(line: 142, column: 1, scope: !170)
!271 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 145, type: !11, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!272 = !DILocalVariable(name: "data", scope: !271, file: !1, line: 147, type: !14)
!273 = !DILocation(line: 147, column: 12, scope: !271)
!274 = !DILocalVariable(name: "dataBuffer", scope: !271, file: !1, line: 148, type: !18)
!275 = !DILocation(line: 148, column: 10, scope: !271)
!276 = !DILocation(line: 149, column: 12, scope: !271)
!277 = !DILocation(line: 149, column: 10, scope: !271)
!278 = !DILocation(line: 150, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !271, file: !1, line: 150, column: 8)
!280 = !DILocation(line: 150, column: 25, scope: !279)
!281 = !DILocation(line: 150, column: 8, scope: !271)
!282 = !DILocalVariable(name: "dataLen", scope: !283, file: !1, line: 154, type: !31)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 152, column: 9)
!284 = distinct !DILexicalBlock(scope: !279, file: !1, line: 151, column: 5)
!285 = !DILocation(line: 154, column: 20, scope: !283)
!286 = !DILocation(line: 154, column: 37, scope: !283)
!287 = !DILocation(line: 154, column: 30, scope: !283)
!288 = !DILocalVariable(name: "pFile", scope: !283, file: !1, line: 155, type: !38)
!289 = !DILocation(line: 155, column: 20, scope: !283)
!290 = !DILocation(line: 157, column: 21, scope: !291)
!291 = distinct !DILexicalBlock(scope: !283, file: !1, line: 157, column: 17)
!292 = !DILocation(line: 157, column: 20, scope: !291)
!293 = !DILocation(line: 157, column: 29, scope: !291)
!294 = !DILocation(line: 157, column: 17, scope: !283)
!295 = !DILocation(line: 159, column: 25, scope: !296)
!296 = distinct !DILexicalBlock(scope: !291, file: !1, line: 158, column: 13)
!297 = !DILocation(line: 159, column: 23, scope: !296)
!298 = !DILocation(line: 160, column: 21, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !1, line: 160, column: 21)
!300 = !DILocation(line: 160, column: 27, scope: !299)
!301 = !DILocation(line: 160, column: 21, scope: !296)
!302 = !DILocation(line: 163, column: 31, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !1, line: 163, column: 25)
!304 = distinct !DILexicalBlock(scope: !299, file: !1, line: 161, column: 17)
!305 = !DILocation(line: 163, column: 36, scope: !303)
!306 = !DILocation(line: 163, column: 35, scope: !303)
!307 = !DILocation(line: 163, column: 55, scope: !303)
!308 = !DILocation(line: 163, column: 54, scope: !303)
!309 = !DILocation(line: 163, column: 45, scope: !303)
!310 = !DILocation(line: 163, column: 65, scope: !303)
!311 = !DILocation(line: 163, column: 25, scope: !303)
!312 = !DILocation(line: 163, column: 72, scope: !303)
!313 = !DILocation(line: 163, column: 25, scope: !304)
!314 = !DILocation(line: 165, column: 25, scope: !315)
!315 = distinct !DILexicalBlock(scope: !303, file: !1, line: 164, column: 21)
!316 = !DILocation(line: 167, column: 25, scope: !315)
!317 = !DILocation(line: 167, column: 30, scope: !315)
!318 = !DILocation(line: 167, column: 39, scope: !315)
!319 = !DILocation(line: 168, column: 21, scope: !315)
!320 = !DILocation(line: 169, column: 28, scope: !304)
!321 = !DILocation(line: 169, column: 21, scope: !304)
!322 = !DILocation(line: 170, column: 17, scope: !304)
!323 = !DILocation(line: 171, column: 13, scope: !296)
!324 = !DILocation(line: 173, column: 5, scope: !284)
!325 = !DILocation(line: 174, column: 8, scope: !326)
!326 = distinct !DILexicalBlock(scope: !271, file: !1, line: 174, column: 8)
!327 = !DILocation(line: 174, column: 25, scope: !326)
!328 = !DILocation(line: 174, column: 8, scope: !271)
!329 = !DILocalVariable(name: "i", scope: !330, file: !1, line: 177, type: !5)
!330 = distinct !DILexicalBlock(scope: !331, file: !1, line: 176, column: 9)
!331 = distinct !DILexicalBlock(scope: !326, file: !1, line: 175, column: 5)
!332 = !DILocation(line: 177, column: 17, scope: !330)
!333 = !DILocalVariable(name: "n", scope: !330, file: !1, line: 177, type: !5)
!334 = !DILocation(line: 177, column: 20, scope: !330)
!335 = !DILocalVariable(name: "intVariable", scope: !330, file: !1, line: 177, type: !5)
!336 = !DILocation(line: 177, column: 23, scope: !330)
!337 = !DILocation(line: 178, column: 24, scope: !338)
!338 = distinct !DILexicalBlock(scope: !330, file: !1, line: 178, column: 17)
!339 = !DILocation(line: 178, column: 17, scope: !338)
!340 = !DILocation(line: 178, column: 40, scope: !338)
!341 = !DILocation(line: 178, column: 17, scope: !330)
!342 = !DILocation(line: 181, column: 21, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 181, column: 21)
!344 = distinct !DILexicalBlock(scope: !338, file: !1, line: 179, column: 13)
!345 = !DILocation(line: 181, column: 23, scope: !343)
!346 = !DILocation(line: 181, column: 21, scope: !344)
!347 = !DILocation(line: 183, column: 33, scope: !348)
!348 = distinct !DILexicalBlock(scope: !343, file: !1, line: 182, column: 17)
!349 = !DILocation(line: 184, column: 28, scope: !350)
!350 = distinct !DILexicalBlock(scope: !348, file: !1, line: 184, column: 21)
!351 = !DILocation(line: 184, column: 26, scope: !350)
!352 = !DILocation(line: 184, column: 33, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !1, line: 184, column: 21)
!354 = !DILocation(line: 184, column: 37, scope: !353)
!355 = !DILocation(line: 184, column: 35, scope: !353)
!356 = !DILocation(line: 184, column: 21, scope: !350)
!357 = !DILocation(line: 187, column: 36, scope: !358)
!358 = distinct !DILexicalBlock(scope: !353, file: !1, line: 185, column: 21)
!359 = !DILocation(line: 188, column: 21, scope: !358)
!360 = !DILocation(line: 184, column: 41, scope: !353)
!361 = !DILocation(line: 184, column: 21, scope: !353)
!362 = distinct !{!362, !356, !363, !164}
!363 = !DILocation(line: 188, column: 21, scope: !350)
!364 = !DILocation(line: 189, column: 34, scope: !348)
!365 = !DILocation(line: 189, column: 21, scope: !348)
!366 = !DILocation(line: 190, column: 17, scope: !348)
!367 = !DILocation(line: 191, column: 13, scope: !344)
!368 = !DILocation(line: 193, column: 5, scope: !331)
!369 = !DILocation(line: 194, column: 1, scope: !271)
!370 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 197, type: !11, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!371 = !DILocalVariable(name: "data", scope: !370, file: !1, line: 199, type: !14)
!372 = !DILocation(line: 199, column: 12, scope: !370)
!373 = !DILocalVariable(name: "dataBuffer", scope: !370, file: !1, line: 200, type: !18)
!374 = !DILocation(line: 200, column: 10, scope: !370)
!375 = !DILocation(line: 201, column: 12, scope: !370)
!376 = !DILocation(line: 201, column: 10, scope: !370)
!377 = !DILocation(line: 202, column: 8, scope: !378)
!378 = distinct !DILexicalBlock(scope: !370, file: !1, line: 202, column: 8)
!379 = !DILocation(line: 202, column: 25, scope: !378)
!380 = !DILocation(line: 202, column: 8, scope: !370)
!381 = !DILocation(line: 205, column: 9, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !1, line: 203, column: 5)
!383 = !DILocation(line: 206, column: 5, scope: !382)
!384 = !DILocation(line: 210, column: 16, scope: !385)
!385 = distinct !DILexicalBlock(scope: !378, file: !1, line: 208, column: 5)
!386 = !DILocation(line: 210, column: 9, scope: !385)
!387 = !DILocation(line: 212, column: 8, scope: !388)
!388 = distinct !DILexicalBlock(scope: !370, file: !1, line: 212, column: 8)
!389 = !DILocation(line: 212, column: 25, scope: !388)
!390 = !DILocation(line: 212, column: 8, scope: !370)
!391 = !DILocalVariable(name: "i", scope: !392, file: !1, line: 215, type: !5)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 214, column: 9)
!393 = distinct !DILexicalBlock(scope: !388, file: !1, line: 213, column: 5)
!394 = !DILocation(line: 215, column: 17, scope: !392)
!395 = !DILocalVariable(name: "n", scope: !392, file: !1, line: 215, type: !5)
!396 = !DILocation(line: 215, column: 20, scope: !392)
!397 = !DILocalVariable(name: "intVariable", scope: !392, file: !1, line: 215, type: !5)
!398 = !DILocation(line: 215, column: 23, scope: !392)
!399 = !DILocation(line: 216, column: 24, scope: !400)
!400 = distinct !DILexicalBlock(scope: !392, file: !1, line: 216, column: 17)
!401 = !DILocation(line: 216, column: 17, scope: !400)
!402 = !DILocation(line: 216, column: 40, scope: !400)
!403 = !DILocation(line: 216, column: 17, scope: !392)
!404 = !DILocation(line: 219, column: 29, scope: !405)
!405 = distinct !DILexicalBlock(scope: !400, file: !1, line: 217, column: 13)
!406 = !DILocation(line: 220, column: 24, scope: !407)
!407 = distinct !DILexicalBlock(scope: !405, file: !1, line: 220, column: 17)
!408 = !DILocation(line: 220, column: 22, scope: !407)
!409 = !DILocation(line: 220, column: 29, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !1, line: 220, column: 17)
!411 = !DILocation(line: 220, column: 33, scope: !410)
!412 = !DILocation(line: 220, column: 31, scope: !410)
!413 = !DILocation(line: 220, column: 17, scope: !407)
!414 = !DILocation(line: 223, column: 32, scope: !415)
!415 = distinct !DILexicalBlock(scope: !410, file: !1, line: 221, column: 17)
!416 = !DILocation(line: 224, column: 17, scope: !415)
!417 = !DILocation(line: 220, column: 37, scope: !410)
!418 = !DILocation(line: 220, column: 17, scope: !410)
!419 = distinct !{!419, !413, !420, !164}
!420 = !DILocation(line: 224, column: 17, scope: !407)
!421 = !DILocation(line: 225, column: 30, scope: !405)
!422 = !DILocation(line: 225, column: 17, scope: !405)
!423 = !DILocation(line: 226, column: 13, scope: !405)
!424 = !DILocation(line: 228, column: 5, scope: !393)
!425 = !DILocation(line: 229, column: 1, scope: !370)
!426 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 232, type: !11, scopeLine: 233, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!427 = !DILocalVariable(name: "data", scope: !426, file: !1, line: 234, type: !14)
!428 = !DILocation(line: 234, column: 12, scope: !426)
!429 = !DILocalVariable(name: "dataBuffer", scope: !426, file: !1, line: 235, type: !18)
!430 = !DILocation(line: 235, column: 10, scope: !426)
!431 = !DILocation(line: 236, column: 12, scope: !426)
!432 = !DILocation(line: 236, column: 10, scope: !426)
!433 = !DILocation(line: 237, column: 8, scope: !434)
!434 = distinct !DILexicalBlock(scope: !426, file: !1, line: 237, column: 8)
!435 = !DILocation(line: 237, column: 25, scope: !434)
!436 = !DILocation(line: 237, column: 8, scope: !426)
!437 = !DILocation(line: 240, column: 16, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !1, line: 238, column: 5)
!439 = !DILocation(line: 240, column: 9, scope: !438)
!440 = !DILocation(line: 241, column: 5, scope: !438)
!441 = !DILocation(line: 242, column: 8, scope: !442)
!442 = distinct !DILexicalBlock(scope: !426, file: !1, line: 242, column: 8)
!443 = !DILocation(line: 242, column: 25, scope: !442)
!444 = !DILocation(line: 242, column: 8, scope: !426)
!445 = !DILocalVariable(name: "i", scope: !446, file: !1, line: 245, type: !5)
!446 = distinct !DILexicalBlock(scope: !447, file: !1, line: 244, column: 9)
!447 = distinct !DILexicalBlock(scope: !442, file: !1, line: 243, column: 5)
!448 = !DILocation(line: 245, column: 17, scope: !446)
!449 = !DILocalVariable(name: "n", scope: !446, file: !1, line: 245, type: !5)
!450 = !DILocation(line: 245, column: 20, scope: !446)
!451 = !DILocalVariable(name: "intVariable", scope: !446, file: !1, line: 245, type: !5)
!452 = !DILocation(line: 245, column: 23, scope: !446)
!453 = !DILocation(line: 246, column: 24, scope: !454)
!454 = distinct !DILexicalBlock(scope: !446, file: !1, line: 246, column: 17)
!455 = !DILocation(line: 246, column: 17, scope: !454)
!456 = !DILocation(line: 246, column: 40, scope: !454)
!457 = !DILocation(line: 246, column: 17, scope: !446)
!458 = !DILocation(line: 249, column: 29, scope: !459)
!459 = distinct !DILexicalBlock(scope: !454, file: !1, line: 247, column: 13)
!460 = !DILocation(line: 250, column: 24, scope: !461)
!461 = distinct !DILexicalBlock(scope: !459, file: !1, line: 250, column: 17)
!462 = !DILocation(line: 250, column: 22, scope: !461)
!463 = !DILocation(line: 250, column: 29, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !1, line: 250, column: 17)
!465 = !DILocation(line: 250, column: 33, scope: !464)
!466 = !DILocation(line: 250, column: 31, scope: !464)
!467 = !DILocation(line: 250, column: 17, scope: !461)
!468 = !DILocation(line: 253, column: 32, scope: !469)
!469 = distinct !DILexicalBlock(scope: !464, file: !1, line: 251, column: 17)
!470 = !DILocation(line: 254, column: 17, scope: !469)
!471 = !DILocation(line: 250, column: 37, scope: !464)
!472 = !DILocation(line: 250, column: 17, scope: !464)
!473 = distinct !{!473, !467, !474, !164}
!474 = !DILocation(line: 254, column: 17, scope: !461)
!475 = !DILocation(line: 255, column: 30, scope: !459)
!476 = !DILocation(line: 255, column: 17, scope: !459)
!477 = !DILocation(line: 256, column: 13, scope: !459)
!478 = !DILocation(line: 258, column: 5, scope: !447)
!479 = !DILocation(line: 259, column: 1, scope: !426)
!480 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_13_good", scope: !1, file: !1, line: 261, type: !11, scopeLine: 262, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!481 = !DILocation(line: 263, column: 5, scope: !480)
!482 = !DILocation(line: 264, column: 5, scope: !480)
!483 = !DILocation(line: 265, column: 5, scope: !480)
!484 = !DILocation(line: 266, column: 5, scope: !480)
!485 = !DILocation(line: 267, column: 1, scope: !480)
