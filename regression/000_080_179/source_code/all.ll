; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
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
define dso_local i8* @badSource(i8* %data) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !57, metadata !DIExpression()), !dbg !62
  %0 = load i8*, i8** %data.addr, align 8, !dbg !63
  %call = call i64 @strlen(i8* %0) #8, !dbg !64
  store i64 %call, i64* %dataLen, align 8, !dbg !62
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !65, metadata !DIExpression()), !dbg !121
  %1 = load i64, i64* %dataLen, align 8, !dbg !122
  %sub = sub i64 100, %1, !dbg !124
  %cmp = icmp ugt i64 %sub, 1, !dbg !125
  br i1 %cmp, label %if.then, label %if.end11, !dbg !126

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !127
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !129
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !130
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !132
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !133

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !134
  %4 = load i64, i64* %dataLen, align 8, !dbg !137
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !138
  %5 = load i64, i64* %dataLen, align 8, !dbg !139
  %sub4 = sub i64 100, %5, !dbg !140
  %conv = trunc i64 %sub4 to i32, !dbg !141
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !142
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !143
  %cmp6 = icmp eq i8* %call5, null, !dbg !144
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !145

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !146
  %7 = load i8*, i8** %data.addr, align 8, !dbg !148
  %8 = load i64, i64* %dataLen, align 8, !dbg !149
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !148
  store i8 0, i8* %arrayidx, align 1, !dbg !150
  br label %if.end, !dbg !151

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !152
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !153
  br label %if.end10, !dbg !154

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !155

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !156
  ret i8* %10, !dbg !157
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !158 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !163, metadata !DIExpression()), !dbg !177
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !178
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !178
  call void @llvm.va_start(i8* %arraydecay1), !dbg !178
  %0 = load i8*, i8** %data.addr, align 8, !dbg !179
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !180
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !181
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !182
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !182
  call void @llvm.va_end(i8* %arraydecay34), !dbg !182
  ret void, !dbg !183
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad() #0 !dbg !184 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !189, metadata !DIExpression()), !dbg !193
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !193
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !193
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !194
  store i8* %arraydecay, i8** %data, align 8, !dbg !195
  %1 = load i8*, i8** %data, align 8, !dbg !196
  %call = call i8* @badSource(i8* %1), !dbg !197
  store i8* %call, i8** %data, align 8, !dbg !198
  %2 = load i8*, i8** %data, align 8, !dbg !199
  %3 = load i8*, i8** %data, align 8, !dbg !200
  call void (i8*, ...) @badVaSink(i8* %2, i8* %3), !dbg !201
  ret void, !dbg !202
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodG2BSource(i8* %data) #0 !dbg !203 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !204, metadata !DIExpression()), !dbg !205
  %0 = load i8*, i8** %data.addr, align 8, !dbg !206
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !207
  %1 = load i8*, i8** %data.addr, align 8, !dbg !208
  ret i8* %1, !dbg !209
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

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
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !226
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !226
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !227
  store i8* %arraydecay, i8** %data, align 8, !dbg !228
  %1 = load i8*, i8** %data, align 8, !dbg !229
  %call = call i8* @goodG2BSource(i8* %1), !dbg !230
  store i8* %call, i8** %data, align 8, !dbg !231
  %2 = load i8*, i8** %data, align 8, !dbg !232
  %3 = load i8*, i8** %data, align 8, !dbg !233
  call void (i8*, ...) @goodG2BVaSink(i8* %2, i8* %3), !dbg !234
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodB2GSource(i8* %data) #0 !dbg !236 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !239, metadata !DIExpression()), !dbg !241
  %0 = load i8*, i8** %data.addr, align 8, !dbg !242
  %call = call i64 @strlen(i8* %0) #8, !dbg !243
  store i64 %call, i64* %dataLen, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !244, metadata !DIExpression()), !dbg !245
  %1 = load i64, i64* %dataLen, align 8, !dbg !246
  %sub = sub i64 100, %1, !dbg !248
  %cmp = icmp ugt i64 %sub, 1, !dbg !249
  br i1 %cmp, label %if.then, label %if.end11, !dbg !250

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !251
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !253
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !254
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !256
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !257

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !258
  %4 = load i64, i64* %dataLen, align 8, !dbg !261
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !262
  %5 = load i64, i64* %dataLen, align 8, !dbg !263
  %sub4 = sub i64 100, %5, !dbg !264
  %conv = trunc i64 %sub4 to i32, !dbg !265
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !266
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !267
  %cmp6 = icmp eq i8* %call5, null, !dbg !268
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !269

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !270
  %7 = load i8*, i8** %data.addr, align 8, !dbg !272
  %8 = load i64, i64* %dataLen, align 8, !dbg !273
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !272
  store i8 0, i8* %arrayidx, align 1, !dbg !274
  br label %if.end, !dbg !275

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !276
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !277
  br label %if.end10, !dbg !278

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !279

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !280
  ret i8* %10, !dbg !281
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !282 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !283, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !285, metadata !DIExpression()), !dbg !287
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !288
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !288
  call void @llvm.va_start(i8* %arraydecay1), !dbg !288
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !289
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !290
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !291
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !291
  call void @llvm.va_end(i8* %arraydecay34), !dbg !291
  ret void, !dbg !292
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !293 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !297
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !297
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !298
  store i8* %arraydecay, i8** %data, align 8, !dbg !299
  %1 = load i8*, i8** %data, align 8, !dbg !300
  %call = call i8* @goodB2GSource(i8* %1), !dbg !301
  store i8* %call, i8** %data, align 8, !dbg !302
  %2 = load i8*, i8** %data, align 8, !dbg !303
  %3 = load i8*, i8** %data, align 8, !dbg !304
  call void (i8*, ...) @goodB2GVaSink(i8* %2, i8* %3), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_vprintf_42_good() #0 !dbg !307 {
