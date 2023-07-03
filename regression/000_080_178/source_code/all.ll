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
define dso_local void @badSink(i8* %data) #0 !dbg !80 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load i8*, i8** %data.addr, align 8, !dbg !85
  %1 = load i8*, i8** %data.addr, align 8, !dbg !86
  call void (i8*, ...) @badVaSink(i8* %0, i8* %1), !dbg !87
  ret void, !dbg !88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_41_bad() #0 !dbg !89 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !94, metadata !DIExpression()), !dbg !98
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !98
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !99
  store i8* %arraydecay, i8** %data, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !101, metadata !DIExpression()), !dbg !106
  %1 = load i8*, i8** %data, align 8, !dbg !107
  %call = call i64 @strlen(i8* %1) #8, !dbg !108
  store i64 %call, i64* %dataLen, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !109, metadata !DIExpression()), !dbg !163
  %2 = load i64, i64* %dataLen, align 8, !dbg !164
  %sub = sub i64 100, %2, !dbg !166
  %cmp = icmp ugt i64 %sub, 1, !dbg !167
  br i1 %cmp, label %if.then, label %if.end11, !dbg !168

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !169
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !171
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !172
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !174
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !175

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !176
  %5 = load i64, i64* %dataLen, align 8, !dbg !179
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !180
  %6 = load i64, i64* %dataLen, align 8, !dbg !181
  %sub4 = sub i64 100, %6, !dbg !182
  %conv = trunc i64 %sub4 to i32, !dbg !183
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !184
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !185
  %cmp6 = icmp eq i8* %call5, null, !dbg !186
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !187

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !188
  %8 = load i8*, i8** %data, align 8, !dbg !190
  %9 = load i64, i64* %dataLen, align 8, !dbg !191
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !190
  store i8 0, i8* %arrayidx, align 1, !dbg !192
  br label %if.end, !dbg !193

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !194
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !195
  br label %if.end10, !dbg !196

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !197

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !198
  call void @badSink(i8* %11), !dbg !199
  ret void, !dbg !200
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !201 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !204, metadata !DIExpression()), !dbg !206
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !207
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !207
  call void @llvm.va_start(i8* %arraydecay1), !dbg !207
  %0 = load i8*, i8** %data.addr, align 8, !dbg !208
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !209
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !210
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !211
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !211
  call void @llvm.va_end(i8* %arraydecay34), !dbg !211
  ret void, !dbg !212
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !213 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !214, metadata !DIExpression()), !dbg !215
  %0 = load i8*, i8** %data.addr, align 8, !dbg !216
  %1 = load i8*, i8** %data.addr, align 8, !dbg !217
  call void (i8*, ...) @goodG2BVaSink(i8* %0, i8* %1), !dbg !218
  ret void, !dbg !219
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !220 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !223, metadata !DIExpression()), !dbg !224
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !224
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !224
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !225
  store i8* %arraydecay, i8** %data, align 8, !dbg !226
  %1 = load i8*, i8** %data, align 8, !dbg !227
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !228
  %2 = load i8*, i8** %data, align 8, !dbg !229
  call void @goodG2BSink(i8* %2), !dbg !230
  ret void, !dbg !231
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !232 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !235, metadata !DIExpression()), !dbg !237
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !238
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !238
  call void @llvm.va_start(i8* %arraydecay1), !dbg !238
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !239
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !240
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !241
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !241
  call void @llvm.va_end(i8* %arraydecay34), !dbg !241
  ret void, !dbg !242
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !243 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load i8*, i8** %data.addr, align 8, !dbg !246
  %1 = load i8*, i8** %data.addr, align 8, !dbg !247
  call void (i8*, ...) @goodB2GVaSink(i8* %0, i8* %1), !dbg !248
  ret void, !dbg !249
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !250 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !253, metadata !DIExpression()), !dbg !254
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !254
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !254
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !255
  store i8* %arraydecay, i8** %data, align 8, !dbg !256
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !257, metadata !DIExpression()), !dbg !259
  %1 = load i8*, i8** %data, align 8, !dbg !260
  %call = call i64 @strlen(i8* %1) #8, !dbg !261
  store i64 %call, i64* %dataLen, align 8, !dbg !259
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !262, metadata !DIExpression()), !dbg !263
  %2 = load i64, i64* %dataLen, align 8, !dbg !264
  %sub = sub i64 100, %2, !dbg !266
  %cmp = icmp ugt i64 %sub, 1, !dbg !267
  br i1 %cmp, label %if.then, label %if.end11, !dbg !268

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !269
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !271
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !272
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !274
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !275

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !276
  %5 = load i64, i64* %dataLen, align 8, !dbg !279
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !280
  %6 = load i64, i64* %dataLen, align 8, !dbg !281
  %sub4 = sub i64 100, %6, !dbg !282
  %conv = trunc i64 %sub4 to i32, !dbg !283
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !284
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !285
  %cmp6 = icmp eq i8* %call5, null, !dbg !286
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !287

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !288
  %8 = load i8*, i8** %data, align 8, !dbg !290
  %9 = load i64, i64* %dataLen, align 8, !dbg !291
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !290
  store i8 0, i8* %arrayidx, align 1, !dbg !292
  br label %if.end, !dbg !293

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !294
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !295
  br label %if.end10, !dbg !296

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !297

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !298
  call void @goodB2GSink(i8* %11), !dbg !299
  ret void, !dbg !300
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_41_good() #0 !dbg !301 {
entry:
  call void @goodG2B(), !dbg !302
  call void @goodB2G(), !dbg !303
  ret void, !dbg !304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !305 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !308
  %0 = load i8*, i8** %line.addr, align 8, !dbg !309
  %cmp = icmp ne i8* %0, null, !dbg !311
  br i1 %cmp, label %if.then, label %if.end, !dbg !312

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !313
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !315
  br label %if.end, !dbg !316

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !317
  ret void, !dbg !318
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !319 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load i8*, i8** %line.addr, align 8, !dbg !322
  %cmp = icmp ne i8* %0, null, !dbg !324
  br i1 %cmp, label %if.then, label %if.end, !dbg !325

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !326
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !328
  br label %if.end, !dbg !329

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !331 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load i32*, i32** %line.addr, align 8, !dbg !338
  %cmp = icmp ne i32* %0, null, !dbg !340
  br i1 %cmp, label %if.then, label %if.end, !dbg !341

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !342
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !344
  br label %if.end, !dbg !345

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !346
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !347 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !352
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.9, i64 0, i64 0), i32 %0), !dbg !353
  ret void, !dbg !354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !355 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !361
  %conv = sext i16 %0 to i32, !dbg !361
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.10, i64 0, i64 0), i32 %conv), !dbg !362
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !364 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !370
  %conv = fpext float %0 to double, !dbg !370
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !371
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !373 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !381 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !389
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !390
  ret void, !dbg !391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !392 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !397
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !400 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !405
  %conv = sext i8 %0 to i32, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !408 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !413, metadata !DIExpression()), !dbg !417
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !418
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !419
  store i32 %0, i32* %arrayidx, align 4, !dbg !420
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !421
  store i32 0, i32* %arrayidx1, align 4, !dbg !422
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !423
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !424
  ret void, !dbg !425
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !426 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !429, metadata !DIExpression()), !dbg !430
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !431
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !432
  ret void, !dbg !433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !434 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !437, metadata !DIExpression()), !dbg !438
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !439
  %conv = zext i8 %0 to i32, !dbg !439
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !440
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !442 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !449
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !451 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !463
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !464
  %1 = load i32, i32* %intOne, align 4, !dbg !464
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !465
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !466
  %3 = load i32, i32* %intTwo, align 4, !dbg !466
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !467
  ret void, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !469 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !473, metadata !DIExpression()), !dbg !474
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata i64* %i, metadata !477, metadata !DIExpression()), !dbg !478
  store i64 0, i64* %i, align 8, !dbg !479
  br label %for.cond, !dbg !481

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !482
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !484
  %cmp = icmp ult i64 %0, %1, !dbg !485
  br i1 %cmp, label %for.body, label %for.end, !dbg !486

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !487
  %3 = load i64, i64* %i, align 8, !dbg !489
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !487
  %4 = load i8, i8* %arrayidx, align 1, !dbg !487
  %conv = zext i8 %4 to i32, !dbg !487
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !490
  br label %for.inc, !dbg !491

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !492
  %inc = add i64 %5, 1, !dbg !492
  store i64 %inc, i64* %i, align 8, !dbg !492
  br label %for.cond, !dbg !493, !llvm.loop !494

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !497
  ret void, !dbg !498
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !499 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !502, metadata !DIExpression()), !dbg !503
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !504, metadata !DIExpression()), !dbg !505
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !506, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !508, metadata !DIExpression()), !dbg !509
  store i64 0, i64* %numWritten, align 8, !dbg !509
  br label %while.cond, !dbg !510

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !511
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !512
  %cmp = icmp ult i64 %0, %1, !dbg !513
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !514

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !515
  %2 = load i16*, i16** %call, align 8, !dbg !515
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !515
  %4 = load i64, i64* %numWritten, align 8, !dbg !515
  %mul = mul i64 2, %4, !dbg !515
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !515
  %5 = load i8, i8* %arrayidx, align 1, !dbg !515
  %conv = sext i8 %5 to i32, !dbg !515
  %idxprom = sext i32 %conv to i64, !dbg !515
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !515
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !515
  %conv2 = zext i16 %6 to i32, !dbg !515
  %and = and i32 %conv2, 4096, !dbg !515
  %tobool = icmp ne i32 %and, 0, !dbg !515
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !516

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !517
  %7 = load i16*, i16** %call3, align 8, !dbg !517
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !517
  %9 = load i64, i64* %numWritten, align 8, !dbg !517
  %mul4 = mul i64 2, %9, !dbg !517
  %add = add i64 %mul4, 1, !dbg !517
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !517
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !517
  %conv6 = sext i8 %10 to i32, !dbg !517
  %idxprom7 = sext i32 %conv6 to i64, !dbg !517
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !517
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !517
  %conv9 = zext i16 %11 to i32, !dbg !517
  %and10 = and i32 %conv9, 4096, !dbg !517
  %tobool11 = icmp ne i32 %and10, 0, !dbg !516
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !518
  br i1 %12, label %while.body, label %while.end, !dbg !510

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !519, metadata !DIExpression()), !dbg !521
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !522
  %14 = load i64, i64* %numWritten, align 8, !dbg !523
  %mul12 = mul i64 2, %14, !dbg !524
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !522
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !525
  %15 = load i32, i32* %byte, align 4, !dbg !526
  %conv15 = trunc i32 %15 to i8, !dbg !527
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !528
  %17 = load i64, i64* %numWritten, align 8, !dbg !529
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !528
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !530
  %18 = load i64, i64* %numWritten, align 8, !dbg !531
  %inc = add i64 %18, 1, !dbg !531
  store i64 %inc, i64* %numWritten, align 8, !dbg !531
  br label %while.cond, !dbg !510, !llvm.loop !532

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !534
  ret i64 %19, !dbg !535
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !536 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !539, metadata !DIExpression()), !dbg !540
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !541, metadata !DIExpression()), !dbg !542
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !545, metadata !DIExpression()), !dbg !546
  store i64 0, i64* %numWritten, align 8, !dbg !546
  br label %while.cond, !dbg !547

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !548
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !549
  %cmp = icmp ult i64 %0, %1, !dbg !550
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !551

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !552
  %3 = load i64, i64* %numWritten, align 8, !dbg !553
  %mul = mul i64 2, %3, !dbg !554
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !552
  %4 = load i32, i32* %arrayidx, align 4, !dbg !552
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !555
  %tobool = icmp ne i32 %call, 0, !dbg !555
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !556

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !557
  %6 = load i64, i64* %numWritten, align 8, !dbg !558
  %mul1 = mul i64 2, %6, !dbg !559
  %add = add i64 %mul1, 1, !dbg !560
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !557
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !557
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !561
  %tobool4 = icmp ne i32 %call3, 0, !dbg !556
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !562
  br i1 %8, label %while.body, label %while.end, !dbg !547

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !563, metadata !DIExpression()), !dbg !565
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !566
  %10 = load i64, i64* %numWritten, align 8, !dbg !567
  %mul5 = mul i64 2, %10, !dbg !568
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !566
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !569
  %11 = load i32, i32* %byte, align 4, !dbg !570
  %conv = trunc i32 %11 to i8, !dbg !571
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !572
  %13 = load i64, i64* %numWritten, align 8, !dbg !573
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !572
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !574
  %14 = load i64, i64* %numWritten, align 8, !dbg !575
  %inc = add i64 %14, 1, !dbg !575
  store i64 %inc, i64* %numWritten, align 8, !dbg !575
  br label %while.cond, !dbg !547, !llvm.loop !576

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !578
  ret i64 %15, !dbg !579
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !580 {
entry:
  ret i32 1, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !584 {
entry:
  ret i32 0, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !586 {
entry:
  %call = call i32 @rand() #9, !dbg !587
  %rem = srem i32 %call, 2, !dbg !588
  ret i32 %rem, !dbg !589
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !590 {
entry:
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !592 {
entry:
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !594 {
entry:
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !596 {
entry:
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !598 {
entry:
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !600 {
entry:
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !602 {
entry:
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !604 {
entry:
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !606 {
entry:
  ret void, !dbg !607
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !608 {
entry:
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !610 {
entry:
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !612 {
entry:
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !614 {
entry:
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !616 {
entry:
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !618 {
entry:
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !620 {
entry:
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !622 {
entry:
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !624 {
entry:
  ret void, !dbg !625
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_178/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_vprintf_41.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_178/source_code")
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
!80 = distinct !DISubprogram(name: "badSink", scope: !45, file: !45, line: 45, type: !81, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !42}
!83 = !DILocalVariable(name: "data", arg: 1, scope: !80, file: !45, line: 45, type: !42)
!84 = !DILocation(line: 45, column: 21, scope: !80)
!85 = !DILocation(line: 47, column: 15, scope: !80)
!86 = !DILocation(line: 47, column: 21, scope: !80)
!87 = !DILocation(line: 47, column: 5, scope: !80)
!88 = !DILocation(line: 48, column: 1, scope: !80)
!89 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_41_bad", scope: !45, file: !45, line: 50, type: !90, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!90 = !DISubroutineType(types: !91)
!91 = !{null}
!92 = !DILocalVariable(name: "data", scope: !89, file: !45, line: 52, type: !42)
!93 = !DILocation(line: 52, column: 12, scope: !89)
!94 = !DILocalVariable(name: "dataBuffer", scope: !89, file: !45, line: 53, type: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 100)
!98 = !DILocation(line: 53, column: 10, scope: !89)
!99 = !DILocation(line: 54, column: 12, scope: !89)
!100 = !DILocation(line: 54, column: 10, scope: !89)
!101 = !DILocalVariable(name: "dataLen", scope: !102, file: !45, line: 57, type: !103)
!102 = distinct !DILexicalBlock(scope: !89, file: !45, line: 55, column: 5)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 46, baseType: !105)
!104 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!105 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!106 = !DILocation(line: 57, column: 16, scope: !102)
!107 = !DILocation(line: 57, column: 33, scope: !102)
!108 = !DILocation(line: 57, column: 26, scope: !102)
!109 = !DILocalVariable(name: "pFile", scope: !102, file: !45, line: 58, type: !110)
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
!163 = !DILocation(line: 58, column: 16, scope: !102)
!164 = !DILocation(line: 60, column: 17, scope: !165)
!165 = distinct !DILexicalBlock(scope: !102, file: !45, line: 60, column: 13)
!166 = !DILocation(line: 60, column: 16, scope: !165)
!167 = !DILocation(line: 60, column: 25, scope: !165)
!168 = !DILocation(line: 60, column: 13, scope: !102)
!169 = !DILocation(line: 62, column: 21, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !45, line: 61, column: 9)
!171 = !DILocation(line: 62, column: 19, scope: !170)
!172 = !DILocation(line: 63, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !45, line: 63, column: 17)
!174 = !DILocation(line: 63, column: 23, scope: !173)
!175 = !DILocation(line: 63, column: 17, scope: !170)
!176 = !DILocation(line: 66, column: 27, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !45, line: 66, column: 21)
!178 = distinct !DILexicalBlock(scope: !173, file: !45, line: 64, column: 13)
!179 = !DILocation(line: 66, column: 32, scope: !177)
!180 = !DILocation(line: 66, column: 31, scope: !177)
!181 = !DILocation(line: 66, column: 51, scope: !177)
!182 = !DILocation(line: 66, column: 50, scope: !177)
!183 = !DILocation(line: 66, column: 41, scope: !177)
!184 = !DILocation(line: 66, column: 61, scope: !177)
!185 = !DILocation(line: 66, column: 21, scope: !177)
!186 = !DILocation(line: 66, column: 68, scope: !177)
!187 = !DILocation(line: 66, column: 21, scope: !178)
!188 = !DILocation(line: 68, column: 21, scope: !189)
!189 = distinct !DILexicalBlock(scope: !177, file: !45, line: 67, column: 17)
!190 = !DILocation(line: 70, column: 21, scope: !189)
!191 = !DILocation(line: 70, column: 26, scope: !189)
!192 = !DILocation(line: 70, column: 35, scope: !189)
!193 = !DILocation(line: 71, column: 17, scope: !189)
!194 = !DILocation(line: 72, column: 24, scope: !178)
!195 = !DILocation(line: 72, column: 17, scope: !178)
!196 = !DILocation(line: 73, column: 13, scope: !178)
!197 = !DILocation(line: 74, column: 9, scope: !170)
!198 = !DILocation(line: 76, column: 13, scope: !89)
!199 = !DILocation(line: 76, column: 5, scope: !89)
!200 = !DILocation(line: 77, column: 1, scope: !89)
!201 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !45, file: !45, line: 84, type: !53, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!202 = !DILocalVariable(name: "data", arg: 1, scope: !201, file: !45, line: 84, type: !42)
!203 = !DILocation(line: 84, column: 27, scope: !201)
!204 = !DILocalVariable(name: "args", scope: !205, file: !45, line: 87, type: !59)
!205 = distinct !DILexicalBlock(scope: !201, file: !45, line: 86, column: 5)
!206 = !DILocation(line: 87, column: 17, scope: !205)
!207 = !DILocation(line: 88, column: 9, scope: !205)
!208 = !DILocation(line: 90, column: 17, scope: !205)
!209 = !DILocation(line: 90, column: 23, scope: !205)
!210 = !DILocation(line: 90, column: 9, scope: !205)
!211 = !DILocation(line: 91, column: 9, scope: !205)
!212 = !DILocation(line: 93, column: 1, scope: !201)
!213 = distinct !DISubprogram(name: "goodG2BSink", scope: !45, file: !45, line: 95, type: !81, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!214 = !DILocalVariable(name: "data", arg: 1, scope: !213, file: !45, line: 95, type: !42)
!215 = !DILocation(line: 95, column: 25, scope: !213)
!216 = !DILocation(line: 97, column: 19, scope: !213)
!217 = !DILocation(line: 97, column: 25, scope: !213)
!218 = !DILocation(line: 97, column: 5, scope: !213)
!219 = !DILocation(line: 98, column: 1, scope: !213)
!220 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 100, type: !90, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!221 = !DILocalVariable(name: "data", scope: !220, file: !45, line: 102, type: !42)
!222 = !DILocation(line: 102, column: 12, scope: !220)
!223 = !DILocalVariable(name: "dataBuffer", scope: !220, file: !45, line: 103, type: !95)
!224 = !DILocation(line: 103, column: 10, scope: !220)
!225 = !DILocation(line: 104, column: 12, scope: !220)
!226 = !DILocation(line: 104, column: 10, scope: !220)
!227 = !DILocation(line: 106, column: 12, scope: !220)
!228 = !DILocation(line: 106, column: 5, scope: !220)
!229 = !DILocation(line: 107, column: 17, scope: !220)
!230 = !DILocation(line: 107, column: 5, scope: !220)
!231 = !DILocation(line: 108, column: 1, scope: !220)
!232 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !45, file: !45, line: 111, type: !53, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!233 = !DILocalVariable(name: "data", arg: 1, scope: !232, file: !45, line: 111, type: !42)
!234 = !DILocation(line: 111, column: 27, scope: !232)
!235 = !DILocalVariable(name: "args", scope: !236, file: !45, line: 114, type: !59)
!236 = distinct !DILexicalBlock(scope: !232, file: !45, line: 113, column: 5)
!237 = !DILocation(line: 114, column: 17, scope: !236)
!238 = !DILocation(line: 115, column: 9, scope: !236)
!239 = !DILocation(line: 117, column: 23, scope: !236)
!240 = !DILocation(line: 117, column: 9, scope: !236)
!241 = !DILocation(line: 118, column: 9, scope: !236)
!242 = !DILocation(line: 120, column: 1, scope: !232)
!243 = distinct !DISubprogram(name: "goodB2GSink", scope: !45, file: !45, line: 122, type: !81, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!244 = !DILocalVariable(name: "data", arg: 1, scope: !243, file: !45, line: 122, type: !42)
!245 = !DILocation(line: 122, column: 25, scope: !243)
!246 = !DILocation(line: 124, column: 19, scope: !243)
!247 = !DILocation(line: 124, column: 25, scope: !243)
!248 = !DILocation(line: 124, column: 5, scope: !243)
!249 = !DILocation(line: 125, column: 1, scope: !243)
!250 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 127, type: !90, scopeLine: 128, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!251 = !DILocalVariable(name: "data", scope: !250, file: !45, line: 129, type: !42)
!252 = !DILocation(line: 129, column: 12, scope: !250)
!253 = !DILocalVariable(name: "dataBuffer", scope: !250, file: !45, line: 130, type: !95)
!254 = !DILocation(line: 130, column: 10, scope: !250)
!255 = !DILocation(line: 131, column: 12, scope: !250)
!256 = !DILocation(line: 131, column: 10, scope: !250)
!257 = !DILocalVariable(name: "dataLen", scope: !258, file: !45, line: 134, type: !103)
!258 = distinct !DILexicalBlock(scope: !250, file: !45, line: 132, column: 5)
!259 = !DILocation(line: 134, column: 16, scope: !258)
!260 = !DILocation(line: 134, column: 33, scope: !258)
!261 = !DILocation(line: 134, column: 26, scope: !258)
!262 = !DILocalVariable(name: "pFile", scope: !258, file: !45, line: 135, type: !110)
!263 = !DILocation(line: 135, column: 16, scope: !258)
!264 = !DILocation(line: 137, column: 17, scope: !265)
!265 = distinct !DILexicalBlock(scope: !258, file: !45, line: 137, column: 13)
!266 = !DILocation(line: 137, column: 16, scope: !265)
!267 = !DILocation(line: 137, column: 25, scope: !265)
!268 = !DILocation(line: 137, column: 13, scope: !258)
!269 = !DILocation(line: 139, column: 21, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !45, line: 138, column: 9)
!271 = !DILocation(line: 139, column: 19, scope: !270)
!272 = !DILocation(line: 140, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !45, line: 140, column: 17)
!274 = !DILocation(line: 140, column: 23, scope: !273)
!275 = !DILocation(line: 140, column: 17, scope: !270)
!276 = !DILocation(line: 143, column: 27, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !45, line: 143, column: 21)
!278 = distinct !DILexicalBlock(scope: !273, file: !45, line: 141, column: 13)
!279 = !DILocation(line: 143, column: 32, scope: !277)
!280 = !DILocation(line: 143, column: 31, scope: !277)
!281 = !DILocation(line: 143, column: 51, scope: !277)
!282 = !DILocation(line: 143, column: 50, scope: !277)
!283 = !DILocation(line: 143, column: 41, scope: !277)
!284 = !DILocation(line: 143, column: 61, scope: !277)
!285 = !DILocation(line: 143, column: 21, scope: !277)
!286 = !DILocation(line: 143, column: 68, scope: !277)
!287 = !DILocation(line: 143, column: 21, scope: !278)
!288 = !DILocation(line: 145, column: 21, scope: !289)
!289 = distinct !DILexicalBlock(scope: !277, file: !45, line: 144, column: 17)
!290 = !DILocation(line: 147, column: 21, scope: !289)
!291 = !DILocation(line: 147, column: 26, scope: !289)
!292 = !DILocation(line: 147, column: 35, scope: !289)
!293 = !DILocation(line: 148, column: 17, scope: !289)
!294 = !DILocation(line: 149, column: 24, scope: !278)
!295 = !DILocation(line: 149, column: 17, scope: !278)
!296 = !DILocation(line: 150, column: 13, scope: !278)
!297 = !DILocation(line: 151, column: 9, scope: !270)
!298 = !DILocation(line: 153, column: 17, scope: !250)
!299 = !DILocation(line: 153, column: 5, scope: !250)
!300 = !DILocation(line: 154, column: 1, scope: !250)
!301 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_41_good", scope: !45, file: !45, line: 156, type: !90, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!302 = !DILocation(line: 158, column: 5, scope: !301)
!303 = !DILocation(line: 159, column: 5, scope: !301)
!304 = !DILocation(line: 160, column: 1, scope: !301)
!305 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !81, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!306 = !DILocalVariable(name: "line", arg: 1, scope: !305, file: !3, line: 11, type: !42)
!307 = !DILocation(line: 11, column: 25, scope: !305)
!308 = !DILocation(line: 13, column: 1, scope: !305)
!309 = !DILocation(line: 14, column: 8, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !3, line: 14, column: 8)
!311 = !DILocation(line: 14, column: 13, scope: !310)
!312 = !DILocation(line: 14, column: 8, scope: !305)
!313 = !DILocation(line: 16, column: 24, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !3, line: 15, column: 5)
!315 = !DILocation(line: 16, column: 9, scope: !314)
!316 = !DILocation(line: 17, column: 5, scope: !314)
!317 = !DILocation(line: 18, column: 5, scope: !305)
!318 = !DILocation(line: 19, column: 1, scope: !305)
!319 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !81, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!320 = !DILocalVariable(name: "line", arg: 1, scope: !319, file: !3, line: 20, type: !42)
!321 = !DILocation(line: 20, column: 29, scope: !319)
!322 = !DILocation(line: 22, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !3, line: 22, column: 8)
!324 = !DILocation(line: 22, column: 13, scope: !323)
!325 = !DILocation(line: 22, column: 8, scope: !319)
!326 = !DILocation(line: 24, column: 24, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !3, line: 23, column: 5)
!328 = !DILocation(line: 24, column: 9, scope: !327)
!329 = !DILocation(line: 25, column: 5, scope: !327)
!330 = !DILocation(line: 26, column: 1, scope: !319)
!331 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !332, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !104, line: 74, baseType: !23)
!336 = !DILocalVariable(name: "line", arg: 1, scope: !331, file: !3, line: 27, type: !334)
!337 = !DILocation(line: 27, column: 29, scope: !331)
!338 = !DILocation(line: 29, column: 8, scope: !339)
!339 = distinct !DILexicalBlock(scope: !331, file: !3, line: 29, column: 8)
!340 = !DILocation(line: 29, column: 13, scope: !339)
!341 = !DILocation(line: 29, column: 8, scope: !331)
!342 = !DILocation(line: 31, column: 27, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !3, line: 30, column: 5)
!344 = !DILocation(line: 31, column: 9, scope: !343)
!345 = !DILocation(line: 32, column: 5, scope: !343)
!346 = !DILocation(line: 33, column: 1, scope: !331)
!347 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !348, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !23}
!350 = !DILocalVariable(name: "intNumber", arg: 1, scope: !347, file: !3, line: 35, type: !23)
!351 = !DILocation(line: 35, column: 24, scope: !347)
!352 = !DILocation(line: 37, column: 20, scope: !347)
!353 = !DILocation(line: 37, column: 5, scope: !347)
!354 = !DILocation(line: 38, column: 1, scope: !347)
!355 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !356, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !358}
!358 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!359 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !355, file: !3, line: 40, type: !358)
!360 = !DILocation(line: 40, column: 28, scope: !355)
!361 = !DILocation(line: 42, column: 21, scope: !355)
!362 = !DILocation(line: 42, column: 5, scope: !355)
!363 = !DILocation(line: 43, column: 1, scope: !355)
!364 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !365, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367}
!367 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!368 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !364, file: !3, line: 45, type: !367)
!369 = !DILocation(line: 45, column: 28, scope: !364)
!370 = !DILocation(line: 47, column: 20, scope: !364)
!371 = !DILocation(line: 47, column: 5, scope: !364)
!372 = !DILocation(line: 48, column: 1, scope: !364)
!373 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !374, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !138}
!376 = !DILocalVariable(name: "longNumber", arg: 1, scope: !373, file: !3, line: 50, type: !138)
!377 = !DILocation(line: 50, column: 26, scope: !373)
!378 = !DILocation(line: 52, column: 21, scope: !373)
!379 = !DILocation(line: 52, column: 5, scope: !373)
!380 = !DILocation(line: 53, column: 1, scope: !373)
!381 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !382, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384}
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !385, line: 27, baseType: !386)
!385 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !137, line: 44, baseType: !138)
!387 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !381, file: !3, line: 55, type: !384)
!388 = !DILocation(line: 55, column: 33, scope: !381)
!389 = !DILocation(line: 57, column: 29, scope: !381)
!390 = !DILocation(line: 57, column: 5, scope: !381)
!391 = !DILocation(line: 58, column: 1, scope: !381)
!392 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !393, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !103}
!395 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !392, file: !3, line: 60, type: !103)
!396 = !DILocation(line: 60, column: 29, scope: !392)
!397 = !DILocation(line: 62, column: 21, scope: !392)
!398 = !DILocation(line: 62, column: 5, scope: !392)
!399 = !DILocation(line: 63, column: 1, scope: !392)
!400 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !401, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !43}
!403 = !DILocalVariable(name: "charHex", arg: 1, scope: !400, file: !3, line: 65, type: !43)
!404 = !DILocation(line: 65, column: 29, scope: !400)
!405 = !DILocation(line: 67, column: 22, scope: !400)
!406 = !DILocation(line: 67, column: 5, scope: !400)
!407 = !DILocation(line: 68, column: 1, scope: !400)
!408 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !409, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !335}
!411 = !DILocalVariable(name: "wideChar", arg: 1, scope: !408, file: !3, line: 70, type: !335)
!412 = !DILocation(line: 70, column: 29, scope: !408)
!413 = !DILocalVariable(name: "s", scope: !408, file: !3, line: 74, type: !414)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 2)
!417 = !DILocation(line: 74, column: 13, scope: !408)
!418 = !DILocation(line: 75, column: 16, scope: !408)
!419 = !DILocation(line: 75, column: 9, scope: !408)
!420 = !DILocation(line: 75, column: 14, scope: !408)
!421 = !DILocation(line: 76, column: 9, scope: !408)
!422 = !DILocation(line: 76, column: 14, scope: !408)
!423 = !DILocation(line: 77, column: 21, scope: !408)
!424 = !DILocation(line: 77, column: 5, scope: !408)
!425 = !DILocation(line: 78, column: 1, scope: !408)
!426 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !427, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !7}
!429 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !426, file: !3, line: 80, type: !7)
!430 = !DILocation(line: 80, column: 33, scope: !426)
!431 = !DILocation(line: 82, column: 20, scope: !426)
!432 = !DILocation(line: 82, column: 5, scope: !426)
!433 = !DILocation(line: 83, column: 1, scope: !426)
!434 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !435, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !25}
!437 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !434, file: !3, line: 85, type: !25)
!438 = !DILocation(line: 85, column: 45, scope: !434)
!439 = !DILocation(line: 87, column: 22, scope: !434)
!440 = !DILocation(line: 87, column: 5, scope: !434)
!441 = !DILocation(line: 88, column: 1, scope: !434)
!442 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !443, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !445}
!445 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!446 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !442, file: !3, line: 90, type: !445)
!447 = !DILocation(line: 90, column: 29, scope: !442)
!448 = !DILocation(line: 92, column: 20, scope: !442)
!449 = !DILocation(line: 92, column: 5, scope: !442)
!450 = !DILocation(line: 93, column: 1, scope: !442)
!451 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !452, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !456, line: 100, baseType: !457)
!456 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_178/source_code")
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !456, line: 96, size: 64, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !457, file: !456, line: 98, baseType: !23, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !457, file: !456, line: 99, baseType: !23, size: 32, offset: 32)
!461 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !451, file: !3, line: 95, type: !454)
!462 = !DILocation(line: 95, column: 40, scope: !451)
!463 = !DILocation(line: 97, column: 26, scope: !451)
!464 = !DILocation(line: 97, column: 47, scope: !451)
!465 = !DILocation(line: 97, column: 55, scope: !451)
!466 = !DILocation(line: 97, column: 76, scope: !451)
!467 = !DILocation(line: 97, column: 5, scope: !451)
!468 = !DILocation(line: 98, column: 1, scope: !451)
!469 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !470, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !472, !103}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!473 = !DILocalVariable(name: "bytes", arg: 1, scope: !469, file: !3, line: 100, type: !472)
!474 = !DILocation(line: 100, column: 38, scope: !469)
!475 = !DILocalVariable(name: "numBytes", arg: 2, scope: !469, file: !3, line: 100, type: !103)
!476 = !DILocation(line: 100, column: 52, scope: !469)
!477 = !DILocalVariable(name: "i", scope: !469, file: !3, line: 102, type: !103)
!478 = !DILocation(line: 102, column: 12, scope: !469)
!479 = !DILocation(line: 103, column: 12, scope: !480)
!480 = distinct !DILexicalBlock(scope: !469, file: !3, line: 103, column: 5)
!481 = !DILocation(line: 103, column: 10, scope: !480)
!482 = !DILocation(line: 103, column: 17, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !3, line: 103, column: 5)
!484 = !DILocation(line: 103, column: 21, scope: !483)
!485 = !DILocation(line: 103, column: 19, scope: !483)
!486 = !DILocation(line: 103, column: 5, scope: !480)
!487 = !DILocation(line: 105, column: 24, scope: !488)
!488 = distinct !DILexicalBlock(scope: !483, file: !3, line: 104, column: 5)
!489 = !DILocation(line: 105, column: 30, scope: !488)
!490 = !DILocation(line: 105, column: 9, scope: !488)
!491 = !DILocation(line: 106, column: 5, scope: !488)
!492 = !DILocation(line: 103, column: 31, scope: !483)
!493 = !DILocation(line: 103, column: 5, scope: !483)
!494 = distinct !{!494, !486, !495, !496}
!495 = !DILocation(line: 106, column: 5, scope: !480)
!496 = !{!"llvm.loop.mustprogress"}
!497 = !DILocation(line: 107, column: 5, scope: !469)
!498 = !DILocation(line: 108, column: 1, scope: !469)
!499 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !500, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DISubroutineType(types: !501)
!501 = !{!103, !472, !103, !42}
!502 = !DILocalVariable(name: "bytes", arg: 1, scope: !499, file: !3, line: 113, type: !472)
!503 = !DILocation(line: 113, column: 39, scope: !499)
!504 = !DILocalVariable(name: "numBytes", arg: 2, scope: !499, file: !3, line: 113, type: !103)
!505 = !DILocation(line: 113, column: 53, scope: !499)
!506 = !DILocalVariable(name: "hex", arg: 3, scope: !499, file: !3, line: 113, type: !42)
!507 = !DILocation(line: 113, column: 71, scope: !499)
!508 = !DILocalVariable(name: "numWritten", scope: !499, file: !3, line: 115, type: !103)
!509 = !DILocation(line: 115, column: 12, scope: !499)
!510 = !DILocation(line: 121, column: 5, scope: !499)
!511 = !DILocation(line: 121, column: 12, scope: !499)
!512 = !DILocation(line: 121, column: 25, scope: !499)
!513 = !DILocation(line: 121, column: 23, scope: !499)
!514 = !DILocation(line: 121, column: 34, scope: !499)
!515 = !DILocation(line: 121, column: 37, scope: !499)
!516 = !DILocation(line: 121, column: 67, scope: !499)
!517 = !DILocation(line: 121, column: 70, scope: !499)
!518 = !DILocation(line: 0, scope: !499)
!519 = !DILocalVariable(name: "byte", scope: !520, file: !3, line: 123, type: !23)
!520 = distinct !DILexicalBlock(scope: !499, file: !3, line: 122, column: 5)
!521 = !DILocation(line: 123, column: 13, scope: !520)
!522 = !DILocation(line: 124, column: 17, scope: !520)
!523 = !DILocation(line: 124, column: 25, scope: !520)
!524 = !DILocation(line: 124, column: 23, scope: !520)
!525 = !DILocation(line: 124, column: 9, scope: !520)
!526 = !DILocation(line: 125, column: 45, scope: !520)
!527 = !DILocation(line: 125, column: 29, scope: !520)
!528 = !DILocation(line: 125, column: 9, scope: !520)
!529 = !DILocation(line: 125, column: 15, scope: !520)
!530 = !DILocation(line: 125, column: 27, scope: !520)
!531 = !DILocation(line: 126, column: 9, scope: !520)
!532 = distinct !{!532, !510, !533, !496}
!533 = !DILocation(line: 127, column: 5, scope: !499)
!534 = !DILocation(line: 129, column: 12, scope: !499)
!535 = !DILocation(line: 129, column: 5, scope: !499)
!536 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !537, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DISubroutineType(types: !538)
!538 = !{!103, !472, !103, !334}
!539 = !DILocalVariable(name: "bytes", arg: 1, scope: !536, file: !3, line: 135, type: !472)
!540 = !DILocation(line: 135, column: 41, scope: !536)
!541 = !DILocalVariable(name: "numBytes", arg: 2, scope: !536, file: !3, line: 135, type: !103)
!542 = !DILocation(line: 135, column: 55, scope: !536)
!543 = !DILocalVariable(name: "hex", arg: 3, scope: !536, file: !3, line: 135, type: !334)
!544 = !DILocation(line: 135, column: 76, scope: !536)
!545 = !DILocalVariable(name: "numWritten", scope: !536, file: !3, line: 137, type: !103)
!546 = !DILocation(line: 137, column: 12, scope: !536)
!547 = !DILocation(line: 143, column: 5, scope: !536)
!548 = !DILocation(line: 143, column: 12, scope: !536)
!549 = !DILocation(line: 143, column: 25, scope: !536)
!550 = !DILocation(line: 143, column: 23, scope: !536)
!551 = !DILocation(line: 143, column: 34, scope: !536)
!552 = !DILocation(line: 143, column: 47, scope: !536)
!553 = !DILocation(line: 143, column: 55, scope: !536)
!554 = !DILocation(line: 143, column: 53, scope: !536)
!555 = !DILocation(line: 143, column: 37, scope: !536)
!556 = !DILocation(line: 143, column: 68, scope: !536)
!557 = !DILocation(line: 143, column: 81, scope: !536)
!558 = !DILocation(line: 143, column: 89, scope: !536)
!559 = !DILocation(line: 143, column: 87, scope: !536)
!560 = !DILocation(line: 143, column: 100, scope: !536)
!561 = !DILocation(line: 143, column: 71, scope: !536)
!562 = !DILocation(line: 0, scope: !536)
!563 = !DILocalVariable(name: "byte", scope: !564, file: !3, line: 145, type: !23)
!564 = distinct !DILexicalBlock(scope: !536, file: !3, line: 144, column: 5)
!565 = !DILocation(line: 145, column: 13, scope: !564)
!566 = !DILocation(line: 146, column: 18, scope: !564)
!567 = !DILocation(line: 146, column: 26, scope: !564)
!568 = !DILocation(line: 146, column: 24, scope: !564)
!569 = !DILocation(line: 146, column: 9, scope: !564)
!570 = !DILocation(line: 147, column: 45, scope: !564)
!571 = !DILocation(line: 147, column: 29, scope: !564)
!572 = !DILocation(line: 147, column: 9, scope: !564)
!573 = !DILocation(line: 147, column: 15, scope: !564)
!574 = !DILocation(line: 147, column: 27, scope: !564)
!575 = !DILocation(line: 148, column: 9, scope: !564)
!576 = distinct !{!576, !547, !577, !496}
!577 = !DILocation(line: 149, column: 5, scope: !536)
!578 = !DILocation(line: 151, column: 12, scope: !536)
!579 = !DILocation(line: 151, column: 5, scope: !536)
!580 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !581, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DISubroutineType(types: !582)
!582 = !{!23}
!583 = !DILocation(line: 158, column: 5, scope: !580)
!584 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !581, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DILocation(line: 163, column: 5, scope: !584)
!586 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !581, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DILocation(line: 168, column: 13, scope: !586)
!588 = !DILocation(line: 168, column: 20, scope: !586)
!589 = !DILocation(line: 168, column: 5, scope: !586)
!590 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !90, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!591 = !DILocation(line: 187, column: 16, scope: !590)
!592 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !90, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DILocation(line: 188, column: 16, scope: !592)
!594 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !90, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!595 = !DILocation(line: 189, column: 16, scope: !594)
!596 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !90, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!597 = !DILocation(line: 190, column: 16, scope: !596)
!598 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !90, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DILocation(line: 191, column: 16, scope: !598)
!600 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !90, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DILocation(line: 192, column: 16, scope: !600)
!602 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !90, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!603 = !DILocation(line: 193, column: 16, scope: !602)
!604 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !90, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 194, column: 16, scope: !604)
!606 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !90, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DILocation(line: 195, column: 16, scope: !606)
!608 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !90, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!609 = !DILocation(line: 198, column: 15, scope: !608)
!610 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !90, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DILocation(line: 199, column: 15, scope: !610)
!612 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !90, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!613 = !DILocation(line: 200, column: 15, scope: !612)
!614 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !90, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!615 = !DILocation(line: 201, column: 15, scope: !614)
!616 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !90, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!617 = !DILocation(line: 202, column: 15, scope: !616)
!618 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !90, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DILocation(line: 203, column: 15, scope: !618)
!620 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !90, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DILocation(line: 204, column: 15, scope: !620)
!622 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !90, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DILocation(line: 205, column: 15, scope: !622)
!624 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !90, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DILocation(line: 206, column: 15, scope: !624)
