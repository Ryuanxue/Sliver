; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.6 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.8 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.9 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.13 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6.14 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_14_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  %1 = load i32, i32* @globalFive, align 4, !dbg !64
  %cmp = icmp eq i32 %1, 5, !dbg !66
  br i1 %cmp, label %if.then, label %if.end14, !dbg !67

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !68, metadata !DIExpression()), !dbg !74
  %2 = load i8*, i8** %data, align 8, !dbg !75
  %call = call i64 @strlen(i8* %2) #7, !dbg !76
  store i64 %call, i64* %dataLen, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !77, metadata !DIExpression()), !dbg !133
  %3 = load i64, i64* %dataLen, align 8, !dbg !134
  %sub = sub i64 100, %3, !dbg !136
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !137
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !138

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !139
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !141
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !142
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !144
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !145

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !146
  %6 = load i64, i64* %dataLen, align 8, !dbg !149
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !150
  %7 = load i64, i64* %dataLen, align 8, !dbg !151
  %sub6 = sub i64 100, %7, !dbg !152
  %conv = trunc i64 %sub6 to i32, !dbg !153
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !154
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !155
  %cmp8 = icmp eq i8* %call7, null, !dbg !156
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !157

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !158
  %9 = load i8*, i8** %data, align 8, !dbg !160
  %10 = load i64, i64* %dataLen, align 8, !dbg !161
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !160
  store i8 0, i8* %arrayidx, align 1, !dbg !162
  br label %if.end, !dbg !163

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !164
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !165
  br label %if.end12, !dbg !166

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !167

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !168

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @globalFive, align 4, !dbg !169
  %cmp15 = icmp eq i32 %12, 5, !dbg !171
  br i1 %cmp15, label %if.then17, label %if.end26, !dbg !172

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !173, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i32* %n, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !179, metadata !DIExpression()), !dbg !180
  %13 = load i8*, i8** %data, align 8, !dbg !181
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !183
  %cmp19 = icmp eq i32 %call18, 1, !dbg !184
  br i1 %cmp19, label %if.then21, label %if.end25, !dbg !185

if.then21:                                        ; preds = %if.then17
  store i32 0, i32* %intVariable, align 4, !dbg !186
  store i32 0, i32* %i, align 4, !dbg !188
  br label %for.cond, !dbg !190

for.cond:                                         ; preds = %for.inc, %if.then21
  %14 = load i32, i32* %i, align 4, !dbg !191
  %15 = load i32, i32* %n, align 4, !dbg !193
  %cmp22 = icmp slt i32 %14, %15, !dbg !194
  br i1 %cmp22, label %for.body, label %for.end, !dbg !195

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !196
  %inc = add nsw i32 %16, 1, !dbg !196
  store i32 %inc, i32* %intVariable, align 4, !dbg !196
  br label %for.inc, !dbg !198

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !199
  %inc24 = add nsw i32 %17, 1, !dbg !199
  store i32 %inc24, i32* %i, align 4, !dbg !199
  br label %for.cond, !dbg !200, !llvm.loop !201

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !204
  call void @printIntLine(i32 %18), !dbg !205
  br label %if.end25, !dbg !206

if.end25:                                         ; preds = %for.end, %if.then17
  br label %if.end26, !dbg !207

if.end26:                                         ; preds = %if.end25, %if.end14
  ret void, !dbg !208
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !209 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !212, metadata !DIExpression()), !dbg !213
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !213
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !213
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !214
  store i8* %arraydecay, i8** %data, align 8, !dbg !215
  %1 = load i32, i32* @globalFive, align 4, !dbg !216
  %cmp = icmp eq i32 %1, 5, !dbg !218
  br i1 %cmp, label %if.then, label %if.end14, !dbg !219

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !220, metadata !DIExpression()), !dbg !223
  %2 = load i8*, i8** %data, align 8, !dbg !224
  %call = call i64 @strlen(i8* %2) #7, !dbg !225
  store i64 %call, i64* %dataLen, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !226, metadata !DIExpression()), !dbg !227
  %3 = load i64, i64* %dataLen, align 8, !dbg !228
  %sub = sub i64 100, %3, !dbg !230
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !231
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !232

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !233
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !235
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !236
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !238
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !239

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !240
  %6 = load i64, i64* %dataLen, align 8, !dbg !243
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !244
  %7 = load i64, i64* %dataLen, align 8, !dbg !245
  %sub6 = sub i64 100, %7, !dbg !246
  %conv = trunc i64 %sub6 to i32, !dbg !247
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !248
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !249
  %cmp8 = icmp eq i8* %call7, null, !dbg !250
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !251

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !252
  %9 = load i8*, i8** %data, align 8, !dbg !254
  %10 = load i64, i64* %dataLen, align 8, !dbg !255
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !254
  store i8 0, i8* %arrayidx, align 1, !dbg !256
  br label %if.end, !dbg !257

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !258
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !259
  br label %if.end12, !dbg !260

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !261

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !262

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @globalFive, align 4, !dbg !263
  %cmp15 = icmp ne i32 %12, 5, !dbg !265
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !266

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !267
  br label %if.end30, !dbg !269

if.else:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !270, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata i32* %n, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !276, metadata !DIExpression()), !dbg !277
  %13 = load i8*, i8** %data, align 8, !dbg !278
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !280
  %cmp19 = icmp eq i32 %call18, 1, !dbg !281
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !282

if.then21:                                        ; preds = %if.else
  %14 = load i32, i32* %n, align 4, !dbg !283
  %cmp22 = icmp slt i32 %14, 10000, !dbg !286
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !287

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !288
  store i32 0, i32* %i, align 4, !dbg !290
  br label %for.cond, !dbg !292

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %i, align 4, !dbg !293
  %16 = load i32, i32* %n, align 4, !dbg !295
  %cmp25 = icmp slt i32 %15, %16, !dbg !296
  br i1 %cmp25, label %for.body, label %for.end, !dbg !297

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !298
  %inc = add nsw i32 %17, 1, !dbg !298
  store i32 %inc, i32* %intVariable, align 4, !dbg !298
  br label %for.inc, !dbg !300

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !301
  %inc27 = add nsw i32 %18, 1, !dbg !301
  store i32 %inc27, i32* %i, align 4, !dbg !301
  br label %for.cond, !dbg !302, !llvm.loop !303

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !305
  call void @printIntLine(i32 %19), !dbg !306
  br label %if.end28, !dbg !307

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !308

if.end29:                                         ; preds = %if.end28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then17
  ret void, !dbg !309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !310 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !311, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !313, metadata !DIExpression()), !dbg !314
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !314
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !314
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !315
  store i8* %arraydecay, i8** %data, align 8, !dbg !316
  %1 = load i32, i32* @globalFive, align 4, !dbg !317
  %cmp = icmp eq i32 %1, 5, !dbg !319
  br i1 %cmp, label %if.then, label %if.end14, !dbg !320

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !321, metadata !DIExpression()), !dbg !324
  %2 = load i8*, i8** %data, align 8, !dbg !325
  %call = call i64 @strlen(i8* %2) #7, !dbg !326
  store i64 %call, i64* %dataLen, align 8, !dbg !324
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !327, metadata !DIExpression()), !dbg !328
  %3 = load i64, i64* %dataLen, align 8, !dbg !329
  %sub = sub i64 100, %3, !dbg !331
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !332
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !333

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !334
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !336
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !337
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !339
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !340

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !341
  %6 = load i64, i64* %dataLen, align 8, !dbg !344
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !345
  %7 = load i64, i64* %dataLen, align 8, !dbg !346
  %sub6 = sub i64 100, %7, !dbg !347
  %conv = trunc i64 %sub6 to i32, !dbg !348
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !349
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !350
  %cmp8 = icmp eq i8* %call7, null, !dbg !351
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !352

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !353
  %9 = load i8*, i8** %data, align 8, !dbg !355
  %10 = load i64, i64* %dataLen, align 8, !dbg !356
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !355
  store i8 0, i8* %arrayidx, align 1, !dbg !357
  br label %if.end, !dbg !358

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !359
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !360
  br label %if.end12, !dbg !361

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !362

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !363

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @globalFive, align 4, !dbg !364
  %cmp15 = icmp eq i32 %12, 5, !dbg !366
  br i1 %cmp15, label %if.then17, label %if.end30, !dbg !367

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !368, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata i32* %n, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !374, metadata !DIExpression()), !dbg !375
  %13 = load i8*, i8** %data, align 8, !dbg !376
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !378
  %cmp19 = icmp eq i32 %call18, 1, !dbg !379
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !380