entry:
  call void @goodG2B(), !dbg !308
  call void @goodB2G(), !dbg !309
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !311 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !316
  %0 = load i8*, i8** %line.addr, align 8, !dbg !317
  %cmp = icmp ne i8* %0, null, !dbg !319
  br i1 %cmp, label %if.then, label %if.end, !dbg !320

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !321
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !323
  br label %if.end, !dbg !324

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !325
  ret void, !dbg !326
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !327 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = load i8*, i8** %line.addr, align 8, !dbg !330
  %cmp = icmp ne i8* %0, null, !dbg !332
  br i1 %cmp, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !334
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !336
  br label %if.end, !dbg !337

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !339 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i32*, i32** %line.addr, align 8, !dbg !346
  %cmp = icmp ne i32* %0, null, !dbg !348
  br i1 %cmp, label %if.then, label %if.end, !dbg !349

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !350
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !352
  br label %if.end, !dbg !353

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !354
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !355 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.9, i64 0, i64 0), i32 %0), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !363 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !369
  %conv = sext i16 %0 to i32, !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.10, i64 0, i64 0), i32 %conv), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !372 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !378
  %conv = fpext float %0 to double, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !381 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !384, metadata !DIExpression()), !dbg !385
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !386
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !387
  ret void, !dbg !388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !389 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !397
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !400 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !408 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !413
  %conv = sext i8 %0 to i32, !dbg !413
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !414
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !416 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !421, metadata !DIExpression()), !dbg !425
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !426
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !427
  store i32 %0, i32* %arrayidx, align 4, !dbg !428
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !429
  store i32 0, i32* %arrayidx1, align 4, !dbg !430
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !431
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !432
  ret void, !dbg !433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !434 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !437, metadata !DIExpression()), !dbg !438
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !439
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !440
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !442 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !445, metadata !DIExpression()), !dbg !446
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !447
  %conv = zext i8 %0 to i32, !dbg !447
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !448
  ret void, !dbg !449
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !450 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !457
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !459 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !471
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !472
  %1 = load i32, i32* %intOne, align 4, !dbg !472
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !473
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !474
  %3 = load i32, i32* %intTwo, align 4, !dbg !474
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !475
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !477 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !481, metadata !DIExpression()), !dbg !482
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !483, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.declare(metadata i64* %i, metadata !485, metadata !DIExpression()), !dbg !486
  store i64 0, i64* %i, align 8, !dbg !487
  br label %for.cond, !dbg !489

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !490
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !492
  %cmp = icmp ult i64 %0, %1, !dbg !493
  br i1 %cmp, label %for.body, label %for.end, !dbg !494

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !495
  %3 = load i64, i64* %i, align 8, !dbg !497
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !495
  %4 = load i8, i8* %arrayidx, align 1, !dbg !495
  %conv = zext i8 %4 to i32, !dbg !495
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !498
  br label %for.inc, !dbg !499

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !500
  %inc = add i64 %5, 1, !dbg !500
  store i64 %inc, i64* %i, align 8, !dbg !500
  br label %for.cond, !dbg !501, !llvm.loop !502

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !505
  ret void, !dbg !506
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !507 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !510, metadata !DIExpression()), !dbg !511
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !516, metadata !DIExpression()), !dbg !517
  store i64 0, i64* %numWritten, align 8, !dbg !517
  br label %while.cond, !dbg !518

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !519
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !520
  %cmp = icmp ult i64 %0, %1, !dbg !521
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !522

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !523
  %2 = load i16*, i16** %call, align 8, !dbg !523
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !523
  %4 = load i64, i64* %numWritten, align 8, !dbg !523
  %mul = mul i64 2, %4, !dbg !523
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !523
  %5 = load i8, i8* %arrayidx, align 1, !dbg !523
  %conv = sext i8 %5 to i32, !dbg !523
  %idxprom = sext i32 %conv to i64, !dbg !523
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !523
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !523
  %conv2 = zext i16 %6 to i32, !dbg !523
  %and = and i32 %conv2, 4096, !dbg !523
  %tobool = icmp ne i32 %and, 0, !dbg !523
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !524

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !525
  %7 = load i16*, i16** %call3, align 8, !dbg !525
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !525
  %9 = load i64, i64* %numWritten, align 8, !dbg !525
  %mul4 = mul i64 2, %9, !dbg !525
  %add = add i64 %mul4, 1, !dbg !525
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !525
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !525
  %conv6 = sext i8 %10 to i32, !dbg !525
  %idxprom7 = sext i32 %conv6 to i64, !dbg !525
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !525
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !525
  %conv9 = zext i16 %11 to i32, !dbg !525
  %and10 = and i32 %conv9, 4096, !dbg !525
  %tobool11 = icmp ne i32 %and10, 0, !dbg !524
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !526
  br i1 %12, label %while.body, label %while.end, !dbg !518

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !527, metadata !DIExpression()), !dbg !529
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !530
  %14 = load i64, i64* %numWritten, align 8, !dbg !531
  %mul12 = mul i64 2, %14, !dbg !532
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !530
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !533
  %15 = load i32, i32* %byte, align 4, !dbg !534
  %conv15 = trunc i32 %15 to i8, !dbg !535
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !536
  %17 = load i64, i64* %numWritten, align 8, !dbg !537
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !536
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !538
  %18 = load i64, i64* %numWritten, align 8, !dbg !539
  %inc = add i64 %18, 1, !dbg !539
  store i64 %inc, i64* %numWritten, align 8, !dbg !539
  br label %while.cond, !dbg !518, !llvm.loop !540

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !542
  ret i64 %19, !dbg !543
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !544 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !547, metadata !DIExpression()), !dbg !548
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !549, metadata !DIExpression()), !dbg !550
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !553, metadata !DIExpression()), !dbg !554
  store i64 0, i64* %numWritten, align 8, !dbg !554
  br label %while.cond, !dbg !555

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !556
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !557
  %cmp = icmp ult i64 %0, %1, !dbg !558
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !559

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !560
  %3 = load i64, i64* %numWritten, align 8, !dbg !561
  %mul = mul i64 2, %3, !dbg !562
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !560
  %4 = load i32, i32* %arrayidx, align 4, !dbg !560
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !563
  %tobool = icmp ne i32 %call, 0, !dbg !563
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !564

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !565
  %6 = load i64, i64* %numWritten, align 8, !dbg !566
  %mul1 = mul i64 2, %6, !dbg !567
  %add = add i64 %mul1, 1, !dbg !568
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !565
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !565
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !569
  %tobool4 = icmp ne i32 %call3, 0, !dbg !564
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !570
  br i1 %8, label %while.body, label %while.end, !dbg !555

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !571, metadata !DIExpression()), !dbg !573
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !574
  %10 = load i64, i64* %numWritten, align 8, !dbg !575
  %mul5 = mul i64 2, %10, !dbg !576
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !574
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !577
  %11 = load i32, i32* %byte, align 4, !dbg !578
  %conv = trunc i32 %11 to i8, !dbg !579
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !580
  %13 = load i64, i64* %numWritten, align 8, !dbg !581
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !580
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !582
  %14 = load i64, i64* %numWritten, align 8, !dbg !583
  %inc = add i64 %14, 1, !dbg !583
  store i64 %inc, i64* %numWritten, align 8, !dbg !583
  br label %while.cond, !dbg !555, !llvm.loop !584

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !586
  ret i64 %15, !dbg !587
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !588 {
entry:
  ret i32 1, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !592 {
entry:
  ret i32 0, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !594 {
entry:
  %call = call i32 @rand() #9, !dbg !595
  %rem = srem i32 %call, 2, !dbg !596
  ret i32 %rem, !dbg !597
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !598 {
entry:
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !600 {
entry:
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !602 {
entry:
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !604 {
entry:
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !606 {
entry:
  ret void, !dbg !607
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !608 {
entry:
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !610 {
entry:
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !612 {
entry:
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !614 {
entry:
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !616 {
entry:
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !618 {
entry:
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !620 {
entry:
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !622 {
entry:
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !624 {
entry:
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !626 {
entry:
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !632 {
entry:
  ret void, !dbg !633
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_179/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_vprintf_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_179/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSource", scope: !45, file: !45, line: 34, type: !53, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{!42, !42}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 34, type: !42)
!56 = !DILocation(line: 34, column: 25, scope: !52)
!57 = !DILocalVariable(name: "dataLen", scope: !58, file: !45, line: 38, type: !59)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 36, column: 5)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 46, baseType: !61)
!60 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!61 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DILocation(line: 38, column: 16, scope: !58)
!63 = !DILocation(line: 38, column: 33, scope: !58)
!64 = !DILocation(line: 38, column: 26, scope: !58)
!65 = !DILocalVariable(name: "pFile", scope: !58, file: !45, line: 39, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !68, line: 7, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !70, line: 49, size: 1728, elements: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !87, !89, !90, !91, !95, !96, !98, !102, !105, !107, !110, !113, !114, !115, !116, !117}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !69, file: !70, line: 51, baseType: !23, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !69, file: !70, line: 54, baseType: !42, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !69, file: !70, line: 55, baseType: !42, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !69, file: !70, line: 56, baseType: !42, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !69, file: !70, line: 57, baseType: !42, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !69, file: !70, line: 58, baseType: !42, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !69, file: !70, line: 59, baseType: !42, size: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !69, file: !70, line: 60, baseType: !42, size: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !69, file: !70, line: 61, baseType: !42, size: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !69, file: !70, line: 64, baseType: !42, size: 64, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !69, file: !70, line: 65, baseType: !42, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !69, file: !70, line: 66, baseType: !42, size: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !69, file: !70, line: 68, baseType: !85, size: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !70, line: 36, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !69, file: !70, line: 70, baseType: !88, size: 64, offset: 832)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !69, file: !70, line: 72, baseType: !23, size: 32, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !69, file: !70, line: 73, baseType: !23, size: 32, offset: 928)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !69, file: !70, line: 74, baseType: !92, size: 64, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !93, line: 152, baseType: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!94 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !69, file: !70, line: 77, baseType: !24, size: 16, offset: 1024)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !69, file: !70, line: 78, baseType: !97, size: 8, offset: 1040)
!97 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !69, file: !70, line: 79, baseType: !99, size: 8, offset: 1048)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 1)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !69, file: !70, line: 81, baseType: !103, size: 64, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !70, line: 43, baseType: null)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !69, file: !70, line: 89, baseType: !106, size: 64, offset: 1152)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !93, line: 153, baseType: !94)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !69, file: !70, line: 91, baseType: !108, size: 64, offset: 1216)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !70, line: 37, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !69, file: !70, line: 92, baseType: !111, size: 64, offset: 1280)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !70, line: 38, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !69, file: !70, line: 93, baseType: !88, size: 64, offset: 1344)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !69, file: !70, line: 94, baseType: !22, size: 64, offset: 1408)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !69, file: !70, line: 95, baseType: !59, size: 64, offset: 1472)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !69, file: !70, line: 96, baseType: !23, size: 32, offset: 1536)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !69, file: !70, line: 98, baseType: !118, size: 160, offset: 1568)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 20)
!121 = !DILocation(line: 39, column: 16, scope: !58)
!122 = !DILocation(line: 41, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !58, file: !45, line: 41, column: 13)
!124 = !DILocation(line: 41, column: 16, scope: !123)
!125 = !DILocation(line: 41, column: 25, scope: !123)
!126 = !DILocation(line: 41, column: 13, scope: !58)
!127 = !DILocation(line: 43, column: 21, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !45, line: 42, column: 9)
!129 = !DILocation(line: 43, column: 19, scope: !128)
!130 = !DILocation(line: 44, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !45, line: 44, column: 17)
!132 = !DILocation(line: 44, column: 23, scope: !131)
!133 = !DILocation(line: 44, column: 17, scope: !128)
!134 = !DILocation(line: 47, column: 27, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !45, line: 47, column: 21)
!136 = distinct !DILexicalBlock(scope: !131, file: !45, line: 45, column: 13)
!137 = !DILocation(line: 47, column: 32, scope: !135)
!138 = !DILocation(line: 47, column: 31, scope: !135)
!139 = !DILocation(line: 47, column: 51, scope: !135)
!140 = !DILocation(line: 47, column: 50, scope: !135)
!141 = !DILocation(line: 47, column: 41, scope: !135)
!142 = !DILocation(line: 47, column: 61, scope: !135)
!143 = !DILocation(line: 47, column: 21, scope: !135)
!144 = !DILocation(line: 47, column: 68, scope: !135)
!145 = !DILocation(line: 47, column: 21, scope: !136)
!146 = !DILocation(line: 49, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !135, file: !45, line: 48, column: 17)
!148 = !DILocation(line: 51, column: 21, scope: !147)
!149 = !DILocation(line: 51, column: 26, scope: !147)
!150 = !DILocation(line: 51, column: 35, scope: !147)
!151 = !DILocation(line: 52, column: 17, scope: !147)
!152 = !DILocation(line: 53, column: 24, scope: !136)
!153 = !DILocation(line: 53, column: 17, scope: !136)
!154 = !DILocation(line: 54, column: 13, scope: !136)
!155 = !DILocation(line: 55, column: 9, scope: !128)
!156 = !DILocation(line: 57, column: 12, scope: !52)
!157 = !DILocation(line: 57, column: 5, scope: !52)
!158 = distinct !DISubprogram(name: "badVaSink", scope: !45, file: !45, line: 60, type: !159, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !42, null}
!161 = !DILocalVariable(name: "data", arg: 1, scope: !158, file: !45, line: 60, type: !42)
!162 = !DILocation(line: 60, column: 23, scope: !158)
!163 = !DILocalVariable(name: "args", scope: !164, file: !45, line: 63, type: !165)
!164 = distinct !DILexicalBlock(scope: !158, file: !45, line: 62, column: 5)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !166, line: 52, baseType: !167)
!166 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !168, line: 32, baseType: !169)
!168 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !45, baseType: !170)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 192, elements: !100)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !172)
!172 = !{!173, !174, !175, !176}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !171, file: !45, line: 63, baseType: !7, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !171, file: !45, line: 63, baseType: !7, size: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !171, file: !45, line: 63, baseType: !22, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !171, file: !45, line: 63, baseType: !22, size: 64, offset: 128)
!177 = !DILocation(line: 63, column: 17, scope: !164)
!178 = !DILocation(line: 64, column: 9, scope: !164)
!179 = !DILocation(line: 66, column: 17, scope: !164)
!180 = !DILocation(line: 66, column: 23, scope: !164)
!181 = !DILocation(line: 66, column: 9, scope: !164)
!182 = !DILocation(line: 67, column: 9, scope: !164)
!183 = !DILocation(line: 69, column: 1, scope: !158)
!184 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad", scope: !45, file: !45, line: 71, type: !185, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!185 = !DISubroutineType(types: !186)
!186 = !{null}
!187 = !DILocalVariable(name: "data", scope: !184, file: !45, line: 73, type: !42)
!188 = !DILocation(line: 73, column: 12, scope: !184)
!189 = !DILocalVariable(name: "dataBuffer", scope: !184, file: !45, line: 74, type: !190)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 100)
!193 = !DILocation(line: 74, column: 10, scope: !184)
!194 = !DILocation(line: 75, column: 12, scope: !184)
!195 = !DILocation(line: 75, column: 10, scope: !184)
!196 = !DILocation(line: 76, column: 22, scope: !184)
!197 = !DILocation(line: 76, column: 12, scope: !184)
!198 = !DILocation(line: 76, column: 10, scope: !184)
!199 = !DILocation(line: 77, column: 15, scope: !184)
!200 = !DILocation(line: 77, column: 21, scope: !184)
!201 = !DILocation(line: 77, column: 5, scope: !184)
!202 = !DILocation(line: 78, column: 1, scope: !184)
!203 = distinct !DISubprogram(name: "goodG2BSource", scope: !45, file: !45, line: 85, type: !53, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!204 = !DILocalVariable(name: "data", arg: 1, scope: !203, file: !45, line: 85, type: !42)
!205 = !DILocation(line: 85, column: 29, scope: !203)
!206 = !DILocation(line: 88, column: 12, scope: !203)
!207 = !DILocation(line: 88, column: 5, scope: !203)
!208 = !DILocation(line: 89, column: 12, scope: !203)
!209 = !DILocation(line: 89, column: 5, scope: !203)
!210 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !45, file: !45, line: 92, type: !159, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!211 = !DILocalVariable(name: "data", arg: 1, scope: !210, file: !45, line: 92, type: !42)
!212 = !DILocation(line: 92, column: 27, scope: !210)
!213 = !DILocalVariable(name: "args", scope: !214, file: !45, line: 95, type: !165)
!214 = distinct !DILexicalBlock(scope: !210, file: !45, line: 94, column: 5)
!215 = !DILocation(line: 95, column: 17, scope: !214)
!216 = !DILocation(line: 96, column: 9, scope: !214)
!217 = !DILocation(line: 98, column: 17, scope: !214)
!218 = !DILocation(line: 98, column: 23, scope: !214)
!219 = !DILocation(line: 98, column: 9, scope: !214)
!220 = !DILocation(line: 99, column: 9, scope: !214)
!221 = !DILocation(line: 101, column: 1, scope: !210)
!222 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 103, type: !185, scopeLine: 104, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!223 = !DILocalVariable(name: "data", scope: !222, file: !45, line: 105, type: !42)
!224 = !DILocation(line: 105, column: 12, scope: !222)
!225 = !DILocalVariable(name: "dataBuffer", scope: !222, file: !45, line: 106, type: !190)
!226 = !DILocation(line: 106, column: 10, scope: !222)
!227 = !DILocation(line: 107, column: 12, scope: !222)
!228 = !DILocation(line: 107, column: 10, scope: !222)
!229 = !DILocation(line: 108, column: 26, scope: !222)
!230 = !DILocation(line: 108, column: 12, scope: !222)
!231 = !DILocation(line: 108, column: 10, scope: !222)
!232 = !DILocation(line: 109, column: 19, scope: !222)
!233 = !DILocation(line: 109, column: 25, scope: !222)
!234 = !DILocation(line: 109, column: 5, scope: !222)
!235 = !DILocation(line: 110, column: 1, scope: !222)
!236 = distinct !DISubprogram(name: "goodB2GSource", scope: !45, file: !45, line: 113, type: !53, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!237 = !DILocalVariable(name: "data", arg: 1, scope: !236, file: !45, line: 113, type: !42)
!238 = !DILocation(line: 113, column: 29, scope: !236)
!239 = !DILocalVariable(name: "dataLen", scope: !240, file: !45, line: 117, type: !59)
!240 = distinct !DILexicalBlock(scope: !236, file: !45, line: 115, column: 5)
!241 = !DILocation(line: 117, column: 16, scope: !240)
!242 = !DILocation(line: 117, column: 33, scope: !240)
!243 = !DILocation(line: 117, column: 26, scope: !240)
!244 = !DILocalVariable(name: "pFile", scope: !240, file: !45, line: 118, type: !66)
!245 = !DILocation(line: 118, column: 16, scope: !240)
!246 = !DILocation(line: 120, column: 17, scope: !247)
!247 = distinct !DILexicalBlock(scope: !240, file: !45, line: 120, column: 13)
!248 = !DILocation(line: 120, column: 16, scope: !247)
!249 = !DILocation(line: 120, column: 25, scope: !247)
!250 = !DILocation(line: 120, column: 13, scope: !240)
!251 = !DILocation(line: 122, column: 21, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !45, line: 121, column: 9)
!253 = !DILocation(line: 122, column: 19, scope: !252)
!254 = !DILocation(line: 123, column: 17, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !45, line: 123, column: 17)
!256 = !DILocation(line: 123, column: 23, scope: !255)
!257 = !DILocation(line: 123, column: 17, scope: !252)
!258 = !DILocation(line: 126, column: 27, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !45, line: 126, column: 21)
!260 = distinct !DILexicalBlock(scope: !255, file: !45, line: 124, column: 13)
!261 = !DILocation(line: 126, column: 32, scope: !259)
!262 = !DILocation(line: 126, column: 31, scope: !259)
!263 = !DILocation(line: 126, column: 51, scope: !259)
!264 = !DILocation(line: 126, column: 50, scope: !259)
!265 = !DILocation(line: 126, column: 41, scope: !259)
!266 = !DILocation(line: 126, column: 61, scope: !259)
!267 = !DILocation(line: 126, column: 21, scope: !259)
!268 = !DILocation(line: 126, column: 68, scope: !259)
!269 = !DILocation(line: 126, column: 21, scope: !260)
!270 = !DILocation(line: 128, column: 21, scope: !271)
!271 = distinct !DILexicalBlock(scope: !259, file: !45, line: 127, column: 17)
!272 = !DILocation(line: 130, column: 21, scope: !271)
!273 = !DILocation(line: 130, column: 26, scope: !271)
!274 = !DILocation(line: 130, column: 35, scope: !271)
!275 = !DILocation(line: 131, column: 17, scope: !271)
!276 = !DILocation(line: 132, column: 24, scope: !260)
!277 = !DILocation(line: 132, column: 17, scope: !260)
!278 = !DILocation(line: 133, column: 13, scope: !260)
!279 = !DILocation(line: 134, column: 9, scope: !252)
!280 = !DILocation(line: 136, column: 12, scope: !236)
!281 = !DILocation(line: 136, column: 5, scope: !236)
!282 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !45, file: !45, line: 139, type: !159, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!283 = !DILocalVariable(name: "data", arg: 1, scope: !282, file: !45, line: 139, type: !42)
!284 = !DILocation(line: 139, column: 27, scope: !282)
!285 = !DILocalVariable(name: "args", scope: !286, file: !45, line: 142, type: !165)
!286 = distinct !DILexicalBlock(scope: !282, file: !45, line: 141, column: 5)
!287 = !DILocation(line: 142, column: 17, scope: !286)
!288 = !DILocation(line: 143, column: 9, scope: !286)
!289 = !DILocation(line: 145, column: 23, scope: !286)
!290 = !DILocation(line: 145, column: 9, scope: !286)
!291 = !DILocation(line: 146, column: 9, scope: !286)
!292 = !DILocation(line: 148, column: 1, scope: !282)
!293 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 150, type: !185, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!294 = !DILocalVariable(name: "data", scope: !293, file: !45, line: 152, type: !42)
!295 = !DILocation(line: 152, column: 12, scope: !293)
!296 = !DILocalVariable(name: "dataBuffer", scope: !293, file: !45, line: 153, type: !190)
!297 = !DILocation(line: 153, column: 10, scope: !293)
!298 = !DILocation(line: 154, column: 12, scope: !293)
!299 = !DILocation(line: 154, column: 10, scope: !293)
!300 = !DILocation(line: 155, column: 26, scope: !293)
!301 = !DILocation(line: 155, column: 12, scope: !293)
!302 = !DILocation(line: 155, column: 10, scope: !293)
!303 = !DILocation(line: 156, column: 19, scope: !293)
!304 = !DILocation(line: 156, column: 25, scope: !293)
!305 = !DILocation(line: 156, column: 5, scope: !293)
!306 = !DILocation(line: 157, column: 1, scope: !293)
!307 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_vprintf_42_good", scope: !45, file: !45, line: 159, type: !185, scopeLine: 160, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!308 = !DILocation(line: 161, column: 5, scope: !307)
!309 = !DILocation(line: 162, column: 5, scope: !307)
!310 = !DILocation(line: 163, column: 1, scope: !307)
!311 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !312, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !42}
!314 = !DILocalVariable(name: "line", arg: 1, scope: !311, file: !3, line: 11, type: !42)
!315 = !DILocation(line: 11, column: 25, scope: !311)
!316 = !DILocation(line: 13, column: 1, scope: !311)
!317 = !DILocation(line: 14, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !311, file: !3, line: 14, column: 8)
!319 = !DILocation(line: 14, column: 13, scope: !318)
!320 = !DILocation(line: 14, column: 8, scope: !311)
!321 = !DILocation(line: 16, column: 24, scope: !322)
!322 = distinct !DILexicalBlock(scope: !318, file: !3, line: 15, column: 5)
!323 = !DILocation(line: 16, column: 9, scope: !322)
!324 = !DILocation(line: 17, column: 5, scope: !322)
!325 = !DILocation(line: 18, column: 5, scope: !311)
!326 = !DILocation(line: 19, column: 1, scope: !311)
!327 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !312, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!328 = !DILocalVariable(name: "line", arg: 1, scope: !327, file: !3, line: 20, type: !42)
!329 = !DILocation(line: 20, column: 29, scope: !327)
!330 = !DILocation(line: 22, column: 8, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !3, line: 22, column: 8)
!332 = !DILocation(line: 22, column: 13, scope: !331)
!333 = !DILocation(line: 22, column: 8, scope: !327)
!334 = !DILocation(line: 24, column: 24, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !3, line: 23, column: 5)
!336 = !DILocation(line: 24, column: 9, scope: !335)
!337 = !DILocation(line: 25, column: 5, scope: !335)
!338 = !DILocation(line: 26, column: 1, scope: !327)
!339 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !340, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !60, line: 74, baseType: !23)
!344 = !DILocalVariable(name: "line", arg: 1, scope: !339, file: !3, line: 27, type: !342)
!345 = !DILocation(line: 27, column: 29, scope: !339)
!346 = !DILocation(line: 29, column: 8, scope: !347)
!347 = distinct !DILexicalBlock(scope: !339, file: !3, line: 29, column: 8)
!348 = !DILocation(line: 29, column: 13, scope: !347)
!349 = !DILocation(line: 29, column: 8, scope: !339)
!350 = !DILocation(line: 31, column: 27, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !3, line: 30, column: 5)
!352 = !DILocation(line: 31, column: 9, scope: !351)
!353 = !DILocation(line: 32, column: 5, scope: !351)
!354 = !DILocation(line: 33, column: 1, scope: !339)
!355 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !356, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !23}
!358 = !DILocalVariable(name: "intNumber", arg: 1, scope: !355, file: !3, line: 35, type: !23)
!359 = !DILocation(line: 35, column: 24, scope: !355)
!360 = !DILocation(line: 37, column: 20, scope: !355)
!361 = !DILocation(line: 37, column: 5, scope: !355)
!362 = !DILocation(line: 38, column: 1, scope: !355)
!363 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !364, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !366}
!366 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!367 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !363, file: !3, line: 40, type: !366)
!368 = !DILocation(line: 40, column: 28, scope: !363)
!369 = !DILocation(line: 42, column: 21, scope: !363)
!370 = !DILocation(line: 42, column: 5, scope: !363)
!371 = !DILocation(line: 43, column: 1, scope: !363)
!372 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !373, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375}
!375 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!376 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !372, file: !3, line: 45, type: !375)
!377 = !DILocation(line: 45, column: 28, scope: !372)
!378 = !DILocation(line: 47, column: 20, scope: !372)
!379 = !DILocation(line: 47, column: 5, scope: !372)
!380 = !DILocation(line: 48, column: 1, scope: !372)
!381 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !382, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !94}
!384 = !DILocalVariable(name: "longNumber", arg: 1, scope: !381, file: !3, line: 50, type: !94)
!385 = !DILocation(line: 50, column: 26, scope: !381)
!386 = !DILocation(line: 52, column: 21, scope: !381)
!387 = !DILocation(line: 52, column: 5, scope: !381)
!388 = !DILocation(line: 53, column: 1, scope: !381)
!389 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !390, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !392}
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !393, line: 27, baseType: !394)
!393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !94)
!395 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !389, file: !3, line: 55, type: !392)
!396 = !DILocation(line: 55, column: 33, scope: !389)
!397 = !DILocation(line: 57, column: 29, scope: !389)
!398 = !DILocation(line: 57, column: 5, scope: !389)
!399 = !DILocation(line: 58, column: 1, scope: !389)
!400 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !401, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !59}
!403 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !400, file: !3, line: 60, type: !59)
!404 = !DILocation(line: 60, column: 29, scope: !400)
!405 = !DILocation(line: 62, column: 21, scope: !400)
!406 = !DILocation(line: 62, column: 5, scope: !400)
!407 = !DILocation(line: 63, column: 1, scope: !400)
!408 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !409, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !43}
!411 = !DILocalVariable(name: "charHex", arg: 1, scope: !408, file: !3, line: 65, type: !43)
!412 = !DILocation(line: 65, column: 29, scope: !408)
!413 = !DILocation(line: 67, column: 22, scope: !408)
!414 = !DILocation(line: 67, column: 5, scope: !408)
!415 = !DILocation(line: 68, column: 1, scope: !408)
!416 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !417, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !343}
!419 = !DILocalVariable(name: "wideChar", arg: 1, scope: !416, file: !3, line: 70, type: !343)
!420 = !DILocation(line: 70, column: 29, scope: !416)
!421 = !DILocalVariable(name: "s", scope: !416, file: !3, line: 74, type: !422)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 64, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 2)
!425 = !DILocation(line: 74, column: 13, scope: !416)
!426 = !DILocation(line: 75, column: 16, scope: !416)
!427 = !DILocation(line: 75, column: 9, scope: !416)
!428 = !DILocation(line: 75, column: 14, scope: !416)
!429 = !DILocation(line: 76, column: 9, scope: !416)
!430 = !DILocation(line: 76, column: 14, scope: !416)
!431 = !DILocation(line: 77, column: 21, scope: !416)
!432 = !DILocation(line: 77, column: 5, scope: !416)
!433 = !DILocation(line: 78, column: 1, scope: !416)
!434 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !435, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !7}
!437 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !434, file: !3, line: 80, type: !7)
!438 = !DILocation(line: 80, column: 33, scope: !434)
!439 = !DILocation(line: 82, column: 20, scope: !434)
!440 = !DILocation(line: 82, column: 5, scope: !434)
!441 = !DILocation(line: 83, column: 1, scope: !434)
!442 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !443, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !25}
!445 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !442, file: !3, line: 85, type: !25)
!446 = !DILocation(line: 85, column: 45, scope: !442)
!447 = !DILocation(line: 87, column: 22, scope: !442)
!448 = !DILocation(line: 87, column: 5, scope: !442)
!449 = !DILocation(line: 88, column: 1, scope: !442)
!450 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !451, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !453}
!453 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!454 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !450, file: !3, line: 90, type: !453)
!455 = !DILocation(line: 90, column: 29, scope: !450)
!456 = !DILocation(line: 92, column: 20, scope: !450)
!457 = !DILocation(line: 92, column: 5, scope: !450)
!458 = !DILocation(line: 93, column: 1, scope: !450)
!459 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !460, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !464, line: 100, baseType: !465)
!464 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_179/source_code")
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !464, line: 96, size: 64, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !465, file: !464, line: 98, baseType: !23, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !465, file: !464, line: 99, baseType: !23, size: 32, offset: 32)
!469 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !459, file: !3, line: 95, type: !462)
!470 = !DILocation(line: 95, column: 40, scope: !459)
!471 = !DILocation(line: 97, column: 26, scope: !459)
!472 = !DILocation(line: 97, column: 47, scope: !459)
!473 = !DILocation(line: 97, column: 55, scope: !459)
!474 = !DILocation(line: 97, column: 76, scope: !459)
!475 = !DILocation(line: 97, column: 5, scope: !459)
!476 = !DILocation(line: 98, column: 1, scope: !459)
!477 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !478, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !480, !59}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!481 = !DILocalVariable(name: "bytes", arg: 1, scope: !477, file: !3, line: 100, type: !480)
!482 = !DILocation(line: 100, column: 38, scope: !477)
!483 = !DILocalVariable(name: "numBytes", arg: 2, scope: !477, file: !3, line: 100, type: !59)
!484 = !DILocation(line: 100, column: 52, scope: !477)
!485 = !DILocalVariable(name: "i", scope: !477, file: !3, line: 102, type: !59)
!486 = !DILocation(line: 102, column: 12, scope: !477)
!487 = !DILocation(line: 103, column: 12, scope: !488)
!488 = distinct !DILexicalBlock(scope: !477, file: !3, line: 103, column: 5)
!489 = !DILocation(line: 103, column: 10, scope: !488)
!490 = !DILocation(line: 103, column: 17, scope: !491)
!491 = distinct !DILexicalBlock(scope: !488, file: !3, line: 103, column: 5)
!492 = !DILocation(line: 103, column: 21, scope: !491)
!493 = !DILocation(line: 103, column: 19, scope: !491)
!494 = !DILocation(line: 103, column: 5, scope: !488)
!495 = !DILocation(line: 105, column: 24, scope: !496)
!496 = distinct !DILexicalBlock(scope: !491, file: !3, line: 104, column: 5)
!497 = !DILocation(line: 105, column: 30, scope: !496)
!498 = !DILocation(line: 105, column: 9, scope: !496)
!499 = !DILocation(line: 106, column: 5, scope: !496)
!500 = !DILocation(line: 103, column: 31, scope: !491)
!501 = !DILocation(line: 103, column: 5, scope: !491)
!502 = distinct !{!502, !494, !503, !504}
!503 = !DILocation(line: 106, column: 5, scope: !488)
!504 = !{!"llvm.loop.mustprogress"}
!505 = !DILocation(line: 107, column: 5, scope: !477)
!506 = !DILocation(line: 108, column: 1, scope: !477)
!507 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !508, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DISubroutineType(types: !509)
!509 = !{!59, !480, !59, !42}
!510 = !DILocalVariable(name: "bytes", arg: 1, scope: !507, file: !3, line: 113, type: !480)
!511 = !DILocation(line: 113, column: 39, scope: !507)
!512 = !DILocalVariable(name: "numBytes", arg: 2, scope: !507, file: !3, line: 113, type: !59)
!513 = !DILocation(line: 113, column: 53, scope: !507)
!514 = !DILocalVariable(name: "hex", arg: 3, scope: !507, file: !3, line: 113, type: !42)
!515 = !DILocation(line: 113, column: 71, scope: !507)
!516 = !DILocalVariable(name: "numWritten", scope: !507, file: !3, line: 115, type: !59)
!517 = !DILocation(line: 115, column: 12, scope: !507)
!518 = !DILocation(line: 121, column: 5, scope: !507)
!519 = !DILocation(line: 121, column: 12, scope: !507)
!520 = !DILocation(line: 121, column: 25, scope: !507)
!521 = !DILocation(line: 121, column: 23, scope: !507)
!522 = !DILocation(line: 121, column: 34, scope: !507)
!523 = !DILocation(line: 121, column: 37, scope: !507)
!524 = !DILocation(line: 121, column: 67, scope: !507)
!525 = !DILocation(line: 121, column: 70, scope: !507)
!526 = !DILocation(line: 0, scope: !507)
!527 = !DILocalVariable(name: "byte", scope: !528, file: !3, line: 123, type: !23)
!528 = distinct !DILexicalBlock(scope: !507, file: !3, line: 122, column: 5)
!529 = !DILocation(line: 123, column: 13, scope: !528)
!530 = !DILocation(line: 124, column: 17, scope: !528)
!531 = !DILocation(line: 124, column: 25, scope: !528)
!532 = !DILocation(line: 124, column: 23, scope: !528)
!533 = !DILocation(line: 124, column: 9, scope: !528)
!534 = !DILocation(line: 125, column: 45, scope: !528)
!535 = !DILocation(line: 125, column: 29, scope: !528)
!536 = !DILocation(line: 125, column: 9, scope: !528)
!537 = !DILocation(line: 125, column: 15, scope: !528)
!538 = !DILocation(line: 125, column: 27, scope: !528)
!539 = !DILocation(line: 126, column: 9, scope: !528)
!540 = distinct !{!540, !518, !541, !504}
!541 = !DILocation(line: 127, column: 5, scope: !507)
!542 = !DILocation(line: 129, column: 12, scope: !507)
!543 = !DILocation(line: 129, column: 5, scope: !507)
!544 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !545, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DISubroutineType(types: !546)
!546 = !{!59, !480, !59, !342}
!547 = !DILocalVariable(name: "bytes", arg: 1, scope: !544, file: !3, line: 135, type: !480)
!548 = !DILocation(line: 135, column: 41, scope: !544)
!549 = !DILocalVariable(name: "numBytes", arg: 2, scope: !544, file: !3, line: 135, type: !59)
!550 = !DILocation(line: 135, column: 55, scope: !544)
!551 = !DILocalVariable(name: "hex", arg: 3, scope: !544, file: !3, line: 135, type: !342)
!552 = !DILocation(line: 135, column: 76, scope: !544)
!553 = !DILocalVariable(name: "numWritten", scope: !544, file: !3, line: 137, type: !59)
!554 = !DILocation(line: 137, column: 12, scope: !544)
!555 = !DILocation(line: 143, column: 5, scope: !544)
!556 = !DILocation(line: 143, column: 12, scope: !544)
!557 = !DILocation(line: 143, column: 25, scope: !544)
!558 = !DILocation(line: 143, column: 23, scope: !544)
!559 = !DILocation(line: 143, column: 34, scope: !544)
!560 = !DILocation(line: 143, column: 47, scope: !544)
!561 = !DILocation(line: 143, column: 55, scope: !544)
!562 = !DILocation(line: 143, column: 53, scope: !544)
!563 = !DILocation(line: 143, column: 37, scope: !544)
!564 = !DILocation(line: 143, column: 68, scope: !544)
!565 = !DILocation(line: 143, column: 81, scope: !544)
!566 = !DILocation(line: 143, column: 89, scope: !544)
!567 = !DILocation(line: 143, column: 87, scope: !544)
!568 = !DILocation(line: 143, column: 100, scope: !544)
!569 = !DILocation(line: 143, column: 71, scope: !544)
!570 = !DILocation(line: 0, scope: !544)
!571 = !DILocalVariable(name: "byte", scope: !572, file: !3, line: 145, type: !23)
!572 = distinct !DILexicalBlock(scope: !544, file: !3, line: 144, column: 5)
!573 = !DILocation(line: 145, column: 13, scope: !572)
!574 = !DILocation(line: 146, column: 18, scope: !572)
!575 = !DILocation(line: 146, column: 26, scope: !572)
!576 = !DILocation(line: 146, column: 24, scope: !572)
!577 = !DILocation(line: 146, column: 9, scope: !572)
!578 = !DILocation(line: 147, column: 45, scope: !572)
!579 = !DILocation(line: 147, column: 29, scope: !572)
!580 = !DILocation(line: 147, column: 9, scope: !572)
!581 = !DILocation(line: 147, column: 15, scope: !572)
!582 = !DILocation(line: 147, column: 27, scope: !572)
!583 = !DILocation(line: 148, column: 9, scope: !572)
!584 = distinct !{!584, !555, !585, !504}
!585 = !DILocation(line: 149, column: 5, scope: !544)
!586 = !DILocation(line: 151, column: 12, scope: !544)
!587 = !DILocation(line: 151, column: 5, scope: !544)
!588 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !589, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DISubroutineType(types: !590)
!590 = !{!23}
!591 = !DILocation(line: 158, column: 5, scope: !588)
!592 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !589, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DILocation(line: 163, column: 5, scope: !592)
!594 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !589, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!595 = !DILocation(line: 168, column: 13, scope: !594)
!596 = !DILocation(line: 168, column: 20, scope: !594)
!597 = !DILocation(line: 168, column: 5, scope: !594)
!598 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !185, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DILocation(line: 187, column: 16, scope: !598)
!600 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !185, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DILocation(line: 188, column: 16, scope: !600)
!602 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !185, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!603 = !DILocation(line: 189, column: 16, scope: !602)
!604 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !185, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 190, column: 16, scope: !604)
!606 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !185, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DILocation(line: 191, column: 16, scope: !606)
!608 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !185, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!609 = !DILocation(line: 192, column: 16, scope: !608)
!610 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !185, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DILocation(line: 193, column: 16, scope: !610)
!612 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !185, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!613 = !DILocation(line: 194, column: 16, scope: !612)
!614 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !185, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!615 = !DILocation(line: 195, column: 16, scope: !614)
!616 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !185, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!617 = !DILocation(line: 198, column: 15, scope: !616)
!618 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !185, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DILocation(line: 199, column: 15, scope: !618)
!620 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !185, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DILocation(line: 200, column: 15, scope: !620)
!622 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !185, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DILocation(line: 201, column: 15, scope: !622)
!624 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !185, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DILocation(line: 202, column: 15, scope: !624)
!626 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !185, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!627 = !DILocation(line: 203, column: 15, scope: !626)
!628 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !185, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DILocation(line: 204, column: 15, scope: !628)
!630 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !185, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DILocation(line: 205, column: 15, scope: !630)
!632 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !185, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DILocation(line: 206, column: 15, scope: !632)
