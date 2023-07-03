; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@STATIC_CONST_FIVE = dso_local global i32 5, align 4, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
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
@.str.4.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.11 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6.12 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_06_bad() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !65
  store i8* %arraydecay, i8** %data, align 8, !dbg !66
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !67
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
  %12 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !172
  %cmp15 = icmp eq i32 %12, 5, !dbg !174
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !175

if.then17:                                        ; preds = %if.end14
  %13 = load i8*, i8** %data, align 8, !dbg !176
  %call18 = call i32 (i8*, ...) @printf(i8* %13), !dbg !178
  br label %if.end19, !dbg !179

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !180
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

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !181 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !184, metadata !DIExpression()), !dbg !185
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !185
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !185
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !186
  store i8* %arraydecay, i8** %data, align 8, !dbg !187
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !188
  %cmp = icmp eq i32 %1, 5, !dbg !190
  br i1 %cmp, label %if.then, label %if.end14, !dbg !191

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !192, metadata !DIExpression()), !dbg !195
  %2 = load i8*, i8** %data, align 8, !dbg !196
  %call = call i64 @strlen(i8* %2) #7, !dbg !197
  store i64 %call, i64* %dataLen, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !198, metadata !DIExpression()), !dbg !199
  %3 = load i64, i64* %dataLen, align 8, !dbg !200
  %sub = sub i64 100, %3, !dbg !202
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !203
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !204

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !205
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !207
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !208
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !210
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !211

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !212
  %6 = load i64, i64* %dataLen, align 8, !dbg !215
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !216
  %7 = load i64, i64* %dataLen, align 8, !dbg !217
  %sub6 = sub i64 100, %7, !dbg !218
  %conv = trunc i64 %sub6 to i32, !dbg !219
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !220
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !221
  %cmp8 = icmp eq i8* %call7, null, !dbg !222
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !223

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !224
  %9 = load i8*, i8** %data, align 8, !dbg !226
  %10 = load i64, i64* %dataLen, align 8, !dbg !227
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !226
  store i8 0, i8* %arrayidx, align 1, !dbg !228
  br label %if.end, !dbg !229

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !230
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !231
  br label %if.end12, !dbg !232

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !233

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !234

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !235
  %cmp15 = icmp ne i32 %12, 5, !dbg !237
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !238

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !239
  br label %if.end19, !dbg !241

if.else:                                          ; preds = %if.end14
  %13 = load i8*, i8** %data, align 8, !dbg !242
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !244
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  ret void, !dbg !245
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !246 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !249, metadata !DIExpression()), !dbg !250
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !250
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !250
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !251
  store i8* %arraydecay, i8** %data, align 8, !dbg !252
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !253
  %cmp = icmp eq i32 %1, 5, !dbg !255
  br i1 %cmp, label %if.then, label %if.end14, !dbg !256

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !257, metadata !DIExpression()), !dbg !260
  %2 = load i8*, i8** %data, align 8, !dbg !261
  %call = call i64 @strlen(i8* %2) #7, !dbg !262
  store i64 %call, i64* %dataLen, align 8, !dbg !260
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !263, metadata !DIExpression()), !dbg !264
  %3 = load i64, i64* %dataLen, align 8, !dbg !265
  %sub = sub i64 100, %3, !dbg !267
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !268
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !269

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !270
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !272
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !273
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !275
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !276

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !277
  %6 = load i64, i64* %dataLen, align 8, !dbg !280
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !281
  %7 = load i64, i64* %dataLen, align 8, !dbg !282
  %sub6 = sub i64 100, %7, !dbg !283
  %conv = trunc i64 %sub6 to i32, !dbg !284
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !285
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !286
  %cmp8 = icmp eq i8* %call7, null, !dbg !287
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !288

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !289
  %9 = load i8*, i8** %data, align 8, !dbg !291
  %10 = load i64, i64* %dataLen, align 8, !dbg !292
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !291
  store i8 0, i8* %arrayidx, align 1, !dbg !293
  br label %if.end, !dbg !294

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !295
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !296
  br label %if.end12, !dbg !297

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !298

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !299

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !300
  %cmp15 = icmp eq i32 %12, 5, !dbg !302
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !303

