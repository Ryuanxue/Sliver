; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType = type { i8* }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.8 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7.10 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8.11 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, metadata !59, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !66, metadata !DIExpression()), !dbg !70
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !70
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !70
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !71
  store i8* %arraydecay, i8** %data, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !73, metadata !DIExpression()), !dbg !78
  %1 = load i8*, i8** %data, align 8, !dbg !79
  %call = call i64 @strlen(i8* %1) #7, !dbg !80
  store i64 %call, i64* %dataLen, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !81, metadata !DIExpression()), !dbg !82
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !83
  store i8* %call1, i8** %environment, align 8, !dbg !82
  %2 = load i8*, i8** %environment, align 8, !dbg !84
  %cmp = icmp ne i8* %2, null, !dbg !86
  br i1 %cmp, label %if.then, label %if.end, !dbg !87

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !88
  %4 = load i64, i64* %dataLen, align 8, !dbg !90
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !91
  %5 = load i8*, i8** %environment, align 8, !dbg !92
  %6 = load i64, i64* %dataLen, align 8, !dbg !93
  %sub = sub i64 100, %6, !dbg !94
  %sub2 = sub i64 %sub, 1, !dbg !95
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !96
  br label %if.end, !dbg !97

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !98
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !99
  store i8* %7, i8** %structFirst, align 8, !dbg !100
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !101
  %8 = load i8*, i8** %coerce.dive, align 8, !dbg !101
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_badSink(i8* %8), !dbg !101
  ret void, !dbg !102
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !103 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !108, metadata !DIExpression()), !dbg !109
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !109
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !109
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !110
  store i8* %arraydecay, i8** %data, align 8, !dbg !111
  %1 = load i8*, i8** %data, align 8, !dbg !112
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !113
  %2 = load i8*, i8** %data, align 8, !dbg !114
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !115
  store i8* %2, i8** %structFirst, align 8, !dbg !116
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !117
  %3 = load i8*, i8** %coerce.dive, align 8, !dbg !117
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodG2BSink(i8* %3), !dbg !117
  ret void, !dbg !118
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !119 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !125
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !125
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !126
  store i8* %arraydecay, i8** %data, align 8, !dbg !127
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !128, metadata !DIExpression()), !dbg !130
  %1 = load i8*, i8** %data, align 8, !dbg !131
  %call = call i64 @strlen(i8* %1) #7, !dbg !132
  store i64 %call, i64* %dataLen, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !133, metadata !DIExpression()), !dbg !134
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !135
  store i8* %call1, i8** %environment, align 8, !dbg !134
  %2 = load i8*, i8** %environment, align 8, !dbg !136
  %cmp = icmp ne i8* %2, null, !dbg !138
  br i1 %cmp, label %if.then, label %if.end, !dbg !139

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !140
  %4 = load i64, i64* %dataLen, align 8, !dbg !142
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !143
  %5 = load i8*, i8** %environment, align 8, !dbg !144
  %6 = load i64, i64* %dataLen, align 8, !dbg !145
  %sub = sub i64 100, %6, !dbg !146
  %sub2 = sub i64 %sub, 1, !dbg !147
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !148
  br label %if.end, !dbg !149

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !150
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !151
  store i8* %7, i8** %structFirst, align 8, !dbg !152
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !153
  %8 = load i8*, i8** %coerce.dive, align 8, !dbg !153
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodB2GSink(i8* %8), !dbg !153
  ret void, !dbg !154
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_good() #0 !dbg !155 {
entry:
  call void @goodG2B(), !dbg !156
  call void @goodB2G(), !dbg !157
  ret void, !dbg !158
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_badSink(i8* %myStruct.coerce) #0 !dbg !159 {
entry:
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, align 8
  %data = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata i8** %data, metadata !168, metadata !DIExpression()), !dbg !169
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !170
  %0 = load i8*, i8** %structFirst, align 8, !dbg !170
  store i8* %0, i8** %data, align 8, !dbg !169
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !171
  %2 = load i8*, i8** %data, align 8, !dbg !172
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !173
  ret void, !dbg !174
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodG2BSink(i8* %myStruct.coerce) #0 !dbg !175 {
entry:
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, align 8
  %data = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i8** %data, metadata !178, metadata !DIExpression()), !dbg !179
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !180
  %0 = load i8*, i8** %structFirst, align 8, !dbg !180
  store i8* %0, i8** %data, align 8, !dbg !179
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !181
  %2 = load i8*, i8** %data, align 8, !dbg !182
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !183
  ret void, !dbg !184
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodB2GSink(i8* %myStruct.coerce) #0 !dbg !185 {
entry:
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, align 8
  %data = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i8** %data, metadata !188, metadata !DIExpression()), !dbg !189
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !190
  %0 = load i8*, i8** %structFirst, align 8, !dbg !190
  store i8* %0, i8** %data, align 8, !dbg !189
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !191
  %2 = load i8*, i8** %data, align 8, !dbg !192
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %2), !dbg !193
  ret void, !dbg !194
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !195 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !198, metadata !DIExpression()), !dbg !199
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !200
  %0 = load i8*, i8** %line.addr, align 8, !dbg !201
  %cmp = icmp ne i8* %0, null, !dbg !203
  br i1 %cmp, label %if.then, label %if.end, !dbg !204

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !205
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !207
  br label %if.end, !dbg !208

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !209
  ret void, !dbg !210
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !211 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !212, metadata !DIExpression()), !dbg !213
  %0 = load i8*, i8** %line.addr, align 8, !dbg !214
  %cmp = icmp ne i8* %0, null, !dbg !216
  br i1 %cmp, label %if.then, label %if.end, !dbg !217

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !218
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !220
  br label %if.end, !dbg !221

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !222
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !223 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !228, metadata !DIExpression()), !dbg !229
  %0 = load i32*, i32** %line.addr, align 8, !dbg !230
  %cmp = icmp ne i32* %0, null, !dbg !232
  br i1 %cmp, label %if.then, label %if.end, !dbg !233

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !234
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !236
  br label %if.end, !dbg !237

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !238
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !239 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !244
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !245
  ret void, !dbg !246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !247 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !251, metadata !DIExpression()), !dbg !252
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !253
  %conv = sext i16 %0 to i32, !dbg !253
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !254
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !256 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !262
  %conv = fpext float %0 to double, !dbg !262
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !265 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !271
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !272
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !274 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !283
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !284
  ret void, !dbg !285
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !286 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !291
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.11, i64 0, i64 0), i64 %0), !dbg !292
  ret void, !dbg !293
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !294 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !299
  %conv = sext i8 %0 to i32, !dbg !299
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !300
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !302 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !305, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !307, metadata !DIExpression()), !dbg !311
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !312
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !313
  store i32 %0, i32* %arrayidx, align 4, !dbg !314
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !315
  store i32 0, i32* %arrayidx1, align 4, !dbg !316
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !317
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !318
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !320 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !325
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !328 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !333
  %conv = zext i8 %0 to i32, !dbg !333
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !336 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !342
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !345 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !355, metadata !DIExpression()), !dbg !356
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !357
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !358
  %1 = load i32, i32* %intOne, align 4, !dbg !358
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !359
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !360
  %3 = load i32, i32* %intTwo, align 4, !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !363 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !367, metadata !DIExpression()), !dbg !368
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata i64* %i, metadata !371, metadata !DIExpression()), !dbg !372
  store i64 0, i64* %i, align 8, !dbg !373
  br label %for.cond, !dbg !375

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !376
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !378
  %cmp = icmp ult i64 %0, %1, !dbg !379
  br i1 %cmp, label %for.body, label %for.end, !dbg !380

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !381
  %3 = load i64, i64* %i, align 8, !dbg !383
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !381
  %4 = load i8, i8* %arrayidx, align 1, !dbg !381
  %conv = zext i8 %4 to i32, !dbg !381
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !384
  br label %for.inc, !dbg !385

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !386
  %inc = add i64 %5, 1, !dbg !386
  store i64 %inc, i64* %i, align 8, !dbg !386
  br label %for.cond, !dbg !387, !llvm.loop !388

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !391
  ret void, !dbg !392
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !393 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !396, metadata !DIExpression()), !dbg !397
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !398, metadata !DIExpression()), !dbg !399
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !402, metadata !DIExpression()), !dbg !403
  store i64 0, i64* %numWritten, align 8, !dbg !403
  br label %while.cond, !dbg !404

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !405
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !406
  %cmp = icmp ult i64 %0, %1, !dbg !407
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !408

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !409
  %2 = load i16*, i16** %call, align 8, !dbg !409
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !409
  %4 = load i64, i64* %numWritten, align 8, !dbg !409
  %mul = mul i64 2, %4, !dbg !409
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !409
  %5 = load i8, i8* %arrayidx, align 1, !dbg !409
  %conv = sext i8 %5 to i32, !dbg !409
  %idxprom = sext i32 %conv to i64, !dbg !409
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !409
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !409
  %conv2 = zext i16 %6 to i32, !dbg !409
  %and = and i32 %conv2, 4096, !dbg !409
  %tobool = icmp ne i32 %and, 0, !dbg !409
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !410

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !411
  %7 = load i16*, i16** %call3, align 8, !dbg !411
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !411
  %9 = load i64, i64* %numWritten, align 8, !dbg !411
  %mul4 = mul i64 2, %9, !dbg !411
  %add = add i64 %mul4, 1, !dbg !411
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !411
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !411
  %conv6 = sext i8 %10 to i32, !dbg !411
  %idxprom7 = sext i32 %conv6 to i64, !dbg !411
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !411
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !411
  %conv9 = zext i16 %11 to i32, !dbg !411
  %and10 = and i32 %conv9, 4096, !dbg !411
  %tobool11 = icmp ne i32 %and10, 0, !dbg !410
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !412
  br i1 %12, label %while.body, label %while.end, !dbg !404

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !413, metadata !DIExpression()), !dbg !415
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !416
  %14 = load i64, i64* %numWritten, align 8, !dbg !417
  %mul12 = mul i64 2, %14, !dbg !418
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !416
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !419
  %15 = load i32, i32* %byte, align 4, !dbg !420
  %conv15 = trunc i32 %15 to i8, !dbg !421
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !422
  %17 = load i64, i64* %numWritten, align 8, !dbg !423
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !422
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !424
  %18 = load i64, i64* %numWritten, align 8, !dbg !425
  %inc = add i64 %18, 1, !dbg !425
  store i64 %inc, i64* %numWritten, align 8, !dbg !425
  br label %while.cond, !dbg !404, !llvm.loop !426

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !428
  ret i64 %19, !dbg !429
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !430 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !433, metadata !DIExpression()), !dbg !434
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !435, metadata !DIExpression()), !dbg !436
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !439, metadata !DIExpression()), !dbg !440
  store i64 0, i64* %numWritten, align 8, !dbg !440
  br label %while.cond, !dbg !441

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !442
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !443
  %cmp = icmp ult i64 %0, %1, !dbg !444
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !445

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !446
  %3 = load i64, i64* %numWritten, align 8, !dbg !447
  %mul = mul i64 2, %3, !dbg !448
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !446
  %4 = load i32, i32* %arrayidx, align 4, !dbg !446
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !449
  %tobool = icmp ne i32 %call, 0, !dbg !449
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !450

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !451
  %6 = load i64, i64* %numWritten, align 8, !dbg !452
  %mul1 = mul i64 2, %6, !dbg !453
  %add = add i64 %mul1, 1, !dbg !454
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !451
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !451
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !455
  %tobool4 = icmp ne i32 %call3, 0, !dbg !450
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !456
  br i1 %8, label %while.body, label %while.end, !dbg !441

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !457, metadata !DIExpression()), !dbg !459
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !460
  %10 = load i64, i64* %numWritten, align 8, !dbg !461
  %mul5 = mul i64 2, %10, !dbg !462
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !460
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !463
  %11 = load i32, i32* %byte, align 4, !dbg !464
  %conv = trunc i32 %11 to i8, !dbg !465
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !466
  %13 = load i64, i64* %numWritten, align 8, !dbg !467
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !466
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !468
  %14 = load i64, i64* %numWritten, align 8, !dbg !469
  %inc = add i64 %14, 1, !dbg !469
  store i64 %inc, i64* %numWritten, align 8, !dbg !469
  br label %while.cond, !dbg !441, !llvm.loop !470

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !472
  ret i64 %15, !dbg !473
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !474 {
entry:
  ret i32 1, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !478 {
entry:
  ret i32 0, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !480 {
entry:
  %call = call i32 @rand() #8, !dbg !481
  %rem = srem i32 %call, 2, !dbg !482
  ret i32 %rem, !dbg !483
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !484 {
entry:
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !486 {
entry:
  ret void, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !488 {
entry:
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !490 {
entry:
  ret void, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !492 {
entry:
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !494 {
entry:
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !496 {
entry:
  ret void, !dbg !497
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !498 {
entry:
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !500 {
entry:
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !502 {
entry:
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !504 {
entry:
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !506 {
entry:
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !508 {
entry:
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !510 {
entry:
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !512 {
entry:
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !514 {
entry:
  ret void, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !516 {
entry:
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !518 {
entry:
  ret void, !dbg !519
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !48, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_713/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_713/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_713/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_bad", scope: !45, file: !45, line: 38, type: !55, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 40, type: !42)
!58 = !DILocation(line: 40, column: 12, scope: !54)
!59 = !DILocalVariable(name: "myStruct", scope: !54, file: !45, line: 41, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType", file: !61, line: 8, baseType: !62)
!61 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_713/source_code")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType", file: !61, line: 5, size: 64, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !62, file: !61, line: 7, baseType: !42, size: 64)
!65 = !DILocation(line: 41, column: 79, scope: !54)
!66 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 42, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 100)
!70 = !DILocation(line: 42, column: 10, scope: !54)
!71 = !DILocation(line: 43, column: 12, scope: !54)
!72 = !DILocation(line: 43, column: 10, scope: !54)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 46, type: !75)
!74 = distinct !DILexicalBlock(scope: !54, file: !45, line: 44, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 46, column: 16, scope: !74)
!79 = !DILocation(line: 46, column: 33, scope: !74)
!80 = !DILocation(line: 46, column: 26, scope: !74)
!81 = !DILocalVariable(name: "environment", scope: !74, file: !45, line: 47, type: !42)
!82 = !DILocation(line: 47, column: 16, scope: !74)
!83 = !DILocation(line: 47, column: 30, scope: !74)
!84 = !DILocation(line: 49, column: 13, scope: !85)
!85 = distinct !DILexicalBlock(scope: !74, file: !45, line: 49, column: 13)
!86 = !DILocation(line: 49, column: 25, scope: !85)
!87 = !DILocation(line: 49, column: 13, scope: !74)
!88 = !DILocation(line: 52, column: 21, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !45, line: 50, column: 9)
!90 = !DILocation(line: 52, column: 26, scope: !89)
!91 = !DILocation(line: 52, column: 25, scope: !89)
!92 = !DILocation(line: 52, column: 35, scope: !89)
!93 = !DILocation(line: 52, column: 52, scope: !89)
!94 = !DILocation(line: 52, column: 51, scope: !89)
!95 = !DILocation(line: 52, column: 59, scope: !89)
!96 = !DILocation(line: 52, column: 13, scope: !89)
!97 = !DILocation(line: 53, column: 9, scope: !89)
!98 = !DILocation(line: 55, column: 28, scope: !54)
!99 = !DILocation(line: 55, column: 14, scope: !54)
!100 = !DILocation(line: 55, column: 26, scope: !54)
!101 = !DILocation(line: 56, column: 5, scope: !54)
!102 = !DILocation(line: 57, column: 1, scope: !54)
!103 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 65, type: !55, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!104 = !DILocalVariable(name: "data", scope: !103, file: !45, line: 67, type: !42)
!105 = !DILocation(line: 67, column: 12, scope: !103)
!106 = !DILocalVariable(name: "myStruct", scope: !103, file: !45, line: 68, type: !60)
!107 = !DILocation(line: 68, column: 79, scope: !103)
!108 = !DILocalVariable(name: "dataBuffer", scope: !103, file: !45, line: 69, type: !67)
!109 = !DILocation(line: 69, column: 10, scope: !103)
!110 = !DILocation(line: 70, column: 12, scope: !103)
!111 = !DILocation(line: 70, column: 10, scope: !103)
!112 = !DILocation(line: 72, column: 12, scope: !103)
!113 = !DILocation(line: 72, column: 5, scope: !103)
!114 = !DILocation(line: 73, column: 28, scope: !103)
!115 = !DILocation(line: 73, column: 14, scope: !103)
!116 = !DILocation(line: 73, column: 26, scope: !103)
!117 = !DILocation(line: 74, column: 5, scope: !103)
!118 = !DILocation(line: 75, column: 1, scope: !103)
!119 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 79, type: !55, scopeLine: 80, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!120 = !DILocalVariable(name: "data", scope: !119, file: !45, line: 81, type: !42)
!121 = !DILocation(line: 81, column: 12, scope: !119)
!122 = !DILocalVariable(name: "myStruct", scope: !119, file: !45, line: 82, type: !60)
!123 = !DILocation(line: 82, column: 79, scope: !119)
!124 = !DILocalVariable(name: "dataBuffer", scope: !119, file: !45, line: 83, type: !67)
!125 = !DILocation(line: 83, column: 10, scope: !119)
!126 = !DILocation(line: 84, column: 12, scope: !119)
!127 = !DILocation(line: 84, column: 10, scope: !119)
!128 = !DILocalVariable(name: "dataLen", scope: !129, file: !45, line: 87, type: !75)
!129 = distinct !DILexicalBlock(scope: !119, file: !45, line: 85, column: 5)
!130 = !DILocation(line: 87, column: 16, scope: !129)
!131 = !DILocation(line: 87, column: 33, scope: !129)
!132 = !DILocation(line: 87, column: 26, scope: !129)
!133 = !DILocalVariable(name: "environment", scope: !129, file: !45, line: 88, type: !42)
!134 = !DILocation(line: 88, column: 16, scope: !129)
!135 = !DILocation(line: 88, column: 30, scope: !129)
!136 = !DILocation(line: 90, column: 13, scope: !137)
!137 = distinct !DILexicalBlock(scope: !129, file: !45, line: 90, column: 13)
!138 = !DILocation(line: 90, column: 25, scope: !137)
!139 = !DILocation(line: 90, column: 13, scope: !129)
!140 = !DILocation(line: 93, column: 21, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !45, line: 91, column: 9)
!142 = !DILocation(line: 93, column: 26, scope: !141)
!143 = !DILocation(line: 93, column: 25, scope: !141)
!144 = !DILocation(line: 93, column: 35, scope: !141)
!145 = !DILocation(line: 93, column: 52, scope: !141)
!146 = !DILocation(line: 93, column: 51, scope: !141)
!147 = !DILocation(line: 93, column: 59, scope: !141)
!148 = !DILocation(line: 93, column: 13, scope: !141)
!149 = !DILocation(line: 94, column: 9, scope: !141)
!150 = !DILocation(line: 96, column: 28, scope: !119)
!151 = !DILocation(line: 96, column: 14, scope: !119)
!152 = !DILocation(line: 96, column: 26, scope: !119)
!153 = !DILocation(line: 97, column: 5, scope: !119)
!154 = !DILocation(line: 98, column: 1, scope: !119)
!155 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_good", scope: !45, file: !45, line: 100, type: !55, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!156 = !DILocation(line: 102, column: 5, scope: !155)
!157 = !DILocation(line: 103, column: 5, scope: !155)
!158 = !DILocation(line: 104, column: 1, scope: !155)
!159 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_badSink", scope: !49, file: !49, line: 39, type: !160, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType", file: !49, line: 35, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType", file: !49, line: 32, size: 64, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !163, file: !49, line: 34, baseType: !42, size: 64)
!166 = !DILocalVariable(name: "myStruct", arg: 1, scope: !159, file: !49, line: 39, type: !162)
!167 = !DILocation(line: 39, column: 152, scope: !159)
!168 = !DILocalVariable(name: "data", scope: !159, file: !49, line: 41, type: !42)
!169 = !DILocation(line: 41, column: 12, scope: !159)
!170 = !DILocation(line: 41, column: 28, scope: !159)
!171 = !DILocation(line: 43, column: 13, scope: !159)
!172 = !DILocation(line: 43, column: 21, scope: !159)
!173 = !DILocation(line: 43, column: 5, scope: !159)
!174 = !DILocation(line: 44, column: 1, scope: !159)
!175 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodG2BSink", scope: !49, file: !49, line: 51, type: !160, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!176 = !DILocalVariable(name: "myStruct", arg: 1, scope: !175, file: !49, line: 51, type: !162)
!177 = !DILocation(line: 51, column: 156, scope: !175)
!178 = !DILocalVariable(name: "data", scope: !175, file: !49, line: 53, type: !42)
!179 = !DILocation(line: 53, column: 12, scope: !175)
!180 = !DILocation(line: 53, column: 28, scope: !175)
!181 = !DILocation(line: 55, column: 13, scope: !175)
!182 = !DILocation(line: 55, column: 21, scope: !175)
!183 = !DILocation(line: 55, column: 5, scope: !175)
!184 = !DILocation(line: 56, column: 1, scope: !175)
!185 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodB2GSink", scope: !49, file: !49, line: 59, type: !160, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!186 = !DILocalVariable(name: "myStruct", arg: 1, scope: !185, file: !49, line: 59, type: !162)
!187 = !DILocation(line: 59, column: 156, scope: !185)
!188 = !DILocalVariable(name: "data", scope: !185, file: !49, line: 61, type: !42)
!189 = !DILocation(line: 61, column: 12, scope: !185)
!190 = !DILocation(line: 61, column: 28, scope: !185)
!191 = !DILocation(line: 63, column: 13, scope: !185)
!192 = !DILocation(line: 63, column: 29, scope: !185)
!193 = !DILocation(line: 63, column: 5, scope: !185)
!194 = !DILocation(line: 64, column: 1, scope: !185)
!195 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !196, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !42}
!198 = !DILocalVariable(name: "line", arg: 1, scope: !195, file: !3, line: 11, type: !42)
!199 = !DILocation(line: 11, column: 25, scope: !195)
!200 = !DILocation(line: 13, column: 1, scope: !195)
!201 = !DILocation(line: 14, column: 8, scope: !202)
!202 = distinct !DILexicalBlock(scope: !195, file: !3, line: 14, column: 8)
!203 = !DILocation(line: 14, column: 13, scope: !202)
!204 = !DILocation(line: 14, column: 8, scope: !195)
!205 = !DILocation(line: 16, column: 24, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !3, line: 15, column: 5)
!207 = !DILocation(line: 16, column: 9, scope: !206)
!208 = !DILocation(line: 17, column: 5, scope: !206)
!209 = !DILocation(line: 18, column: 5, scope: !195)
!210 = !DILocation(line: 19, column: 1, scope: !195)
!211 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !196, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!212 = !DILocalVariable(name: "line", arg: 1, scope: !211, file: !3, line: 20, type: !42)
!213 = !DILocation(line: 20, column: 29, scope: !211)
!214 = !DILocation(line: 22, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !3, line: 22, column: 8)
!216 = !DILocation(line: 22, column: 13, scope: !215)
!217 = !DILocation(line: 22, column: 8, scope: !211)
!218 = !DILocation(line: 24, column: 24, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !3, line: 23, column: 5)
!220 = !DILocation(line: 24, column: 9, scope: !219)
!221 = !DILocation(line: 25, column: 5, scope: !219)
!222 = !DILocation(line: 26, column: 1, scope: !211)
!223 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !224, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !23)
!228 = !DILocalVariable(name: "line", arg: 1, scope: !223, file: !3, line: 27, type: !226)
!229 = !DILocation(line: 27, column: 29, scope: !223)
!230 = !DILocation(line: 29, column: 8, scope: !231)
!231 = distinct !DILexicalBlock(scope: !223, file: !3, line: 29, column: 8)
!232 = !DILocation(line: 29, column: 13, scope: !231)
!233 = !DILocation(line: 29, column: 8, scope: !223)
!234 = !DILocation(line: 31, column: 27, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !3, line: 30, column: 5)
!236 = !DILocation(line: 31, column: 9, scope: !235)
!237 = !DILocation(line: 32, column: 5, scope: !235)
!238 = !DILocation(line: 33, column: 1, scope: !223)
!239 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !240, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !23}
!242 = !DILocalVariable(name: "intNumber", arg: 1, scope: !239, file: !3, line: 35, type: !23)
!243 = !DILocation(line: 35, column: 24, scope: !239)
!244 = !DILocation(line: 37, column: 20, scope: !239)
!245 = !DILocation(line: 37, column: 5, scope: !239)
!246 = !DILocation(line: 38, column: 1, scope: !239)
!247 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !248, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !250}
!250 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!251 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !247, file: !3, line: 40, type: !250)
!252 = !DILocation(line: 40, column: 28, scope: !247)
!253 = !DILocation(line: 42, column: 21, scope: !247)
!254 = !DILocation(line: 42, column: 5, scope: !247)
!255 = !DILocation(line: 43, column: 1, scope: !247)
!256 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !257, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !259}
!259 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!260 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !256, file: !3, line: 45, type: !259)
!261 = !DILocation(line: 45, column: 28, scope: !256)
!262 = !DILocation(line: 47, column: 20, scope: !256)
!263 = !DILocation(line: 47, column: 5, scope: !256)
!264 = !DILocation(line: 48, column: 1, scope: !256)
!265 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !266, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !268}
!268 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!269 = !DILocalVariable(name: "longNumber", arg: 1, scope: !265, file: !3, line: 50, type: !268)
!270 = !DILocation(line: 50, column: 26, scope: !265)
!271 = !DILocation(line: 52, column: 21, scope: !265)
!272 = !DILocation(line: 52, column: 5, scope: !265)
!273 = !DILocation(line: 53, column: 1, scope: !265)
!274 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !275, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !277}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !278, line: 27, baseType: !279)
!278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !280, line: 44, baseType: !268)
!280 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!281 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !274, file: !3, line: 55, type: !277)
!282 = !DILocation(line: 55, column: 33, scope: !274)
!283 = !DILocation(line: 57, column: 29, scope: !274)
!284 = !DILocation(line: 57, column: 5, scope: !274)
!285 = !DILocation(line: 58, column: 1, scope: !274)
!286 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !287, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !75}
!289 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !286, file: !3, line: 60, type: !75)
!290 = !DILocation(line: 60, column: 29, scope: !286)
!291 = !DILocation(line: 62, column: 21, scope: !286)
!292 = !DILocation(line: 62, column: 5, scope: !286)
!293 = !DILocation(line: 63, column: 1, scope: !286)
!294 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !295, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !43}
!297 = !DILocalVariable(name: "charHex", arg: 1, scope: !294, file: !3, line: 65, type: !43)
!298 = !DILocation(line: 65, column: 29, scope: !294)
!299 = !DILocation(line: 67, column: 22, scope: !294)
!300 = !DILocation(line: 67, column: 5, scope: !294)
!301 = !DILocation(line: 68, column: 1, scope: !294)
!302 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !303, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !227}
!305 = !DILocalVariable(name: "wideChar", arg: 1, scope: !302, file: !3, line: 70, type: !227)
!306 = !DILocation(line: 70, column: 29, scope: !302)
!307 = !DILocalVariable(name: "s", scope: !302, file: !3, line: 74, type: !308)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 64, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 2)
!311 = !DILocation(line: 74, column: 13, scope: !302)
!312 = !DILocation(line: 75, column: 16, scope: !302)
!313 = !DILocation(line: 75, column: 9, scope: !302)
!314 = !DILocation(line: 75, column: 14, scope: !302)
!315 = !DILocation(line: 76, column: 9, scope: !302)
!316 = !DILocation(line: 76, column: 14, scope: !302)
!317 = !DILocation(line: 77, column: 21, scope: !302)
!318 = !DILocation(line: 77, column: 5, scope: !302)
!319 = !DILocation(line: 78, column: 1, scope: !302)
!320 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !321, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !7}
!323 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !320, file: !3, line: 80, type: !7)
!324 = !DILocation(line: 80, column: 33, scope: !320)
!325 = !DILocation(line: 82, column: 20, scope: !320)
!326 = !DILocation(line: 82, column: 5, scope: !320)
!327 = !DILocation(line: 83, column: 1, scope: !320)
!328 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !329, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !25}
!331 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !328, file: !3, line: 85, type: !25)
!332 = !DILocation(line: 85, column: 45, scope: !328)
!333 = !DILocation(line: 87, column: 22, scope: !328)
!334 = !DILocation(line: 87, column: 5, scope: !328)
!335 = !DILocation(line: 88, column: 1, scope: !328)
!336 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !337, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339}
!339 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!340 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !336, file: !3, line: 90, type: !339)
!341 = !DILocation(line: 90, column: 29, scope: !336)
!342 = !DILocation(line: 92, column: 20, scope: !336)
!343 = !DILocation(line: 92, column: 5, scope: !336)
!344 = !DILocation(line: 93, column: 1, scope: !336)
!345 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !346, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !350, line: 100, baseType: !351)
!350 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_713/source_code")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !350, line: 96, size: 64, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !351, file: !350, line: 98, baseType: !23, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !351, file: !350, line: 99, baseType: !23, size: 32, offset: 32)
!355 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !345, file: !3, line: 95, type: !348)
!356 = !DILocation(line: 95, column: 40, scope: !345)
!357 = !DILocation(line: 97, column: 26, scope: !345)
!358 = !DILocation(line: 97, column: 47, scope: !345)
!359 = !DILocation(line: 97, column: 55, scope: !345)
!360 = !DILocation(line: 97, column: 76, scope: !345)
!361 = !DILocation(line: 97, column: 5, scope: !345)
!362 = !DILocation(line: 98, column: 1, scope: !345)
!363 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !364, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !366, !75}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!367 = !DILocalVariable(name: "bytes", arg: 1, scope: !363, file: !3, line: 100, type: !366)
!368 = !DILocation(line: 100, column: 38, scope: !363)
!369 = !DILocalVariable(name: "numBytes", arg: 2, scope: !363, file: !3, line: 100, type: !75)
!370 = !DILocation(line: 100, column: 52, scope: !363)
!371 = !DILocalVariable(name: "i", scope: !363, file: !3, line: 102, type: !75)
!372 = !DILocation(line: 102, column: 12, scope: !363)
!373 = !DILocation(line: 103, column: 12, scope: !374)
!374 = distinct !DILexicalBlock(scope: !363, file: !3, line: 103, column: 5)
!375 = !DILocation(line: 103, column: 10, scope: !374)
!376 = !DILocation(line: 103, column: 17, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !3, line: 103, column: 5)
!378 = !DILocation(line: 103, column: 21, scope: !377)
!379 = !DILocation(line: 103, column: 19, scope: !377)
!380 = !DILocation(line: 103, column: 5, scope: !374)
!381 = !DILocation(line: 105, column: 24, scope: !382)
!382 = distinct !DILexicalBlock(scope: !377, file: !3, line: 104, column: 5)
!383 = !DILocation(line: 105, column: 30, scope: !382)
!384 = !DILocation(line: 105, column: 9, scope: !382)
!385 = !DILocation(line: 106, column: 5, scope: !382)
!386 = !DILocation(line: 103, column: 31, scope: !377)
!387 = !DILocation(line: 103, column: 5, scope: !377)
!388 = distinct !{!388, !380, !389, !390}
!389 = !DILocation(line: 106, column: 5, scope: !374)
!390 = !{!"llvm.loop.mustprogress"}
!391 = !DILocation(line: 107, column: 5, scope: !363)
!392 = !DILocation(line: 108, column: 1, scope: !363)
!393 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !394, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!394 = !DISubroutineType(types: !395)
!395 = !{!75, !366, !75, !42}
!396 = !DILocalVariable(name: "bytes", arg: 1, scope: !393, file: !3, line: 113, type: !366)
!397 = !DILocation(line: 113, column: 39, scope: !393)
!398 = !DILocalVariable(name: "numBytes", arg: 2, scope: !393, file: !3, line: 113, type: !75)
!399 = !DILocation(line: 113, column: 53, scope: !393)
!400 = !DILocalVariable(name: "hex", arg: 3, scope: !393, file: !3, line: 113, type: !42)
!401 = !DILocation(line: 113, column: 71, scope: !393)
!402 = !DILocalVariable(name: "numWritten", scope: !393, file: !3, line: 115, type: !75)
!403 = !DILocation(line: 115, column: 12, scope: !393)
!404 = !DILocation(line: 121, column: 5, scope: !393)
!405 = !DILocation(line: 121, column: 12, scope: !393)
!406 = !DILocation(line: 121, column: 25, scope: !393)
!407 = !DILocation(line: 121, column: 23, scope: !393)
!408 = !DILocation(line: 121, column: 34, scope: !393)
!409 = !DILocation(line: 121, column: 37, scope: !393)
!410 = !DILocation(line: 121, column: 67, scope: !393)
!411 = !DILocation(line: 121, column: 70, scope: !393)
!412 = !DILocation(line: 0, scope: !393)
!413 = !DILocalVariable(name: "byte", scope: !414, file: !3, line: 123, type: !23)
!414 = distinct !DILexicalBlock(scope: !393, file: !3, line: 122, column: 5)
!415 = !DILocation(line: 123, column: 13, scope: !414)
!416 = !DILocation(line: 124, column: 17, scope: !414)
!417 = !DILocation(line: 124, column: 25, scope: !414)
!418 = !DILocation(line: 124, column: 23, scope: !414)
!419 = !DILocation(line: 124, column: 9, scope: !414)
!420 = !DILocation(line: 125, column: 45, scope: !414)
!421 = !DILocation(line: 125, column: 29, scope: !414)
!422 = !DILocation(line: 125, column: 9, scope: !414)
!423 = !DILocation(line: 125, column: 15, scope: !414)
!424 = !DILocation(line: 125, column: 27, scope: !414)
!425 = !DILocation(line: 126, column: 9, scope: !414)
!426 = distinct !{!426, !404, !427, !390}
!427 = !DILocation(line: 127, column: 5, scope: !393)
!428 = !DILocation(line: 129, column: 12, scope: !393)
!429 = !DILocation(line: 129, column: 5, scope: !393)
!430 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !431, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{!75, !366, !75, !226}
!433 = !DILocalVariable(name: "bytes", arg: 1, scope: !430, file: !3, line: 135, type: !366)
!434 = !DILocation(line: 135, column: 41, scope: !430)
!435 = !DILocalVariable(name: "numBytes", arg: 2, scope: !430, file: !3, line: 135, type: !75)
!436 = !DILocation(line: 135, column: 55, scope: !430)
!437 = !DILocalVariable(name: "hex", arg: 3, scope: !430, file: !3, line: 135, type: !226)
!438 = !DILocation(line: 135, column: 76, scope: !430)
!439 = !DILocalVariable(name: "numWritten", scope: !430, file: !3, line: 137, type: !75)
!440 = !DILocation(line: 137, column: 12, scope: !430)
!441 = !DILocation(line: 143, column: 5, scope: !430)
!442 = !DILocation(line: 143, column: 12, scope: !430)
!443 = !DILocation(line: 143, column: 25, scope: !430)
!444 = !DILocation(line: 143, column: 23, scope: !430)
!445 = !DILocation(line: 143, column: 34, scope: !430)
!446 = !DILocation(line: 143, column: 47, scope: !430)
!447 = !DILocation(line: 143, column: 55, scope: !430)
!448 = !DILocation(line: 143, column: 53, scope: !430)
!449 = !DILocation(line: 143, column: 37, scope: !430)
!450 = !DILocation(line: 143, column: 68, scope: !430)
!451 = !DILocation(line: 143, column: 81, scope: !430)
!452 = !DILocation(line: 143, column: 89, scope: !430)
!453 = !DILocation(line: 143, column: 87, scope: !430)
!454 = !DILocation(line: 143, column: 100, scope: !430)
!455 = !DILocation(line: 143, column: 71, scope: !430)
!456 = !DILocation(line: 0, scope: !430)
!457 = !DILocalVariable(name: "byte", scope: !458, file: !3, line: 145, type: !23)
!458 = distinct !DILexicalBlock(scope: !430, file: !3, line: 144, column: 5)
!459 = !DILocation(line: 145, column: 13, scope: !458)
!460 = !DILocation(line: 146, column: 18, scope: !458)
!461 = !DILocation(line: 146, column: 26, scope: !458)
!462 = !DILocation(line: 146, column: 24, scope: !458)
!463 = !DILocation(line: 146, column: 9, scope: !458)
!464 = !DILocation(line: 147, column: 45, scope: !458)
!465 = !DILocation(line: 147, column: 29, scope: !458)
!466 = !DILocation(line: 147, column: 9, scope: !458)
!467 = !DILocation(line: 147, column: 15, scope: !458)
!468 = !DILocation(line: 147, column: 27, scope: !458)
!469 = !DILocation(line: 148, column: 9, scope: !458)
!470 = distinct !{!470, !441, !471, !390}
!471 = !DILocation(line: 149, column: 5, scope: !430)
!472 = !DILocation(line: 151, column: 12, scope: !430)
!473 = !DILocation(line: 151, column: 5, scope: !430)
!474 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !475, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DISubroutineType(types: !476)
!476 = !{!23}
!477 = !DILocation(line: 158, column: 5, scope: !474)
!478 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !475, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!479 = !DILocation(line: 163, column: 5, scope: !478)
!480 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !475, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!481 = !DILocation(line: 168, column: 13, scope: !480)
!482 = !DILocation(line: 168, column: 20, scope: !480)
!483 = !DILocation(line: 168, column: 5, scope: !480)
!484 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!485 = !DILocation(line: 187, column: 16, scope: !484)
!486 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DILocation(line: 188, column: 16, scope: !486)
!488 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!489 = !DILocation(line: 189, column: 16, scope: !488)
!490 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!491 = !DILocation(line: 190, column: 16, scope: !490)
!492 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!493 = !DILocation(line: 191, column: 16, scope: !492)
!494 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!495 = !DILocation(line: 192, column: 16, scope: !494)
!496 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!497 = !DILocation(line: 193, column: 16, scope: !496)
!498 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!499 = !DILocation(line: 194, column: 16, scope: !498)
!500 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!501 = !DILocation(line: 195, column: 16, scope: !500)
!502 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DILocation(line: 198, column: 15, scope: !502)
!504 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DILocation(line: 199, column: 15, scope: !504)
!506 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DILocation(line: 200, column: 15, scope: !506)
!508 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!509 = !DILocation(line: 201, column: 15, scope: !508)
!510 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!511 = !DILocation(line: 202, column: 15, scope: !510)
!512 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!513 = !DILocation(line: 203, column: 15, scope: !512)
!514 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DILocation(line: 204, column: 15, scope: !514)
!516 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DILocation(line: 205, column: 15, scope: !516)
!518 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DILocation(line: 206, column: 15, scope: !518)
