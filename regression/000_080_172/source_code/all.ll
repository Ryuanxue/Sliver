; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@badStatic = dso_local global i32 0, align 4, !dbg !0
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !9
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !11
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !13
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
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
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !61 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load i32, i32* @badStatic, align 4, !dbg !66
  %tobool = icmp ne i32 %0, 0, !dbg !66
  br i1 %tobool, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !69, metadata !DIExpression()), !dbg !86
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !87
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !87
  call void @llvm.va_start(i8* %arraydecay1), !dbg !87
  %1 = load i8*, i8** %data.addr, align 8, !dbg !88
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !89
  %call = call i32 @vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !90
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !91
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !91
  call void @llvm.va_end(i8* %arraydecay34), !dbg !91
  br label %if.end, !dbg !92

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_21_bad() #0 !dbg !94 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !99, metadata !DIExpression()), !dbg !103
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !103
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !103
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !104
  store i8* %arraydecay, i8** %data, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !106, metadata !DIExpression()), !dbg !111
  %1 = load i8*, i8** %data, align 8, !dbg !112
  %call = call i64 @strlen(i8* %1) #8, !dbg !113
  store i64 %call, i64* %dataLen, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !114, metadata !DIExpression()), !dbg !168
  %2 = load i64, i64* %dataLen, align 8, !dbg !169
  %sub = sub i64 100, %2, !dbg !171
  %cmp = icmp ugt i64 %sub, 1, !dbg !172
  br i1 %cmp, label %if.then, label %if.end11, !dbg !173

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !174
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !176
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !177
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !179
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !180

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !181
  %5 = load i64, i64* %dataLen, align 8, !dbg !184
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !185
  %6 = load i64, i64* %dataLen, align 8, !dbg !186
  %sub4 = sub i64 100, %6, !dbg !187
  %conv = trunc i64 %sub4 to i32, !dbg !188
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !189
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !190
  %cmp6 = icmp eq i8* %call5, null, !dbg !191
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !192

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !193
  %8 = load i8*, i8** %data, align 8, !dbg !195
  %9 = load i64, i64* %dataLen, align 8, !dbg !196
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !195
  store i8 0, i8* %arrayidx, align 1, !dbg !197
  br label %if.end, !dbg !198

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !199
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !200
  br label %if.end10, !dbg !201

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !202

if.end11:                                         ; preds = %if.end10, %entry
  store i32 1, i32* @badStatic, align 4, !dbg !203
  %11 = load i8*, i8** %data, align 8, !dbg !204
  %12 = load i8*, i8** %data, align 8, !dbg !205
  call void (i8*, ...) @badVaSink(i8* %11, i8* %12), !dbg !206
  ret void, !dbg !207
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1_vasink(i8* %data, ...) #0 !dbg !208 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !211
  %tobool = icmp ne i32 %0, 0, !dbg !211
  br i1 %tobool, label %if.then, label %if.else, !dbg !213

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !214
  br label %if.end, !dbg !216

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !217, metadata !DIExpression()), !dbg !220
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !221
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !221
  call void @llvm.va_start(i8* %arraydecay1), !dbg !221
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !222
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !223
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !224
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !224
  call void @llvm.va_end(i8* %arraydecay34), !dbg !224
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !226 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !229, metadata !DIExpression()), !dbg !230
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !230
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !230
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !231
  store i8* %arraydecay, i8** %data, align 8, !dbg !232
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !233, metadata !DIExpression()), !dbg !235
  %1 = load i8*, i8** %data, align 8, !dbg !236
  %call = call i64 @strlen(i8* %1) #8, !dbg !237
  store i64 %call, i64* %dataLen, align 8, !dbg !235
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !238, metadata !DIExpression()), !dbg !239
  %2 = load i64, i64* %dataLen, align 8, !dbg !240
  %sub = sub i64 100, %2, !dbg !242
  %cmp = icmp ugt i64 %sub, 1, !dbg !243
  br i1 %cmp, label %if.then, label %if.end11, !dbg !244

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !245
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !247
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !248
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !250
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !251

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !252
  %5 = load i64, i64* %dataLen, align 8, !dbg !255
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !256
  %6 = load i64, i64* %dataLen, align 8, !dbg !257
  %sub4 = sub i64 100, %6, !dbg !258
  %conv = trunc i64 %sub4 to i32, !dbg !259
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !260
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !261
  %cmp6 = icmp eq i8* %call5, null, !dbg !262
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !263

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !264
  %8 = load i8*, i8** %data, align 8, !dbg !266
  %9 = load i64, i64* %dataLen, align 8, !dbg !267
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !266
  store i8 0, i8* %arrayidx, align 1, !dbg !268
  br label %if.end, !dbg !269

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !270
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !271
  br label %if.end10, !dbg !272

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !273

if.end11:                                         ; preds = %if.end10, %entry
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !274
  %11 = load i8*, i8** %data, align 8, !dbg !275
  %12 = load i8*, i8** %data, align 8, !dbg !276
  call void (i8*, ...) @goodB2G1_vasink(i8* %11, i8* %12), !dbg !277
  ret void, !dbg !278
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2_vasink(i8* %data, ...) #0 !dbg !279 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !282
  %tobool = icmp ne i32 %0, 0, !dbg !282
  br i1 %tobool, label %if.then, label %if.end, !dbg !284

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !285, metadata !DIExpression()), !dbg !288
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !289
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !289
  call void @llvm.va_start(i8* %arraydecay1), !dbg !289
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !290
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !291
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !292
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !292
  call void @llvm.va_end(i8* %arraydecay34), !dbg !292
  br label %if.end, !dbg !293

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !294
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !295 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !299
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !299
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !300
  store i8* %arraydecay, i8** %data, align 8, !dbg !301
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !302, metadata !DIExpression()), !dbg !304
  %1 = load i8*, i8** %data, align 8, !dbg !305
  %call = call i64 @strlen(i8* %1) #8, !dbg !306
  store i64 %call, i64* %dataLen, align 8, !dbg !304
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !307, metadata !DIExpression()), !dbg !308
  %2 = load i64, i64* %dataLen, align 8, !dbg !309
  %sub = sub i64 100, %2, !dbg !311
  %cmp = icmp ugt i64 %sub, 1, !dbg !312
  br i1 %cmp, label %if.then, label %if.end11, !dbg !313

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !314
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !316
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !317
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !319
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !320

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !321
  %5 = load i64, i64* %dataLen, align 8, !dbg !324
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !325
  %6 = load i64, i64* %dataLen, align 8, !dbg !326
  %sub4 = sub i64 100, %6, !dbg !327
  %conv = trunc i64 %sub4 to i32, !dbg !328
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !329
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !330
  %cmp6 = icmp eq i8* %call5, null, !dbg !331
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !332

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !333
  %8 = load i8*, i8** %data, align 8, !dbg !335
  %9 = load i64, i64* %dataLen, align 8, !dbg !336
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !335
  store i8 0, i8* %arrayidx, align 1, !dbg !337
  br label %if.end, !dbg !338

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !339
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !340
  br label %if.end10, !dbg !341

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !342

