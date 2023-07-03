; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%union.CWE134_Uncontrolled_Format_String__char_file_vprintf_34_unionType = type { i8* }
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_34_bad() #0 !dbg !80 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %dataCopy = alloca i8*, align 8
  %data12 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !85, metadata !DIExpression()), !dbg !89
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !89
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !89
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !90
  store i8* %arraydecay, i8** %data, align 8, !dbg !91
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !92, metadata !DIExpression()), !dbg !97
  %1 = load i8*, i8** %data, align 8, !dbg !98
  %call = call i64 @strlen(i8* %1) #8, !dbg !99
  store i64 %call, i64* %dataLen, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !100, metadata !DIExpression()), !dbg !154
  %2 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub = sub i64 100, %2, !dbg !157
  %cmp = icmp ugt i64 %sub, 1, !dbg !158
  br i1 %cmp, label %if.then, label %if.end11, !dbg !159

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !160
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !162
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !163
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !165
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !166

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !167
  %5 = load i64, i64* %dataLen, align 8, !dbg !170
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !171
  %6 = load i64, i64* %dataLen, align 8, !dbg !172
  %sub4 = sub i64 100, %6, !dbg !173
  %conv = trunc i64 %sub4 to i32, !dbg !174
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !175
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !176
  %cmp6 = icmp eq i8* %call5, null, !dbg !177
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !178

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !179
  %8 = load i8*, i8** %data, align 8, !dbg !181
  %9 = load i64, i64* %dataLen, align 8, !dbg !182
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !181
  store i8 0, i8* %arrayidx, align 1, !dbg !183
  br label %if.end, !dbg !184

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !185
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !186
  br label %if.end10, !dbg !187

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !188

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !189, metadata !DIExpression()), !dbg !191
  %11 = load i8*, i8** %data, align 8, !dbg !192
  store i8* %11, i8** %dataCopy, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata i8** %data12, metadata !193, metadata !DIExpression()), !dbg !194
  %12 = load i8*, i8** %dataCopy, align 8, !dbg !195
  store i8* %12, i8** %data12, align 8, !dbg !194
  %13 = load i8*, i8** %data12, align 8, !dbg !196
  %14 = load i8*, i8** %data12, align 8, !dbg !197
  call void (i8*, ...) @badVaSink(i8* %13, i8* %14), !dbg !198
  ret void, !dbg !199
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !200 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !203, metadata !DIExpression()), !dbg !205
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !206
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !206
  call void @llvm.va_start(i8* %arraydecay1), !dbg !206
  %0 = load i8*, i8** %data.addr, align 8, !dbg !207
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !208
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !209
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !210
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !210
  call void @llvm.va_end(i8* %arraydecay34), !dbg !210
  ret void, !dbg !211
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !212 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE134_Uncontrolled_Format_String__char_file_vprintf_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata %union.CWE134_Uncontrolled_Format_String__char_file_vprintf_34_unionType* %myUnion, metadata !215, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !223, metadata !DIExpression()), !dbg !224
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !224
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !224
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !225
  store i8* %arraydecay, i8** %data, align 8, !dbg !226
  %1 = load i8*, i8** %data, align 8, !dbg !227
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !228
  %2 = load i8*, i8** %data, align 8, !dbg !229
  %unionFirst = bitcast %union.CWE134_Uncontrolled_Format_String__char_file_vprintf_34_unionType* %myUnion to i8**, !dbg !230
  store i8* %2, i8** %unionFirst, align 8, !dbg !231
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !232, metadata !DIExpression()), !dbg !234
  %unionSecond = bitcast %union.CWE134_Uncontrolled_Format_String__char_file_vprintf_34_unionType* %myUnion to i8**, !dbg !235
  %3 = load i8*, i8** %unionSecond, align 8, !dbg !235
  store i8* %3, i8** %data1, align 8, !dbg !234
  %4 = load i8*, i8** %data1, align 8, !dbg !236
  %5 = load i8*, i8** %data1, align 8, !dbg !237
  call void (i8*, ...) @goodG2BVaSink(i8* %4, i8* %5), !dbg !238
  ret void, !dbg !239
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !240 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !243, metadata !DIExpression()), !dbg !245
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !246
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !246
  call void @llvm.va_start(i8* %arraydecay1), !dbg !246
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !247
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !248
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !249
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !249
  call void @llvm.va_end(i8* %arraydecay34), !dbg !249
  ret void, !dbg !250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !251 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE134_Uncontrolled_Format_String__char_file_vprintf_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %data12 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata %union.CWE134_Uncontrolled_Format_String__char_file_vprintf_34_unionType* %myUnion, metadata !254, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !257
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !257
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !258
  store i8* %arraydecay, i8** %data, align 8, !dbg !259
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !260, metadata !DIExpression()), !dbg !262
  %1 = load i8*, i8** %data, align 8, !dbg !263
  %call = call i64 @strlen(i8* %1) #8, !dbg !264
  store i64 %call, i64* %dataLen, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !265, metadata !DIExpression()), !dbg !266
  %2 = load i64, i64* %dataLen, align 8, !dbg !267
  %sub = sub i64 100, %2, !dbg !269
  %cmp = icmp ugt i64 %sub, 1, !dbg !270
  br i1 %cmp, label %if.then, label %if.end11, !dbg !271

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !272
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !274
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !275
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !277
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !278

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !279
  %5 = load i64, i64* %dataLen, align 8, !dbg !282
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !283
  %6 = load i64, i64* %dataLen, align 8, !dbg !284
  %sub4 = sub i64 100, %6, !dbg !285
  %conv = trunc i64 %sub4 to i32, !dbg !286
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !287
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !288
  %cmp6 = icmp eq i8* %call5, null, !dbg !289
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !290

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !291
  %8 = load i8*, i8** %data, align 8, !dbg !293
  %9 = load i64, i64* %dataLen, align 8, !dbg !294
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !293
  store i8 0, i8* %arrayidx, align 1, !dbg !295
  br label %if.end, !dbg !296

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !297
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !298
  br label %if.end10, !dbg !299

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !300

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !301
  %unionFirst = bitcast %union.CWE134_Uncontrolled_Format_String__char_file_vprintf_34_unionType* %myUnion to i8**, !dbg !302
  store i8* %11, i8** %unionFirst, align 8, !dbg !303
  call void @llvm.dbg.declare(metadata i8** %data12, metadata !304, metadata !DIExpression()), !dbg !306
  %unionSecond = bitcast %union.CWE134_Uncontrolled_Format_String__char_file_vprintf_34_unionType* %myUnion to i8**, !dbg !307
  %12 = load i8*, i8** %unionSecond, align 8, !dbg !307
  store i8* %12, i8** %data12, align 8, !dbg !306
  %13 = load i8*, i8** %data12, align 8, !dbg !308
  %14 = load i8*, i8** %data12, align 8, !dbg !309
  call void (i8*, ...) @goodB2GVaSink(i8* %13, i8* %14), !dbg !310
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_34_good() #0 !dbg !312 {
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

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_177/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_vprintf_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_177/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badVaSink", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !42, null}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 35, type: !42)
!56 = !DILocation(line: 35, column: 23, scope: !52)
!57 = !DILocalVariable(name: "args", scope: !58, file: !45, line: 38, type: !59)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 37, column: 5)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !60, line: 52, baseType: !61)
!60 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !62, line: 32, baseType: !63)
!62 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !45, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 192, elements: !71)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !66)
!66 = !{!67, !68, !69, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !65, file: !45, line: 38, baseType: !7, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !65, file: !45, line: 38, baseType: !7, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !65, file: !45, line: 38, baseType: !22, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !65, file: !45, line: 38, baseType: !22, size: 64, offset: 128)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DILocation(line: 38, column: 17, scope: !58)
!74 = !DILocation(line: 39, column: 9, scope: !58)
!75 = !DILocation(line: 41, column: 17, scope: !58)
!76 = !DILocation(line: 41, column: 23, scope: !58)
!77 = !DILocation(line: 41, column: 9, scope: !58)
!78 = !DILocation(line: 42, column: 9, scope: !58)
!79 = !DILocation(line: 44, column: 1, scope: !52)
!80 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_34_bad", scope: !45, file: !45, line: 46, type: !81, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!81 = !DISubroutineType(types: !82)
!82 = !{null}
!83 = !DILocalVariable(name: "data", scope: !80, file: !45, line: 48, type: !42)
!84 = !DILocation(line: 48, column: 12, scope: !80)
!85 = !DILocalVariable(name: "dataBuffer", scope: !80, file: !45, line: 49, type: !86)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 100)
!89 = !DILocation(line: 49, column: 10, scope: !80)
!90 = !DILocation(line: 50, column: 12, scope: !80)
!91 = !DILocation(line: 50, column: 10, scope: !80)
!92 = !DILocalVariable(name: "dataLen", scope: !93, file: !45, line: 53, type: !94)
!93 = distinct !DILexicalBlock(scope: !80, file: !45, line: 51, column: 5)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !DILocation(line: 53, column: 16, scope: !93)
!98 = !DILocation(line: 53, column: 33, scope: !93)
!99 = !DILocation(line: 53, column: 26, scope: !93)
!100 = !DILocalVariable(name: "pFile", scope: !93, file: !45, line: 54, type: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !103, line: 7, baseType: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !105, line: 49, size: 1728, elements: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !122, !124, !125, !126, !130, !131, !133, !135, !138, !140, !143, !146, !147, !148, !149, !150}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !104, file: !105, line: 51, baseType: !23, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !104, file: !105, line: 54, baseType: !42, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !104, file: !105, line: 55, baseType: !42, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !104, file: !105, line: 56, baseType: !42, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !104, file: !105, line: 57, baseType: !42, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !104, file: !105, line: 58, baseType: !42, size: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !104, file: !105, line: 59, baseType: !42, size: 64, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !104, file: !105, line: 60, baseType: !42, size: 64, offset: 448)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !104, file: !105, line: 61, baseType: !42, size: 64, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !104, file: !105, line: 64, baseType: !42, size: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !104, file: !105, line: 65, baseType: !42, size: 64, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !104, file: !105, line: 66, baseType: !42, size: 64, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !104, file: !105, line: 68, baseType: !120, size: 64, offset: 768)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !105, line: 36, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !104, file: !105, line: 70, baseType: !123, size: 64, offset: 832)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !104, file: !105, line: 72, baseType: !23, size: 32, offset: 896)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !104, file: !105, line: 73, baseType: !23, size: 32, offset: 928)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !104, file: !105, line: 74, baseType: !127, size: 64, offset: 960)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !128, line: 152, baseType: !129)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!129 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !104, file: !105, line: 77, baseType: !24, size: 16, offset: 1024)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !104, file: !105, line: 78, baseType: !132, size: 8, offset: 1040)
!132 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !104, file: !105, line: 79, baseType: !134, size: 8, offset: 1048)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !71)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !104, file: !105, line: 81, baseType: !136, size: 64, offset: 1088)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !105, line: 43, baseType: null)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !104, file: !105, line: 89, baseType: !139, size: 64, offset: 1152)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !128, line: 153, baseType: !129)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !104, file: !105, line: 91, baseType: !141, size: 64, offset: 1216)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !105, line: 37, flags: DIFlagFwdDecl)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !104, file: !105, line: 92, baseType: !144, size: 64, offset: 1280)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !105, line: 38, flags: DIFlagFwdDecl)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !104, file: !105, line: 93, baseType: !123, size: 64, offset: 1344)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !104, file: !105, line: 94, baseType: !22, size: 64, offset: 1408)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !104, file: !105, line: 95, baseType: !94, size: 64, offset: 1472)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !104, file: !105, line: 96, baseType: !23, size: 32, offset: 1536)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !104, file: !105, line: 98, baseType: !151, size: 160, offset: 1568)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 20)
!154 = !DILocation(line: 54, column: 16, scope: !93)
!155 = !DILocation(line: 56, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !93, file: !45, line: 56, column: 13)
!157 = !DILocation(line: 56, column: 16, scope: !156)
!158 = !DILocation(line: 56, column: 25, scope: !156)
!159 = !DILocation(line: 56, column: 13, scope: !93)
!160 = !DILocation(line: 58, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !45, line: 57, column: 9)
!162 = !DILocation(line: 58, column: 19, scope: !161)
!163 = !DILocation(line: 59, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !45, line: 59, column: 17)
!165 = !DILocation(line: 59, column: 23, scope: !164)
!166 = !DILocation(line: 59, column: 17, scope: !161)
!167 = !DILocation(line: 62, column: 27, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !45, line: 62, column: 21)
!169 = distinct !DILexicalBlock(scope: !164, file: !45, line: 60, column: 13)
!170 = !DILocation(line: 62, column: 32, scope: !168)
!171 = !DILocation(line: 62, column: 31, scope: !168)
!172 = !DILocation(line: 62, column: 51, scope: !168)
!173 = !DILocation(line: 62, column: 50, scope: !168)
!174 = !DILocation(line: 62, column: 41, scope: !168)
!175 = !DILocation(line: 62, column: 61, scope: !168)
!176 = !DILocation(line: 62, column: 21, scope: !168)
!177 = !DILocation(line: 62, column: 68, scope: !168)
!178 = !DILocation(line: 62, column: 21, scope: !169)
!179 = !DILocation(line: 64, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !168, file: !45, line: 63, column: 17)
!181 = !DILocation(line: 66, column: 21, scope: !180)
!182 = !DILocation(line: 66, column: 26, scope: !180)
!183 = !DILocation(line: 66, column: 35, scope: !180)
!184 = !DILocation(line: 67, column: 17, scope: !180)
!185 = !DILocation(line: 68, column: 24, scope: !169)
!186 = !DILocation(line: 68, column: 17, scope: !169)
!187 = !DILocation(line: 69, column: 13, scope: !169)
!188 = !DILocation(line: 70, column: 9, scope: !161)
!189 = !DILocalVariable(name: "dataCopy", scope: !190, file: !45, line: 73, type: !42)
!190 = distinct !DILexicalBlock(scope: !80, file: !45, line: 72, column: 5)
!191 = !DILocation(line: 73, column: 16, scope: !190)
!192 = !DILocation(line: 73, column: 27, scope: !190)
!193 = !DILocalVariable(name: "data", scope: !190, file: !45, line: 74, type: !42)
!194 = !DILocation(line: 74, column: 16, scope: !190)
!195 = !DILocation(line: 74, column: 23, scope: !190)
!196 = !DILocation(line: 75, column: 19, scope: !190)
!197 = !DILocation(line: 75, column: 25, scope: !190)
!198 = !DILocation(line: 75, column: 9, scope: !190)
!199 = !DILocation(line: 77, column: 1, scope: !80)
!200 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !45, file: !45, line: 84, type: !53, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!201 = !DILocalVariable(name: "data", arg: 1, scope: !200, file: !45, line: 84, type: !42)
!202 = !DILocation(line: 84, column: 27, scope: !200)
!203 = !DILocalVariable(name: "args", scope: !204, file: !45, line: 87, type: !59)
!204 = distinct !DILexicalBlock(scope: !200, file: !45, line: 86, column: 5)
!205 = !DILocation(line: 87, column: 17, scope: !204)
!206 = !DILocation(line: 88, column: 9, scope: !204)
!207 = !DILocation(line: 90, column: 17, scope: !204)
!208 = !DILocation(line: 90, column: 23, scope: !204)
!209 = !DILocation(line: 90, column: 9, scope: !204)
!210 = !DILocation(line: 91, column: 9, scope: !204)
!211 = !DILocation(line: 93, column: 1, scope: !200)
!212 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 95, type: !81, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!213 = !DILocalVariable(name: "data", scope: !212, file: !45, line: 97, type: !42)
!214 = !DILocation(line: 97, column: 12, scope: !212)
!215 = !DILocalVariable(name: "myUnion", scope: !212, file: !45, line: 98, type: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_34_unionType", file: !217, line: 9, baseType: !218)
!217 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_177/source_code")
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !217, line: 5, size: 64, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !218, file: !217, line: 7, baseType: !42, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !218, file: !217, line: 8, baseType: !42, size: 64)
!222 = !DILocation(line: 98, column: 71, scope: !212)
!223 = !DILocalVariable(name: "dataBuffer", scope: !212, file: !45, line: 99, type: !86)
!224 = !DILocation(line: 99, column: 10, scope: !212)
!225 = !DILocation(line: 100, column: 12, scope: !212)
!226 = !DILocation(line: 100, column: 10, scope: !212)
!227 = !DILocation(line: 102, column: 12, scope: !212)
!228 = !DILocation(line: 102, column: 5, scope: !212)
!229 = !DILocation(line: 103, column: 26, scope: !212)
!230 = !DILocation(line: 103, column: 13, scope: !212)
!231 = !DILocation(line: 103, column: 24, scope: !212)
!232 = !DILocalVariable(name: "data", scope: !233, file: !45, line: 105, type: !42)
!233 = distinct !DILexicalBlock(scope: !212, file: !45, line: 104, column: 5)
!234 = !DILocation(line: 105, column: 16, scope: !233)
!235 = !DILocation(line: 105, column: 31, scope: !233)
!236 = !DILocation(line: 106, column: 23, scope: !233)
!237 = !DILocation(line: 106, column: 29, scope: !233)
!238 = !DILocation(line: 106, column: 9, scope: !233)
!239 = !DILocation(line: 108, column: 1, scope: !212)
!240 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !45, file: !45, line: 111, type: !53, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!241 = !DILocalVariable(name: "data", arg: 1, scope: !240, file: !45, line: 111, type: !42)
!242 = !DILocation(line: 111, column: 27, scope: !240)
!243 = !DILocalVariable(name: "args", scope: !244, file: !45, line: 114, type: !59)
!244 = distinct !DILexicalBlock(scope: !240, file: !45, line: 113, column: 5)
!245 = !DILocation(line: 114, column: 17, scope: !244)
!246 = !DILocation(line: 115, column: 9, scope: !244)
!247 = !DILocation(line: 117, column: 23, scope: !244)
!248 = !DILocation(line: 117, column: 9, scope: !244)
!249 = !DILocation(line: 118, column: 9, scope: !244)
!250 = !DILocation(line: 120, column: 1, scope: !240)
!251 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 122, type: !81, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!252 = !DILocalVariable(name: "data", scope: !251, file: !45, line: 124, type: !42)
!253 = !DILocation(line: 124, column: 12, scope: !251)
!254 = !DILocalVariable(name: "myUnion", scope: !251, file: !45, line: 125, type: !216)
!255 = !DILocation(line: 125, column: 71, scope: !251)
!256 = !DILocalVariable(name: "dataBuffer", scope: !251, file: !45, line: 126, type: !86)
!257 = !DILocation(line: 126, column: 10, scope: !251)
!258 = !DILocation(line: 127, column: 12, scope: !251)
!259 = !DILocation(line: 127, column: 10, scope: !251)
!260 = !DILocalVariable(name: "dataLen", scope: !261, file: !45, line: 130, type: !94)
!261 = distinct !DILexicalBlock(scope: !251, file: !45, line: 128, column: 5)
!262 = !DILocation(line: 130, column: 16, scope: !261)
!263 = !DILocation(line: 130, column: 33, scope: !261)
!264 = !DILocation(line: 130, column: 26, scope: !261)
!265 = !DILocalVariable(name: "pFile", scope: !261, file: !45, line: 131, type: !101)
!266 = !DILocation(line: 131, column: 16, scope: !261)
!267 = !DILocation(line: 133, column: 17, scope: !268)
!268 = distinct !DILexicalBlock(scope: !261, file: !45, line: 133, column: 13)
!269 = !DILocation(line: 133, column: 16, scope: !268)
!270 = !DILocation(line: 133, column: 25, scope: !268)
!271 = !DILocation(line: 133, column: 13, scope: !261)
!272 = !DILocation(line: 135, column: 21, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !45, line: 134, column: 9)
!274 = !DILocation(line: 135, column: 19, scope: !273)
!275 = !DILocation(line: 136, column: 17, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !45, line: 136, column: 17)
!277 = !DILocation(line: 136, column: 23, scope: !276)
!278 = !DILocation(line: 136, column: 17, scope: !273)
!279 = !DILocation(line: 139, column: 27, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !45, line: 139, column: 21)
!281 = distinct !DILexicalBlock(scope: !276, file: !45, line: 137, column: 13)
!282 = !DILocation(line: 139, column: 32, scope: !280)
!283 = !DILocation(line: 139, column: 31, scope: !280)
!284 = !DILocation(line: 139, column: 51, scope: !280)
!285 = !DILocation(line: 139, column: 50, scope: !280)
!286 = !DILocation(line: 139, column: 41, scope: !280)
!287 = !DILocation(line: 139, column: 61, scope: !280)
!288 = !DILocation(line: 139, column: 21, scope: !280)
!289 = !DILocation(line: 139, column: 68, scope: !280)
!290 = !DILocation(line: 139, column: 21, scope: !281)
!291 = !DILocation(line: 141, column: 21, scope: !292)
!292 = distinct !DILexicalBlock(scope: !280, file: !45, line: 140, column: 17)
!293 = !DILocation(line: 143, column: 21, scope: !292)
!294 = !DILocation(line: 143, column: 26, scope: !292)
!295 = !DILocation(line: 143, column: 35, scope: !292)
!296 = !DILocation(line: 144, column: 17, scope: !292)
!297 = !DILocation(line: 145, column: 24, scope: !281)
!298 = !DILocation(line: 145, column: 17, scope: !281)
!299 = !DILocation(line: 146, column: 13, scope: !281)
!300 = !DILocation(line: 147, column: 9, scope: !273)
!301 = !DILocation(line: 149, column: 26, scope: !251)
!302 = !DILocation(line: 149, column: 13, scope: !251)
!303 = !DILocation(line: 149, column: 24, scope: !251)
!304 = !DILocalVariable(name: "data", scope: !305, file: !45, line: 151, type: !42)
!305 = distinct !DILexicalBlock(scope: !251, file: !45, line: 150, column: 5)
!306 = !DILocation(line: 151, column: 16, scope: !305)
!307 = !DILocation(line: 151, column: 31, scope: !305)
!308 = !DILocation(line: 152, column: 23, scope: !305)
!309 = !DILocation(line: 152, column: 29, scope: !305)
!310 = !DILocation(line: 152, column: 9, scope: !305)
!311 = !DILocation(line: 154, column: 1, scope: !251)
!312 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_34_good", scope: !45, file: !45, line: 156, type: !81, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!313 = !DILocation(line: 158, column: 5, scope: !312)
!314 = !DILocation(line: 159, column: 5, scope: !312)
!315 = !DILocation(line: 160, column: 1, scope: !312)
!316 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !317, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !42}
!319 = !DILocalVariable(name: "line", arg: 1, scope: !316, file: !3, line: 11, type: !42)
!320 = !DILocation(line: 11, column: 25, scope: !316)
!321 = !DILocation(line: 13, column: 1, scope: !316)
!322 = !DILocation(line: 14, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !316, file: !3, line: 14, column: 8)
!324 = !DILocation(line: 14, column: 13, scope: !323)
!325 = !DILocation(line: 14, column: 8, scope: !316)
!326 = !DILocation(line: 16, column: 24, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !3, line: 15, column: 5)
!328 = !DILocation(line: 16, column: 9, scope: !327)
!329 = !DILocation(line: 17, column: 5, scope: !327)
!330 = !DILocation(line: 18, column: 5, scope: !316)
!331 = !DILocation(line: 19, column: 1, scope: !316)
!332 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !317, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!333 = !DILocalVariable(name: "line", arg: 1, scope: !332, file: !3, line: 20, type: !42)
!334 = !DILocation(line: 20, column: 29, scope: !332)
!335 = !DILocation(line: 22, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !3, line: 22, column: 8)
!337 = !DILocation(line: 22, column: 13, scope: !336)
!338 = !DILocation(line: 22, column: 8, scope: !332)
!339 = !DILocation(line: 24, column: 24, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !3, line: 23, column: 5)
!341 = !DILocation(line: 24, column: 9, scope: !340)
!342 = !DILocation(line: 25, column: 5, scope: !340)
!343 = !DILocation(line: 26, column: 1, scope: !332)
!344 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !345, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 74, baseType: !23)
!349 = !DILocalVariable(name: "line", arg: 1, scope: !344, file: !3, line: 27, type: !347)
!350 = !DILocation(line: 27, column: 29, scope: !344)
!351 = !DILocation(line: 29, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !344, file: !3, line: 29, column: 8)
!353 = !DILocation(line: 29, column: 13, scope: !352)
!354 = !DILocation(line: 29, column: 8, scope: !344)
!355 = !DILocation(line: 31, column: 27, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !3, line: 30, column: 5)
!357 = !DILocation(line: 31, column: 9, scope: !356)
!358 = !DILocation(line: 32, column: 5, scope: !356)
!359 = !DILocation(line: 33, column: 1, scope: !344)
!360 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !361, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !23}
!363 = !DILocalVariable(name: "intNumber", arg: 1, scope: !360, file: !3, line: 35, type: !23)
!364 = !DILocation(line: 35, column: 24, scope: !360)
!365 = !DILocation(line: 37, column: 20, scope: !360)
!366 = !DILocation(line: 37, column: 5, scope: !360)
!367 = !DILocation(line: 38, column: 1, scope: !360)
!368 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !369, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371}
!371 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!372 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !368, file: !3, line: 40, type: !371)
!373 = !DILocation(line: 40, column: 28, scope: !368)
!374 = !DILocation(line: 42, column: 21, scope: !368)
!375 = !DILocation(line: 42, column: 5, scope: !368)
!376 = !DILocation(line: 43, column: 1, scope: !368)
!377 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !378, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380}
!380 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!381 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !377, file: !3, line: 45, type: !380)
!382 = !DILocation(line: 45, column: 28, scope: !377)
!383 = !DILocation(line: 47, column: 20, scope: !377)
!384 = !DILocation(line: 47, column: 5, scope: !377)
!385 = !DILocation(line: 48, column: 1, scope: !377)
!386 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !387, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !129}
!389 = !DILocalVariable(name: "longNumber", arg: 1, scope: !386, file: !3, line: 50, type: !129)
!390 = !DILocation(line: 50, column: 26, scope: !386)
!391 = !DILocation(line: 52, column: 21, scope: !386)
!392 = !DILocation(line: 52, column: 5, scope: !386)
!393 = !DILocation(line: 53, column: 1, scope: !386)
!394 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !395, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !398, line: 27, baseType: !399)
!398 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !128, line: 44, baseType: !129)
!400 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !394, file: !3, line: 55, type: !397)
!401 = !DILocation(line: 55, column: 33, scope: !394)
!402 = !DILocation(line: 57, column: 29, scope: !394)
!403 = !DILocation(line: 57, column: 5, scope: !394)
!404 = !DILocation(line: 58, column: 1, scope: !394)
!405 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !406, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !94}
!408 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !405, file: !3, line: 60, type: !94)
!409 = !DILocation(line: 60, column: 29, scope: !405)
!410 = !DILocation(line: 62, column: 21, scope: !405)
!411 = !DILocation(line: 62, column: 5, scope: !405)
!412 = !DILocation(line: 63, column: 1, scope: !405)
!413 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !414, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !43}
!416 = !DILocalVariable(name: "charHex", arg: 1, scope: !413, file: !3, line: 65, type: !43)
!417 = !DILocation(line: 65, column: 29, scope: !413)
!418 = !DILocation(line: 67, column: 22, scope: !413)
!419 = !DILocation(line: 67, column: 5, scope: !413)
!420 = !DILocation(line: 68, column: 1, scope: !413)
!421 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !422, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !348}
!424 = !DILocalVariable(name: "wideChar", arg: 1, scope: !421, file: !3, line: 70, type: !348)
!425 = !DILocation(line: 70, column: 29, scope: !421)
!426 = !DILocalVariable(name: "s", scope: !421, file: !3, line: 74, type: !427)
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
!439 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !440, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !7}
!442 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !439, file: !3, line: 80, type: !7)
!443 = !DILocation(line: 80, column: 33, scope: !439)
!444 = !DILocation(line: 82, column: 20, scope: !439)
!445 = !DILocation(line: 82, column: 5, scope: !439)
!446 = !DILocation(line: 83, column: 1, scope: !439)
!447 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !448, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !25}
!450 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !447, file: !3, line: 85, type: !25)
!451 = !DILocation(line: 85, column: 45, scope: !447)
!452 = !DILocation(line: 87, column: 22, scope: !447)
!453 = !DILocation(line: 87, column: 5, scope: !447)
!454 = !DILocation(line: 88, column: 1, scope: !447)
!455 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !456, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458}
!458 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!459 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !455, file: !3, line: 90, type: !458)
!460 = !DILocation(line: 90, column: 29, scope: !455)
!461 = !DILocation(line: 92, column: 20, scope: !455)
!462 = !DILocation(line: 92, column: 5, scope: !455)
!463 = !DILocation(line: 93, column: 1, scope: !455)
!464 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !465, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !469, line: 100, baseType: !470)
!469 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_177/source_code")
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !469, line: 96, size: 64, elements: !471)
!471 = !{!472, !473}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !470, file: !469, line: 98, baseType: !23, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !470, file: !469, line: 99, baseType: !23, size: 32, offset: 32)
!474 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !464, file: !3, line: 95, type: !467)
!475 = !DILocation(line: 95, column: 40, scope: !464)
!476 = !DILocation(line: 97, column: 26, scope: !464)
!477 = !DILocation(line: 97, column: 47, scope: !464)
!478 = !DILocation(line: 97, column: 55, scope: !464)
!479 = !DILocation(line: 97, column: 76, scope: !464)
!480 = !DILocation(line: 97, column: 5, scope: !464)
!481 = !DILocation(line: 98, column: 1, scope: !464)
!482 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !483, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !485, !94}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!486 = !DILocalVariable(name: "bytes", arg: 1, scope: !482, file: !3, line: 100, type: !485)
!487 = !DILocation(line: 100, column: 38, scope: !482)
!488 = !DILocalVariable(name: "numBytes", arg: 2, scope: !482, file: !3, line: 100, type: !94)
!489 = !DILocation(line: 100, column: 52, scope: !482)
!490 = !DILocalVariable(name: "i", scope: !482, file: !3, line: 102, type: !94)
!491 = !DILocation(line: 102, column: 12, scope: !482)
!492 = !DILocation(line: 103, column: 12, scope: !493)
!493 = distinct !DILexicalBlock(scope: !482, file: !3, line: 103, column: 5)
!494 = !DILocation(line: 103, column: 10, scope: !493)
!495 = !DILocation(line: 103, column: 17, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !3, line: 103, column: 5)
!497 = !DILocation(line: 103, column: 21, scope: !496)
!498 = !DILocation(line: 103, column: 19, scope: !496)
!499 = !DILocation(line: 103, column: 5, scope: !493)
!500 = !DILocation(line: 105, column: 24, scope: !501)
!501 = distinct !DILexicalBlock(scope: !496, file: !3, line: 104, column: 5)
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
!512 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !513, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!513 = !DISubroutineType(types: !514)
!514 = !{!94, !485, !94, !42}
!515 = !DILocalVariable(name: "bytes", arg: 1, scope: !512, file: !3, line: 113, type: !485)
!516 = !DILocation(line: 113, column: 39, scope: !512)
!517 = !DILocalVariable(name: "numBytes", arg: 2, scope: !512, file: !3, line: 113, type: !94)
!518 = !DILocation(line: 113, column: 53, scope: !512)
!519 = !DILocalVariable(name: "hex", arg: 3, scope: !512, file: !3, line: 113, type: !42)
!520 = !DILocation(line: 113, column: 71, scope: !512)
!521 = !DILocalVariable(name: "numWritten", scope: !512, file: !3, line: 115, type: !94)
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
!532 = !DILocalVariable(name: "byte", scope: !533, file: !3, line: 123, type: !23)
!533 = distinct !DILexicalBlock(scope: !512, file: !3, line: 122, column: 5)
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
!549 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !550, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DISubroutineType(types: !551)
!551 = !{!94, !485, !94, !347}
!552 = !DILocalVariable(name: "bytes", arg: 1, scope: !549, file: !3, line: 135, type: !485)
!553 = !DILocation(line: 135, column: 41, scope: !549)
!554 = !DILocalVariable(name: "numBytes", arg: 2, scope: !549, file: !3, line: 135, type: !94)
!555 = !DILocation(line: 135, column: 55, scope: !549)
!556 = !DILocalVariable(name: "hex", arg: 3, scope: !549, file: !3, line: 135, type: !347)
!557 = !DILocation(line: 135, column: 76, scope: !549)
!558 = !DILocalVariable(name: "numWritten", scope: !549, file: !3, line: 137, type: !94)
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
!576 = !DILocalVariable(name: "byte", scope: !577, file: !3, line: 145, type: !23)
!577 = distinct !DILexicalBlock(scope: !549, file: !3, line: 144, column: 5)
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
!593 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !594, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DISubroutineType(types: !595)
!595 = !{!23}
!596 = !DILocation(line: 158, column: 5, scope: !593)
!597 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !594, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 163, column: 5, scope: !597)
!599 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !594, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 168, column: 13, scope: !599)
!601 = !DILocation(line: 168, column: 20, scope: !599)
!602 = !DILocation(line: 168, column: 5, scope: !599)
!603 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !81, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 187, column: 16, scope: !603)
!605 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !81, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 188, column: 16, scope: !605)
!607 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !81, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 189, column: 16, scope: !607)
!609 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !81, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 190, column: 16, scope: !609)
!611 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !81, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 191, column: 16, scope: !611)
!613 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !81, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 192, column: 16, scope: !613)
!615 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !81, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 193, column: 16, scope: !615)
!617 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !81, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 194, column: 16, scope: !617)
!619 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !81, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 195, column: 16, scope: !619)
!621 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !81, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 198, column: 15, scope: !621)
!623 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !81, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 199, column: 15, scope: !623)
!625 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !81, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 200, column: 15, scope: !625)
!627 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !81, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 201, column: 15, scope: !627)
!629 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !81, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 202, column: 15, scope: !629)
!631 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !81, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 203, column: 15, scope: !631)
!633 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !81, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 204, column: 15, scope: !633)
!635 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !81, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 205, column: 15, scope: !635)
!637 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !81, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 206, column: 15, scope: !637)
