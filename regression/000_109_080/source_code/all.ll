; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@staticFive = dso_local global i32 5, align 4, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !9
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !34
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !36
@globalTrue = dso_local global i32 1, align 4, !dbg !38
@globalFalse = dso_local global i32 0, align 4, !dbg !40
@globalFive = dso_local global i32 5, align 4, !dbg !42
@globalArgc = dso_local global i32 0, align 4, !dbg !44
@globalArgv = dso_local global i8** null, align 8, !dbg !46
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_07_bad() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !65
  store i8* %arraydecay, i8** %data, align 8, !dbg !66
  %1 = load i32, i32* @staticFive, align 4, !dbg !67
  %cmp = icmp eq i32 %1, 5, !dbg !69
  br i1 %cmp, label %if.then, label %if.end14, !dbg !70

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !71, metadata !DIExpression()), !dbg !77
  %2 = load i8*, i8** %data, align 8, !dbg !78
  %call = call i64 @strlen(i8* %2) #7, !dbg !79
  store i64 %call, i64* %dataLen, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !80, metadata !DIExpression()), !dbg !136
  %3 = load i64, i64* %dataLen, align 8, !dbg !137
  %sub = sub i64 100, %3, !dbg !139
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !140
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !141

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !142
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !144
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !145
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !147
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !148

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !149
  %6 = load i64, i64* %dataLen, align 8, !dbg !152
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !153
  %7 = load i64, i64* %dataLen, align 8, !dbg !154
  %sub6 = sub i64 100, %7, !dbg !155
  %conv = trunc i64 %sub6 to i32, !dbg !156
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !157
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !158
  %cmp8 = icmp eq i8* %call7, null, !dbg !159
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !160

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !161
  %9 = load i8*, i8** %data, align 8, !dbg !163
  %10 = load i64, i64* %dataLen, align 8, !dbg !164
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !163
  store i8 0, i8* %arrayidx, align 1, !dbg !165
  br label %if.end, !dbg !166

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !167
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !168
  br label %if.end12, !dbg !169

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !170

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !171

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @staticFive, align 4, !dbg !172
  %cmp15 = icmp eq i32 %12, 5, !dbg !174
  br i1 %cmp15, label %if.then17, label %if.end26, !dbg !175

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !176, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %n, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !182, metadata !DIExpression()), !dbg !183
  %13 = load i8*, i8** %data, align 8, !dbg !184
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !186
  %cmp19 = icmp eq i32 %call18, 1, !dbg !187
  br i1 %cmp19, label %if.then21, label %if.end25, !dbg !188

if.then21:                                        ; preds = %if.then17
  store i32 0, i32* %intVariable, align 4, !dbg !189
  store i32 0, i32* %i, align 4, !dbg !191
  br label %for.cond, !dbg !193

for.cond:                                         ; preds = %for.inc, %if.then21
  %14 = load i32, i32* %i, align 4, !dbg !194
  %15 = load i32, i32* %n, align 4, !dbg !196
  %cmp22 = icmp slt i32 %14, %15, !dbg !197
  br i1 %cmp22, label %for.body, label %for.end, !dbg !198

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !199
  %inc = add nsw i32 %16, 1, !dbg !199
  store i32 %inc, i32* %intVariable, align 4, !dbg !199
  br label %for.inc, !dbg !201

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !202
  %inc24 = add nsw i32 %17, 1, !dbg !202
  store i32 %inc24, i32* %i, align 4, !dbg !202
  br label %for.cond, !dbg !203, !llvm.loop !204

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !207
  call void @printIntLine(i32 %18), !dbg !208
  br label %if.end25, !dbg !209

if.end25:                                         ; preds = %for.end, %if.then17
  br label %if.end26, !dbg !210

if.end26:                                         ; preds = %if.end25, %if.end14
  ret void, !dbg !211
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
define dso_local void @goodB2G1() #0 !dbg !212 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !216
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !216
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !217
  store i8* %arraydecay, i8** %data, align 8, !dbg !218
  %1 = load i32, i32* @staticFive, align 4, !dbg !219
  %cmp = icmp eq i32 %1, 5, !dbg !221
  br i1 %cmp, label %if.then, label %if.end14, !dbg !222

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !223, metadata !DIExpression()), !dbg !226
  %2 = load i8*, i8** %data, align 8, !dbg !227
  %call = call i64 @strlen(i8* %2) #7, !dbg !228
  store i64 %call, i64* %dataLen, align 8, !dbg !226
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !229, metadata !DIExpression()), !dbg !230
  %3 = load i64, i64* %dataLen, align 8, !dbg !231
  %sub = sub i64 100, %3, !dbg !233
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !234
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !235

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !236
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !238
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !239
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !241
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !242

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !243
  %6 = load i64, i64* %dataLen, align 8, !dbg !246
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !247
  %7 = load i64, i64* %dataLen, align 8, !dbg !248
  %sub6 = sub i64 100, %7, !dbg !249
  %conv = trunc i64 %sub6 to i32, !dbg !250
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !251
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !252
  %cmp8 = icmp eq i8* %call7, null, !dbg !253
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !254

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !255
  %9 = load i8*, i8** %data, align 8, !dbg !257
  %10 = load i64, i64* %dataLen, align 8, !dbg !258
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !257
  store i8 0, i8* %arrayidx, align 1, !dbg !259
  br label %if.end, !dbg !260

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !261
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !262
  br label %if.end12, !dbg !263

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !264

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !265

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @staticFive, align 4, !dbg !266
  %cmp15 = icmp ne i32 %12, 5, !dbg !268
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !269

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !270
  br label %if.end30, !dbg !272

if.else:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i32* %n, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !279, metadata !DIExpression()), !dbg !280
  %13 = load i8*, i8** %data, align 8, !dbg !281
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !283
  %cmp19 = icmp eq i32 %call18, 1, !dbg !284
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !285

if.then21:                                        ; preds = %if.else
  %14 = load i32, i32* %n, align 4, !dbg !286
  %cmp22 = icmp slt i32 %14, 10000, !dbg !289
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !290

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !291
  store i32 0, i32* %i, align 4, !dbg !293
  br label %for.cond, !dbg !295

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %i, align 4, !dbg !296
  %16 = load i32, i32* %n, align 4, !dbg !298
  %cmp25 = icmp slt i32 %15, %16, !dbg !299
  br i1 %cmp25, label %for.body, label %for.end, !dbg !300

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !301
  %inc = add nsw i32 %17, 1, !dbg !301
  store i32 %inc, i32* %intVariable, align 4, !dbg !301
  br label %for.inc, !dbg !303

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !304
  %inc27 = add nsw i32 %18, 1, !dbg !304
  store i32 %inc27, i32* %i, align 4, !dbg !304
  br label %for.cond, !dbg !305, !llvm.loop !306

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !308
  call void @printIntLine(i32 %19), !dbg !309
  br label %if.end28, !dbg !310

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !311

if.end29:                                         ; preds = %if.end28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then17
  ret void, !dbg !312
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !313 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !314, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !316, metadata !DIExpression()), !dbg !317
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !317
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !317
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !318
  store i8* %arraydecay, i8** %data, align 8, !dbg !319
  %1 = load i32, i32* @staticFive, align 4, !dbg !320
  %cmp = icmp eq i32 %1, 5, !dbg !322
  br i1 %cmp, label %if.then, label %if.end14, !dbg !323

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !324, metadata !DIExpression()), !dbg !327
  %2 = load i8*, i8** %data, align 8, !dbg !328
  %call = call i64 @strlen(i8* %2) #7, !dbg !329
  store i64 %call, i64* %dataLen, align 8, !dbg !327
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !330, metadata !DIExpression()), !dbg !331
  %3 = load i64, i64* %dataLen, align 8, !dbg !332
  %sub = sub i64 100, %3, !dbg !334
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !335
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !336

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !337
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !339
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !340
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !342
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !343

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !344
  %6 = load i64, i64* %dataLen, align 8, !dbg !347
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !348
  %7 = load i64, i64* %dataLen, align 8, !dbg !349
  %sub6 = sub i64 100, %7, !dbg !350
  %conv = trunc i64 %sub6 to i32, !dbg !351
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !352
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !353
  %cmp8 = icmp eq i8* %call7, null, !dbg !354
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !355

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !356
  %9 = load i8*, i8** %data, align 8, !dbg !358
  %10 = load i64, i64* %dataLen, align 8, !dbg !359
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !358
  store i8 0, i8* %arrayidx, align 1, !dbg !360
  br label %if.end, !dbg !361

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !362
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !363
  br label %if.end12, !dbg !364

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !365

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !366

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @staticFive, align 4, !dbg !367
  %cmp15 = icmp eq i32 %12, 5, !dbg !369
  br i1 %cmp15, label %if.then17, label %if.end30, !dbg !370

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !371, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata i32* %n, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !377, metadata !DIExpression()), !dbg !378
  %13 = load i8*, i8** %data, align 8, !dbg !379
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !381
  %cmp19 = icmp eq i32 %call18, 1, !dbg !382
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !383