if.end11:                                         ; preds = %if.end10, %entry
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !343
  %11 = load i8*, i8** %data, align 8, !dbg !344
  %12 = load i8*, i8** %data, align 8, !dbg !345
  call void (i8*, ...) @goodB2G2_vasink(i8* %11, i8* %12), !dbg !346
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !348 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !351
  %tobool = icmp ne i32 %0, 0, !dbg !351
  br i1 %tobool, label %if.then, label %if.end, !dbg !353

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !354, metadata !DIExpression()), !dbg !357
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !358
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !358
  call void @llvm.va_start(i8* %arraydecay1), !dbg !358
  %1 = load i8*, i8** %data.addr, align 8, !dbg !359
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !360
  %call = call i32 @vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !361
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !362
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !362
  call void @llvm.va_end(i8* %arraydecay34), !dbg !362
  br label %if.end, !dbg !363

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !365 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !366, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !369
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !369
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !370
  store i8* %arraydecay, i8** %data, align 8, !dbg !371
  %1 = load i8*, i8** %data, align 8, !dbg !372
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !373
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !374
  %2 = load i8*, i8** %data, align 8, !dbg !375
  %3 = load i8*, i8** %data, align 8, !dbg !376
  call void (i8*, ...) @goodG2BVaSink(i8* %2, i8* %3), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_21_good() #0 !dbg !379 {
