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

@CWE134_Uncontrolled_Format_String__char_file_vprintf_45_badData = dso_local global i8* null, align 8, !dbg !0
@CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodG2BData = dso_local global i8* null, align 8, !dbg !9
@CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodB2GData = dso_local global i8* null, align 8, !dbg !13
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
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
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !59 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !64, metadata !DIExpression()), !dbg !80
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !81
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !81
  call void @llvm.va_start(i8* %arraydecay1), !dbg !81
  %0 = load i8*, i8** %data.addr, align 8, !dbg !82
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !83
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !84
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !85
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !85
  call void @llvm.va_end(i8* %arraydecay34), !dbg !85
  ret void, !dbg !86
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink() #0 !dbg !87 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_badData, align 8, !dbg !92
  store i8* %0, i8** %data, align 8, !dbg !91
  %1 = load i8*, i8** %data, align 8, !dbg !93
  %2 = load i8*, i8** %data, align 8, !dbg !94
  call void (i8*, ...) @badVaSink(i8* %1, i8* %2), !dbg !95
  ret void, !dbg !96
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_bad() #0 !dbg !97 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !98, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !100, metadata !DIExpression()), !dbg !104
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !104
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !104
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !105
  store i8* %arraydecay, i8** %data, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !107, metadata !DIExpression()), !dbg !112
  %1 = load i8*, i8** %data, align 8, !dbg !113
  %call = call i64 @strlen(i8* %1) #8, !dbg !114
  store i64 %call, i64* %dataLen, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !115, metadata !DIExpression()), !dbg !169
  %2 = load i64, i64* %dataLen, align 8, !dbg !170
  %sub = sub i64 100, %2, !dbg !172
  %cmp = icmp ugt i64 %sub, 1, !dbg !173
  br i1 %cmp, label %if.then, label %if.end11, !dbg !174

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !175
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !177
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !178
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !180
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !181

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !182
  %5 = load i64, i64* %dataLen, align 8, !dbg !185
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !186
  %6 = load i64, i64* %dataLen, align 8, !dbg !187
  %sub4 = sub i64 100, %6, !dbg !188
  %conv = trunc i64 %sub4 to i32, !dbg !189
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !190
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !191
  %cmp6 = icmp eq i8* %call5, null, !dbg !192
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !193

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !194
  %8 = load i8*, i8** %data, align 8, !dbg !196
  %9 = load i64, i64* %dataLen, align 8, !dbg !197
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !196
  store i8 0, i8* %arrayidx, align 1, !dbg !198
  br label %if.end, !dbg !199

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !200
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !201
  br label %if.end10, !dbg !202

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !203

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !204
  store i8* %11, i8** @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_badData, align 8, !dbg !205
  call void @badSink(), !dbg !206
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
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !208 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !211, metadata !DIExpression()), !dbg !213
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !214
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !214
  call void @llvm.va_start(i8* %arraydecay1), !dbg !214
  %0 = load i8*, i8** %data.addr, align 8, !dbg !215
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !216
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !217
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !218
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !218
  call void @llvm.va_end(i8* %arraydecay34), !dbg !218
  ret void, !dbg !219
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !220 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodG2BData, align 8, !dbg !223
  store i8* %0, i8** %data, align 8, !dbg !222
  %1 = load i8*, i8** %data, align 8, !dbg !224
  %2 = load i8*, i8** %data, align 8, !dbg !225
  call void (i8*, ...) @goodG2BVaSink(i8* %1, i8* %2), !dbg !226
  ret void, !dbg !227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !228 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !231, metadata !DIExpression()), !dbg !232
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !232
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !232
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !233
  store i8* %arraydecay, i8** %data, align 8, !dbg !234
  %1 = load i8*, i8** %data, align 8, !dbg !235
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !236
  %2 = load i8*, i8** %data, align 8, !dbg !237
  store i8* %2, i8** @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodG2BData, align 8, !dbg !238
  call void @goodG2BSink(), !dbg !239
  ret void, !dbg !240
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !241 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !244, metadata !DIExpression()), !dbg !246
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !247
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !247
  call void @llvm.va_start(i8* %arraydecay1), !dbg !247
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !248
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !249
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !250
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !250
  call void @llvm.va_end(i8* %arraydecay34), !dbg !250
  ret void, !dbg !251
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !252 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !253, metadata !DIExpression()), !dbg !254
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodB2GData, align 8, !dbg !255
  store i8* %0, i8** %data, align 8, !dbg !254
  %1 = load i8*, i8** %data, align 8, !dbg !256
  %2 = load i8*, i8** %data, align 8, !dbg !257
  call void (i8*, ...) @goodB2GVaSink(i8* %1, i8* %2), !dbg !258
  ret void, !dbg !259
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !260 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !261, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !263, metadata !DIExpression()), !dbg !264
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !264
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !264
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !265
  store i8* %arraydecay, i8** %data, align 8, !dbg !266
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !267, metadata !DIExpression()), !dbg !269
  %1 = load i8*, i8** %data, align 8, !dbg !270
  %call = call i64 @strlen(i8* %1) #8, !dbg !271
  store i64 %call, i64* %dataLen, align 8, !dbg !269
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !272, metadata !DIExpression()), !dbg !273
  %2 = load i64, i64* %dataLen, align 8, !dbg !274
  %sub = sub i64 100, %2, !dbg !276
  %cmp = icmp ugt i64 %sub, 1, !dbg !277
  br i1 %cmp, label %if.then, label %if.end11, !dbg !278

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !279
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !281
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !282
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !284
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !285

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !286
  %5 = load i64, i64* %dataLen, align 8, !dbg !289
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !290
  %6 = load i64, i64* %dataLen, align 8, !dbg !291
  %sub4 = sub i64 100, %6, !dbg !292
  %conv = trunc i64 %sub4 to i32, !dbg !293
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !294
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !295
  %cmp6 = icmp eq i8* %call5, null, !dbg !296
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !297

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !298
  %8 = load i8*, i8** %data, align 8, !dbg !300
  %9 = load i64, i64* %dataLen, align 8, !dbg !301
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !300
  store i8 0, i8* %arrayidx, align 1, !dbg !302
  br label %if.end, !dbg !303

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !304
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !305
  br label %if.end10, !dbg !306

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !307

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !308
  store i8* %11, i8** @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodB2GData, align 8, !dbg !309
  call void @goodB2GSink(), !dbg !310
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_45_good() #0 !dbg !312 {
entry:
  call void @goodG2B(), !dbg !313
  call void @goodB2G(), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !316 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !321
  %0 = load i8*, i8** %line.addr, align 8, !dbg !322
  %cmp = icmp ne i8* %0, null, !dbg !324
  br i1 %cmp, label %if.then, label %if.end, !dbg !325

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !326
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !328
  br label %if.end, !dbg !329

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !330
  ret void, !dbg !331
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !332 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i8*, i8** %line.addr, align 8, !dbg !335
  %cmp = icmp ne i8* %0, null, !dbg !337
  br i1 %cmp, label %if.then, label %if.end, !dbg !338

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !341
  br label %if.end, !dbg !342

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !344 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i32*, i32** %line.addr, align 8, !dbg !351
  %cmp = icmp ne i32* %0, null, !dbg !353
  br i1 %cmp, label %if.then, label %if.end, !dbg !354

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !355
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !357
  br label %if.end, !dbg !358

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !359
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !360 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.9, i64 0, i64 0), i32 %0), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !368 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !374
  %conv = sext i16 %0 to i32, !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.10, i64 0, i64 0), i32 %conv), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !377 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !381, metadata !DIExpression()), !dbg !382
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !383
  %conv = fpext float %0 to double, !dbg !383
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !384
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !386 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !391
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !392
  ret void, !dbg !393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !394 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !402
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !403
  ret void, !dbg !404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !405 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !413 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !418
  %conv = sext i8 %0 to i32, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !421 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !424, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !426, metadata !DIExpression()), !dbg !430
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !431
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !432
  store i32 %0, i32* %arrayidx, align 4, !dbg !433
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !434
  store i32 0, i32* %arrayidx1, align 4, !dbg !435
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !439 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !447 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !452
  %conv = zext i8 %0 to i32, !dbg !452
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !455 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !464 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !476
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !477
  %1 = load i32, i32* %intOne, align 4, !dbg !477
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !478
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !479
  %3 = load i32, i32* %intTwo, align 4, !dbg !479
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !482 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !486, metadata !DIExpression()), !dbg !487
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !488, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.declare(metadata i64* %i, metadata !490, metadata !DIExpression()), !dbg !491
  store i64 0, i64* %i, align 8, !dbg !492
  br label %for.cond, !dbg !494

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !495
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !497
  %cmp = icmp ult i64 %0, %1, !dbg !498
  br i1 %cmp, label %for.body, label %for.end, !dbg !499

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !500
  %3 = load i64, i64* %i, align 8, !dbg !502
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !500
  %4 = load i8, i8* %arrayidx, align 1, !dbg !500
  %conv = zext i8 %4 to i32, !dbg !500
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !503
  br label %for.inc, !dbg !504

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !505
  %inc = add i64 %5, 1, !dbg !505
  store i64 %inc, i64* %i, align 8, !dbg !505
  br label %for.cond, !dbg !506, !llvm.loop !507

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !510
  ret void, !dbg !511
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !512 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !515, metadata !DIExpression()), !dbg !516
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !517, metadata !DIExpression()), !dbg !518
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !521, metadata !DIExpression()), !dbg !522
  store i64 0, i64* %numWritten, align 8, !dbg !522
  br label %while.cond, !dbg !523

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !524
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !525
  %cmp = icmp ult i64 %0, %1, !dbg !526
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !527

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !528
  %2 = load i16*, i16** %call, align 8, !dbg !528
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !528
  %4 = load i64, i64* %numWritten, align 8, !dbg !528
  %mul = mul i64 2, %4, !dbg !528
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !528
  %5 = load i8, i8* %arrayidx, align 1, !dbg !528
  %conv = sext i8 %5 to i32, !dbg !528
  %idxprom = sext i32 %conv to i64, !dbg !528
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !528
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !528
  %conv2 = zext i16 %6 to i32, !dbg !528
  %and = and i32 %conv2, 4096, !dbg !528
  %tobool = icmp ne i32 %and, 0, !dbg !528
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !529

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !530
  %7 = load i16*, i16** %call3, align 8, !dbg !530
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !530
  %9 = load i64, i64* %numWritten, align 8, !dbg !530
  %mul4 = mul i64 2, %9, !dbg !530
  %add = add i64 %mul4, 1, !dbg !530
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !530
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !530
  %conv6 = sext i8 %10 to i32, !dbg !530
  %idxprom7 = sext i32 %conv6 to i64, !dbg !530
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !530
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !530
  %conv9 = zext i16 %11 to i32, !dbg !530
  %and10 = and i32 %conv9, 4096, !dbg !530
  %tobool11 = icmp ne i32 %and10, 0, !dbg !529
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !531
  br i1 %12, label %while.body, label %while.end, !dbg !523

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !532, metadata !DIExpression()), !dbg !534
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !535
  %14 = load i64, i64* %numWritten, align 8, !dbg !536
  %mul12 = mul i64 2, %14, !dbg !537
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !535
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !538
  %15 = load i32, i32* %byte, align 4, !dbg !539
  %conv15 = trunc i32 %15 to i8, !dbg !540
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !541
  %17 = load i64, i64* %numWritten, align 8, !dbg !542
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !541
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !543
  %18 = load i64, i64* %numWritten, align 8, !dbg !544
  %inc = add i64 %18, 1, !dbg !544
  store i64 %inc, i64* %numWritten, align 8, !dbg !544
  br label %while.cond, !dbg !523, !llvm.loop !545

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !547
  ret i64 %19, !dbg !548
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !549 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !552, metadata !DIExpression()), !dbg !553
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !554, metadata !DIExpression()), !dbg !555
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !556, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !558, metadata !DIExpression()), !dbg !559
  store i64 0, i64* %numWritten, align 8, !dbg !559
  br label %while.cond, !dbg !560

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !561
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !562
  %cmp = icmp ult i64 %0, %1, !dbg !563
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !564

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !565
  %3 = load i64, i64* %numWritten, align 8, !dbg !566
  %mul = mul i64 2, %3, !dbg !567
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !565
  %4 = load i32, i32* %arrayidx, align 4, !dbg !565
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !568
  %tobool = icmp ne i32 %call, 0, !dbg !568
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !569

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !570
  %6 = load i64, i64* %numWritten, align 8, !dbg !571
  %mul1 = mul i64 2, %6, !dbg !572
  %add = add i64 %mul1, 1, !dbg !573
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !570
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !570
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !574
  %tobool4 = icmp ne i32 %call3, 0, !dbg !569
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !575
  br i1 %8, label %while.body, label %while.end, !dbg !560

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !576, metadata !DIExpression()), !dbg !578
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !579
  %10 = load i64, i64* %numWritten, align 8, !dbg !580
  %mul5 = mul i64 2, %10, !dbg !581
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !579
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !582
  %11 = load i32, i32* %byte, align 4, !dbg !583
  %conv = trunc i32 %11 to i8, !dbg !584
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !585
  %13 = load i64, i64* %numWritten, align 8, !dbg !586
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !585
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !587
  %14 = load i64, i64* %numWritten, align 8, !dbg !588
  %inc = add i64 %14, 1, !dbg !588
  store i64 %inc, i64* %numWritten, align 8, !dbg !588
  br label %while.cond, !dbg !560, !llvm.loop !589

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !591
  ret i64 %15, !dbg !592
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !593 {
entry:
  ret i32 1, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !597 {
entry:
  ret i32 0, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !599 {
entry:
  %call = call i32 @rand() #9, !dbg !600
  %rem = srem i32 %call, 2, !dbg !601
  ret i32 %rem, !dbg !602
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !633 {
entry:
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !635 {
entry:
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !637 {
entry:
  ret void, !dbg !638
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
!llvm.ident = !{!55, !55}
!llvm.module.flags = !{!56, !57, !58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_45_badData", scope: !2, file: !3, line: 32, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_vprintf_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_182/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodG2BData", scope: !2, file: !3, line: 33, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_45_goodB2GData", scope: !2, file: !3, line: 34, type: !11, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !7, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_182/source_code")
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
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!55 = !{!"clang version 12.0.0"}
!56 = !{i32 7, !"Dwarf Version", i32 4}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = distinct !DISubprogram(name: "badVaSink", scope: !3, file: !3, line: 38, type: !60, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !11, null}
!62 = !DILocalVariable(name: "data", arg: 1, scope: !59, file: !3, line: 38, type: !11)
!63 = !DILocation(line: 38, column: 23, scope: !59)
!64 = !DILocalVariable(name: "args", scope: !65, file: !3, line: 41, type: !66)
!65 = distinct !DILexicalBlock(scope: !59, file: !3, line: 40, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !67, line: 52, baseType: !68)
!67 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !69, line: 32, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 192, elements: !78)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !72, file: !3, line: 41, baseType: !22, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !72, file: !3, line: 41, baseType: !22, size: 32, offset: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !72, file: !3, line: 41, baseType: !6, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !72, file: !3, line: 41, baseType: !6, size: 64, offset: 128)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DILocation(line: 41, column: 17, scope: !65)
!81 = !DILocation(line: 42, column: 9, scope: !65)
!82 = !DILocation(line: 44, column: 17, scope: !65)
!83 = !DILocation(line: 44, column: 23, scope: !65)
!84 = !DILocation(line: 44, column: 9, scope: !65)
!85 = !DILocation(line: 45, column: 9, scope: !65)
!86 = !DILocation(line: 47, column: 1, scope: !59)
!87 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 49, type: !88, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!88 = !DISubroutineType(types: !89)
!89 = !{null}
!90 = !DILocalVariable(name: "data", scope: !87, file: !3, line: 51, type: !11)
!91 = !DILocation(line: 51, column: 12, scope: !87)
!92 = !DILocation(line: 51, column: 19, scope: !87)
!93 = !DILocation(line: 52, column: 15, scope: !87)
!94 = !DILocation(line: 52, column: 21, scope: !87)
!95 = !DILocation(line: 52, column: 5, scope: !87)
!96 = !DILocation(line: 53, column: 1, scope: !87)
!97 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_45_bad", scope: !3, file: !3, line: 55, type: !88, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!98 = !DILocalVariable(name: "data", scope: !97, file: !3, line: 57, type: !11)
!99 = !DILocation(line: 57, column: 12, scope: !97)
!100 = !DILocalVariable(name: "dataBuffer", scope: !97, file: !3, line: 58, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 100)
!104 = !DILocation(line: 58, column: 10, scope: !97)
!105 = !DILocation(line: 59, column: 12, scope: !97)
!106 = !DILocation(line: 59, column: 10, scope: !97)
!107 = !DILocalVariable(name: "dataLen", scope: !108, file: !3, line: 62, type: !109)
!108 = distinct !DILexicalBlock(scope: !97, file: !3, line: 60, column: 5)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 46, baseType: !111)
!110 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !DILocation(line: 62, column: 16, scope: !108)
!113 = !DILocation(line: 62, column: 33, scope: !108)
!114 = !DILocation(line: 62, column: 26, scope: !108)
!115 = !DILocalVariable(name: "pFile", scope: !108, file: !3, line: 63, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !118, line: 7, baseType: !119)
!118 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !120, line: 49, size: 1728, elements: !121)
!120 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !137, !139, !140, !141, !145, !146, !148, !150, !153, !155, !158, !161, !162, !163, !164, !165}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !119, file: !120, line: 51, baseType: !7, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !119, file: !120, line: 54, baseType: !11, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !119, file: !120, line: 55, baseType: !11, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !119, file: !120, line: 56, baseType: !11, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !119, file: !120, line: 57, baseType: !11, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !119, file: !120, line: 58, baseType: !11, size: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !119, file: !120, line: 59, baseType: !11, size: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !119, file: !120, line: 60, baseType: !11, size: 64, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !119, file: !120, line: 61, baseType: !11, size: 64, offset: 512)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !119, file: !120, line: 64, baseType: !11, size: 64, offset: 576)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !119, file: !120, line: 65, baseType: !11, size: 64, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !119, file: !120, line: 66, baseType: !11, size: 64, offset: 704)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !119, file: !120, line: 68, baseType: !135, size: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !120, line: 36, flags: DIFlagFwdDecl)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !119, file: !120, line: 70, baseType: !138, size: 64, offset: 832)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !119, file: !120, line: 72, baseType: !7, size: 32, offset: 896)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !119, file: !120, line: 73, baseType: !7, size: 32, offset: 928)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !119, file: !120, line: 74, baseType: !142, size: 64, offset: 960)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !143, line: 152, baseType: !144)
!143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!144 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !119, file: !120, line: 77, baseType: !37, size: 16, offset: 1024)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !119, file: !120, line: 78, baseType: !147, size: 8, offset: 1040)
!147 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !119, file: !120, line: 79, baseType: !149, size: 8, offset: 1048)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !78)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !119, file: !120, line: 81, baseType: !151, size: 64, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !120, line: 43, baseType: null)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !119, file: !120, line: 89, baseType: !154, size: 64, offset: 1152)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !143, line: 153, baseType: !144)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !119, file: !120, line: 91, baseType: !156, size: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !120, line: 37, flags: DIFlagFwdDecl)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !119, file: !120, line: 92, baseType: !159, size: 64, offset: 1280)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !120, line: 38, flags: DIFlagFwdDecl)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !119, file: !120, line: 93, baseType: !138, size: 64, offset: 1344)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !119, file: !120, line: 94, baseType: !6, size: 64, offset: 1408)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !119, file: !120, line: 95, baseType: !109, size: 64, offset: 1472)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !119, file: !120, line: 96, baseType: !7, size: 32, offset: 1536)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !119, file: !120, line: 98, baseType: !166, size: 160, offset: 1568)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 20)
!169 = !DILocation(line: 63, column: 16, scope: !108)
!170 = !DILocation(line: 65, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !108, file: !3, line: 65, column: 13)
!172 = !DILocation(line: 65, column: 16, scope: !171)
!173 = !DILocation(line: 65, column: 25, scope: !171)
!174 = !DILocation(line: 65, column: 13, scope: !108)
!175 = !DILocation(line: 67, column: 21, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !3, line: 66, column: 9)
!177 = !DILocation(line: 67, column: 19, scope: !176)
!178 = !DILocation(line: 68, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 68, column: 17)
!180 = !DILocation(line: 68, column: 23, scope: !179)
!181 = !DILocation(line: 68, column: 17, scope: !176)
!182 = !DILocation(line: 71, column: 27, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 71, column: 21)
!184 = distinct !DILexicalBlock(scope: !179, file: !3, line: 69, column: 13)
!185 = !DILocation(line: 71, column: 32, scope: !183)
!186 = !DILocation(line: 71, column: 31, scope: !183)
!187 = !DILocation(line: 71, column: 51, scope: !183)
!188 = !DILocation(line: 71, column: 50, scope: !183)
!189 = !DILocation(line: 71, column: 41, scope: !183)
!190 = !DILocation(line: 71, column: 61, scope: !183)
!191 = !DILocation(line: 71, column: 21, scope: !183)
!192 = !DILocation(line: 71, column: 68, scope: !183)
!193 = !DILocation(line: 71, column: 21, scope: !184)
!194 = !DILocation(line: 73, column: 21, scope: !195)
!195 = distinct !DILexicalBlock(scope: !183, file: !3, line: 72, column: 17)
!196 = !DILocation(line: 75, column: 21, scope: !195)
!197 = !DILocation(line: 75, column: 26, scope: !195)
!198 = !DILocation(line: 75, column: 35, scope: !195)
!199 = !DILocation(line: 76, column: 17, scope: !195)
!200 = !DILocation(line: 77, column: 24, scope: !184)
!201 = !DILocation(line: 77, column: 17, scope: !184)
!202 = !DILocation(line: 78, column: 13, scope: !184)
!203 = !DILocation(line: 79, column: 9, scope: !176)
!204 = !DILocation(line: 81, column: 71, scope: !97)
!205 = !DILocation(line: 81, column: 69, scope: !97)
!206 = !DILocation(line: 82, column: 5, scope: !97)
!207 = !DILocation(line: 83, column: 1, scope: !97)
!208 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !3, file: !3, line: 90, type: !60, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!209 = !DILocalVariable(name: "data", arg: 1, scope: !208, file: !3, line: 90, type: !11)
!210 = !DILocation(line: 90, column: 27, scope: !208)
!211 = !DILocalVariable(name: "args", scope: !212, file: !3, line: 93, type: !66)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 92, column: 5)
!213 = !DILocation(line: 93, column: 17, scope: !212)
!214 = !DILocation(line: 94, column: 9, scope: !212)
!215 = !DILocation(line: 96, column: 17, scope: !212)
!216 = !DILocation(line: 96, column: 23, scope: !212)
!217 = !DILocation(line: 96, column: 9, scope: !212)
!218 = !DILocation(line: 97, column: 9, scope: !212)
!219 = !DILocation(line: 99, column: 1, scope: !208)
!220 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 101, type: !88, scopeLine: 102, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!221 = !DILocalVariable(name: "data", scope: !220, file: !3, line: 103, type: !11)
!222 = !DILocation(line: 103, column: 12, scope: !220)
!223 = !DILocation(line: 103, column: 19, scope: !220)
!224 = !DILocation(line: 104, column: 19, scope: !220)
!225 = !DILocation(line: 104, column: 25, scope: !220)
!226 = !DILocation(line: 104, column: 5, scope: !220)
!227 = !DILocation(line: 105, column: 1, scope: !220)
!228 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 107, type: !88, scopeLine: 108, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!229 = !DILocalVariable(name: "data", scope: !228, file: !3, line: 109, type: !11)
!230 = !DILocation(line: 109, column: 12, scope: !228)
!231 = !DILocalVariable(name: "dataBuffer", scope: !228, file: !3, line: 110, type: !101)
!232 = !DILocation(line: 110, column: 10, scope: !228)
!233 = !DILocation(line: 111, column: 12, scope: !228)
!234 = !DILocation(line: 111, column: 10, scope: !228)
!235 = !DILocation(line: 113, column: 12, scope: !228)
!236 = !DILocation(line: 113, column: 5, scope: !228)
!237 = !DILocation(line: 114, column: 75, scope: !228)
!238 = !DILocation(line: 114, column: 73, scope: !228)
!239 = !DILocation(line: 115, column: 5, scope: !228)
!240 = !DILocation(line: 116, column: 1, scope: !228)
!241 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !3, file: !3, line: 119, type: !60, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!242 = !DILocalVariable(name: "data", arg: 1, scope: !241, file: !3, line: 119, type: !11)
!243 = !DILocation(line: 119, column: 27, scope: !241)
!244 = !DILocalVariable(name: "args", scope: !245, file: !3, line: 122, type: !66)
!245 = distinct !DILexicalBlock(scope: !241, file: !3, line: 121, column: 5)
!246 = !DILocation(line: 122, column: 17, scope: !245)
!247 = !DILocation(line: 123, column: 9, scope: !245)
!248 = !DILocation(line: 125, column: 23, scope: !245)
!249 = !DILocation(line: 125, column: 9, scope: !245)
!250 = !DILocation(line: 126, column: 9, scope: !245)
!251 = !DILocation(line: 128, column: 1, scope: !241)
!252 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 130, type: !88, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!253 = !DILocalVariable(name: "data", scope: !252, file: !3, line: 132, type: !11)
!254 = !DILocation(line: 132, column: 12, scope: !252)
!255 = !DILocation(line: 132, column: 19, scope: !252)
!256 = !DILocation(line: 133, column: 19, scope: !252)
!257 = !DILocation(line: 133, column: 25, scope: !252)
!258 = !DILocation(line: 133, column: 5, scope: !252)
!259 = !DILocation(line: 134, column: 1, scope: !252)
!260 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 136, type: !88, scopeLine: 137, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!261 = !DILocalVariable(name: "data", scope: !260, file: !3, line: 138, type: !11)
!262 = !DILocation(line: 138, column: 12, scope: !260)
!263 = !DILocalVariable(name: "dataBuffer", scope: !260, file: !3, line: 139, type: !101)
!264 = !DILocation(line: 139, column: 10, scope: !260)
!265 = !DILocation(line: 140, column: 12, scope: !260)
!266 = !DILocation(line: 140, column: 10, scope: !260)
!267 = !DILocalVariable(name: "dataLen", scope: !268, file: !3, line: 143, type: !109)
!268 = distinct !DILexicalBlock(scope: !260, file: !3, line: 141, column: 5)
!269 = !DILocation(line: 143, column: 16, scope: !268)
!270 = !DILocation(line: 143, column: 33, scope: !268)
!271 = !DILocation(line: 143, column: 26, scope: !268)
!272 = !DILocalVariable(name: "pFile", scope: !268, file: !3, line: 144, type: !116)
!273 = !DILocation(line: 144, column: 16, scope: !268)
!274 = !DILocation(line: 146, column: 17, scope: !275)
!275 = distinct !DILexicalBlock(scope: !268, file: !3, line: 146, column: 13)
!276 = !DILocation(line: 146, column: 16, scope: !275)
!277 = !DILocation(line: 146, column: 25, scope: !275)
!278 = !DILocation(line: 146, column: 13, scope: !268)
!279 = !DILocation(line: 148, column: 21, scope: !280)
!280 = distinct !DILexicalBlock(scope: !275, file: !3, line: 147, column: 9)
!281 = !DILocation(line: 148, column: 19, scope: !280)
!282 = !DILocation(line: 149, column: 17, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 149, column: 17)
!284 = !DILocation(line: 149, column: 23, scope: !283)
!285 = !DILocation(line: 149, column: 17, scope: !280)
!286 = !DILocation(line: 152, column: 27, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 152, column: 21)
!288 = distinct !DILexicalBlock(scope: !283, file: !3, line: 150, column: 13)
!289 = !DILocation(line: 152, column: 32, scope: !287)
!290 = !DILocation(line: 152, column: 31, scope: !287)
!291 = !DILocation(line: 152, column: 51, scope: !287)
!292 = !DILocation(line: 152, column: 50, scope: !287)
!293 = !DILocation(line: 152, column: 41, scope: !287)
!294 = !DILocation(line: 152, column: 61, scope: !287)
!295 = !DILocation(line: 152, column: 21, scope: !287)
!296 = !DILocation(line: 152, column: 68, scope: !287)
!297 = !DILocation(line: 152, column: 21, scope: !288)
!298 = !DILocation(line: 154, column: 21, scope: !299)
!299 = distinct !DILexicalBlock(scope: !287, file: !3, line: 153, column: 17)
!300 = !DILocation(line: 156, column: 21, scope: !299)
!301 = !DILocation(line: 156, column: 26, scope: !299)
!302 = !DILocation(line: 156, column: 35, scope: !299)
!303 = !DILocation(line: 157, column: 17, scope: !299)
!304 = !DILocation(line: 158, column: 24, scope: !288)
!305 = !DILocation(line: 158, column: 17, scope: !288)
!306 = !DILocation(line: 159, column: 13, scope: !288)
!307 = !DILocation(line: 160, column: 9, scope: !280)
!308 = !DILocation(line: 162, column: 75, scope: !260)
!309 = !DILocation(line: 162, column: 73, scope: !260)
!310 = !DILocation(line: 163, column: 5, scope: !260)
!311 = !DILocation(line: 164, column: 1, scope: !260)
!312 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_45_good", scope: !3, file: !3, line: 166, type: !88, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!313 = !DILocation(line: 168, column: 5, scope: !312)
!314 = !DILocation(line: 169, column: 5, scope: !312)
!315 = !DILocation(line: 170, column: 1, scope: !312)
!316 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !317, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !11}
!319 = !DILocalVariable(name: "line", arg: 1, scope: !316, file: !18, line: 11, type: !11)
!320 = !DILocation(line: 11, column: 25, scope: !316)
!321 = !DILocation(line: 13, column: 1, scope: !316)
!322 = !DILocation(line: 14, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !316, file: !18, line: 14, column: 8)
!324 = !DILocation(line: 14, column: 13, scope: !323)
!325 = !DILocation(line: 14, column: 8, scope: !316)
!326 = !DILocation(line: 16, column: 24, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !18, line: 15, column: 5)
!328 = !DILocation(line: 16, column: 9, scope: !327)
!329 = !DILocation(line: 17, column: 5, scope: !327)
!330 = !DILocation(line: 18, column: 5, scope: !316)
!331 = !DILocation(line: 19, column: 1, scope: !316)
!332 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !317, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!333 = !DILocalVariable(name: "line", arg: 1, scope: !332, file: !18, line: 20, type: !11)
!334 = !DILocation(line: 20, column: 29, scope: !332)
!335 = !DILocation(line: 22, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !18, line: 22, column: 8)
!337 = !DILocation(line: 22, column: 13, scope: !336)
!338 = !DILocation(line: 22, column: 8, scope: !332)
!339 = !DILocation(line: 24, column: 24, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !18, line: 23, column: 5)
!341 = !DILocation(line: 24, column: 9, scope: !340)
!342 = !DILocation(line: 25, column: 5, scope: !340)
!343 = !DILocation(line: 26, column: 1, scope: !332)
!344 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !345, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !110, line: 74, baseType: !7)
!349 = !DILocalVariable(name: "line", arg: 1, scope: !344, file: !18, line: 27, type: !347)
!350 = !DILocation(line: 27, column: 29, scope: !344)
!351 = !DILocation(line: 29, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !344, file: !18, line: 29, column: 8)
!353 = !DILocation(line: 29, column: 13, scope: !352)
!354 = !DILocation(line: 29, column: 8, scope: !344)
!355 = !DILocation(line: 31, column: 27, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !18, line: 30, column: 5)
!357 = !DILocation(line: 31, column: 9, scope: !356)
!358 = !DILocation(line: 32, column: 5, scope: !356)
!359 = !DILocation(line: 33, column: 1, scope: !344)
!360 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !361, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !7}
!363 = !DILocalVariable(name: "intNumber", arg: 1, scope: !360, file: !18, line: 35, type: !7)
!364 = !DILocation(line: 35, column: 24, scope: !360)
!365 = !DILocation(line: 37, column: 20, scope: !360)
!366 = !DILocation(line: 37, column: 5, scope: !360)
!367 = !DILocation(line: 38, column: 1, scope: !360)
!368 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !369, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371}
!371 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!372 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !368, file: !18, line: 40, type: !371)
!373 = !DILocation(line: 40, column: 28, scope: !368)
!374 = !DILocation(line: 42, column: 21, scope: !368)
!375 = !DILocation(line: 42, column: 5, scope: !368)
!376 = !DILocation(line: 43, column: 1, scope: !368)
!377 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !378, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380}
!380 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!381 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !377, file: !18, line: 45, type: !380)
!382 = !DILocation(line: 45, column: 28, scope: !377)
!383 = !DILocation(line: 47, column: 20, scope: !377)
!384 = !DILocation(line: 47, column: 5, scope: !377)
!385 = !DILocation(line: 48, column: 1, scope: !377)
!386 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !387, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !144}
!389 = !DILocalVariable(name: "longNumber", arg: 1, scope: !386, file: !18, line: 50, type: !144)
!390 = !DILocation(line: 50, column: 26, scope: !386)
!391 = !DILocation(line: 52, column: 21, scope: !386)
!392 = !DILocation(line: 52, column: 5, scope: !386)
!393 = !DILocation(line: 53, column: 1, scope: !386)
!394 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !395, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !398, line: 27, baseType: !399)
!398 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !143, line: 44, baseType: !144)
!400 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !394, file: !18, line: 55, type: !397)
!401 = !DILocation(line: 55, column: 33, scope: !394)
!402 = !DILocation(line: 57, column: 29, scope: !394)
!403 = !DILocation(line: 57, column: 5, scope: !394)
!404 = !DILocation(line: 58, column: 1, scope: !394)
!405 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !406, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !109}
!408 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !405, file: !18, line: 60, type: !109)
!409 = !DILocation(line: 60, column: 29, scope: !405)
!410 = !DILocation(line: 62, column: 21, scope: !405)
!411 = !DILocation(line: 62, column: 5, scope: !405)
!412 = !DILocation(line: 63, column: 1, scope: !405)
!413 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !414, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !12}
!416 = !DILocalVariable(name: "charHex", arg: 1, scope: !413, file: !18, line: 65, type: !12)
!417 = !DILocation(line: 65, column: 29, scope: !413)
!418 = !DILocation(line: 67, column: 22, scope: !413)
!419 = !DILocation(line: 67, column: 5, scope: !413)
!420 = !DILocation(line: 68, column: 1, scope: !413)
!421 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !422, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !348}
!424 = !DILocalVariable(name: "wideChar", arg: 1, scope: !421, file: !18, line: 70, type: !348)
!425 = !DILocation(line: 70, column: 29, scope: !421)
!426 = !DILocalVariable(name: "s", scope: !421, file: !18, line: 74, type: !427)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 64, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 2)
!430 = !DILocation(line: 74, column: 13, scope: !421)
!431 = !DILocation(line: 75, column: 16, scope: !421)
!432 = !DILocation(line: 75, column: 9, scope: !421)
!433 = !DILocation(line: 75, column: 14, scope: !421)
!434 = !DILocation(line: 76, column: 9, scope: !421)
!435 = !DILocation(line: 76, column: 14, scope: !421)
!436 = !DILocation(line: 77, column: 21, scope: !421)
!437 = !DILocation(line: 77, column: 5, scope: !421)
!438 = !DILocation(line: 78, column: 1, scope: !421)
!439 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !440, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !22}
!442 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !439, file: !18, line: 80, type: !22)
!443 = !DILocation(line: 80, column: 33, scope: !439)
!444 = !DILocation(line: 82, column: 20, scope: !439)
!445 = !DILocation(line: 82, column: 5, scope: !439)
!446 = !DILocation(line: 83, column: 1, scope: !439)
!447 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !448, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !38}
!450 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !447, file: !18, line: 85, type: !38)
!451 = !DILocation(line: 85, column: 45, scope: !447)
!452 = !DILocation(line: 87, column: 22, scope: !447)
!453 = !DILocation(line: 87, column: 5, scope: !447)
!454 = !DILocation(line: 88, column: 1, scope: !447)
!455 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !456, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458}
!458 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!459 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !455, file: !18, line: 90, type: !458)
!460 = !DILocation(line: 90, column: 29, scope: !455)
!461 = !DILocation(line: 92, column: 20, scope: !455)
!462 = !DILocation(line: 92, column: 5, scope: !455)
!463 = !DILocation(line: 93, column: 1, scope: !455)
!464 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !465, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !469, line: 100, baseType: !470)
!469 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_182/source_code")
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !469, line: 96, size: 64, elements: !471)
!471 = !{!472, !473}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !470, file: !469, line: 98, baseType: !7, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !470, file: !469, line: 99, baseType: !7, size: 32, offset: 32)
!474 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !464, file: !18, line: 95, type: !467)
!475 = !DILocation(line: 95, column: 40, scope: !464)
!476 = !DILocation(line: 97, column: 26, scope: !464)
!477 = !DILocation(line: 97, column: 47, scope: !464)
!478 = !DILocation(line: 97, column: 55, scope: !464)
!479 = !DILocation(line: 97, column: 76, scope: !464)
!480 = !DILocation(line: 97, column: 5, scope: !464)
!481 = !DILocation(line: 98, column: 1, scope: !464)
!482 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !483, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !485, !109}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!486 = !DILocalVariable(name: "bytes", arg: 1, scope: !482, file: !18, line: 100, type: !485)
!487 = !DILocation(line: 100, column: 38, scope: !482)
!488 = !DILocalVariable(name: "numBytes", arg: 2, scope: !482, file: !18, line: 100, type: !109)
!489 = !DILocation(line: 100, column: 52, scope: !482)
!490 = !DILocalVariable(name: "i", scope: !482, file: !18, line: 102, type: !109)
!491 = !DILocation(line: 102, column: 12, scope: !482)
!492 = !DILocation(line: 103, column: 12, scope: !493)
!493 = distinct !DILexicalBlock(scope: !482, file: !18, line: 103, column: 5)
!494 = !DILocation(line: 103, column: 10, scope: !493)
!495 = !DILocation(line: 103, column: 17, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !18, line: 103, column: 5)
!497 = !DILocation(line: 103, column: 21, scope: !496)
!498 = !DILocation(line: 103, column: 19, scope: !496)
!499 = !DILocation(line: 103, column: 5, scope: !493)
!500 = !DILocation(line: 105, column: 24, scope: !501)
!501 = distinct !DILexicalBlock(scope: !496, file: !18, line: 104, column: 5)
!502 = !DILocation(line: 105, column: 30, scope: !501)
!503 = !DILocation(line: 105, column: 9, scope: !501)
!504 = !DILocation(line: 106, column: 5, scope: !501)
!505 = !DILocation(line: 103, column: 31, scope: !496)
!506 = !DILocation(line: 103, column: 5, scope: !496)
!507 = distinct !{!507, !499, !508, !509}
!508 = !DILocation(line: 106, column: 5, scope: !493)
!509 = !{!"llvm.loop.mustprogress"}
!510 = !DILocation(line: 107, column: 5, scope: !482)
!511 = !DILocation(line: 108, column: 1, scope: !482)
!512 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !513, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!513 = !DISubroutineType(types: !514)
!514 = !{!109, !485, !109, !11}
!515 = !DILocalVariable(name: "bytes", arg: 1, scope: !512, file: !18, line: 113, type: !485)
!516 = !DILocation(line: 113, column: 39, scope: !512)
!517 = !DILocalVariable(name: "numBytes", arg: 2, scope: !512, file: !18, line: 113, type: !109)
!518 = !DILocation(line: 113, column: 53, scope: !512)
!519 = !DILocalVariable(name: "hex", arg: 3, scope: !512, file: !18, line: 113, type: !11)
!520 = !DILocation(line: 113, column: 71, scope: !512)
!521 = !DILocalVariable(name: "numWritten", scope: !512, file: !18, line: 115, type: !109)
!522 = !DILocation(line: 115, column: 12, scope: !512)
!523 = !DILocation(line: 121, column: 5, scope: !512)
!524 = !DILocation(line: 121, column: 12, scope: !512)
!525 = !DILocation(line: 121, column: 25, scope: !512)
!526 = !DILocation(line: 121, column: 23, scope: !512)
!527 = !DILocation(line: 121, column: 34, scope: !512)
!528 = !DILocation(line: 121, column: 37, scope: !512)
!529 = !DILocation(line: 121, column: 67, scope: !512)
!530 = !DILocation(line: 121, column: 70, scope: !512)
!531 = !DILocation(line: 0, scope: !512)
!532 = !DILocalVariable(name: "byte", scope: !533, file: !18, line: 123, type: !7)
!533 = distinct !DILexicalBlock(scope: !512, file: !18, line: 122, column: 5)
!534 = !DILocation(line: 123, column: 13, scope: !533)
!535 = !DILocation(line: 124, column: 17, scope: !533)
!536 = !DILocation(line: 124, column: 25, scope: !533)
!537 = !DILocation(line: 124, column: 23, scope: !533)
!538 = !DILocation(line: 124, column: 9, scope: !533)
!539 = !DILocation(line: 125, column: 45, scope: !533)
!540 = !DILocation(line: 125, column: 29, scope: !533)
!541 = !DILocation(line: 125, column: 9, scope: !533)
!542 = !DILocation(line: 125, column: 15, scope: !533)
!543 = !DILocation(line: 125, column: 27, scope: !533)
!544 = !DILocation(line: 126, column: 9, scope: !533)
!545 = distinct !{!545, !523, !546, !509}
!546 = !DILocation(line: 127, column: 5, scope: !512)
!547 = !DILocation(line: 129, column: 12, scope: !512)
!548 = !DILocation(line: 129, column: 5, scope: !512)
!549 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !550, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!550 = !DISubroutineType(types: !551)
!551 = !{!109, !485, !109, !347}
!552 = !DILocalVariable(name: "bytes", arg: 1, scope: !549, file: !18, line: 135, type: !485)
!553 = !DILocation(line: 135, column: 41, scope: !549)
!554 = !DILocalVariable(name: "numBytes", arg: 2, scope: !549, file: !18, line: 135, type: !109)
!555 = !DILocation(line: 135, column: 55, scope: !549)
!556 = !DILocalVariable(name: "hex", arg: 3, scope: !549, file: !18, line: 135, type: !347)
!557 = !DILocation(line: 135, column: 76, scope: !549)
!558 = !DILocalVariable(name: "numWritten", scope: !549, file: !18, line: 137, type: !109)
!559 = !DILocation(line: 137, column: 12, scope: !549)
!560 = !DILocation(line: 143, column: 5, scope: !549)
!561 = !DILocation(line: 143, column: 12, scope: !549)
!562 = !DILocation(line: 143, column: 25, scope: !549)
!563 = !DILocation(line: 143, column: 23, scope: !549)
!564 = !DILocation(line: 143, column: 34, scope: !549)
!565 = !DILocation(line: 143, column: 47, scope: !549)
!566 = !DILocation(line: 143, column: 55, scope: !549)
!567 = !DILocation(line: 143, column: 53, scope: !549)
!568 = !DILocation(line: 143, column: 37, scope: !549)
!569 = !DILocation(line: 143, column: 68, scope: !549)
!570 = !DILocation(line: 143, column: 81, scope: !549)
!571 = !DILocation(line: 143, column: 89, scope: !549)
!572 = !DILocation(line: 143, column: 87, scope: !549)
!573 = !DILocation(line: 143, column: 100, scope: !549)
!574 = !DILocation(line: 143, column: 71, scope: !549)
!575 = !DILocation(line: 0, scope: !549)
!576 = !DILocalVariable(name: "byte", scope: !577, file: !18, line: 145, type: !7)
!577 = distinct !DILexicalBlock(scope: !549, file: !18, line: 144, column: 5)
!578 = !DILocation(line: 145, column: 13, scope: !577)
!579 = !DILocation(line: 146, column: 18, scope: !577)
!580 = !DILocation(line: 146, column: 26, scope: !577)
!581 = !DILocation(line: 146, column: 24, scope: !577)
!582 = !DILocation(line: 146, column: 9, scope: !577)
!583 = !DILocation(line: 147, column: 45, scope: !577)
!584 = !DILocation(line: 147, column: 29, scope: !577)
!585 = !DILocation(line: 147, column: 9, scope: !577)
!586 = !DILocation(line: 147, column: 15, scope: !577)
!587 = !DILocation(line: 147, column: 27, scope: !577)
!588 = !DILocation(line: 148, column: 9, scope: !577)
!589 = distinct !{!589, !560, !590, !509}
!590 = !DILocation(line: 149, column: 5, scope: !549)
!591 = !DILocation(line: 151, column: 12, scope: !549)
!592 = !DILocation(line: 151, column: 5, scope: !549)
!593 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !594, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!594 = !DISubroutineType(types: !595)
!595 = !{!7}
!596 = !DILocation(line: 158, column: 5, scope: !593)
!597 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !594, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!598 = !DILocation(line: 163, column: 5, scope: !597)
!599 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !594, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!600 = !DILocation(line: 168, column: 13, scope: !599)
!601 = !DILocation(line: 168, column: 20, scope: !599)
!602 = !DILocation(line: 168, column: 5, scope: !599)
!603 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !88, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!604 = !DILocation(line: 187, column: 16, scope: !603)
!605 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !88, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!606 = !DILocation(line: 188, column: 16, scope: !605)
!607 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !88, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!608 = !DILocation(line: 189, column: 16, scope: !607)
!609 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !88, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!610 = !DILocation(line: 190, column: 16, scope: !609)
!611 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !88, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!612 = !DILocation(line: 191, column: 16, scope: !611)
!613 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !88, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!614 = !DILocation(line: 192, column: 16, scope: !613)
!615 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !88, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!616 = !DILocation(line: 193, column: 16, scope: !615)
!617 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !88, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!618 = !DILocation(line: 194, column: 16, scope: !617)
!619 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !88, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!620 = !DILocation(line: 195, column: 16, scope: !619)
!621 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !88, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!622 = !DILocation(line: 198, column: 15, scope: !621)
!623 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !88, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!624 = !DILocation(line: 199, column: 15, scope: !623)
!625 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !88, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!626 = !DILocation(line: 200, column: 15, scope: !625)
!627 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !88, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!628 = !DILocation(line: 201, column: 15, scope: !627)
!629 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !88, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!630 = !DILocation(line: 202, column: 15, scope: !629)
!631 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !88, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!632 = !DILocation(line: 203, column: 15, scope: !631)
!633 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !88, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!634 = !DILocation(line: 204, column: 15, scope: !633)
!635 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !88, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!636 = !DILocation(line: 205, column: 15, scope: !635)
!637 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !88, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!638 = !DILocation(line: 206, column: 15, scope: !637)