if.then21:                                        ; preds = %if.then17
  %14 = load i32, i32* %n, align 4, !dbg !384
  %cmp22 = icmp slt i32 %14, 10000, !dbg !387
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !388

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !389
  store i32 0, i32* %i, align 4, !dbg !391
  br label %for.cond, !dbg !393

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %i, align 4, !dbg !394
  %16 = load i32, i32* %n, align 4, !dbg !396
  %cmp25 = icmp slt i32 %15, %16, !dbg !397
  br i1 %cmp25, label %for.body, label %for.end, !dbg !398

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !399
  %inc = add nsw i32 %17, 1, !dbg !399
  store i32 %inc, i32* %intVariable, align 4, !dbg !399
  br label %for.inc, !dbg !401

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !402
  %inc27 = add nsw i32 %18, 1, !dbg !402
  store i32 %inc27, i32* %i, align 4, !dbg !402
  br label %for.cond, !dbg !403, !llvm.loop !404

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !406
  call void @printIntLine(i32 %19), !dbg !407
  br label %if.end28, !dbg !408

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !409

if.end29:                                         ; preds = %if.end28, %if.then17
  br label %if.end30, !dbg !410

if.end30:                                         ; preds = %if.end29, %if.end14
  ret void, !dbg !411
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !412 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !416
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !416
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !417
  store i8* %arraydecay, i8** %data, align 8, !dbg !418
  %1 = load i32, i32* @staticFive, align 4, !dbg !419
  %cmp = icmp ne i32 %1, 5, !dbg !421
  br i1 %cmp, label %if.then, label %if.else, !dbg !422

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !423
  br label %if.end, !dbg !425

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !426
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !428
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticFive, align 4, !dbg !429
  %cmp1 = icmp eq i32 %3, 5, !dbg !431
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !432

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !433, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.declare(metadata i32* %n, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !439, metadata !DIExpression()), !dbg !440
  %4 = load i8*, i8** %data, align 8, !dbg !441
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !443
  %cmp4 = icmp eq i32 %call3, 1, !dbg !444
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !445

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !446
  store i32 0, i32* %i, align 4, !dbg !448
  br label %for.cond, !dbg !450

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !451
  %6 = load i32, i32* %n, align 4, !dbg !453
  %cmp6 = icmp slt i32 %5, %6, !dbg !454
  br i1 %cmp6, label %for.body, label %for.end, !dbg !455

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !456
  %inc = add nsw i32 %7, 1, !dbg !456
  store i32 %inc, i32* %intVariable, align 4, !dbg !456
  br label %for.inc, !dbg !458

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !459
  %inc7 = add nsw i32 %8, 1, !dbg !459
  store i32 %inc7, i32* %i, align 4, !dbg !459
  br label %for.cond, !dbg !460, !llvm.loop !461

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !463
  call void @printIntLine(i32 %9), !dbg !464
  br label %if.end8, !dbg !465

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !466

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !467
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !468 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !471, metadata !DIExpression()), !dbg !472
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !472
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !472
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !473
  store i8* %arraydecay, i8** %data, align 8, !dbg !474
  %1 = load i32, i32* @staticFive, align 4, !dbg !475
  %cmp = icmp eq i32 %1, 5, !dbg !477
  br i1 %cmp, label %if.then, label %if.end, !dbg !478

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !479
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !481
  br label %if.end, !dbg !482

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticFive, align 4, !dbg !483
  %cmp1 = icmp eq i32 %3, 5, !dbg !485
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !486

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !487, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata i32* %n, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !493, metadata !DIExpression()), !dbg !494
  %4 = load i8*, i8** %data, align 8, !dbg !495
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !497
  %cmp4 = icmp eq i32 %call3, 1, !dbg !498
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !499

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !500
  store i32 0, i32* %i, align 4, !dbg !502
  br label %for.cond, !dbg !504

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !505
  %6 = load i32, i32* %n, align 4, !dbg !507
  %cmp6 = icmp slt i32 %5, %6, !dbg !508
  br i1 %cmp6, label %for.body, label %for.end, !dbg !509

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !510
  %inc = add nsw i32 %7, 1, !dbg !510
  store i32 %inc, i32* %intVariable, align 4, !dbg !510
  br label %for.inc, !dbg !512

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !513
  %inc7 = add nsw i32 %8, 1, !dbg !513
  store i32 %inc7, i32* %i, align 4, !dbg !513
  br label %for.cond, !dbg !514, !llvm.loop !515

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !517
  call void @printIntLine(i32 %9), !dbg !518
  br label %if.end8, !dbg !519

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !520

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_07_good() #0 !dbg !522 {
entry:
  call void @goodB2G1(), !dbg !523
  call void @goodB2G2(), !dbg !524
  call void @goodG2B1(), !dbg !525
  call void @goodG2B2(), !dbg !526
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !528 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !531, metadata !DIExpression()), !dbg !532
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !533
  %0 = load i8*, i8** %line.addr, align 8, !dbg !534
  %cmp = icmp ne i8* %0, null, !dbg !536
  br i1 %cmp, label %if.then, label %if.end, !dbg !537

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !538
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !540
  br label %if.end, !dbg !541

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.8, i64 0, i64 0)), !dbg !542
  ret void, !dbg !543
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !544 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !545, metadata !DIExpression()), !dbg !546
  %0 = load i8*, i8** %line.addr, align 8, !dbg !547
  %cmp = icmp ne i8* %0, null, !dbg !549
  br i1 %cmp, label %if.then, label %if.end, !dbg !550

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !551
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !553
  br label %if.end, !dbg !554

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !556 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !561, metadata !DIExpression()), !dbg !562
  %0 = load i32*, i32** %line.addr, align 8, !dbg !563
  %cmp = icmp ne i32* %0, null, !dbg !565
  br i1 %cmp, label %if.then, label %if.end, !dbg !566

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !567
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !569
  br label %if.end, !dbg !570

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !571
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !572 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !575, metadata !DIExpression()), !dbg !576
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !577
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.12, i64 0, i64 0), i32 %0), !dbg !578
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !580 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !584, metadata !DIExpression()), !dbg !585
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !586
  %conv = sext i16 %0 to i32, !dbg !586
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.13, i64 0, i64 0), i32 %conv), !dbg !587
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !589 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !593, metadata !DIExpression()), !dbg !594
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !595
  %conv = fpext float %0 to double, !dbg !595
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.14, i64 0, i64 0), double %conv), !dbg !596
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !598 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !601, metadata !DIExpression()), !dbg !602
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !603
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !604
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !606 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !612, metadata !DIExpression()), !dbg !613
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !614
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !615
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !617 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !620, metadata !DIExpression()), !dbg !621
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !622
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !623
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !625 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !628, metadata !DIExpression()), !dbg !629
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !630
  %conv = sext i8 %0 to i32, !dbg !630
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !631
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !633 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !636, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !638, metadata !DIExpression()), !dbg !642
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !643
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !644
  store i32 %0, i32* %arrayidx, align 4, !dbg !645
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !646
  store i32 0, i32* %arrayidx1, align 4, !dbg !647
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !648
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !649
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !651 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !654, metadata !DIExpression()), !dbg !655
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !656
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !657
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !659 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !662, metadata !DIExpression()), !dbg !663
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !664
  %conv = zext i8 %0 to i32, !dbg !664
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !665
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !667 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !671, metadata !DIExpression()), !dbg !672
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !673
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !674
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !676 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !686, metadata !DIExpression()), !dbg !687
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !688
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !689
  %1 = load i32, i32* %intOne, align 4, !dbg !689
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !690
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !691
  %3 = load i32, i32* %intTwo, align 4, !dbg !691
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !692
  ret void, !dbg !693
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !694 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !698, metadata !DIExpression()), !dbg !699
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !700, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.declare(metadata i64* %i, metadata !702, metadata !DIExpression()), !dbg !703
  store i64 0, i64* %i, align 8, !dbg !704
  br label %for.cond, !dbg !706

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !707
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !709
  %cmp = icmp ult i64 %0, %1, !dbg !710
  br i1 %cmp, label %for.body, label %for.end, !dbg !711

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !712
  %3 = load i64, i64* %i, align 8, !dbg !714
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !712
  %4 = load i8, i8* %arrayidx, align 1, !dbg !712
  %conv = zext i8 %4 to i32, !dbg !712
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !715
  br label %for.inc, !dbg !716

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !717
  %inc = add i64 %5, 1, !dbg !717
  store i64 %inc, i64* %i, align 8, !dbg !717
  br label %for.cond, !dbg !718, !llvm.loop !719

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !721
  ret void, !dbg !722
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !723 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !726, metadata !DIExpression()), !dbg !727
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !728, metadata !DIExpression()), !dbg !729
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !730, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !732, metadata !DIExpression()), !dbg !733
  store i64 0, i64* %numWritten, align 8, !dbg !733
  br label %while.cond, !dbg !734

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !735
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !736
  %cmp = icmp ult i64 %0, %1, !dbg !737
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !738

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !739
  %2 = load i16*, i16** %call, align 8, !dbg !739
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !739
  %4 = load i64, i64* %numWritten, align 8, !dbg !739
  %mul = mul i64 2, %4, !dbg !739
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !739
  %5 = load i8, i8* %arrayidx, align 1, !dbg !739
  %conv = sext i8 %5 to i32, !dbg !739
  %idxprom = sext i32 %conv to i64, !dbg !739
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !739
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !739
  %conv2 = zext i16 %6 to i32, !dbg !739
  %and = and i32 %conv2, 4096, !dbg !739
  %tobool = icmp ne i32 %and, 0, !dbg !739
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !740

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !741
  %7 = load i16*, i16** %call3, align 8, !dbg !741
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !741
  %9 = load i64, i64* %numWritten, align 8, !dbg !741
  %mul4 = mul i64 2, %9, !dbg !741
  %add = add i64 %mul4, 1, !dbg !741
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !741
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !741
  %conv6 = sext i8 %10 to i32, !dbg !741
  %idxprom7 = sext i32 %conv6 to i64, !dbg !741
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !741
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !741
  %conv9 = zext i16 %11 to i32, !dbg !741
  %and10 = and i32 %conv9, 4096, !dbg !741
  %tobool11 = icmp ne i32 %and10, 0, !dbg !740
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !742
  br i1 %12, label %while.body, label %while.end, !dbg !734

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !743, metadata !DIExpression()), !dbg !745
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !746
  %14 = load i64, i64* %numWritten, align 8, !dbg !747
  %mul12 = mul i64 2, %14, !dbg !748
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !746
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !749
  %15 = load i32, i32* %byte, align 4, !dbg !750
  %conv15 = trunc i32 %15 to i8, !dbg !751
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !752
  %17 = load i64, i64* %numWritten, align 8, !dbg !753
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !752
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !754
  %18 = load i64, i64* %numWritten, align 8, !dbg !755
  %inc = add i64 %18, 1, !dbg !755
  store i64 %inc, i64* %numWritten, align 8, !dbg !755
  br label %while.cond, !dbg !734, !llvm.loop !756

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !758
  ret i64 %19, !dbg !759
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !760 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !763, metadata !DIExpression()), !dbg !764
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !765, metadata !DIExpression()), !dbg !766
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !767, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !769, metadata !DIExpression()), !dbg !770
  store i64 0, i64* %numWritten, align 8, !dbg !770
  br label %while.cond, !dbg !771

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !772
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !773
  %cmp = icmp ult i64 %0, %1, !dbg !774
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !775

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !776
  %3 = load i64, i64* %numWritten, align 8, !dbg !777
  %mul = mul i64 2, %3, !dbg !778
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !776
  %4 = load i32, i32* %arrayidx, align 4, !dbg !776
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !779
  %tobool = icmp ne i32 %call, 0, !dbg !779
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !780

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !781
  %6 = load i64, i64* %numWritten, align 8, !dbg !782
  %mul1 = mul i64 2, %6, !dbg !783
  %add = add i64 %mul1, 1, !dbg !784
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !781
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !781
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !785
  %tobool4 = icmp ne i32 %call3, 0, !dbg !780
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !786
  br i1 %8, label %while.body, label %while.end, !dbg !771

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !787, metadata !DIExpression()), !dbg !789
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !790
  %10 = load i64, i64* %numWritten, align 8, !dbg !791
  %mul5 = mul i64 2, %10, !dbg !792
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !790
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !793
  %11 = load i32, i32* %byte, align 4, !dbg !794
  %conv = trunc i32 %11 to i8, !dbg !795
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !796
  %13 = load i64, i64* %numWritten, align 8, !dbg !797
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !796
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !798
  %14 = load i64, i64* %numWritten, align 8, !dbg !799
  %inc = add i64 %14, 1, !dbg !799
  store i64 %inc, i64* %numWritten, align 8, !dbg !799
  br label %while.cond, !dbg !771, !llvm.loop !800

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !802
  ret i64 %15, !dbg !803
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !804 {
entry:
  ret i32 1, !dbg !807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !808 {
entry:
  ret i32 0, !dbg !809
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !810 {
entry:
  %call = call i32 @rand() #8, !dbg !811
  %rem = srem i32 %call, 2, !dbg !812
  ret i32 %rem, !dbg !813
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !814 {
entry:
  ret void, !dbg !815
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !816 {
entry:
  ret void, !dbg !817
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !818 {
entry:
  ret void, !dbg !819
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !820 {
entry:
  ret void, !dbg !821
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !822 {
entry:
  ret void, !dbg !823
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !824 {
entry:
  ret void, !dbg !825
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !826 {
entry:
  ret void, !dbg !827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !828 {
entry:
  ret void, !dbg !829
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !830 {
entry:
  ret void, !dbg !831
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !832 {
entry:
  ret void, !dbg !833
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !834 {
entry:
  ret void, !dbg !835
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !836 {
entry:
  ret void, !dbg !837
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !838 {
entry:
  ret void, !dbg !839
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !840 {
entry:
  ret void, !dbg !841
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !842 {
entry:
  ret void, !dbg !843
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !844 {
entry:
  ret void, !dbg !845
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !846 {
entry:
  ret void, !dbg !847
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !848 {
entry:
  ret void, !dbg !849
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

!llvm.dbg.cu = !{!2, !11}
!llvm.ident = !{!51, !51}
!llvm.module.flags = !{!52, !53, !54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticFive", scope: !2, file: !3, line: 36, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_07.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_080/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !11, file: !12, line: 174, type: !7, isLocal: false, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !30, globals: !33, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_080/source_code")
!13 = !{!14}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 46, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!18 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!30 = !{!6, !7, !31, !32}
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!9, !34, !36, !38, !40, !42, !44, !46}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !11, file: !12, line: 175, type: !7, isLocal: false, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !11, file: !12, line: 176, type: !7, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "globalTrue", scope: !11, file: !12, line: 181, type: !7, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "globalFalse", scope: !11, file: !12, line: 182, type: !7, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "globalFive", scope: !11, file: !12, line: 183, type: !7, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalArgc", scope: !11, file: !12, line: 214, type: !7, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalArgv", scope: !11, file: !12, line: 215, type: !48, isLocal: false, isDefinition: true)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !{!"clang version 12.0.0"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_07_bad", scope: !3, file: !3, line: 40, type: !56, scopeLine: 41, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !3, line: 42, type: !49)
!59 = !DILocation(line: 42, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !3, line: 43, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 43, column: 10, scope: !55)
!65 = !DILocation(line: 44, column: 12, scope: !55)
!66 = !DILocation(line: 44, column: 10, scope: !55)
!67 = !DILocation(line: 45, column: 8, scope: !68)
!68 = distinct !DILexicalBlock(scope: !55, file: !3, line: 45, column: 8)
!69 = !DILocation(line: 45, column: 18, scope: !68)
!70 = !DILocation(line: 45, column: 8, scope: !55)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !3, line: 49, type: !74)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 47, column: 9)
!73 = distinct !DILexicalBlock(scope: !68, file: !3, line: 46, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 49, column: 20, scope: !72)
!78 = !DILocation(line: 49, column: 37, scope: !72)
!79 = !DILocation(line: 49, column: 30, scope: !72)
!80 = !DILocalVariable(name: "pFile", scope: !72, file: !3, line: 50, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !83, line: 7, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !85, line: 49, size: 1728, elements: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !102, !104, !105, !106, !110, !111, !113, !117, !120, !122, !125, !128, !129, !130, !131, !132}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !84, file: !85, line: 51, baseType: !7, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !84, file: !85, line: 54, baseType: !49, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !84, file: !85, line: 55, baseType: !49, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !84, file: !85, line: 56, baseType: !49, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !84, file: !85, line: 57, baseType: !49, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !84, file: !85, line: 58, baseType: !49, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !84, file: !85, line: 59, baseType: !49, size: 64, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !84, file: !85, line: 60, baseType: !49, size: 64, offset: 448)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !84, file: !85, line: 61, baseType: !49, size: 64, offset: 512)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !84, file: !85, line: 64, baseType: !49, size: 64, offset: 576)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !84, file: !85, line: 65, baseType: !49, size: 64, offset: 640)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !84, file: !85, line: 66, baseType: !49, size: 64, offset: 704)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !84, file: !85, line: 68, baseType: !100, size: 64, offset: 768)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !85, line: 36, flags: DIFlagFwdDecl)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !84, file: !85, line: 70, baseType: !103, size: 64, offset: 832)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !84, file: !85, line: 72, baseType: !7, size: 32, offset: 896)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !84, file: !85, line: 73, baseType: !7, size: 32, offset: 928)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !84, file: !85, line: 74, baseType: !107, size: 64, offset: 960)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !108, line: 152, baseType: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!109 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !84, file: !85, line: 77, baseType: !31, size: 16, offset: 1024)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !84, file: !85, line: 78, baseType: !112, size: 8, offset: 1040)
!112 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !84, file: !85, line: 79, baseType: !114, size: 8, offset: 1048)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 1)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !84, file: !85, line: 81, baseType: !118, size: 64, offset: 1088)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !85, line: 43, baseType: null)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !84, file: !85, line: 89, baseType: !121, size: 64, offset: 1152)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !108, line: 153, baseType: !109)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !84, file: !85, line: 91, baseType: !123, size: 64, offset: 1216)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !85, line: 37, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !84, file: !85, line: 92, baseType: !126, size: 64, offset: 1280)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !85, line: 38, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !84, file: !85, line: 93, baseType: !103, size: 64, offset: 1344)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !84, file: !85, line: 94, baseType: !6, size: 64, offset: 1408)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !84, file: !85, line: 95, baseType: !74, size: 64, offset: 1472)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !84, file: !85, line: 96, baseType: !7, size: 32, offset: 1536)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !84, file: !85, line: 98, baseType: !133, size: 160, offset: 1568)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 160, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 20)
!136 = !DILocation(line: 50, column: 20, scope: !72)
!137 = !DILocation(line: 52, column: 21, scope: !138)
!138 = distinct !DILexicalBlock(scope: !72, file: !3, line: 52, column: 17)
!139 = !DILocation(line: 52, column: 20, scope: !138)
!140 = !DILocation(line: 52, column: 29, scope: !138)
!141 = !DILocation(line: 52, column: 17, scope: !72)
!142 = !DILocation(line: 54, column: 25, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !3, line: 53, column: 13)
!144 = !DILocation(line: 54, column: 23, scope: !143)
!145 = !DILocation(line: 55, column: 21, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !3, line: 55, column: 21)
!147 = !DILocation(line: 55, column: 27, scope: !146)
!148 = !DILocation(line: 55, column: 21, scope: !143)
!149 = !DILocation(line: 58, column: 31, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 58, column: 25)
!151 = distinct !DILexicalBlock(scope: !146, file: !3, line: 56, column: 17)
!152 = !DILocation(line: 58, column: 36, scope: !150)
!153 = !DILocation(line: 58, column: 35, scope: !150)
!154 = !DILocation(line: 58, column: 55, scope: !150)
!155 = !DILocation(line: 58, column: 54, scope: !150)
!156 = !DILocation(line: 58, column: 45, scope: !150)
!157 = !DILocation(line: 58, column: 65, scope: !150)
!158 = !DILocation(line: 58, column: 25, scope: !150)
!159 = !DILocation(line: 58, column: 72, scope: !150)
!160 = !DILocation(line: 58, column: 25, scope: !151)
!161 = !DILocation(line: 60, column: 25, scope: !162)
!162 = distinct !DILexicalBlock(scope: !150, file: !3, line: 59, column: 21)
!163 = !DILocation(line: 62, column: 25, scope: !162)
!164 = !DILocation(line: 62, column: 30, scope: !162)
!165 = !DILocation(line: 62, column: 39, scope: !162)
!166 = !DILocation(line: 63, column: 21, scope: !162)
!167 = !DILocation(line: 64, column: 28, scope: !151)
!168 = !DILocation(line: 64, column: 21, scope: !151)
!169 = !DILocation(line: 65, column: 17, scope: !151)
!170 = !DILocation(line: 66, column: 13, scope: !143)
!171 = !DILocation(line: 68, column: 5, scope: !73)
!172 = !DILocation(line: 69, column: 8, scope: !173)
!173 = distinct !DILexicalBlock(scope: !55, file: !3, line: 69, column: 8)
!174 = !DILocation(line: 69, column: 18, scope: !173)
!175 = !DILocation(line: 69, column: 8, scope: !55)
!176 = !DILocalVariable(name: "i", scope: !177, file: !3, line: 72, type: !7)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 71, column: 9)
!178 = distinct !DILexicalBlock(scope: !173, file: !3, line: 70, column: 5)
!179 = !DILocation(line: 72, column: 17, scope: !177)
!180 = !DILocalVariable(name: "n", scope: !177, file: !3, line: 72, type: !7)
!181 = !DILocation(line: 72, column: 20, scope: !177)
!182 = !DILocalVariable(name: "intVariable", scope: !177, file: !3, line: 72, type: !7)
!183 = !DILocation(line: 72, column: 23, scope: !177)
!184 = !DILocation(line: 73, column: 24, scope: !185)
!185 = distinct !DILexicalBlock(scope: !177, file: !3, line: 73, column: 17)
!186 = !DILocation(line: 73, column: 17, scope: !185)
!187 = !DILocation(line: 73, column: 40, scope: !185)
!188 = !DILocation(line: 73, column: 17, scope: !177)
!189 = !DILocation(line: 76, column: 29, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 74, column: 13)
!191 = !DILocation(line: 77, column: 24, scope: !192)
!192 = distinct !DILexicalBlock(scope: !190, file: !3, line: 77, column: 17)
!193 = !DILocation(line: 77, column: 22, scope: !192)
!194 = !DILocation(line: 77, column: 29, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !3, line: 77, column: 17)
!196 = !DILocation(line: 77, column: 33, scope: !195)
!197 = !DILocation(line: 77, column: 31, scope: !195)
!198 = !DILocation(line: 77, column: 17, scope: !192)
!199 = !DILocation(line: 80, column: 32, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !3, line: 78, column: 17)
!201 = !DILocation(line: 81, column: 17, scope: !200)
!202 = !DILocation(line: 77, column: 37, scope: !195)
!203 = !DILocation(line: 77, column: 17, scope: !195)
!204 = distinct !{!204, !198, !205, !206}
!205 = !DILocation(line: 81, column: 17, scope: !192)
!206 = !{!"llvm.loop.mustprogress"}
!207 = !DILocation(line: 82, column: 30, scope: !190)
!208 = !DILocation(line: 82, column: 17, scope: !190)
!209 = !DILocation(line: 83, column: 13, scope: !190)
!210 = !DILocation(line: 85, column: 5, scope: !178)
!211 = !DILocation(line: 86, column: 1, scope: !55)
!212 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 93, type: !56, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!213 = !DILocalVariable(name: "data", scope: !212, file: !3, line: 95, type: !49)
!214 = !DILocation(line: 95, column: 12, scope: !212)
!215 = !DILocalVariable(name: "dataBuffer", scope: !212, file: !3, line: 96, type: !61)
!216 = !DILocation(line: 96, column: 10, scope: !212)
!217 = !DILocation(line: 97, column: 12, scope: !212)
!218 = !DILocation(line: 97, column: 10, scope: !212)
!219 = !DILocation(line: 98, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !212, file: !3, line: 98, column: 8)
!221 = !DILocation(line: 98, column: 18, scope: !220)
!222 = !DILocation(line: 98, column: 8, scope: !212)
!223 = !DILocalVariable(name: "dataLen", scope: !224, file: !3, line: 102, type: !74)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 100, column: 9)
!225 = distinct !DILexicalBlock(scope: !220, file: !3, line: 99, column: 5)
!226 = !DILocation(line: 102, column: 20, scope: !224)
!227 = !DILocation(line: 102, column: 37, scope: !224)
!228 = !DILocation(line: 102, column: 30, scope: !224)
!229 = !DILocalVariable(name: "pFile", scope: !224, file: !3, line: 103, type: !81)
!230 = !DILocation(line: 103, column: 20, scope: !224)
!231 = !DILocation(line: 105, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !224, file: !3, line: 105, column: 17)
!233 = !DILocation(line: 105, column: 20, scope: !232)
!234 = !DILocation(line: 105, column: 29, scope: !232)
!235 = !DILocation(line: 105, column: 17, scope: !224)
!236 = !DILocation(line: 107, column: 25, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !3, line: 106, column: 13)
!238 = !DILocation(line: 107, column: 23, scope: !237)
!239 = !DILocation(line: 108, column: 21, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !3, line: 108, column: 21)
!241 = !DILocation(line: 108, column: 27, scope: !240)
!242 = !DILocation(line: 108, column: 21, scope: !237)
!243 = !DILocation(line: 111, column: 31, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 111, column: 25)
!245 = distinct !DILexicalBlock(scope: !240, file: !3, line: 109, column: 17)
!246 = !DILocation(line: 111, column: 36, scope: !244)
!247 = !DILocation(line: 111, column: 35, scope: !244)
!248 = !DILocation(line: 111, column: 55, scope: !244)
!249 = !DILocation(line: 111, column: 54, scope: !244)
!250 = !DILocation(line: 111, column: 45, scope: !244)
!251 = !DILocation(line: 111, column: 65, scope: !244)
!252 = !DILocation(line: 111, column: 25, scope: !244)
!253 = !DILocation(line: 111, column: 72, scope: !244)
!254 = !DILocation(line: 111, column: 25, scope: !245)
!255 = !DILocation(line: 113, column: 25, scope: !256)
!256 = distinct !DILexicalBlock(scope: !244, file: !3, line: 112, column: 21)
!257 = !DILocation(line: 115, column: 25, scope: !256)
!258 = !DILocation(line: 115, column: 30, scope: !256)
!259 = !DILocation(line: 115, column: 39, scope: !256)
!260 = !DILocation(line: 116, column: 21, scope: !256)
!261 = !DILocation(line: 117, column: 28, scope: !245)
!262 = !DILocation(line: 117, column: 21, scope: !245)
!263 = !DILocation(line: 118, column: 17, scope: !245)
!264 = !DILocation(line: 119, column: 13, scope: !237)
!265 = !DILocation(line: 121, column: 5, scope: !225)
!266 = !DILocation(line: 122, column: 8, scope: !267)
!267 = distinct !DILexicalBlock(scope: !212, file: !3, line: 122, column: 8)
!268 = !DILocation(line: 122, column: 18, scope: !267)
!269 = !DILocation(line: 122, column: 8, scope: !212)
!270 = !DILocation(line: 125, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !3, line: 123, column: 5)
!272 = !DILocation(line: 126, column: 5, scope: !271)
!273 = !DILocalVariable(name: "i", scope: !274, file: !3, line: 130, type: !7)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 129, column: 9)
!275 = distinct !DILexicalBlock(scope: !267, file: !3, line: 128, column: 5)
!276 = !DILocation(line: 130, column: 17, scope: !274)
!277 = !DILocalVariable(name: "n", scope: !274, file: !3, line: 130, type: !7)
!278 = !DILocation(line: 130, column: 20, scope: !274)
!279 = !DILocalVariable(name: "intVariable", scope: !274, file: !3, line: 130, type: !7)
!280 = !DILocation(line: 130, column: 23, scope: !274)
!281 = !DILocation(line: 131, column: 24, scope: !282)
!282 = distinct !DILexicalBlock(scope: !274, file: !3, line: 131, column: 17)
!283 = !DILocation(line: 131, column: 17, scope: !282)
!284 = !DILocation(line: 131, column: 40, scope: !282)
!285 = !DILocation(line: 131, column: 17, scope: !274)
!286 = !DILocation(line: 134, column: 21, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 134, column: 21)
!288 = distinct !DILexicalBlock(scope: !282, file: !3, line: 132, column: 13)
!289 = !DILocation(line: 134, column: 23, scope: !287)
!290 = !DILocation(line: 134, column: 21, scope: !288)
!291 = !DILocation(line: 136, column: 33, scope: !292)
!292 = distinct !DILexicalBlock(scope: !287, file: !3, line: 135, column: 17)
!293 = !DILocation(line: 137, column: 28, scope: !294)
!294 = distinct !DILexicalBlock(scope: !292, file: !3, line: 137, column: 21)
!295 = !DILocation(line: 137, column: 26, scope: !294)
!296 = !DILocation(line: 137, column: 33, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !3, line: 137, column: 21)
!298 = !DILocation(line: 137, column: 37, scope: !297)
!299 = !DILocation(line: 137, column: 35, scope: !297)
!300 = !DILocation(line: 137, column: 21, scope: !294)
!301 = !DILocation(line: 140, column: 36, scope: !302)
!302 = distinct !DILexicalBlock(scope: !297, file: !3, line: 138, column: 21)
!303 = !DILocation(line: 141, column: 21, scope: !302)
!304 = !DILocation(line: 137, column: 41, scope: !297)
!305 = !DILocation(line: 137, column: 21, scope: !297)
!306 = distinct !{!306, !300, !307, !206}
!307 = !DILocation(line: 141, column: 21, scope: !294)
!308 = !DILocation(line: 142, column: 34, scope: !292)
!309 = !DILocation(line: 142, column: 21, scope: !292)
!310 = !DILocation(line: 143, column: 17, scope: !292)
!311 = !DILocation(line: 144, column: 13, scope: !288)
!312 = !DILocation(line: 147, column: 1, scope: !212)
!313 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 150, type: !56, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!314 = !DILocalVariable(name: "data", scope: !313, file: !3, line: 152, type: !49)
!315 = !DILocation(line: 152, column: 12, scope: !313)
!316 = !DILocalVariable(name: "dataBuffer", scope: !313, file: !3, line: 153, type: !61)
!317 = !DILocation(line: 153, column: 10, scope: !313)
!318 = !DILocation(line: 154, column: 12, scope: !313)
!319 = !DILocation(line: 154, column: 10, scope: !313)
!320 = !DILocation(line: 155, column: 8, scope: !321)
!321 = distinct !DILexicalBlock(scope: !313, file: !3, line: 155, column: 8)
!322 = !DILocation(line: 155, column: 18, scope: !321)
!323 = !DILocation(line: 155, column: 8, scope: !313)
!324 = !DILocalVariable(name: "dataLen", scope: !325, file: !3, line: 159, type: !74)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 157, column: 9)
!326 = distinct !DILexicalBlock(scope: !321, file: !3, line: 156, column: 5)
!327 = !DILocation(line: 159, column: 20, scope: !325)
!328 = !DILocation(line: 159, column: 37, scope: !325)
!329 = !DILocation(line: 159, column: 30, scope: !325)
!330 = !DILocalVariable(name: "pFile", scope: !325, file: !3, line: 160, type: !81)
!331 = !DILocation(line: 160, column: 20, scope: !325)
!332 = !DILocation(line: 162, column: 21, scope: !333)
!333 = distinct !DILexicalBlock(scope: !325, file: !3, line: 162, column: 17)
!334 = !DILocation(line: 162, column: 20, scope: !333)
!335 = !DILocation(line: 162, column: 29, scope: !333)
!336 = !DILocation(line: 162, column: 17, scope: !325)
!337 = !DILocation(line: 164, column: 25, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !3, line: 163, column: 13)
!339 = !DILocation(line: 164, column: 23, scope: !338)
!340 = !DILocation(line: 165, column: 21, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !3, line: 165, column: 21)
!342 = !DILocation(line: 165, column: 27, scope: !341)
!343 = !DILocation(line: 165, column: 21, scope: !338)
!344 = !DILocation(line: 168, column: 31, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 168, column: 25)
!346 = distinct !DILexicalBlock(scope: !341, file: !3, line: 166, column: 17)
!347 = !DILocation(line: 168, column: 36, scope: !345)
!348 = !DILocation(line: 168, column: 35, scope: !345)
!349 = !DILocation(line: 168, column: 55, scope: !345)
!350 = !DILocation(line: 168, column: 54, scope: !345)
!351 = !DILocation(line: 168, column: 45, scope: !345)
!352 = !DILocation(line: 168, column: 65, scope: !345)
!353 = !DILocation(line: 168, column: 25, scope: !345)
!354 = !DILocation(line: 168, column: 72, scope: !345)
!355 = !DILocation(line: 168, column: 25, scope: !346)
!356 = !DILocation(line: 170, column: 25, scope: !357)
!357 = distinct !DILexicalBlock(scope: !345, file: !3, line: 169, column: 21)
!358 = !DILocation(line: 172, column: 25, scope: !357)
!359 = !DILocation(line: 172, column: 30, scope: !357)
!360 = !DILocation(line: 172, column: 39, scope: !357)
!361 = !DILocation(line: 173, column: 21, scope: !357)
!362 = !DILocation(line: 174, column: 28, scope: !346)
!363 = !DILocation(line: 174, column: 21, scope: !346)
!364 = !DILocation(line: 175, column: 17, scope: !346)
!365 = !DILocation(line: 176, column: 13, scope: !338)
!366 = !DILocation(line: 178, column: 5, scope: !326)
!367 = !DILocation(line: 179, column: 8, scope: !368)
!368 = distinct !DILexicalBlock(scope: !313, file: !3, line: 179, column: 8)
!369 = !DILocation(line: 179, column: 18, scope: !368)
!370 = !DILocation(line: 179, column: 8, scope: !313)
!371 = !DILocalVariable(name: "i", scope: !372, file: !3, line: 182, type: !7)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 181, column: 9)
!373 = distinct !DILexicalBlock(scope: !368, file: !3, line: 180, column: 5)
!374 = !DILocation(line: 182, column: 17, scope: !372)
!375 = !DILocalVariable(name: "n", scope: !372, file: !3, line: 182, type: !7)
!376 = !DILocation(line: 182, column: 20, scope: !372)
!377 = !DILocalVariable(name: "intVariable", scope: !372, file: !3, line: 182, type: !7)
!378 = !DILocation(line: 182, column: 23, scope: !372)
!379 = !DILocation(line: 183, column: 24, scope: !380)
!380 = distinct !DILexicalBlock(scope: !372, file: !3, line: 183, column: 17)
!381 = !DILocation(line: 183, column: 17, scope: !380)
!382 = !DILocation(line: 183, column: 40, scope: !380)
!383 = !DILocation(line: 183, column: 17, scope: !372)
!384 = !DILocation(line: 186, column: 21, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !3, line: 186, column: 21)
!386 = distinct !DILexicalBlock(scope: !380, file: !3, line: 184, column: 13)
!387 = !DILocation(line: 186, column: 23, scope: !385)
!388 = !DILocation(line: 186, column: 21, scope: !386)
!389 = !DILocation(line: 188, column: 33, scope: !390)
!390 = distinct !DILexicalBlock(scope: !385, file: !3, line: 187, column: 17)
!391 = !DILocation(line: 189, column: 28, scope: !392)
!392 = distinct !DILexicalBlock(scope: !390, file: !3, line: 189, column: 21)
!393 = !DILocation(line: 189, column: 26, scope: !392)
!394 = !DILocation(line: 189, column: 33, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !3, line: 189, column: 21)
!396 = !DILocation(line: 189, column: 37, scope: !395)
!397 = !DILocation(line: 189, column: 35, scope: !395)
!398 = !DILocation(line: 189, column: 21, scope: !392)
!399 = !DILocation(line: 192, column: 36, scope: !400)
!400 = distinct !DILexicalBlock(scope: !395, file: !3, line: 190, column: 21)
!401 = !DILocation(line: 193, column: 21, scope: !400)
!402 = !DILocation(line: 189, column: 41, scope: !395)
!403 = !DILocation(line: 189, column: 21, scope: !395)
!404 = distinct !{!404, !398, !405, !206}
!405 = !DILocation(line: 193, column: 21, scope: !392)
!406 = !DILocation(line: 194, column: 34, scope: !390)
!407 = !DILocation(line: 194, column: 21, scope: !390)
!408 = !DILocation(line: 195, column: 17, scope: !390)
!409 = !DILocation(line: 196, column: 13, scope: !386)
!410 = !DILocation(line: 198, column: 5, scope: !373)
!411 = !DILocation(line: 199, column: 1, scope: !313)
!412 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 202, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!413 = !DILocalVariable(name: "data", scope: !412, file: !3, line: 204, type: !49)
!414 = !DILocation(line: 204, column: 12, scope: !412)
!415 = !DILocalVariable(name: "dataBuffer", scope: !412, file: !3, line: 205, type: !61)
!416 = !DILocation(line: 205, column: 10, scope: !412)
!417 = !DILocation(line: 206, column: 12, scope: !412)
!418 = !DILocation(line: 206, column: 10, scope: !412)
!419 = !DILocation(line: 207, column: 8, scope: !420)
!420 = distinct !DILexicalBlock(scope: !412, file: !3, line: 207, column: 8)
!421 = !DILocation(line: 207, column: 18, scope: !420)
!422 = !DILocation(line: 207, column: 8, scope: !412)
!423 = !DILocation(line: 210, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !3, line: 208, column: 5)
!425 = !DILocation(line: 211, column: 5, scope: !424)
!426 = !DILocation(line: 215, column: 16, scope: !427)
!427 = distinct !DILexicalBlock(scope: !420, file: !3, line: 213, column: 5)
!428 = !DILocation(line: 215, column: 9, scope: !427)
!429 = !DILocation(line: 217, column: 8, scope: !430)
!430 = distinct !DILexicalBlock(scope: !412, file: !3, line: 217, column: 8)
!431 = !DILocation(line: 217, column: 18, scope: !430)
!432 = !DILocation(line: 217, column: 8, scope: !412)
!433 = !DILocalVariable(name: "i", scope: !434, file: !3, line: 220, type: !7)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 219, column: 9)
!435 = distinct !DILexicalBlock(scope: !430, file: !3, line: 218, column: 5)
!436 = !DILocation(line: 220, column: 17, scope: !434)
!437 = !DILocalVariable(name: "n", scope: !434, file: !3, line: 220, type: !7)
!438 = !DILocation(line: 220, column: 20, scope: !434)
!439 = !DILocalVariable(name: "intVariable", scope: !434, file: !3, line: 220, type: !7)
!440 = !DILocation(line: 220, column: 23, scope: !434)
!441 = !DILocation(line: 221, column: 24, scope: !442)
!442 = distinct !DILexicalBlock(scope: !434, file: !3, line: 221, column: 17)
!443 = !DILocation(line: 221, column: 17, scope: !442)
!444 = !DILocation(line: 221, column: 40, scope: !442)
!445 = !DILocation(line: 221, column: 17, scope: !434)
!446 = !DILocation(line: 224, column: 29, scope: !447)
!447 = distinct !DILexicalBlock(scope: !442, file: !3, line: 222, column: 13)
!448 = !DILocation(line: 225, column: 24, scope: !449)
!449 = distinct !DILexicalBlock(scope: !447, file: !3, line: 225, column: 17)
!450 = !DILocation(line: 225, column: 22, scope: !449)
!451 = !DILocation(line: 225, column: 29, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !3, line: 225, column: 17)
!453 = !DILocation(line: 225, column: 33, scope: !452)
!454 = !DILocation(line: 225, column: 31, scope: !452)
!455 = !DILocation(line: 225, column: 17, scope: !449)
!456 = !DILocation(line: 228, column: 32, scope: !457)
!457 = distinct !DILexicalBlock(scope: !452, file: !3, line: 226, column: 17)
!458 = !DILocation(line: 229, column: 17, scope: !457)
!459 = !DILocation(line: 225, column: 37, scope: !452)
!460 = !DILocation(line: 225, column: 17, scope: !452)
!461 = distinct !{!461, !455, !462, !206}
!462 = !DILocation(line: 229, column: 17, scope: !449)
!463 = !DILocation(line: 230, column: 30, scope: !447)
!464 = !DILocation(line: 230, column: 17, scope: !447)
!465 = !DILocation(line: 231, column: 13, scope: !447)
!466 = !DILocation(line: 233, column: 5, scope: !435)
!467 = !DILocation(line: 234, column: 1, scope: !412)
!468 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 237, type: !56, scopeLine: 238, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!469 = !DILocalVariable(name: "data", scope: !468, file: !3, line: 239, type: !49)
!470 = !DILocation(line: 239, column: 12, scope: !468)
!471 = !DILocalVariable(name: "dataBuffer", scope: !468, file: !3, line: 240, type: !61)
!472 = !DILocation(line: 240, column: 10, scope: !468)
!473 = !DILocation(line: 241, column: 12, scope: !468)
!474 = !DILocation(line: 241, column: 10, scope: !468)
!475 = !DILocation(line: 242, column: 8, scope: !476)
!476 = distinct !DILexicalBlock(scope: !468, file: !3, line: 242, column: 8)
!477 = !DILocation(line: 242, column: 18, scope: !476)
!478 = !DILocation(line: 242, column: 8, scope: !468)
!479 = !DILocation(line: 245, column: 16, scope: !480)
!480 = distinct !DILexicalBlock(scope: !476, file: !3, line: 243, column: 5)
!481 = !DILocation(line: 245, column: 9, scope: !480)
!482 = !DILocation(line: 246, column: 5, scope: !480)
!483 = !DILocation(line: 247, column: 8, scope: !484)
!484 = distinct !DILexicalBlock(scope: !468, file: !3, line: 247, column: 8)
!485 = !DILocation(line: 247, column: 18, scope: !484)
!486 = !DILocation(line: 247, column: 8, scope: !468)
!487 = !DILocalVariable(name: "i", scope: !488, file: !3, line: 250, type: !7)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 249, column: 9)
!489 = distinct !DILexicalBlock(scope: !484, file: !3, line: 248, column: 5)
!490 = !DILocation(line: 250, column: 17, scope: !488)
!491 = !DILocalVariable(name: "n", scope: !488, file: !3, line: 250, type: !7)
!492 = !DILocation(line: 250, column: 20, scope: !488)
!493 = !DILocalVariable(name: "intVariable", scope: !488, file: !3, line: 250, type: !7)
!494 = !DILocation(line: 250, column: 23, scope: !488)
!495 = !DILocation(line: 251, column: 24, scope: !496)
!496 = distinct !DILexicalBlock(scope: !488, file: !3, line: 251, column: 17)
!497 = !DILocation(line: 251, column: 17, scope: !496)
!498 = !DILocation(line: 251, column: 40, scope: !496)
!499 = !DILocation(line: 251, column: 17, scope: !488)
!500 = !DILocation(line: 254, column: 29, scope: !501)
!501 = distinct !DILexicalBlock(scope: !496, file: !3, line: 252, column: 13)
!502 = !DILocation(line: 255, column: 24, scope: !503)
!503 = distinct !DILexicalBlock(scope: !501, file: !3, line: 255, column: 17)
!504 = !DILocation(line: 255, column: 22, scope: !503)
!505 = !DILocation(line: 255, column: 29, scope: !506)
!506 = distinct !DILexicalBlock(scope: !503, file: !3, line: 255, column: 17)
!507 = !DILocation(line: 255, column: 33, scope: !506)
!508 = !DILocation(line: 255, column: 31, scope: !506)
!509 = !DILocation(line: 255, column: 17, scope: !503)
!510 = !DILocation(line: 258, column: 32, scope: !511)
!511 = distinct !DILexicalBlock(scope: !506, file: !3, line: 256, column: 17)
!512 = !DILocation(line: 259, column: 17, scope: !511)
!513 = !DILocation(line: 255, column: 37, scope: !506)
!514 = !DILocation(line: 255, column: 17, scope: !506)
!515 = distinct !{!515, !509, !516, !206}
!516 = !DILocation(line: 259, column: 17, scope: !503)
!517 = !DILocation(line: 260, column: 30, scope: !501)
!518 = !DILocation(line: 260, column: 17, scope: !501)
!519 = !DILocation(line: 261, column: 13, scope: !501)
!520 = !DILocation(line: 263, column: 5, scope: !489)
!521 = !DILocation(line: 264, column: 1, scope: !468)
!522 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_07_good", scope: !3, file: !3, line: 266, type: !56, scopeLine: 267, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!523 = !DILocation(line: 268, column: 5, scope: !522)
!524 = !DILocation(line: 269, column: 5, scope: !522)
!525 = !DILocation(line: 270, column: 5, scope: !522)
!526 = !DILocation(line: 271, column: 5, scope: !522)
!527 = !DILocation(line: 272, column: 1, scope: !522)
!528 = distinct !DISubprogram(name: "printLine", scope: !12, file: !12, line: 11, type: !529, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !49}
!531 = !DILocalVariable(name: "line", arg: 1, scope: !528, file: !12, line: 11, type: !49)
!532 = !DILocation(line: 11, column: 25, scope: !528)
!533 = !DILocation(line: 13, column: 1, scope: !528)
!534 = !DILocation(line: 14, column: 8, scope: !535)
!535 = distinct !DILexicalBlock(scope: !528, file: !12, line: 14, column: 8)
!536 = !DILocation(line: 14, column: 13, scope: !535)
!537 = !DILocation(line: 14, column: 8, scope: !528)
!538 = !DILocation(line: 16, column: 24, scope: !539)
!539 = distinct !DILexicalBlock(scope: !535, file: !12, line: 15, column: 5)
!540 = !DILocation(line: 16, column: 9, scope: !539)
!541 = !DILocation(line: 17, column: 5, scope: !539)
!542 = !DILocation(line: 18, column: 5, scope: !528)
!543 = !DILocation(line: 19, column: 1, scope: !528)
!544 = distinct !DISubprogram(name: "printSinkLine", scope: !12, file: !12, line: 20, type: !529, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!545 = !DILocalVariable(name: "line", arg: 1, scope: !544, file: !12, line: 20, type: !49)
!546 = !DILocation(line: 20, column: 29, scope: !544)
!547 = !DILocation(line: 22, column: 8, scope: !548)
!548 = distinct !DILexicalBlock(scope: !544, file: !12, line: 22, column: 8)
!549 = !DILocation(line: 22, column: 13, scope: !548)
!550 = !DILocation(line: 22, column: 8, scope: !544)
!551 = !DILocation(line: 24, column: 24, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !12, line: 23, column: 5)
!553 = !DILocation(line: 24, column: 9, scope: !552)
!554 = !DILocation(line: 25, column: 5, scope: !552)
!555 = !DILocation(line: 26, column: 1, scope: !544)
!556 = distinct !DISubprogram(name: "printWLine", scope: !12, file: !12, line: 27, type: !557, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !7)
!561 = !DILocalVariable(name: "line", arg: 1, scope: !556, file: !12, line: 27, type: !559)
!562 = !DILocation(line: 27, column: 29, scope: !556)
!563 = !DILocation(line: 29, column: 8, scope: !564)
!564 = distinct !DILexicalBlock(scope: !556, file: !12, line: 29, column: 8)
!565 = !DILocation(line: 29, column: 13, scope: !564)
!566 = !DILocation(line: 29, column: 8, scope: !556)
!567 = !DILocation(line: 31, column: 27, scope: !568)
!568 = distinct !DILexicalBlock(scope: !564, file: !12, line: 30, column: 5)
!569 = !DILocation(line: 31, column: 9, scope: !568)
!570 = !DILocation(line: 32, column: 5, scope: !568)
!571 = !DILocation(line: 33, column: 1, scope: !556)
!572 = distinct !DISubprogram(name: "printIntLine", scope: !12, file: !12, line: 35, type: !573, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !7}
!575 = !DILocalVariable(name: "intNumber", arg: 1, scope: !572, file: !12, line: 35, type: !7)
!576 = !DILocation(line: 35, column: 24, scope: !572)
!577 = !DILocation(line: 37, column: 20, scope: !572)
!578 = !DILocation(line: 37, column: 5, scope: !572)
!579 = !DILocation(line: 38, column: 1, scope: !572)
!580 = distinct !DISubprogram(name: "printShortLine", scope: !12, file: !12, line: 40, type: !581, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !583}
!583 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!584 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !580, file: !12, line: 40, type: !583)
!585 = !DILocation(line: 40, column: 28, scope: !580)
!586 = !DILocation(line: 42, column: 21, scope: !580)
!587 = !DILocation(line: 42, column: 5, scope: !580)
!588 = !DILocation(line: 43, column: 1, scope: !580)
!589 = distinct !DISubprogram(name: "printFloatLine", scope: !12, file: !12, line: 45, type: !590, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !592}
!592 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!593 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !589, file: !12, line: 45, type: !592)
!594 = !DILocation(line: 45, column: 28, scope: !589)
!595 = !DILocation(line: 47, column: 20, scope: !589)
!596 = !DILocation(line: 47, column: 5, scope: !589)
!597 = !DILocation(line: 48, column: 1, scope: !589)
!598 = distinct !DISubprogram(name: "printLongLine", scope: !12, file: !12, line: 50, type: !599, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !109}
!601 = !DILocalVariable(name: "longNumber", arg: 1, scope: !598, file: !12, line: 50, type: !109)
!602 = !DILocation(line: 50, column: 26, scope: !598)
!603 = !DILocation(line: 52, column: 21, scope: !598)
!604 = !DILocation(line: 52, column: 5, scope: !598)
!605 = !DILocation(line: 53, column: 1, scope: !598)
!606 = distinct !DISubprogram(name: "printLongLongLine", scope: !12, file: !12, line: 55, type: !607, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !609}
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !610, line: 27, baseType: !611)
!610 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !108, line: 44, baseType: !109)
!612 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !606, file: !12, line: 55, type: !609)
!613 = !DILocation(line: 55, column: 33, scope: !606)
!614 = !DILocation(line: 57, column: 29, scope: !606)
!615 = !DILocation(line: 57, column: 5, scope: !606)
!616 = !DILocation(line: 58, column: 1, scope: !606)
!617 = distinct !DISubprogram(name: "printSizeTLine", scope: !12, file: !12, line: 60, type: !618, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !74}
!620 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !617, file: !12, line: 60, type: !74)
!621 = !DILocation(line: 60, column: 29, scope: !617)
!622 = !DILocation(line: 62, column: 21, scope: !617)
!623 = !DILocation(line: 62, column: 5, scope: !617)
!624 = !DILocation(line: 63, column: 1, scope: !617)
!625 = distinct !DISubprogram(name: "printHexCharLine", scope: !12, file: !12, line: 65, type: !626, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !50}
!628 = !DILocalVariable(name: "charHex", arg: 1, scope: !625, file: !12, line: 65, type: !50)
!629 = !DILocation(line: 65, column: 29, scope: !625)
!630 = !DILocation(line: 67, column: 22, scope: !625)
!631 = !DILocation(line: 67, column: 5, scope: !625)
!632 = !DILocation(line: 68, column: 1, scope: !625)
!633 = distinct !DISubprogram(name: "printWcharLine", scope: !12, file: !12, line: 70, type: !634, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !560}
!636 = !DILocalVariable(name: "wideChar", arg: 1, scope: !633, file: !12, line: 70, type: !560)
!637 = !DILocation(line: 70, column: 29, scope: !633)
!638 = !DILocalVariable(name: "s", scope: !633, file: !12, line: 74, type: !639)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 64, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 2)
!642 = !DILocation(line: 74, column: 13, scope: !633)
!643 = !DILocation(line: 75, column: 16, scope: !633)
!644 = !DILocation(line: 75, column: 9, scope: !633)
!645 = !DILocation(line: 75, column: 14, scope: !633)
!646 = !DILocation(line: 76, column: 9, scope: !633)
!647 = !DILocation(line: 76, column: 14, scope: !633)
!648 = !DILocation(line: 77, column: 21, scope: !633)
!649 = !DILocation(line: 77, column: 5, scope: !633)
!650 = !DILocation(line: 78, column: 1, scope: !633)
!651 = distinct !DISubprogram(name: "printUnsignedLine", scope: !12, file: !12, line: 80, type: !652, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !16}
!654 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !651, file: !12, line: 80, type: !16)
!655 = !DILocation(line: 80, column: 33, scope: !651)
!656 = !DILocation(line: 82, column: 20, scope: !651)
!657 = !DILocation(line: 82, column: 5, scope: !651)
!658 = !DILocation(line: 83, column: 1, scope: !651)
!659 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !12, file: !12, line: 85, type: !660, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !32}
!662 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !659, file: !12, line: 85, type: !32)
!663 = !DILocation(line: 85, column: 45, scope: !659)
!664 = !DILocation(line: 87, column: 22, scope: !659)
!665 = !DILocation(line: 87, column: 5, scope: !659)
!666 = !DILocation(line: 88, column: 1, scope: !659)
!667 = distinct !DISubprogram(name: "printDoubleLine", scope: !12, file: !12, line: 90, type: !668, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !670}
!670 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!671 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !667, file: !12, line: 90, type: !670)
!672 = !DILocation(line: 90, column: 29, scope: !667)
!673 = !DILocation(line: 92, column: 20, scope: !667)
!674 = !DILocation(line: 92, column: 5, scope: !667)
!675 = !DILocation(line: 93, column: 1, scope: !667)
!676 = distinct !DISubprogram(name: "printStructLine", scope: !12, file: !12, line: 95, type: !677, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !679}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !681, line: 100, baseType: !682)
!681 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_080/source_code")
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !681, line: 96, size: 64, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !682, file: !681, line: 98, baseType: !7, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !682, file: !681, line: 99, baseType: !7, size: 32, offset: 32)
!686 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !676, file: !12, line: 95, type: !679)
!687 = !DILocation(line: 95, column: 40, scope: !676)
!688 = !DILocation(line: 97, column: 26, scope: !676)
!689 = !DILocation(line: 97, column: 47, scope: !676)
!690 = !DILocation(line: 97, column: 55, scope: !676)
!691 = !DILocation(line: 97, column: 76, scope: !676)
!692 = !DILocation(line: 97, column: 5, scope: !676)
!693 = !DILocation(line: 98, column: 1, scope: !676)
!694 = distinct !DISubprogram(name: "printBytesLine", scope: !12, file: !12, line: 100, type: !695, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !697, !74}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!698 = !DILocalVariable(name: "bytes", arg: 1, scope: !694, file: !12, line: 100, type: !697)
!699 = !DILocation(line: 100, column: 38, scope: !694)
!700 = !DILocalVariable(name: "numBytes", arg: 2, scope: !694, file: !12, line: 100, type: !74)
!701 = !DILocation(line: 100, column: 52, scope: !694)
!702 = !DILocalVariable(name: "i", scope: !694, file: !12, line: 102, type: !74)
!703 = !DILocation(line: 102, column: 12, scope: !694)
!704 = !DILocation(line: 103, column: 12, scope: !705)
!705 = distinct !DILexicalBlock(scope: !694, file: !12, line: 103, column: 5)
!706 = !DILocation(line: 103, column: 10, scope: !705)
!707 = !DILocation(line: 103, column: 17, scope: !708)
!708 = distinct !DILexicalBlock(scope: !705, file: !12, line: 103, column: 5)
!709 = !DILocation(line: 103, column: 21, scope: !708)
!710 = !DILocation(line: 103, column: 19, scope: !708)
!711 = !DILocation(line: 103, column: 5, scope: !705)
!712 = !DILocation(line: 105, column: 24, scope: !713)
!713 = distinct !DILexicalBlock(scope: !708, file: !12, line: 104, column: 5)
!714 = !DILocation(line: 105, column: 30, scope: !713)
!715 = !DILocation(line: 105, column: 9, scope: !713)
!716 = !DILocation(line: 106, column: 5, scope: !713)
!717 = !DILocation(line: 103, column: 31, scope: !708)
!718 = !DILocation(line: 103, column: 5, scope: !708)
!719 = distinct !{!719, !711, !720, !206}
!720 = !DILocation(line: 106, column: 5, scope: !705)
!721 = !DILocation(line: 107, column: 5, scope: !694)
!722 = !DILocation(line: 108, column: 1, scope: !694)
!723 = distinct !DISubprogram(name: "decodeHexChars", scope: !12, file: !12, line: 113, type: !724, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!724 = !DISubroutineType(types: !725)
!725 = !{!74, !697, !74, !49}
!726 = !DILocalVariable(name: "bytes", arg: 1, scope: !723, file: !12, line: 113, type: !697)
!727 = !DILocation(line: 113, column: 39, scope: !723)
!728 = !DILocalVariable(name: "numBytes", arg: 2, scope: !723, file: !12, line: 113, type: !74)
!729 = !DILocation(line: 113, column: 53, scope: !723)
!730 = !DILocalVariable(name: "hex", arg: 3, scope: !723, file: !12, line: 113, type: !49)
!731 = !DILocation(line: 113, column: 71, scope: !723)
!732 = !DILocalVariable(name: "numWritten", scope: !723, file: !12, line: 115, type: !74)
!733 = !DILocation(line: 115, column: 12, scope: !723)
!734 = !DILocation(line: 121, column: 5, scope: !723)
!735 = !DILocation(line: 121, column: 12, scope: !723)
!736 = !DILocation(line: 121, column: 25, scope: !723)
!737 = !DILocation(line: 121, column: 23, scope: !723)
!738 = !DILocation(line: 121, column: 34, scope: !723)
!739 = !DILocation(line: 121, column: 37, scope: !723)
!740 = !DILocation(line: 121, column: 67, scope: !723)
!741 = !DILocation(line: 121, column: 70, scope: !723)
!742 = !DILocation(line: 0, scope: !723)
!743 = !DILocalVariable(name: "byte", scope: !744, file: !12, line: 123, type: !7)
!744 = distinct !DILexicalBlock(scope: !723, file: !12, line: 122, column: 5)
!745 = !DILocation(line: 123, column: 13, scope: !744)
!746 = !DILocation(line: 124, column: 17, scope: !744)
!747 = !DILocation(line: 124, column: 25, scope: !744)
!748 = !DILocation(line: 124, column: 23, scope: !744)
!749 = !DILocation(line: 124, column: 9, scope: !744)
!750 = !DILocation(line: 125, column: 45, scope: !744)
!751 = !DILocation(line: 125, column: 29, scope: !744)
!752 = !DILocation(line: 125, column: 9, scope: !744)
!753 = !DILocation(line: 125, column: 15, scope: !744)
!754 = !DILocation(line: 125, column: 27, scope: !744)
!755 = !DILocation(line: 126, column: 9, scope: !744)
!756 = distinct !{!756, !734, !757, !206}
!757 = !DILocation(line: 127, column: 5, scope: !723)
!758 = !DILocation(line: 129, column: 12, scope: !723)
!759 = !DILocation(line: 129, column: 5, scope: !723)
!760 = distinct !DISubprogram(name: "decodeHexWChars", scope: !12, file: !12, line: 135, type: !761, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!761 = !DISubroutineType(types: !762)
!762 = !{!74, !697, !74, !559}
!763 = !DILocalVariable(name: "bytes", arg: 1, scope: !760, file: !12, line: 135, type: !697)
!764 = !DILocation(line: 135, column: 41, scope: !760)
!765 = !DILocalVariable(name: "numBytes", arg: 2, scope: !760, file: !12, line: 135, type: !74)
!766 = !DILocation(line: 135, column: 55, scope: !760)
!767 = !DILocalVariable(name: "hex", arg: 3, scope: !760, file: !12, line: 135, type: !559)
!768 = !DILocation(line: 135, column: 76, scope: !760)
!769 = !DILocalVariable(name: "numWritten", scope: !760, file: !12, line: 137, type: !74)
!770 = !DILocation(line: 137, column: 12, scope: !760)
!771 = !DILocation(line: 143, column: 5, scope: !760)
!772 = !DILocation(line: 143, column: 12, scope: !760)
!773 = !DILocation(line: 143, column: 25, scope: !760)
!774 = !DILocation(line: 143, column: 23, scope: !760)
!775 = !DILocation(line: 143, column: 34, scope: !760)
!776 = !DILocation(line: 143, column: 47, scope: !760)
!777 = !DILocation(line: 143, column: 55, scope: !760)
!778 = !DILocation(line: 143, column: 53, scope: !760)
!779 = !DILocation(line: 143, column: 37, scope: !760)
!780 = !DILocation(line: 143, column: 68, scope: !760)
!781 = !DILocation(line: 143, column: 81, scope: !760)
!782 = !DILocation(line: 143, column: 89, scope: !760)
!783 = !DILocation(line: 143, column: 87, scope: !760)
!784 = !DILocation(line: 143, column: 100, scope: !760)
!785 = !DILocation(line: 143, column: 71, scope: !760)
!786 = !DILocation(line: 0, scope: !760)
!787 = !DILocalVariable(name: "byte", scope: !788, file: !12, line: 145, type: !7)
!788 = distinct !DILexicalBlock(scope: !760, file: !12, line: 144, column: 5)
!789 = !DILocation(line: 145, column: 13, scope: !788)
!790 = !DILocation(line: 146, column: 18, scope: !788)
!791 = !DILocation(line: 146, column: 26, scope: !788)
!792 = !DILocation(line: 146, column: 24, scope: !788)
!793 = !DILocation(line: 146, column: 9, scope: !788)
!794 = !DILocation(line: 147, column: 45, scope: !788)
!795 = !DILocation(line: 147, column: 29, scope: !788)
!796 = !DILocation(line: 147, column: 9, scope: !788)
!797 = !DILocation(line: 147, column: 15, scope: !788)
!798 = !DILocation(line: 147, column: 27, scope: !788)
!799 = !DILocation(line: 148, column: 9, scope: !788)
!800 = distinct !{!800, !771, !801, !206}
!801 = !DILocation(line: 149, column: 5, scope: !760)
!802 = !DILocation(line: 151, column: 12, scope: !760)
!803 = !DILocation(line: 151, column: 5, scope: !760)
!804 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !12, file: !12, line: 156, type: !805, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!805 = !DISubroutineType(types: !806)
!806 = !{!7}
!807 = !DILocation(line: 158, column: 5, scope: !804)
!808 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !12, file: !12, line: 161, type: !805, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!809 = !DILocation(line: 163, column: 5, scope: !808)
!810 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !12, file: !12, line: 166, type: !805, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!811 = !DILocation(line: 168, column: 13, scope: !810)
!812 = !DILocation(line: 168, column: 20, scope: !810)
!813 = !DILocation(line: 168, column: 5, scope: !810)
!814 = distinct !DISubprogram(name: "good1", scope: !12, file: !12, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!815 = !DILocation(line: 187, column: 16, scope: !814)
!816 = distinct !DISubprogram(name: "good2", scope: !12, file: !12, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!817 = !DILocation(line: 188, column: 16, scope: !816)
!818 = distinct !DISubprogram(name: "good3", scope: !12, file: !12, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!819 = !DILocation(line: 189, column: 16, scope: !818)
!820 = distinct !DISubprogram(name: "good4", scope: !12, file: !12, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!821 = !DILocation(line: 190, column: 16, scope: !820)
!822 = distinct !DISubprogram(name: "good5", scope: !12, file: !12, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!823 = !DILocation(line: 191, column: 16, scope: !822)
!824 = distinct !DISubprogram(name: "good6", scope: !12, file: !12, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!825 = !DILocation(line: 192, column: 16, scope: !824)
!826 = distinct !DISubprogram(name: "good7", scope: !12, file: !12, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!827 = !DILocation(line: 193, column: 16, scope: !826)
!828 = distinct !DISubprogram(name: "good8", scope: !12, file: !12, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!829 = !DILocation(line: 194, column: 16, scope: !828)
!830 = distinct !DISubprogram(name: "good9", scope: !12, file: !12, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!831 = !DILocation(line: 195, column: 16, scope: !830)
!832 = distinct !DISubprogram(name: "bad1", scope: !12, file: !12, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!833 = !DILocation(line: 198, column: 15, scope: !832)
!834 = distinct !DISubprogram(name: "bad2", scope: !12, file: !12, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!835 = !DILocation(line: 199, column: 15, scope: !834)
!836 = distinct !DISubprogram(name: "bad3", scope: !12, file: !12, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!837 = !DILocation(line: 200, column: 15, scope: !836)
!838 = distinct !DISubprogram(name: "bad4", scope: !12, file: !12, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!839 = !DILocation(line: 201, column: 15, scope: !838)
!840 = distinct !DISubprogram(name: "bad5", scope: !12, file: !12, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!841 = !DILocation(line: 202, column: 15, scope: !840)
!842 = distinct !DISubprogram(name: "bad6", scope: !12, file: !12, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!843 = !DILocation(line: 203, column: 15, scope: !842)
!844 = distinct !DISubprogram(name: "bad7", scope: !12, file: !12, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!845 = !DILocation(line: 204, column: 15, scope: !844)
!846 = distinct !DISubprogram(name: "bad8", scope: !12, file: !12, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!847 = !DILocation(line: 205, column: 15, scope: !846)
!848 = distinct !DISubprogram(name: "bad9", scope: !12, file: !12, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!849 = !DILocation(line: 206, column: 15, scope: !848)
