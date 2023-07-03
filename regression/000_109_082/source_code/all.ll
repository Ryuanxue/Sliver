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
@.str.7 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.9 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.10 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.14 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7.15 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_09_bad() #0 !dbg !52 {
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
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !64
  %tobool = icmp ne i32 %1, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.end13, !dbg !66

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !73
  %2 = load i8*, i8** %data, align 8, !dbg !74
  %call = call i64 @strlen(i8* %2) #7, !dbg !75
  store i64 %call, i64* %dataLen, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !76, metadata !DIExpression()), !dbg !132
  %3 = load i64, i64* %dataLen, align 8, !dbg !133
  %sub = sub i64 100, %3, !dbg !135
  %cmp = icmp ugt i64 %sub, 1, !dbg !136
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !137

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !138
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !140
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !141
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !143
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !144

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !145
  %6 = load i64, i64* %dataLen, align 8, !dbg !148
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !149
  %7 = load i64, i64* %dataLen, align 8, !dbg !150
  %sub5 = sub i64 100, %7, !dbg !151
  %conv = trunc i64 %sub5 to i32, !dbg !152
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !153
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !154
  %cmp7 = icmp eq i8* %call6, null, !dbg !155
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !156

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !157
  %9 = load i8*, i8** %data, align 8, !dbg !159
  %10 = load i64, i64* %dataLen, align 8, !dbg !160
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !159
  store i8 0, i8* %arrayidx, align 1, !dbg !161
  br label %if.end, !dbg !162

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !163
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !164
  br label %if.end11, !dbg !165

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !166

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !167

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !168
  %tobool14 = icmp ne i32 %12, 0, !dbg !168
  br i1 %tobool14, label %if.then15, label %if.end24, !dbg !170

if.then15:                                        ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !171, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %n, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !177, metadata !DIExpression()), !dbg !178
  %13 = load i8*, i8** %data, align 8, !dbg !179
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !181
  %cmp17 = icmp eq i32 %call16, 1, !dbg !182
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !183

if.then19:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !184
  store i32 0, i32* %i, align 4, !dbg !186
  br label %for.cond, !dbg !188

for.cond:                                         ; preds = %for.inc, %if.then19
  %14 = load i32, i32* %i, align 4, !dbg !189
  %15 = load i32, i32* %n, align 4, !dbg !191
  %cmp20 = icmp slt i32 %14, %15, !dbg !192
  br i1 %cmp20, label %for.body, label %for.end, !dbg !193

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !194
  %inc = add nsw i32 %16, 1, !dbg !194
  store i32 %inc, i32* %intVariable, align 4, !dbg !194
  br label %for.inc, !dbg !196

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !197
  %inc22 = add nsw i32 %17, 1, !dbg !197
  store i32 %inc22, i32* %i, align 4, !dbg !197
  br label %for.cond, !dbg !198, !llvm.loop !199

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !202
  call void @printIntLine(i32 %18), !dbg !203
  br label %if.end23, !dbg !204

if.end23:                                         ; preds = %for.end, %if.then15
  br label %if.end24, !dbg !205

if.end24:                                         ; preds = %if.end23, %if.end13
  ret void, !dbg !206
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
define dso_local void @goodB2G1() #0 !dbg !207 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !211
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !211
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !212
  store i8* %arraydecay, i8** %data, align 8, !dbg !213
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !214
  %tobool = icmp ne i32 %1, 0, !dbg !214
  br i1 %tobool, label %if.then, label %if.end13, !dbg !216

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !217, metadata !DIExpression()), !dbg !220
  %2 = load i8*, i8** %data, align 8, !dbg !221
  %call = call i64 @strlen(i8* %2) #7, !dbg !222
  store i64 %call, i64* %dataLen, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !223, metadata !DIExpression()), !dbg !224
  %3 = load i64, i64* %dataLen, align 8, !dbg !225
  %sub = sub i64 100, %3, !dbg !227
  %cmp = icmp ugt i64 %sub, 1, !dbg !228
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !229

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !230
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !232
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !233
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !235
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !236

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !237
  %6 = load i64, i64* %dataLen, align 8, !dbg !240
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !241
  %7 = load i64, i64* %dataLen, align 8, !dbg !242
  %sub5 = sub i64 100, %7, !dbg !243
  %conv = trunc i64 %sub5 to i32, !dbg !244
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !245
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !246
  %cmp7 = icmp eq i8* %call6, null, !dbg !247
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !248

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !249
  %9 = load i8*, i8** %data, align 8, !dbg !251
  %10 = load i64, i64* %dataLen, align 8, !dbg !252
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !251
  store i8 0, i8* %arrayidx, align 1, !dbg !253
  br label %if.end, !dbg !254

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !255
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !256
  br label %if.end11, !dbg !257

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !258

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !259

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !260
  %tobool14 = icmp ne i32 %12, 0, !dbg !260
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !262

if.then15:                                        ; preds = %if.end13
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !263
  br label %if.end28, !dbg !265

if.else:                                          ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !266, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata i32* %n, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !272, metadata !DIExpression()), !dbg !273
  %13 = load i8*, i8** %data, align 8, !dbg !274
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !276
  %cmp17 = icmp eq i32 %call16, 1, !dbg !277
  br i1 %cmp17, label %if.then19, label %if.end27, !dbg !278

if.then19:                                        ; preds = %if.else
  %14 = load i32, i32* %n, align 4, !dbg !279
  %cmp20 = icmp slt i32 %14, 10000, !dbg !282
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !283

if.then22:                                        ; preds = %if.then19
  store i32 0, i32* %intVariable, align 4, !dbg !284
  store i32 0, i32* %i, align 4, !dbg !286
  br label %for.cond, !dbg !288

for.cond:                                         ; preds = %for.inc, %if.then22
  %15 = load i32, i32* %i, align 4, !dbg !289
  %16 = load i32, i32* %n, align 4, !dbg !291
  %cmp23 = icmp slt i32 %15, %16, !dbg !292
  br i1 %cmp23, label %for.body, label %for.end, !dbg !293

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !294
  %inc = add nsw i32 %17, 1, !dbg !294
  store i32 %inc, i32* %intVariable, align 4, !dbg !294
  br label %for.inc, !dbg !296

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !297
  %inc25 = add nsw i32 %18, 1, !dbg !297
  store i32 %inc25, i32* %i, align 4, !dbg !297
  br label %for.cond, !dbg !298, !llvm.loop !299

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !301
  call void @printIntLine(i32 %19), !dbg !302
  br label %if.end26, !dbg !303

if.end26:                                         ; preds = %for.end, %if.then19
  br label %if.end27, !dbg !304

if.end27:                                         ; preds = %if.end26, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then15
  ret void, !dbg !305
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !306 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !307, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !310
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !310
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !311
  store i8* %arraydecay, i8** %data, align 8, !dbg !312
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !313
  %tobool = icmp ne i32 %1, 0, !dbg !313
  br i1 %tobool, label %if.then, label %if.end13, !dbg !315

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !316, metadata !DIExpression()), !dbg !319
  %2 = load i8*, i8** %data, align 8, !dbg !320
  %call = call i64 @strlen(i8* %2) #7, !dbg !321
  store i64 %call, i64* %dataLen, align 8, !dbg !319
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !322, metadata !DIExpression()), !dbg !323
  %3 = load i64, i64* %dataLen, align 8, !dbg !324
  %sub = sub i64 100, %3, !dbg !326
  %cmp = icmp ugt i64 %sub, 1, !dbg !327
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !328

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !329
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !331
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !332
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !334
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !335

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !336
  %6 = load i64, i64* %dataLen, align 8, !dbg !339
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !340
  %7 = load i64, i64* %dataLen, align 8, !dbg !341
  %sub5 = sub i64 100, %7, !dbg !342
  %conv = trunc i64 %sub5 to i32, !dbg !343
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !344
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !345
  %cmp7 = icmp eq i8* %call6, null, !dbg !346
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !347

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !348
  %9 = load i8*, i8** %data, align 8, !dbg !350
  %10 = load i64, i64* %dataLen, align 8, !dbg !351
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !350
  store i8 0, i8* %arrayidx, align 1, !dbg !352
  br label %if.end, !dbg !353

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !354
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !355
  br label %if.end11, !dbg !356

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !357

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !358

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !359
  %tobool14 = icmp ne i32 %12, 0, !dbg !359
  br i1 %tobool14, label %if.then15, label %if.end28, !dbg !361

if.then15:                                        ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !362, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.declare(metadata i32* %n, metadata !366, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !368, metadata !DIExpression()), !dbg !369
  %13 = load i8*, i8** %data, align 8, !dbg !370
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !372
  %cmp17 = icmp eq i32 %call16, 1, !dbg !373
  br i1 %cmp17, label %if.then19, label %if.end27, !dbg !374