if.then21:                                        ; preds = %if.then17
  %14 = load i32, i32* %n, align 4, !dbg !381
  %cmp22 = icmp slt i32 %14, 10000, !dbg !384
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !385

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !386
  store i32 0, i32* %i, align 4, !dbg !388
  br label %for.cond, !dbg !390

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %i, align 4, !dbg !391
  %16 = load i32, i32* %n, align 4, !dbg !393
  %cmp25 = icmp slt i32 %15, %16, !dbg !394
  br i1 %cmp25, label %for.body, label %for.end, !dbg !395

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !396
  %inc = add nsw i32 %17, 1, !dbg !396
  store i32 %inc, i32* %intVariable, align 4, !dbg !396
  br label %for.inc, !dbg !398

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !399
  %inc27 = add nsw i32 %18, 1, !dbg !399
  store i32 %inc27, i32* %i, align 4, !dbg !399
  br label %for.cond, !dbg !400, !llvm.loop !401

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !403
  call void @printIntLine(i32 %19), !dbg !404
  br label %if.end28, !dbg !405

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !406

if.end29:                                         ; preds = %if.end28, %if.then17
  br label %if.end30, !dbg !407

if.end30:                                         ; preds = %if.end29, %if.end14
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !409 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !413
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !413
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !414
  store i8* %arraydecay, i8** %data, align 8, !dbg !415
  %1 = load i32, i32* @globalFive, align 4, !dbg !416
  %cmp = icmp ne i32 %1, 5, !dbg !418
  br i1 %cmp, label %if.then, label %if.else, !dbg !419

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !420
  br label %if.end, !dbg !422

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !423
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !425
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalFive, align 4, !dbg !426
  %cmp1 = icmp eq i32 %3, 5, !dbg !428
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !429

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !430, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata i32* %n, metadata !434, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !436, metadata !DIExpression()), !dbg !437
  %4 = load i8*, i8** %data, align 8, !dbg !438
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !440
  %cmp4 = icmp eq i32 %call3, 1, !dbg !441
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !442

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !443
  store i32 0, i32* %i, align 4, !dbg !445
  br label %for.cond, !dbg !447

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !448
  %6 = load i32, i32* %n, align 4, !dbg !450
  %cmp6 = icmp slt i32 %5, %6, !dbg !451
  br i1 %cmp6, label %for.body, label %for.end, !dbg !452

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !453
  %inc = add nsw i32 %7, 1, !dbg !453
  store i32 %inc, i32* %intVariable, align 4, !dbg !453
  br label %for.inc, !dbg !455

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !456
  %inc7 = add nsw i32 %8, 1, !dbg !456
  store i32 %inc7, i32* %i, align 4, !dbg !456
  br label %for.cond, !dbg !457, !llvm.loop !458

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !460
  call void @printIntLine(i32 %9), !dbg !461
  br label %if.end8, !dbg !462

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !463

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !464
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !465 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !468, metadata !DIExpression()), !dbg !469
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !469
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !469
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !470
  store i8* %arraydecay, i8** %data, align 8, !dbg !471
  %1 = load i32, i32* @globalFive, align 4, !dbg !472
  %cmp = icmp eq i32 %1, 5, !dbg !474
  br i1 %cmp, label %if.then, label %if.end, !dbg !475

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !476
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !478
  br label %if.end, !dbg !479

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalFive, align 4, !dbg !480
  %cmp1 = icmp eq i32 %3, 5, !dbg !482
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !483

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !484, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.declare(metadata i32* %n, metadata !488, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !490, metadata !DIExpression()), !dbg !491
  %4 = load i8*, i8** %data, align 8, !dbg !492
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !494
  %cmp4 = icmp eq i32 %call3, 1, !dbg !495
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !496

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !497
  store i32 0, i32* %i, align 4, !dbg !499
  br label %for.cond, !dbg !501

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !502
  %6 = load i32, i32* %n, align 4, !dbg !504
  %cmp6 = icmp slt i32 %5, %6, !dbg !505
  br i1 %cmp6, label %for.body, label %for.end, !dbg !506

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !507
  %inc = add nsw i32 %7, 1, !dbg !507
  store i32 %inc, i32* %intVariable, align 4, !dbg !507
  br label %for.inc, !dbg !509

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !510
  %inc7 = add nsw i32 %8, 1, !dbg !510
  store i32 %inc7, i32* %i, align 4, !dbg !510
  br label %for.cond, !dbg !511, !llvm.loop !512

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !514
  call void @printIntLine(i32 %9), !dbg !515
  br label %if.end8, !dbg !516

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !517

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_14_good() #0 !dbg !519 {
entry:
  call void @goodB2G1(), !dbg !520
  call void @goodB2G2(), !dbg !521
  call void @goodG2B1(), !dbg !522
  call void @goodG2B2(), !dbg !523
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !525 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !528, metadata !DIExpression()), !dbg !529
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !530
  %0 = load i8*, i8** %line.addr, align 8, !dbg !531
  %cmp = icmp ne i8* %0, null, !dbg !533
  br i1 %cmp, label %if.then, label %if.end, !dbg !534

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !535
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !537
  br label %if.end, !dbg !538

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.8, i64 0, i64 0)), !dbg !539
  ret void, !dbg !540
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !541 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !542, metadata !DIExpression()), !dbg !543
  %0 = load i8*, i8** %line.addr, align 8, !dbg !544
  %cmp = icmp ne i8* %0, null, !dbg !546
  br i1 %cmp, label %if.then, label %if.end, !dbg !547

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !548
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !550
  br label %if.end, !dbg !551

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !553 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !558, metadata !DIExpression()), !dbg !559
  %0 = load i32*, i32** %line.addr, align 8, !dbg !560
  %cmp = icmp ne i32* %0, null, !dbg !562
  br i1 %cmp, label %if.then, label %if.end, !dbg !563

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !564
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !566
  br label %if.end, !dbg !567

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !568
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !569 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !572, metadata !DIExpression()), !dbg !573
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !574
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.12, i64 0, i64 0), i32 %0), !dbg !575
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !577 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !581, metadata !DIExpression()), !dbg !582
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !583
  %conv = sext i16 %0 to i32, !dbg !583
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.13, i64 0, i64 0), i32 %conv), !dbg !584
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !586 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !590, metadata !DIExpression()), !dbg !591
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !592
  %conv = fpext float %0 to double, !dbg !592
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.14, i64 0, i64 0), double %conv), !dbg !593
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !595 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !600
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !601
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !603 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !609, metadata !DIExpression()), !dbg !610
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !611
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !612
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !614 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !617, metadata !DIExpression()), !dbg !618
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !619
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !620
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !622 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !625, metadata !DIExpression()), !dbg !626
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !627
  %conv = sext i8 %0 to i32, !dbg !627
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !628
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !630 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !633, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !635, metadata !DIExpression()), !dbg !639
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !640
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !641
  store i32 %0, i32* %arrayidx, align 4, !dbg !642
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !643
  store i32 0, i32* %arrayidx1, align 4, !dbg !644
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !645
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !646
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !648 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !651, metadata !DIExpression()), !dbg !652
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !653
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !654
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !656 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !659, metadata !DIExpression()), !dbg !660
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !661
  %conv = zext i8 %0 to i32, !dbg !661
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !662
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !664 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !668, metadata !DIExpression()), !dbg !669
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !670
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !671
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !673 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !683, metadata !DIExpression()), !dbg !684
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !685
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !686
  %1 = load i32, i32* %intOne, align 4, !dbg !686
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !687
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !688
  %3 = load i32, i32* %intTwo, align 4, !dbg !688
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !689
  ret void, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !691 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !695, metadata !DIExpression()), !dbg !696
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.declare(metadata i64* %i, metadata !699, metadata !DIExpression()), !dbg !700
  store i64 0, i64* %i, align 8, !dbg !701
  br label %for.cond, !dbg !703

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !704
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !706
  %cmp = icmp ult i64 %0, %1, !dbg !707
  br i1 %cmp, label %for.body, label %for.end, !dbg !708

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !709
  %3 = load i64, i64* %i, align 8, !dbg !711
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !709
  %4 = load i8, i8* %arrayidx, align 1, !dbg !709
  %conv = zext i8 %4 to i32, !dbg !709
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !712
  br label %for.inc, !dbg !713

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !714
  %inc = add i64 %5, 1, !dbg !714
  store i64 %inc, i64* %i, align 8, !dbg !714
  br label %for.cond, !dbg !715, !llvm.loop !716

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !718
  ret void, !dbg !719
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !720 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !723, metadata !DIExpression()), !dbg !724
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !725, metadata !DIExpression()), !dbg !726
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !727, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !729, metadata !DIExpression()), !dbg !730
  store i64 0, i64* %numWritten, align 8, !dbg !730
  br label %while.cond, !dbg !731

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !732
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !733
  %cmp = icmp ult i64 %0, %1, !dbg !734
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !735

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !736
  %2 = load i16*, i16** %call, align 8, !dbg !736
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !736
  %4 = load i64, i64* %numWritten, align 8, !dbg !736
  %mul = mul i64 2, %4, !dbg !736
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !736
  %5 = load i8, i8* %arrayidx, align 1, !dbg !736
  %conv = sext i8 %5 to i32, !dbg !736
  %idxprom = sext i32 %conv to i64, !dbg !736
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !736
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !736
  %conv2 = zext i16 %6 to i32, !dbg !736
  %and = and i32 %conv2, 4096, !dbg !736
  %tobool = icmp ne i32 %and, 0, !dbg !736
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !737

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !738
  %7 = load i16*, i16** %call3, align 8, !dbg !738
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !738
  %9 = load i64, i64* %numWritten, align 8, !dbg !738
  %mul4 = mul i64 2, %9, !dbg !738
  %add = add i64 %mul4, 1, !dbg !738
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !738
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !738
  %conv6 = sext i8 %10 to i32, !dbg !738
  %idxprom7 = sext i32 %conv6 to i64, !dbg !738
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !738
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !738
  %conv9 = zext i16 %11 to i32, !dbg !738
  %and10 = and i32 %conv9, 4096, !dbg !738
  %tobool11 = icmp ne i32 %and10, 0, !dbg !737
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !739
  br i1 %12, label %while.body, label %while.end, !dbg !731

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !740, metadata !DIExpression()), !dbg !742
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !743
  %14 = load i64, i64* %numWritten, align 8, !dbg !744
  %mul12 = mul i64 2, %14, !dbg !745
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !743
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !746
  %15 = load i32, i32* %byte, align 4, !dbg !747
  %conv15 = trunc i32 %15 to i8, !dbg !748
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !749
  %17 = load i64, i64* %numWritten, align 8, !dbg !750
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !749
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !751
  %18 = load i64, i64* %numWritten, align 8, !dbg !752
  %inc = add i64 %18, 1, !dbg !752
  store i64 %inc, i64* %numWritten, align 8, !dbg !752
  br label %while.cond, !dbg !731, !llvm.loop !753

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !755
  ret i64 %19, !dbg !756
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !757 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !760, metadata !DIExpression()), !dbg !761
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !762, metadata !DIExpression()), !dbg !763
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !764, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !766, metadata !DIExpression()), !dbg !767
  store i64 0, i64* %numWritten, align 8, !dbg !767
  br label %while.cond, !dbg !768

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !769
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !770
  %cmp = icmp ult i64 %0, %1, !dbg !771
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !772

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !773
  %3 = load i64, i64* %numWritten, align 8, !dbg !774
  %mul = mul i64 2, %3, !dbg !775
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !773
  %4 = load i32, i32* %arrayidx, align 4, !dbg !773
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !776
  %tobool = icmp ne i32 %call, 0, !dbg !776
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !777

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !778
  %6 = load i64, i64* %numWritten, align 8, !dbg !779
  %mul1 = mul i64 2, %6, !dbg !780
  %add = add i64 %mul1, 1, !dbg !781
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !778
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !778
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !782
  %tobool4 = icmp ne i32 %call3, 0, !dbg !777
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !783
  br i1 %8, label %while.body, label %while.end, !dbg !768

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !784, metadata !DIExpression()), !dbg !786
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !787
  %10 = load i64, i64* %numWritten, align 8, !dbg !788
  %mul5 = mul i64 2, %10, !dbg !789
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !787
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !790
  %11 = load i32, i32* %byte, align 4, !dbg !791
  %conv = trunc i32 %11 to i8, !dbg !792
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !793
  %13 = load i64, i64* %numWritten, align 8, !dbg !794
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !793
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !795
  %14 = load i64, i64* %numWritten, align 8, !dbg !796
  %inc = add i64 %14, 1, !dbg !796
  store i64 %inc, i64* %numWritten, align 8, !dbg !796
  br label %while.cond, !dbg !768, !llvm.loop !797

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !799
  ret i64 %15, !dbg !800
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !801 {
entry:
  ret i32 1, !dbg !804
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !805 {
entry:
  ret i32 0, !dbg !806
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !807 {
entry:
  %call = call i32 @rand() #8, !dbg !808
  %rem = srem i32 %call, 2, !dbg !809
  ret i32 %rem, !dbg !810
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !811 {
entry:
  ret void, !dbg !812
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !813 {
entry:
  ret void, !dbg !814
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !815 {
entry:
  ret void, !dbg !816
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !817 {
entry:
  ret void, !dbg !818
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !819 {
entry:
  ret void, !dbg !820
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !821 {
entry:
  ret void, !dbg !822
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !823 {
entry:
  ret void, !dbg !824
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !825 {
entry:
  ret void, !dbg !826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !827 {
entry:
  ret void, !dbg !828
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !829 {
entry:
  ret void, !dbg !830
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !831 {
entry:
  ret void, !dbg !832
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !833 {
entry:
  ret void, !dbg !834
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !835 {
entry:
  ret void, !dbg !836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !837 {
entry:
  ret void, !dbg !838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !839 {
entry:
  ret void, !dbg !840
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !841 {
entry:
  ret void, !dbg !842
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !843 {
entry:
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !845 {
entry:
  ret void, !dbg !846
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_087/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_14.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_087/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_14_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 37, type: !42)
!56 = !DILocation(line: 37, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 38, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 100)
!61 = !DILocation(line: 38, column: 10, scope: !52)
!62 = !DILocation(line: 39, column: 12, scope: !52)
!63 = !DILocation(line: 39, column: 10, scope: !52)
!64 = !DILocation(line: 40, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 40, column: 8)
!66 = !DILocation(line: 40, column: 18, scope: !65)
!67 = !DILocation(line: 40, column: 8, scope: !52)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !45, line: 44, type: !71)
!69 = distinct !DILexicalBlock(scope: !70, file: !45, line: 42, column: 9)
!70 = distinct !DILexicalBlock(scope: !65, file: !45, line: 41, column: 5)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DILocation(line: 44, column: 20, scope: !69)
!75 = !DILocation(line: 44, column: 37, scope: !69)
!76 = !DILocation(line: 44, column: 30, scope: !69)
!77 = !DILocalVariable(name: "pFile", scope: !69, file: !45, line: 45, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !80, line: 7, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !82, line: 49, size: 1728, elements: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !99, !101, !102, !103, !107, !108, !110, !114, !117, !119, !122, !125, !126, !127, !128, !129}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !81, file: !82, line: 51, baseType: !23, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !81, file: !82, line: 54, baseType: !42, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !81, file: !82, line: 55, baseType: !42, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !81, file: !82, line: 56, baseType: !42, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !81, file: !82, line: 57, baseType: !42, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !81, file: !82, line: 58, baseType: !42, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !81, file: !82, line: 59, baseType: !42, size: 64, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !81, file: !82, line: 60, baseType: !42, size: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !81, file: !82, line: 61, baseType: !42, size: 64, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !81, file: !82, line: 64, baseType: !42, size: 64, offset: 576)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !81, file: !82, line: 65, baseType: !42, size: 64, offset: 640)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !81, file: !82, line: 66, baseType: !42, size: 64, offset: 704)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !81, file: !82, line: 68, baseType: !97, size: 64, offset: 768)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !82, line: 36, flags: DIFlagFwdDecl)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !81, file: !82, line: 70, baseType: !100, size: 64, offset: 832)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !81, file: !82, line: 72, baseType: !23, size: 32, offset: 896)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !81, file: !82, line: 73, baseType: !23, size: 32, offset: 928)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !81, file: !82, line: 74, baseType: !104, size: 64, offset: 960)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !105, line: 152, baseType: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!106 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !81, file: !82, line: 77, baseType: !24, size: 16, offset: 1024)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !81, file: !82, line: 78, baseType: !109, size: 8, offset: 1040)
!109 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !81, file: !82, line: 79, baseType: !111, size: 8, offset: 1048)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 1)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !81, file: !82, line: 81, baseType: !115, size: 64, offset: 1088)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !82, line: 43, baseType: null)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !81, file: !82, line: 89, baseType: !118, size: 64, offset: 1152)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !105, line: 153, baseType: !106)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !81, file: !82, line: 91, baseType: !120, size: 64, offset: 1216)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !82, line: 37, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !81, file: !82, line: 92, baseType: !123, size: 64, offset: 1280)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !82, line: 38, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !81, file: !82, line: 93, baseType: !100, size: 64, offset: 1344)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !81, file: !82, line: 94, baseType: !22, size: 64, offset: 1408)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !81, file: !82, line: 95, baseType: !71, size: 64, offset: 1472)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !81, file: !82, line: 96, baseType: !23, size: 32, offset: 1536)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !81, file: !82, line: 98, baseType: !130, size: 160, offset: 1568)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 20)
!133 = !DILocation(line: 45, column: 20, scope: !69)
!134 = !DILocation(line: 47, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !69, file: !45, line: 47, column: 17)
!136 = !DILocation(line: 47, column: 20, scope: !135)
!137 = !DILocation(line: 47, column: 29, scope: !135)
!138 = !DILocation(line: 47, column: 17, scope: !69)
!139 = !DILocation(line: 49, column: 25, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !45, line: 48, column: 13)
!141 = !DILocation(line: 49, column: 23, scope: !140)
!142 = !DILocation(line: 50, column: 21, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !45, line: 50, column: 21)
!144 = !DILocation(line: 50, column: 27, scope: !143)
!145 = !DILocation(line: 50, column: 21, scope: !140)
!146 = !DILocation(line: 53, column: 31, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !45, line: 53, column: 25)
!148 = distinct !DILexicalBlock(scope: !143, file: !45, line: 51, column: 17)
!149 = !DILocation(line: 53, column: 36, scope: !147)
!150 = !DILocation(line: 53, column: 35, scope: !147)
!151 = !DILocation(line: 53, column: 55, scope: !147)
!152 = !DILocation(line: 53, column: 54, scope: !147)
!153 = !DILocation(line: 53, column: 45, scope: !147)
!154 = !DILocation(line: 53, column: 65, scope: !147)
!155 = !DILocation(line: 53, column: 25, scope: !147)
!156 = !DILocation(line: 53, column: 72, scope: !147)
!157 = !DILocation(line: 53, column: 25, scope: !148)
!158 = !DILocation(line: 55, column: 25, scope: !159)
!159 = distinct !DILexicalBlock(scope: !147, file: !45, line: 54, column: 21)
!160 = !DILocation(line: 57, column: 25, scope: !159)
!161 = !DILocation(line: 57, column: 30, scope: !159)
!162 = !DILocation(line: 57, column: 39, scope: !159)
!163 = !DILocation(line: 58, column: 21, scope: !159)
!164 = !DILocation(line: 59, column: 28, scope: !148)
!165 = !DILocation(line: 59, column: 21, scope: !148)
!166 = !DILocation(line: 60, column: 17, scope: !148)
!167 = !DILocation(line: 61, column: 13, scope: !140)
!168 = !DILocation(line: 63, column: 5, scope: !70)
!169 = !DILocation(line: 64, column: 8, scope: !170)
!170 = distinct !DILexicalBlock(scope: !52, file: !45, line: 64, column: 8)
!171 = !DILocation(line: 64, column: 18, scope: !170)
!172 = !DILocation(line: 64, column: 8, scope: !52)
!173 = !DILocalVariable(name: "i", scope: !174, file: !45, line: 67, type: !23)
!174 = distinct !DILexicalBlock(scope: !175, file: !45, line: 66, column: 9)
!175 = distinct !DILexicalBlock(scope: !170, file: !45, line: 65, column: 5)
!176 = !DILocation(line: 67, column: 17, scope: !174)
!177 = !DILocalVariable(name: "n", scope: !174, file: !45, line: 67, type: !23)
!178 = !DILocation(line: 67, column: 20, scope: !174)
!179 = !DILocalVariable(name: "intVariable", scope: !174, file: !45, line: 67, type: !23)
!180 = !DILocation(line: 67, column: 23, scope: !174)
!181 = !DILocation(line: 68, column: 24, scope: !182)
!182 = distinct !DILexicalBlock(scope: !174, file: !45, line: 68, column: 17)
!183 = !DILocation(line: 68, column: 17, scope: !182)
!184 = !DILocation(line: 68, column: 40, scope: !182)
!185 = !DILocation(line: 68, column: 17, scope: !174)
!186 = !DILocation(line: 71, column: 29, scope: !187)
!187 = distinct !DILexicalBlock(scope: !182, file: !45, line: 69, column: 13)
!188 = !DILocation(line: 72, column: 24, scope: !189)
!189 = distinct !DILexicalBlock(scope: !187, file: !45, line: 72, column: 17)
!190 = !DILocation(line: 72, column: 22, scope: !189)
!191 = !DILocation(line: 72, column: 29, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !45, line: 72, column: 17)
!193 = !DILocation(line: 72, column: 33, scope: !192)
!194 = !DILocation(line: 72, column: 31, scope: !192)
!195 = !DILocation(line: 72, column: 17, scope: !189)
!196 = !DILocation(line: 75, column: 32, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !45, line: 73, column: 17)
!198 = !DILocation(line: 76, column: 17, scope: !197)
!199 = !DILocation(line: 72, column: 37, scope: !192)
!200 = !DILocation(line: 72, column: 17, scope: !192)
!201 = distinct !{!201, !195, !202, !203}
!202 = !DILocation(line: 76, column: 17, scope: !189)
!203 = !{!"llvm.loop.mustprogress"}
!204 = !DILocation(line: 77, column: 30, scope: !187)
!205 = !DILocation(line: 77, column: 17, scope: !187)
!206 = !DILocation(line: 78, column: 13, scope: !187)
!207 = !DILocation(line: 80, column: 5, scope: !175)
!208 = !DILocation(line: 81, column: 1, scope: !52)
!209 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 88, type: !53, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!210 = !DILocalVariable(name: "data", scope: !209, file: !45, line: 90, type: !42)
!211 = !DILocation(line: 90, column: 12, scope: !209)
!212 = !DILocalVariable(name: "dataBuffer", scope: !209, file: !45, line: 91, type: !58)
!213 = !DILocation(line: 91, column: 10, scope: !209)
!214 = !DILocation(line: 92, column: 12, scope: !209)
!215 = !DILocation(line: 92, column: 10, scope: !209)
!216 = !DILocation(line: 93, column: 8, scope: !217)
!217 = distinct !DILexicalBlock(scope: !209, file: !45, line: 93, column: 8)
!218 = !DILocation(line: 93, column: 18, scope: !217)
!219 = !DILocation(line: 93, column: 8, scope: !209)
!220 = !DILocalVariable(name: "dataLen", scope: !221, file: !45, line: 97, type: !71)
!221 = distinct !DILexicalBlock(scope: !222, file: !45, line: 95, column: 9)
!222 = distinct !DILexicalBlock(scope: !217, file: !45, line: 94, column: 5)
!223 = !DILocation(line: 97, column: 20, scope: !221)
!224 = !DILocation(line: 97, column: 37, scope: !221)
!225 = !DILocation(line: 97, column: 30, scope: !221)
!226 = !DILocalVariable(name: "pFile", scope: !221, file: !45, line: 98, type: !78)
!227 = !DILocation(line: 98, column: 20, scope: !221)
!228 = !DILocation(line: 100, column: 21, scope: !229)
!229 = distinct !DILexicalBlock(scope: !221, file: !45, line: 100, column: 17)
!230 = !DILocation(line: 100, column: 20, scope: !229)
!231 = !DILocation(line: 100, column: 29, scope: !229)
!232 = !DILocation(line: 100, column: 17, scope: !221)
!233 = !DILocation(line: 102, column: 25, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !45, line: 101, column: 13)
!235 = !DILocation(line: 102, column: 23, scope: !234)
!236 = !DILocation(line: 103, column: 21, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !45, line: 103, column: 21)
!238 = !DILocation(line: 103, column: 27, scope: !237)
!239 = !DILocation(line: 103, column: 21, scope: !234)
!240 = !DILocation(line: 106, column: 31, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !45, line: 106, column: 25)
!242 = distinct !DILexicalBlock(scope: !237, file: !45, line: 104, column: 17)
!243 = !DILocation(line: 106, column: 36, scope: !241)
!244 = !DILocation(line: 106, column: 35, scope: !241)
!245 = !DILocation(line: 106, column: 55, scope: !241)
!246 = !DILocation(line: 106, column: 54, scope: !241)
!247 = !DILocation(line: 106, column: 45, scope: !241)
!248 = !DILocation(line: 106, column: 65, scope: !241)
!249 = !DILocation(line: 106, column: 25, scope: !241)
!250 = !DILocation(line: 106, column: 72, scope: !241)
!251 = !DILocation(line: 106, column: 25, scope: !242)
!252 = !DILocation(line: 108, column: 25, scope: !253)
!253 = distinct !DILexicalBlock(scope: !241, file: !45, line: 107, column: 21)
!254 = !DILocation(line: 110, column: 25, scope: !253)
!255 = !DILocation(line: 110, column: 30, scope: !253)
!256 = !DILocation(line: 110, column: 39, scope: !253)
!257 = !DILocation(line: 111, column: 21, scope: !253)
!258 = !DILocation(line: 112, column: 28, scope: !242)
!259 = !DILocation(line: 112, column: 21, scope: !242)
!260 = !DILocation(line: 113, column: 17, scope: !242)
!261 = !DILocation(line: 114, column: 13, scope: !234)
!262 = !DILocation(line: 116, column: 5, scope: !222)
!263 = !DILocation(line: 117, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !209, file: !45, line: 117, column: 8)
!265 = !DILocation(line: 117, column: 18, scope: !264)
!266 = !DILocation(line: 117, column: 8, scope: !209)
!267 = !DILocation(line: 120, column: 9, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !45, line: 118, column: 5)
!269 = !DILocation(line: 121, column: 5, scope: !268)
!270 = !DILocalVariable(name: "i", scope: !271, file: !45, line: 125, type: !23)
!271 = distinct !DILexicalBlock(scope: !272, file: !45, line: 124, column: 9)
!272 = distinct !DILexicalBlock(scope: !264, file: !45, line: 123, column: 5)
!273 = !DILocation(line: 125, column: 17, scope: !271)
!274 = !DILocalVariable(name: "n", scope: !271, file: !45, line: 125, type: !23)
!275 = !DILocation(line: 125, column: 20, scope: !271)
!276 = !DILocalVariable(name: "intVariable", scope: !271, file: !45, line: 125, type: !23)
!277 = !DILocation(line: 125, column: 23, scope: !271)
!278 = !DILocation(line: 126, column: 24, scope: !279)
!279 = distinct !DILexicalBlock(scope: !271, file: !45, line: 126, column: 17)
!280 = !DILocation(line: 126, column: 17, scope: !279)
!281 = !DILocation(line: 126, column: 40, scope: !279)
!282 = !DILocation(line: 126, column: 17, scope: !271)
!283 = !DILocation(line: 129, column: 21, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !45, line: 129, column: 21)
!285 = distinct !DILexicalBlock(scope: !279, file: !45, line: 127, column: 13)
!286 = !DILocation(line: 129, column: 23, scope: !284)
!287 = !DILocation(line: 129, column: 21, scope: !285)
!288 = !DILocation(line: 131, column: 33, scope: !289)
!289 = distinct !DILexicalBlock(scope: !284, file: !45, line: 130, column: 17)
!290 = !DILocation(line: 132, column: 28, scope: !291)
!291 = distinct !DILexicalBlock(scope: !289, file: !45, line: 132, column: 21)
!292 = !DILocation(line: 132, column: 26, scope: !291)
!293 = !DILocation(line: 132, column: 33, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !45, line: 132, column: 21)
!295 = !DILocation(line: 132, column: 37, scope: !294)
!296 = !DILocation(line: 132, column: 35, scope: !294)
!297 = !DILocation(line: 132, column: 21, scope: !291)
!298 = !DILocation(line: 135, column: 36, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !45, line: 133, column: 21)
!300 = !DILocation(line: 136, column: 21, scope: !299)
!301 = !DILocation(line: 132, column: 41, scope: !294)
!302 = !DILocation(line: 132, column: 21, scope: !294)
!303 = distinct !{!303, !297, !304, !203}
!304 = !DILocation(line: 136, column: 21, scope: !291)
!305 = !DILocation(line: 137, column: 34, scope: !289)
!306 = !DILocation(line: 137, column: 21, scope: !289)
!307 = !DILocation(line: 138, column: 17, scope: !289)
!308 = !DILocation(line: 139, column: 13, scope: !285)
!309 = !DILocation(line: 142, column: 1, scope: !209)
!310 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 145, type: !53, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!311 = !DILocalVariable(name: "data", scope: !310, file: !45, line: 147, type: !42)
!312 = !DILocation(line: 147, column: 12, scope: !310)
!313 = !DILocalVariable(name: "dataBuffer", scope: !310, file: !45, line: 148, type: !58)
!314 = !DILocation(line: 148, column: 10, scope: !310)
!315 = !DILocation(line: 149, column: 12, scope: !310)
!316 = !DILocation(line: 149, column: 10, scope: !310)
!317 = !DILocation(line: 150, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !310, file: !45, line: 150, column: 8)
!319 = !DILocation(line: 150, column: 18, scope: !318)
!320 = !DILocation(line: 150, column: 8, scope: !310)
!321 = !DILocalVariable(name: "dataLen", scope: !322, file: !45, line: 154, type: !71)
!322 = distinct !DILexicalBlock(scope: !323, file: !45, line: 152, column: 9)
!323 = distinct !DILexicalBlock(scope: !318, file: !45, line: 151, column: 5)
!324 = !DILocation(line: 154, column: 20, scope: !322)
!325 = !DILocation(line: 154, column: 37, scope: !322)
!326 = !DILocation(line: 154, column: 30, scope: !322)
!327 = !DILocalVariable(name: "pFile", scope: !322, file: !45, line: 155, type: !78)
!328 = !DILocation(line: 155, column: 20, scope: !322)
!329 = !DILocation(line: 157, column: 21, scope: !330)
!330 = distinct !DILexicalBlock(scope: !322, file: !45, line: 157, column: 17)
!331 = !DILocation(line: 157, column: 20, scope: !330)
!332 = !DILocation(line: 157, column: 29, scope: !330)
!333 = !DILocation(line: 157, column: 17, scope: !322)
!334 = !DILocation(line: 159, column: 25, scope: !335)
!335 = distinct !DILexicalBlock(scope: !330, file: !45, line: 158, column: 13)
!336 = !DILocation(line: 159, column: 23, scope: !335)
!337 = !DILocation(line: 160, column: 21, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !45, line: 160, column: 21)
!339 = !DILocation(line: 160, column: 27, scope: !338)
!340 = !DILocation(line: 160, column: 21, scope: !335)
!341 = !DILocation(line: 163, column: 31, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !45, line: 163, column: 25)
!343 = distinct !DILexicalBlock(scope: !338, file: !45, line: 161, column: 17)
!344 = !DILocation(line: 163, column: 36, scope: !342)
!345 = !DILocation(line: 163, column: 35, scope: !342)
!346 = !DILocation(line: 163, column: 55, scope: !342)
!347 = !DILocation(line: 163, column: 54, scope: !342)
!348 = !DILocation(line: 163, column: 45, scope: !342)
!349 = !DILocation(line: 163, column: 65, scope: !342)
!350 = !DILocation(line: 163, column: 25, scope: !342)
!351 = !DILocation(line: 163, column: 72, scope: !342)
!352 = !DILocation(line: 163, column: 25, scope: !343)
!353 = !DILocation(line: 165, column: 25, scope: !354)
!354 = distinct !DILexicalBlock(scope: !342, file: !45, line: 164, column: 21)
!355 = !DILocation(line: 167, column: 25, scope: !354)
!356 = !DILocation(line: 167, column: 30, scope: !354)
!357 = !DILocation(line: 167, column: 39, scope: !354)
!358 = !DILocation(line: 168, column: 21, scope: !354)
!359 = !DILocation(line: 169, column: 28, scope: !343)
!360 = !DILocation(line: 169, column: 21, scope: !343)
!361 = !DILocation(line: 170, column: 17, scope: !343)
!362 = !DILocation(line: 171, column: 13, scope: !335)
!363 = !DILocation(line: 173, column: 5, scope: !323)
!364 = !DILocation(line: 174, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !310, file: !45, line: 174, column: 8)
!366 = !DILocation(line: 174, column: 18, scope: !365)
!367 = !DILocation(line: 174, column: 8, scope: !310)
!368 = !DILocalVariable(name: "i", scope: !369, file: !45, line: 177, type: !23)
!369 = distinct !DILexicalBlock(scope: !370, file: !45, line: 176, column: 9)
!370 = distinct !DILexicalBlock(scope: !365, file: !45, line: 175, column: 5)
!371 = !DILocation(line: 177, column: 17, scope: !369)
!372 = !DILocalVariable(name: "n", scope: !369, file: !45, line: 177, type: !23)
!373 = !DILocation(line: 177, column: 20, scope: !369)
!374 = !DILocalVariable(name: "intVariable", scope: !369, file: !45, line: 177, type: !23)
!375 = !DILocation(line: 177, column: 23, scope: !369)
!376 = !DILocation(line: 178, column: 24, scope: !377)
!377 = distinct !DILexicalBlock(scope: !369, file: !45, line: 178, column: 17)
!378 = !DILocation(line: 178, column: 17, scope: !377)
!379 = !DILocation(line: 178, column: 40, scope: !377)
!380 = !DILocation(line: 178, column: 17, scope: !369)
!381 = !DILocation(line: 181, column: 21, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !45, line: 181, column: 21)
!383 = distinct !DILexicalBlock(scope: !377, file: !45, line: 179, column: 13)
!384 = !DILocation(line: 181, column: 23, scope: !382)
!385 = !DILocation(line: 181, column: 21, scope: !383)
!386 = !DILocation(line: 183, column: 33, scope: !387)
!387 = distinct !DILexicalBlock(scope: !382, file: !45, line: 182, column: 17)
!388 = !DILocation(line: 184, column: 28, scope: !389)
!389 = distinct !DILexicalBlock(scope: !387, file: !45, line: 184, column: 21)
!390 = !DILocation(line: 184, column: 26, scope: !389)
!391 = !DILocation(line: 184, column: 33, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !45, line: 184, column: 21)
!393 = !DILocation(line: 184, column: 37, scope: !392)
!394 = !DILocation(line: 184, column: 35, scope: !392)
!395 = !DILocation(line: 184, column: 21, scope: !389)
!396 = !DILocation(line: 187, column: 36, scope: !397)
!397 = distinct !DILexicalBlock(scope: !392, file: !45, line: 185, column: 21)
!398 = !DILocation(line: 188, column: 21, scope: !397)
!399 = !DILocation(line: 184, column: 41, scope: !392)
!400 = !DILocation(line: 184, column: 21, scope: !392)
!401 = distinct !{!401, !395, !402, !203}
!402 = !DILocation(line: 188, column: 21, scope: !389)
!403 = !DILocation(line: 189, column: 34, scope: !387)
!404 = !DILocation(line: 189, column: 21, scope: !387)
!405 = !DILocation(line: 190, column: 17, scope: !387)
!406 = !DILocation(line: 191, column: 13, scope: !383)
!407 = !DILocation(line: 193, column: 5, scope: !370)
!408 = !DILocation(line: 194, column: 1, scope: !310)
!409 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 197, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!410 = !DILocalVariable(name: "data", scope: !409, file: !45, line: 199, type: !42)
!411 = !DILocation(line: 199, column: 12, scope: !409)
!412 = !DILocalVariable(name: "dataBuffer", scope: !409, file: !45, line: 200, type: !58)
!413 = !DILocation(line: 200, column: 10, scope: !409)
!414 = !DILocation(line: 201, column: 12, scope: !409)
!415 = !DILocation(line: 201, column: 10, scope: !409)
!416 = !DILocation(line: 202, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !409, file: !45, line: 202, column: 8)
!418 = !DILocation(line: 202, column: 18, scope: !417)
!419 = !DILocation(line: 202, column: 8, scope: !409)
!420 = !DILocation(line: 205, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !45, line: 203, column: 5)
!422 = !DILocation(line: 206, column: 5, scope: !421)
!423 = !DILocation(line: 210, column: 16, scope: !424)
!424 = distinct !DILexicalBlock(scope: !417, file: !45, line: 208, column: 5)
!425 = !DILocation(line: 210, column: 9, scope: !424)
!426 = !DILocation(line: 212, column: 8, scope: !427)
!427 = distinct !DILexicalBlock(scope: !409, file: !45, line: 212, column: 8)
!428 = !DILocation(line: 212, column: 18, scope: !427)
!429 = !DILocation(line: 212, column: 8, scope: !409)
!430 = !DILocalVariable(name: "i", scope: !431, file: !45, line: 215, type: !23)
!431 = distinct !DILexicalBlock(scope: !432, file: !45, line: 214, column: 9)
!432 = distinct !DILexicalBlock(scope: !427, file: !45, line: 213, column: 5)
!433 = !DILocation(line: 215, column: 17, scope: !431)
!434 = !DILocalVariable(name: "n", scope: !431, file: !45, line: 215, type: !23)
!435 = !DILocation(line: 215, column: 20, scope: !431)
!436 = !DILocalVariable(name: "intVariable", scope: !431, file: !45, line: 215, type: !23)
!437 = !DILocation(line: 215, column: 23, scope: !431)
!438 = !DILocation(line: 216, column: 24, scope: !439)
!439 = distinct !DILexicalBlock(scope: !431, file: !45, line: 216, column: 17)
!440 = !DILocation(line: 216, column: 17, scope: !439)
!441 = !DILocation(line: 216, column: 40, scope: !439)
!442 = !DILocation(line: 216, column: 17, scope: !431)
!443 = !DILocation(line: 219, column: 29, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !45, line: 217, column: 13)
!445 = !DILocation(line: 220, column: 24, scope: !446)
!446 = distinct !DILexicalBlock(scope: !444, file: !45, line: 220, column: 17)
!447 = !DILocation(line: 220, column: 22, scope: !446)
!448 = !DILocation(line: 220, column: 29, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !45, line: 220, column: 17)
!450 = !DILocation(line: 220, column: 33, scope: !449)
!451 = !DILocation(line: 220, column: 31, scope: !449)
!452 = !DILocation(line: 220, column: 17, scope: !446)
!453 = !DILocation(line: 223, column: 32, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !45, line: 221, column: 17)
!455 = !DILocation(line: 224, column: 17, scope: !454)
!456 = !DILocation(line: 220, column: 37, scope: !449)
!457 = !DILocation(line: 220, column: 17, scope: !449)
!458 = distinct !{!458, !452, !459, !203}
!459 = !DILocation(line: 224, column: 17, scope: !446)
!460 = !DILocation(line: 225, column: 30, scope: !444)
!461 = !DILocation(line: 225, column: 17, scope: !444)
!462 = !DILocation(line: 226, column: 13, scope: !444)
!463 = !DILocation(line: 228, column: 5, scope: !432)
!464 = !DILocation(line: 229, column: 1, scope: !409)
!465 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 232, type: !53, scopeLine: 233, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!466 = !DILocalVariable(name: "data", scope: !465, file: !45, line: 234, type: !42)
!467 = !DILocation(line: 234, column: 12, scope: !465)
!468 = !DILocalVariable(name: "dataBuffer", scope: !465, file: !45, line: 235, type: !58)
!469 = !DILocation(line: 235, column: 10, scope: !465)
!470 = !DILocation(line: 236, column: 12, scope: !465)
!471 = !DILocation(line: 236, column: 10, scope: !465)
!472 = !DILocation(line: 237, column: 8, scope: !473)
!473 = distinct !DILexicalBlock(scope: !465, file: !45, line: 237, column: 8)
!474 = !DILocation(line: 237, column: 18, scope: !473)
!475 = !DILocation(line: 237, column: 8, scope: !465)
!476 = !DILocation(line: 240, column: 16, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !45, line: 238, column: 5)
!478 = !DILocation(line: 240, column: 9, scope: !477)
!479 = !DILocation(line: 241, column: 5, scope: !477)
!480 = !DILocation(line: 242, column: 8, scope: !481)
!481 = distinct !DILexicalBlock(scope: !465, file: !45, line: 242, column: 8)
!482 = !DILocation(line: 242, column: 18, scope: !481)
!483 = !DILocation(line: 242, column: 8, scope: !465)
!484 = !DILocalVariable(name: "i", scope: !485, file: !45, line: 245, type: !23)
!485 = distinct !DILexicalBlock(scope: !486, file: !45, line: 244, column: 9)
!486 = distinct !DILexicalBlock(scope: !481, file: !45, line: 243, column: 5)
!487 = !DILocation(line: 245, column: 17, scope: !485)
!488 = !DILocalVariable(name: "n", scope: !485, file: !45, line: 245, type: !23)
!489 = !DILocation(line: 245, column: 20, scope: !485)
!490 = !DILocalVariable(name: "intVariable", scope: !485, file: !45, line: 245, type: !23)
!491 = !DILocation(line: 245, column: 23, scope: !485)
!492 = !DILocation(line: 246, column: 24, scope: !493)
!493 = distinct !DILexicalBlock(scope: !485, file: !45, line: 246, column: 17)
!494 = !DILocation(line: 246, column: 17, scope: !493)
!495 = !DILocation(line: 246, column: 40, scope: !493)
!496 = !DILocation(line: 246, column: 17, scope: !485)
!497 = !DILocation(line: 249, column: 29, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !45, line: 247, column: 13)
!499 = !DILocation(line: 250, column: 24, scope: !500)
!500 = distinct !DILexicalBlock(scope: !498, file: !45, line: 250, column: 17)
!501 = !DILocation(line: 250, column: 22, scope: !500)
!502 = !DILocation(line: 250, column: 29, scope: !503)
!503 = distinct !DILexicalBlock(scope: !500, file: !45, line: 250, column: 17)
!504 = !DILocation(line: 250, column: 33, scope: !503)
!505 = !DILocation(line: 250, column: 31, scope: !503)
!506 = !DILocation(line: 250, column: 17, scope: !500)
!507 = !DILocation(line: 253, column: 32, scope: !508)
!508 = distinct !DILexicalBlock(scope: !503, file: !45, line: 251, column: 17)
!509 = !DILocation(line: 254, column: 17, scope: !508)
!510 = !DILocation(line: 250, column: 37, scope: !503)
!511 = !DILocation(line: 250, column: 17, scope: !503)
!512 = distinct !{!512, !506, !513, !203}
!513 = !DILocation(line: 254, column: 17, scope: !500)
!514 = !DILocation(line: 255, column: 30, scope: !498)
!515 = !DILocation(line: 255, column: 17, scope: !498)
!516 = !DILocation(line: 256, column: 13, scope: !498)
!517 = !DILocation(line: 258, column: 5, scope: !486)
!518 = !DILocation(line: 259, column: 1, scope: !465)
!519 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_14_good", scope: !45, file: !45, line: 261, type: !53, scopeLine: 262, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!520 = !DILocation(line: 263, column: 5, scope: !519)
!521 = !DILocation(line: 264, column: 5, scope: !519)
!522 = !DILocation(line: 265, column: 5, scope: !519)
!523 = !DILocation(line: 266, column: 5, scope: !519)
!524 = !DILocation(line: 267, column: 1, scope: !519)
!525 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !526, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !42}
!528 = !DILocalVariable(name: "line", arg: 1, scope: !525, file: !3, line: 11, type: !42)
!529 = !DILocation(line: 11, column: 25, scope: !525)
!530 = !DILocation(line: 13, column: 1, scope: !525)
!531 = !DILocation(line: 14, column: 8, scope: !532)
!532 = distinct !DILexicalBlock(scope: !525, file: !3, line: 14, column: 8)
!533 = !DILocation(line: 14, column: 13, scope: !532)
!534 = !DILocation(line: 14, column: 8, scope: !525)
!535 = !DILocation(line: 16, column: 24, scope: !536)
!536 = distinct !DILexicalBlock(scope: !532, file: !3, line: 15, column: 5)
!537 = !DILocation(line: 16, column: 9, scope: !536)
!538 = !DILocation(line: 17, column: 5, scope: !536)
!539 = !DILocation(line: 18, column: 5, scope: !525)
!540 = !DILocation(line: 19, column: 1, scope: !525)
!541 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !526, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocalVariable(name: "line", arg: 1, scope: !541, file: !3, line: 20, type: !42)
!543 = !DILocation(line: 20, column: 29, scope: !541)
!544 = !DILocation(line: 22, column: 8, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !3, line: 22, column: 8)
!546 = !DILocation(line: 22, column: 13, scope: !545)
!547 = !DILocation(line: 22, column: 8, scope: !541)
!548 = !DILocation(line: 24, column: 24, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !3, line: 23, column: 5)
!550 = !DILocation(line: 24, column: 9, scope: !549)
!551 = !DILocation(line: 25, column: 5, scope: !549)
!552 = !DILocation(line: 26, column: 1, scope: !541)
!553 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !554, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !72, line: 74, baseType: !23)
!558 = !DILocalVariable(name: "line", arg: 1, scope: !553, file: !3, line: 27, type: !556)
!559 = !DILocation(line: 27, column: 29, scope: !553)
!560 = !DILocation(line: 29, column: 8, scope: !561)
!561 = distinct !DILexicalBlock(scope: !553, file: !3, line: 29, column: 8)
!562 = !DILocation(line: 29, column: 13, scope: !561)
!563 = !DILocation(line: 29, column: 8, scope: !553)
!564 = !DILocation(line: 31, column: 27, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !3, line: 30, column: 5)
!566 = !DILocation(line: 31, column: 9, scope: !565)
!567 = !DILocation(line: 32, column: 5, scope: !565)
!568 = !DILocation(line: 33, column: 1, scope: !553)
!569 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !570, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !23}
!572 = !DILocalVariable(name: "intNumber", arg: 1, scope: !569, file: !3, line: 35, type: !23)
!573 = !DILocation(line: 35, column: 24, scope: !569)
!574 = !DILocation(line: 37, column: 20, scope: !569)
!575 = !DILocation(line: 37, column: 5, scope: !569)
!576 = !DILocation(line: 38, column: 1, scope: !569)
!577 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !578, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !580}
!580 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!581 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !577, file: !3, line: 40, type: !580)
!582 = !DILocation(line: 40, column: 28, scope: !577)
!583 = !DILocation(line: 42, column: 21, scope: !577)
!584 = !DILocation(line: 42, column: 5, scope: !577)
!585 = !DILocation(line: 43, column: 1, scope: !577)
!586 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !587, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !589}
!589 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!590 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !586, file: !3, line: 45, type: !589)
!591 = !DILocation(line: 45, column: 28, scope: !586)
!592 = !DILocation(line: 47, column: 20, scope: !586)
!593 = !DILocation(line: 47, column: 5, scope: !586)
!594 = !DILocation(line: 48, column: 1, scope: !586)
!595 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !596, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !106}
!598 = !DILocalVariable(name: "longNumber", arg: 1, scope: !595, file: !3, line: 50, type: !106)
!599 = !DILocation(line: 50, column: 26, scope: !595)
!600 = !DILocation(line: 52, column: 21, scope: !595)
!601 = !DILocation(line: 52, column: 5, scope: !595)
!602 = !DILocation(line: 53, column: 1, scope: !595)
!603 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !604, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !606}
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !607, line: 27, baseType: !608)
!607 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !105, line: 44, baseType: !106)
!609 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !603, file: !3, line: 55, type: !606)
!610 = !DILocation(line: 55, column: 33, scope: !603)
!611 = !DILocation(line: 57, column: 29, scope: !603)
!612 = !DILocation(line: 57, column: 5, scope: !603)
!613 = !DILocation(line: 58, column: 1, scope: !603)
!614 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !615, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !71}
!617 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !614, file: !3, line: 60, type: !71)
!618 = !DILocation(line: 60, column: 29, scope: !614)
!619 = !DILocation(line: 62, column: 21, scope: !614)
!620 = !DILocation(line: 62, column: 5, scope: !614)
!621 = !DILocation(line: 63, column: 1, scope: !614)
!622 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !623, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !43}
!625 = !DILocalVariable(name: "charHex", arg: 1, scope: !622, file: !3, line: 65, type: !43)
!626 = !DILocation(line: 65, column: 29, scope: !622)
!627 = !DILocation(line: 67, column: 22, scope: !622)
!628 = !DILocation(line: 67, column: 5, scope: !622)
!629 = !DILocation(line: 68, column: 1, scope: !622)
!630 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !631, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !557}
!633 = !DILocalVariable(name: "wideChar", arg: 1, scope: !630, file: !3, line: 70, type: !557)
!634 = !DILocation(line: 70, column: 29, scope: !630)
!635 = !DILocalVariable(name: "s", scope: !630, file: !3, line: 74, type: !636)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 64, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 2)
!639 = !DILocation(line: 74, column: 13, scope: !630)
!640 = !DILocation(line: 75, column: 16, scope: !630)
!641 = !DILocation(line: 75, column: 9, scope: !630)
!642 = !DILocation(line: 75, column: 14, scope: !630)
!643 = !DILocation(line: 76, column: 9, scope: !630)
!644 = !DILocation(line: 76, column: 14, scope: !630)
!645 = !DILocation(line: 77, column: 21, scope: !630)
!646 = !DILocation(line: 77, column: 5, scope: !630)
!647 = !DILocation(line: 78, column: 1, scope: !630)
!648 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !649, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !7}
!651 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !648, file: !3, line: 80, type: !7)
!652 = !DILocation(line: 80, column: 33, scope: !648)
!653 = !DILocation(line: 82, column: 20, scope: !648)
!654 = !DILocation(line: 82, column: 5, scope: !648)
!655 = !DILocation(line: 83, column: 1, scope: !648)
!656 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !657, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !25}
!659 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !656, file: !3, line: 85, type: !25)
!660 = !DILocation(line: 85, column: 45, scope: !656)
!661 = !DILocation(line: 87, column: 22, scope: !656)
!662 = !DILocation(line: 87, column: 5, scope: !656)
!663 = !DILocation(line: 88, column: 1, scope: !656)
!664 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !665, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !667}
!667 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!668 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !664, file: !3, line: 90, type: !667)
!669 = !DILocation(line: 90, column: 29, scope: !664)
!670 = !DILocation(line: 92, column: 20, scope: !664)
!671 = !DILocation(line: 92, column: 5, scope: !664)
!672 = !DILocation(line: 93, column: 1, scope: !664)
!673 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !674, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !678, line: 100, baseType: !679)
!678 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_087/source_code")
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !678, line: 96, size: 64, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !679, file: !678, line: 98, baseType: !23, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !679, file: !678, line: 99, baseType: !23, size: 32, offset: 32)
!683 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !673, file: !3, line: 95, type: !676)
!684 = !DILocation(line: 95, column: 40, scope: !673)
!685 = !DILocation(line: 97, column: 26, scope: !673)
!686 = !DILocation(line: 97, column: 47, scope: !673)
!687 = !DILocation(line: 97, column: 55, scope: !673)
!688 = !DILocation(line: 97, column: 76, scope: !673)
!689 = !DILocation(line: 97, column: 5, scope: !673)
!690 = !DILocation(line: 98, column: 1, scope: !673)
!691 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !692, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !694, !71}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!695 = !DILocalVariable(name: "bytes", arg: 1, scope: !691, file: !3, line: 100, type: !694)
!696 = !DILocation(line: 100, column: 38, scope: !691)
!697 = !DILocalVariable(name: "numBytes", arg: 2, scope: !691, file: !3, line: 100, type: !71)
!698 = !DILocation(line: 100, column: 52, scope: !691)
!699 = !DILocalVariable(name: "i", scope: !691, file: !3, line: 102, type: !71)
!700 = !DILocation(line: 102, column: 12, scope: !691)
!701 = !DILocation(line: 103, column: 12, scope: !702)
!702 = distinct !DILexicalBlock(scope: !691, file: !3, line: 103, column: 5)
!703 = !DILocation(line: 103, column: 10, scope: !702)
!704 = !DILocation(line: 103, column: 17, scope: !705)
!705 = distinct !DILexicalBlock(scope: !702, file: !3, line: 103, column: 5)
!706 = !DILocation(line: 103, column: 21, scope: !705)
!707 = !DILocation(line: 103, column: 19, scope: !705)
!708 = !DILocation(line: 103, column: 5, scope: !702)
!709 = !DILocation(line: 105, column: 24, scope: !710)
!710 = distinct !DILexicalBlock(scope: !705, file: !3, line: 104, column: 5)
!711 = !DILocation(line: 105, column: 30, scope: !710)
!712 = !DILocation(line: 105, column: 9, scope: !710)
!713 = !DILocation(line: 106, column: 5, scope: !710)
!714 = !DILocation(line: 103, column: 31, scope: !705)
!715 = !DILocation(line: 103, column: 5, scope: !705)
!716 = distinct !{!716, !708, !717, !203}
!717 = !DILocation(line: 106, column: 5, scope: !702)
!718 = !DILocation(line: 107, column: 5, scope: !691)
!719 = !DILocation(line: 108, column: 1, scope: !691)
!720 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !721, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!721 = !DISubroutineType(types: !722)
!722 = !{!71, !694, !71, !42}
!723 = !DILocalVariable(name: "bytes", arg: 1, scope: !720, file: !3, line: 113, type: !694)
!724 = !DILocation(line: 113, column: 39, scope: !720)
!725 = !DILocalVariable(name: "numBytes", arg: 2, scope: !720, file: !3, line: 113, type: !71)
!726 = !DILocation(line: 113, column: 53, scope: !720)
!727 = !DILocalVariable(name: "hex", arg: 3, scope: !720, file: !3, line: 113, type: !42)
!728 = !DILocation(line: 113, column: 71, scope: !720)
!729 = !DILocalVariable(name: "numWritten", scope: !720, file: !3, line: 115, type: !71)
!730 = !DILocation(line: 115, column: 12, scope: !720)
!731 = !DILocation(line: 121, column: 5, scope: !720)
!732 = !DILocation(line: 121, column: 12, scope: !720)
!733 = !DILocation(line: 121, column: 25, scope: !720)
!734 = !DILocation(line: 121, column: 23, scope: !720)
!735 = !DILocation(line: 121, column: 34, scope: !720)
!736 = !DILocation(line: 121, column: 37, scope: !720)
!737 = !DILocation(line: 121, column: 67, scope: !720)
!738 = !DILocation(line: 121, column: 70, scope: !720)
!739 = !DILocation(line: 0, scope: !720)
!740 = !DILocalVariable(name: "byte", scope: !741, file: !3, line: 123, type: !23)
!741 = distinct !DILexicalBlock(scope: !720, file: !3, line: 122, column: 5)
!742 = !DILocation(line: 123, column: 13, scope: !741)
!743 = !DILocation(line: 124, column: 17, scope: !741)
!744 = !DILocation(line: 124, column: 25, scope: !741)
!745 = !DILocation(line: 124, column: 23, scope: !741)
!746 = !DILocation(line: 124, column: 9, scope: !741)
!747 = !DILocation(line: 125, column: 45, scope: !741)
!748 = !DILocation(line: 125, column: 29, scope: !741)
!749 = !DILocation(line: 125, column: 9, scope: !741)
!750 = !DILocation(line: 125, column: 15, scope: !741)
!751 = !DILocation(line: 125, column: 27, scope: !741)
!752 = !DILocation(line: 126, column: 9, scope: !741)
!753 = distinct !{!753, !731, !754, !203}
!754 = !DILocation(line: 127, column: 5, scope: !720)
!755 = !DILocation(line: 129, column: 12, scope: !720)
!756 = !DILocation(line: 129, column: 5, scope: !720)
!757 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !758, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!758 = !DISubroutineType(types: !759)
!759 = !{!71, !694, !71, !556}
!760 = !DILocalVariable(name: "bytes", arg: 1, scope: !757, file: !3, line: 135, type: !694)
!761 = !DILocation(line: 135, column: 41, scope: !757)
!762 = !DILocalVariable(name: "numBytes", arg: 2, scope: !757, file: !3, line: 135, type: !71)
!763 = !DILocation(line: 135, column: 55, scope: !757)
!764 = !DILocalVariable(name: "hex", arg: 3, scope: !757, file: !3, line: 135, type: !556)
!765 = !DILocation(line: 135, column: 76, scope: !757)
!766 = !DILocalVariable(name: "numWritten", scope: !757, file: !3, line: 137, type: !71)
!767 = !DILocation(line: 137, column: 12, scope: !757)
!768 = !DILocation(line: 143, column: 5, scope: !757)
!769 = !DILocation(line: 143, column: 12, scope: !757)
!770 = !DILocation(line: 143, column: 25, scope: !757)
!771 = !DILocation(line: 143, column: 23, scope: !757)
!772 = !DILocation(line: 143, column: 34, scope: !757)
!773 = !DILocation(line: 143, column: 47, scope: !757)
!774 = !DILocation(line: 143, column: 55, scope: !757)
!775 = !DILocation(line: 143, column: 53, scope: !757)
!776 = !DILocation(line: 143, column: 37, scope: !757)
!777 = !DILocation(line: 143, column: 68, scope: !757)
!778 = !DILocation(line: 143, column: 81, scope: !757)
!779 = !DILocation(line: 143, column: 89, scope: !757)
!780 = !DILocation(line: 143, column: 87, scope: !757)
!781 = !DILocation(line: 143, column: 100, scope: !757)
!782 = !DILocation(line: 143, column: 71, scope: !757)
!783 = !DILocation(line: 0, scope: !757)
!784 = !DILocalVariable(name: "byte", scope: !785, file: !3, line: 145, type: !23)
!785 = distinct !DILexicalBlock(scope: !757, file: !3, line: 144, column: 5)
!786 = !DILocation(line: 145, column: 13, scope: !785)
!787 = !DILocation(line: 146, column: 18, scope: !785)
!788 = !DILocation(line: 146, column: 26, scope: !785)
!789 = !DILocation(line: 146, column: 24, scope: !785)
!790 = !DILocation(line: 146, column: 9, scope: !785)
!791 = !DILocation(line: 147, column: 45, scope: !785)
!792 = !DILocation(line: 147, column: 29, scope: !785)
!793 = !DILocation(line: 147, column: 9, scope: !785)
!794 = !DILocation(line: 147, column: 15, scope: !785)
!795 = !DILocation(line: 147, column: 27, scope: !785)
!796 = !DILocation(line: 148, column: 9, scope: !785)
!797 = distinct !{!797, !768, !798, !203}
!798 = !DILocation(line: 149, column: 5, scope: !757)
!799 = !DILocation(line: 151, column: 12, scope: !757)
!800 = !DILocation(line: 151, column: 5, scope: !757)
!801 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !802, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!802 = !DISubroutineType(types: !803)
!803 = !{!23}
!804 = !DILocation(line: 158, column: 5, scope: !801)
!805 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !802, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!806 = !DILocation(line: 163, column: 5, scope: !805)
!807 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !802, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!808 = !DILocation(line: 168, column: 13, scope: !807)
!809 = !DILocation(line: 168, column: 20, scope: !807)
!810 = !DILocation(line: 168, column: 5, scope: !807)
!811 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!812 = !DILocation(line: 187, column: 16, scope: !811)
!813 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!814 = !DILocation(line: 188, column: 16, scope: !813)
!815 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!816 = !DILocation(line: 189, column: 16, scope: !815)
!817 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!818 = !DILocation(line: 190, column: 16, scope: !817)
!819 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!820 = !DILocation(line: 191, column: 16, scope: !819)
!821 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!822 = !DILocation(line: 192, column: 16, scope: !821)
!823 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!824 = !DILocation(line: 193, column: 16, scope: !823)
!825 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!826 = !DILocation(line: 194, column: 16, scope: !825)
!827 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!828 = !DILocation(line: 195, column: 16, scope: !827)
!829 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!830 = !DILocation(line: 198, column: 15, scope: !829)
!831 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!832 = !DILocation(line: 199, column: 15, scope: !831)
!833 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!834 = !DILocation(line: 200, column: 15, scope: !833)
!835 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!836 = !DILocation(line: 201, column: 15, scope: !835)
!837 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!838 = !DILocation(line: 202, column: 15, scope: !837)
!839 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!840 = !DILocation(line: 203, column: 15, scope: !839)
!841 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!842 = !DILocation(line: 204, column: 15, scope: !841)
!843 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!844 = !DILocation(line: 205, column: 15, scope: !843)
!845 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!846 = !DILocation(line: 206, column: 15, scope: !845)