entry:
  call void @goodB2G1(), !dbg !380
  call void @goodB2G2(), !dbg !381
  call void @goodG2B(), !dbg !382
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !384 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !387, metadata !DIExpression()), !dbg !388
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !389
  %0 = load i8*, i8** %line.addr, align 8, !dbg !390
  %cmp = icmp ne i8* %0, null, !dbg !392
  br i1 %cmp, label %if.then, label %if.end, !dbg !393

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !394
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !396
  br label %if.end, !dbg !397

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.8, i64 0, i64 0)), !dbg !398
  ret void, !dbg !399
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !400 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = load i8*, i8** %line.addr, align 8, !dbg !403
  %cmp = icmp ne i8* %0, null, !dbg !405
  br i1 %cmp, label %if.then, label %if.end, !dbg !406

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !407
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !409
  br label %if.end, !dbg !410

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !411
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !412 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load i32*, i32** %line.addr, align 8, !dbg !419
  %cmp = icmp ne i32* %0, null, !dbg !421
  br i1 %cmp, label %if.then, label %if.end, !dbg !422

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !423
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !425
  br label %if.end, !dbg !426

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !427
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !428 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !431, metadata !DIExpression()), !dbg !432
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !433
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !434
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !436 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !440, metadata !DIExpression()), !dbg !441
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !442
  %conv = sext i16 %0 to i32, !dbg !442
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.11, i64 0, i64 0), i32 %conv), !dbg !443
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !445 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !451
  %conv = fpext float %0 to double, !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.12, i64 0, i64 0), double %conv), !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !454 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !457, metadata !DIExpression()), !dbg !458
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !459
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !460
  ret void, !dbg !461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !462 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !468, metadata !DIExpression()), !dbg !469
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !470
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !471
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !473 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !478
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !481 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !484, metadata !DIExpression()), !dbg !485
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !486
  %conv = sext i8 %0 to i32, !dbg !486
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !487
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !489 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !494, metadata !DIExpression()), !dbg !498
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !499
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !500
  store i32 %0, i32* %arrayidx, align 4, !dbg !501
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !502
  store i32 0, i32* %arrayidx1, align 4, !dbg !503
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !504
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !505
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !507 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !512
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !515 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !518, metadata !DIExpression()), !dbg !519
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !520
  %conv = zext i8 %0 to i32, !dbg !520
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !521
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !523 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !527, metadata !DIExpression()), !dbg !528
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !529
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !530
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !532 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !542, metadata !DIExpression()), !dbg !543
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !544
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !545
  %1 = load i32, i32* %intOne, align 4, !dbg !545
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !546
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !547
  %3 = load i32, i32* %intTwo, align 4, !dbg !547
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !548
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !550 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !554, metadata !DIExpression()), !dbg !555
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !556, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata i64* %i, metadata !558, metadata !DIExpression()), !dbg !559
  store i64 0, i64* %i, align 8, !dbg !560
  br label %for.cond, !dbg !562

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !563
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !565
  %cmp = icmp ult i64 %0, %1, !dbg !566
  br i1 %cmp, label %for.body, label %for.end, !dbg !567

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !568
  %3 = load i64, i64* %i, align 8, !dbg !570
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !568
  %4 = load i8, i8* %arrayidx, align 1, !dbg !568
  %conv = zext i8 %4 to i32, !dbg !568
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !571
  br label %for.inc, !dbg !572

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !573
  %inc = add i64 %5, 1, !dbg !573
  store i64 %inc, i64* %i, align 8, !dbg !573
  br label %for.cond, !dbg !574, !llvm.loop !575

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !578
  ret void, !dbg !579
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !580 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !583, metadata !DIExpression()), !dbg !584
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !585, metadata !DIExpression()), !dbg !586
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !587, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !589, metadata !DIExpression()), !dbg !590
  store i64 0, i64* %numWritten, align 8, !dbg !590
  br label %while.cond, !dbg !591

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !592
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !593
  %cmp = icmp ult i64 %0, %1, !dbg !594
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !595

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !596
  %2 = load i16*, i16** %call, align 8, !dbg !596
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !596
  %4 = load i64, i64* %numWritten, align 8, !dbg !596
  %mul = mul i64 2, %4, !dbg !596
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !596
  %5 = load i8, i8* %arrayidx, align 1, !dbg !596
  %conv = sext i8 %5 to i32, !dbg !596
  %idxprom = sext i32 %conv to i64, !dbg !596
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !596
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !596
  %conv2 = zext i16 %6 to i32, !dbg !596
  %and = and i32 %conv2, 4096, !dbg !596
  %tobool = icmp ne i32 %and, 0, !dbg !596
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !597

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !598
  %7 = load i16*, i16** %call3, align 8, !dbg !598
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !598
  %9 = load i64, i64* %numWritten, align 8, !dbg !598
  %mul4 = mul i64 2, %9, !dbg !598
  %add = add i64 %mul4, 1, !dbg !598
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !598
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !598
  %conv6 = sext i8 %10 to i32, !dbg !598
  %idxprom7 = sext i32 %conv6 to i64, !dbg !598
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !598
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !598
  %conv9 = zext i16 %11 to i32, !dbg !598
  %and10 = and i32 %conv9, 4096, !dbg !598
  %tobool11 = icmp ne i32 %and10, 0, !dbg !597
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !599
  br i1 %12, label %while.body, label %while.end, !dbg !591

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !600, metadata !DIExpression()), !dbg !602
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !603
  %14 = load i64, i64* %numWritten, align 8, !dbg !604
  %mul12 = mul i64 2, %14, !dbg !605
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !603
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !606
  %15 = load i32, i32* %byte, align 4, !dbg !607
  %conv15 = trunc i32 %15 to i8, !dbg !608
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !609
  %17 = load i64, i64* %numWritten, align 8, !dbg !610
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !609
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !611
  %18 = load i64, i64* %numWritten, align 8, !dbg !612
  %inc = add i64 %18, 1, !dbg !612
  store i64 %inc, i64* %numWritten, align 8, !dbg !612
  br label %while.cond, !dbg !591, !llvm.loop !613

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !615
  ret i64 %19, !dbg !616
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !617 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !620, metadata !DIExpression()), !dbg !621
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !622, metadata !DIExpression()), !dbg !623
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !624, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !626, metadata !DIExpression()), !dbg !627
  store i64 0, i64* %numWritten, align 8, !dbg !627
  br label %while.cond, !dbg !628

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !629
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !630
  %cmp = icmp ult i64 %0, %1, !dbg !631
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !632

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !633
  %3 = load i64, i64* %numWritten, align 8, !dbg !634
  %mul = mul i64 2, %3, !dbg !635
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !633
  %4 = load i32, i32* %arrayidx, align 4, !dbg !633
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !636
  %tobool = icmp ne i32 %call, 0, !dbg !636
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !637

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !638
  %6 = load i64, i64* %numWritten, align 8, !dbg !639
  %mul1 = mul i64 2, %6, !dbg !640
  %add = add i64 %mul1, 1, !dbg !641
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !638
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !638
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !642
  %tobool4 = icmp ne i32 %call3, 0, !dbg !637
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !643
  br i1 %8, label %while.body, label %while.end, !dbg !628

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !644, metadata !DIExpression()), !dbg !646
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !647
  %10 = load i64, i64* %numWritten, align 8, !dbg !648
  %mul5 = mul i64 2, %10, !dbg !649
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !647
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !650
  %11 = load i32, i32* %byte, align 4, !dbg !651
  %conv = trunc i32 %11 to i8, !dbg !652
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !653
  %13 = load i64, i64* %numWritten, align 8, !dbg !654
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !653
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !655
  %14 = load i64, i64* %numWritten, align 8, !dbg !656
  %inc = add i64 %14, 1, !dbg !656
  store i64 %inc, i64* %numWritten, align 8, !dbg !656
  br label %while.cond, !dbg !628, !llvm.loop !657

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !659
  ret i64 %15, !dbg !660
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !661 {
entry:
  ret i32 1, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !665 {
entry:
  ret i32 0, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !667 {
entry:
  %call = call i32 @rand() #9, !dbg !668
  %rem = srem i32 %call, 2, !dbg !669
  ret i32 %rem, !dbg !670
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !683 {
entry:
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !685 {
entry:
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !687 {
entry:
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !689 {
entry:
  ret void, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !691 {
entry:
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !693 {
entry:
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !695 {
entry:
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !697 {
entry:
  ret void, !dbg !698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !699 {
entry:
  ret void, !dbg !700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !701 {
entry:
  ret void, !dbg !702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !703 {
entry:
  ret void, !dbg !704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !705 {
entry:
  ret void, !dbg !706
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2, !17}
!llvm.ident = !{!57, !57}
!llvm.module.flags = !{!58, !59, !60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 35, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_vprintf_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_172/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 86, type: !7, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 87, type: !7, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 88, type: !7, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !7, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_172/source_code")
!19 = !{!20}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!24 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!36 = !{!6, !7, !37, !38}
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!15, !40, !42, !44, !46, !48, !50, !52}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !17, file: !18, line: 175, type: !7, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !17, file: !18, line: 176, type: !7, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalTrue", scope: !17, file: !18, line: 181, type: !7, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalFalse", scope: !17, file: !18, line: 182, type: !7, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalFive", scope: !17, file: !18, line: 183, type: !7, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "globalArgc", scope: !17, file: !18, line: 214, type: !7, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "globalArgv", scope: !17, file: !18, line: 215, type: !54, isLocal: false, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{!"clang version 12.0.0"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "badVaSink", scope: !3, file: !3, line: 37, type: !62, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !55, null}
!64 = !DILocalVariable(name: "data", arg: 1, scope: !61, file: !3, line: 37, type: !55)
!65 = !DILocation(line: 37, column: 23, scope: !61)
!66 = !DILocation(line: 39, column: 8, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !3, line: 39, column: 8)
!68 = !DILocation(line: 39, column: 8, scope: !61)
!69 = !DILocalVariable(name: "args", scope: !70, file: !3, line: 42, type: !72)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 41, column: 9)
!71 = distinct !DILexicalBlock(scope: !67, file: !3, line: 40, column: 5)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !73, line: 52, baseType: !74)
!73 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !75, line: 32, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 192, elements: !84)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !78, file: !3, line: 42, baseType: !22, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !78, file: !3, line: 42, baseType: !22, size: 32, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !78, file: !3, line: 42, baseType: !6, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !78, file: !3, line: 42, baseType: !6, size: 64, offset: 128)
!84 = !{!85}
!85 = !DISubrange(count: 1)
!86 = !DILocation(line: 42, column: 21, scope: !70)
!87 = !DILocation(line: 43, column: 13, scope: !70)
!88 = !DILocation(line: 45, column: 21, scope: !70)
!89 = !DILocation(line: 45, column: 27, scope: !70)
!90 = !DILocation(line: 45, column: 13, scope: !70)
!91 = !DILocation(line: 46, column: 13, scope: !70)
!92 = !DILocation(line: 48, column: 5, scope: !71)
!93 = !DILocation(line: 49, column: 1, scope: !61)
!94 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_21_bad", scope: !3, file: !3, line: 51, type: !95, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DILocalVariable(name: "data", scope: !94, file: !3, line: 53, type: !55)
!98 = !DILocation(line: 53, column: 12, scope: !94)
!99 = !DILocalVariable(name: "dataBuffer", scope: !94, file: !3, line: 54, type: !100)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 100)
!103 = !DILocation(line: 54, column: 10, scope: !94)
!104 = !DILocation(line: 55, column: 12, scope: !94)
!105 = !DILocation(line: 55, column: 10, scope: !94)
!106 = !DILocalVariable(name: "dataLen", scope: !107, file: !3, line: 58, type: !108)
!107 = distinct !DILexicalBlock(scope: !94, file: !3, line: 56, column: 5)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DILocation(line: 58, column: 16, scope: !107)
!112 = !DILocation(line: 58, column: 33, scope: !107)
!113 = !DILocation(line: 58, column: 26, scope: !107)
!114 = !DILocalVariable(name: "pFile", scope: !107, file: !3, line: 59, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !117, line: 7, baseType: !118)
!117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !119, line: 49, size: 1728, elements: !120)
!119 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !136, !138, !139, !140, !144, !145, !147, !149, !152, !154, !157, !160, !161, !162, !163, !164}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !118, file: !119, line: 51, baseType: !7, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !118, file: !119, line: 54, baseType: !55, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !118, file: !119, line: 55, baseType: !55, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !118, file: !119, line: 56, baseType: !55, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !118, file: !119, line: 57, baseType: !55, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !118, file: !119, line: 58, baseType: !55, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !118, file: !119, line: 59, baseType: !55, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !118, file: !119, line: 60, baseType: !55, size: 64, offset: 448)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !118, file: !119, line: 61, baseType: !55, size: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !118, file: !119, line: 64, baseType: !55, size: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !118, file: !119, line: 65, baseType: !55, size: 64, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !118, file: !119, line: 66, baseType: !55, size: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !118, file: !119, line: 68, baseType: !134, size: 64, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !119, line: 36, flags: DIFlagFwdDecl)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !118, file: !119, line: 70, baseType: !137, size: 64, offset: 832)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !118, file: !119, line: 72, baseType: !7, size: 32, offset: 896)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !118, file: !119, line: 73, baseType: !7, size: 32, offset: 928)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !118, file: !119, line: 74, baseType: !141, size: 64, offset: 960)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !142, line: 152, baseType: !143)
!142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!143 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !118, file: !119, line: 77, baseType: !37, size: 16, offset: 1024)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !118, file: !119, line: 78, baseType: !146, size: 8, offset: 1040)
!146 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !118, file: !119, line: 79, baseType: !148, size: 8, offset: 1048)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 8, elements: !84)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !118, file: !119, line: 81, baseType: !150, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !119, line: 43, baseType: null)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !118, file: !119, line: 89, baseType: !153, size: 64, offset: 1152)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !142, line: 153, baseType: !143)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !118, file: !119, line: 91, baseType: !155, size: 64, offset: 1216)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !119, line: 37, flags: DIFlagFwdDecl)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !118, file: !119, line: 92, baseType: !158, size: 64, offset: 1280)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !119, line: 38, flags: DIFlagFwdDecl)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !118, file: !119, line: 93, baseType: !137, size: 64, offset: 1344)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !118, file: !119, line: 94, baseType: !6, size: 64, offset: 1408)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !118, file: !119, line: 95, baseType: !108, size: 64, offset: 1472)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !118, file: !119, line: 96, baseType: !7, size: 32, offset: 1536)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !118, file: !119, line: 98, baseType: !165, size: 160, offset: 1568)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 160, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 20)
!168 = !DILocation(line: 59, column: 16, scope: !107)
!169 = !DILocation(line: 61, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !107, file: !3, line: 61, column: 13)
!171 = !DILocation(line: 61, column: 16, scope: !170)
!172 = !DILocation(line: 61, column: 25, scope: !170)
!173 = !DILocation(line: 61, column: 13, scope: !107)
!174 = !DILocation(line: 63, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !170, file: !3, line: 62, column: 9)
!176 = !DILocation(line: 63, column: 19, scope: !175)
!177 = !DILocation(line: 64, column: 17, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !3, line: 64, column: 17)
!179 = !DILocation(line: 64, column: 23, scope: !178)
!180 = !DILocation(line: 64, column: 17, scope: !175)
!181 = !DILocation(line: 67, column: 27, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 67, column: 21)
!183 = distinct !DILexicalBlock(scope: !178, file: !3, line: 65, column: 13)
!184 = !DILocation(line: 67, column: 32, scope: !182)
!185 = !DILocation(line: 67, column: 31, scope: !182)
!186 = !DILocation(line: 67, column: 51, scope: !182)
!187 = !DILocation(line: 67, column: 50, scope: !182)
!188 = !DILocation(line: 67, column: 41, scope: !182)
!189 = !DILocation(line: 67, column: 61, scope: !182)
!190 = !DILocation(line: 67, column: 21, scope: !182)
!191 = !DILocation(line: 67, column: 68, scope: !182)
!192 = !DILocation(line: 67, column: 21, scope: !183)
!193 = !DILocation(line: 69, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !182, file: !3, line: 68, column: 17)
!195 = !DILocation(line: 71, column: 21, scope: !194)
!196 = !DILocation(line: 71, column: 26, scope: !194)
!197 = !DILocation(line: 71, column: 35, scope: !194)
!198 = !DILocation(line: 72, column: 17, scope: !194)
!199 = !DILocation(line: 73, column: 24, scope: !183)
!200 = !DILocation(line: 73, column: 17, scope: !183)
!201 = !DILocation(line: 74, column: 13, scope: !183)
!202 = !DILocation(line: 75, column: 9, scope: !175)
!203 = !DILocation(line: 77, column: 15, scope: !94)
!204 = !DILocation(line: 78, column: 15, scope: !94)
!205 = !DILocation(line: 78, column: 21, scope: !94)
!206 = !DILocation(line: 78, column: 5, scope: !94)
!207 = !DILocation(line: 79, column: 1, scope: !94)
!208 = distinct !DISubprogram(name: "goodB2G1_vasink", scope: !3, file: !3, line: 91, type: !62, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!209 = !DILocalVariable(name: "data", arg: 1, scope: !208, file: !3, line: 91, type: !55)
!210 = !DILocation(line: 91, column: 29, scope: !208)
!211 = !DILocation(line: 93, column: 8, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 93, column: 8)
!213 = !DILocation(line: 93, column: 8, scope: !208)
!214 = !DILocation(line: 96, column: 9, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !3, line: 94, column: 5)
!216 = !DILocation(line: 97, column: 5, scope: !215)
!217 = !DILocalVariable(name: "args", scope: !218, file: !3, line: 101, type: !72)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 100, column: 9)
!219 = distinct !DILexicalBlock(scope: !212, file: !3, line: 99, column: 5)
!220 = !DILocation(line: 101, column: 21, scope: !218)
!221 = !DILocation(line: 102, column: 13, scope: !218)
!222 = !DILocation(line: 104, column: 27, scope: !218)
!223 = !DILocation(line: 104, column: 13, scope: !218)
!224 = !DILocation(line: 105, column: 13, scope: !218)
!225 = !DILocation(line: 108, column: 1, scope: !208)
!226 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 110, type: !95, scopeLine: 111, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!227 = !DILocalVariable(name: "data", scope: !226, file: !3, line: 112, type: !55)
!228 = !DILocation(line: 112, column: 12, scope: !226)
!229 = !DILocalVariable(name: "dataBuffer", scope: !226, file: !3, line: 113, type: !100)
!230 = !DILocation(line: 113, column: 10, scope: !226)
!231 = !DILocation(line: 114, column: 12, scope: !226)
!232 = !DILocation(line: 114, column: 10, scope: !226)
!233 = !DILocalVariable(name: "dataLen", scope: !234, file: !3, line: 117, type: !108)
!234 = distinct !DILexicalBlock(scope: !226, file: !3, line: 115, column: 5)
!235 = !DILocation(line: 117, column: 16, scope: !234)
!236 = !DILocation(line: 117, column: 33, scope: !234)
!237 = !DILocation(line: 117, column: 26, scope: !234)
!238 = !DILocalVariable(name: "pFile", scope: !234, file: !3, line: 118, type: !115)
!239 = !DILocation(line: 118, column: 16, scope: !234)
!240 = !DILocation(line: 120, column: 17, scope: !241)
!241 = distinct !DILexicalBlock(scope: !234, file: !3, line: 120, column: 13)
!242 = !DILocation(line: 120, column: 16, scope: !241)
!243 = !DILocation(line: 120, column: 25, scope: !241)
!244 = !DILocation(line: 120, column: 13, scope: !234)
!245 = !DILocation(line: 122, column: 21, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !3, line: 121, column: 9)
!247 = !DILocation(line: 122, column: 19, scope: !246)
!248 = !DILocation(line: 123, column: 17, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !3, line: 123, column: 17)
!250 = !DILocation(line: 123, column: 23, scope: !249)
!251 = !DILocation(line: 123, column: 17, scope: !246)
!252 = !DILocation(line: 126, column: 27, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !3, line: 126, column: 21)
!254 = distinct !DILexicalBlock(scope: !249, file: !3, line: 124, column: 13)
!255 = !DILocation(line: 126, column: 32, scope: !253)
!256 = !DILocation(line: 126, column: 31, scope: !253)
!257 = !DILocation(line: 126, column: 51, scope: !253)
!258 = !DILocation(line: 126, column: 50, scope: !253)
!259 = !DILocation(line: 126, column: 41, scope: !253)
!260 = !DILocation(line: 126, column: 61, scope: !253)
!261 = !DILocation(line: 126, column: 21, scope: !253)
!262 = !DILocation(line: 126, column: 68, scope: !253)
!263 = !DILocation(line: 126, column: 21, scope: !254)
!264 = !DILocation(line: 128, column: 21, scope: !265)
!265 = distinct !DILexicalBlock(scope: !253, file: !3, line: 127, column: 17)
!266 = !DILocation(line: 130, column: 21, scope: !265)
!267 = !DILocation(line: 130, column: 26, scope: !265)
!268 = !DILocation(line: 130, column: 35, scope: !265)
!269 = !DILocation(line: 131, column: 17, scope: !265)
!270 = !DILocation(line: 132, column: 24, scope: !254)
!271 = !DILocation(line: 132, column: 17, scope: !254)
!272 = !DILocation(line: 133, column: 13, scope: !254)
!273 = !DILocation(line: 134, column: 9, scope: !246)
!274 = !DILocation(line: 136, column: 20, scope: !226)
!275 = !DILocation(line: 137, column: 21, scope: !226)
!276 = !DILocation(line: 137, column: 27, scope: !226)
!277 = !DILocation(line: 137, column: 5, scope: !226)
!278 = !DILocation(line: 138, column: 1, scope: !226)
!279 = distinct !DISubprogram(name: "goodB2G2_vasink", scope: !3, file: !3, line: 141, type: !62, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!280 = !DILocalVariable(name: "data", arg: 1, scope: !279, file: !3, line: 141, type: !55)
!281 = !DILocation(line: 141, column: 29, scope: !279)
!282 = !DILocation(line: 143, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !3, line: 143, column: 8)
!284 = !DILocation(line: 143, column: 8, scope: !279)
!285 = !DILocalVariable(name: "args", scope: !286, file: !3, line: 146, type: !72)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 145, column: 9)
!287 = distinct !DILexicalBlock(scope: !283, file: !3, line: 144, column: 5)
!288 = !DILocation(line: 146, column: 21, scope: !286)
!289 = !DILocation(line: 147, column: 13, scope: !286)
!290 = !DILocation(line: 149, column: 27, scope: !286)
!291 = !DILocation(line: 149, column: 13, scope: !286)
!292 = !DILocation(line: 150, column: 13, scope: !286)
!293 = !DILocation(line: 152, column: 5, scope: !287)
!294 = !DILocation(line: 153, column: 1, scope: !279)
!295 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 155, type: !95, scopeLine: 156, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!296 = !DILocalVariable(name: "data", scope: !295, file: !3, line: 157, type: !55)
!297 = !DILocation(line: 157, column: 12, scope: !295)
!298 = !DILocalVariable(name: "dataBuffer", scope: !295, file: !3, line: 158, type: !100)
!299 = !DILocation(line: 158, column: 10, scope: !295)
!300 = !DILocation(line: 159, column: 12, scope: !295)
!301 = !DILocation(line: 159, column: 10, scope: !295)
!302 = !DILocalVariable(name: "dataLen", scope: !303, file: !3, line: 162, type: !108)
!303 = distinct !DILexicalBlock(scope: !295, file: !3, line: 160, column: 5)
!304 = !DILocation(line: 162, column: 16, scope: !303)
!305 = !DILocation(line: 162, column: 33, scope: !303)
!306 = !DILocation(line: 162, column: 26, scope: !303)
!307 = !DILocalVariable(name: "pFile", scope: !303, file: !3, line: 163, type: !115)
!308 = !DILocation(line: 163, column: 16, scope: !303)
!309 = !DILocation(line: 165, column: 17, scope: !310)
!310 = distinct !DILexicalBlock(scope: !303, file: !3, line: 165, column: 13)
!311 = !DILocation(line: 165, column: 16, scope: !310)
!312 = !DILocation(line: 165, column: 25, scope: !310)
!313 = !DILocation(line: 165, column: 13, scope: !303)
!314 = !DILocation(line: 167, column: 21, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !3, line: 166, column: 9)
!316 = !DILocation(line: 167, column: 19, scope: !315)
!317 = !DILocation(line: 168, column: 17, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !3, line: 168, column: 17)
!319 = !DILocation(line: 168, column: 23, scope: !318)
!320 = !DILocation(line: 168, column: 17, scope: !315)
!321 = !DILocation(line: 171, column: 27, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !3, line: 171, column: 21)
!323 = distinct !DILexicalBlock(scope: !318, file: !3, line: 169, column: 13)
!324 = !DILocation(line: 171, column: 32, scope: !322)
!325 = !DILocation(line: 171, column: 31, scope: !322)
!326 = !DILocation(line: 171, column: 51, scope: !322)
!327 = !DILocation(line: 171, column: 50, scope: !322)
!328 = !DILocation(line: 171, column: 41, scope: !322)
!329 = !DILocation(line: 171, column: 61, scope: !322)
!330 = !DILocation(line: 171, column: 21, scope: !322)
!331 = !DILocation(line: 171, column: 68, scope: !322)
!332 = !DILocation(line: 171, column: 21, scope: !323)
!333 = !DILocation(line: 173, column: 21, scope: !334)
!334 = distinct !DILexicalBlock(scope: !322, file: !3, line: 172, column: 17)
!335 = !DILocation(line: 175, column: 21, scope: !334)
!336 = !DILocation(line: 175, column: 26, scope: !334)
!337 = !DILocation(line: 175, column: 35, scope: !334)
!338 = !DILocation(line: 176, column: 17, scope: !334)
!339 = !DILocation(line: 177, column: 24, scope: !323)
!340 = !DILocation(line: 177, column: 17, scope: !323)
!341 = !DILocation(line: 178, column: 13, scope: !323)
!342 = !DILocation(line: 179, column: 9, scope: !315)
!343 = !DILocation(line: 181, column: 20, scope: !295)
!344 = !DILocation(line: 182, column: 21, scope: !295)
!345 = !DILocation(line: 182, column: 27, scope: !295)
!346 = !DILocation(line: 182, column: 5, scope: !295)
!347 = !DILocation(line: 183, column: 1, scope: !295)
!348 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !3, file: !3, line: 186, type: !62, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!349 = !DILocalVariable(name: "data", arg: 1, scope: !348, file: !3, line: 186, type: !55)
!350 = !DILocation(line: 186, column: 27, scope: !348)
!351 = !DILocation(line: 188, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !3, line: 188, column: 8)
!353 = !DILocation(line: 188, column: 8, scope: !348)
!354 = !DILocalVariable(name: "args", scope: !355, file: !3, line: 191, type: !72)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 190, column: 9)
!356 = distinct !DILexicalBlock(scope: !352, file: !3, line: 189, column: 5)
!357 = !DILocation(line: 191, column: 21, scope: !355)
!358 = !DILocation(line: 192, column: 13, scope: !355)
!359 = !DILocation(line: 194, column: 21, scope: !355)
!360 = !DILocation(line: 194, column: 27, scope: !355)
!361 = !DILocation(line: 194, column: 13, scope: !355)
!362 = !DILocation(line: 195, column: 13, scope: !355)
!363 = !DILocation(line: 197, column: 5, scope: !356)
!364 = !DILocation(line: 198, column: 1, scope: !348)
!365 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 200, type: !95, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!366 = !DILocalVariable(name: "data", scope: !365, file: !3, line: 202, type: !55)
!367 = !DILocation(line: 202, column: 12, scope: !365)
!368 = !DILocalVariable(name: "dataBuffer", scope: !365, file: !3, line: 203, type: !100)
!369 = !DILocation(line: 203, column: 10, scope: !365)
!370 = !DILocation(line: 204, column: 12, scope: !365)
!371 = !DILocation(line: 204, column: 10, scope: !365)
!372 = !DILocation(line: 206, column: 12, scope: !365)
!373 = !DILocation(line: 206, column: 5, scope: !365)
!374 = !DILocation(line: 207, column: 19, scope: !365)
!375 = !DILocation(line: 208, column: 19, scope: !365)
!376 = !DILocation(line: 208, column: 25, scope: !365)
!377 = !DILocation(line: 208, column: 5, scope: !365)
!378 = !DILocation(line: 209, column: 1, scope: !365)
!379 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_21_good", scope: !3, file: !3, line: 211, type: !95, scopeLine: 212, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!380 = !DILocation(line: 213, column: 5, scope: !379)
!381 = !DILocation(line: 214, column: 5, scope: !379)
!382 = !DILocation(line: 215, column: 5, scope: !379)
!383 = !DILocation(line: 216, column: 1, scope: !379)
!384 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !385, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !55}
!387 = !DILocalVariable(name: "line", arg: 1, scope: !384, file: !18, line: 11, type: !55)
!388 = !DILocation(line: 11, column: 25, scope: !384)
!389 = !DILocation(line: 13, column: 1, scope: !384)
!390 = !DILocation(line: 14, column: 8, scope: !391)
!391 = distinct !DILexicalBlock(scope: !384, file: !18, line: 14, column: 8)
!392 = !DILocation(line: 14, column: 13, scope: !391)
!393 = !DILocation(line: 14, column: 8, scope: !384)
!394 = !DILocation(line: 16, column: 24, scope: !395)
!395 = distinct !DILexicalBlock(scope: !391, file: !18, line: 15, column: 5)
!396 = !DILocation(line: 16, column: 9, scope: !395)
!397 = !DILocation(line: 17, column: 5, scope: !395)
!398 = !DILocation(line: 18, column: 5, scope: !384)
!399 = !DILocation(line: 19, column: 1, scope: !384)
!400 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !385, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!401 = !DILocalVariable(name: "line", arg: 1, scope: !400, file: !18, line: 20, type: !55)
!402 = !DILocation(line: 20, column: 29, scope: !400)
!403 = !DILocation(line: 22, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !18, line: 22, column: 8)
!405 = !DILocation(line: 22, column: 13, scope: !404)
!406 = !DILocation(line: 22, column: 8, scope: !400)
!407 = !DILocation(line: 24, column: 24, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !18, line: 23, column: 5)
!409 = !DILocation(line: 24, column: 9, scope: !408)
!410 = !DILocation(line: 25, column: 5, scope: !408)
!411 = !DILocation(line: 26, column: 1, scope: !400)
!412 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !413, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !109, line: 74, baseType: !7)
!417 = !DILocalVariable(name: "line", arg: 1, scope: !412, file: !18, line: 27, type: !415)
!418 = !DILocation(line: 27, column: 29, scope: !412)
!419 = !DILocation(line: 29, column: 8, scope: !420)
!420 = distinct !DILexicalBlock(scope: !412, file: !18, line: 29, column: 8)
!421 = !DILocation(line: 29, column: 13, scope: !420)
!422 = !DILocation(line: 29, column: 8, scope: !412)
!423 = !DILocation(line: 31, column: 27, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !18, line: 30, column: 5)
!425 = !DILocation(line: 31, column: 9, scope: !424)
!426 = !DILocation(line: 32, column: 5, scope: !424)
!427 = !DILocation(line: 33, column: 1, scope: !412)
!428 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !429, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !7}
!431 = !DILocalVariable(name: "intNumber", arg: 1, scope: !428, file: !18, line: 35, type: !7)
!432 = !DILocation(line: 35, column: 24, scope: !428)
!433 = !DILocation(line: 37, column: 20, scope: !428)
!434 = !DILocation(line: 37, column: 5, scope: !428)
!435 = !DILocation(line: 38, column: 1, scope: !428)
!436 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !437, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439}
!439 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!440 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !436, file: !18, line: 40, type: !439)
!441 = !DILocation(line: 40, column: 28, scope: !436)
!442 = !DILocation(line: 42, column: 21, scope: !436)
!443 = !DILocation(line: 42, column: 5, scope: !436)
!444 = !DILocation(line: 43, column: 1, scope: !436)
!445 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !446, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !448}
!448 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!449 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !445, file: !18, line: 45, type: !448)
!450 = !DILocation(line: 45, column: 28, scope: !445)
!451 = !DILocation(line: 47, column: 20, scope: !445)
!452 = !DILocation(line: 47, column: 5, scope: !445)
!453 = !DILocation(line: 48, column: 1, scope: !445)
!454 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !455, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !143}
!457 = !DILocalVariable(name: "longNumber", arg: 1, scope: !454, file: !18, line: 50, type: !143)
!458 = !DILocation(line: 50, column: 26, scope: !454)
!459 = !DILocation(line: 52, column: 21, scope: !454)
!460 = !DILocation(line: 52, column: 5, scope: !454)
!461 = !DILocation(line: 53, column: 1, scope: !454)
!462 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !463, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !465}
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !466, line: 27, baseType: !467)
!466 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !142, line: 44, baseType: !143)
!468 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !462, file: !18, line: 55, type: !465)
!469 = !DILocation(line: 55, column: 33, scope: !462)
!470 = !DILocation(line: 57, column: 29, scope: !462)
!471 = !DILocation(line: 57, column: 5, scope: !462)
!472 = !DILocation(line: 58, column: 1, scope: !462)
!473 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !474, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !108}
!476 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !473, file: !18, line: 60, type: !108)
!477 = !DILocation(line: 60, column: 29, scope: !473)
!478 = !DILocation(line: 62, column: 21, scope: !473)
!479 = !DILocation(line: 62, column: 5, scope: !473)
!480 = !DILocation(line: 63, column: 1, scope: !473)
!481 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !482, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !56}
!484 = !DILocalVariable(name: "charHex", arg: 1, scope: !481, file: !18, line: 65, type: !56)
!485 = !DILocation(line: 65, column: 29, scope: !481)
!486 = !DILocation(line: 67, column: 22, scope: !481)
!487 = !DILocation(line: 67, column: 5, scope: !481)
!488 = !DILocation(line: 68, column: 1, scope: !481)
!489 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !490, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !416}
!492 = !DILocalVariable(name: "wideChar", arg: 1, scope: !489, file: !18, line: 70, type: !416)
!493 = !DILocation(line: 70, column: 29, scope: !489)
!494 = !DILocalVariable(name: "s", scope: !489, file: !18, line: 74, type: !495)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 64, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 2)
!498 = !DILocation(line: 74, column: 13, scope: !489)
!499 = !DILocation(line: 75, column: 16, scope: !489)
!500 = !DILocation(line: 75, column: 9, scope: !489)
!501 = !DILocation(line: 75, column: 14, scope: !489)
!502 = !DILocation(line: 76, column: 9, scope: !489)
!503 = !DILocation(line: 76, column: 14, scope: !489)
!504 = !DILocation(line: 77, column: 21, scope: !489)
!505 = !DILocation(line: 77, column: 5, scope: !489)
!506 = !DILocation(line: 78, column: 1, scope: !489)
!507 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !508, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !22}
!510 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !507, file: !18, line: 80, type: !22)
!511 = !DILocation(line: 80, column: 33, scope: !507)
!512 = !DILocation(line: 82, column: 20, scope: !507)
!513 = !DILocation(line: 82, column: 5, scope: !507)
!514 = !DILocation(line: 83, column: 1, scope: !507)
!515 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !516, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !38}
!518 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !515, file: !18, line: 85, type: !38)
!519 = !DILocation(line: 85, column: 45, scope: !515)
!520 = !DILocation(line: 87, column: 22, scope: !515)
!521 = !DILocation(line: 87, column: 5, scope: !515)
!522 = !DILocation(line: 88, column: 1, scope: !515)
!523 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !524, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !526}
!526 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!527 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !523, file: !18, line: 90, type: !526)
!528 = !DILocation(line: 90, column: 29, scope: !523)
!529 = !DILocation(line: 92, column: 20, scope: !523)
!530 = !DILocation(line: 92, column: 5, scope: !523)
!531 = !DILocation(line: 93, column: 1, scope: !523)
!532 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !533, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !537, line: 100, baseType: !538)
!537 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_172/source_code")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !537, line: 96, size: 64, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !538, file: !537, line: 98, baseType: !7, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !538, file: !537, line: 99, baseType: !7, size: 32, offset: 32)
!542 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !532, file: !18, line: 95, type: !535)
!543 = !DILocation(line: 95, column: 40, scope: !532)
!544 = !DILocation(line: 97, column: 26, scope: !532)
!545 = !DILocation(line: 97, column: 47, scope: !532)
!546 = !DILocation(line: 97, column: 55, scope: !532)
!547 = !DILocation(line: 97, column: 76, scope: !532)
!548 = !DILocation(line: 97, column: 5, scope: !532)
!549 = !DILocation(line: 98, column: 1, scope: !532)
!550 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !551, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !553, !108}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!554 = !DILocalVariable(name: "bytes", arg: 1, scope: !550, file: !18, line: 100, type: !553)
!555 = !DILocation(line: 100, column: 38, scope: !550)
!556 = !DILocalVariable(name: "numBytes", arg: 2, scope: !550, file: !18, line: 100, type: !108)
!557 = !DILocation(line: 100, column: 52, scope: !550)
!558 = !DILocalVariable(name: "i", scope: !550, file: !18, line: 102, type: !108)
!559 = !DILocation(line: 102, column: 12, scope: !550)
!560 = !DILocation(line: 103, column: 12, scope: !561)
!561 = distinct !DILexicalBlock(scope: !550, file: !18, line: 103, column: 5)
!562 = !DILocation(line: 103, column: 10, scope: !561)
!563 = !DILocation(line: 103, column: 17, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !18, line: 103, column: 5)
!565 = !DILocation(line: 103, column: 21, scope: !564)
!566 = !DILocation(line: 103, column: 19, scope: !564)
!567 = !DILocation(line: 103, column: 5, scope: !561)
!568 = !DILocation(line: 105, column: 24, scope: !569)
!569 = distinct !DILexicalBlock(scope: !564, file: !18, line: 104, column: 5)
!570 = !DILocation(line: 105, column: 30, scope: !569)
!571 = !DILocation(line: 105, column: 9, scope: !569)
!572 = !DILocation(line: 106, column: 5, scope: !569)
!573 = !DILocation(line: 103, column: 31, scope: !564)
!574 = !DILocation(line: 103, column: 5, scope: !564)
!575 = distinct !{!575, !567, !576, !577}
!576 = !DILocation(line: 106, column: 5, scope: !561)
!577 = !{!"llvm.loop.mustprogress"}
!578 = !DILocation(line: 107, column: 5, scope: !550)
!579 = !DILocation(line: 108, column: 1, scope: !550)
!580 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !581, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!581 = !DISubroutineType(types: !582)
!582 = !{!108, !553, !108, !55}
!583 = !DILocalVariable(name: "bytes", arg: 1, scope: !580, file: !18, line: 113, type: !553)
!584 = !DILocation(line: 113, column: 39, scope: !580)
!585 = !DILocalVariable(name: "numBytes", arg: 2, scope: !580, file: !18, line: 113, type: !108)
!586 = !DILocation(line: 113, column: 53, scope: !580)
!587 = !DILocalVariable(name: "hex", arg: 3, scope: !580, file: !18, line: 113, type: !55)
!588 = !DILocation(line: 113, column: 71, scope: !580)
!589 = !DILocalVariable(name: "numWritten", scope: !580, file: !18, line: 115, type: !108)
!590 = !DILocation(line: 115, column: 12, scope: !580)
!591 = !DILocation(line: 121, column: 5, scope: !580)
!592 = !DILocation(line: 121, column: 12, scope: !580)
!593 = !DILocation(line: 121, column: 25, scope: !580)
!594 = !DILocation(line: 121, column: 23, scope: !580)
!595 = !DILocation(line: 121, column: 34, scope: !580)
!596 = !DILocation(line: 121, column: 37, scope: !580)
!597 = !DILocation(line: 121, column: 67, scope: !580)
!598 = !DILocation(line: 121, column: 70, scope: !580)
!599 = !DILocation(line: 0, scope: !580)
!600 = !DILocalVariable(name: "byte", scope: !601, file: !18, line: 123, type: !7)
!601 = distinct !DILexicalBlock(scope: !580, file: !18, line: 122, column: 5)
!602 = !DILocation(line: 123, column: 13, scope: !601)
!603 = !DILocation(line: 124, column: 17, scope: !601)
!604 = !DILocation(line: 124, column: 25, scope: !601)
!605 = !DILocation(line: 124, column: 23, scope: !601)
!606 = !DILocation(line: 124, column: 9, scope: !601)
!607 = !DILocation(line: 125, column: 45, scope: !601)
!608 = !DILocation(line: 125, column: 29, scope: !601)
!609 = !DILocation(line: 125, column: 9, scope: !601)
!610 = !DILocation(line: 125, column: 15, scope: !601)
!611 = !DILocation(line: 125, column: 27, scope: !601)
!612 = !DILocation(line: 126, column: 9, scope: !601)
!613 = distinct !{!613, !591, !614, !577}
!614 = !DILocation(line: 127, column: 5, scope: !580)
!615 = !DILocation(line: 129, column: 12, scope: !580)
!616 = !DILocation(line: 129, column: 5, scope: !580)
!617 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !618, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!618 = !DISubroutineType(types: !619)
!619 = !{!108, !553, !108, !415}
!620 = !DILocalVariable(name: "bytes", arg: 1, scope: !617, file: !18, line: 135, type: !553)
!621 = !DILocation(line: 135, column: 41, scope: !617)
!622 = !DILocalVariable(name: "numBytes", arg: 2, scope: !617, file: !18, line: 135, type: !108)
!623 = !DILocation(line: 135, column: 55, scope: !617)
!624 = !DILocalVariable(name: "hex", arg: 3, scope: !617, file: !18, line: 135, type: !415)
!625 = !DILocation(line: 135, column: 76, scope: !617)
!626 = !DILocalVariable(name: "numWritten", scope: !617, file: !18, line: 137, type: !108)
!627 = !DILocation(line: 137, column: 12, scope: !617)
!628 = !DILocation(line: 143, column: 5, scope: !617)
!629 = !DILocation(line: 143, column: 12, scope: !617)
!630 = !DILocation(line: 143, column: 25, scope: !617)
!631 = !DILocation(line: 143, column: 23, scope: !617)
!632 = !DILocation(line: 143, column: 34, scope: !617)
!633 = !DILocation(line: 143, column: 47, scope: !617)
!634 = !DILocation(line: 143, column: 55, scope: !617)
!635 = !DILocation(line: 143, column: 53, scope: !617)
!636 = !DILocation(line: 143, column: 37, scope: !617)
!637 = !DILocation(line: 143, column: 68, scope: !617)
!638 = !DILocation(line: 143, column: 81, scope: !617)
!639 = !DILocation(line: 143, column: 89, scope: !617)
!640 = !DILocation(line: 143, column: 87, scope: !617)
!641 = !DILocation(line: 143, column: 100, scope: !617)
!642 = !DILocation(line: 143, column: 71, scope: !617)
!643 = !DILocation(line: 0, scope: !617)
!644 = !DILocalVariable(name: "byte", scope: !645, file: !18, line: 145, type: !7)
!645 = distinct !DILexicalBlock(scope: !617, file: !18, line: 144, column: 5)
!646 = !DILocation(line: 145, column: 13, scope: !645)
!647 = !DILocation(line: 146, column: 18, scope: !645)
!648 = !DILocation(line: 146, column: 26, scope: !645)
!649 = !DILocation(line: 146, column: 24, scope: !645)
!650 = !DILocation(line: 146, column: 9, scope: !645)
!651 = !DILocation(line: 147, column: 45, scope: !645)
!652 = !DILocation(line: 147, column: 29, scope: !645)
!653 = !DILocation(line: 147, column: 9, scope: !645)
!654 = !DILocation(line: 147, column: 15, scope: !645)
!655 = !DILocation(line: 147, column: 27, scope: !645)
!656 = !DILocation(line: 148, column: 9, scope: !645)
!657 = distinct !{!657, !628, !658, !577}
!658 = !DILocation(line: 149, column: 5, scope: !617)
!659 = !DILocation(line: 151, column: 12, scope: !617)
!660 = !DILocation(line: 151, column: 5, scope: !617)
!661 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !662, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!662 = !DISubroutineType(types: !663)
!663 = !{!7}
!664 = !DILocation(line: 158, column: 5, scope: !661)
!665 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !662, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!666 = !DILocation(line: 163, column: 5, scope: !665)
!667 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !662, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!668 = !DILocation(line: 168, column: 13, scope: !667)
!669 = !DILocation(line: 168, column: 20, scope: !667)
!670 = !DILocation(line: 168, column: 5, scope: !667)
!671 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !95, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!672 = !DILocation(line: 187, column: 16, scope: !671)
!673 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !95, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!674 = !DILocation(line: 188, column: 16, scope: !673)
!675 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !95, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!676 = !DILocation(line: 189, column: 16, scope: !675)
!677 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !95, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!678 = !DILocation(line: 190, column: 16, scope: !677)
!679 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !95, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!680 = !DILocation(line: 191, column: 16, scope: !679)
!681 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !95, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!682 = !DILocation(line: 192, column: 16, scope: !681)
!683 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !95, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!684 = !DILocation(line: 193, column: 16, scope: !683)
!685 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !95, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!686 = !DILocation(line: 194, column: 16, scope: !685)
!687 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !95, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!688 = !DILocation(line: 195, column: 16, scope: !687)
!689 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !95, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!690 = !DILocation(line: 198, column: 15, scope: !689)
!691 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !95, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!692 = !DILocation(line: 199, column: 15, scope: !691)
!693 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !95, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!694 = !DILocation(line: 200, column: 15, scope: !693)
!695 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !95, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!696 = !DILocation(line: 201, column: 15, scope: !695)
!697 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !95, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!698 = !DILocation(line: 202, column: 15, scope: !697)
!699 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !95, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!700 = !DILocation(line: 203, column: 15, scope: !699)
!701 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !95, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!702 = !DILocation(line: 204, column: 15, scope: !701)
!703 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !95, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!704 = !DILocation(line: 205, column: 15, scope: !703)
!705 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !95, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!706 = !DILocation(line: 206, column: 15, scope: !705)