if.then19:                                        ; preds = %if.then15
  %14 = load i32, i32* %n, align 4, !dbg !375
  %cmp20 = icmp slt i32 %14, 10000, !dbg !378
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !379

if.then22:                                        ; preds = %if.then19
  store i32 0, i32* %intVariable, align 4, !dbg !380
  store i32 0, i32* %i, align 4, !dbg !382
  br label %for.cond, !dbg !384

for.cond:                                         ; preds = %for.inc, %if.then22
  %15 = load i32, i32* %i, align 4, !dbg !385
  %16 = load i32, i32* %n, align 4, !dbg !387
  %cmp23 = icmp slt i32 %15, %16, !dbg !388
  br i1 %cmp23, label %for.body, label %for.end, !dbg !389

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !390
  %inc = add nsw i32 %17, 1, !dbg !390
  store i32 %inc, i32* %intVariable, align 4, !dbg !390
  br label %for.inc, !dbg !392

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !393
  %inc25 = add nsw i32 %18, 1, !dbg !393
  store i32 %inc25, i32* %i, align 4, !dbg !393
  br label %for.cond, !dbg !394, !llvm.loop !395

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !397
  call void @printIntLine(i32 %19), !dbg !398
  br label %if.end26, !dbg !399

if.end26:                                         ; preds = %for.end, %if.then19
  br label %if.end27, !dbg !400

if.end27:                                         ; preds = %if.end26, %if.then15
  br label %if.end28, !dbg !401

