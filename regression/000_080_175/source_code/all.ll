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

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.5 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.8 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
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
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !57, metadata !DIExpression()), !dbg !73
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !74
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !74
  call void @llvm.va_start(i8* %arraydecay1), !dbg !74
  %0 = load i8*, i8** %data.addr, align 8, !dbg !75
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !76
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !77
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !78
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !78
  call void @llvm.va_end(i8* %arraydecay34), !dbg !78
  ret void, !dbg !79
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad() #0 !dbg !80 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %data13 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !85, metadata !DIExpression()), !dbg !86
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !87, metadata !DIExpression()), !dbg !88
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !88
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !89, metadata !DIExpression()), !dbg !93
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !93
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !93
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !94
  store i8* %arraydecay, i8** %data, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !96, metadata !DIExpression()), !dbg !98
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !99
  %2 = load i8*, i8** %1, align 8, !dbg !100
  store i8* %2, i8** %data1, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !101, metadata !DIExpression()), !dbg !106
  %3 = load i8*, i8** %data1, align 8, !dbg !107
  %call = call i64 @strlen(i8* %3) #8, !dbg !108
  store i64 %call, i64* %dataLen, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !109, metadata !DIExpression()), !dbg !163
  %4 = load i64, i64* %dataLen, align 8, !dbg !164
  %sub = sub i64 100, %4, !dbg !166
  %cmp = icmp ugt i64 %sub, 1, !dbg !167
  br i1 %cmp, label %if.then, label %if.end12, !dbg !168

if.then:                                          ; preds = %entry
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !169
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !171
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !172
  %cmp3 = icmp ne %struct._IO_FILE* %5, null, !dbg !174
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !175

if.then4:                                         ; preds = %if.then
  %6 = load i8*, i8** %data1, align 8, !dbg !176
  %7 = load i64, i64* %dataLen, align 8, !dbg !179
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !180
  %8 = load i64, i64* %dataLen, align 8, !dbg !181
  %sub5 = sub i64 100, %8, !dbg !182
  %conv = trunc i64 %sub5 to i32, !dbg !183
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !184
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %9), !dbg !185
  %cmp7 = icmp eq i8* %call6, null, !dbg !186
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !187

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !188
  %10 = load i8*, i8** %data1, align 8, !dbg !190
  %11 = load i64, i64* %dataLen, align 8, !dbg !191
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !190
  store i8 0, i8* %arrayidx, align 1, !dbg !192
  br label %if.end, !dbg !193

if.end:                                           ; preds = %if.then9, %if.then4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !194
  %call10 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !195
  br label %if.end11, !dbg !196

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !197

if.end12:                                         ; preds = %if.end11, %entry
  %13 = load i8*, i8** %data1, align 8, !dbg !198
  %14 = load i8**, i8*** %dataPtr1, align 8, !dbg !199
  store i8* %13, i8** %14, align 8, !dbg !200
  call void @llvm.dbg.declare(metadata i8** %data13, metadata !201, metadata !DIExpression()), !dbg !203
  %15 = load i8**, i8*** %dataPtr2, align 8, !dbg !204
  %16 = load i8*, i8** %15, align 8, !dbg !205
  store i8* %16, i8** %data13, align 8, !dbg !203
  %17 = load i8*, i8** %data13, align 8, !dbg !206
  %18 = load i8*, i8** %data13, align 8, !dbg !207
  call void (i8*, ...) @badVaSink(i8* %17, i8* %18), !dbg !208
  ret void, !dbg !209
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !210 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !213, metadata !DIExpression()), !dbg !215
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !216
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !216
  call void @llvm.va_start(i8* %arraydecay1), !dbg !216
  %0 = load i8*, i8** %data.addr, align 8, !dbg !217
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !218
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !219
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !220
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !220
  call void @llvm.va_end(i8* %arraydecay34), !dbg !220
  ret void, !dbg !221
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !222 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !225, metadata !DIExpression()), !dbg !226
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !226
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !227, metadata !DIExpression()), !dbg !228
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !228
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !229, metadata !DIExpression()), !dbg !230
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !230
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !230
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !231
  store i8* %arraydecay, i8** %data, align 8, !dbg !232
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !233, metadata !DIExpression()), !dbg !235
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !236
  %2 = load i8*, i8** %1, align 8, !dbg !237
  store i8* %2, i8** %data1, align 8, !dbg !235
  %3 = load i8*, i8** %data1, align 8, !dbg !238
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !239
  %4 = load i8*, i8** %data1, align 8, !dbg !240
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !241
  store i8* %4, i8** %5, align 8, !dbg !242
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !243, metadata !DIExpression()), !dbg !245
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !246
  %7 = load i8*, i8** %6, align 8, !dbg !247
  store i8* %7, i8** %data2, align 8, !dbg !245
  %8 = load i8*, i8** %data2, align 8, !dbg !248
  %9 = load i8*, i8** %data2, align 8, !dbg !249
  call void (i8*, ...) @goodG2BVaSink(i8* %8, i8* %9), !dbg !250
  ret void, !dbg !251
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !252 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !255, metadata !DIExpression()), !dbg !257
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !258
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !258
  call void @llvm.va_start(i8* %arraydecay1), !dbg !258
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !259
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !260
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !261
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !261
  call void @llvm.va_end(i8* %arraydecay34), !dbg !261
  ret void, !dbg !262
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !263 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %data13 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !266, metadata !DIExpression()), !dbg !267
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !267
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !268, metadata !DIExpression()), !dbg !269
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !269
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !271
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !271
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !272
  store i8* %arraydecay, i8** %data, align 8, !dbg !273
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !274, metadata !DIExpression()), !dbg !276
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !277
  %2 = load i8*, i8** %1, align 8, !dbg !278
  store i8* %2, i8** %data1, align 8, !dbg !276
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !279, metadata !DIExpression()), !dbg !281
  %3 = load i8*, i8** %data1, align 8, !dbg !282
  %call = call i64 @strlen(i8* %3) #8, !dbg !283
  store i64 %call, i64* %dataLen, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !284, metadata !DIExpression()), !dbg !285
  %4 = load i64, i64* %dataLen, align 8, !dbg !286
  %sub = sub i64 100, %4, !dbg !288
  %cmp = icmp ugt i64 %sub, 1, !dbg !289
  br i1 %cmp, label %if.then, label %if.end12, !dbg !290

if.then:                                          ; preds = %entry
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !291
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !293
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !294
  %cmp3 = icmp ne %struct._IO_FILE* %5, null, !dbg !296
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !297

