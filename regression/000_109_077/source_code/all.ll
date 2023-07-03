; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@STATIC_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@STATIC_CONST_FALSE = dso_local global i32 0, align 4, !dbg !9
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !11
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !36
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !38
@globalTrue = dso_local global i32 1, align 4, !dbg !40
@globalFalse = dso_local global i32 0, align 4, !dbg !42
@globalFive = dso_local global i32 5, align 4, !dbg !44
@globalArgc = dso_local global i32 0, align 4, !dbg !46
@globalArgv = dso_local global i8** null, align 8, !dbg !48
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_04_bad() #0 !dbg !57 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !62, metadata !DIExpression()), !dbg !66
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !66
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !66
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !67
  store i8* %arraydecay, i8** %data, align 8, !dbg !68
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !69
  %tobool = icmp ne i32 %1, 0, !dbg !69
  br i1 %tobool, label %if.then, label %if.end13, !dbg !71

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !72, metadata !DIExpression()), !dbg !78
  %2 = load i8*, i8** %data, align 8, !dbg !79
  %call = call i64 @strlen(i8* %2) #7, !dbg !80
  store i64 %call, i64* %dataLen, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !81, metadata !DIExpression()), !dbg !137
  %3 = load i64, i64* %dataLen, align 8, !dbg !138
  %sub = sub i64 100, %3, !dbg !140
  %cmp = icmp ugt i64 %sub, 1, !dbg !141
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !142

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !143
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !145
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !146
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !148
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !149

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !150
  %6 = load i64, i64* %dataLen, align 8, !dbg !153
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !154
  %7 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub5 = sub i64 100, %7, !dbg !156
  %conv = trunc i64 %sub5 to i32, !dbg !157
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !158
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !159
  %cmp7 = icmp eq i8* %call6, null, !dbg !160
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !161

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !162
  %9 = load i8*, i8** %data, align 8, !dbg !164
  %10 = load i64, i64* %dataLen, align 8, !dbg !165
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !164
  store i8 0, i8* %arrayidx, align 1, !dbg !166
  br label %if.end, !dbg !167

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !168
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !169
  br label %if.end11, !dbg !170

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !171

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !172

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !173
  %tobool14 = icmp ne i32 %12, 0, !dbg !173
  br i1 %tobool14, label %if.then15, label %if.end24, !dbg !175

if.then15:                                        ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !176, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %n, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !182, metadata !DIExpression()), !dbg !183
  %13 = load i8*, i8** %data, align 8, !dbg !184
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !186
  %cmp17 = icmp eq i32 %call16, 1, !dbg !187
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !188

if.then19:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !189
  store i32 0, i32* %i, align 4, !dbg !191
  br label %for.cond, !dbg !193

for.cond:                                         ; preds = %for.inc, %if.then19
  %14 = load i32, i32* %i, align 4, !dbg !194
  %15 = load i32, i32* %n, align 4, !dbg !196
  %cmp20 = icmp slt i32 %14, %15, !dbg !197
  br i1 %cmp20, label %for.body, label %for.end, !dbg !198

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !199
  %inc = add nsw i32 %16, 1, !dbg !199
  store i32 %inc, i32* %intVariable, align 4, !dbg !199
  br label %for.inc, !dbg !201

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !202
  %inc22 = add nsw i32 %17, 1, !dbg !202
  store i32 %inc22, i32* %i, align 4, !dbg !202
  br label %for.cond, !dbg !203, !llvm.loop !204

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !207
  call void @printIntLine(i32 %18), !dbg !208
  br label %if.end23, !dbg !209

if.end23:                                         ; preds = %for.end, %if.then15
  br label %if.end24, !dbg !210

if.end24:                                         ; preds = %if.end23, %if.end13
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
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !219
  %tobool = icmp ne i32 %1, 0, !dbg !219
  br i1 %tobool, label %if.then, label %if.end13, !dbg !221

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !222, metadata !DIExpression()), !dbg !225
  %2 = load i8*, i8** %data, align 8, !dbg !226
  %call = call i64 @strlen(i8* %2) #7, !dbg !227
  store i64 %call, i64* %dataLen, align 8, !dbg !225
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !228, metadata !DIExpression()), !dbg !229
  %3 = load i64, i64* %dataLen, align 8, !dbg !230
  %sub = sub i64 100, %3, !dbg !232
  %cmp = icmp ugt i64 %sub, 1, !dbg !233
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !234

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !235
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !237
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !238
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !240
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !241

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !242
  %6 = load i64, i64* %dataLen, align 8, !dbg !245
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !246
  %7 = load i64, i64* %dataLen, align 8, !dbg !247
  %sub5 = sub i64 100, %7, !dbg !248
  %conv = trunc i64 %sub5 to i32, !dbg !249
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !250
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !251
  %cmp7 = icmp eq i8* %call6, null, !dbg !252
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !253

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !254
  %9 = load i8*, i8** %data, align 8, !dbg !256
  %10 = load i64, i64* %dataLen, align 8, !dbg !257
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !256
  store i8 0, i8* %arrayidx, align 1, !dbg !258
  br label %if.end, !dbg !259

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !260
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !261
  br label %if.end11, !dbg !262

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !263

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !264

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !265
  %tobool14 = icmp ne i32 %12, 0, !dbg !265
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !267

if.then15:                                        ; preds = %if.end13
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !268
  br label %if.end28, !dbg !270

if.else:                                          ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !271, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata i32* %n, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !277, metadata !DIExpression()), !dbg !278
  %13 = load i8*, i8** %data, align 8, !dbg !279
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !281
  %cmp17 = icmp eq i32 %call16, 1, !dbg !282
  br i1 %cmp17, label %if.then19, label %if.end27, !dbg !283

if.then19:                                        ; preds = %if.else
  %14 = load i32, i32* %n, align 4, !dbg !284
  %cmp20 = icmp slt i32 %14, 10000, !dbg !287
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !288

if.then22:                                        ; preds = %if.then19
  store i32 0, i32* %intVariable, align 4, !dbg !289
  store i32 0, i32* %i, align 4, !dbg !291
  br label %for.cond, !dbg !293

for.cond:                                         ; preds = %for.inc, %if.then22
  %15 = load i32, i32* %i, align 4, !dbg !294
  %16 = load i32, i32* %n, align 4, !dbg !296
  %cmp23 = icmp slt i32 %15, %16, !dbg !297
  br i1 %cmp23, label %for.body, label %for.end, !dbg !298

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !299
  %inc = add nsw i32 %17, 1, !dbg !299
  store i32 %inc, i32* %intVariable, align 4, !dbg !299
  br label %for.inc, !dbg !301

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !302
  %inc25 = add nsw i32 %18, 1, !dbg !302
  store i32 %inc25, i32* %i, align 4, !dbg !302
  br label %for.cond, !dbg !303, !llvm.loop !304

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !306
  call void @printIntLine(i32 %19), !dbg !307
  br label %if.end26, !dbg !308

if.end26:                                         ; preds = %for.end, %if.then19
  br label %if.end27, !dbg !309

if.end27:                                         ; preds = %if.end26, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then15
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !311 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !312, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !315
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !315
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !316
  store i8* %arraydecay, i8** %data, align 8, !dbg !317
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !318
  %tobool = icmp ne i32 %1, 0, !dbg !318
  br i1 %tobool, label %if.then, label %if.end13, !dbg !320

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !321, metadata !DIExpression()), !dbg !324
  %2 = load i8*, i8** %data, align 8, !dbg !325
  %call = call i64 @strlen(i8* %2) #7, !dbg !326
  store i64 %call, i64* %dataLen, align 8, !dbg !324
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !327, metadata !DIExpression()), !dbg !328
  %3 = load i64, i64* %dataLen, align 8, !dbg !329
  %sub = sub i64 100, %3, !dbg !331
  %cmp = icmp ugt i64 %sub, 1, !dbg !332
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !333

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !334
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !336
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !337
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !339
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !340

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !341
  %6 = load i64, i64* %dataLen, align 8, !dbg !344
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !345
  %7 = load i64, i64* %dataLen, align 8, !dbg !346
  %sub5 = sub i64 100, %7, !dbg !347
  %conv = trunc i64 %sub5 to i32, !dbg !348
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !349
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !350
  %cmp7 = icmp eq i8* %call6, null, !dbg !351
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !352

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !353
  %9 = load i8*, i8** %data, align 8, !dbg !355
  %10 = load i64, i64* %dataLen, align 8, !dbg !356
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !355
  store i8 0, i8* %arrayidx, align 1, !dbg !357
  br label %if.end, !dbg !358

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !359
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !360
  br label %if.end11, !dbg !361

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !362

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !363

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !364
  %tobool14 = icmp ne i32 %12, 0, !dbg !364
  br i1 %tobool14, label %if.then15, label %if.end28, !dbg !366

if.then15:                                        ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !367, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata i32* %n, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !373, metadata !DIExpression()), !dbg !374
  %13 = load i8*, i8** %data, align 8, !dbg !375
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !377
  %cmp17 = icmp eq i32 %call16, 1, !dbg !378
  br i1 %cmp17, label %if.then19, label %if.end27, !dbg !379

if.then19:                                        ; preds = %if.then15
  %14 = load i32, i32* %n, align 4, !dbg !380
  %cmp20 = icmp slt i32 %14, 10000, !dbg !383
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !384

if.then22:                                        ; preds = %if.then19
  store i32 0, i32* %intVariable, align 4, !dbg !385
  store i32 0, i32* %i, align 4, !dbg !387
  br label %for.cond, !dbg !389