if.then17:                                        ; preds = %if.end14
  %13 = load i8*, i8** %data, align 8, !dbg !304
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !306
  br label %if.end19, !dbg !307

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !308
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !309 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !313
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !313
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !314
  store i8* %arraydecay, i8** %data, align 8, !dbg !315
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !316
  %cmp = icmp ne i32 %1, 5, !dbg !318
  br i1 %cmp, label %if.then, label %if.else, !dbg !319

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !320
  br label %if.end, !dbg !322

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !323
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !325
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !326
  %cmp1 = icmp eq i32 %3, 5, !dbg !328
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !329

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !330
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !332
  br label %if.end4, !dbg !333

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !334
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !335 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !339
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !339
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !340
  store i8* %arraydecay, i8** %data, align 8, !dbg !341
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !342
  %cmp = icmp eq i32 %1, 5, !dbg !344
  br i1 %cmp, label %if.then, label %if.end, !dbg !345

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !346
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !348
  br label %if.end, !dbg !349

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !350
  %cmp1 = icmp eq i32 %3, 5, !dbg !352
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !353

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !354
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !356
  br label %if.end4, !dbg !357

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_06_good() #0 !dbg !359 {
entry:
  call void @goodB2G1(), !dbg !360
  call void @goodB2G2(), !dbg !361
  call void @goodG2B1(), !dbg !362
  call void @goodG2B2(), !dbg !363
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !365 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !370
  %0 = load i8*, i8** %line.addr, align 8, !dbg !371
  %cmp = icmp ne i8* %0, null, !dbg !373
  br i1 %cmp, label %if.then, label %if.end, !dbg !374

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !375
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !377
  br label %if.end, !dbg !378

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.8, i64 0, i64 0)), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !381 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load i8*, i8** %line.addr, align 8, !dbg !384
  %cmp = icmp ne i8* %0, null, !dbg !386
  br i1 %cmp, label %if.then, label %if.end, !dbg !387

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !388
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !390
  br label %if.end, !dbg !391

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !393 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i32*, i32** %line.addr, align 8, !dbg !400
  %cmp = icmp ne i32* %0, null, !dbg !402
  br i1 %cmp, label %if.then, label %if.end, !dbg !403

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !404
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !406
  br label %if.end, !dbg !407

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !408
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !409 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !417 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !421, metadata !DIExpression()), !dbg !422
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !423
  %conv = sext i16 %0 to i32, !dbg !423
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.11, i64 0, i64 0), i32 %conv), !dbg !424
  ret void, !dbg !425
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !426 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !432
  %conv = fpext float %0 to double, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.12, i64 0, i64 0), double %conv), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !435 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !438, metadata !DIExpression()), !dbg !439
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !440
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !443 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !454 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !457, metadata !DIExpression()), !dbg !458
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !459
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !460
  ret void, !dbg !461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !462 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !467
  %conv = sext i8 %0 to i32, !dbg !467
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !468
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !470 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !473, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !475, metadata !DIExpression()), !dbg !479
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !480
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !481
  store i32 %0, i32* %arrayidx, align 4, !dbg !482
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !483
  store i32 0, i32* %arrayidx1, align 4, !dbg !484
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !485
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !486
  ret void, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !488 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !491, metadata !DIExpression()), !dbg !492
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !493
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !494
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !496 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !501
  %conv = zext i8 %0 to i32, !dbg !501
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !502
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !504 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !508, metadata !DIExpression()), !dbg !509
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !510
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !511
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !513 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !523, metadata !DIExpression()), !dbg !524
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !525
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !526
  %1 = load i32, i32* %intOne, align 4, !dbg !526
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !527
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !528
  %3 = load i32, i32* %intTwo, align 4, !dbg !528
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !529
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !531 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !535, metadata !DIExpression()), !dbg !536
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata i64* %i, metadata !539, metadata !DIExpression()), !dbg !540
  store i64 0, i64* %i, align 8, !dbg !541
  br label %for.cond, !dbg !543

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !544
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !546
  %cmp = icmp ult i64 %0, %1, !dbg !547
  br i1 %cmp, label %for.body, label %for.end, !dbg !548

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !549
  %3 = load i64, i64* %i, align 8, !dbg !551
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !549
  %4 = load i8, i8* %arrayidx, align 1, !dbg !549
  %conv = zext i8 %4 to i32, !dbg !549
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !552
  br label %for.inc, !dbg !553

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !554
  %inc = add i64 %5, 1, !dbg !554
  store i64 %inc, i64* %i, align 8, !dbg !554
  br label %for.cond, !dbg !555, !llvm.loop !556

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !559
  ret void, !dbg !560
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !561 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !564, metadata !DIExpression()), !dbg !565
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !566, metadata !DIExpression()), !dbg !567
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !570, metadata !DIExpression()), !dbg !571
  store i64 0, i64* %numWritten, align 8, !dbg !571
  br label %while.cond, !dbg !572

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !573
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !574
  %cmp = icmp ult i64 %0, %1, !dbg !575
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !576

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !577
  %2 = load i16*, i16** %call, align 8, !dbg !577
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !577
  %4 = load i64, i64* %numWritten, align 8, !dbg !577
  %mul = mul i64 2, %4, !dbg !577
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !577
  %5 = load i8, i8* %arrayidx, align 1, !dbg !577
  %conv = sext i8 %5 to i32, !dbg !577
  %idxprom = sext i32 %conv to i64, !dbg !577
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !577
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !577
  %conv2 = zext i16 %6 to i32, !dbg !577
  %and = and i32 %conv2, 4096, !dbg !577
  %tobool = icmp ne i32 %and, 0, !dbg !577
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !578

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !579
  %7 = load i16*, i16** %call3, align 8, !dbg !579
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !579
  %9 = load i64, i64* %numWritten, align 8, !dbg !579
  %mul4 = mul i64 2, %9, !dbg !579
  %add = add i64 %mul4, 1, !dbg !579
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !579
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !579
  %conv6 = sext i8 %10 to i32, !dbg !579
  %idxprom7 = sext i32 %conv6 to i64, !dbg !579
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !579
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !579
  %conv9 = zext i16 %11 to i32, !dbg !579
  %and10 = and i32 %conv9, 4096, !dbg !579
  %tobool11 = icmp ne i32 %and10, 0, !dbg !578
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !580
  br i1 %12, label %while.body, label %while.end, !dbg !572

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !581, metadata !DIExpression()), !dbg !583
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !584
  %14 = load i64, i64* %numWritten, align 8, !dbg !585
  %mul12 = mul i64 2, %14, !dbg !586
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !584
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !587
  %15 = load i32, i32* %byte, align 4, !dbg !588
  %conv15 = trunc i32 %15 to i8, !dbg !589
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !590
  %17 = load i64, i64* %numWritten, align 8, !dbg !591
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !590
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !592
  %18 = load i64, i64* %numWritten, align 8, !dbg !593
  %inc = add i64 %18, 1, !dbg !593
  store i64 %inc, i64* %numWritten, align 8, !dbg !593
  br label %while.cond, !dbg !572, !llvm.loop !594

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !596
  ret i64 %19, !dbg !597
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !598 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !601, metadata !DIExpression()), !dbg !602
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !603, metadata !DIExpression()), !dbg !604
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !605, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !607, metadata !DIExpression()), !dbg !608
  store i64 0, i64* %numWritten, align 8, !dbg !608
  br label %while.cond, !dbg !609

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !610
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !611
  %cmp = icmp ult i64 %0, %1, !dbg !612
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !613

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !614
  %3 = load i64, i64* %numWritten, align 8, !dbg !615
  %mul = mul i64 2, %3, !dbg !616
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !614
  %4 = load i32, i32* %arrayidx, align 4, !dbg !614
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !617
  %tobool = icmp ne i32 %call, 0, !dbg !617
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !618

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !619
  %6 = load i64, i64* %numWritten, align 8, !dbg !620
  %mul1 = mul i64 2, %6, !dbg !621
  %add = add i64 %mul1, 1, !dbg !622
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !619
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !619
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !623
  %tobool4 = icmp ne i32 %call3, 0, !dbg !618
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !624
  br i1 %8, label %while.body, label %while.end, !dbg !609

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !625, metadata !DIExpression()), !dbg !627
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !628
  %10 = load i64, i64* %numWritten, align 8, !dbg !629
  %mul5 = mul i64 2, %10, !dbg !630
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !628
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !631
  %11 = load i32, i32* %byte, align 4, !dbg !632
  %conv = trunc i32 %11 to i8, !dbg !633
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !634
  %13 = load i64, i64* %numWritten, align 8, !dbg !635
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !634
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !636
  %14 = load i64, i64* %numWritten, align 8, !dbg !637
  %inc = add i64 %14, 1, !dbg !637
  store i64 %inc, i64* %numWritten, align 8, !dbg !637
  br label %while.cond, !dbg !609, !llvm.loop !638

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !640
  ret i64 %15, !dbg !641
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !642 {
entry:
  ret i32 1, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !646 {
entry:
  ret i32 0, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !648 {
entry:
  %call = call i32 @rand() #8, !dbg !649
  %rem = srem i32 %call, 2, !dbg !650
  ret i32 %rem, !dbg !651
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !652 {
entry:
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !654 {
entry:
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !656 {
entry:
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !658 {
entry:
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !660 {
entry:
  ret void, !dbg !661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !662 {
entry:
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !664 {
entry:
  ret void, !dbg !665
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !666 {
entry:
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !668 {
entry:
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !670 {
entry:
  ret void, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !672 {
entry:
  ret void, !dbg !673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !674 {
entry:
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !676 {
entry:
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !678 {
entry:
  ret void, !dbg !679
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !680 {
entry:
  ret void, !dbg !681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !682 {
entry:
  ret void, !dbg !683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !684 {
entry:
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !686 {
entry:
  ret void, !dbg !687
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
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_FIVE", scope: !2, file: !3, line: 34, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_06.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_015/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !11, file: !12, line: 174, type: !7, isLocal: false, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !30, globals: !33, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_015/source_code")
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
!55 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_06_bad", scope: !3, file: !3, line: 38, type: !56, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !3, line: 40, type: !49)
!59 = !DILocation(line: 40, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !3, line: 41, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 41, column: 10, scope: !55)
!65 = !DILocation(line: 42, column: 12, scope: !55)
!66 = !DILocation(line: 42, column: 10, scope: !55)
!67 = !DILocation(line: 43, column: 8, scope: !68)
!68 = distinct !DILexicalBlock(scope: !55, file: !3, line: 43, column: 8)
!69 = !DILocation(line: 43, column: 25, scope: !68)
!70 = !DILocation(line: 43, column: 8, scope: !55)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !3, line: 47, type: !74)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 45, column: 9)
!73 = distinct !DILexicalBlock(scope: !68, file: !3, line: 44, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 47, column: 20, scope: !72)
!78 = !DILocation(line: 47, column: 37, scope: !72)
!79 = !DILocation(line: 47, column: 30, scope: !72)
!80 = !DILocalVariable(name: "pFile", scope: !72, file: !3, line: 48, type: !81)
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
!136 = !DILocation(line: 48, column: 20, scope: !72)
!137 = !DILocation(line: 50, column: 21, scope: !138)
!138 = distinct !DILexicalBlock(scope: !72, file: !3, line: 50, column: 17)
!139 = !DILocation(line: 50, column: 20, scope: !138)
!140 = !DILocation(line: 50, column: 29, scope: !138)
!141 = !DILocation(line: 50, column: 17, scope: !72)
!142 = !DILocation(line: 52, column: 25, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !3, line: 51, column: 13)
!144 = !DILocation(line: 52, column: 23, scope: !143)
!145 = !DILocation(line: 53, column: 21, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !3, line: 53, column: 21)
!147 = !DILocation(line: 53, column: 27, scope: !146)
!148 = !DILocation(line: 53, column: 21, scope: !143)
!149 = !DILocation(line: 56, column: 31, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 56, column: 25)
!151 = distinct !DILexicalBlock(scope: !146, file: !3, line: 54, column: 17)
!152 = !DILocation(line: 56, column: 36, scope: !150)
!153 = !DILocation(line: 56, column: 35, scope: !150)
!154 = !DILocation(line: 56, column: 55, scope: !150)
!155 = !DILocation(line: 56, column: 54, scope: !150)
!156 = !DILocation(line: 56, column: 45, scope: !150)
!157 = !DILocation(line: 56, column: 65, scope: !150)
!158 = !DILocation(line: 56, column: 25, scope: !150)
!159 = !DILocation(line: 56, column: 72, scope: !150)
!160 = !DILocation(line: 56, column: 25, scope: !151)
!161 = !DILocation(line: 58, column: 25, scope: !162)
!162 = distinct !DILexicalBlock(scope: !150, file: !3, line: 57, column: 21)
!163 = !DILocation(line: 60, column: 25, scope: !162)
!164 = !DILocation(line: 60, column: 30, scope: !162)
!165 = !DILocation(line: 60, column: 39, scope: !162)
!166 = !DILocation(line: 61, column: 21, scope: !162)
!167 = !DILocation(line: 62, column: 28, scope: !151)
!168 = !DILocation(line: 62, column: 21, scope: !151)
!169 = !DILocation(line: 63, column: 17, scope: !151)
!170 = !DILocation(line: 64, column: 13, scope: !143)
!171 = !DILocation(line: 66, column: 5, scope: !73)
!172 = !DILocation(line: 67, column: 8, scope: !173)
!173 = distinct !DILexicalBlock(scope: !55, file: !3, line: 67, column: 8)
!174 = !DILocation(line: 67, column: 25, scope: !173)
!175 = !DILocation(line: 67, column: 8, scope: !55)
!176 = !DILocation(line: 70, column: 16, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !3, line: 68, column: 5)
!178 = !DILocation(line: 70, column: 9, scope: !177)
!179 = !DILocation(line: 71, column: 5, scope: !177)
!180 = !DILocation(line: 72, column: 1, scope: !55)
!181 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 79, type: !56, scopeLine: 80, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!182 = !DILocalVariable(name: "data", scope: !181, file: !3, line: 81, type: !49)
!183 = !DILocation(line: 81, column: 12, scope: !181)
!184 = !DILocalVariable(name: "dataBuffer", scope: !181, file: !3, line: 82, type: !61)
!185 = !DILocation(line: 82, column: 10, scope: !181)
!186 = !DILocation(line: 83, column: 12, scope: !181)
!187 = !DILocation(line: 83, column: 10, scope: !181)
!188 = !DILocation(line: 84, column: 8, scope: !189)
!189 = distinct !DILexicalBlock(scope: !181, file: !3, line: 84, column: 8)
!190 = !DILocation(line: 84, column: 25, scope: !189)
!191 = !DILocation(line: 84, column: 8, scope: !181)
!192 = !DILocalVariable(name: "dataLen", scope: !193, file: !3, line: 88, type: !74)
!193 = distinct !DILexicalBlock(scope: !194, file: !3, line: 86, column: 9)
!194 = distinct !DILexicalBlock(scope: !189, file: !3, line: 85, column: 5)
!195 = !DILocation(line: 88, column: 20, scope: !193)
!196 = !DILocation(line: 88, column: 37, scope: !193)
!197 = !DILocation(line: 88, column: 30, scope: !193)
!198 = !DILocalVariable(name: "pFile", scope: !193, file: !3, line: 89, type: !81)
!199 = !DILocation(line: 89, column: 20, scope: !193)
!200 = !DILocation(line: 91, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !193, file: !3, line: 91, column: 17)
!202 = !DILocation(line: 91, column: 20, scope: !201)
!203 = !DILocation(line: 91, column: 29, scope: !201)
!204 = !DILocation(line: 91, column: 17, scope: !193)
!205 = !DILocation(line: 93, column: 25, scope: !206)
!206 = distinct !DILexicalBlock(scope: !201, file: !3, line: 92, column: 13)
!207 = !DILocation(line: 93, column: 23, scope: !206)
!208 = !DILocation(line: 94, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !3, line: 94, column: 21)
!210 = !DILocation(line: 94, column: 27, scope: !209)
!211 = !DILocation(line: 94, column: 21, scope: !206)
!212 = !DILocation(line: 97, column: 31, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !3, line: 97, column: 25)
!214 = distinct !DILexicalBlock(scope: !209, file: !3, line: 95, column: 17)
!215 = !DILocation(line: 97, column: 36, scope: !213)
!216 = !DILocation(line: 97, column: 35, scope: !213)
!217 = !DILocation(line: 97, column: 55, scope: !213)
!218 = !DILocation(line: 97, column: 54, scope: !213)
!219 = !DILocation(line: 97, column: 45, scope: !213)
!220 = !DILocation(line: 97, column: 65, scope: !213)
!221 = !DILocation(line: 97, column: 25, scope: !213)
!222 = !DILocation(line: 97, column: 72, scope: !213)
!223 = !DILocation(line: 97, column: 25, scope: !214)
!224 = !DILocation(line: 99, column: 25, scope: !225)
!225 = distinct !DILexicalBlock(scope: !213, file: !3, line: 98, column: 21)
!226 = !DILocation(line: 101, column: 25, scope: !225)
!227 = !DILocation(line: 101, column: 30, scope: !225)
!228 = !DILocation(line: 101, column: 39, scope: !225)
!229 = !DILocation(line: 102, column: 21, scope: !225)
!230 = !DILocation(line: 103, column: 28, scope: !214)
!231 = !DILocation(line: 103, column: 21, scope: !214)
!232 = !DILocation(line: 104, column: 17, scope: !214)
!233 = !DILocation(line: 105, column: 13, scope: !206)
!234 = !DILocation(line: 107, column: 5, scope: !194)
!235 = !DILocation(line: 108, column: 8, scope: !236)
!236 = distinct !DILexicalBlock(scope: !181, file: !3, line: 108, column: 8)
!237 = !DILocation(line: 108, column: 25, scope: !236)
!238 = !DILocation(line: 108, column: 8, scope: !181)
!239 = !DILocation(line: 111, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !236, file: !3, line: 109, column: 5)
!241 = !DILocation(line: 112, column: 5, scope: !240)
!242 = !DILocation(line: 116, column: 24, scope: !243)
!243 = distinct !DILexicalBlock(scope: !236, file: !3, line: 114, column: 5)
!244 = !DILocation(line: 116, column: 9, scope: !243)
!245 = !DILocation(line: 118, column: 1, scope: !181)
!246 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 121, type: !56, scopeLine: 122, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!247 = !DILocalVariable(name: "data", scope: !246, file: !3, line: 123, type: !49)
!248 = !DILocation(line: 123, column: 12, scope: !246)
!249 = !DILocalVariable(name: "dataBuffer", scope: !246, file: !3, line: 124, type: !61)
!250 = !DILocation(line: 124, column: 10, scope: !246)
!251 = !DILocation(line: 125, column: 12, scope: !246)
!252 = !DILocation(line: 125, column: 10, scope: !246)
!253 = !DILocation(line: 126, column: 8, scope: !254)
!254 = distinct !DILexicalBlock(scope: !246, file: !3, line: 126, column: 8)
!255 = !DILocation(line: 126, column: 25, scope: !254)
!256 = !DILocation(line: 126, column: 8, scope: !246)
!257 = !DILocalVariable(name: "dataLen", scope: !258, file: !3, line: 130, type: !74)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 128, column: 9)
!259 = distinct !DILexicalBlock(scope: !254, file: !3, line: 127, column: 5)
!260 = !DILocation(line: 130, column: 20, scope: !258)
!261 = !DILocation(line: 130, column: 37, scope: !258)
!262 = !DILocation(line: 130, column: 30, scope: !258)
!263 = !DILocalVariable(name: "pFile", scope: !258, file: !3, line: 131, type: !81)
!264 = !DILocation(line: 131, column: 20, scope: !258)
!265 = !DILocation(line: 133, column: 21, scope: !266)
!266 = distinct !DILexicalBlock(scope: !258, file: !3, line: 133, column: 17)
!267 = !DILocation(line: 133, column: 20, scope: !266)
!268 = !DILocation(line: 133, column: 29, scope: !266)
!269 = !DILocation(line: 133, column: 17, scope: !258)
!270 = !DILocation(line: 135, column: 25, scope: !271)
!271 = distinct !DILexicalBlock(scope: !266, file: !3, line: 134, column: 13)
!272 = !DILocation(line: 135, column: 23, scope: !271)
!273 = !DILocation(line: 136, column: 21, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !3, line: 136, column: 21)
!275 = !DILocation(line: 136, column: 27, scope: !274)
!276 = !DILocation(line: 136, column: 21, scope: !271)
!277 = !DILocation(line: 139, column: 31, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !3, line: 139, column: 25)
!279 = distinct !DILexicalBlock(scope: !274, file: !3, line: 137, column: 17)
!280 = !DILocation(line: 139, column: 36, scope: !278)
!281 = !DILocation(line: 139, column: 35, scope: !278)
!282 = !DILocation(line: 139, column: 55, scope: !278)
!283 = !DILocation(line: 139, column: 54, scope: !278)
!284 = !DILocation(line: 139, column: 45, scope: !278)
!285 = !DILocation(line: 139, column: 65, scope: !278)
!286 = !DILocation(line: 139, column: 25, scope: !278)
!287 = !DILocation(line: 139, column: 72, scope: !278)
!288 = !DILocation(line: 139, column: 25, scope: !279)
!289 = !DILocation(line: 141, column: 25, scope: !290)
!290 = distinct !DILexicalBlock(scope: !278, file: !3, line: 140, column: 21)
!291 = !DILocation(line: 143, column: 25, scope: !290)
!292 = !DILocation(line: 143, column: 30, scope: !290)
!293 = !DILocation(line: 143, column: 39, scope: !290)
!294 = !DILocation(line: 144, column: 21, scope: !290)
!295 = !DILocation(line: 145, column: 28, scope: !279)
!296 = !DILocation(line: 145, column: 21, scope: !279)
!297 = !DILocation(line: 146, column: 17, scope: !279)
!298 = !DILocation(line: 147, column: 13, scope: !271)
!299 = !DILocation(line: 149, column: 5, scope: !259)
!300 = !DILocation(line: 150, column: 8, scope: !301)
!301 = distinct !DILexicalBlock(scope: !246, file: !3, line: 150, column: 8)
!302 = !DILocation(line: 150, column: 25, scope: !301)
!303 = !DILocation(line: 150, column: 8, scope: !246)
!304 = !DILocation(line: 153, column: 24, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !3, line: 151, column: 5)
!306 = !DILocation(line: 153, column: 9, scope: !305)
!307 = !DILocation(line: 154, column: 5, scope: !305)
!308 = !DILocation(line: 155, column: 1, scope: !246)
!309 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 158, type: !56, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!310 = !DILocalVariable(name: "data", scope: !309, file: !3, line: 160, type: !49)
!311 = !DILocation(line: 160, column: 12, scope: !309)
!312 = !DILocalVariable(name: "dataBuffer", scope: !309, file: !3, line: 161, type: !61)
!313 = !DILocation(line: 161, column: 10, scope: !309)
!314 = !DILocation(line: 162, column: 12, scope: !309)
!315 = !DILocation(line: 162, column: 10, scope: !309)
!316 = !DILocation(line: 163, column: 8, scope: !317)
!317 = distinct !DILexicalBlock(scope: !309, file: !3, line: 163, column: 8)
!318 = !DILocation(line: 163, column: 25, scope: !317)
!319 = !DILocation(line: 163, column: 8, scope: !309)
!320 = !DILocation(line: 166, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !3, line: 164, column: 5)
!322 = !DILocation(line: 167, column: 5, scope: !321)
!323 = !DILocation(line: 171, column: 16, scope: !324)
!324 = distinct !DILexicalBlock(scope: !317, file: !3, line: 169, column: 5)
!325 = !DILocation(line: 171, column: 9, scope: !324)
!326 = !DILocation(line: 173, column: 8, scope: !327)
!327 = distinct !DILexicalBlock(scope: !309, file: !3, line: 173, column: 8)
!328 = !DILocation(line: 173, column: 25, scope: !327)
!329 = !DILocation(line: 173, column: 8, scope: !309)
!330 = !DILocation(line: 176, column: 16, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !3, line: 174, column: 5)
!332 = !DILocation(line: 176, column: 9, scope: !331)
!333 = !DILocation(line: 177, column: 5, scope: !331)
!334 = !DILocation(line: 178, column: 1, scope: !309)
!335 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 181, type: !56, scopeLine: 182, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!336 = !DILocalVariable(name: "data", scope: !335, file: !3, line: 183, type: !49)
!337 = !DILocation(line: 183, column: 12, scope: !335)
!338 = !DILocalVariable(name: "dataBuffer", scope: !335, file: !3, line: 184, type: !61)
!339 = !DILocation(line: 184, column: 10, scope: !335)
!340 = !DILocation(line: 185, column: 12, scope: !335)
!341 = !DILocation(line: 185, column: 10, scope: !335)
!342 = !DILocation(line: 186, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !335, file: !3, line: 186, column: 8)
!344 = !DILocation(line: 186, column: 25, scope: !343)
!345 = !DILocation(line: 186, column: 8, scope: !335)
!346 = !DILocation(line: 189, column: 16, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !3, line: 187, column: 5)
!348 = !DILocation(line: 189, column: 9, scope: !347)
!349 = !DILocation(line: 190, column: 5, scope: !347)
!350 = !DILocation(line: 191, column: 8, scope: !351)
!351 = distinct !DILexicalBlock(scope: !335, file: !3, line: 191, column: 8)
!352 = !DILocation(line: 191, column: 25, scope: !351)
!353 = !DILocation(line: 191, column: 8, scope: !335)
!354 = !DILocation(line: 194, column: 16, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !3, line: 192, column: 5)
!356 = !DILocation(line: 194, column: 9, scope: !355)
!357 = !DILocation(line: 195, column: 5, scope: !355)
!358 = !DILocation(line: 196, column: 1, scope: !335)
!359 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_06_good", scope: !3, file: !3, line: 198, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!360 = !DILocation(line: 200, column: 5, scope: !359)
!361 = !DILocation(line: 201, column: 5, scope: !359)
!362 = !DILocation(line: 202, column: 5, scope: !359)
!363 = !DILocation(line: 203, column: 5, scope: !359)
!364 = !DILocation(line: 204, column: 1, scope: !359)
!365 = distinct !DISubprogram(name: "printLine", scope: !12, file: !12, line: 11, type: !366, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !49}
!368 = !DILocalVariable(name: "line", arg: 1, scope: !365, file: !12, line: 11, type: !49)
!369 = !DILocation(line: 11, column: 25, scope: !365)
!370 = !DILocation(line: 13, column: 1, scope: !365)
!371 = !DILocation(line: 14, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !365, file: !12, line: 14, column: 8)
!373 = !DILocation(line: 14, column: 13, scope: !372)
!374 = !DILocation(line: 14, column: 8, scope: !365)
!375 = !DILocation(line: 16, column: 24, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !12, line: 15, column: 5)
!377 = !DILocation(line: 16, column: 9, scope: !376)
!378 = !DILocation(line: 17, column: 5, scope: !376)
!379 = !DILocation(line: 18, column: 5, scope: !365)
!380 = !DILocation(line: 19, column: 1, scope: !365)
!381 = distinct !DISubprogram(name: "printSinkLine", scope: !12, file: !12, line: 20, type: !366, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!382 = !DILocalVariable(name: "line", arg: 1, scope: !381, file: !12, line: 20, type: !49)
!383 = !DILocation(line: 20, column: 29, scope: !381)
!384 = !DILocation(line: 22, column: 8, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !12, line: 22, column: 8)
!386 = !DILocation(line: 22, column: 13, scope: !385)
!387 = !DILocation(line: 22, column: 8, scope: !381)
!388 = !DILocation(line: 24, column: 24, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !12, line: 23, column: 5)
!390 = !DILocation(line: 24, column: 9, scope: !389)
!391 = !DILocation(line: 25, column: 5, scope: !389)
!392 = !DILocation(line: 26, column: 1, scope: !381)
!393 = distinct !DISubprogram(name: "printWLine", scope: !12, file: !12, line: 27, type: !394, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !7)
!398 = !DILocalVariable(name: "line", arg: 1, scope: !393, file: !12, line: 27, type: !396)
!399 = !DILocation(line: 27, column: 29, scope: !393)
!400 = !DILocation(line: 29, column: 8, scope: !401)
!401 = distinct !DILexicalBlock(scope: !393, file: !12, line: 29, column: 8)
!402 = !DILocation(line: 29, column: 13, scope: !401)
!403 = !DILocation(line: 29, column: 8, scope: !393)
!404 = !DILocation(line: 31, column: 27, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !12, line: 30, column: 5)
!406 = !DILocation(line: 31, column: 9, scope: !405)
!407 = !DILocation(line: 32, column: 5, scope: !405)
!408 = !DILocation(line: 33, column: 1, scope: !393)
!409 = distinct !DISubprogram(name: "printIntLine", scope: !12, file: !12, line: 35, type: !410, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !7}
!412 = !DILocalVariable(name: "intNumber", arg: 1, scope: !409, file: !12, line: 35, type: !7)
!413 = !DILocation(line: 35, column: 24, scope: !409)
!414 = !DILocation(line: 37, column: 20, scope: !409)
!415 = !DILocation(line: 37, column: 5, scope: !409)
!416 = !DILocation(line: 38, column: 1, scope: !409)
!417 = distinct !DISubprogram(name: "printShortLine", scope: !12, file: !12, line: 40, type: !418, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !420}
!420 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!421 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !417, file: !12, line: 40, type: !420)
!422 = !DILocation(line: 40, column: 28, scope: !417)
!423 = !DILocation(line: 42, column: 21, scope: !417)
!424 = !DILocation(line: 42, column: 5, scope: !417)
!425 = !DILocation(line: 43, column: 1, scope: !417)
!426 = distinct !DISubprogram(name: "printFloatLine", scope: !12, file: !12, line: 45, type: !427, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !429}
!429 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!430 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !426, file: !12, line: 45, type: !429)
!431 = !DILocation(line: 45, column: 28, scope: !426)
!432 = !DILocation(line: 47, column: 20, scope: !426)
!433 = !DILocation(line: 47, column: 5, scope: !426)
!434 = !DILocation(line: 48, column: 1, scope: !426)
!435 = distinct !DISubprogram(name: "printLongLine", scope: !12, file: !12, line: 50, type: !436, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !109}
!438 = !DILocalVariable(name: "longNumber", arg: 1, scope: !435, file: !12, line: 50, type: !109)
!439 = !DILocation(line: 50, column: 26, scope: !435)
!440 = !DILocation(line: 52, column: 21, scope: !435)
!441 = !DILocation(line: 52, column: 5, scope: !435)
!442 = !DILocation(line: 53, column: 1, scope: !435)
!443 = distinct !DISubprogram(name: "printLongLongLine", scope: !12, file: !12, line: 55, type: !444, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !446}
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !447, line: 27, baseType: !448)
!447 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !108, line: 44, baseType: !109)
!449 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !443, file: !12, line: 55, type: !446)
!450 = !DILocation(line: 55, column: 33, scope: !443)
!451 = !DILocation(line: 57, column: 29, scope: !443)
!452 = !DILocation(line: 57, column: 5, scope: !443)
!453 = !DILocation(line: 58, column: 1, scope: !443)
!454 = distinct !DISubprogram(name: "printSizeTLine", scope: !12, file: !12, line: 60, type: !455, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !74}
!457 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !454, file: !12, line: 60, type: !74)
!458 = !DILocation(line: 60, column: 29, scope: !454)
!459 = !DILocation(line: 62, column: 21, scope: !454)
!460 = !DILocation(line: 62, column: 5, scope: !454)
!461 = !DILocation(line: 63, column: 1, scope: !454)
!462 = distinct !DISubprogram(name: "printHexCharLine", scope: !12, file: !12, line: 65, type: !463, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !50}
!465 = !DILocalVariable(name: "charHex", arg: 1, scope: !462, file: !12, line: 65, type: !50)
!466 = !DILocation(line: 65, column: 29, scope: !462)
!467 = !DILocation(line: 67, column: 22, scope: !462)
!468 = !DILocation(line: 67, column: 5, scope: !462)
!469 = !DILocation(line: 68, column: 1, scope: !462)
!470 = distinct !DISubprogram(name: "printWcharLine", scope: !12, file: !12, line: 70, type: !471, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !397}
!473 = !DILocalVariable(name: "wideChar", arg: 1, scope: !470, file: !12, line: 70, type: !397)
!474 = !DILocation(line: 70, column: 29, scope: !470)
!475 = !DILocalVariable(name: "s", scope: !470, file: !12, line: 74, type: !476)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 64, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 2)
!479 = !DILocation(line: 74, column: 13, scope: !470)
!480 = !DILocation(line: 75, column: 16, scope: !470)
!481 = !DILocation(line: 75, column: 9, scope: !470)
!482 = !DILocation(line: 75, column: 14, scope: !470)
!483 = !DILocation(line: 76, column: 9, scope: !470)
!484 = !DILocation(line: 76, column: 14, scope: !470)
!485 = !DILocation(line: 77, column: 21, scope: !470)
!486 = !DILocation(line: 77, column: 5, scope: !470)
!487 = !DILocation(line: 78, column: 1, scope: !470)
!488 = distinct !DISubprogram(name: "printUnsignedLine", scope: !12, file: !12, line: 80, type: !489, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !16}
!491 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !488, file: !12, line: 80, type: !16)
!492 = !DILocation(line: 80, column: 33, scope: !488)
!493 = !DILocation(line: 82, column: 20, scope: !488)
!494 = !DILocation(line: 82, column: 5, scope: !488)
!495 = !DILocation(line: 83, column: 1, scope: !488)
!496 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !12, file: !12, line: 85, type: !497, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !32}
!499 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !496, file: !12, line: 85, type: !32)
!500 = !DILocation(line: 85, column: 45, scope: !496)
!501 = !DILocation(line: 87, column: 22, scope: !496)
!502 = !DILocation(line: 87, column: 5, scope: !496)
!503 = !DILocation(line: 88, column: 1, scope: !496)
!504 = distinct !DISubprogram(name: "printDoubleLine", scope: !12, file: !12, line: 90, type: !505, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !507}
!507 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!508 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !504, file: !12, line: 90, type: !507)
!509 = !DILocation(line: 90, column: 29, scope: !504)
!510 = !DILocation(line: 92, column: 20, scope: !504)
!511 = !DILocation(line: 92, column: 5, scope: !504)
!512 = !DILocation(line: 93, column: 1, scope: !504)
!513 = distinct !DISubprogram(name: "printStructLine", scope: !12, file: !12, line: 95, type: !514, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !516}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !518, line: 100, baseType: !519)
!518 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_015/source_code")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !518, line: 96, size: 64, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !519, file: !518, line: 98, baseType: !7, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !519, file: !518, line: 99, baseType: !7, size: 32, offset: 32)
!523 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !513, file: !12, line: 95, type: !516)
!524 = !DILocation(line: 95, column: 40, scope: !513)
!525 = !DILocation(line: 97, column: 26, scope: !513)
!526 = !DILocation(line: 97, column: 47, scope: !513)
!527 = !DILocation(line: 97, column: 55, scope: !513)
!528 = !DILocation(line: 97, column: 76, scope: !513)
!529 = !DILocation(line: 97, column: 5, scope: !513)
!530 = !DILocation(line: 98, column: 1, scope: !513)
!531 = distinct !DISubprogram(name: "printBytesLine", scope: !12, file: !12, line: 100, type: !532, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !534, !74}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!535 = !DILocalVariable(name: "bytes", arg: 1, scope: !531, file: !12, line: 100, type: !534)
!536 = !DILocation(line: 100, column: 38, scope: !531)
!537 = !DILocalVariable(name: "numBytes", arg: 2, scope: !531, file: !12, line: 100, type: !74)
!538 = !DILocation(line: 100, column: 52, scope: !531)
!539 = !DILocalVariable(name: "i", scope: !531, file: !12, line: 102, type: !74)
!540 = !DILocation(line: 102, column: 12, scope: !531)
!541 = !DILocation(line: 103, column: 12, scope: !542)
!542 = distinct !DILexicalBlock(scope: !531, file: !12, line: 103, column: 5)
!543 = !DILocation(line: 103, column: 10, scope: !542)
!544 = !DILocation(line: 103, column: 17, scope: !545)
!545 = distinct !DILexicalBlock(scope: !542, file: !12, line: 103, column: 5)
!546 = !DILocation(line: 103, column: 21, scope: !545)
!547 = !DILocation(line: 103, column: 19, scope: !545)
!548 = !DILocation(line: 103, column: 5, scope: !542)
!549 = !DILocation(line: 105, column: 24, scope: !550)
!550 = distinct !DILexicalBlock(scope: !545, file: !12, line: 104, column: 5)
!551 = !DILocation(line: 105, column: 30, scope: !550)
!552 = !DILocation(line: 105, column: 9, scope: !550)
!553 = !DILocation(line: 106, column: 5, scope: !550)
!554 = !DILocation(line: 103, column: 31, scope: !545)
!555 = !DILocation(line: 103, column: 5, scope: !545)
!556 = distinct !{!556, !548, !557, !558}
!557 = !DILocation(line: 106, column: 5, scope: !542)
!558 = !{!"llvm.loop.mustprogress"}
!559 = !DILocation(line: 107, column: 5, scope: !531)
!560 = !DILocation(line: 108, column: 1, scope: !531)
!561 = distinct !DISubprogram(name: "decodeHexChars", scope: !12, file: !12, line: 113, type: !562, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!562 = !DISubroutineType(types: !563)
!563 = !{!74, !534, !74, !49}
!564 = !DILocalVariable(name: "bytes", arg: 1, scope: !561, file: !12, line: 113, type: !534)
!565 = !DILocation(line: 113, column: 39, scope: !561)
!566 = !DILocalVariable(name: "numBytes", arg: 2, scope: !561, file: !12, line: 113, type: !74)
!567 = !DILocation(line: 113, column: 53, scope: !561)
!568 = !DILocalVariable(name: "hex", arg: 3, scope: !561, file: !12, line: 113, type: !49)
!569 = !DILocation(line: 113, column: 71, scope: !561)
!570 = !DILocalVariable(name: "numWritten", scope: !561, file: !12, line: 115, type: !74)
!571 = !DILocation(line: 115, column: 12, scope: !561)
!572 = !DILocation(line: 121, column: 5, scope: !561)
!573 = !DILocation(line: 121, column: 12, scope: !561)
!574 = !DILocation(line: 121, column: 25, scope: !561)
!575 = !DILocation(line: 121, column: 23, scope: !561)
!576 = !DILocation(line: 121, column: 34, scope: !561)
!577 = !DILocation(line: 121, column: 37, scope: !561)
!578 = !DILocation(line: 121, column: 67, scope: !561)
!579 = !DILocation(line: 121, column: 70, scope: !561)
!580 = !DILocation(line: 0, scope: !561)
!581 = !DILocalVariable(name: "byte", scope: !582, file: !12, line: 123, type: !7)
!582 = distinct !DILexicalBlock(scope: !561, file: !12, line: 122, column: 5)
!583 = !DILocation(line: 123, column: 13, scope: !582)
!584 = !DILocation(line: 124, column: 17, scope: !582)
!585 = !DILocation(line: 124, column: 25, scope: !582)
!586 = !DILocation(line: 124, column: 23, scope: !582)
!587 = !DILocation(line: 124, column: 9, scope: !582)
!588 = !DILocation(line: 125, column: 45, scope: !582)
!589 = !DILocation(line: 125, column: 29, scope: !582)
!590 = !DILocation(line: 125, column: 9, scope: !582)
!591 = !DILocation(line: 125, column: 15, scope: !582)
!592 = !DILocation(line: 125, column: 27, scope: !582)
!593 = !DILocation(line: 126, column: 9, scope: !582)
!594 = distinct !{!594, !572, !595, !558}
!595 = !DILocation(line: 127, column: 5, scope: !561)
!596 = !DILocation(line: 129, column: 12, scope: !561)
!597 = !DILocation(line: 129, column: 5, scope: !561)
!598 = distinct !DISubprogram(name: "decodeHexWChars", scope: !12, file: !12, line: 135, type: !599, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!599 = !DISubroutineType(types: !600)
!600 = !{!74, !534, !74, !396}
!601 = !DILocalVariable(name: "bytes", arg: 1, scope: !598, file: !12, line: 135, type: !534)
!602 = !DILocation(line: 135, column: 41, scope: !598)
!603 = !DILocalVariable(name: "numBytes", arg: 2, scope: !598, file: !12, line: 135, type: !74)
!604 = !DILocation(line: 135, column: 55, scope: !598)
!605 = !DILocalVariable(name: "hex", arg: 3, scope: !598, file: !12, line: 135, type: !396)
!606 = !DILocation(line: 135, column: 76, scope: !598)
!607 = !DILocalVariable(name: "numWritten", scope: !598, file: !12, line: 137, type: !74)
!608 = !DILocation(line: 137, column: 12, scope: !598)
!609 = !DILocation(line: 143, column: 5, scope: !598)
!610 = !DILocation(line: 143, column: 12, scope: !598)
!611 = !DILocation(line: 143, column: 25, scope: !598)
!612 = !DILocation(line: 143, column: 23, scope: !598)
!613 = !DILocation(line: 143, column: 34, scope: !598)
!614 = !DILocation(line: 143, column: 47, scope: !598)
!615 = !DILocation(line: 143, column: 55, scope: !598)
!616 = !DILocation(line: 143, column: 53, scope: !598)
!617 = !DILocation(line: 143, column: 37, scope: !598)
!618 = !DILocation(line: 143, column: 68, scope: !598)
!619 = !DILocation(line: 143, column: 81, scope: !598)
!620 = !DILocation(line: 143, column: 89, scope: !598)
!621 = !DILocation(line: 143, column: 87, scope: !598)
!622 = !DILocation(line: 143, column: 100, scope: !598)
!623 = !DILocation(line: 143, column: 71, scope: !598)
!624 = !DILocation(line: 0, scope: !598)
!625 = !DILocalVariable(name: "byte", scope: !626, file: !12, line: 145, type: !7)
!626 = distinct !DILexicalBlock(scope: !598, file: !12, line: 144, column: 5)
!627 = !DILocation(line: 145, column: 13, scope: !626)
!628 = !DILocation(line: 146, column: 18, scope: !626)
!629 = !DILocation(line: 146, column: 26, scope: !626)
!630 = !DILocation(line: 146, column: 24, scope: !626)
!631 = !DILocation(line: 146, column: 9, scope: !626)
!632 = !DILocation(line: 147, column: 45, scope: !626)
!633 = !DILocation(line: 147, column: 29, scope: !626)
!634 = !DILocation(line: 147, column: 9, scope: !626)
!635 = !DILocation(line: 147, column: 15, scope: !626)
!636 = !DILocation(line: 147, column: 27, scope: !626)
!637 = !DILocation(line: 148, column: 9, scope: !626)
!638 = distinct !{!638, !609, !639, !558}
!639 = !DILocation(line: 149, column: 5, scope: !598)
!640 = !DILocation(line: 151, column: 12, scope: !598)
!641 = !DILocation(line: 151, column: 5, scope: !598)
!642 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !12, file: !12, line: 156, type: !643, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!643 = !DISubroutineType(types: !644)
!644 = !{!7}
!645 = !DILocation(line: 158, column: 5, scope: !642)
!646 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !12, file: !12, line: 161, type: !643, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!647 = !DILocation(line: 163, column: 5, scope: !646)
!648 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !12, file: !12, line: 166, type: !643, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!649 = !DILocation(line: 168, column: 13, scope: !648)
!650 = !DILocation(line: 168, column: 20, scope: !648)
!651 = !DILocation(line: 168, column: 5, scope: !648)
!652 = distinct !DISubprogram(name: "good1", scope: !12, file: !12, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!653 = !DILocation(line: 187, column: 16, scope: !652)
!654 = distinct !DISubprogram(name: "good2", scope: !12, file: !12, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!655 = !DILocation(line: 188, column: 16, scope: !654)
!656 = distinct !DISubprogram(name: "good3", scope: !12, file: !12, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!657 = !DILocation(line: 189, column: 16, scope: !656)
!658 = distinct !DISubprogram(name: "good4", scope: !12, file: !12, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!659 = !DILocation(line: 190, column: 16, scope: !658)
!660 = distinct !DISubprogram(name: "good5", scope: !12, file: !12, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!661 = !DILocation(line: 191, column: 16, scope: !660)
!662 = distinct !DISubprogram(name: "good6", scope: !12, file: !12, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!663 = !DILocation(line: 192, column: 16, scope: !662)
!664 = distinct !DISubprogram(name: "good7", scope: !12, file: !12, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!665 = !DILocation(line: 193, column: 16, scope: !664)
!666 = distinct !DISubprogram(name: "good8", scope: !12, file: !12, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!667 = !DILocation(line: 194, column: 16, scope: !666)
!668 = distinct !DISubprogram(name: "good9", scope: !12, file: !12, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!669 = !DILocation(line: 195, column: 16, scope: !668)
!670 = distinct !DISubprogram(name: "bad1", scope: !12, file: !12, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!671 = !DILocation(line: 198, column: 15, scope: !670)
!672 = distinct !DISubprogram(name: "bad2", scope: !12, file: !12, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!673 = !DILocation(line: 199, column: 15, scope: !672)
!674 = distinct !DISubprogram(name: "bad3", scope: !12, file: !12, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!675 = !DILocation(line: 200, column: 15, scope: !674)
!676 = distinct !DISubprogram(name: "bad4", scope: !12, file: !12, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!677 = !DILocation(line: 201, column: 15, scope: !676)
!678 = distinct !DISubprogram(name: "bad5", scope: !12, file: !12, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!679 = !DILocation(line: 202, column: 15, scope: !678)
!680 = distinct !DISubprogram(name: "bad6", scope: !12, file: !12, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!681 = !DILocation(line: 203, column: 15, scope: !680)
!682 = distinct !DISubprogram(name: "bad7", scope: !12, file: !12, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!683 = !DILocation(line: 204, column: 15, scope: !682)
!684 = distinct !DISubprogram(name: "bad8", scope: !12, file: !12, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!685 = !DILocation(line: 205, column: 15, scope: !684)
!686 = distinct !DISubprogram(name: "bad9", scope: !12, file: !12, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!687 = !DILocation(line: 206, column: 15, scope: !686)
