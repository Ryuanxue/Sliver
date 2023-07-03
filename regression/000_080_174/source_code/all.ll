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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad() #0 !dbg !80 {
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
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !216
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !216
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !217
  store i8* %arraydecay, i8** %data, align 8, !dbg !218
  %1 = load i8*, i8** %data, align 8, !dbg !219
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !220
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !221, metadata !DIExpression()), !dbg !223
  %2 = load i8*, i8** %data, align 8, !dbg !224
  store i8* %2, i8** %dataCopy, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !225, metadata !DIExpression()), !dbg !226
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !227
  store i8* %3, i8** %data1, align 8, !dbg !226
  %4 = load i8*, i8** %data1, align 8, !dbg !228
  %5 = load i8*, i8** %data1, align 8, !dbg !229
  call void (i8*, ...) @goodG2BVaSink(i8* %4, i8* %5), !dbg !230
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
define dso_local void @goodB2G() #0 !dbg !243 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %dataCopy = alloca i8*, align 8
  %data12 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !247
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !247
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !248
  store i8* %arraydecay, i8** %data, align 8, !dbg !249
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !250, metadata !DIExpression()), !dbg !252
  %1 = load i8*, i8** %data, align 8, !dbg !253
  %call = call i64 @strlen(i8* %1) #8, !dbg !254
  store i64 %call, i64* %dataLen, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !255, metadata !DIExpression()), !dbg !256
  %2 = load i64, i64* %dataLen, align 8, !dbg !257
  %sub = sub i64 100, %2, !dbg !259
  %cmp = icmp ugt i64 %sub, 1, !dbg !260
  br i1 %cmp, label %if.then, label %if.end11, !dbg !261

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !262
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !264
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !265
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !267
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !268

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !269
  %5 = load i64, i64* %dataLen, align 8, !dbg !272
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !273
  %6 = load i64, i64* %dataLen, align 8, !dbg !274
  %sub4 = sub i64 100, %6, !dbg !275
  %conv = trunc i64 %sub4 to i32, !dbg !276
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !277
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !278
  %cmp6 = icmp eq i8* %call5, null, !dbg !279
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !280

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !281
  %8 = load i8*, i8** %data, align 8, !dbg !283
  %9 = load i64, i64* %dataLen, align 8, !dbg !284
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !283
  store i8 0, i8* %arrayidx, align 1, !dbg !285
  br label %if.end, !dbg !286

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !287
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !288
  br label %if.end10, !dbg !289

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !290

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !291, metadata !DIExpression()), !dbg !293
  %11 = load i8*, i8** %data, align 8, !dbg !294
  store i8* %11, i8** %dataCopy, align 8, !dbg !293
  call void @llvm.dbg.declare(metadata i8** %data12, metadata !295, metadata !DIExpression()), !dbg !296
  %12 = load i8*, i8** %dataCopy, align 8, !dbg !297
  store i8* %12, i8** %data12, align 8, !dbg !296
  %13 = load i8*, i8** %data12, align 8, !dbg !298
  %14 = load i8*, i8** %data12, align 8, !dbg !299
  call void (i8*, ...) @goodB2GVaSink(i8* %13, i8* %14), !dbg !300
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_31_good() #0 !dbg !302 {
entry:
  call void @goodG2B(), !dbg !303
  call void @goodB2G(), !dbg !304
  ret void, !dbg !305
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !306 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !311
  %0 = load i8*, i8** %line.addr, align 8, !dbg !312
  %cmp = icmp ne i8* %0, null, !dbg !314
  br i1 %cmp, label %if.then, label %if.end, !dbg !315

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !316
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !318
  br label %if.end, !dbg !319

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !320
  ret void, !dbg !321
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !322 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load i8*, i8** %line.addr, align 8, !dbg !325
  %cmp = icmp ne i8* %0, null, !dbg !327
  br i1 %cmp, label %if.then, label %if.end, !dbg !328

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !329
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !331
  br label %if.end, !dbg !332

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !334 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %0 = load i32*, i32** %line.addr, align 8, !dbg !341
  %cmp = icmp ne i32* %0, null, !dbg !343
  br i1 %cmp, label %if.then, label %if.end, !dbg !344

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !345
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !347
  br label %if.end, !dbg !348

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !349
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !350 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.9, i64 0, i64 0), i32 %0), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !358 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !364
  %conv = sext i16 %0 to i32, !dbg !364
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.10, i64 0, i64 0), i32 %conv), !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !367 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !373
  %conv = fpext float %0 to double, !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !374
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !376 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !379, metadata !DIExpression()), !dbg !380
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !381
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !382
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !384 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !393
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !395 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !400
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !401
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !403 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !408
  %conv = sext i8 %0 to i32, !dbg !408
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !411 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !416, metadata !DIExpression()), !dbg !420
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !421
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !422
  store i32 %0, i32* %arrayidx, align 4, !dbg !423
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !424
  store i32 0, i32* %arrayidx1, align 4, !dbg !425
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !429 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !432, metadata !DIExpression()), !dbg !433
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !434
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !435
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !437 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !440, metadata !DIExpression()), !dbg !441
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !442
  %conv = zext i8 %0 to i32, !dbg !442
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !443
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !445 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !454 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !466
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !467
  %1 = load i32, i32* %intOne, align 4, !dbg !467
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !468
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !469
  %3 = load i32, i32* %intTwo, align 4, !dbg !469
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !472 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !476, metadata !DIExpression()), !dbg !477
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.declare(metadata i64* %i, metadata !480, metadata !DIExpression()), !dbg !481
  store i64 0, i64* %i, align 8, !dbg !482
  br label %for.cond, !dbg !484

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !485
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !487
  %cmp = icmp ult i64 %0, %1, !dbg !488
  br i1 %cmp, label %for.body, label %for.end, !dbg !489

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !490
  %3 = load i64, i64* %i, align 8, !dbg !492
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !490
  %4 = load i8, i8* %arrayidx, align 1, !dbg !490
  %conv = zext i8 %4 to i32, !dbg !490
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !493
  br label %for.inc, !dbg !494

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !495
  %inc = add i64 %5, 1, !dbg !495
  store i64 %inc, i64* %i, align 8, !dbg !495
  br label %for.cond, !dbg !496, !llvm.loop !497

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !500
  ret void, !dbg !501
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !502 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !505, metadata !DIExpression()), !dbg !506
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !507, metadata !DIExpression()), !dbg !508
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !509, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !511, metadata !DIExpression()), !dbg !512
  store i64 0, i64* %numWritten, align 8, !dbg !512
  br label %while.cond, !dbg !513

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !514
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !515
  %cmp = icmp ult i64 %0, %1, !dbg !516
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !517

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !518
  %2 = load i16*, i16** %call, align 8, !dbg !518
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !518
  %4 = load i64, i64* %numWritten, align 8, !dbg !518
  %mul = mul i64 2, %4, !dbg !518
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !518
  %5 = load i8, i8* %arrayidx, align 1, !dbg !518
  %conv = sext i8 %5 to i32, !dbg !518
  %idxprom = sext i32 %conv to i64, !dbg !518
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !518
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !518
  %conv2 = zext i16 %6 to i32, !dbg !518
  %and = and i32 %conv2, 4096, !dbg !518
  %tobool = icmp ne i32 %and, 0, !dbg !518
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !519

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !520
  %7 = load i16*, i16** %call3, align 8, !dbg !520
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !520
  %9 = load i64, i64* %numWritten, align 8, !dbg !520
  %mul4 = mul i64 2, %9, !dbg !520
  %add = add i64 %mul4, 1, !dbg !520
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !520
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !520
  %conv6 = sext i8 %10 to i32, !dbg !520
  %idxprom7 = sext i32 %conv6 to i64, !dbg !520
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !520
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !520
  %conv9 = zext i16 %11 to i32, !dbg !520
  %and10 = and i32 %conv9, 4096, !dbg !520
  %tobool11 = icmp ne i32 %and10, 0, !dbg !519
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !521
  br i1 %12, label %while.body, label %while.end, !dbg !513

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !522, metadata !DIExpression()), !dbg !524
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !525
  %14 = load i64, i64* %numWritten, align 8, !dbg !526
  %mul12 = mul i64 2, %14, !dbg !527
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !525
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !528
  %15 = load i32, i32* %byte, align 4, !dbg !529
  %conv15 = trunc i32 %15 to i8, !dbg !530
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !531
  %17 = load i64, i64* %numWritten, align 8, !dbg !532
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !531
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !533
  %18 = load i64, i64* %numWritten, align 8, !dbg !534
  %inc = add i64 %18, 1, !dbg !534
  store i64 %inc, i64* %numWritten, align 8, !dbg !534
  br label %while.cond, !dbg !513, !llvm.loop !535

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !537
  ret i64 %19, !dbg !538
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !539 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !542, metadata !DIExpression()), !dbg !543
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !544, metadata !DIExpression()), !dbg !545
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !548, metadata !DIExpression()), !dbg !549
  store i64 0, i64* %numWritten, align 8, !dbg !549
  br label %while.cond, !dbg !550

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !551
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !552
  %cmp = icmp ult i64 %0, %1, !dbg !553
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !554

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !555
  %3 = load i64, i64* %numWritten, align 8, !dbg !556
  %mul = mul i64 2, %3, !dbg !557
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !555
  %4 = load i32, i32* %arrayidx, align 4, !dbg !555
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !558
  %tobool = icmp ne i32 %call, 0, !dbg !558
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !559

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !560
  %6 = load i64, i64* %numWritten, align 8, !dbg !561
  %mul1 = mul i64 2, %6, !dbg !562
  %add = add i64 %mul1, 1, !dbg !563
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !560
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !560
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !564
  %tobool4 = icmp ne i32 %call3, 0, !dbg !559
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !565
  br i1 %8, label %while.body, label %while.end, !dbg !550

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !566, metadata !DIExpression()), !dbg !568
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !569
  %10 = load i64, i64* %numWritten, align 8, !dbg !570
  %mul5 = mul i64 2, %10, !dbg !571
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !569
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !572
  %11 = load i32, i32* %byte, align 4, !dbg !573
  %conv = trunc i32 %11 to i8, !dbg !574
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !575
  %13 = load i64, i64* %numWritten, align 8, !dbg !576
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !575
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !577
  %14 = load i64, i64* %numWritten, align 8, !dbg !578
  %inc = add i64 %14, 1, !dbg !578
  store i64 %inc, i64* %numWritten, align 8, !dbg !578
  br label %while.cond, !dbg !550, !llvm.loop !579

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !581
  ret i64 %15, !dbg !582
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !583 {
entry:
  ret i32 1, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !587 {
entry:
  ret i32 0, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !589 {
entry:
  %call = call i32 @rand() #9, !dbg !590
  %rem = srem i32 %call, 2, !dbg !591
  ret i32 %rem, !dbg !592
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !627 {
entry:
  ret void, !dbg !628
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_174/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_vprintf_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_174/source_code")
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
!80 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad", scope: !45, file: !45, line: 45, type: !81, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!81 = !DISubroutineType(types: !82)
!82 = !{null}
!83 = !DILocalVariable(name: "data", scope: !80, file: !45, line: 47, type: !42)
!84 = !DILocation(line: 47, column: 12, scope: !80)
!85 = !DILocalVariable(name: "dataBuffer", scope: !80, file: !45, line: 48, type: !86)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 100)
!89 = !DILocation(line: 48, column: 10, scope: !80)
!90 = !DILocation(line: 49, column: 12, scope: !80)
!91 = !DILocation(line: 49, column: 10, scope: !80)
!92 = !DILocalVariable(name: "dataLen", scope: !93, file: !45, line: 52, type: !94)
!93 = distinct !DILexicalBlock(scope: !80, file: !45, line: 50, column: 5)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !DILocation(line: 52, column: 16, scope: !93)
!98 = !DILocation(line: 52, column: 33, scope: !93)
!99 = !DILocation(line: 52, column: 26, scope: !93)
!100 = !DILocalVariable(name: "pFile", scope: !93, file: !45, line: 53, type: !101)
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
!154 = !DILocation(line: 53, column: 16, scope: !93)
!155 = !DILocation(line: 55, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !93, file: !45, line: 55, column: 13)
!157 = !DILocation(line: 55, column: 16, scope: !156)
!158 = !DILocation(line: 55, column: 25, scope: !156)
!159 = !DILocation(line: 55, column: 13, scope: !93)
!160 = !DILocation(line: 57, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !45, line: 56, column: 9)
!162 = !DILocation(line: 57, column: 19, scope: !161)
!163 = !DILocation(line: 58, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !45, line: 58, column: 17)
!165 = !DILocation(line: 58, column: 23, scope: !164)
!166 = !DILocation(line: 58, column: 17, scope: !161)
!167 = !DILocation(line: 61, column: 27, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !45, line: 61, column: 21)
!169 = distinct !DILexicalBlock(scope: !164, file: !45, line: 59, column: 13)
!170 = !DILocation(line: 61, column: 32, scope: !168)
!171 = !DILocation(line: 61, column: 31, scope: !168)
!172 = !DILocation(line: 61, column: 51, scope: !168)
!173 = !DILocation(line: 61, column: 50, scope: !168)
!174 = !DILocation(line: 61, column: 41, scope: !168)
!175 = !DILocation(line: 61, column: 61, scope: !168)
!176 = !DILocation(line: 61, column: 21, scope: !168)
!177 = !DILocation(line: 61, column: 68, scope: !168)
!178 = !DILocation(line: 61, column: 21, scope: !169)
!179 = !DILocation(line: 63, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !168, file: !45, line: 62, column: 17)
!181 = !DILocation(line: 65, column: 21, scope: !180)
!182 = !DILocation(line: 65, column: 26, scope: !180)
!183 = !DILocation(line: 65, column: 35, scope: !180)
!184 = !DILocation(line: 66, column: 17, scope: !180)
!185 = !DILocation(line: 67, column: 24, scope: !169)
!186 = !DILocation(line: 67, column: 17, scope: !169)
!187 = !DILocation(line: 68, column: 13, scope: !169)
!188 = !DILocation(line: 69, column: 9, scope: !161)
!189 = !DILocalVariable(name: "dataCopy", scope: !190, file: !45, line: 72, type: !42)
!190 = distinct !DILexicalBlock(scope: !80, file: !45, line: 71, column: 5)
!191 = !DILocation(line: 72, column: 16, scope: !190)
!192 = !DILocation(line: 72, column: 27, scope: !190)
!193 = !DILocalVariable(name: "data", scope: !190, file: !45, line: 73, type: !42)
!194 = !DILocation(line: 73, column: 16, scope: !190)
!195 = !DILocation(line: 73, column: 23, scope: !190)
!196 = !DILocation(line: 74, column: 19, scope: !190)
!197 = !DILocation(line: 74, column: 25, scope: !190)
!198 = !DILocation(line: 74, column: 9, scope: !190)
!199 = !DILocation(line: 76, column: 1, scope: !80)
!200 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !45, file: !45, line: 83, type: !53, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!201 = !DILocalVariable(name: "data", arg: 1, scope: !200, file: !45, line: 83, type: !42)
!202 = !DILocation(line: 83, column: 27, scope: !200)
!203 = !DILocalVariable(name: "args", scope: !204, file: !45, line: 86, type: !59)
!204 = distinct !DILexicalBlock(scope: !200, file: !45, line: 85, column: 5)
!205 = !DILocation(line: 86, column: 17, scope: !204)
!206 = !DILocation(line: 87, column: 9, scope: !204)
!207 = !DILocation(line: 89, column: 17, scope: !204)
!208 = !DILocation(line: 89, column: 23, scope: !204)
!209 = !DILocation(line: 89, column: 9, scope: !204)
!210 = !DILocation(line: 90, column: 9, scope: !204)
!211 = !DILocation(line: 92, column: 1, scope: !200)
!212 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 94, type: !81, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!213 = !DILocalVariable(name: "data", scope: !212, file: !45, line: 96, type: !42)
!214 = !DILocation(line: 96, column: 12, scope: !212)
!215 = !DILocalVariable(name: "dataBuffer", scope: !212, file: !45, line: 97, type: !86)
!216 = !DILocation(line: 97, column: 10, scope: !212)
!217 = !DILocation(line: 98, column: 12, scope: !212)
!218 = !DILocation(line: 98, column: 10, scope: !212)
!219 = !DILocation(line: 100, column: 12, scope: !212)
!220 = !DILocation(line: 100, column: 5, scope: !212)
!221 = !DILocalVariable(name: "dataCopy", scope: !222, file: !45, line: 102, type: !42)
!222 = distinct !DILexicalBlock(scope: !212, file: !45, line: 101, column: 5)
!223 = !DILocation(line: 102, column: 16, scope: !222)
!224 = !DILocation(line: 102, column: 27, scope: !222)
!225 = !DILocalVariable(name: "data", scope: !222, file: !45, line: 103, type: !42)
!226 = !DILocation(line: 103, column: 16, scope: !222)
!227 = !DILocation(line: 103, column: 23, scope: !222)
!228 = !DILocation(line: 104, column: 23, scope: !222)
!229 = !DILocation(line: 104, column: 29, scope: !222)
!230 = !DILocation(line: 104, column: 9, scope: !222)
!231 = !DILocation(line: 106, column: 1, scope: !212)
!232 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !45, file: !45, line: 109, type: !53, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!233 = !DILocalVariable(name: "data", arg: 1, scope: !232, file: !45, line: 109, type: !42)
!234 = !DILocation(line: 109, column: 27, scope: !232)
!235 = !DILocalVariable(name: "args", scope: !236, file: !45, line: 112, type: !59)
!236 = distinct !DILexicalBlock(scope: !232, file: !45, line: 111, column: 5)
!237 = !DILocation(line: 112, column: 17, scope: !236)
!238 = !DILocation(line: 113, column: 9, scope: !236)
!239 = !DILocation(line: 115, column: 23, scope: !236)
!240 = !DILocation(line: 115, column: 9, scope: !236)
!241 = !DILocation(line: 116, column: 9, scope: !236)
!242 = !DILocation(line: 118, column: 1, scope: !232)
!243 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 120, type: !81, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!244 = !DILocalVariable(name: "data", scope: !243, file: !45, line: 122, type: !42)
!245 = !DILocation(line: 122, column: 12, scope: !243)
!246 = !DILocalVariable(name: "dataBuffer", scope: !243, file: !45, line: 123, type: !86)
!247 = !DILocation(line: 123, column: 10, scope: !243)
!248 = !DILocation(line: 124, column: 12, scope: !243)
!249 = !DILocation(line: 124, column: 10, scope: !243)
!250 = !DILocalVariable(name: "dataLen", scope: !251, file: !45, line: 127, type: !94)
!251 = distinct !DILexicalBlock(scope: !243, file: !45, line: 125, column: 5)
!252 = !DILocation(line: 127, column: 16, scope: !251)
!253 = !DILocation(line: 127, column: 33, scope: !251)
!254 = !DILocation(line: 127, column: 26, scope: !251)
!255 = !DILocalVariable(name: "pFile", scope: !251, file: !45, line: 128, type: !101)
!256 = !DILocation(line: 128, column: 16, scope: !251)
!257 = !DILocation(line: 130, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !251, file: !45, line: 130, column: 13)
!259 = !DILocation(line: 130, column: 16, scope: !258)
!260 = !DILocation(line: 130, column: 25, scope: !258)
!261 = !DILocation(line: 130, column: 13, scope: !251)
!262 = !DILocation(line: 132, column: 21, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !45, line: 131, column: 9)
!264 = !DILocation(line: 132, column: 19, scope: !263)
!265 = !DILocation(line: 133, column: 17, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !45, line: 133, column: 17)
!267 = !DILocation(line: 133, column: 23, scope: !266)
!268 = !DILocation(line: 133, column: 17, scope: !263)
!269 = !DILocation(line: 136, column: 27, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !45, line: 136, column: 21)
!271 = distinct !DILexicalBlock(scope: !266, file: !45, line: 134, column: 13)
!272 = !DILocation(line: 136, column: 32, scope: !270)
!273 = !DILocation(line: 136, column: 31, scope: !270)
!274 = !DILocation(line: 136, column: 51, scope: !270)
!275 = !DILocation(line: 136, column: 50, scope: !270)
!276 = !DILocation(line: 136, column: 41, scope: !270)
!277 = !DILocation(line: 136, column: 61, scope: !270)
!278 = !DILocation(line: 136, column: 21, scope: !270)
!279 = !DILocation(line: 136, column: 68, scope: !270)
!280 = !DILocation(line: 136, column: 21, scope: !271)
!281 = !DILocation(line: 138, column: 21, scope: !282)
!282 = distinct !DILexicalBlock(scope: !270, file: !45, line: 137, column: 17)
!283 = !DILocation(line: 140, column: 21, scope: !282)
!284 = !DILocation(line: 140, column: 26, scope: !282)
!285 = !DILocation(line: 140, column: 35, scope: !282)
!286 = !DILocation(line: 141, column: 17, scope: !282)
!287 = !DILocation(line: 142, column: 24, scope: !271)
!288 = !DILocation(line: 142, column: 17, scope: !271)
!289 = !DILocation(line: 143, column: 13, scope: !271)
!290 = !DILocation(line: 144, column: 9, scope: !263)
!291 = !DILocalVariable(name: "dataCopy", scope: !292, file: !45, line: 147, type: !42)
!292 = distinct !DILexicalBlock(scope: !243, file: !45, line: 146, column: 5)
!293 = !DILocation(line: 147, column: 16, scope: !292)
!294 = !DILocation(line: 147, column: 27, scope: !292)
!295 = !DILocalVariable(name: "data", scope: !292, file: !45, line: 148, type: !42)
!296 = !DILocation(line: 148, column: 16, scope: !292)
!297 = !DILocation(line: 148, column: 23, scope: !292)
!298 = !DILocation(line: 149, column: 23, scope: !292)
!299 = !DILocation(line: 149, column: 29, scope: !292)
!300 = !DILocation(line: 149, column: 9, scope: !292)
!301 = !DILocation(line: 151, column: 1, scope: !243)
!302 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_31_good", scope: !45, file: !45, line: 153, type: !81, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!303 = !DILocation(line: 155, column: 5, scope: !302)
!304 = !DILocation(line: 156, column: 5, scope: !302)
!305 = !DILocation(line: 157, column: 1, scope: !302)
!306 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !307, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !42}
!309 = !DILocalVariable(name: "line", arg: 1, scope: !306, file: !3, line: 11, type: !42)
!310 = !DILocation(line: 11, column: 25, scope: !306)
!311 = !DILocation(line: 13, column: 1, scope: !306)
!312 = !DILocation(line: 14, column: 8, scope: !313)
!313 = distinct !DILexicalBlock(scope: !306, file: !3, line: 14, column: 8)
!314 = !DILocation(line: 14, column: 13, scope: !313)
!315 = !DILocation(line: 14, column: 8, scope: !306)
!316 = !DILocation(line: 16, column: 24, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !3, line: 15, column: 5)
!318 = !DILocation(line: 16, column: 9, scope: !317)
!319 = !DILocation(line: 17, column: 5, scope: !317)
!320 = !DILocation(line: 18, column: 5, scope: !306)
!321 = !DILocation(line: 19, column: 1, scope: !306)
!322 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !307, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!323 = !DILocalVariable(name: "line", arg: 1, scope: !322, file: !3, line: 20, type: !42)
!324 = !DILocation(line: 20, column: 29, scope: !322)
!325 = !DILocation(line: 22, column: 8, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !3, line: 22, column: 8)
!327 = !DILocation(line: 22, column: 13, scope: !326)
!328 = !DILocation(line: 22, column: 8, scope: !322)
!329 = !DILocation(line: 24, column: 24, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !3, line: 23, column: 5)
!331 = !DILocation(line: 24, column: 9, scope: !330)
!332 = !DILocation(line: 25, column: 5, scope: !330)
!333 = !DILocation(line: 26, column: 1, scope: !322)
!334 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !335, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 74, baseType: !23)
!339 = !DILocalVariable(name: "line", arg: 1, scope: !334, file: !3, line: 27, type: !337)
!340 = !DILocation(line: 27, column: 29, scope: !334)
!341 = !DILocation(line: 29, column: 8, scope: !342)
!342 = distinct !DILexicalBlock(scope: !334, file: !3, line: 29, column: 8)
!343 = !DILocation(line: 29, column: 13, scope: !342)
!344 = !DILocation(line: 29, column: 8, scope: !334)
!345 = !DILocation(line: 31, column: 27, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !3, line: 30, column: 5)
!347 = !DILocation(line: 31, column: 9, scope: !346)
!348 = !DILocation(line: 32, column: 5, scope: !346)
!349 = !DILocation(line: 33, column: 1, scope: !334)
!350 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !351, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !23}
!353 = !DILocalVariable(name: "intNumber", arg: 1, scope: !350, file: !3, line: 35, type: !23)
!354 = !DILocation(line: 35, column: 24, scope: !350)
!355 = !DILocation(line: 37, column: 20, scope: !350)
!356 = !DILocation(line: 37, column: 5, scope: !350)
!357 = !DILocation(line: 38, column: 1, scope: !350)
!358 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !359, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!362 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !358, file: !3, line: 40, type: !361)
!363 = !DILocation(line: 40, column: 28, scope: !358)
!364 = !DILocation(line: 42, column: 21, scope: !358)
!365 = !DILocation(line: 42, column: 5, scope: !358)
!366 = !DILocation(line: 43, column: 1, scope: !358)
!367 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !368, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !370}
!370 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!371 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !367, file: !3, line: 45, type: !370)
!372 = !DILocation(line: 45, column: 28, scope: !367)
!373 = !DILocation(line: 47, column: 20, scope: !367)
!374 = !DILocation(line: 47, column: 5, scope: !367)
!375 = !DILocation(line: 48, column: 1, scope: !367)
!376 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !377, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !129}
!379 = !DILocalVariable(name: "longNumber", arg: 1, scope: !376, file: !3, line: 50, type: !129)
!380 = !DILocation(line: 50, column: 26, scope: !376)
!381 = !DILocation(line: 52, column: 21, scope: !376)
!382 = !DILocation(line: 52, column: 5, scope: !376)
!383 = !DILocation(line: 53, column: 1, scope: !376)
!384 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !385, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !388, line: 27, baseType: !389)
!388 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !128, line: 44, baseType: !129)
!390 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !384, file: !3, line: 55, type: !387)
!391 = !DILocation(line: 55, column: 33, scope: !384)
!392 = !DILocation(line: 57, column: 29, scope: !384)
!393 = !DILocation(line: 57, column: 5, scope: !384)
!394 = !DILocation(line: 58, column: 1, scope: !384)
!395 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !396, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !94}
!398 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !395, file: !3, line: 60, type: !94)
!399 = !DILocation(line: 60, column: 29, scope: !395)
!400 = !DILocation(line: 62, column: 21, scope: !395)
!401 = !DILocation(line: 62, column: 5, scope: !395)
!402 = !DILocation(line: 63, column: 1, scope: !395)
!403 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !404, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !43}
!406 = !DILocalVariable(name: "charHex", arg: 1, scope: !403, file: !3, line: 65, type: !43)
!407 = !DILocation(line: 65, column: 29, scope: !403)
!408 = !DILocation(line: 67, column: 22, scope: !403)
!409 = !DILocation(line: 67, column: 5, scope: !403)
!410 = !DILocation(line: 68, column: 1, scope: !403)
!411 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !412, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !338}
!414 = !DILocalVariable(name: "wideChar", arg: 1, scope: !411, file: !3, line: 70, type: !338)
!415 = !DILocation(line: 70, column: 29, scope: !411)
!416 = !DILocalVariable(name: "s", scope: !411, file: !3, line: 74, type: !417)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 64, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 2)
!420 = !DILocation(line: 74, column: 13, scope: !411)
!421 = !DILocation(line: 75, column: 16, scope: !411)
!422 = !DILocation(line: 75, column: 9, scope: !411)
!423 = !DILocation(line: 75, column: 14, scope: !411)
!424 = !DILocation(line: 76, column: 9, scope: !411)
!425 = !DILocation(line: 76, column: 14, scope: !411)
!426 = !DILocation(line: 77, column: 21, scope: !411)
!427 = !DILocation(line: 77, column: 5, scope: !411)
!428 = !DILocation(line: 78, column: 1, scope: !411)
!429 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !430, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !7}
!432 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !429, file: !3, line: 80, type: !7)
!433 = !DILocation(line: 80, column: 33, scope: !429)
!434 = !DILocation(line: 82, column: 20, scope: !429)
!435 = !DILocation(line: 82, column: 5, scope: !429)
!436 = !DILocation(line: 83, column: 1, scope: !429)
!437 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !438, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !25}
!440 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !437, file: !3, line: 85, type: !25)
!441 = !DILocation(line: 85, column: 45, scope: !437)
!442 = !DILocation(line: 87, column: 22, scope: !437)
!443 = !DILocation(line: 87, column: 5, scope: !437)
!444 = !DILocation(line: 88, column: 1, scope: !437)
!445 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !446, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !448}
!448 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!449 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !445, file: !3, line: 90, type: !448)
!450 = !DILocation(line: 90, column: 29, scope: !445)
!451 = !DILocation(line: 92, column: 20, scope: !445)
!452 = !DILocation(line: 92, column: 5, scope: !445)
!453 = !DILocation(line: 93, column: 1, scope: !445)
!454 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !455, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !459, line: 100, baseType: !460)
!459 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_174/source_code")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !459, line: 96, size: 64, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !460, file: !459, line: 98, baseType: !23, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !460, file: !459, line: 99, baseType: !23, size: 32, offset: 32)
!464 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !454, file: !3, line: 95, type: !457)
!465 = !DILocation(line: 95, column: 40, scope: !454)
!466 = !DILocation(line: 97, column: 26, scope: !454)
!467 = !DILocation(line: 97, column: 47, scope: !454)
!468 = !DILocation(line: 97, column: 55, scope: !454)
!469 = !DILocation(line: 97, column: 76, scope: !454)
!470 = !DILocation(line: 97, column: 5, scope: !454)
!471 = !DILocation(line: 98, column: 1, scope: !454)
!472 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !473, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !475, !94}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!476 = !DILocalVariable(name: "bytes", arg: 1, scope: !472, file: !3, line: 100, type: !475)
!477 = !DILocation(line: 100, column: 38, scope: !472)
!478 = !DILocalVariable(name: "numBytes", arg: 2, scope: !472, file: !3, line: 100, type: !94)
!479 = !DILocation(line: 100, column: 52, scope: !472)
!480 = !DILocalVariable(name: "i", scope: !472, file: !3, line: 102, type: !94)
!481 = !DILocation(line: 102, column: 12, scope: !472)
!482 = !DILocation(line: 103, column: 12, scope: !483)
!483 = distinct !DILexicalBlock(scope: !472, file: !3, line: 103, column: 5)
!484 = !DILocation(line: 103, column: 10, scope: !483)
!485 = !DILocation(line: 103, column: 17, scope: !486)
!486 = distinct !DILexicalBlock(scope: !483, file: !3, line: 103, column: 5)
!487 = !DILocation(line: 103, column: 21, scope: !486)
!488 = !DILocation(line: 103, column: 19, scope: !486)
!489 = !DILocation(line: 103, column: 5, scope: !483)
!490 = !DILocation(line: 105, column: 24, scope: !491)
!491 = distinct !DILexicalBlock(scope: !486, file: !3, line: 104, column: 5)
!492 = !DILocation(line: 105, column: 30, scope: !491)
!493 = !DILocation(line: 105, column: 9, scope: !491)
!494 = !DILocation(line: 106, column: 5, scope: !491)
!495 = !DILocation(line: 103, column: 31, scope: !486)
!496 = !DILocation(line: 103, column: 5, scope: !486)
!497 = distinct !{!497, !489, !498, !499}
!498 = !DILocation(line: 106, column: 5, scope: !483)
!499 = !{!"llvm.loop.mustprogress"}
!500 = !DILocation(line: 107, column: 5, scope: !472)
!501 = !DILocation(line: 108, column: 1, scope: !472)
!502 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !503, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DISubroutineType(types: !504)
!504 = !{!94, !475, !94, !42}
!505 = !DILocalVariable(name: "bytes", arg: 1, scope: !502, file: !3, line: 113, type: !475)
!506 = !DILocation(line: 113, column: 39, scope: !502)
!507 = !DILocalVariable(name: "numBytes", arg: 2, scope: !502, file: !3, line: 113, type: !94)
!508 = !DILocation(line: 113, column: 53, scope: !502)
!509 = !DILocalVariable(name: "hex", arg: 3, scope: !502, file: !3, line: 113, type: !42)
!510 = !DILocation(line: 113, column: 71, scope: !502)
!511 = !DILocalVariable(name: "numWritten", scope: !502, file: !3, line: 115, type: !94)
!512 = !DILocation(line: 115, column: 12, scope: !502)
!513 = !DILocation(line: 121, column: 5, scope: !502)
!514 = !DILocation(line: 121, column: 12, scope: !502)
!515 = !DILocation(line: 121, column: 25, scope: !502)
!516 = !DILocation(line: 121, column: 23, scope: !502)
!517 = !DILocation(line: 121, column: 34, scope: !502)
!518 = !DILocation(line: 121, column: 37, scope: !502)
!519 = !DILocation(line: 121, column: 67, scope: !502)
!520 = !DILocation(line: 121, column: 70, scope: !502)
!521 = !DILocation(line: 0, scope: !502)
!522 = !DILocalVariable(name: "byte", scope: !523, file: !3, line: 123, type: !23)
!523 = distinct !DILexicalBlock(scope: !502, file: !3, line: 122, column: 5)
!524 = !DILocation(line: 123, column: 13, scope: !523)
!525 = !DILocation(line: 124, column: 17, scope: !523)
!526 = !DILocation(line: 124, column: 25, scope: !523)
!527 = !DILocation(line: 124, column: 23, scope: !523)
!528 = !DILocation(line: 124, column: 9, scope: !523)
!529 = !DILocation(line: 125, column: 45, scope: !523)
!530 = !DILocation(line: 125, column: 29, scope: !523)
!531 = !DILocation(line: 125, column: 9, scope: !523)
!532 = !DILocation(line: 125, column: 15, scope: !523)
!533 = !DILocation(line: 125, column: 27, scope: !523)
!534 = !DILocation(line: 126, column: 9, scope: !523)
!535 = distinct !{!535, !513, !536, !499}
!536 = !DILocation(line: 127, column: 5, scope: !502)
!537 = !DILocation(line: 129, column: 12, scope: !502)
!538 = !DILocation(line: 129, column: 5, scope: !502)
!539 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !540, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DISubroutineType(types: !541)
!541 = !{!94, !475, !94, !337}
!542 = !DILocalVariable(name: "bytes", arg: 1, scope: !539, file: !3, line: 135, type: !475)
!543 = !DILocation(line: 135, column: 41, scope: !539)
!544 = !DILocalVariable(name: "numBytes", arg: 2, scope: !539, file: !3, line: 135, type: !94)
!545 = !DILocation(line: 135, column: 55, scope: !539)
!546 = !DILocalVariable(name: "hex", arg: 3, scope: !539, file: !3, line: 135, type: !337)
!547 = !DILocation(line: 135, column: 76, scope: !539)
!548 = !DILocalVariable(name: "numWritten", scope: !539, file: !3, line: 137, type: !94)
!549 = !DILocation(line: 137, column: 12, scope: !539)
!550 = !DILocation(line: 143, column: 5, scope: !539)
!551 = !DILocation(line: 143, column: 12, scope: !539)
!552 = !DILocation(line: 143, column: 25, scope: !539)
!553 = !DILocation(line: 143, column: 23, scope: !539)
!554 = !DILocation(line: 143, column: 34, scope: !539)
!555 = !DILocation(line: 143, column: 47, scope: !539)
!556 = !DILocation(line: 143, column: 55, scope: !539)
!557 = !DILocation(line: 143, column: 53, scope: !539)
!558 = !DILocation(line: 143, column: 37, scope: !539)
!559 = !DILocation(line: 143, column: 68, scope: !539)
!560 = !DILocation(line: 143, column: 81, scope: !539)
!561 = !DILocation(line: 143, column: 89, scope: !539)
!562 = !DILocation(line: 143, column: 87, scope: !539)
!563 = !DILocation(line: 143, column: 100, scope: !539)
!564 = !DILocation(line: 143, column: 71, scope: !539)
!565 = !DILocation(line: 0, scope: !539)
!566 = !DILocalVariable(name: "byte", scope: !567, file: !3, line: 145, type: !23)
!567 = distinct !DILexicalBlock(scope: !539, file: !3, line: 144, column: 5)
!568 = !DILocation(line: 145, column: 13, scope: !567)
!569 = !DILocation(line: 146, column: 18, scope: !567)
!570 = !DILocation(line: 146, column: 26, scope: !567)
!571 = !DILocation(line: 146, column: 24, scope: !567)
!572 = !DILocation(line: 146, column: 9, scope: !567)
!573 = !DILocation(line: 147, column: 45, scope: !567)
!574 = !DILocation(line: 147, column: 29, scope: !567)
!575 = !DILocation(line: 147, column: 9, scope: !567)
!576 = !DILocation(line: 147, column: 15, scope: !567)
!577 = !DILocation(line: 147, column: 27, scope: !567)
!578 = !DILocation(line: 148, column: 9, scope: !567)
!579 = distinct !{!579, !550, !580, !499}
!580 = !DILocation(line: 149, column: 5, scope: !539)
!581 = !DILocation(line: 151, column: 12, scope: !539)
!582 = !DILocation(line: 151, column: 5, scope: !539)
!583 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !584, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DISubroutineType(types: !585)
!585 = !{!23}
!586 = !DILocation(line: 158, column: 5, scope: !583)
!587 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !584, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 163, column: 5, scope: !587)
!589 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !584, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 168, column: 13, scope: !589)
!591 = !DILocation(line: 168, column: 20, scope: !589)
!592 = !DILocation(line: 168, column: 5, scope: !589)
!593 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !81, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 187, column: 16, scope: !593)
!595 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !81, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 188, column: 16, scope: !595)
!597 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !81, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 189, column: 16, scope: !597)
!599 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !81, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 190, column: 16, scope: !599)
!601 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !81, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 191, column: 16, scope: !601)
!603 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !81, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 192, column: 16, scope: !603)
!605 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !81, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 193, column: 16, scope: !605)
!607 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !81, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 194, column: 16, scope: !607)
!609 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !81, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 195, column: 16, scope: !609)
!611 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !81, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 198, column: 15, scope: !611)
!613 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !81, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 199, column: 15, scope: !613)
!615 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !81, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 200, column: 15, scope: !615)
!617 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !81, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 201, column: 15, scope: !617)
!619 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !81, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 202, column: 15, scope: !619)
!621 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !81, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 203, column: 15, scope: !621)
!623 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !81, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 204, column: 15, scope: !623)
!625 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !81, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 205, column: 15, scope: !625)
!627 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !81, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 206, column: 15, scope: !627)