if.end28:                                         ; preds = %if.end27, %if.end13
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !403 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !404, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !407
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !407
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !408
  store i8* %arraydecay, i8** %data, align 8, !dbg !409
  %1 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !410
  %tobool = icmp ne i32 %1, 0, !dbg !410
  br i1 %tobool, label %if.then, label %if.else, !dbg !412

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !413
  br label %if.end, !dbg !415

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !416
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !418
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !419
  %tobool1 = icmp ne i32 %3, 0, !dbg !419
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !421

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !422, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata i32* %n, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !428, metadata !DIExpression()), !dbg !429
  %4 = load i8*, i8** %data, align 8, !dbg !430
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !432
  %cmp = icmp eq i32 %call3, 1, !dbg !433
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !434

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !435
  store i32 0, i32* %i, align 4, !dbg !437
  br label %for.cond, !dbg !439

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !440
  %6 = load i32, i32* %n, align 4, !dbg !442
  %cmp5 = icmp slt i32 %5, %6, !dbg !443
  br i1 %cmp5, label %for.body, label %for.end, !dbg !444

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !445
  %inc = add nsw i32 %7, 1, !dbg !445
  store i32 %inc, i32* %intVariable, align 4, !dbg !445
  br label %for.inc, !dbg !447

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !448
  %inc6 = add nsw i32 %8, 1, !dbg !448
  store i32 %inc6, i32* %i, align 4, !dbg !448
  br label %for.cond, !dbg !449, !llvm.loop !450

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !452
  call void @printIntLine(i32 %9), !dbg !453
  br label %if.end7, !dbg !454

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !455

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !456
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !457 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !458, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !460, metadata !DIExpression()), !dbg !461
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !461
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !461
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !462
  store i8* %arraydecay, i8** %data, align 8, !dbg !463
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !464
  %tobool = icmp ne i32 %1, 0, !dbg !464
  br i1 %tobool, label %if.then, label %if.end, !dbg !466

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !467
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !469
  br label %if.end, !dbg !470

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !471
  %tobool1 = icmp ne i32 %3, 0, !dbg !471
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !473

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !474, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.declare(metadata i32* %n, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !480, metadata !DIExpression()), !dbg !481
  %4 = load i8*, i8** %data, align 8, !dbg !482
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !484
  %cmp = icmp eq i32 %call3, 1, !dbg !485
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !486

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !487
  store i32 0, i32* %i, align 4, !dbg !489
  br label %for.cond, !dbg !491

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !492
  %6 = load i32, i32* %n, align 4, !dbg !494
  %cmp5 = icmp slt i32 %5, %6, !dbg !495
  br i1 %cmp5, label %for.body, label %for.end, !dbg !496

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !497
  %inc = add nsw i32 %7, 1, !dbg !497
  store i32 %inc, i32* %intVariable, align 4, !dbg !497
  br label %for.inc, !dbg !499

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !500
  %inc6 = add nsw i32 %8, 1, !dbg !500
  store i32 %inc6, i32* %i, align 4, !dbg !500
  br label %for.cond, !dbg !501, !llvm.loop !502

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !504
  call void @printIntLine(i32 %9), !dbg !505
  br label %if.end7, !dbg !506

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !507

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_09_good() #0 !dbg !509 {
entry:
  call void @goodB2G1(), !dbg !510
  call void @goodB2G2(), !dbg !511
  call void @goodG2B1(), !dbg !512
  call void @goodG2B2(), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !515 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !518, metadata !DIExpression()), !dbg !519
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)), !dbg !520
  %0 = load i8*, i8** %line.addr, align 8, !dbg !521
  %cmp = icmp ne i8* %0, null, !dbg !523
  br i1 %cmp, label %if.then, label %if.end, !dbg !524

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !525
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !527
  br label %if.end, !dbg !528

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.9, i64 0, i64 0)), !dbg !529
  ret void, !dbg !530
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !531 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !532, metadata !DIExpression()), !dbg !533
  %0 = load i8*, i8** %line.addr, align 8, !dbg !534
  %cmp = icmp ne i8* %0, null, !dbg !536
  br i1 %cmp, label %if.then, label %if.end, !dbg !537

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !538
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !540
  br label %if.end, !dbg !541

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !543 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = load i32*, i32** %line.addr, align 8, !dbg !550
  %cmp = icmp ne i32* %0, null, !dbg !552
  br i1 %cmp, label %if.then, label %if.end, !dbg !553

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !554
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !556
  br label %if.end, !dbg !557

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !558
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !559 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !562, metadata !DIExpression()), !dbg !563
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !564
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.13, i64 0, i64 0), i32 %0), !dbg !565
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !567 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !571, metadata !DIExpression()), !dbg !572
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !573
  %conv = sext i16 %0 to i32, !dbg !573
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.14, i64 0, i64 0), i32 %conv), !dbg !574
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !576 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !580, metadata !DIExpression()), !dbg !581
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !582
  %conv = fpext float %0 to double, !dbg !582
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !583
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !585 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !588, metadata !DIExpression()), !dbg !589
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !590
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.15, i64 0, i64 0), i64 %0), !dbg !591
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !593 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !599, metadata !DIExpression()), !dbg !600
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !601
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.15, i64 0, i64 0), i64 %0), !dbg !602
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !604 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !607, metadata !DIExpression()), !dbg !608
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !609
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !610
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !612 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !615, metadata !DIExpression()), !dbg !616
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !617
  %conv = sext i8 %0 to i32, !dbg !617
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !618
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !620 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !623, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !625, metadata !DIExpression()), !dbg !629
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !630
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !631
  store i32 %0, i32* %arrayidx, align 4, !dbg !632
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !633
  store i32 0, i32* %arrayidx1, align 4, !dbg !634
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !635
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !636
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !638 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !641, metadata !DIExpression()), !dbg !642
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !643
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !644
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !646 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !649, metadata !DIExpression()), !dbg !650
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !651
  %conv = zext i8 %0 to i32, !dbg !651
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !652
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !654 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !658, metadata !DIExpression()), !dbg !659
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !660
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !661
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !663 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !673, metadata !DIExpression()), !dbg !674
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !675
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !676
  %1 = load i32, i32* %intOne, align 4, !dbg !676
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !677
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !678
  %3 = load i32, i32* %intTwo, align 4, !dbg !678
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !679
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !681 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !685, metadata !DIExpression()), !dbg !686
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !687, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.declare(metadata i64* %i, metadata !689, metadata !DIExpression()), !dbg !690
  store i64 0, i64* %i, align 8, !dbg !691
  br label %for.cond, !dbg !693

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !694
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !696
  %cmp = icmp ult i64 %0, %1, !dbg !697
  br i1 %cmp, label %for.body, label %for.end, !dbg !698

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !699
  %3 = load i64, i64* %i, align 8, !dbg !701
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !699
  %4 = load i8, i8* %arrayidx, align 1, !dbg !699
  %conv = zext i8 %4 to i32, !dbg !699
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !702
  br label %for.inc, !dbg !703

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !704
  %inc = add i64 %5, 1, !dbg !704
  store i64 %inc, i64* %i, align 8, !dbg !704
  br label %for.cond, !dbg !705, !llvm.loop !706

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !708
  ret void, !dbg !709
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !710 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !713, metadata !DIExpression()), !dbg !714
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !715, metadata !DIExpression()), !dbg !716
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !719, metadata !DIExpression()), !dbg !720
  store i64 0, i64* %numWritten, align 8, !dbg !720
  br label %while.cond, !dbg !721

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !722
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !723
  %cmp = icmp ult i64 %0, %1, !dbg !724
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !725

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !726
  %2 = load i16*, i16** %call, align 8, !dbg !726
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !726
  %4 = load i64, i64* %numWritten, align 8, !dbg !726
  %mul = mul i64 2, %4, !dbg !726
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !726
  %5 = load i8, i8* %arrayidx, align 1, !dbg !726
  %conv = sext i8 %5 to i32, !dbg !726
  %idxprom = sext i32 %conv to i64, !dbg !726
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !726
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !726
  %conv2 = zext i16 %6 to i32, !dbg !726
  %and = and i32 %conv2, 4096, !dbg !726
  %tobool = icmp ne i32 %and, 0, !dbg !726
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !727

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !728
  %7 = load i16*, i16** %call3, align 8, !dbg !728
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !728
  %9 = load i64, i64* %numWritten, align 8, !dbg !728
  %mul4 = mul i64 2, %9, !dbg !728
  %add = add i64 %mul4, 1, !dbg !728
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !728
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !728
  %conv6 = sext i8 %10 to i32, !dbg !728
  %idxprom7 = sext i32 %conv6 to i64, !dbg !728
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !728
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !728
  %conv9 = zext i16 %11 to i32, !dbg !728
  %and10 = and i32 %conv9, 4096, !dbg !728
  %tobool11 = icmp ne i32 %and10, 0, !dbg !727
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !729
  br i1 %12, label %while.body, label %while.end, !dbg !721

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !730, metadata !DIExpression()), !dbg !732
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !733
  %14 = load i64, i64* %numWritten, align 8, !dbg !734
  %mul12 = mul i64 2, %14, !dbg !735
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !733
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !736
  %15 = load i32, i32* %byte, align 4, !dbg !737
  %conv15 = trunc i32 %15 to i8, !dbg !738
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !739
  %17 = load i64, i64* %numWritten, align 8, !dbg !740
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !739
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !741
  %18 = load i64, i64* %numWritten, align 8, !dbg !742
  %inc = add i64 %18, 1, !dbg !742
  store i64 %inc, i64* %numWritten, align 8, !dbg !742
  br label %while.cond, !dbg !721, !llvm.loop !743

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !745
  ret i64 %19, !dbg !746
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !747 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !750, metadata !DIExpression()), !dbg !751
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !752, metadata !DIExpression()), !dbg !753
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !754, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !756, metadata !DIExpression()), !dbg !757
  store i64 0, i64* %numWritten, align 8, !dbg !757
  br label %while.cond, !dbg !758

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !759
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !760
  %cmp = icmp ult i64 %0, %1, !dbg !761
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !762

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !763
  %3 = load i64, i64* %numWritten, align 8, !dbg !764
  %mul = mul i64 2, %3, !dbg !765
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !763
  %4 = load i32, i32* %arrayidx, align 4, !dbg !763
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !766
  %tobool = icmp ne i32 %call, 0, !dbg !766
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !767

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !768
  %6 = load i64, i64* %numWritten, align 8, !dbg !769
  %mul1 = mul i64 2, %6, !dbg !770
  %add = add i64 %mul1, 1, !dbg !771
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !768
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !768
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !772
  %tobool4 = icmp ne i32 %call3, 0, !dbg !767
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !773
  br i1 %8, label %while.body, label %while.end, !dbg !758

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !774, metadata !DIExpression()), !dbg !776
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !777
  %10 = load i64, i64* %numWritten, align 8, !dbg !778
  %mul5 = mul i64 2, %10, !dbg !779
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !777
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !780
  %11 = load i32, i32* %byte, align 4, !dbg !781
  %conv = trunc i32 %11 to i8, !dbg !782
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !783
  %13 = load i64, i64* %numWritten, align 8, !dbg !784
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !783
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !785
  %14 = load i64, i64* %numWritten, align 8, !dbg !786
  %inc = add i64 %14, 1, !dbg !786
  store i64 %inc, i64* %numWritten, align 8, !dbg !786
  br label %while.cond, !dbg !758, !llvm.loop !787

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !789
  ret i64 %15, !dbg !790
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !791 {
entry:
  ret i32 1, !dbg !794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !795 {
entry:
  ret i32 0, !dbg !796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !797 {
entry:
  %call = call i32 @rand() #8, !dbg !798
  %rem = srem i32 %call, 2, !dbg !799
  ret i32 %rem, !dbg !800
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !801 {
entry:
  ret void, !dbg !802
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !803 {
entry:
  ret void, !dbg !804
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !805 {
entry:
  ret void, !dbg !806
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !807 {
entry:
  ret void, !dbg !808
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !809 {
entry:
  ret void, !dbg !810
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !811 {
entry:
  ret void, !dbg !812
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !813 {
entry:
  ret void, !dbg !814
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !815 {
entry:
  ret void, !dbg !816
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !817 {
entry:
  ret void, !dbg !818
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !819 {
entry:
  ret void, !dbg !820
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !821 {
entry:
  ret void, !dbg !822
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !823 {
entry:
  ret void, !dbg !824
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !825 {
entry:
  ret void, !dbg !826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !827 {
entry:
  ret void, !dbg !828
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !829 {
entry:
  ret void, !dbg !830
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !831 {
entry:
  ret void, !dbg !832
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !833 {
entry:
  ret void, !dbg !834
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !835 {
entry:
  ret void, !dbg !836
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_082/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_09.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_082/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_09_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!66 = !DILocation(line: 40, column: 8, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 44, type: !70)
!68 = distinct !DILexicalBlock(scope: !69, file: !45, line: 42, column: 9)
!69 = distinct !DILexicalBlock(scope: !65, file: !45, line: 41, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 44, column: 20, scope: !68)
!74 = !DILocation(line: 44, column: 37, scope: !68)
!75 = !DILocation(line: 44, column: 30, scope: !68)
!76 = !DILocalVariable(name: "pFile", scope: !68, file: !45, line: 45, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !98, !100, !101, !102, !106, !107, !109, !113, !116, !118, !121, !124, !125, !126, !127, !128}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !80, file: !81, line: 51, baseType: !23, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !80, file: !81, line: 54, baseType: !42, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !80, file: !81, line: 55, baseType: !42, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !80, file: !81, line: 56, baseType: !42, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !80, file: !81, line: 57, baseType: !42, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !80, file: !81, line: 58, baseType: !42, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !80, file: !81, line: 59, baseType: !42, size: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !80, file: !81, line: 60, baseType: !42, size: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !80, file: !81, line: 61, baseType: !42, size: 64, offset: 512)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !80, file: !81, line: 64, baseType: !42, size: 64, offset: 576)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !80, file: !81, line: 65, baseType: !42, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !80, file: !81, line: 66, baseType: !42, size: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !80, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !81, line: 36, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !80, file: !81, line: 70, baseType: !99, size: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !80, file: !81, line: 72, baseType: !23, size: 32, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !80, file: !81, line: 73, baseType: !23, size: 32, offset: 928)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !80, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !104, line: 152, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!105 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !80, file: !81, line: 77, baseType: !24, size: 16, offset: 1024)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !80, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!108 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !80, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 1)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !80, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !81, line: 43, baseType: null)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !80, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !104, line: 153, baseType: !105)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !80, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !81, line: 37, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !80, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !81, line: 38, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !80, file: !81, line: 93, baseType: !99, size: 64, offset: 1344)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !80, file: !81, line: 94, baseType: !22, size: 64, offset: 1408)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !80, file: !81, line: 95, baseType: !70, size: 64, offset: 1472)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !80, file: !81, line: 96, baseType: !23, size: 32, offset: 1536)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !80, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 20)
!132 = !DILocation(line: 45, column: 20, scope: !68)
!133 = !DILocation(line: 47, column: 21, scope: !134)
!134 = distinct !DILexicalBlock(scope: !68, file: !45, line: 47, column: 17)
!135 = !DILocation(line: 47, column: 20, scope: !134)
!136 = !DILocation(line: 47, column: 29, scope: !134)
!137 = !DILocation(line: 47, column: 17, scope: !68)
!138 = !DILocation(line: 49, column: 25, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !45, line: 48, column: 13)
!140 = !DILocation(line: 49, column: 23, scope: !139)
!141 = !DILocation(line: 50, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !45, line: 50, column: 21)
!143 = !DILocation(line: 50, column: 27, scope: !142)
!144 = !DILocation(line: 50, column: 21, scope: !139)
!145 = !DILocation(line: 53, column: 31, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !45, line: 53, column: 25)
!147 = distinct !DILexicalBlock(scope: !142, file: !45, line: 51, column: 17)
!148 = !DILocation(line: 53, column: 36, scope: !146)
!149 = !DILocation(line: 53, column: 35, scope: !146)
!150 = !DILocation(line: 53, column: 55, scope: !146)
!151 = !DILocation(line: 53, column: 54, scope: !146)
!152 = !DILocation(line: 53, column: 45, scope: !146)
!153 = !DILocation(line: 53, column: 65, scope: !146)
!154 = !DILocation(line: 53, column: 25, scope: !146)
!155 = !DILocation(line: 53, column: 72, scope: !146)
!156 = !DILocation(line: 53, column: 25, scope: !147)
!157 = !DILocation(line: 55, column: 25, scope: !158)
!158 = distinct !DILexicalBlock(scope: !146, file: !45, line: 54, column: 21)
!159 = !DILocation(line: 57, column: 25, scope: !158)
!160 = !DILocation(line: 57, column: 30, scope: !158)
!161 = !DILocation(line: 57, column: 39, scope: !158)
!162 = !DILocation(line: 58, column: 21, scope: !158)
!163 = !DILocation(line: 59, column: 28, scope: !147)
!164 = !DILocation(line: 59, column: 21, scope: !147)
!165 = !DILocation(line: 60, column: 17, scope: !147)
!166 = !DILocation(line: 61, column: 13, scope: !139)
!167 = !DILocation(line: 63, column: 5, scope: !69)
!168 = !DILocation(line: 64, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !52, file: !45, line: 64, column: 8)
!170 = !DILocation(line: 64, column: 8, scope: !52)
!171 = !DILocalVariable(name: "i", scope: !172, file: !45, line: 67, type: !23)
!172 = distinct !DILexicalBlock(scope: !173, file: !45, line: 66, column: 9)
!173 = distinct !DILexicalBlock(scope: !169, file: !45, line: 65, column: 5)
!174 = !DILocation(line: 67, column: 17, scope: !172)
!175 = !DILocalVariable(name: "n", scope: !172, file: !45, line: 67, type: !23)
!176 = !DILocation(line: 67, column: 20, scope: !172)
!177 = !DILocalVariable(name: "intVariable", scope: !172, file: !45, line: 67, type: !23)
!178 = !DILocation(line: 67, column: 23, scope: !172)
!179 = !DILocation(line: 68, column: 24, scope: !180)
!180 = distinct !DILexicalBlock(scope: !172, file: !45, line: 68, column: 17)
!181 = !DILocation(line: 68, column: 17, scope: !180)
!182 = !DILocation(line: 68, column: 40, scope: !180)
!183 = !DILocation(line: 68, column: 17, scope: !172)
!184 = !DILocation(line: 71, column: 29, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !45, line: 69, column: 13)
!186 = !DILocation(line: 72, column: 24, scope: !187)
!187 = distinct !DILexicalBlock(scope: !185, file: !45, line: 72, column: 17)
!188 = !DILocation(line: 72, column: 22, scope: !187)
!189 = !DILocation(line: 72, column: 29, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !45, line: 72, column: 17)
!191 = !DILocation(line: 72, column: 33, scope: !190)
!192 = !DILocation(line: 72, column: 31, scope: !190)
!193 = !DILocation(line: 72, column: 17, scope: !187)
!194 = !DILocation(line: 75, column: 32, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !45, line: 73, column: 17)
!196 = !DILocation(line: 76, column: 17, scope: !195)
!197 = !DILocation(line: 72, column: 37, scope: !190)
!198 = !DILocation(line: 72, column: 17, scope: !190)
!199 = distinct !{!199, !193, !200, !201}
!200 = !DILocation(line: 76, column: 17, scope: !187)
!201 = !{!"llvm.loop.mustprogress"}
!202 = !DILocation(line: 77, column: 30, scope: !185)
!203 = !DILocation(line: 77, column: 17, scope: !185)
!204 = !DILocation(line: 78, column: 13, scope: !185)
!205 = !DILocation(line: 80, column: 5, scope: !173)
!206 = !DILocation(line: 81, column: 1, scope: !52)
!207 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 88, type: !53, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!208 = !DILocalVariable(name: "data", scope: !207, file: !45, line: 90, type: !42)
!209 = !DILocation(line: 90, column: 12, scope: !207)
!210 = !DILocalVariable(name: "dataBuffer", scope: !207, file: !45, line: 91, type: !58)
!211 = !DILocation(line: 91, column: 10, scope: !207)
!212 = !DILocation(line: 92, column: 12, scope: !207)
!213 = !DILocation(line: 92, column: 10, scope: !207)
!214 = !DILocation(line: 93, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !207, file: !45, line: 93, column: 8)
!216 = !DILocation(line: 93, column: 8, scope: !207)
!217 = !DILocalVariable(name: "dataLen", scope: !218, file: !45, line: 97, type: !70)
!218 = distinct !DILexicalBlock(scope: !219, file: !45, line: 95, column: 9)
!219 = distinct !DILexicalBlock(scope: !215, file: !45, line: 94, column: 5)
!220 = !DILocation(line: 97, column: 20, scope: !218)
!221 = !DILocation(line: 97, column: 37, scope: !218)
!222 = !DILocation(line: 97, column: 30, scope: !218)
!223 = !DILocalVariable(name: "pFile", scope: !218, file: !45, line: 98, type: !77)
!224 = !DILocation(line: 98, column: 20, scope: !218)
!225 = !DILocation(line: 100, column: 21, scope: !226)
!226 = distinct !DILexicalBlock(scope: !218, file: !45, line: 100, column: 17)
!227 = !DILocation(line: 100, column: 20, scope: !226)
!228 = !DILocation(line: 100, column: 29, scope: !226)
!229 = !DILocation(line: 100, column: 17, scope: !218)
!230 = !DILocation(line: 102, column: 25, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !45, line: 101, column: 13)
!232 = !DILocation(line: 102, column: 23, scope: !231)
!233 = !DILocation(line: 103, column: 21, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !45, line: 103, column: 21)
!235 = !DILocation(line: 103, column: 27, scope: !234)
!236 = !DILocation(line: 103, column: 21, scope: !231)
!237 = !DILocation(line: 106, column: 31, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !45, line: 106, column: 25)
!239 = distinct !DILexicalBlock(scope: !234, file: !45, line: 104, column: 17)
!240 = !DILocation(line: 106, column: 36, scope: !238)
!241 = !DILocation(line: 106, column: 35, scope: !238)
!242 = !DILocation(line: 106, column: 55, scope: !238)
!243 = !DILocation(line: 106, column: 54, scope: !238)
!244 = !DILocation(line: 106, column: 45, scope: !238)
!245 = !DILocation(line: 106, column: 65, scope: !238)
!246 = !DILocation(line: 106, column: 25, scope: !238)
!247 = !DILocation(line: 106, column: 72, scope: !238)
!248 = !DILocation(line: 106, column: 25, scope: !239)
!249 = !DILocation(line: 108, column: 25, scope: !250)
!250 = distinct !DILexicalBlock(scope: !238, file: !45, line: 107, column: 21)
!251 = !DILocation(line: 110, column: 25, scope: !250)
!252 = !DILocation(line: 110, column: 30, scope: !250)
!253 = !DILocation(line: 110, column: 39, scope: !250)
!254 = !DILocation(line: 111, column: 21, scope: !250)
!255 = !DILocation(line: 112, column: 28, scope: !239)
!256 = !DILocation(line: 112, column: 21, scope: !239)
!257 = !DILocation(line: 113, column: 17, scope: !239)
!258 = !DILocation(line: 114, column: 13, scope: !231)
!259 = !DILocation(line: 116, column: 5, scope: !219)
!260 = !DILocation(line: 117, column: 8, scope: !261)
!261 = distinct !DILexicalBlock(scope: !207, file: !45, line: 117, column: 8)
!262 = !DILocation(line: 117, column: 8, scope: !207)
!263 = !DILocation(line: 120, column: 9, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !45, line: 118, column: 5)
!265 = !DILocation(line: 121, column: 5, scope: !264)
!266 = !DILocalVariable(name: "i", scope: !267, file: !45, line: 125, type: !23)
!267 = distinct !DILexicalBlock(scope: !268, file: !45, line: 124, column: 9)
!268 = distinct !DILexicalBlock(scope: !261, file: !45, line: 123, column: 5)
!269 = !DILocation(line: 125, column: 17, scope: !267)
!270 = !DILocalVariable(name: "n", scope: !267, file: !45, line: 125, type: !23)
!271 = !DILocation(line: 125, column: 20, scope: !267)
!272 = !DILocalVariable(name: "intVariable", scope: !267, file: !45, line: 125, type: !23)
!273 = !DILocation(line: 125, column: 23, scope: !267)
!274 = !DILocation(line: 126, column: 24, scope: !275)
!275 = distinct !DILexicalBlock(scope: !267, file: !45, line: 126, column: 17)
!276 = !DILocation(line: 126, column: 17, scope: !275)
!277 = !DILocation(line: 126, column: 40, scope: !275)
!278 = !DILocation(line: 126, column: 17, scope: !267)
!279 = !DILocation(line: 129, column: 21, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !45, line: 129, column: 21)
!281 = distinct !DILexicalBlock(scope: !275, file: !45, line: 127, column: 13)
!282 = !DILocation(line: 129, column: 23, scope: !280)
!283 = !DILocation(line: 129, column: 21, scope: !281)
!284 = !DILocation(line: 131, column: 33, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !45, line: 130, column: 17)
!286 = !DILocation(line: 132, column: 28, scope: !287)
!287 = distinct !DILexicalBlock(scope: !285, file: !45, line: 132, column: 21)
!288 = !DILocation(line: 132, column: 26, scope: !287)
!289 = !DILocation(line: 132, column: 33, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !45, line: 132, column: 21)
!291 = !DILocation(line: 132, column: 37, scope: !290)
!292 = !DILocation(line: 132, column: 35, scope: !290)
!293 = !DILocation(line: 132, column: 21, scope: !287)
!294 = !DILocation(line: 135, column: 36, scope: !295)
!295 = distinct !DILexicalBlock(scope: !290, file: !45, line: 133, column: 21)
!296 = !DILocation(line: 136, column: 21, scope: !295)
!297 = !DILocation(line: 132, column: 41, scope: !290)
!298 = !DILocation(line: 132, column: 21, scope: !290)
!299 = distinct !{!299, !293, !300, !201}
!300 = !DILocation(line: 136, column: 21, scope: !287)
!301 = !DILocation(line: 137, column: 34, scope: !285)
!302 = !DILocation(line: 137, column: 21, scope: !285)
!303 = !DILocation(line: 138, column: 17, scope: !285)
!304 = !DILocation(line: 139, column: 13, scope: !281)
!305 = !DILocation(line: 142, column: 1, scope: !207)
!306 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 145, type: !53, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!307 = !DILocalVariable(name: "data", scope: !306, file: !45, line: 147, type: !42)
!308 = !DILocation(line: 147, column: 12, scope: !306)
!309 = !DILocalVariable(name: "dataBuffer", scope: !306, file: !45, line: 148, type: !58)
!310 = !DILocation(line: 148, column: 10, scope: !306)
!311 = !DILocation(line: 149, column: 12, scope: !306)
!312 = !DILocation(line: 149, column: 10, scope: !306)
!313 = !DILocation(line: 150, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !306, file: !45, line: 150, column: 8)
!315 = !DILocation(line: 150, column: 8, scope: !306)
!316 = !DILocalVariable(name: "dataLen", scope: !317, file: !45, line: 154, type: !70)
!317 = distinct !DILexicalBlock(scope: !318, file: !45, line: 152, column: 9)
!318 = distinct !DILexicalBlock(scope: !314, file: !45, line: 151, column: 5)
!319 = !DILocation(line: 154, column: 20, scope: !317)
!320 = !DILocation(line: 154, column: 37, scope: !317)
!321 = !DILocation(line: 154, column: 30, scope: !317)
!322 = !DILocalVariable(name: "pFile", scope: !317, file: !45, line: 155, type: !77)
!323 = !DILocation(line: 155, column: 20, scope: !317)
!324 = !DILocation(line: 157, column: 21, scope: !325)
!325 = distinct !DILexicalBlock(scope: !317, file: !45, line: 157, column: 17)
!326 = !DILocation(line: 157, column: 20, scope: !325)
!327 = !DILocation(line: 157, column: 29, scope: !325)
!328 = !DILocation(line: 157, column: 17, scope: !317)
!329 = !DILocation(line: 159, column: 25, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !45, line: 158, column: 13)
!331 = !DILocation(line: 159, column: 23, scope: !330)
!332 = !DILocation(line: 160, column: 21, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !45, line: 160, column: 21)
!334 = !DILocation(line: 160, column: 27, scope: !333)
!335 = !DILocation(line: 160, column: 21, scope: !330)
!336 = !DILocation(line: 163, column: 31, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !45, line: 163, column: 25)
!338 = distinct !DILexicalBlock(scope: !333, file: !45, line: 161, column: 17)
!339 = !DILocation(line: 163, column: 36, scope: !337)
!340 = !DILocation(line: 163, column: 35, scope: !337)
!341 = !DILocation(line: 163, column: 55, scope: !337)
!342 = !DILocation(line: 163, column: 54, scope: !337)
!343 = !DILocation(line: 163, column: 45, scope: !337)
!344 = !DILocation(line: 163, column: 65, scope: !337)
!345 = !DILocation(line: 163, column: 25, scope: !337)
!346 = !DILocation(line: 163, column: 72, scope: !337)
!347 = !DILocation(line: 163, column: 25, scope: !338)
!348 = !DILocation(line: 165, column: 25, scope: !349)
!349 = distinct !DILexicalBlock(scope: !337, file: !45, line: 164, column: 21)
!350 = !DILocation(line: 167, column: 25, scope: !349)
!351 = !DILocation(line: 167, column: 30, scope: !349)
!352 = !DILocation(line: 167, column: 39, scope: !349)
!353 = !DILocation(line: 168, column: 21, scope: !349)
!354 = !DILocation(line: 169, column: 28, scope: !338)
!355 = !DILocation(line: 169, column: 21, scope: !338)
!356 = !DILocation(line: 170, column: 17, scope: !338)
!357 = !DILocation(line: 171, column: 13, scope: !330)
!358 = !DILocation(line: 173, column: 5, scope: !318)
!359 = !DILocation(line: 174, column: 8, scope: !360)
!360 = distinct !DILexicalBlock(scope: !306, file: !45, line: 174, column: 8)
!361 = !DILocation(line: 174, column: 8, scope: !306)
!362 = !DILocalVariable(name: "i", scope: !363, file: !45, line: 177, type: !23)
!363 = distinct !DILexicalBlock(scope: !364, file: !45, line: 176, column: 9)
!364 = distinct !DILexicalBlock(scope: !360, file: !45, line: 175, column: 5)
!365 = !DILocation(line: 177, column: 17, scope: !363)
!366 = !DILocalVariable(name: "n", scope: !363, file: !45, line: 177, type: !23)
!367 = !DILocation(line: 177, column: 20, scope: !363)
!368 = !DILocalVariable(name: "intVariable", scope: !363, file: !45, line: 177, type: !23)
!369 = !DILocation(line: 177, column: 23, scope: !363)
!370 = !DILocation(line: 178, column: 24, scope: !371)
!371 = distinct !DILexicalBlock(scope: !363, file: !45, line: 178, column: 17)
!372 = !DILocation(line: 178, column: 17, scope: !371)
!373 = !DILocation(line: 178, column: 40, scope: !371)
!374 = !DILocation(line: 178, column: 17, scope: !363)
!375 = !DILocation(line: 181, column: 21, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !45, line: 181, column: 21)
!377 = distinct !DILexicalBlock(scope: !371, file: !45, line: 179, column: 13)
!378 = !DILocation(line: 181, column: 23, scope: !376)
!379 = !DILocation(line: 181, column: 21, scope: !377)
!380 = !DILocation(line: 183, column: 33, scope: !381)
!381 = distinct !DILexicalBlock(scope: !376, file: !45, line: 182, column: 17)
!382 = !DILocation(line: 184, column: 28, scope: !383)
!383 = distinct !DILexicalBlock(scope: !381, file: !45, line: 184, column: 21)
!384 = !DILocation(line: 184, column: 26, scope: !383)
!385 = !DILocation(line: 184, column: 33, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !45, line: 184, column: 21)
!387 = !DILocation(line: 184, column: 37, scope: !386)
!388 = !DILocation(line: 184, column: 35, scope: !386)
!389 = !DILocation(line: 184, column: 21, scope: !383)
!390 = !DILocation(line: 187, column: 36, scope: !391)
!391 = distinct !DILexicalBlock(scope: !386, file: !45, line: 185, column: 21)
!392 = !DILocation(line: 188, column: 21, scope: !391)
!393 = !DILocation(line: 184, column: 41, scope: !386)
!394 = !DILocation(line: 184, column: 21, scope: !386)
!395 = distinct !{!395, !389, !396, !201}
!396 = !DILocation(line: 188, column: 21, scope: !383)
!397 = !DILocation(line: 189, column: 34, scope: !381)
!398 = !DILocation(line: 189, column: 21, scope: !381)
!399 = !DILocation(line: 190, column: 17, scope: !381)
!400 = !DILocation(line: 191, column: 13, scope: !377)
!401 = !DILocation(line: 193, column: 5, scope: !364)
!402 = !DILocation(line: 194, column: 1, scope: !306)
!403 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 197, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!404 = !DILocalVariable(name: "data", scope: !403, file: !45, line: 199, type: !42)
!405 = !DILocation(line: 199, column: 12, scope: !403)
!406 = !DILocalVariable(name: "dataBuffer", scope: !403, file: !45, line: 200, type: !58)
!407 = !DILocation(line: 200, column: 10, scope: !403)
!408 = !DILocation(line: 201, column: 12, scope: !403)
!409 = !DILocation(line: 201, column: 10, scope: !403)
!410 = !DILocation(line: 202, column: 8, scope: !411)
!411 = distinct !DILexicalBlock(scope: !403, file: !45, line: 202, column: 8)
!412 = !DILocation(line: 202, column: 8, scope: !403)
!413 = !DILocation(line: 205, column: 9, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !45, line: 203, column: 5)
!415 = !DILocation(line: 206, column: 5, scope: !414)
!416 = !DILocation(line: 210, column: 16, scope: !417)
!417 = distinct !DILexicalBlock(scope: !411, file: !45, line: 208, column: 5)
!418 = !DILocation(line: 210, column: 9, scope: !417)
!419 = !DILocation(line: 212, column: 8, scope: !420)
!420 = distinct !DILexicalBlock(scope: !403, file: !45, line: 212, column: 8)
!421 = !DILocation(line: 212, column: 8, scope: !403)
!422 = !DILocalVariable(name: "i", scope: !423, file: !45, line: 215, type: !23)
!423 = distinct !DILexicalBlock(scope: !424, file: !45, line: 214, column: 9)
!424 = distinct !DILexicalBlock(scope: !420, file: !45, line: 213, column: 5)
!425 = !DILocation(line: 215, column: 17, scope: !423)
!426 = !DILocalVariable(name: "n", scope: !423, file: !45, line: 215, type: !23)
!427 = !DILocation(line: 215, column: 20, scope: !423)
!428 = !DILocalVariable(name: "intVariable", scope: !423, file: !45, line: 215, type: !23)
!429 = !DILocation(line: 215, column: 23, scope: !423)
!430 = !DILocation(line: 216, column: 24, scope: !431)
!431 = distinct !DILexicalBlock(scope: !423, file: !45, line: 216, column: 17)
!432 = !DILocation(line: 216, column: 17, scope: !431)
!433 = !DILocation(line: 216, column: 40, scope: !431)
!434 = !DILocation(line: 216, column: 17, scope: !423)
!435 = !DILocation(line: 219, column: 29, scope: !436)
!436 = distinct !DILexicalBlock(scope: !431, file: !45, line: 217, column: 13)
!437 = !DILocation(line: 220, column: 24, scope: !438)
!438 = distinct !DILexicalBlock(scope: !436, file: !45, line: 220, column: 17)
!439 = !DILocation(line: 220, column: 22, scope: !438)
!440 = !DILocation(line: 220, column: 29, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !45, line: 220, column: 17)
!442 = !DILocation(line: 220, column: 33, scope: !441)
!443 = !DILocation(line: 220, column: 31, scope: !441)
!444 = !DILocation(line: 220, column: 17, scope: !438)
!445 = !DILocation(line: 223, column: 32, scope: !446)
!446 = distinct !DILexicalBlock(scope: !441, file: !45, line: 221, column: 17)
!447 = !DILocation(line: 224, column: 17, scope: !446)
!448 = !DILocation(line: 220, column: 37, scope: !441)
!449 = !DILocation(line: 220, column: 17, scope: !441)
!450 = distinct !{!450, !444, !451, !201}
!451 = !DILocation(line: 224, column: 17, scope: !438)
!452 = !DILocation(line: 225, column: 30, scope: !436)
!453 = !DILocation(line: 225, column: 17, scope: !436)
!454 = !DILocation(line: 226, column: 13, scope: !436)
!455 = !DILocation(line: 228, column: 5, scope: !424)
!456 = !DILocation(line: 229, column: 1, scope: !403)
!457 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 232, type: !53, scopeLine: 233, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!458 = !DILocalVariable(name: "data", scope: !457, file: !45, line: 234, type: !42)
!459 = !DILocation(line: 234, column: 12, scope: !457)
!460 = !DILocalVariable(name: "dataBuffer", scope: !457, file: !45, line: 235, type: !58)
!461 = !DILocation(line: 235, column: 10, scope: !457)
!462 = !DILocation(line: 236, column: 12, scope: !457)
!463 = !DILocation(line: 236, column: 10, scope: !457)
!464 = !DILocation(line: 237, column: 8, scope: !465)
!465 = distinct !DILexicalBlock(scope: !457, file: !45, line: 237, column: 8)
!466 = !DILocation(line: 237, column: 8, scope: !457)
!467 = !DILocation(line: 240, column: 16, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !45, line: 238, column: 5)
!469 = !DILocation(line: 240, column: 9, scope: !468)
!470 = !DILocation(line: 241, column: 5, scope: !468)
!471 = !DILocation(line: 242, column: 8, scope: !472)
!472 = distinct !DILexicalBlock(scope: !457, file: !45, line: 242, column: 8)
!473 = !DILocation(line: 242, column: 8, scope: !457)
!474 = !DILocalVariable(name: "i", scope: !475, file: !45, line: 245, type: !23)
!475 = distinct !DILexicalBlock(scope: !476, file: !45, line: 244, column: 9)
!476 = distinct !DILexicalBlock(scope: !472, file: !45, line: 243, column: 5)
!477 = !DILocation(line: 245, column: 17, scope: !475)
!478 = !DILocalVariable(name: "n", scope: !475, file: !45, line: 245, type: !23)
!479 = !DILocation(line: 245, column: 20, scope: !475)
!480 = !DILocalVariable(name: "intVariable", scope: !475, file: !45, line: 245, type: !23)
!481 = !DILocation(line: 245, column: 23, scope: !475)
!482 = !DILocation(line: 246, column: 24, scope: !483)
!483 = distinct !DILexicalBlock(scope: !475, file: !45, line: 246, column: 17)
!484 = !DILocation(line: 246, column: 17, scope: !483)
!485 = !DILocation(line: 246, column: 40, scope: !483)
!486 = !DILocation(line: 246, column: 17, scope: !475)
!487 = !DILocation(line: 249, column: 29, scope: !488)
!488 = distinct !DILexicalBlock(scope: !483, file: !45, line: 247, column: 13)
!489 = !DILocation(line: 250, column: 24, scope: !490)
!490 = distinct !DILexicalBlock(scope: !488, file: !45, line: 250, column: 17)
!491 = !DILocation(line: 250, column: 22, scope: !490)
!492 = !DILocation(line: 250, column: 29, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !45, line: 250, column: 17)
!494 = !DILocation(line: 250, column: 33, scope: !493)
!495 = !DILocation(line: 250, column: 31, scope: !493)
!496 = !DILocation(line: 250, column: 17, scope: !490)
!497 = !DILocation(line: 253, column: 32, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !45, line: 251, column: 17)
!499 = !DILocation(line: 254, column: 17, scope: !498)
!500 = !DILocation(line: 250, column: 37, scope: !493)
!501 = !DILocation(line: 250, column: 17, scope: !493)
!502 = distinct !{!502, !496, !503, !201}
!503 = !DILocation(line: 254, column: 17, scope: !490)
!504 = !DILocation(line: 255, column: 30, scope: !488)
!505 = !DILocation(line: 255, column: 17, scope: !488)
!506 = !DILocation(line: 256, column: 13, scope: !488)
!507 = !DILocation(line: 258, column: 5, scope: !476)
!508 = !DILocation(line: 259, column: 1, scope: !457)
!509 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_09_good", scope: !45, file: !45, line: 261, type: !53, scopeLine: 262, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!510 = !DILocation(line: 263, column: 5, scope: !509)
!511 = !DILocation(line: 264, column: 5, scope: !509)
!512 = !DILocation(line: 265, column: 5, scope: !509)
!513 = !DILocation(line: 266, column: 5, scope: !509)
!514 = !DILocation(line: 267, column: 1, scope: !509)
!515 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !516, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !42}
!518 = !DILocalVariable(name: "line", arg: 1, scope: !515, file: !3, line: 11, type: !42)
!519 = !DILocation(line: 11, column: 25, scope: !515)
!520 = !DILocation(line: 13, column: 1, scope: !515)
!521 = !DILocation(line: 14, column: 8, scope: !522)
!522 = distinct !DILexicalBlock(scope: !515, file: !3, line: 14, column: 8)
!523 = !DILocation(line: 14, column: 13, scope: !522)
!524 = !DILocation(line: 14, column: 8, scope: !515)
!525 = !DILocation(line: 16, column: 24, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !3, line: 15, column: 5)
!527 = !DILocation(line: 16, column: 9, scope: !526)
!528 = !DILocation(line: 17, column: 5, scope: !526)
!529 = !DILocation(line: 18, column: 5, scope: !515)
!530 = !DILocation(line: 19, column: 1, scope: !515)
!531 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !516, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocalVariable(name: "line", arg: 1, scope: !531, file: !3, line: 20, type: !42)
!533 = !DILocation(line: 20, column: 29, scope: !531)
!534 = !DILocation(line: 22, column: 8, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !3, line: 22, column: 8)
!536 = !DILocation(line: 22, column: 13, scope: !535)
!537 = !DILocation(line: 22, column: 8, scope: !531)
!538 = !DILocation(line: 24, column: 24, scope: !539)
!539 = distinct !DILexicalBlock(scope: !535, file: !3, line: 23, column: 5)
!540 = !DILocation(line: 24, column: 9, scope: !539)
!541 = !DILocation(line: 25, column: 5, scope: !539)
!542 = !DILocation(line: 26, column: 1, scope: !531)
!543 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !544, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!548 = !DILocalVariable(name: "line", arg: 1, scope: !543, file: !3, line: 27, type: !546)
!549 = !DILocation(line: 27, column: 29, scope: !543)
!550 = !DILocation(line: 29, column: 8, scope: !551)
!551 = distinct !DILexicalBlock(scope: !543, file: !3, line: 29, column: 8)
!552 = !DILocation(line: 29, column: 13, scope: !551)
!553 = !DILocation(line: 29, column: 8, scope: !543)
!554 = !DILocation(line: 31, column: 27, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !3, line: 30, column: 5)
!556 = !DILocation(line: 31, column: 9, scope: !555)
!557 = !DILocation(line: 32, column: 5, scope: !555)
!558 = !DILocation(line: 33, column: 1, scope: !543)
!559 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !560, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !23}
!562 = !DILocalVariable(name: "intNumber", arg: 1, scope: !559, file: !3, line: 35, type: !23)
!563 = !DILocation(line: 35, column: 24, scope: !559)
!564 = !DILocation(line: 37, column: 20, scope: !559)
!565 = !DILocation(line: 37, column: 5, scope: !559)
!566 = !DILocation(line: 38, column: 1, scope: !559)
!567 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !568, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !570}
!570 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!571 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !567, file: !3, line: 40, type: !570)
!572 = !DILocation(line: 40, column: 28, scope: !567)
!573 = !DILocation(line: 42, column: 21, scope: !567)
!574 = !DILocation(line: 42, column: 5, scope: !567)
!575 = !DILocation(line: 43, column: 1, scope: !567)
!576 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !577, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !579}
!579 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!580 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !576, file: !3, line: 45, type: !579)
!581 = !DILocation(line: 45, column: 28, scope: !576)
!582 = !DILocation(line: 47, column: 20, scope: !576)
!583 = !DILocation(line: 47, column: 5, scope: !576)
!584 = !DILocation(line: 48, column: 1, scope: !576)
!585 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !586, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !105}
!588 = !DILocalVariable(name: "longNumber", arg: 1, scope: !585, file: !3, line: 50, type: !105)
!589 = !DILocation(line: 50, column: 26, scope: !585)
!590 = !DILocation(line: 52, column: 21, scope: !585)
!591 = !DILocation(line: 52, column: 5, scope: !585)
!592 = !DILocation(line: 53, column: 1, scope: !585)
!593 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !594, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !596}
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !597, line: 27, baseType: !598)
!597 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !104, line: 44, baseType: !105)
!599 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !593, file: !3, line: 55, type: !596)
!600 = !DILocation(line: 55, column: 33, scope: !593)
!601 = !DILocation(line: 57, column: 29, scope: !593)
!602 = !DILocation(line: 57, column: 5, scope: !593)
!603 = !DILocation(line: 58, column: 1, scope: !593)
!604 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !605, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !70}
!607 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !604, file: !3, line: 60, type: !70)
!608 = !DILocation(line: 60, column: 29, scope: !604)
!609 = !DILocation(line: 62, column: 21, scope: !604)
!610 = !DILocation(line: 62, column: 5, scope: !604)
!611 = !DILocation(line: 63, column: 1, scope: !604)
!612 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !613, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !43}
!615 = !DILocalVariable(name: "charHex", arg: 1, scope: !612, file: !3, line: 65, type: !43)
!616 = !DILocation(line: 65, column: 29, scope: !612)
!617 = !DILocation(line: 67, column: 22, scope: !612)
!618 = !DILocation(line: 67, column: 5, scope: !612)
!619 = !DILocation(line: 68, column: 1, scope: !612)
!620 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !621, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !547}
!623 = !DILocalVariable(name: "wideChar", arg: 1, scope: !620, file: !3, line: 70, type: !547)
!624 = !DILocation(line: 70, column: 29, scope: !620)
!625 = !DILocalVariable(name: "s", scope: !620, file: !3, line: 74, type: !626)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 64, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 2)
!629 = !DILocation(line: 74, column: 13, scope: !620)
!630 = !DILocation(line: 75, column: 16, scope: !620)
!631 = !DILocation(line: 75, column: 9, scope: !620)
!632 = !DILocation(line: 75, column: 14, scope: !620)
!633 = !DILocation(line: 76, column: 9, scope: !620)
!634 = !DILocation(line: 76, column: 14, scope: !620)
!635 = !DILocation(line: 77, column: 21, scope: !620)
!636 = !DILocation(line: 77, column: 5, scope: !620)
!637 = !DILocation(line: 78, column: 1, scope: !620)
!638 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !639, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !7}
!641 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !638, file: !3, line: 80, type: !7)
!642 = !DILocation(line: 80, column: 33, scope: !638)
!643 = !DILocation(line: 82, column: 20, scope: !638)
!644 = !DILocation(line: 82, column: 5, scope: !638)
!645 = !DILocation(line: 83, column: 1, scope: !638)
!646 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !647, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !25}
!649 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !646, file: !3, line: 85, type: !25)
!650 = !DILocation(line: 85, column: 45, scope: !646)
!651 = !DILocation(line: 87, column: 22, scope: !646)
!652 = !DILocation(line: 87, column: 5, scope: !646)
!653 = !DILocation(line: 88, column: 1, scope: !646)
!654 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !655, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !657}
!657 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!658 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !654, file: !3, line: 90, type: !657)
!659 = !DILocation(line: 90, column: 29, scope: !654)
!660 = !DILocation(line: 92, column: 20, scope: !654)
!661 = !DILocation(line: 92, column: 5, scope: !654)
!662 = !DILocation(line: 93, column: 1, scope: !654)
!663 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !664, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !666}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !668, line: 100, baseType: !669)
!668 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_082/source_code")
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !668, line: 96, size: 64, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !669, file: !668, line: 98, baseType: !23, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !669, file: !668, line: 99, baseType: !23, size: 32, offset: 32)
!673 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !663, file: !3, line: 95, type: !666)
!674 = !DILocation(line: 95, column: 40, scope: !663)
!675 = !DILocation(line: 97, column: 26, scope: !663)
!676 = !DILocation(line: 97, column: 47, scope: !663)
!677 = !DILocation(line: 97, column: 55, scope: !663)
!678 = !DILocation(line: 97, column: 76, scope: !663)
!679 = !DILocation(line: 97, column: 5, scope: !663)
!680 = !DILocation(line: 98, column: 1, scope: !663)
!681 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !682, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !684, !70}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!685 = !DILocalVariable(name: "bytes", arg: 1, scope: !681, file: !3, line: 100, type: !684)
!686 = !DILocation(line: 100, column: 38, scope: !681)
!687 = !DILocalVariable(name: "numBytes", arg: 2, scope: !681, file: !3, line: 100, type: !70)
!688 = !DILocation(line: 100, column: 52, scope: !681)
!689 = !DILocalVariable(name: "i", scope: !681, file: !3, line: 102, type: !70)
!690 = !DILocation(line: 102, column: 12, scope: !681)
!691 = !DILocation(line: 103, column: 12, scope: !692)
!692 = distinct !DILexicalBlock(scope: !681, file: !3, line: 103, column: 5)
!693 = !DILocation(line: 103, column: 10, scope: !692)
!694 = !DILocation(line: 103, column: 17, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !3, line: 103, column: 5)
!696 = !DILocation(line: 103, column: 21, scope: !695)
!697 = !DILocation(line: 103, column: 19, scope: !695)
!698 = !DILocation(line: 103, column: 5, scope: !692)
!699 = !DILocation(line: 105, column: 24, scope: !700)
!700 = distinct !DILexicalBlock(scope: !695, file: !3, line: 104, column: 5)
!701 = !DILocation(line: 105, column: 30, scope: !700)
!702 = !DILocation(line: 105, column: 9, scope: !700)
!703 = !DILocation(line: 106, column: 5, scope: !700)
!704 = !DILocation(line: 103, column: 31, scope: !695)
!705 = !DILocation(line: 103, column: 5, scope: !695)
!706 = distinct !{!706, !698, !707, !201}
!707 = !DILocation(line: 106, column: 5, scope: !692)
!708 = !DILocation(line: 107, column: 5, scope: !681)
!709 = !DILocation(line: 108, column: 1, scope: !681)
!710 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !711, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!711 = !DISubroutineType(types: !712)
!712 = !{!70, !684, !70, !42}
!713 = !DILocalVariable(name: "bytes", arg: 1, scope: !710, file: !3, line: 113, type: !684)
!714 = !DILocation(line: 113, column: 39, scope: !710)
!715 = !DILocalVariable(name: "numBytes", arg: 2, scope: !710, file: !3, line: 113, type: !70)
!716 = !DILocation(line: 113, column: 53, scope: !710)
!717 = !DILocalVariable(name: "hex", arg: 3, scope: !710, file: !3, line: 113, type: !42)
!718 = !DILocation(line: 113, column: 71, scope: !710)
!719 = !DILocalVariable(name: "numWritten", scope: !710, file: !3, line: 115, type: !70)
!720 = !DILocation(line: 115, column: 12, scope: !710)
!721 = !DILocation(line: 121, column: 5, scope: !710)
!722 = !DILocation(line: 121, column: 12, scope: !710)
!723 = !DILocation(line: 121, column: 25, scope: !710)
!724 = !DILocation(line: 121, column: 23, scope: !710)
!725 = !DILocation(line: 121, column: 34, scope: !710)
!726 = !DILocation(line: 121, column: 37, scope: !710)
!727 = !DILocation(line: 121, column: 67, scope: !710)
!728 = !DILocation(line: 121, column: 70, scope: !710)
!729 = !DILocation(line: 0, scope: !710)
!730 = !DILocalVariable(name: "byte", scope: !731, file: !3, line: 123, type: !23)
!731 = distinct !DILexicalBlock(scope: !710, file: !3, line: 122, column: 5)
!732 = !DILocation(line: 123, column: 13, scope: !731)
!733 = !DILocation(line: 124, column: 17, scope: !731)
!734 = !DILocation(line: 124, column: 25, scope: !731)
!735 = !DILocation(line: 124, column: 23, scope: !731)
!736 = !DILocation(line: 124, column: 9, scope: !731)
!737 = !DILocation(line: 125, column: 45, scope: !731)
!738 = !DILocation(line: 125, column: 29, scope: !731)
!739 = !DILocation(line: 125, column: 9, scope: !731)
!740 = !DILocation(line: 125, column: 15, scope: !731)
!741 = !DILocation(line: 125, column: 27, scope: !731)
!742 = !DILocation(line: 126, column: 9, scope: !731)
!743 = distinct !{!743, !721, !744, !201}
!744 = !DILocation(line: 127, column: 5, scope: !710)
!745 = !DILocation(line: 129, column: 12, scope: !710)
!746 = !DILocation(line: 129, column: 5, scope: !710)
!747 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !748, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!748 = !DISubroutineType(types: !749)
!749 = !{!70, !684, !70, !546}
!750 = !DILocalVariable(name: "bytes", arg: 1, scope: !747, file: !3, line: 135, type: !684)
!751 = !DILocation(line: 135, column: 41, scope: !747)
!752 = !DILocalVariable(name: "numBytes", arg: 2, scope: !747, file: !3, line: 135, type: !70)
!753 = !DILocation(line: 135, column: 55, scope: !747)
!754 = !DILocalVariable(name: "hex", arg: 3, scope: !747, file: !3, line: 135, type: !546)
!755 = !DILocation(line: 135, column: 76, scope: !747)
!756 = !DILocalVariable(name: "numWritten", scope: !747, file: !3, line: 137, type: !70)
!757 = !DILocation(line: 137, column: 12, scope: !747)
!758 = !DILocation(line: 143, column: 5, scope: !747)
!759 = !DILocation(line: 143, column: 12, scope: !747)
!760 = !DILocation(line: 143, column: 25, scope: !747)
!761 = !DILocation(line: 143, column: 23, scope: !747)
!762 = !DILocation(line: 143, column: 34, scope: !747)
!763 = !DILocation(line: 143, column: 47, scope: !747)
!764 = !DILocation(line: 143, column: 55, scope: !747)
!765 = !DILocation(line: 143, column: 53, scope: !747)
!766 = !DILocation(line: 143, column: 37, scope: !747)
!767 = !DILocation(line: 143, column: 68, scope: !747)
!768 = !DILocation(line: 143, column: 81, scope: !747)
!769 = !DILocation(line: 143, column: 89, scope: !747)
!770 = !DILocation(line: 143, column: 87, scope: !747)
!771 = !DILocation(line: 143, column: 100, scope: !747)
!772 = !DILocation(line: 143, column: 71, scope: !747)
!773 = !DILocation(line: 0, scope: !747)
!774 = !DILocalVariable(name: "byte", scope: !775, file: !3, line: 145, type: !23)
!775 = distinct !DILexicalBlock(scope: !747, file: !3, line: 144, column: 5)
!776 = !DILocation(line: 145, column: 13, scope: !775)
!777 = !DILocation(line: 146, column: 18, scope: !775)
!778 = !DILocation(line: 146, column: 26, scope: !775)
!779 = !DILocation(line: 146, column: 24, scope: !775)
!780 = !DILocation(line: 146, column: 9, scope: !775)
!781 = !DILocation(line: 147, column: 45, scope: !775)
!782 = !DILocation(line: 147, column: 29, scope: !775)
!783 = !DILocation(line: 147, column: 9, scope: !775)
!784 = !DILocation(line: 147, column: 15, scope: !775)
!785 = !DILocation(line: 147, column: 27, scope: !775)
!786 = !DILocation(line: 148, column: 9, scope: !775)
!787 = distinct !{!787, !758, !788, !201}
!788 = !DILocation(line: 149, column: 5, scope: !747)
!789 = !DILocation(line: 151, column: 12, scope: !747)
!790 = !DILocation(line: 151, column: 5, scope: !747)
!791 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !792, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!792 = !DISubroutineType(types: !793)
!793 = !{!23}
!794 = !DILocation(line: 158, column: 5, scope: !791)
!795 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !792, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!796 = !DILocation(line: 163, column: 5, scope: !795)
!797 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !792, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!798 = !DILocation(line: 168, column: 13, scope: !797)
!799 = !DILocation(line: 168, column: 20, scope: !797)
!800 = !DILocation(line: 168, column: 5, scope: !797)
!801 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!802 = !DILocation(line: 187, column: 16, scope: !801)
!803 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!804 = !DILocation(line: 188, column: 16, scope: !803)
!805 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!806 = !DILocation(line: 189, column: 16, scope: !805)
!807 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!808 = !DILocation(line: 190, column: 16, scope: !807)
!809 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!810 = !DILocation(line: 191, column: 16, scope: !809)
!811 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!812 = !DILocation(line: 192, column: 16, scope: !811)
!813 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!814 = !DILocation(line: 193, column: 16, scope: !813)
!815 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!816 = !DILocation(line: 194, column: 16, scope: !815)
!817 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!818 = !DILocation(line: 195, column: 16, scope: !817)
!819 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!820 = !DILocation(line: 198, column: 15, scope: !819)
!821 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!822 = !DILocation(line: 199, column: 15, scope: !821)
!823 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!824 = !DILocation(line: 200, column: 15, scope: !823)
!825 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!826 = !DILocation(line: 201, column: 15, scope: !825)
!827 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!828 = !DILocation(line: 202, column: 15, scope: !827)
!829 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!830 = !DILocation(line: 203, column: 15, scope: !829)
!831 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!832 = !DILocation(line: 204, column: 15, scope: !831)
!833 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!834 = !DILocation(line: 205, column: 15, scope: !833)
!835 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!836 = !DILocation(line: 206, column: 15, scope: !835)