for.cond:                                         ; preds = %for.inc, %if.then22
  %15 = load i32, i32* %i, align 4, !dbg !390
  %16 = load i32, i32* %n, align 4, !dbg !392
  %cmp23 = icmp slt i32 %15, %16, !dbg !393
  br i1 %cmp23, label %for.body, label %for.end, !dbg !394

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !395
  %inc = add nsw i32 %17, 1, !dbg !395
  store i32 %inc, i32* %intVariable, align 4, !dbg !395
  br label %for.inc, !dbg !397

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !398
  %inc25 = add nsw i32 %18, 1, !dbg !398
  store i32 %inc25, i32* %i, align 4, !dbg !398
  br label %for.cond, !dbg !399, !llvm.loop !400

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !402
  call void @printIntLine(i32 %19), !dbg !403
  br label %if.end26, !dbg !404

if.end26:                                         ; preds = %for.end, %if.then19
  br label %if.end27, !dbg !405

if.end27:                                         ; preds = %if.end26, %if.then15
  br label %if.end28, !dbg !406

if.end28:                                         ; preds = %if.end27, %if.end13
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !408 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !409, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !412
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !412
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !413
  store i8* %arraydecay, i8** %data, align 8, !dbg !414
  %1 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !415
  %tobool = icmp ne i32 %1, 0, !dbg !415
  br i1 %tobool, label %if.then, label %if.else, !dbg !417

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !418
  br label %if.end, !dbg !420

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !421
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !423
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !424
  %tobool1 = icmp ne i32 %3, 0, !dbg !424
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !426

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !427, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.declare(metadata i32* %n, metadata !431, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !433, metadata !DIExpression()), !dbg !434
  %4 = load i8*, i8** %data, align 8, !dbg !435
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !437
  %cmp = icmp eq i32 %call3, 1, !dbg !438
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !439

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !440
  store i32 0, i32* %i, align 4, !dbg !442
  br label %for.cond, !dbg !444

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !445
  %6 = load i32, i32* %n, align 4, !dbg !447
  %cmp5 = icmp slt i32 %5, %6, !dbg !448
  br i1 %cmp5, label %for.body, label %for.end, !dbg !449

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !450
  %inc = add nsw i32 %7, 1, !dbg !450
  store i32 %inc, i32* %intVariable, align 4, !dbg !450
  br label %for.inc, !dbg !452

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !453
  %inc6 = add nsw i32 %8, 1, !dbg !453
  store i32 %inc6, i32* %i, align 4, !dbg !453
  br label %for.cond, !dbg !454, !llvm.loop !455

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !457
  call void @printIntLine(i32 %9), !dbg !458
  br label %if.end7, !dbg !459

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !460

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !461
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !462 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !463, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !466
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !466
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !467
  store i8* %arraydecay, i8** %data, align 8, !dbg !468
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !469
  %tobool = icmp ne i32 %1, 0, !dbg !469
  br i1 %tobool, label %if.then, label %if.end, !dbg !471

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !472
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !474
  br label %if.end, !dbg !475

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !476
  %tobool1 = icmp ne i32 %3, 0, !dbg !476
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !478

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !479, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata i32* %n, metadata !483, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !485, metadata !DIExpression()), !dbg !486
  %4 = load i8*, i8** %data, align 8, !dbg !487
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !489
  %cmp = icmp eq i32 %call3, 1, !dbg !490
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !491

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !492
  store i32 0, i32* %i, align 4, !dbg !494
  br label %for.cond, !dbg !496

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !497
  %6 = load i32, i32* %n, align 4, !dbg !499
  %cmp5 = icmp slt i32 %5, %6, !dbg !500
  br i1 %cmp5, label %for.body, label %for.end, !dbg !501

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !502
  %inc = add nsw i32 %7, 1, !dbg !502
  store i32 %inc, i32* %intVariable, align 4, !dbg !502
  br label %for.inc, !dbg !504

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !505
  %inc6 = add nsw i32 %8, 1, !dbg !505
  store i32 %inc6, i32* %i, align 4, !dbg !505
  br label %for.cond, !dbg !506, !llvm.loop !507

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !509
  call void @printIntLine(i32 %9), !dbg !510
  br label %if.end7, !dbg !511

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !512

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_04_good() #0 !dbg !514 {
entry:
  call void @goodB2G1(), !dbg !515
  call void @goodB2G2(), !dbg !516
  call void @goodG2B1(), !dbg !517
  call void @goodG2B2(), !dbg !518
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !520 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !523, metadata !DIExpression()), !dbg !524
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !525
  %0 = load i8*, i8** %line.addr, align 8, !dbg !526
  %cmp = icmp ne i8* %0, null, !dbg !528
  br i1 %cmp, label %if.then, label %if.end, !dbg !529

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !530
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !532
  br label %if.end, !dbg !533

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.8, i64 0, i64 0)), !dbg !534
  ret void, !dbg !535
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !536 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load i8*, i8** %line.addr, align 8, !dbg !539
  %cmp = icmp ne i8* %0, null, !dbg !541
  br i1 %cmp, label %if.then, label %if.end, !dbg !542

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !543
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !545
  br label %if.end, !dbg !546

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !548 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !553, metadata !DIExpression()), !dbg !554
  %0 = load i32*, i32** %line.addr, align 8, !dbg !555
  %cmp = icmp ne i32* %0, null, !dbg !557
  br i1 %cmp, label %if.then, label %if.end, !dbg !558

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !559
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !561
  br label %if.end, !dbg !562

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !563
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !564 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !567, metadata !DIExpression()), !dbg !568
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !569
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.12, i64 0, i64 0), i32 %0), !dbg !570
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !572 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !576, metadata !DIExpression()), !dbg !577
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !578
  %conv = sext i16 %0 to i32, !dbg !578
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.13, i64 0, i64 0), i32 %conv), !dbg !579
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !581 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !585, metadata !DIExpression()), !dbg !586
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !587
  %conv = fpext float %0 to double, !dbg !587
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.14, i64 0, i64 0), double %conv), !dbg !588
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !590 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !593, metadata !DIExpression()), !dbg !594
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !595
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !596
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !598 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !604, metadata !DIExpression()), !dbg !605
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !606
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !607
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !609 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !612, metadata !DIExpression()), !dbg !613
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !614
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !615
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !617 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !620, metadata !DIExpression()), !dbg !621
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !622
  %conv = sext i8 %0 to i32, !dbg !622
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !623
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !625 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !628, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !630, metadata !DIExpression()), !dbg !634
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !635
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !636
  store i32 %0, i32* %arrayidx, align 4, !dbg !637
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !638
  store i32 0, i32* %arrayidx1, align 4, !dbg !639
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !640
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !641
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !643 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !646, metadata !DIExpression()), !dbg !647
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !648
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !649
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !651 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !654, metadata !DIExpression()), !dbg !655
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !656
  %conv = zext i8 %0 to i32, !dbg !656
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !657
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !659 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !663, metadata !DIExpression()), !dbg !664
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !665
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !666
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !668 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !678, metadata !DIExpression()), !dbg !679
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !680
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !681
  %1 = load i32, i32* %intOne, align 4, !dbg !681
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !682
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !683
  %3 = load i32, i32* %intTwo, align 4, !dbg !683
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !684
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !686 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !690, metadata !DIExpression()), !dbg !691
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !692, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.declare(metadata i64* %i, metadata !694, metadata !DIExpression()), !dbg !695
  store i64 0, i64* %i, align 8, !dbg !696
  br label %for.cond, !dbg !698

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !699
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !701
  %cmp = icmp ult i64 %0, %1, !dbg !702
  br i1 %cmp, label %for.body, label %for.end, !dbg !703

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !704
  %3 = load i64, i64* %i, align 8, !dbg !706
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !704
  %4 = load i8, i8* %arrayidx, align 1, !dbg !704
  %conv = zext i8 %4 to i32, !dbg !704
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !707
  br label %for.inc, !dbg !708

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !709
  %inc = add i64 %5, 1, !dbg !709
  store i64 %inc, i64* %i, align 8, !dbg !709
  br label %for.cond, !dbg !710, !llvm.loop !711

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !713
  ret void, !dbg !714
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !715 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !718, metadata !DIExpression()), !dbg !719
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !720, metadata !DIExpression()), !dbg !721
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !722, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !724, metadata !DIExpression()), !dbg !725
  store i64 0, i64* %numWritten, align 8, !dbg !725
  br label %while.cond, !dbg !726

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !727
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !728
  %cmp = icmp ult i64 %0, %1, !dbg !729
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !730

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !731
  %2 = load i16*, i16** %call, align 8, !dbg !731
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !731
  %4 = load i64, i64* %numWritten, align 8, !dbg !731
  %mul = mul i64 2, %4, !dbg !731
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !731
  %5 = load i8, i8* %arrayidx, align 1, !dbg !731
  %conv = sext i8 %5 to i32, !dbg !731
  %idxprom = sext i32 %conv to i64, !dbg !731
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !731
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !731
  %conv2 = zext i16 %6 to i32, !dbg !731
  %and = and i32 %conv2, 4096, !dbg !731
  %tobool = icmp ne i32 %and, 0, !dbg !731
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !732

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !733
  %7 = load i16*, i16** %call3, align 8, !dbg !733
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !733
  %9 = load i64, i64* %numWritten, align 8, !dbg !733
  %mul4 = mul i64 2, %9, !dbg !733
  %add = add i64 %mul4, 1, !dbg !733
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !733
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !733
  %conv6 = sext i8 %10 to i32, !dbg !733
  %idxprom7 = sext i32 %conv6 to i64, !dbg !733
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !733
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !733
  %conv9 = zext i16 %11 to i32, !dbg !733
  %and10 = and i32 %conv9, 4096, !dbg !733
  %tobool11 = icmp ne i32 %and10, 0, !dbg !732
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !734
  br i1 %12, label %while.body, label %while.end, !dbg !726

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !735, metadata !DIExpression()), !dbg !737
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !738
  %14 = load i64, i64* %numWritten, align 8, !dbg !739
  %mul12 = mul i64 2, %14, !dbg !740
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !738
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !741
  %15 = load i32, i32* %byte, align 4, !dbg !742
  %conv15 = trunc i32 %15 to i8, !dbg !743
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !744
  %17 = load i64, i64* %numWritten, align 8, !dbg !745
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !744
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !746
  %18 = load i64, i64* %numWritten, align 8, !dbg !747
  %inc = add i64 %18, 1, !dbg !747
  store i64 %inc, i64* %numWritten, align 8, !dbg !747
  br label %while.cond, !dbg !726, !llvm.loop !748

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !750
  ret i64 %19, !dbg !751
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !752 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !755, metadata !DIExpression()), !dbg !756
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !757, metadata !DIExpression()), !dbg !758
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !759, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !761, metadata !DIExpression()), !dbg !762
  store i64 0, i64* %numWritten, align 8, !dbg !762
  br label %while.cond, !dbg !763

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !764
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !765
  %cmp = icmp ult i64 %0, %1, !dbg !766
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !767

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !768
  %3 = load i64, i64* %numWritten, align 8, !dbg !769
  %mul = mul i64 2, %3, !dbg !770
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !768
  %4 = load i32, i32* %arrayidx, align 4, !dbg !768
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !771
  %tobool = icmp ne i32 %call, 0, !dbg !771
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !772

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !773
  %6 = load i64, i64* %numWritten, align 8, !dbg !774
  %mul1 = mul i64 2, %6, !dbg !775
  %add = add i64 %mul1, 1, !dbg !776
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !773
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !773
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !777
  %tobool4 = icmp ne i32 %call3, 0, !dbg !772
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !778
  br i1 %8, label %while.body, label %while.end, !dbg !763

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !779, metadata !DIExpression()), !dbg !781
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !782
  %10 = load i64, i64* %numWritten, align 8, !dbg !783
  %mul5 = mul i64 2, %10, !dbg !784
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !782
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !785
  %11 = load i32, i32* %byte, align 4, !dbg !786
  %conv = trunc i32 %11 to i8, !dbg !787
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !788
  %13 = load i64, i64* %numWritten, align 8, !dbg !789
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !788
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !790
  %14 = load i64, i64* %numWritten, align 8, !dbg !791
  %inc = add i64 %14, 1, !dbg !791
  store i64 %inc, i64* %numWritten, align 8, !dbg !791
  br label %while.cond, !dbg !763, !llvm.loop !792

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !794
  ret i64 %15, !dbg !795
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !796 {
entry:
  ret i32 1, !dbg !799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !800 {
entry:
  ret i32 0, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !802 {
entry:
  %call = call i32 @rand() #8, !dbg !803
  %rem = srem i32 %call, 2, !dbg !804
  ret i32 %rem, !dbg !805
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !806 {
entry:
  ret void, !dbg !807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !808 {
entry:
  ret void, !dbg !809
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !810 {
entry:
  ret void, !dbg !811
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !812 {
entry:
  ret void, !dbg !813
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !814 {
entry:
  ret void, !dbg !815
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !816 {
entry:
  ret void, !dbg !817
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !818 {
entry:
  ret void, !dbg !819
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !820 {
entry:
  ret void, !dbg !821
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !822 {
entry:
  ret void, !dbg !823
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !824 {
entry:
  ret void, !dbg !825
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !826 {
entry:
  ret void, !dbg !827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !828 {
entry:
  ret void, !dbg !829
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !830 {
entry:
  ret void, !dbg !831
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !832 {
entry:
  ret void, !dbg !833
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !834 {
entry:
  ret void, !dbg !835
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !836 {
entry:
  ret void, !dbg !837
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !838 {
entry:
  ret void, !dbg !839
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !840 {
entry:
  ret void, !dbg !841
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

!llvm.dbg.cu = !{!2, !13}
!llvm.ident = !{!53, !53}
!llvm.module.flags = !{!54, !55, !56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_TRUE", scope: !2, file: !3, line: 36, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_04.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_077/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "STATIC_CONST_FALSE", scope: !2, file: !3, line: 37, type: !7, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !13, file: !14, line: 174, type: !7, isLocal: false, isDefinition: true)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !32, globals: !35, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_077/source_code")
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 46, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!20 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!32 = !{!6, !7, !33, !34}
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!11, !36, !38, !40, !42, !44, !46, !48}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !13, file: !14, line: 175, type: !7, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !13, file: !14, line: 176, type: !7, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "globalTrue", scope: !13, file: !14, line: 181, type: !7, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "globalFalse", scope: !13, file: !14, line: 182, type: !7, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalFive", scope: !13, file: !14, line: 183, type: !7, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalArgc", scope: !13, file: !14, line: 214, type: !7, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalArgv", scope: !13, file: !14, line: 215, type: !50, isLocal: false, isDefinition: true)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !{!"clang version 12.0.0"}
!54 = !{i32 7, !"Dwarf Version", i32 4}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_04_bad", scope: !3, file: !3, line: 41, type: !58, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!58 = !DISubroutineType(types: !59)
!59 = !{null}
!60 = !DILocalVariable(name: "data", scope: !57, file: !3, line: 43, type: !51)
!61 = !DILocation(line: 43, column: 12, scope: !57)
!62 = !DILocalVariable(name: "dataBuffer", scope: !57, file: !3, line: 44, type: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 800, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 100)
!66 = !DILocation(line: 44, column: 10, scope: !57)
!67 = !DILocation(line: 45, column: 12, scope: !57)
!68 = !DILocation(line: 45, column: 10, scope: !57)
!69 = !DILocation(line: 46, column: 8, scope: !70)
!70 = distinct !DILexicalBlock(scope: !57, file: !3, line: 46, column: 8)
!71 = !DILocation(line: 46, column: 8, scope: !57)
!72 = !DILocalVariable(name: "dataLen", scope: !73, file: !3, line: 50, type: !75)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 48, column: 9)
!74 = distinct !DILexicalBlock(scope: !70, file: !3, line: 47, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 50, column: 20, scope: !73)
!79 = !DILocation(line: 50, column: 37, scope: !73)
!80 = !DILocation(line: 50, column: 30, scope: !73)
!81 = !DILocalVariable(name: "pFile", scope: !73, file: !3, line: 51, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !84, line: 7, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !86, line: 49, size: 1728, elements: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !103, !105, !106, !107, !111, !112, !114, !118, !121, !123, !126, !129, !130, !131, !132, !133}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !85, file: !86, line: 51, baseType: !7, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !85, file: !86, line: 54, baseType: !51, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !85, file: !86, line: 55, baseType: !51, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !85, file: !86, line: 56, baseType: !51, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !85, file: !86, line: 57, baseType: !51, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !85, file: !86, line: 58, baseType: !51, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !85, file: !86, line: 59, baseType: !51, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !85, file: !86, line: 60, baseType: !51, size: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !85, file: !86, line: 61, baseType: !51, size: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !85, file: !86, line: 64, baseType: !51, size: 64, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !85, file: !86, line: 65, baseType: !51, size: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !85, file: !86, line: 66, baseType: !51, size: 64, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !85, file: !86, line: 68, baseType: !101, size: 64, offset: 768)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !86, line: 36, flags: DIFlagFwdDecl)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !85, file: !86, line: 70, baseType: !104, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !85, file: !86, line: 72, baseType: !7, size: 32, offset: 896)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !85, file: !86, line: 73, baseType: !7, size: 32, offset: 928)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !85, file: !86, line: 74, baseType: !108, size: 64, offset: 960)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !109, line: 152, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!110 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !85, file: !86, line: 77, baseType: !33, size: 16, offset: 1024)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !85, file: !86, line: 78, baseType: !113, size: 8, offset: 1040)
!113 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !85, file: !86, line: 79, baseType: !115, size: 8, offset: 1048)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 1)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !85, file: !86, line: 81, baseType: !119, size: 64, offset: 1088)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !86, line: 43, baseType: null)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !85, file: !86, line: 89, baseType: !122, size: 64, offset: 1152)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !109, line: 153, baseType: !110)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !85, file: !86, line: 91, baseType: !124, size: 64, offset: 1216)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !86, line: 37, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !85, file: !86, line: 92, baseType: !127, size: 64, offset: 1280)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !86, line: 38, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !85, file: !86, line: 93, baseType: !104, size: 64, offset: 1344)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !85, file: !86, line: 94, baseType: !6, size: 64, offset: 1408)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !85, file: !86, line: 95, baseType: !75, size: 64, offset: 1472)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !85, file: !86, line: 96, baseType: !7, size: 32, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !85, file: !86, line: 98, baseType: !134, size: 160, offset: 1568)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 20)
!137 = !DILocation(line: 51, column: 20, scope: !73)
!138 = !DILocation(line: 53, column: 21, scope: !139)
!139 = distinct !DILexicalBlock(scope: !73, file: !3, line: 53, column: 17)
!140 = !DILocation(line: 53, column: 20, scope: !139)
!141 = !DILocation(line: 53, column: 29, scope: !139)
!142 = !DILocation(line: 53, column: 17, scope: !73)
!143 = !DILocation(line: 55, column: 25, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !3, line: 54, column: 13)
!145 = !DILocation(line: 55, column: 23, scope: !144)
!146 = !DILocation(line: 56, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !3, line: 56, column: 21)
!148 = !DILocation(line: 56, column: 27, scope: !147)
!149 = !DILocation(line: 56, column: 21, scope: !144)
!150 = !DILocation(line: 59, column: 31, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 59, column: 25)
!152 = distinct !DILexicalBlock(scope: !147, file: !3, line: 57, column: 17)
!153 = !DILocation(line: 59, column: 36, scope: !151)
!154 = !DILocation(line: 59, column: 35, scope: !151)
!155 = !DILocation(line: 59, column: 55, scope: !151)
!156 = !DILocation(line: 59, column: 54, scope: !151)
!157 = !DILocation(line: 59, column: 45, scope: !151)
!158 = !DILocation(line: 59, column: 65, scope: !151)
!159 = !DILocation(line: 59, column: 25, scope: !151)
!160 = !DILocation(line: 59, column: 72, scope: !151)
!161 = !DILocation(line: 59, column: 25, scope: !152)
!162 = !DILocation(line: 61, column: 25, scope: !163)
!163 = distinct !DILexicalBlock(scope: !151, file: !3, line: 60, column: 21)
!164 = !DILocation(line: 63, column: 25, scope: !163)
!165 = !DILocation(line: 63, column: 30, scope: !163)
!166 = !DILocation(line: 63, column: 39, scope: !163)
!167 = !DILocation(line: 64, column: 21, scope: !163)
!168 = !DILocation(line: 65, column: 28, scope: !152)
!169 = !DILocation(line: 65, column: 21, scope: !152)
!170 = !DILocation(line: 66, column: 17, scope: !152)
!171 = !DILocation(line: 67, column: 13, scope: !144)
!172 = !DILocation(line: 69, column: 5, scope: !74)
!173 = !DILocation(line: 70, column: 8, scope: !174)
!174 = distinct !DILexicalBlock(scope: !57, file: !3, line: 70, column: 8)
!175 = !DILocation(line: 70, column: 8, scope: !57)
!176 = !DILocalVariable(name: "i", scope: !177, file: !3, line: 73, type: !7)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 72, column: 9)
!178 = distinct !DILexicalBlock(scope: !174, file: !3, line: 71, column: 5)
!179 = !DILocation(line: 73, column: 17, scope: !177)
!180 = !DILocalVariable(name: "n", scope: !177, file: !3, line: 73, type: !7)
!181 = !DILocation(line: 73, column: 20, scope: !177)
!182 = !DILocalVariable(name: "intVariable", scope: !177, file: !3, line: 73, type: !7)
!183 = !DILocation(line: 73, column: 23, scope: !177)
!184 = !DILocation(line: 74, column: 24, scope: !185)
!185 = distinct !DILexicalBlock(scope: !177, file: !3, line: 74, column: 17)
!186 = !DILocation(line: 74, column: 17, scope: !185)
!187 = !DILocation(line: 74, column: 40, scope: !185)
!188 = !DILocation(line: 74, column: 17, scope: !177)
!189 = !DILocation(line: 77, column: 29, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 75, column: 13)
!191 = !DILocation(line: 78, column: 24, scope: !192)
!192 = distinct !DILexicalBlock(scope: !190, file: !3, line: 78, column: 17)
!193 = !DILocation(line: 78, column: 22, scope: !192)
!194 = !DILocation(line: 78, column: 29, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !3, line: 78, column: 17)
!196 = !DILocation(line: 78, column: 33, scope: !195)
!197 = !DILocation(line: 78, column: 31, scope: !195)
!198 = !DILocation(line: 78, column: 17, scope: !192)
!199 = !DILocation(line: 81, column: 32, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !3, line: 79, column: 17)
!201 = !DILocation(line: 82, column: 17, scope: !200)
!202 = !DILocation(line: 78, column: 37, scope: !195)
!203 = !DILocation(line: 78, column: 17, scope: !195)
!204 = distinct !{!204, !198, !205, !206}
!205 = !DILocation(line: 82, column: 17, scope: !192)
!206 = !{!"llvm.loop.mustprogress"}
!207 = !DILocation(line: 83, column: 30, scope: !190)
!208 = !DILocation(line: 83, column: 17, scope: !190)
!209 = !DILocation(line: 84, column: 13, scope: !190)
!210 = !DILocation(line: 86, column: 5, scope: !178)
!211 = !DILocation(line: 87, column: 1, scope: !57)
!212 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 94, type: !58, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!213 = !DILocalVariable(name: "data", scope: !212, file: !3, line: 96, type: !51)
!214 = !DILocation(line: 96, column: 12, scope: !212)
!215 = !DILocalVariable(name: "dataBuffer", scope: !212, file: !3, line: 97, type: !63)
!216 = !DILocation(line: 97, column: 10, scope: !212)
!217 = !DILocation(line: 98, column: 12, scope: !212)
!218 = !DILocation(line: 98, column: 10, scope: !212)
!219 = !DILocation(line: 99, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !212, file: !3, line: 99, column: 8)
!221 = !DILocation(line: 99, column: 8, scope: !212)
!222 = !DILocalVariable(name: "dataLen", scope: !223, file: !3, line: 103, type: !75)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 101, column: 9)
!224 = distinct !DILexicalBlock(scope: !220, file: !3, line: 100, column: 5)
!225 = !DILocation(line: 103, column: 20, scope: !223)
!226 = !DILocation(line: 103, column: 37, scope: !223)
!227 = !DILocation(line: 103, column: 30, scope: !223)
!228 = !DILocalVariable(name: "pFile", scope: !223, file: !3, line: 104, type: !82)
!229 = !DILocation(line: 104, column: 20, scope: !223)
!230 = !DILocation(line: 106, column: 21, scope: !231)
!231 = distinct !DILexicalBlock(scope: !223, file: !3, line: 106, column: 17)
!232 = !DILocation(line: 106, column: 20, scope: !231)
!233 = !DILocation(line: 106, column: 29, scope: !231)
!234 = !DILocation(line: 106, column: 17, scope: !223)
!235 = !DILocation(line: 108, column: 25, scope: !236)
!236 = distinct !DILexicalBlock(scope: !231, file: !3, line: 107, column: 13)
!237 = !DILocation(line: 108, column: 23, scope: !236)
!238 = !DILocation(line: 109, column: 21, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !3, line: 109, column: 21)
!240 = !DILocation(line: 109, column: 27, scope: !239)
!241 = !DILocation(line: 109, column: 21, scope: !236)
!242 = !DILocation(line: 112, column: 31, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 112, column: 25)
!244 = distinct !DILexicalBlock(scope: !239, file: !3, line: 110, column: 17)
!245 = !DILocation(line: 112, column: 36, scope: !243)
!246 = !DILocation(line: 112, column: 35, scope: !243)
!247 = !DILocation(line: 112, column: 55, scope: !243)
!248 = !DILocation(line: 112, column: 54, scope: !243)
!249 = !DILocation(line: 112, column: 45, scope: !243)
!250 = !DILocation(line: 112, column: 65, scope: !243)
!251 = !DILocation(line: 112, column: 25, scope: !243)
!252 = !DILocation(line: 112, column: 72, scope: !243)
!253 = !DILocation(line: 112, column: 25, scope: !244)
!254 = !DILocation(line: 114, column: 25, scope: !255)
!255 = distinct !DILexicalBlock(scope: !243, file: !3, line: 113, column: 21)
!256 = !DILocation(line: 116, column: 25, scope: !255)
!257 = !DILocation(line: 116, column: 30, scope: !255)
!258 = !DILocation(line: 116, column: 39, scope: !255)
!259 = !DILocation(line: 117, column: 21, scope: !255)
!260 = !DILocation(line: 118, column: 28, scope: !244)
!261 = !DILocation(line: 118, column: 21, scope: !244)
!262 = !DILocation(line: 119, column: 17, scope: !244)
!263 = !DILocation(line: 120, column: 13, scope: !236)
!264 = !DILocation(line: 122, column: 5, scope: !224)
!265 = !DILocation(line: 123, column: 8, scope: !266)
!266 = distinct !DILexicalBlock(scope: !212, file: !3, line: 123, column: 8)
!267 = !DILocation(line: 123, column: 8, scope: !212)
!268 = !DILocation(line: 126, column: 9, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !3, line: 124, column: 5)
!270 = !DILocation(line: 127, column: 5, scope: !269)
!271 = !DILocalVariable(name: "i", scope: !272, file: !3, line: 131, type: !7)
!272 = distinct !DILexicalBlock(scope: !273, file: !3, line: 130, column: 9)
!273 = distinct !DILexicalBlock(scope: !266, file: !3, line: 129, column: 5)
!274 = !DILocation(line: 131, column: 17, scope: !272)
!275 = !DILocalVariable(name: "n", scope: !272, file: !3, line: 131, type: !7)
!276 = !DILocation(line: 131, column: 20, scope: !272)
!277 = !DILocalVariable(name: "intVariable", scope: !272, file: !3, line: 131, type: !7)
!278 = !DILocation(line: 131, column: 23, scope: !272)
!279 = !DILocation(line: 132, column: 24, scope: !280)
!280 = distinct !DILexicalBlock(scope: !272, file: !3, line: 132, column: 17)
!281 = !DILocation(line: 132, column: 17, scope: !280)
!282 = !DILocation(line: 132, column: 40, scope: !280)
!283 = !DILocation(line: 132, column: 17, scope: !272)
!284 = !DILocation(line: 135, column: 21, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !3, line: 135, column: 21)
!286 = distinct !DILexicalBlock(scope: !280, file: !3, line: 133, column: 13)
!287 = !DILocation(line: 135, column: 23, scope: !285)
!288 = !DILocation(line: 135, column: 21, scope: !286)
!289 = !DILocation(line: 137, column: 33, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !3, line: 136, column: 17)
!291 = !DILocation(line: 138, column: 28, scope: !292)
!292 = distinct !DILexicalBlock(scope: !290, file: !3, line: 138, column: 21)
!293 = !DILocation(line: 138, column: 26, scope: !292)
!294 = !DILocation(line: 138, column: 33, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !3, line: 138, column: 21)
!296 = !DILocation(line: 138, column: 37, scope: !295)
!297 = !DILocation(line: 138, column: 35, scope: !295)
!298 = !DILocation(line: 138, column: 21, scope: !292)
!299 = !DILocation(line: 141, column: 36, scope: !300)
!300 = distinct !DILexicalBlock(scope: !295, file: !3, line: 139, column: 21)
!301 = !DILocation(line: 142, column: 21, scope: !300)
!302 = !DILocation(line: 138, column: 41, scope: !295)
!303 = !DILocation(line: 138, column: 21, scope: !295)
!304 = distinct !{!304, !298, !305, !206}
!305 = !DILocation(line: 142, column: 21, scope: !292)
!306 = !DILocation(line: 143, column: 34, scope: !290)
!307 = !DILocation(line: 143, column: 21, scope: !290)
!308 = !DILocation(line: 144, column: 17, scope: !290)
!309 = !DILocation(line: 145, column: 13, scope: !286)
!310 = !DILocation(line: 148, column: 1, scope: !212)
!311 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 151, type: !58, scopeLine: 152, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!312 = !DILocalVariable(name: "data", scope: !311, file: !3, line: 153, type: !51)
!313 = !DILocation(line: 153, column: 12, scope: !311)
!314 = !DILocalVariable(name: "dataBuffer", scope: !311, file: !3, line: 154, type: !63)
!315 = !DILocation(line: 154, column: 10, scope: !311)
!316 = !DILocation(line: 155, column: 12, scope: !311)
!317 = !DILocation(line: 155, column: 10, scope: !311)
!318 = !DILocation(line: 156, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !311, file: !3, line: 156, column: 8)
!320 = !DILocation(line: 156, column: 8, scope: !311)
!321 = !DILocalVariable(name: "dataLen", scope: !322, file: !3, line: 160, type: !75)
!322 = distinct !DILexicalBlock(scope: !323, file: !3, line: 158, column: 9)
!323 = distinct !DILexicalBlock(scope: !319, file: !3, line: 157, column: 5)
!324 = !DILocation(line: 160, column: 20, scope: !322)
!325 = !DILocation(line: 160, column: 37, scope: !322)
!326 = !DILocation(line: 160, column: 30, scope: !322)
!327 = !DILocalVariable(name: "pFile", scope: !322, file: !3, line: 161, type: !82)
!328 = !DILocation(line: 161, column: 20, scope: !322)
!329 = !DILocation(line: 163, column: 21, scope: !330)
!330 = distinct !DILexicalBlock(scope: !322, file: !3, line: 163, column: 17)
!331 = !DILocation(line: 163, column: 20, scope: !330)
!332 = !DILocation(line: 163, column: 29, scope: !330)
!333 = !DILocation(line: 163, column: 17, scope: !322)
!334 = !DILocation(line: 165, column: 25, scope: !335)
!335 = distinct !DILexicalBlock(scope: !330, file: !3, line: 164, column: 13)
!336 = !DILocation(line: 165, column: 23, scope: !335)
!337 = !DILocation(line: 166, column: 21, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !3, line: 166, column: 21)
!339 = !DILocation(line: 166, column: 27, scope: !338)
!340 = !DILocation(line: 166, column: 21, scope: !335)
!341 = !DILocation(line: 169, column: 31, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !3, line: 169, column: 25)
!343 = distinct !DILexicalBlock(scope: !338, file: !3, line: 167, column: 17)
!344 = !DILocation(line: 169, column: 36, scope: !342)
!345 = !DILocation(line: 169, column: 35, scope: !342)
!346 = !DILocation(line: 169, column: 55, scope: !342)
!347 = !DILocation(line: 169, column: 54, scope: !342)
!348 = !DILocation(line: 169, column: 45, scope: !342)
!349 = !DILocation(line: 169, column: 65, scope: !342)
!350 = !DILocation(line: 169, column: 25, scope: !342)
!351 = !DILocation(line: 169, column: 72, scope: !342)
!352 = !DILocation(line: 169, column: 25, scope: !343)
!353 = !DILocation(line: 171, column: 25, scope: !354)
!354 = distinct !DILexicalBlock(scope: !342, file: !3, line: 170, column: 21)
!355 = !DILocation(line: 173, column: 25, scope: !354)
!356 = !DILocation(line: 173, column: 30, scope: !354)
!357 = !DILocation(line: 173, column: 39, scope: !354)
!358 = !DILocation(line: 174, column: 21, scope: !354)
!359 = !DILocation(line: 175, column: 28, scope: !343)
!360 = !DILocation(line: 175, column: 21, scope: !343)
!361 = !DILocation(line: 176, column: 17, scope: !343)
!362 = !DILocation(line: 177, column: 13, scope: !335)
!363 = !DILocation(line: 179, column: 5, scope: !323)
!364 = !DILocation(line: 180, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !311, file: !3, line: 180, column: 8)
!366 = !DILocation(line: 180, column: 8, scope: !311)
!367 = !DILocalVariable(name: "i", scope: !368, file: !3, line: 183, type: !7)
!368 = distinct !DILexicalBlock(scope: !369, file: !3, line: 182, column: 9)
!369 = distinct !DILexicalBlock(scope: !365, file: !3, line: 181, column: 5)
!370 = !DILocation(line: 183, column: 17, scope: !368)
!371 = !DILocalVariable(name: "n", scope: !368, file: !3, line: 183, type: !7)
!372 = !DILocation(line: 183, column: 20, scope: !368)
!373 = !DILocalVariable(name: "intVariable", scope: !368, file: !3, line: 183, type: !7)
!374 = !DILocation(line: 183, column: 23, scope: !368)
!375 = !DILocation(line: 184, column: 24, scope: !376)
!376 = distinct !DILexicalBlock(scope: !368, file: !3, line: 184, column: 17)
!377 = !DILocation(line: 184, column: 17, scope: !376)
!378 = !DILocation(line: 184, column: 40, scope: !376)
!379 = !DILocation(line: 184, column: 17, scope: !368)
!380 = !DILocation(line: 187, column: 21, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !3, line: 187, column: 21)
!382 = distinct !DILexicalBlock(scope: !376, file: !3, line: 185, column: 13)
!383 = !DILocation(line: 187, column: 23, scope: !381)
!384 = !DILocation(line: 187, column: 21, scope: !382)
!385 = !DILocation(line: 189, column: 33, scope: !386)
!386 = distinct !DILexicalBlock(scope: !381, file: !3, line: 188, column: 17)
!387 = !DILocation(line: 190, column: 28, scope: !388)
!388 = distinct !DILexicalBlock(scope: !386, file: !3, line: 190, column: 21)
!389 = !DILocation(line: 190, column: 26, scope: !388)
!390 = !DILocation(line: 190, column: 33, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !3, line: 190, column: 21)
!392 = !DILocation(line: 190, column: 37, scope: !391)
!393 = !DILocation(line: 190, column: 35, scope: !391)
!394 = !DILocation(line: 190, column: 21, scope: !388)
!395 = !DILocation(line: 193, column: 36, scope: !396)
!396 = distinct !DILexicalBlock(scope: !391, file: !3, line: 191, column: 21)
!397 = !DILocation(line: 194, column: 21, scope: !396)
!398 = !DILocation(line: 190, column: 41, scope: !391)
!399 = !DILocation(line: 190, column: 21, scope: !391)
!400 = distinct !{!400, !394, !401, !206}
!401 = !DILocation(line: 194, column: 21, scope: !388)
!402 = !DILocation(line: 195, column: 34, scope: !386)
!403 = !DILocation(line: 195, column: 21, scope: !386)
!404 = !DILocation(line: 196, column: 17, scope: !386)
!405 = !DILocation(line: 197, column: 13, scope: !382)
!406 = !DILocation(line: 199, column: 5, scope: !369)
!407 = !DILocation(line: 200, column: 1, scope: !311)
!408 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 203, type: !58, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!409 = !DILocalVariable(name: "data", scope: !408, file: !3, line: 205, type: !51)
!410 = !DILocation(line: 205, column: 12, scope: !408)
!411 = !DILocalVariable(name: "dataBuffer", scope: !408, file: !3, line: 206, type: !63)
!412 = !DILocation(line: 206, column: 10, scope: !408)
!413 = !DILocation(line: 207, column: 12, scope: !408)
!414 = !DILocation(line: 207, column: 10, scope: !408)
!415 = !DILocation(line: 208, column: 8, scope: !416)
!416 = distinct !DILexicalBlock(scope: !408, file: !3, line: 208, column: 8)
!417 = !DILocation(line: 208, column: 8, scope: !408)
!418 = !DILocation(line: 211, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !3, line: 209, column: 5)
!420 = !DILocation(line: 212, column: 5, scope: !419)
!421 = !DILocation(line: 216, column: 16, scope: !422)
!422 = distinct !DILexicalBlock(scope: !416, file: !3, line: 214, column: 5)
!423 = !DILocation(line: 216, column: 9, scope: !422)
!424 = !DILocation(line: 218, column: 8, scope: !425)
!425 = distinct !DILexicalBlock(scope: !408, file: !3, line: 218, column: 8)
!426 = !DILocation(line: 218, column: 8, scope: !408)
!427 = !DILocalVariable(name: "i", scope: !428, file: !3, line: 221, type: !7)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 220, column: 9)
!429 = distinct !DILexicalBlock(scope: !425, file: !3, line: 219, column: 5)
!430 = !DILocation(line: 221, column: 17, scope: !428)
!431 = !DILocalVariable(name: "n", scope: !428, file: !3, line: 221, type: !7)
!432 = !DILocation(line: 221, column: 20, scope: !428)
!433 = !DILocalVariable(name: "intVariable", scope: !428, file: !3, line: 221, type: !7)
!434 = !DILocation(line: 221, column: 23, scope: !428)
!435 = !DILocation(line: 222, column: 24, scope: !436)
!436 = distinct !DILexicalBlock(scope: !428, file: !3, line: 222, column: 17)
!437 = !DILocation(line: 222, column: 17, scope: !436)
!438 = !DILocation(line: 222, column: 40, scope: !436)
!439 = !DILocation(line: 222, column: 17, scope: !428)
!440 = !DILocation(line: 225, column: 29, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !3, line: 223, column: 13)
!442 = !DILocation(line: 226, column: 24, scope: !443)
!443 = distinct !DILexicalBlock(scope: !441, file: !3, line: 226, column: 17)
!444 = !DILocation(line: 226, column: 22, scope: !443)
!445 = !DILocation(line: 226, column: 29, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !3, line: 226, column: 17)
!447 = !DILocation(line: 226, column: 33, scope: !446)
!448 = !DILocation(line: 226, column: 31, scope: !446)
!449 = !DILocation(line: 226, column: 17, scope: !443)
!450 = !DILocation(line: 229, column: 32, scope: !451)
!451 = distinct !DILexicalBlock(scope: !446, file: !3, line: 227, column: 17)
!452 = !DILocation(line: 230, column: 17, scope: !451)
!453 = !DILocation(line: 226, column: 37, scope: !446)
!454 = !DILocation(line: 226, column: 17, scope: !446)
!455 = distinct !{!455, !449, !456, !206}
!456 = !DILocation(line: 230, column: 17, scope: !443)
!457 = !DILocation(line: 231, column: 30, scope: !441)
!458 = !DILocation(line: 231, column: 17, scope: !441)
!459 = !DILocation(line: 232, column: 13, scope: !441)
!460 = !DILocation(line: 234, column: 5, scope: !429)
!461 = !DILocation(line: 235, column: 1, scope: !408)
!462 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 238, type: !58, scopeLine: 239, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!463 = !DILocalVariable(name: "data", scope: !462, file: !3, line: 240, type: !51)
!464 = !DILocation(line: 240, column: 12, scope: !462)
!465 = !DILocalVariable(name: "dataBuffer", scope: !462, file: !3, line: 241, type: !63)
!466 = !DILocation(line: 241, column: 10, scope: !462)
!467 = !DILocation(line: 242, column: 12, scope: !462)
!468 = !DILocation(line: 242, column: 10, scope: !462)
!469 = !DILocation(line: 243, column: 8, scope: !470)
!470 = distinct !DILexicalBlock(scope: !462, file: !3, line: 243, column: 8)
!471 = !DILocation(line: 243, column: 8, scope: !462)
!472 = !DILocation(line: 246, column: 16, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !3, line: 244, column: 5)
!474 = !DILocation(line: 246, column: 9, scope: !473)
!475 = !DILocation(line: 247, column: 5, scope: !473)
!476 = !DILocation(line: 248, column: 8, scope: !477)
!477 = distinct !DILexicalBlock(scope: !462, file: !3, line: 248, column: 8)
!478 = !DILocation(line: 248, column: 8, scope: !462)
!479 = !DILocalVariable(name: "i", scope: !480, file: !3, line: 251, type: !7)
!480 = distinct !DILexicalBlock(scope: !481, file: !3, line: 250, column: 9)
!481 = distinct !DILexicalBlock(scope: !477, file: !3, line: 249, column: 5)
!482 = !DILocation(line: 251, column: 17, scope: !480)
!483 = !DILocalVariable(name: "n", scope: !480, file: !3, line: 251, type: !7)
!484 = !DILocation(line: 251, column: 20, scope: !480)
!485 = !DILocalVariable(name: "intVariable", scope: !480, file: !3, line: 251, type: !7)
!486 = !DILocation(line: 251, column: 23, scope: !480)
!487 = !DILocation(line: 252, column: 24, scope: !488)
!488 = distinct !DILexicalBlock(scope: !480, file: !3, line: 252, column: 17)
!489 = !DILocation(line: 252, column: 17, scope: !488)
!490 = !DILocation(line: 252, column: 40, scope: !488)
!491 = !DILocation(line: 252, column: 17, scope: !480)
!492 = !DILocation(line: 255, column: 29, scope: !493)
!493 = distinct !DILexicalBlock(scope: !488, file: !3, line: 253, column: 13)
!494 = !DILocation(line: 256, column: 24, scope: !495)
!495 = distinct !DILexicalBlock(scope: !493, file: !3, line: 256, column: 17)
!496 = !DILocation(line: 256, column: 22, scope: !495)
!497 = !DILocation(line: 256, column: 29, scope: !498)
!498 = distinct !DILexicalBlock(scope: !495, file: !3, line: 256, column: 17)
!499 = !DILocation(line: 256, column: 33, scope: !498)
!500 = !DILocation(line: 256, column: 31, scope: !498)
!501 = !DILocation(line: 256, column: 17, scope: !495)
!502 = !DILocation(line: 259, column: 32, scope: !503)
!503 = distinct !DILexicalBlock(scope: !498, file: !3, line: 257, column: 17)
!504 = !DILocation(line: 260, column: 17, scope: !503)
!505 = !DILocation(line: 256, column: 37, scope: !498)
!506 = !DILocation(line: 256, column: 17, scope: !498)
!507 = distinct !{!507, !501, !508, !206}
!508 = !DILocation(line: 260, column: 17, scope: !495)
!509 = !DILocation(line: 261, column: 30, scope: !493)
!510 = !DILocation(line: 261, column: 17, scope: !493)
!511 = !DILocation(line: 262, column: 13, scope: !493)
!512 = !DILocation(line: 264, column: 5, scope: !481)
!513 = !DILocation(line: 265, column: 1, scope: !462)
!514 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_04_good", scope: !3, file: !3, line: 267, type: !58, scopeLine: 268, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!515 = !DILocation(line: 269, column: 5, scope: !514)
!516 = !DILocation(line: 270, column: 5, scope: !514)
!517 = !DILocation(line: 271, column: 5, scope: !514)
!518 = !DILocation(line: 272, column: 5, scope: !514)
!519 = !DILocation(line: 273, column: 1, scope: !514)
!520 = distinct !DISubprogram(name: "printLine", scope: !14, file: !14, line: 11, type: !521, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !51}
!523 = !DILocalVariable(name: "line", arg: 1, scope: !520, file: !14, line: 11, type: !51)
!524 = !DILocation(line: 11, column: 25, scope: !520)
!525 = !DILocation(line: 13, column: 1, scope: !520)
!526 = !DILocation(line: 14, column: 8, scope: !527)
!527 = distinct !DILexicalBlock(scope: !520, file: !14, line: 14, column: 8)
!528 = !DILocation(line: 14, column: 13, scope: !527)
!529 = !DILocation(line: 14, column: 8, scope: !520)
!530 = !DILocation(line: 16, column: 24, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !14, line: 15, column: 5)
!532 = !DILocation(line: 16, column: 9, scope: !531)
!533 = !DILocation(line: 17, column: 5, scope: !531)
!534 = !DILocation(line: 18, column: 5, scope: !520)
!535 = !DILocation(line: 19, column: 1, scope: !520)
!536 = distinct !DISubprogram(name: "printSinkLine", scope: !14, file: !14, line: 20, type: !521, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!537 = !DILocalVariable(name: "line", arg: 1, scope: !536, file: !14, line: 20, type: !51)
!538 = !DILocation(line: 20, column: 29, scope: !536)
!539 = !DILocation(line: 22, column: 8, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !14, line: 22, column: 8)
!541 = !DILocation(line: 22, column: 13, scope: !540)
!542 = !DILocation(line: 22, column: 8, scope: !536)
!543 = !DILocation(line: 24, column: 24, scope: !544)
!544 = distinct !DILexicalBlock(scope: !540, file: !14, line: 23, column: 5)
!545 = !DILocation(line: 24, column: 9, scope: !544)
!546 = !DILocation(line: 25, column: 5, scope: !544)
!547 = !DILocation(line: 26, column: 1, scope: !536)
!548 = distinct !DISubprogram(name: "printWLine", scope: !14, file: !14, line: 27, type: !549, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !551}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !7)
!553 = !DILocalVariable(name: "line", arg: 1, scope: !548, file: !14, line: 27, type: !551)
!554 = !DILocation(line: 27, column: 29, scope: !548)
!555 = !DILocation(line: 29, column: 8, scope: !556)
!556 = distinct !DILexicalBlock(scope: !548, file: !14, line: 29, column: 8)
!557 = !DILocation(line: 29, column: 13, scope: !556)
!558 = !DILocation(line: 29, column: 8, scope: !548)
!559 = !DILocation(line: 31, column: 27, scope: !560)
!560 = distinct !DILexicalBlock(scope: !556, file: !14, line: 30, column: 5)
!561 = !DILocation(line: 31, column: 9, scope: !560)
!562 = !DILocation(line: 32, column: 5, scope: !560)
!563 = !DILocation(line: 33, column: 1, scope: !548)
!564 = distinct !DISubprogram(name: "printIntLine", scope: !14, file: !14, line: 35, type: !565, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !7}
!567 = !DILocalVariable(name: "intNumber", arg: 1, scope: !564, file: !14, line: 35, type: !7)
!568 = !DILocation(line: 35, column: 24, scope: !564)
!569 = !DILocation(line: 37, column: 20, scope: !564)
!570 = !DILocation(line: 37, column: 5, scope: !564)
!571 = !DILocation(line: 38, column: 1, scope: !564)
!572 = distinct !DISubprogram(name: "printShortLine", scope: !14, file: !14, line: 40, type: !573, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !575}
!575 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!576 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !572, file: !14, line: 40, type: !575)
!577 = !DILocation(line: 40, column: 28, scope: !572)
!578 = !DILocation(line: 42, column: 21, scope: !572)
!579 = !DILocation(line: 42, column: 5, scope: !572)
!580 = !DILocation(line: 43, column: 1, scope: !572)
!581 = distinct !DISubprogram(name: "printFloatLine", scope: !14, file: !14, line: 45, type: !582, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !584}
!584 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!585 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !581, file: !14, line: 45, type: !584)
!586 = !DILocation(line: 45, column: 28, scope: !581)
!587 = !DILocation(line: 47, column: 20, scope: !581)
!588 = !DILocation(line: 47, column: 5, scope: !581)
!589 = !DILocation(line: 48, column: 1, scope: !581)
!590 = distinct !DISubprogram(name: "printLongLine", scope: !14, file: !14, line: 50, type: !591, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !110}
!593 = !DILocalVariable(name: "longNumber", arg: 1, scope: !590, file: !14, line: 50, type: !110)
!594 = !DILocation(line: 50, column: 26, scope: !590)
!595 = !DILocation(line: 52, column: 21, scope: !590)
!596 = !DILocation(line: 52, column: 5, scope: !590)
!597 = !DILocation(line: 53, column: 1, scope: !590)
!598 = distinct !DISubprogram(name: "printLongLongLine", scope: !14, file: !14, line: 55, type: !599, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !601}
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !602, line: 27, baseType: !603)
!602 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !109, line: 44, baseType: !110)
!604 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !598, file: !14, line: 55, type: !601)
!605 = !DILocation(line: 55, column: 33, scope: !598)
!606 = !DILocation(line: 57, column: 29, scope: !598)
!607 = !DILocation(line: 57, column: 5, scope: !598)
!608 = !DILocation(line: 58, column: 1, scope: !598)
!609 = distinct !DISubprogram(name: "printSizeTLine", scope: !14, file: !14, line: 60, type: !610, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !75}
!612 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !609, file: !14, line: 60, type: !75)
!613 = !DILocation(line: 60, column: 29, scope: !609)
!614 = !DILocation(line: 62, column: 21, scope: !609)
!615 = !DILocation(line: 62, column: 5, scope: !609)
!616 = !DILocation(line: 63, column: 1, scope: !609)
!617 = distinct !DISubprogram(name: "printHexCharLine", scope: !14, file: !14, line: 65, type: !618, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !52}
!620 = !DILocalVariable(name: "charHex", arg: 1, scope: !617, file: !14, line: 65, type: !52)
!621 = !DILocation(line: 65, column: 29, scope: !617)
!622 = !DILocation(line: 67, column: 22, scope: !617)
!623 = !DILocation(line: 67, column: 5, scope: !617)
!624 = !DILocation(line: 68, column: 1, scope: !617)
!625 = distinct !DISubprogram(name: "printWcharLine", scope: !14, file: !14, line: 70, type: !626, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !552}
!628 = !DILocalVariable(name: "wideChar", arg: 1, scope: !625, file: !14, line: 70, type: !552)
!629 = !DILocation(line: 70, column: 29, scope: !625)
!630 = !DILocalVariable(name: "s", scope: !625, file: !14, line: 74, type: !631)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 64, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 2)
!634 = !DILocation(line: 74, column: 13, scope: !625)
!635 = !DILocation(line: 75, column: 16, scope: !625)
!636 = !DILocation(line: 75, column: 9, scope: !625)
!637 = !DILocation(line: 75, column: 14, scope: !625)
!638 = !DILocation(line: 76, column: 9, scope: !625)
!639 = !DILocation(line: 76, column: 14, scope: !625)
!640 = !DILocation(line: 77, column: 21, scope: !625)
!641 = !DILocation(line: 77, column: 5, scope: !625)
!642 = !DILocation(line: 78, column: 1, scope: !625)
!643 = distinct !DISubprogram(name: "printUnsignedLine", scope: !14, file: !14, line: 80, type: !644, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !18}
!646 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !643, file: !14, line: 80, type: !18)
!647 = !DILocation(line: 80, column: 33, scope: !643)
!648 = !DILocation(line: 82, column: 20, scope: !643)
!649 = !DILocation(line: 82, column: 5, scope: !643)
!650 = !DILocation(line: 83, column: 1, scope: !643)
!651 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !14, file: !14, line: 85, type: !652, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !34}
!654 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !651, file: !14, line: 85, type: !34)
!655 = !DILocation(line: 85, column: 45, scope: !651)
!656 = !DILocation(line: 87, column: 22, scope: !651)
!657 = !DILocation(line: 87, column: 5, scope: !651)
!658 = !DILocation(line: 88, column: 1, scope: !651)
!659 = distinct !DISubprogram(name: "printDoubleLine", scope: !14, file: !14, line: 90, type: !660, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !662}
!662 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!663 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !659, file: !14, line: 90, type: !662)
!664 = !DILocation(line: 90, column: 29, scope: !659)
!665 = !DILocation(line: 92, column: 20, scope: !659)
!666 = !DILocation(line: 92, column: 5, scope: !659)
!667 = !DILocation(line: 93, column: 1, scope: !659)
!668 = distinct !DISubprogram(name: "printStructLine", scope: !14, file: !14, line: 95, type: !669, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !673, line: 100, baseType: !674)
!673 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_077/source_code")
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !673, line: 96, size: 64, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !674, file: !673, line: 98, baseType: !7, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !674, file: !673, line: 99, baseType: !7, size: 32, offset: 32)
!678 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !668, file: !14, line: 95, type: !671)
!679 = !DILocation(line: 95, column: 40, scope: !668)
!680 = !DILocation(line: 97, column: 26, scope: !668)
!681 = !DILocation(line: 97, column: 47, scope: !668)
!682 = !DILocation(line: 97, column: 55, scope: !668)
!683 = !DILocation(line: 97, column: 76, scope: !668)
!684 = !DILocation(line: 97, column: 5, scope: !668)
!685 = !DILocation(line: 98, column: 1, scope: !668)
!686 = distinct !DISubprogram(name: "printBytesLine", scope: !14, file: !14, line: 100, type: !687, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !689, !75}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!690 = !DILocalVariable(name: "bytes", arg: 1, scope: !686, file: !14, line: 100, type: !689)
!691 = !DILocation(line: 100, column: 38, scope: !686)
!692 = !DILocalVariable(name: "numBytes", arg: 2, scope: !686, file: !14, line: 100, type: !75)
!693 = !DILocation(line: 100, column: 52, scope: !686)
!694 = !DILocalVariable(name: "i", scope: !686, file: !14, line: 102, type: !75)
!695 = !DILocation(line: 102, column: 12, scope: !686)
!696 = !DILocation(line: 103, column: 12, scope: !697)
!697 = distinct !DILexicalBlock(scope: !686, file: !14, line: 103, column: 5)
!698 = !DILocation(line: 103, column: 10, scope: !697)
!699 = !DILocation(line: 103, column: 17, scope: !700)
!700 = distinct !DILexicalBlock(scope: !697, file: !14, line: 103, column: 5)
!701 = !DILocation(line: 103, column: 21, scope: !700)
!702 = !DILocation(line: 103, column: 19, scope: !700)
!703 = !DILocation(line: 103, column: 5, scope: !697)
!704 = !DILocation(line: 105, column: 24, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !14, line: 104, column: 5)
!706 = !DILocation(line: 105, column: 30, scope: !705)
!707 = !DILocation(line: 105, column: 9, scope: !705)
!708 = !DILocation(line: 106, column: 5, scope: !705)
!709 = !DILocation(line: 103, column: 31, scope: !700)
!710 = !DILocation(line: 103, column: 5, scope: !700)
!711 = distinct !{!711, !703, !712, !206}
!712 = !DILocation(line: 106, column: 5, scope: !697)
!713 = !DILocation(line: 107, column: 5, scope: !686)
!714 = !DILocation(line: 108, column: 1, scope: !686)
!715 = distinct !DISubprogram(name: "decodeHexChars", scope: !14, file: !14, line: 113, type: !716, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!716 = !DISubroutineType(types: !717)
!717 = !{!75, !689, !75, !51}
!718 = !DILocalVariable(name: "bytes", arg: 1, scope: !715, file: !14, line: 113, type: !689)
!719 = !DILocation(line: 113, column: 39, scope: !715)
!720 = !DILocalVariable(name: "numBytes", arg: 2, scope: !715, file: !14, line: 113, type: !75)
!721 = !DILocation(line: 113, column: 53, scope: !715)
!722 = !DILocalVariable(name: "hex", arg: 3, scope: !715, file: !14, line: 113, type: !51)
!723 = !DILocation(line: 113, column: 71, scope: !715)
!724 = !DILocalVariable(name: "numWritten", scope: !715, file: !14, line: 115, type: !75)
!725 = !DILocation(line: 115, column: 12, scope: !715)
!726 = !DILocation(line: 121, column: 5, scope: !715)
!727 = !DILocation(line: 121, column: 12, scope: !715)
!728 = !DILocation(line: 121, column: 25, scope: !715)
!729 = !DILocation(line: 121, column: 23, scope: !715)
!730 = !DILocation(line: 121, column: 34, scope: !715)
!731 = !DILocation(line: 121, column: 37, scope: !715)
!732 = !DILocation(line: 121, column: 67, scope: !715)
!733 = !DILocation(line: 121, column: 70, scope: !715)
!734 = !DILocation(line: 0, scope: !715)
!735 = !DILocalVariable(name: "byte", scope: !736, file: !14, line: 123, type: !7)
!736 = distinct !DILexicalBlock(scope: !715, file: !14, line: 122, column: 5)
!737 = !DILocation(line: 123, column: 13, scope: !736)
!738 = !DILocation(line: 124, column: 17, scope: !736)
!739 = !DILocation(line: 124, column: 25, scope: !736)
!740 = !DILocation(line: 124, column: 23, scope: !736)
!741 = !DILocation(line: 124, column: 9, scope: !736)
!742 = !DILocation(line: 125, column: 45, scope: !736)
!743 = !DILocation(line: 125, column: 29, scope: !736)
!744 = !DILocation(line: 125, column: 9, scope: !736)
!745 = !DILocation(line: 125, column: 15, scope: !736)
!746 = !DILocation(line: 125, column: 27, scope: !736)
!747 = !DILocation(line: 126, column: 9, scope: !736)
!748 = distinct !{!748, !726, !749, !206}
!749 = !DILocation(line: 127, column: 5, scope: !715)
!750 = !DILocation(line: 129, column: 12, scope: !715)
!751 = !DILocation(line: 129, column: 5, scope: !715)
!752 = distinct !DISubprogram(name: "decodeHexWChars", scope: !14, file: !14, line: 135, type: !753, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!753 = !DISubroutineType(types: !754)
!754 = !{!75, !689, !75, !551}
!755 = !DILocalVariable(name: "bytes", arg: 1, scope: !752, file: !14, line: 135, type: !689)
!756 = !DILocation(line: 135, column: 41, scope: !752)
!757 = !DILocalVariable(name: "numBytes", arg: 2, scope: !752, file: !14, line: 135, type: !75)
!758 = !DILocation(line: 135, column: 55, scope: !752)
!759 = !DILocalVariable(name: "hex", arg: 3, scope: !752, file: !14, line: 135, type: !551)
!760 = !DILocation(line: 135, column: 76, scope: !752)
!761 = !DILocalVariable(name: "numWritten", scope: !752, file: !14, line: 137, type: !75)
!762 = !DILocation(line: 137, column: 12, scope: !752)
!763 = !DILocation(line: 143, column: 5, scope: !752)
!764 = !DILocation(line: 143, column: 12, scope: !752)
!765 = !DILocation(line: 143, column: 25, scope: !752)
!766 = !DILocation(line: 143, column: 23, scope: !752)
!767 = !DILocation(line: 143, column: 34, scope: !752)
!768 = !DILocation(line: 143, column: 47, scope: !752)
!769 = !DILocation(line: 143, column: 55, scope: !752)
!770 = !DILocation(line: 143, column: 53, scope: !752)
!771 = !DILocation(line: 143, column: 37, scope: !752)
!772 = !DILocation(line: 143, column: 68, scope: !752)
!773 = !DILocation(line: 143, column: 81, scope: !752)
!774 = !DILocation(line: 143, column: 89, scope: !752)
!775 = !DILocation(line: 143, column: 87, scope: !752)
!776 = !DILocation(line: 143, column: 100, scope: !752)
!777 = !DILocation(line: 143, column: 71, scope: !752)
!778 = !DILocation(line: 0, scope: !752)
!779 = !DILocalVariable(name: "byte", scope: !780, file: !14, line: 145, type: !7)
!780 = distinct !DILexicalBlock(scope: !752, file: !14, line: 144, column: 5)
!781 = !DILocation(line: 145, column: 13, scope: !780)
!782 = !DILocation(line: 146, column: 18, scope: !780)
!783 = !DILocation(line: 146, column: 26, scope: !780)
!784 = !DILocation(line: 146, column: 24, scope: !780)
!785 = !DILocation(line: 146, column: 9, scope: !780)
!786 = !DILocation(line: 147, column: 45, scope: !780)
!787 = !DILocation(line: 147, column: 29, scope: !780)
!788 = !DILocation(line: 147, column: 9, scope: !780)
!789 = !DILocation(line: 147, column: 15, scope: !780)
!790 = !DILocation(line: 147, column: 27, scope: !780)
!791 = !DILocation(line: 148, column: 9, scope: !780)
!792 = distinct !{!792, !763, !793, !206}
!793 = !DILocation(line: 149, column: 5, scope: !752)
!794 = !DILocation(line: 151, column: 12, scope: !752)
!795 = !DILocation(line: 151, column: 5, scope: !752)
!796 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !14, file: !14, line: 156, type: !797, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!797 = !DISubroutineType(types: !798)
!798 = !{!7}
!799 = !DILocation(line: 158, column: 5, scope: !796)
!800 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !14, file: !14, line: 161, type: !797, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!801 = !DILocation(line: 163, column: 5, scope: !800)
!802 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !14, file: !14, line: 166, type: !797, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!803 = !DILocation(line: 168, column: 13, scope: !802)
!804 = !DILocation(line: 168, column: 20, scope: !802)
!805 = !DILocation(line: 168, column: 5, scope: !802)
!806 = distinct !DISubprogram(name: "good1", scope: !14, file: !14, line: 187, type: !58, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!807 = !DILocation(line: 187, column: 16, scope: !806)
!808 = distinct !DISubprogram(name: "good2", scope: !14, file: !14, line: 188, type: !58, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!809 = !DILocation(line: 188, column: 16, scope: !808)
!810 = distinct !DISubprogram(name: "good3", scope: !14, file: !14, line: 189, type: !58, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!811 = !DILocation(line: 189, column: 16, scope: !810)
!812 = distinct !DISubprogram(name: "good4", scope: !14, file: !14, line: 190, type: !58, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!813 = !DILocation(line: 190, column: 16, scope: !812)
!814 = distinct !DISubprogram(name: "good5", scope: !14, file: !14, line: 191, type: !58, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!815 = !DILocation(line: 191, column: 16, scope: !814)
!816 = distinct !DISubprogram(name: "good6", scope: !14, file: !14, line: 192, type: !58, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!817 = !DILocation(line: 192, column: 16, scope: !816)
!818 = distinct !DISubprogram(name: "good7", scope: !14, file: !14, line: 193, type: !58, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!819 = !DILocation(line: 193, column: 16, scope: !818)
!820 = distinct !DISubprogram(name: "good8", scope: !14, file: !14, line: 194, type: !58, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!821 = !DILocation(line: 194, column: 16, scope: !820)
!822 = distinct !DISubprogram(name: "good9", scope: !14, file: !14, line: 195, type: !58, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!823 = !DILocation(line: 195, column: 16, scope: !822)
!824 = distinct !DISubprogram(name: "bad1", scope: !14, file: !14, line: 198, type: !58, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!825 = !DILocation(line: 198, column: 15, scope: !824)
!826 = distinct !DISubprogram(name: "bad2", scope: !14, file: !14, line: 199, type: !58, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!827 = !DILocation(line: 199, column: 15, scope: !826)
!828 = distinct !DISubprogram(name: "bad3", scope: !14, file: !14, line: 200, type: !58, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!829 = !DILocation(line: 200, column: 15, scope: !828)
!830 = distinct !DISubprogram(name: "bad4", scope: !14, file: !14, line: 201, type: !58, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!831 = !DILocation(line: 201, column: 15, scope: !830)
!832 = distinct !DISubprogram(name: "bad5", scope: !14, file: !14, line: 202, type: !58, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!833 = !DILocation(line: 202, column: 15, scope: !832)
!834 = distinct !DISubprogram(name: "bad6", scope: !14, file: !14, line: 203, type: !58, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!835 = !DILocation(line: 203, column: 15, scope: !834)
!836 = distinct !DISubprogram(name: "bad7", scope: !14, file: !14, line: 204, type: !58, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!837 = !DILocation(line: 204, column: 15, scope: !836)
!838 = distinct !DISubprogram(name: "bad8", scope: !14, file: !14, line: 205, type: !58, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!839 = !DILocation(line: 205, column: 15, scope: !838)
!840 = distinct !DISubprogram(name: "bad9", scope: !14, file: !14, line: 206, type: !58, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!841 = !DILocation(line: 206, column: 15, scope: !840)