if.then4:                                         ; preds = %if.then
  %6 = load i8*, i8** %data1, align 8, !dbg !298
  %7 = load i64, i64* %dataLen, align 8, !dbg !301
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !302
  %8 = load i64, i64* %dataLen, align 8, !dbg !303
  %sub5 = sub i64 100, %8, !dbg !304
  %conv = trunc i64 %sub5 to i32, !dbg !305
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !306
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %9), !dbg !307
  %cmp7 = icmp eq i8* %call6, null, !dbg !308
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !309

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !310
  %10 = load i8*, i8** %data1, align 8, !dbg !312
  %11 = load i64, i64* %dataLen, align 8, !dbg !313
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !312
  store i8 0, i8* %arrayidx, align 1, !dbg !314
  br label %if.end, !dbg !315

if.end:                                           ; preds = %if.then9, %if.then4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !316
  %call10 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !317
  br label %if.end11, !dbg !318

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !319

if.end12:                                         ; preds = %if.end11, %entry
  %13 = load i8*, i8** %data1, align 8, !dbg !320
  %14 = load i8**, i8*** %dataPtr1, align 8, !dbg !321
  store i8* %13, i8** %14, align 8, !dbg !322
  call void @llvm.dbg.declare(metadata i8** %data13, metadata !323, metadata !DIExpression()), !dbg !325
  %15 = load i8**, i8*** %dataPtr2, align 8, !dbg !326
  %16 = load i8*, i8** %15, align 8, !dbg !327
  store i8* %16, i8** %data13, align 8, !dbg !325
  %17 = load i8*, i8** %data13, align 8, !dbg !328
  %18 = load i8*, i8** %data13, align 8, !dbg !329
  call void (i8*, ...) @goodB2GVaSink(i8* %17, i8* %18), !dbg !330
  ret void, !dbg !331
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_32_good() #0 !dbg !332 {
entry:
  call void @goodG2B(), !dbg !333
  call void @goodB2G(), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !336 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !341
  %0 = load i8*, i8** %line.addr, align 8, !dbg !342
  %cmp = icmp ne i8* %0, null, !dbg !344
  br i1 %cmp, label %if.then, label %if.end, !dbg !345

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !346
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !348
  br label %if.end, !dbg !349

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !350
  ret void, !dbg !351
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !352 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load i8*, i8** %line.addr, align 8, !dbg !355
  %cmp = icmp ne i8* %0, null, !dbg !357
  br i1 %cmp, label %if.then, label %if.end, !dbg !358

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !359
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !361
  br label %if.end, !dbg !362

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !364 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i32*, i32** %line.addr, align 8, !dbg !371
  %cmp = icmp ne i32* %0, null, !dbg !373
  br i1 %cmp, label %if.then, label %if.end, !dbg !374

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !375
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !377
  br label %if.end, !dbg !378

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !379
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !380 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.9, i64 0, i64 0), i32 %0), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !388 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !394
  %conv = sext i16 %0 to i32, !dbg !394
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.10, i64 0, i64 0), i32 %conv), !dbg !395
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !397 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !403
  %conv = fpext float %0 to double, !dbg !403
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !404
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !406 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !414 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !420, metadata !DIExpression()), !dbg !421
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !422
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !425 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !431
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !433 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !436, metadata !DIExpression()), !dbg !437
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !438
  %conv = sext i8 %0 to i32, !dbg !438
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !439
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !441 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !444, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !446, metadata !DIExpression()), !dbg !450
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !451
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !452
  store i32 %0, i32* %arrayidx, align 4, !dbg !453
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !454
  store i32 0, i32* %arrayidx1, align 4, !dbg !455
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !457
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !459 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !462, metadata !DIExpression()), !dbg !463
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !464
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !465
  ret void, !dbg !466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !467 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !470, metadata !DIExpression()), !dbg !471
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !472
  %conv = zext i8 %0 to i32, !dbg !472
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !473
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !475 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !479, metadata !DIExpression()), !dbg !480
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !481
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !482
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !484 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !496
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !497
  %1 = load i32, i32* %intOne, align 4, !dbg !497
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !498
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !499
  %3 = load i32, i32* %intTwo, align 4, !dbg !499
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !500
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !502 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !506, metadata !DIExpression()), !dbg !507
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !508, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.declare(metadata i64* %i, metadata !510, metadata !DIExpression()), !dbg !511
  store i64 0, i64* %i, align 8, !dbg !512
  br label %for.cond, !dbg !514

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !515
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !517
  %cmp = icmp ult i64 %0, %1, !dbg !518
  br i1 %cmp, label %for.body, label %for.end, !dbg !519

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !520
  %3 = load i64, i64* %i, align 8, !dbg !522
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !520
  %4 = load i8, i8* %arrayidx, align 1, !dbg !520
  %conv = zext i8 %4 to i32, !dbg !520
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !523
  br label %for.inc, !dbg !524

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !525
  %inc = add i64 %5, 1, !dbg !525
  store i64 %inc, i64* %i, align 8, !dbg !525
  br label %for.cond, !dbg !526, !llvm.loop !527

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !530
  ret void, !dbg !531
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !532 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !535, metadata !DIExpression()), !dbg !536
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !537, metadata !DIExpression()), !dbg !538
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !541, metadata !DIExpression()), !dbg !542
  store i64 0, i64* %numWritten, align 8, !dbg !542
  br label %while.cond, !dbg !543

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !544
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !545
  %cmp = icmp ult i64 %0, %1, !dbg !546
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !547

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !548
  %2 = load i16*, i16** %call, align 8, !dbg !548
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !548
  %4 = load i64, i64* %numWritten, align 8, !dbg !548
  %mul = mul i64 2, %4, !dbg !548
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !548
  %5 = load i8, i8* %arrayidx, align 1, !dbg !548
  %conv = sext i8 %5 to i32, !dbg !548
  %idxprom = sext i32 %conv to i64, !dbg !548
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !548
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !548
  %conv2 = zext i16 %6 to i32, !dbg !548
  %and = and i32 %conv2, 4096, !dbg !548
  %tobool = icmp ne i32 %and, 0, !dbg !548
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !549

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !550
  %7 = load i16*, i16** %call3, align 8, !dbg !550
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !550
  %9 = load i64, i64* %numWritten, align 8, !dbg !550
  %mul4 = mul i64 2, %9, !dbg !550
  %add = add i64 %mul4, 1, !dbg !550
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !550
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !550
  %conv6 = sext i8 %10 to i32, !dbg !550
  %idxprom7 = sext i32 %conv6 to i64, !dbg !550
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !550
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !550
  %conv9 = zext i16 %11 to i32, !dbg !550
  %and10 = and i32 %conv9, 4096, !dbg !550
  %tobool11 = icmp ne i32 %and10, 0, !dbg !549
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !551
  br i1 %12, label %while.body, label %while.end, !dbg !543

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !552, metadata !DIExpression()), !dbg !554
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !555
  %14 = load i64, i64* %numWritten, align 8, !dbg !556
  %mul12 = mul i64 2, %14, !dbg !557
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !555
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !558
  %15 = load i32, i32* %byte, align 4, !dbg !559
  %conv15 = trunc i32 %15 to i8, !dbg !560
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !561
  %17 = load i64, i64* %numWritten, align 8, !dbg !562
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !561
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !563
  %18 = load i64, i64* %numWritten, align 8, !dbg !564
  %inc = add i64 %18, 1, !dbg !564
  store i64 %inc, i64* %numWritten, align 8, !dbg !564
  br label %while.cond, !dbg !543, !llvm.loop !565

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !567
  ret i64 %19, !dbg !568
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !569 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !572, metadata !DIExpression()), !dbg !573
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !574, metadata !DIExpression()), !dbg !575
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !576, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !578, metadata !DIExpression()), !dbg !579
  store i64 0, i64* %numWritten, align 8, !dbg !579
  br label %while.cond, !dbg !580

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !581
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !582
  %cmp = icmp ult i64 %0, %1, !dbg !583
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !584

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !585
  %3 = load i64, i64* %numWritten, align 8, !dbg !586
  %mul = mul i64 2, %3, !dbg !587
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !585
  %4 = load i32, i32* %arrayidx, align 4, !dbg !585
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !588
  %tobool = icmp ne i32 %call, 0, !dbg !588
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !589

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !590
  %6 = load i64, i64* %numWritten, align 8, !dbg !591
  %mul1 = mul i64 2, %6, !dbg !592
  %add = add i64 %mul1, 1, !dbg !593
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !590
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !590
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !594
  %tobool4 = icmp ne i32 %call3, 0, !dbg !589
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !595
  br i1 %8, label %while.body, label %while.end, !dbg !580

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !596, metadata !DIExpression()), !dbg !598
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !599
  %10 = load i64, i64* %numWritten, align 8, !dbg !600
  %mul5 = mul i64 2, %10, !dbg !601
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !599
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !602
  %11 = load i32, i32* %byte, align 4, !dbg !603
  %conv = trunc i32 %11 to i8, !dbg !604
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !605
  %13 = load i64, i64* %numWritten, align 8, !dbg !606
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !605
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !607
  %14 = load i64, i64* %numWritten, align 8, !dbg !608
  %inc = add i64 %14, 1, !dbg !608
  store i64 %inc, i64* %numWritten, align 8, !dbg !608
  br label %while.cond, !dbg !580, !llvm.loop !609

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !611
  ret i64 %15, !dbg !612
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !613 {
entry:
  ret i32 1, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !617 {
entry:
  ret i32 0, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !619 {
entry:
  %call = call i32 @rand() #9, !dbg !620
  %rem = srem i32 %call, 2, !dbg !621
  ret i32 %rem, !dbg !622
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !633 {
entry:
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !635 {
entry:
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !639 {
entry:
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !641 {
entry:
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !657 {
entry:
  ret void, !dbg !658
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

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_175/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_vprintf_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_175/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badVaSink", scope: !45, file: !45, line: 34, type: !53, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !42, null}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 34, type: !42)
!56 = !DILocation(line: 34, column: 23, scope: !52)
!57 = !DILocalVariable(name: "args", scope: !58, file: !45, line: 37, type: !59)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 36, column: 5)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !60, line: 52, baseType: !61)
!60 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !62, line: 32, baseType: !63)
!62 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !45, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 192, elements: !71)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !66)
!66 = !{!67, !68, !69, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !65, file: !45, line: 37, baseType: !7, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !65, file: !45, line: 37, baseType: !7, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !65, file: !45, line: 37, baseType: !22, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !65, file: !45, line: 37, baseType: !22, size: 64, offset: 128)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DILocation(line: 37, column: 17, scope: !58)
!74 = !DILocation(line: 38, column: 9, scope: !58)
!75 = !DILocation(line: 40, column: 17, scope: !58)
!76 = !DILocation(line: 40, column: 23, scope: !58)
!77 = !DILocation(line: 40, column: 9, scope: !58)
!78 = !DILocation(line: 41, column: 9, scope: !58)
!79 = !DILocation(line: 43, column: 1, scope: !52)
!80 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_32_bad", scope: !45, file: !45, line: 45, type: !81, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!81 = !DISubroutineType(types: !82)
!82 = !{null}
!83 = !DILocalVariable(name: "data", scope: !80, file: !45, line: 47, type: !42)
!84 = !DILocation(line: 47, column: 12, scope: !80)
!85 = !DILocalVariable(name: "dataPtr1", scope: !80, file: !45, line: 48, type: !41)
!86 = !DILocation(line: 48, column: 13, scope: !80)
!87 = !DILocalVariable(name: "dataPtr2", scope: !80, file: !45, line: 49, type: !41)
!88 = !DILocation(line: 49, column: 13, scope: !80)
!89 = !DILocalVariable(name: "dataBuffer", scope: !80, file: !45, line: 50, type: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 100)
!93 = !DILocation(line: 50, column: 10, scope: !80)
!94 = !DILocation(line: 51, column: 12, scope: !80)
!95 = !DILocation(line: 51, column: 10, scope: !80)
!96 = !DILocalVariable(name: "data", scope: !97, file: !45, line: 53, type: !42)
!97 = distinct !DILexicalBlock(scope: !80, file: !45, line: 52, column: 5)
!98 = !DILocation(line: 53, column: 16, scope: !97)
!99 = !DILocation(line: 53, column: 24, scope: !97)
!100 = !DILocation(line: 53, column: 23, scope: !97)
!101 = !DILocalVariable(name: "dataLen", scope: !102, file: !45, line: 56, type: !103)
!102 = distinct !DILexicalBlock(scope: !97, file: !45, line: 54, column: 9)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 46, baseType: !105)
!104 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!105 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!106 = !DILocation(line: 56, column: 20, scope: !102)
!107 = !DILocation(line: 56, column: 37, scope: !102)
!108 = !DILocation(line: 56, column: 30, scope: !102)
!109 = !DILocalVariable(name: "pFile", scope: !102, file: !45, line: 57, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !112, line: 7, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !114, line: 49, size: 1728, elements: !115)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !131, !133, !134, !135, !139, !140, !142, !144, !147, !149, !152, !155, !156, !157, !158, !159}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !113, file: !114, line: 51, baseType: !23, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !113, file: !114, line: 54, baseType: !42, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !113, file: !114, line: 55, baseType: !42, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !113, file: !114, line: 56, baseType: !42, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !113, file: !114, line: 57, baseType: !42, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !113, file: !114, line: 58, baseType: !42, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !113, file: !114, line: 59, baseType: !42, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !113, file: !114, line: 60, baseType: !42, size: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !113, file: !114, line: 61, baseType: !42, size: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !113, file: !114, line: 64, baseType: !42, size: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !113, file: !114, line: 65, baseType: !42, size: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !113, file: !114, line: 66, baseType: !42, size: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !113, file: !114, line: 68, baseType: !129, size: 64, offset: 768)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !114, line: 36, flags: DIFlagFwdDecl)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !113, file: !114, line: 70, baseType: !132, size: 64, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !113, file: !114, line: 72, baseType: !23, size: 32, offset: 896)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !113, file: !114, line: 73, baseType: !23, size: 32, offset: 928)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !113, file: !114, line: 74, baseType: !136, size: 64, offset: 960)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !137, line: 152, baseType: !138)
!137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!138 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !113, file: !114, line: 77, baseType: !24, size: 16, offset: 1024)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !113, file: !114, line: 78, baseType: !141, size: 8, offset: 1040)
!141 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !113, file: !114, line: 79, baseType: !143, size: 8, offset: 1048)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !71)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !113, file: !114, line: 81, baseType: !145, size: 64, offset: 1088)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !114, line: 43, baseType: null)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !113, file: !114, line: 89, baseType: !148, size: 64, offset: 1152)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !137, line: 153, baseType: !138)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !113, file: !114, line: 91, baseType: !150, size: 64, offset: 1216)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !114, line: 37, flags: DIFlagFwdDecl)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !113, file: !114, line: 92, baseType: !153, size: 64, offset: 1280)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !114, line: 38, flags: DIFlagFwdDecl)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !113, file: !114, line: 93, baseType: !132, size: 64, offset: 1344)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !113, file: !114, line: 94, baseType: !22, size: 64, offset: 1408)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !113, file: !114, line: 95, baseType: !103, size: 64, offset: 1472)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !113, file: !114, line: 96, baseType: !23, size: 32, offset: 1536)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !113, file: !114, line: 98, baseType: !160, size: 160, offset: 1568)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 20)
!163 = !DILocation(line: 57, column: 20, scope: !102)
!164 = !DILocation(line: 59, column: 21, scope: !165)
!165 = distinct !DILexicalBlock(scope: !102, file: !45, line: 59, column: 17)
!166 = !DILocation(line: 59, column: 20, scope: !165)
!167 = !DILocation(line: 59, column: 29, scope: !165)
!168 = !DILocation(line: 59, column: 17, scope: !102)
!169 = !DILocation(line: 61, column: 25, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !45, line: 60, column: 13)
!171 = !DILocation(line: 61, column: 23, scope: !170)
!172 = !DILocation(line: 62, column: 21, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !45, line: 62, column: 21)
!174 = !DILocation(line: 62, column: 27, scope: !173)
!175 = !DILocation(line: 62, column: 21, scope: !170)
!176 = !DILocation(line: 65, column: 31, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !45, line: 65, column: 25)
!178 = distinct !DILexicalBlock(scope: !173, file: !45, line: 63, column: 17)
!179 = !DILocation(line: 65, column: 36, scope: !177)
!180 = !DILocation(line: 65, column: 35, scope: !177)
!181 = !DILocation(line: 65, column: 55, scope: !177)
!182 = !DILocation(line: 65, column: 54, scope: !177)
!183 = !DILocation(line: 65, column: 45, scope: !177)
!184 = !DILocation(line: 65, column: 65, scope: !177)
!185 = !DILocation(line: 65, column: 25, scope: !177)
!186 = !DILocation(line: 65, column: 72, scope: !177)
!187 = !DILocation(line: 65, column: 25, scope: !178)
!188 = !DILocation(line: 67, column: 25, scope: !189)
!189 = distinct !DILexicalBlock(scope: !177, file: !45, line: 66, column: 21)
!190 = !DILocation(line: 69, column: 25, scope: !189)
!191 = !DILocation(line: 69, column: 30, scope: !189)
!192 = !DILocation(line: 69, column: 39, scope: !189)
!193 = !DILocation(line: 70, column: 21, scope: !189)
!194 = !DILocation(line: 71, column: 28, scope: !178)
!195 = !DILocation(line: 71, column: 21, scope: !178)
!196 = !DILocation(line: 72, column: 17, scope: !178)
!197 = !DILocation(line: 73, column: 13, scope: !170)
!198 = !DILocation(line: 75, column: 21, scope: !97)
!199 = !DILocation(line: 75, column: 10, scope: !97)
!200 = !DILocation(line: 75, column: 19, scope: !97)
!201 = !DILocalVariable(name: "data", scope: !202, file: !45, line: 78, type: !42)
!202 = distinct !DILexicalBlock(scope: !80, file: !45, line: 77, column: 5)
!203 = !DILocation(line: 78, column: 16, scope: !202)
!204 = !DILocation(line: 78, column: 24, scope: !202)
!205 = !DILocation(line: 78, column: 23, scope: !202)
!206 = !DILocation(line: 79, column: 19, scope: !202)
!207 = !DILocation(line: 79, column: 25, scope: !202)
!208 = !DILocation(line: 79, column: 9, scope: !202)
!209 = !DILocation(line: 81, column: 1, scope: !80)
!210 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !45, file: !45, line: 88, type: !53, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!211 = !DILocalVariable(name: "data", arg: 1, scope: !210, file: !45, line: 88, type: !42)
!212 = !DILocation(line: 88, column: 27, scope: !210)
!213 = !DILocalVariable(name: "args", scope: !214, file: !45, line: 91, type: !59)
!214 = distinct !DILexicalBlock(scope: !210, file: !45, line: 90, column: 5)
!215 = !DILocation(line: 91, column: 17, scope: !214)
!216 = !DILocation(line: 92, column: 9, scope: !214)
!217 = !DILocation(line: 94, column: 17, scope: !214)
!218 = !DILocation(line: 94, column: 23, scope: !214)
!219 = !DILocation(line: 94, column: 9, scope: !214)
!220 = !DILocation(line: 95, column: 9, scope: !214)
!221 = !DILocation(line: 97, column: 1, scope: !210)
!222 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 99, type: !81, scopeLine: 100, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!223 = !DILocalVariable(name: "data", scope: !222, file: !45, line: 101, type: !42)
!224 = !DILocation(line: 101, column: 12, scope: !222)
!225 = !DILocalVariable(name: "dataPtr1", scope: !222, file: !45, line: 102, type: !41)
!226 = !DILocation(line: 102, column: 13, scope: !222)
!227 = !DILocalVariable(name: "dataPtr2", scope: !222, file: !45, line: 103, type: !41)
!228 = !DILocation(line: 103, column: 13, scope: !222)
!229 = !DILocalVariable(name: "dataBuffer", scope: !222, file: !45, line: 104, type: !90)
!230 = !DILocation(line: 104, column: 10, scope: !222)
!231 = !DILocation(line: 105, column: 12, scope: !222)
!232 = !DILocation(line: 105, column: 10, scope: !222)
!233 = !DILocalVariable(name: "data", scope: !234, file: !45, line: 107, type: !42)
!234 = distinct !DILexicalBlock(scope: !222, file: !45, line: 106, column: 5)
!235 = !DILocation(line: 107, column: 16, scope: !234)
!236 = !DILocation(line: 107, column: 24, scope: !234)
!237 = !DILocation(line: 107, column: 23, scope: !234)
!238 = !DILocation(line: 109, column: 16, scope: !234)
!239 = !DILocation(line: 109, column: 9, scope: !234)
!240 = !DILocation(line: 110, column: 21, scope: !234)
!241 = !DILocation(line: 110, column: 10, scope: !234)
!242 = !DILocation(line: 110, column: 19, scope: !234)
!243 = !DILocalVariable(name: "data", scope: !244, file: !45, line: 113, type: !42)
!244 = distinct !DILexicalBlock(scope: !222, file: !45, line: 112, column: 5)
!245 = !DILocation(line: 113, column: 16, scope: !244)
!246 = !DILocation(line: 113, column: 24, scope: !244)
!247 = !DILocation(line: 113, column: 23, scope: !244)
!248 = !DILocation(line: 114, column: 23, scope: !244)
!249 = !DILocation(line: 114, column: 29, scope: !244)
!250 = !DILocation(line: 114, column: 9, scope: !244)
!251 = !DILocation(line: 116, column: 1, scope: !222)
!252 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !45, file: !45, line: 119, type: !53, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!253 = !DILocalVariable(name: "data", arg: 1, scope: !252, file: !45, line: 119, type: !42)
!254 = !DILocation(line: 119, column: 27, scope: !252)
!255 = !DILocalVariable(name: "args", scope: !256, file: !45, line: 122, type: !59)
!256 = distinct !DILexicalBlock(scope: !252, file: !45, line: 121, column: 5)
!257 = !DILocation(line: 122, column: 17, scope: !256)
!258 = !DILocation(line: 123, column: 9, scope: !256)
!259 = !DILocation(line: 125, column: 23, scope: !256)
!260 = !DILocation(line: 125, column: 9, scope: !256)
!261 = !DILocation(line: 126, column: 9, scope: !256)
!262 = !DILocation(line: 128, column: 1, scope: !252)
!263 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 130, type: !81, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!264 = !DILocalVariable(name: "data", scope: !263, file: !45, line: 132, type: !42)
!265 = !DILocation(line: 132, column: 12, scope: !263)
!266 = !DILocalVariable(name: "dataPtr1", scope: !263, file: !45, line: 133, type: !41)
!267 = !DILocation(line: 133, column: 13, scope: !263)
!268 = !DILocalVariable(name: "dataPtr2", scope: !263, file: !45, line: 134, type: !41)
!269 = !DILocation(line: 134, column: 13, scope: !263)
!270 = !DILocalVariable(name: "dataBuffer", scope: !263, file: !45, line: 135, type: !90)
!271 = !DILocation(line: 135, column: 10, scope: !263)
!272 = !DILocation(line: 136, column: 12, scope: !263)
!273 = !DILocation(line: 136, column: 10, scope: !263)
!274 = !DILocalVariable(name: "data", scope: !275, file: !45, line: 138, type: !42)
!275 = distinct !DILexicalBlock(scope: !263, file: !45, line: 137, column: 5)
!276 = !DILocation(line: 138, column: 16, scope: !275)
!277 = !DILocation(line: 138, column: 24, scope: !275)
!278 = !DILocation(line: 138, column: 23, scope: !275)
!279 = !DILocalVariable(name: "dataLen", scope: !280, file: !45, line: 141, type: !103)
!280 = distinct !DILexicalBlock(scope: !275, file: !45, line: 139, column: 9)
!281 = !DILocation(line: 141, column: 20, scope: !280)
!282 = !DILocation(line: 141, column: 37, scope: !280)
!283 = !DILocation(line: 141, column: 30, scope: !280)
!284 = !DILocalVariable(name: "pFile", scope: !280, file: !45, line: 142, type: !110)
!285 = !DILocation(line: 142, column: 20, scope: !280)
!286 = !DILocation(line: 144, column: 21, scope: !287)
!287 = distinct !DILexicalBlock(scope: !280, file: !45, line: 144, column: 17)
!288 = !DILocation(line: 144, column: 20, scope: !287)
!289 = !DILocation(line: 144, column: 29, scope: !287)
!290 = !DILocation(line: 144, column: 17, scope: !280)
!291 = !DILocation(line: 146, column: 25, scope: !292)
!292 = distinct !DILexicalBlock(scope: !287, file: !45, line: 145, column: 13)
!293 = !DILocation(line: 146, column: 23, scope: !292)
!294 = !DILocation(line: 147, column: 21, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !45, line: 147, column: 21)
!296 = !DILocation(line: 147, column: 27, scope: !295)
!297 = !DILocation(line: 147, column: 21, scope: !292)
!298 = !DILocation(line: 150, column: 31, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !45, line: 150, column: 25)
!300 = distinct !DILexicalBlock(scope: !295, file: !45, line: 148, column: 17)
!301 = !DILocation(line: 150, column: 36, scope: !299)
!302 = !DILocation(line: 150, column: 35, scope: !299)
!303 = !DILocation(line: 150, column: 55, scope: !299)
!304 = !DILocation(line: 150, column: 54, scope: !299)
!305 = !DILocation(line: 150, column: 45, scope: !299)
!306 = !DILocation(line: 150, column: 65, scope: !299)
!307 = !DILocation(line: 150, column: 25, scope: !299)
!308 = !DILocation(line: 150, column: 72, scope: !299)
!309 = !DILocation(line: 150, column: 25, scope: !300)
!310 = !DILocation(line: 152, column: 25, scope: !311)
!311 = distinct !DILexicalBlock(scope: !299, file: !45, line: 151, column: 21)
!312 = !DILocation(line: 154, column: 25, scope: !311)
!313 = !DILocation(line: 154, column: 30, scope: !311)
!314 = !DILocation(line: 154, column: 39, scope: !311)
!315 = !DILocation(line: 155, column: 21, scope: !311)
!316 = !DILocation(line: 156, column: 28, scope: !300)
!317 = !DILocation(line: 156, column: 21, scope: !300)
!318 = !DILocation(line: 157, column: 17, scope: !300)
!319 = !DILocation(line: 158, column: 13, scope: !292)
!320 = !DILocation(line: 160, column: 21, scope: !275)
!321 = !DILocation(line: 160, column: 10, scope: !275)
!322 = !DILocation(line: 160, column: 19, scope: !275)
!323 = !DILocalVariable(name: "data", scope: !324, file: !45, line: 163, type: !42)
!324 = distinct !DILexicalBlock(scope: !263, file: !45, line: 162, column: 5)
!325 = !DILocation(line: 163, column: 16, scope: !324)
!326 = !DILocation(line: 163, column: 24, scope: !324)
!327 = !DILocation(line: 163, column: 23, scope: !324)
!328 = !DILocation(line: 164, column: 23, scope: !324)
!329 = !DILocation(line: 164, column: 29, scope: !324)
!330 = !DILocation(line: 164, column: 9, scope: !324)
!331 = !DILocation(line: 166, column: 1, scope: !263)
!332 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_32_good", scope: !45, file: !45, line: 168, type: !81, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!333 = !DILocation(line: 170, column: 5, scope: !332)
!334 = !DILocation(line: 171, column: 5, scope: !332)
!335 = !DILocation(line: 172, column: 1, scope: !332)
!336 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !337, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !42}
!339 = !DILocalVariable(name: "line", arg: 1, scope: !336, file: !3, line: 11, type: !42)
!340 = !DILocation(line: 11, column: 25, scope: !336)
!341 = !DILocation(line: 13, column: 1, scope: !336)
!342 = !DILocation(line: 14, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !336, file: !3, line: 14, column: 8)
!344 = !DILocation(line: 14, column: 13, scope: !343)
!345 = !DILocation(line: 14, column: 8, scope: !336)
!346 = !DILocation(line: 16, column: 24, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !3, line: 15, column: 5)
!348 = !DILocation(line: 16, column: 9, scope: !347)
!349 = !DILocation(line: 17, column: 5, scope: !347)
!350 = !DILocation(line: 18, column: 5, scope: !336)
!351 = !DILocation(line: 19, column: 1, scope: !336)
!352 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !337, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!353 = !DILocalVariable(name: "line", arg: 1, scope: !352, file: !3, line: 20, type: !42)
!354 = !DILocation(line: 20, column: 29, scope: !352)
!355 = !DILocation(line: 22, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !3, line: 22, column: 8)
!357 = !DILocation(line: 22, column: 13, scope: !356)
!358 = !DILocation(line: 22, column: 8, scope: !352)
!359 = !DILocation(line: 24, column: 24, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !3, line: 23, column: 5)
!361 = !DILocation(line: 24, column: 9, scope: !360)
!362 = !DILocation(line: 25, column: 5, scope: !360)
!363 = !DILocation(line: 26, column: 1, scope: !352)
!364 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !365, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !104, line: 74, baseType: !23)
!369 = !DILocalVariable(name: "line", arg: 1, scope: !364, file: !3, line: 27, type: !367)
!370 = !DILocation(line: 27, column: 29, scope: !364)
!371 = !DILocation(line: 29, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !364, file: !3, line: 29, column: 8)
!373 = !DILocation(line: 29, column: 13, scope: !372)
!374 = !DILocation(line: 29, column: 8, scope: !364)
!375 = !DILocation(line: 31, column: 27, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !3, line: 30, column: 5)
!377 = !DILocation(line: 31, column: 9, scope: !376)
!378 = !DILocation(line: 32, column: 5, scope: !376)
!379 = !DILocation(line: 33, column: 1, scope: !364)
!380 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !381, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !23}
!383 = !DILocalVariable(name: "intNumber", arg: 1, scope: !380, file: !3, line: 35, type: !23)
!384 = !DILocation(line: 35, column: 24, scope: !380)
!385 = !DILocation(line: 37, column: 20, scope: !380)
!386 = !DILocation(line: 37, column: 5, scope: !380)
!387 = !DILocation(line: 38, column: 1, scope: !380)
!388 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !389, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391}
!391 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!392 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !388, file: !3, line: 40, type: !391)
!393 = !DILocation(line: 40, column: 28, scope: !388)
!394 = !DILocation(line: 42, column: 21, scope: !388)
!395 = !DILocation(line: 42, column: 5, scope: !388)
!396 = !DILocation(line: 43, column: 1, scope: !388)
!397 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !398, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !400}
!400 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!401 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !397, file: !3, line: 45, type: !400)
!402 = !DILocation(line: 45, column: 28, scope: !397)
!403 = !DILocation(line: 47, column: 20, scope: !397)
!404 = !DILocation(line: 47, column: 5, scope: !397)
!405 = !DILocation(line: 48, column: 1, scope: !397)
!406 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !407, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !138}
!409 = !DILocalVariable(name: "longNumber", arg: 1, scope: !406, file: !3, line: 50, type: !138)
!410 = !DILocation(line: 50, column: 26, scope: !406)
!411 = !DILocation(line: 52, column: 21, scope: !406)
!412 = !DILocation(line: 52, column: 5, scope: !406)
!413 = !DILocation(line: 53, column: 1, scope: !406)
!414 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !415, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417}
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !418, line: 27, baseType: !419)
!418 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !137, line: 44, baseType: !138)
!420 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !414, file: !3, line: 55, type: !417)
!421 = !DILocation(line: 55, column: 33, scope: !414)
!422 = !DILocation(line: 57, column: 29, scope: !414)
!423 = !DILocation(line: 57, column: 5, scope: !414)
!424 = !DILocation(line: 58, column: 1, scope: !414)
!425 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !426, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !103}
!428 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !425, file: !3, line: 60, type: !103)
!429 = !DILocation(line: 60, column: 29, scope: !425)
!430 = !DILocation(line: 62, column: 21, scope: !425)
!431 = !DILocation(line: 62, column: 5, scope: !425)
!432 = !DILocation(line: 63, column: 1, scope: !425)
!433 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !434, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !43}
!436 = !DILocalVariable(name: "charHex", arg: 1, scope: !433, file: !3, line: 65, type: !43)
!437 = !DILocation(line: 65, column: 29, scope: !433)
!438 = !DILocation(line: 67, column: 22, scope: !433)
!439 = !DILocation(line: 67, column: 5, scope: !433)
!440 = !DILocation(line: 68, column: 1, scope: !433)
!441 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !442, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !368}
!444 = !DILocalVariable(name: "wideChar", arg: 1, scope: !441, file: !3, line: 70, type: !368)
!445 = !DILocation(line: 70, column: 29, scope: !441)
!446 = !DILocalVariable(name: "s", scope: !441, file: !3, line: 74, type: !447)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 64, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 2)
!450 = !DILocation(line: 74, column: 13, scope: !441)
!451 = !DILocation(line: 75, column: 16, scope: !441)
!452 = !DILocation(line: 75, column: 9, scope: !441)
!453 = !DILocation(line: 75, column: 14, scope: !441)
!454 = !DILocation(line: 76, column: 9, scope: !441)
!455 = !DILocation(line: 76, column: 14, scope: !441)
!456 = !DILocation(line: 77, column: 21, scope: !441)
!457 = !DILocation(line: 77, column: 5, scope: !441)
!458 = !DILocation(line: 78, column: 1, scope: !441)
!459 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !460, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !7}
!462 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !459, file: !3, line: 80, type: !7)
!463 = !DILocation(line: 80, column: 33, scope: !459)
!464 = !DILocation(line: 82, column: 20, scope: !459)
!465 = !DILocation(line: 82, column: 5, scope: !459)
!466 = !DILocation(line: 83, column: 1, scope: !459)
!467 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !468, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !25}
!470 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !467, file: !3, line: 85, type: !25)
!471 = !DILocation(line: 85, column: 45, scope: !467)
!472 = !DILocation(line: 87, column: 22, scope: !467)
!473 = !DILocation(line: 87, column: 5, scope: !467)
!474 = !DILocation(line: 88, column: 1, scope: !467)
!475 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !476, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !478}
!478 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!479 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !475, file: !3, line: 90, type: !478)
!480 = !DILocation(line: 90, column: 29, scope: !475)
!481 = !DILocation(line: 92, column: 20, scope: !475)
!482 = !DILocation(line: 92, column: 5, scope: !475)
!483 = !DILocation(line: 93, column: 1, scope: !475)
!484 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !485, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !489, line: 100, baseType: !490)
!489 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_175/source_code")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !489, line: 96, size: 64, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !490, file: !489, line: 98, baseType: !23, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !490, file: !489, line: 99, baseType: !23, size: 32, offset: 32)
!494 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !484, file: !3, line: 95, type: !487)
!495 = !DILocation(line: 95, column: 40, scope: !484)
!496 = !DILocation(line: 97, column: 26, scope: !484)
!497 = !DILocation(line: 97, column: 47, scope: !484)
!498 = !DILocation(line: 97, column: 55, scope: !484)
!499 = !DILocation(line: 97, column: 76, scope: !484)
!500 = !DILocation(line: 97, column: 5, scope: !484)
!501 = !DILocation(line: 98, column: 1, scope: !484)
!502 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !503, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !505, !103}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!506 = !DILocalVariable(name: "bytes", arg: 1, scope: !502, file: !3, line: 100, type: !505)
!507 = !DILocation(line: 100, column: 38, scope: !502)
!508 = !DILocalVariable(name: "numBytes", arg: 2, scope: !502, file: !3, line: 100, type: !103)
!509 = !DILocation(line: 100, column: 52, scope: !502)
!510 = !DILocalVariable(name: "i", scope: !502, file: !3, line: 102, type: !103)
!511 = !DILocation(line: 102, column: 12, scope: !502)
!512 = !DILocation(line: 103, column: 12, scope: !513)
!513 = distinct !DILexicalBlock(scope: !502, file: !3, line: 103, column: 5)
!514 = !DILocation(line: 103, column: 10, scope: !513)
!515 = !DILocation(line: 103, column: 17, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !3, line: 103, column: 5)
!517 = !DILocation(line: 103, column: 21, scope: !516)
!518 = !DILocation(line: 103, column: 19, scope: !516)
!519 = !DILocation(line: 103, column: 5, scope: !513)
!520 = !DILocation(line: 105, column: 24, scope: !521)
!521 = distinct !DILexicalBlock(scope: !516, file: !3, line: 104, column: 5)
!522 = !DILocation(line: 105, column: 30, scope: !521)
!523 = !DILocation(line: 105, column: 9, scope: !521)
!524 = !DILocation(line: 106, column: 5, scope: !521)
!525 = !DILocation(line: 103, column: 31, scope: !516)
!526 = !DILocation(line: 103, column: 5, scope: !516)
!527 = distinct !{!527, !519, !528, !529}
!528 = !DILocation(line: 106, column: 5, scope: !513)
!529 = !{!"llvm.loop.mustprogress"}
!530 = !DILocation(line: 107, column: 5, scope: !502)
!531 = !DILocation(line: 108, column: 1, scope: !502)
!532 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !533, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DISubroutineType(types: !534)
!534 = !{!103, !505, !103, !42}
!535 = !DILocalVariable(name: "bytes", arg: 1, scope: !532, file: !3, line: 113, type: !505)
!536 = !DILocation(line: 113, column: 39, scope: !532)
!537 = !DILocalVariable(name: "numBytes", arg: 2, scope: !532, file: !3, line: 113, type: !103)
!538 = !DILocation(line: 113, column: 53, scope: !532)
!539 = !DILocalVariable(name: "hex", arg: 3, scope: !532, file: !3, line: 113, type: !42)
!540 = !DILocation(line: 113, column: 71, scope: !532)
!541 = !DILocalVariable(name: "numWritten", scope: !532, file: !3, line: 115, type: !103)
!542 = !DILocation(line: 115, column: 12, scope: !532)
!543 = !DILocation(line: 121, column: 5, scope: !532)
!544 = !DILocation(line: 121, column: 12, scope: !532)
!545 = !DILocation(line: 121, column: 25, scope: !532)
!546 = !DILocation(line: 121, column: 23, scope: !532)
!547 = !DILocation(line: 121, column: 34, scope: !532)
!548 = !DILocation(line: 121, column: 37, scope: !532)
!549 = !DILocation(line: 121, column: 67, scope: !532)
!550 = !DILocation(line: 121, column: 70, scope: !532)
!551 = !DILocation(line: 0, scope: !532)
!552 = !DILocalVariable(name: "byte", scope: !553, file: !3, line: 123, type: !23)
!553 = distinct !DILexicalBlock(scope: !532, file: !3, line: 122, column: 5)
!554 = !DILocation(line: 123, column: 13, scope: !553)
!555 = !DILocation(line: 124, column: 17, scope: !553)
!556 = !DILocation(line: 124, column: 25, scope: !553)
!557 = !DILocation(line: 124, column: 23, scope: !553)
!558 = !DILocation(line: 124, column: 9, scope: !553)
!559 = !DILocation(line: 125, column: 45, scope: !553)
!560 = !DILocation(line: 125, column: 29, scope: !553)
!561 = !DILocation(line: 125, column: 9, scope: !553)
!562 = !DILocation(line: 125, column: 15, scope: !553)
!563 = !DILocation(line: 125, column: 27, scope: !553)
!564 = !DILocation(line: 126, column: 9, scope: !553)
!565 = distinct !{!565, !543, !566, !529}
!566 = !DILocation(line: 127, column: 5, scope: !532)
!567 = !DILocation(line: 129, column: 12, scope: !532)
!568 = !DILocation(line: 129, column: 5, scope: !532)
!569 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !570, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DISubroutineType(types: !571)
!571 = !{!103, !505, !103, !367}
!572 = !DILocalVariable(name: "bytes", arg: 1, scope: !569, file: !3, line: 135, type: !505)
!573 = !DILocation(line: 135, column: 41, scope: !569)
!574 = !DILocalVariable(name: "numBytes", arg: 2, scope: !569, file: !3, line: 135, type: !103)
!575 = !DILocation(line: 135, column: 55, scope: !569)
!576 = !DILocalVariable(name: "hex", arg: 3, scope: !569, file: !3, line: 135, type: !367)
!577 = !DILocation(line: 135, column: 76, scope: !569)
!578 = !DILocalVariable(name: "numWritten", scope: !569, file: !3, line: 137, type: !103)
!579 = !DILocation(line: 137, column: 12, scope: !569)
!580 = !DILocation(line: 143, column: 5, scope: !569)
!581 = !DILocation(line: 143, column: 12, scope: !569)
!582 = !DILocation(line: 143, column: 25, scope: !569)
!583 = !DILocation(line: 143, column: 23, scope: !569)
!584 = !DILocation(line: 143, column: 34, scope: !569)
!585 = !DILocation(line: 143, column: 47, scope: !569)
!586 = !DILocation(line: 143, column: 55, scope: !569)
!587 = !DILocation(line: 143, column: 53, scope: !569)
!588 = !DILocation(line: 143, column: 37, scope: !569)
!589 = !DILocation(line: 143, column: 68, scope: !569)
!590 = !DILocation(line: 143, column: 81, scope: !569)
!591 = !DILocation(line: 143, column: 89, scope: !569)
!592 = !DILocation(line: 143, column: 87, scope: !569)
!593 = !DILocation(line: 143, column: 100, scope: !569)
!594 = !DILocation(line: 143, column: 71, scope: !569)
!595 = !DILocation(line: 0, scope: !569)
!596 = !DILocalVariable(name: "byte", scope: !597, file: !3, line: 145, type: !23)
!597 = distinct !DILexicalBlock(scope: !569, file: !3, line: 144, column: 5)
!598 = !DILocation(line: 145, column: 13, scope: !597)
!599 = !DILocation(line: 146, column: 18, scope: !597)
!600 = !DILocation(line: 146, column: 26, scope: !597)
!601 = !DILocation(line: 146, column: 24, scope: !597)
!602 = !DILocation(line: 146, column: 9, scope: !597)
!603 = !DILocation(line: 147, column: 45, scope: !597)
!604 = !DILocation(line: 147, column: 29, scope: !597)
!605 = !DILocation(line: 147, column: 9, scope: !597)
!606 = !DILocation(line: 147, column: 15, scope: !597)
!607 = !DILocation(line: 147, column: 27, scope: !597)
!608 = !DILocation(line: 148, column: 9, scope: !597)
!609 = distinct !{!609, !580, !610, !529}
!610 = !DILocation(line: 149, column: 5, scope: !569)
!611 = !DILocation(line: 151, column: 12, scope: !569)
!612 = !DILocation(line: 151, column: 5, scope: !569)
!613 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !614, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DISubroutineType(types: !615)
!615 = !{!23}
!616 = !DILocation(line: 158, column: 5, scope: !613)
!617 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !614, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 163, column: 5, scope: !617)
!619 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !614, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 168, column: 13, scope: !619)
!621 = !DILocation(line: 168, column: 20, scope: !619)
!622 = !DILocation(line: 168, column: 5, scope: !619)
!623 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !81, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 187, column: 16, scope: !623)
!625 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !81, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 188, column: 16, scope: !625)
!627 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !81, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 189, column: 16, scope: !627)
!629 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !81, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 190, column: 16, scope: !629)
!631 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !81, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 191, column: 16, scope: !631)
!633 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !81, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 192, column: 16, scope: !633)
!635 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !81, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 193, column: 16, scope: !635)
!637 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !81, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 194, column: 16, scope: !637)
!639 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !81, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 195, column: 16, scope: !639)
!641 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !81, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DILocation(line: 198, column: 15, scope: !641)
!643 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !81, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 199, column: 15, scope: !643)
!645 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !81, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!646 = !DILocation(line: 200, column: 15, scope: !645)
!647 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !81, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DILocation(line: 201, column: 15, scope: !647)
!649 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !81, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 202, column: 15, scope: !649)
!651 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !81, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 203, column: 15, scope: !651)
!653 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !81, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 204, column: 15, scope: !653)
!655 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !81, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DILocation(line: 205, column: 15, scope: !655)
!657 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !81, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 206, column: 15, scope: !657)
