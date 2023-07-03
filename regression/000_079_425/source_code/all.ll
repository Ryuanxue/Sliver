; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType = type { i8* }
%struct._twoIntsStruct = type { i32, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
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
@.str.10 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7.12 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10.13 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_67_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, metadata !59, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !66, metadata !DIExpression()), !dbg !70
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !70
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !70
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !71
  store i8* %arraydecay, i8** %data, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !73, metadata !DIExpression()), !dbg !78
  %1 = load i8*, i8** %data, align 8, !dbg !79
  %call = call i64 @strlen(i8* %1) #7, !dbg !80
  store i64 %call, i64* %dataLen, align 8, !dbg !78
  %2 = load i64, i64* %dataLen, align 8, !dbg !81
  %sub = sub i64 100, %2, !dbg !83
  %cmp = icmp ugt i64 %sub, 1, !dbg !84
  br i1 %cmp, label %if.then, label %if.end18, !dbg !85

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !86
  %4 = load i64, i64* %dataLen, align 8, !dbg !89
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !90
  %5 = load i64, i64* %dataLen, align 8, !dbg !91
  %sub1 = sub i64 100, %5, !dbg !92
  %conv = trunc i64 %sub1 to i32, !dbg !93
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !94
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !95
  %cmp3 = icmp ne i8* %call2, null, !dbg !96
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !97

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !98
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !100
  store i64 %call6, i64* %dataLen, align 8, !dbg !101
  %8 = load i64, i64* %dataLen, align 8, !dbg !102
  %cmp7 = icmp ugt i64 %8, 0, !dbg !104
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !105

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !106
  %10 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub9 = sub i64 %10, 1, !dbg !108
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !106
  %11 = load i8, i8* %arrayidx, align 1, !dbg !106
  %conv10 = sext i8 %11 to i32, !dbg !106
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !109
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !110

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !111
  %13 = load i64, i64* %dataLen, align 8, !dbg !113
  %sub14 = sub i64 %13, 1, !dbg !114
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !111
  store i8 0, i8* %arrayidx15, align 1, !dbg !115
  br label %if.end, !dbg !116

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !117

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !118
  %14 = load i8*, i8** %data, align 8, !dbg !120
  %15 = load i64, i64* %dataLen, align 8, !dbg !121
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !120
  store i8 0, i8* %arrayidx16, align 1, !dbg !122
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !123

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !124
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !125
  store i8* %16, i8** %structFirst, align 8, !dbg !126
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !127
  %17 = load i8*, i8** %coerce.dive, align 8, !dbg !127
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_67b_badSink(i8* %17), !dbg !127
  ret void, !dbg !128
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !129 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !135
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !135
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !136
  store i8* %arraydecay, i8** %data, align 8, !dbg !137
  %1 = load i8*, i8** %data, align 8, !dbg !138
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !139
  %2 = load i8*, i8** %data, align 8, !dbg !140
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !141
  store i8* %2, i8** %structFirst, align 8, !dbg !142
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !143
  %3 = load i8*, i8** %coerce.dive, align 8, !dbg !143
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_67b_goodG2BSink(i8* %3), !dbg !143
  ret void, !dbg !144
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !145 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !151
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !151
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !152
  store i8* %arraydecay, i8** %data, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !154, metadata !DIExpression()), !dbg !156
  %1 = load i8*, i8** %data, align 8, !dbg !157
  %call = call i64 @strlen(i8* %1) #7, !dbg !158
  store i64 %call, i64* %dataLen, align 8, !dbg !156
  %2 = load i64, i64* %dataLen, align 8, !dbg !159
  %sub = sub i64 100, %2, !dbg !161
  %cmp = icmp ugt i64 %sub, 1, !dbg !162
  br i1 %cmp, label %if.then, label %if.end18, !dbg !163

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !164
  %4 = load i64, i64* %dataLen, align 8, !dbg !167
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !168
  %5 = load i64, i64* %dataLen, align 8, !dbg !169
  %sub1 = sub i64 100, %5, !dbg !170
  %conv = trunc i64 %sub1 to i32, !dbg !171
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !172
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !173
  %cmp3 = icmp ne i8* %call2, null, !dbg !174
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !175

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !176
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !178
  store i64 %call6, i64* %dataLen, align 8, !dbg !179
  %8 = load i64, i64* %dataLen, align 8, !dbg !180
  %cmp7 = icmp ugt i64 %8, 0, !dbg !182
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !183

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !184
  %10 = load i64, i64* %dataLen, align 8, !dbg !185
  %sub9 = sub i64 %10, 1, !dbg !186
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !184
  %11 = load i8, i8* %arrayidx, align 1, !dbg !184
  %conv10 = sext i8 %11 to i32, !dbg !184
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !187
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !188

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !189
  %13 = load i64, i64* %dataLen, align 8, !dbg !191
  %sub14 = sub i64 %13, 1, !dbg !192
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !189
  store i8 0, i8* %arrayidx15, align 1, !dbg !193
  br label %if.end, !dbg !194

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !195

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !196
  %14 = load i8*, i8** %data, align 8, !dbg !198
  %15 = load i64, i64* %dataLen, align 8, !dbg !199
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !198
  store i8 0, i8* %arrayidx16, align 1, !dbg !200
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !201

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !202
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !203
  store i8* %16, i8** %structFirst, align 8, !dbg !204
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !205
  %17 = load i8*, i8** %coerce.dive, align 8, !dbg !205
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_67b_goodB2GSink(i8* %17), !dbg !205
  ret void, !dbg !206
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_67_good() #0 !dbg !207 {
entry:
  call void @goodG2B(), !dbg !208
  call void @goodB2G(), !dbg !209
  ret void, !dbg !210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_67b_badSink(i8* %myStruct.coerce) #0 !dbg !211 {
entry:
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, align 8
  %data = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i8** %data, metadata !220, metadata !DIExpression()), !dbg !221
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !222
  %0 = load i8*, i8** %structFirst, align 8, !dbg !222
  store i8* %0, i8** %data, align 8, !dbg !221
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !223
  %2 = load i8*, i8** %data, align 8, !dbg !224
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !225
  ret void, !dbg !226
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_67b_goodG2BSink(i8* %myStruct.coerce) #0 !dbg !227 {
entry:
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, align 8
  %data = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata i8** %data, metadata !230, metadata !DIExpression()), !dbg !231
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !232
  %0 = load i8*, i8** %structFirst, align 8, !dbg !232
  store i8* %0, i8** %data, align 8, !dbg !231
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !233
  %2 = load i8*, i8** %data, align 8, !dbg !234
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_67b_goodB2GSink(i8* %myStruct.coerce) #0 !dbg !237 {
entry:
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, align 8
  %data = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i8** %data, metadata !240, metadata !DIExpression()), !dbg !241
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !242
  %0 = load i8*, i8** %structFirst, align 8, !dbg !242
  store i8* %0, i8** %data, align 8, !dbg !241
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !243
  %2 = load i8*, i8** %data, align 8, !dbg !244
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %2), !dbg !245
  ret void, !dbg !246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !247 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !250, metadata !DIExpression()), !dbg !251
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !252
  %0 = load i8*, i8** %line.addr, align 8, !dbg !253
  %cmp = icmp ne i8* %0, null, !dbg !255
  br i1 %cmp, label %if.then, label %if.end, !dbg !256

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !257
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !259
  br label %if.end, !dbg !260

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !261
  ret void, !dbg !262
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !263 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load i8*, i8** %line.addr, align 8, !dbg !266
  %cmp = icmp ne i8* %0, null, !dbg !268
  br i1 %cmp, label %if.then, label %if.end, !dbg !269

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !270
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !272
  br label %if.end, !dbg !273

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !275 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i32*, i32** %line.addr, align 8, !dbg !282
  %cmp = icmp ne i32* %0, null, !dbg !284
  br i1 %cmp, label %if.then, label %if.end, !dbg !285

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !286
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !288
  br label %if.end, !dbg !289

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !290
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !291 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !296
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !299 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !305
  %conv = sext i16 %0 to i32, !dbg !305
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !306
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !308 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !314
  %conv = fpext float %0 to double, !dbg !314
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !317 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !323
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.12, i64 0, i64 0), i64 %0), !dbg !324
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !326 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !335
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.12, i64 0, i64 0), i64 %0), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !338 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !341, metadata !DIExpression()), !dbg !342
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !343
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !344
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !346 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !351
  %conv = sext i8 %0 to i32, !dbg !351
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !352
  ret void, !dbg !353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !354 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !359, metadata !DIExpression()), !dbg !363
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !364
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !365
  store i32 %0, i32* %arrayidx, align 4, !dbg !366
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !367
  store i32 0, i32* %arrayidx1, align 4, !dbg !368
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.13, i64 0, i64 0), i32* %arraydecay), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !372 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !377
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !378
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !380 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !385
  %conv = zext i8 %0 to i32, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !388 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !394
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !395
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !397 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !407, metadata !DIExpression()), !dbg !408
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !409
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !410
  %1 = load i32, i32* %intOne, align 4, !dbg !410
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !411
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !412
  %3 = load i32, i32* %intTwo, align 4, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !415 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !419, metadata !DIExpression()), !dbg !420
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !421, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.declare(metadata i64* %i, metadata !423, metadata !DIExpression()), !dbg !424
  store i64 0, i64* %i, align 8, !dbg !425
  br label %for.cond, !dbg !427

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !428
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !430
  %cmp = icmp ult i64 %0, %1, !dbg !431
  br i1 %cmp, label %for.body, label %for.end, !dbg !432

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !433
  %3 = load i64, i64* %i, align 8, !dbg !435
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !433
  %4 = load i8, i8* %arrayidx, align 1, !dbg !433
  %conv = zext i8 %4 to i32, !dbg !433
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !436
  br label %for.inc, !dbg !437

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !438
  %inc = add i64 %5, 1, !dbg !438
  store i64 %inc, i64* %i, align 8, !dbg !438
  br label %for.cond, !dbg !439, !llvm.loop !440

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !443
  ret void, !dbg !444
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !445 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !448, metadata !DIExpression()), !dbg !449
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !450, metadata !DIExpression()), !dbg !451
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !452, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !454, metadata !DIExpression()), !dbg !455
  store i64 0, i64* %numWritten, align 8, !dbg !455
  br label %while.cond, !dbg !456

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !457
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !458
  %cmp = icmp ult i64 %0, %1, !dbg !459
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !460

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !461
  %2 = load i16*, i16** %call, align 8, !dbg !461
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !461
  %4 = load i64, i64* %numWritten, align 8, !dbg !461
  %mul = mul i64 2, %4, !dbg !461
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !461
  %5 = load i8, i8* %arrayidx, align 1, !dbg !461
  %conv = sext i8 %5 to i32, !dbg !461
  %idxprom = sext i32 %conv to i64, !dbg !461
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !461
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !461
  %conv2 = zext i16 %6 to i32, !dbg !461
  %and = and i32 %conv2, 4096, !dbg !461
  %tobool = icmp ne i32 %and, 0, !dbg !461
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !462

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !463
  %7 = load i16*, i16** %call3, align 8, !dbg !463
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !463
  %9 = load i64, i64* %numWritten, align 8, !dbg !463
  %mul4 = mul i64 2, %9, !dbg !463
  %add = add i64 %mul4, 1, !dbg !463
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !463
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !463
  %conv6 = sext i8 %10 to i32, !dbg !463
  %idxprom7 = sext i32 %conv6 to i64, !dbg !463
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !463
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !463
  %conv9 = zext i16 %11 to i32, !dbg !463
  %and10 = and i32 %conv9, 4096, !dbg !463
  %tobool11 = icmp ne i32 %and10, 0, !dbg !462
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !464
  br i1 %12, label %while.body, label %while.end, !dbg !456

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !465, metadata !DIExpression()), !dbg !467
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !468
  %14 = load i64, i64* %numWritten, align 8, !dbg !469
  %mul12 = mul i64 2, %14, !dbg !470
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !468
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !471
  %15 = load i32, i32* %byte, align 4, !dbg !472
  %conv15 = trunc i32 %15 to i8, !dbg !473
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !474
  %17 = load i64, i64* %numWritten, align 8, !dbg !475
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !474
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !476
  %18 = load i64, i64* %numWritten, align 8, !dbg !477
  %inc = add i64 %18, 1, !dbg !477
  store i64 %inc, i64* %numWritten, align 8, !dbg !477
  br label %while.cond, !dbg !456, !llvm.loop !478

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !480
  ret i64 %19, !dbg !481
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !482 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !485, metadata !DIExpression()), !dbg !486
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !487, metadata !DIExpression()), !dbg !488
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !489, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !491, metadata !DIExpression()), !dbg !492
  store i64 0, i64* %numWritten, align 8, !dbg !492
  br label %while.cond, !dbg !493

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !494
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !495
  %cmp = icmp ult i64 %0, %1, !dbg !496
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !497

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !498
  %3 = load i64, i64* %numWritten, align 8, !dbg !499
  %mul = mul i64 2, %3, !dbg !500
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !498
  %4 = load i32, i32* %arrayidx, align 4, !dbg !498
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !501
  %tobool = icmp ne i32 %call, 0, !dbg !501
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !502

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !503
  %6 = load i64, i64* %numWritten, align 8, !dbg !504
  %mul1 = mul i64 2, %6, !dbg !505
  %add = add i64 %mul1, 1, !dbg !506
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !503
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !503
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !507
  %tobool4 = icmp ne i32 %call3, 0, !dbg !502
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !508
  br i1 %8, label %while.body, label %while.end, !dbg !493

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !509, metadata !DIExpression()), !dbg !511
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !512
  %10 = load i64, i64* %numWritten, align 8, !dbg !513
  %mul5 = mul i64 2, %10, !dbg !514
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !512
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !515
  %11 = load i32, i32* %byte, align 4, !dbg !516
  %conv = trunc i32 %11 to i8, !dbg !517
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !518
  %13 = load i64, i64* %numWritten, align 8, !dbg !519
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !518
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !520
  %14 = load i64, i64* %numWritten, align 8, !dbg !521
  %inc = add i64 %14, 1, !dbg !521
  store i64 %inc, i64* %numWritten, align 8, !dbg !521
  br label %while.cond, !dbg !493, !llvm.loop !522

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !524
  ret i64 %15, !dbg !525
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !526 {
entry:
  ret i32 1, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !530 {
entry:
  ret i32 0, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !532 {
entry:
  %call = call i32 @rand() #8, !dbg !533
  %rem = srem i32 %call, 2, !dbg !534
  ret i32 %rem, !dbg !535
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !536 {
entry:
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !540 {
entry:
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !542 {
entry:
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !544 {
entry:
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !548 {
entry:
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !570 {
entry:
  ret void, !dbg !571
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

!llvm.dbg.cu = !{!44, !48, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_425/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_67a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_425/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_67b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_425/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_67_bad", scope: !45, file: !45, line: 30, type: !55, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 32, type: !42)
!58 = !DILocation(line: 32, column: 12, scope: !54)
!59 = !DILocalVariable(name: "myStruct", scope: !54, file: !45, line: 33, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType", file: !61, line: 8, baseType: !62)
!61 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_425/source_code")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType", file: !61, line: 5, size: 64, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !62, file: !61, line: 7, baseType: !42, size: 64)
!65 = !DILocation(line: 33, column: 75, scope: !54)
!66 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 34, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 100)
!70 = !DILocation(line: 34, column: 10, scope: !54)
!71 = !DILocation(line: 35, column: 12, scope: !54)
!72 = !DILocation(line: 35, column: 10, scope: !54)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 38, type: !75)
!74 = distinct !DILexicalBlock(scope: !54, file: !45, line: 36, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 38, column: 16, scope: !74)
!79 = !DILocation(line: 38, column: 33, scope: !74)
!80 = !DILocation(line: 38, column: 26, scope: !74)
!81 = !DILocation(line: 40, column: 17, scope: !82)
!82 = distinct !DILexicalBlock(scope: !74, file: !45, line: 40, column: 13)
!83 = !DILocation(line: 40, column: 16, scope: !82)
!84 = !DILocation(line: 40, column: 25, scope: !82)
!85 = !DILocation(line: 40, column: 13, scope: !74)
!86 = !DILocation(line: 43, column: 23, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !45, line: 43, column: 17)
!88 = distinct !DILexicalBlock(scope: !82, file: !45, line: 41, column: 9)
!89 = !DILocation(line: 43, column: 28, scope: !87)
!90 = !DILocation(line: 43, column: 27, scope: !87)
!91 = !DILocation(line: 43, column: 47, scope: !87)
!92 = !DILocation(line: 43, column: 46, scope: !87)
!93 = !DILocation(line: 43, column: 37, scope: !87)
!94 = !DILocation(line: 43, column: 57, scope: !87)
!95 = !DILocation(line: 43, column: 17, scope: !87)
!96 = !DILocation(line: 43, column: 64, scope: !87)
!97 = !DILocation(line: 43, column: 17, scope: !88)
!98 = !DILocation(line: 47, column: 34, scope: !99)
!99 = distinct !DILexicalBlock(scope: !87, file: !45, line: 44, column: 13)
!100 = !DILocation(line: 47, column: 27, scope: !99)
!101 = !DILocation(line: 47, column: 25, scope: !99)
!102 = !DILocation(line: 48, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !45, line: 48, column: 21)
!104 = !DILocation(line: 48, column: 29, scope: !103)
!105 = !DILocation(line: 48, column: 33, scope: !103)
!106 = !DILocation(line: 48, column: 36, scope: !103)
!107 = !DILocation(line: 48, column: 41, scope: !103)
!108 = !DILocation(line: 48, column: 48, scope: !103)
!109 = !DILocation(line: 48, column: 52, scope: !103)
!110 = !DILocation(line: 48, column: 21, scope: !99)
!111 = !DILocation(line: 50, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !103, file: !45, line: 49, column: 17)
!113 = !DILocation(line: 50, column: 26, scope: !112)
!114 = !DILocation(line: 50, column: 33, scope: !112)
!115 = !DILocation(line: 50, column: 37, scope: !112)
!116 = !DILocation(line: 51, column: 17, scope: !112)
!117 = !DILocation(line: 52, column: 13, scope: !99)
!118 = !DILocation(line: 55, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !87, file: !45, line: 54, column: 13)
!120 = !DILocation(line: 57, column: 17, scope: !119)
!121 = !DILocation(line: 57, column: 22, scope: !119)
!122 = !DILocation(line: 57, column: 31, scope: !119)
!123 = !DILocation(line: 59, column: 9, scope: !88)
!124 = !DILocation(line: 61, column: 28, scope: !54)
!125 = !DILocation(line: 61, column: 14, scope: !54)
!126 = !DILocation(line: 61, column: 26, scope: !54)
!127 = !DILocation(line: 62, column: 5, scope: !54)
!128 = !DILocation(line: 63, column: 1, scope: !54)
!129 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 71, type: !55, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!130 = !DILocalVariable(name: "data", scope: !129, file: !45, line: 73, type: !42)
!131 = !DILocation(line: 73, column: 12, scope: !129)
!132 = !DILocalVariable(name: "myStruct", scope: !129, file: !45, line: 74, type: !60)
!133 = !DILocation(line: 74, column: 75, scope: !129)
!134 = !DILocalVariable(name: "dataBuffer", scope: !129, file: !45, line: 75, type: !67)
!135 = !DILocation(line: 75, column: 10, scope: !129)
!136 = !DILocation(line: 76, column: 12, scope: !129)
!137 = !DILocation(line: 76, column: 10, scope: !129)
!138 = !DILocation(line: 78, column: 12, scope: !129)
!139 = !DILocation(line: 78, column: 5, scope: !129)
!140 = !DILocation(line: 79, column: 28, scope: !129)
!141 = !DILocation(line: 79, column: 14, scope: !129)
!142 = !DILocation(line: 79, column: 26, scope: !129)
!143 = !DILocation(line: 80, column: 5, scope: !129)
!144 = !DILocation(line: 81, column: 1, scope: !129)
!145 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 85, type: !55, scopeLine: 86, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!146 = !DILocalVariable(name: "data", scope: !145, file: !45, line: 87, type: !42)
!147 = !DILocation(line: 87, column: 12, scope: !145)
!148 = !DILocalVariable(name: "myStruct", scope: !145, file: !45, line: 88, type: !60)
!149 = !DILocation(line: 88, column: 75, scope: !145)
!150 = !DILocalVariable(name: "dataBuffer", scope: !145, file: !45, line: 89, type: !67)
!151 = !DILocation(line: 89, column: 10, scope: !145)
!152 = !DILocation(line: 90, column: 12, scope: !145)
!153 = !DILocation(line: 90, column: 10, scope: !145)
!154 = !DILocalVariable(name: "dataLen", scope: !155, file: !45, line: 93, type: !75)
!155 = distinct !DILexicalBlock(scope: !145, file: !45, line: 91, column: 5)
!156 = !DILocation(line: 93, column: 16, scope: !155)
!157 = !DILocation(line: 93, column: 33, scope: !155)
!158 = !DILocation(line: 93, column: 26, scope: !155)
!159 = !DILocation(line: 95, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !45, line: 95, column: 13)
!161 = !DILocation(line: 95, column: 16, scope: !160)
!162 = !DILocation(line: 95, column: 25, scope: !160)
!163 = !DILocation(line: 95, column: 13, scope: !155)
!164 = !DILocation(line: 98, column: 23, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !45, line: 98, column: 17)
!166 = distinct !DILexicalBlock(scope: !160, file: !45, line: 96, column: 9)
!167 = !DILocation(line: 98, column: 28, scope: !165)
!168 = !DILocation(line: 98, column: 27, scope: !165)
!169 = !DILocation(line: 98, column: 47, scope: !165)
!170 = !DILocation(line: 98, column: 46, scope: !165)
!171 = !DILocation(line: 98, column: 37, scope: !165)
!172 = !DILocation(line: 98, column: 57, scope: !165)
!173 = !DILocation(line: 98, column: 17, scope: !165)
!174 = !DILocation(line: 98, column: 64, scope: !165)
!175 = !DILocation(line: 98, column: 17, scope: !166)
!176 = !DILocation(line: 102, column: 34, scope: !177)
!177 = distinct !DILexicalBlock(scope: !165, file: !45, line: 99, column: 13)
!178 = !DILocation(line: 102, column: 27, scope: !177)
!179 = !DILocation(line: 102, column: 25, scope: !177)
!180 = !DILocation(line: 103, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !45, line: 103, column: 21)
!182 = !DILocation(line: 103, column: 29, scope: !181)
!183 = !DILocation(line: 103, column: 33, scope: !181)
!184 = !DILocation(line: 103, column: 36, scope: !181)
!185 = !DILocation(line: 103, column: 41, scope: !181)
!186 = !DILocation(line: 103, column: 48, scope: !181)
!187 = !DILocation(line: 103, column: 52, scope: !181)
!188 = !DILocation(line: 103, column: 21, scope: !177)
!189 = !DILocation(line: 105, column: 21, scope: !190)
!190 = distinct !DILexicalBlock(scope: !181, file: !45, line: 104, column: 17)
!191 = !DILocation(line: 105, column: 26, scope: !190)
!192 = !DILocation(line: 105, column: 33, scope: !190)
!193 = !DILocation(line: 105, column: 37, scope: !190)
!194 = !DILocation(line: 106, column: 17, scope: !190)
!195 = !DILocation(line: 107, column: 13, scope: !177)
!196 = !DILocation(line: 110, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !165, file: !45, line: 109, column: 13)
!198 = !DILocation(line: 112, column: 17, scope: !197)
!199 = !DILocation(line: 112, column: 22, scope: !197)
!200 = !DILocation(line: 112, column: 31, scope: !197)
!201 = !DILocation(line: 114, column: 9, scope: !166)
!202 = !DILocation(line: 116, column: 28, scope: !145)
!203 = !DILocation(line: 116, column: 14, scope: !145)
!204 = !DILocation(line: 116, column: 26, scope: !145)
!205 = !DILocation(line: 117, column: 5, scope: !145)
!206 = !DILocation(line: 118, column: 1, scope: !145)
!207 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_67_good", scope: !45, file: !45, line: 120, type: !55, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!208 = !DILocation(line: 122, column: 5, scope: !207)
!209 = !DILocation(line: 123, column: 5, scope: !207)
!210 = !DILocation(line: 124, column: 1, scope: !207)
!211 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_67b_badSink", scope: !49, file: !49, line: 31, type: !212, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !214}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType", file: !49, line: 27, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE134_Uncontrolled_Format_String__char_console_fprintf_67_structType", file: !49, line: 24, size: 64, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !215, file: !49, line: 26, baseType: !42, size: 64)
!218 = !DILocalVariable(name: "myStruct", arg: 1, scope: !211, file: !49, line: 31, type: !214)
!219 = !DILocation(line: 31, column: 144, scope: !211)
!220 = !DILocalVariable(name: "data", scope: !211, file: !49, line: 33, type: !42)
!221 = !DILocation(line: 33, column: 12, scope: !211)
!222 = !DILocation(line: 33, column: 28, scope: !211)
!223 = !DILocation(line: 35, column: 13, scope: !211)
!224 = !DILocation(line: 35, column: 21, scope: !211)
!225 = !DILocation(line: 35, column: 5, scope: !211)
!226 = !DILocation(line: 36, column: 1, scope: !211)
!227 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_67b_goodG2BSink", scope: !49, file: !49, line: 43, type: !212, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!228 = !DILocalVariable(name: "myStruct", arg: 1, scope: !227, file: !49, line: 43, type: !214)
!229 = !DILocation(line: 43, column: 148, scope: !227)
!230 = !DILocalVariable(name: "data", scope: !227, file: !49, line: 45, type: !42)
!231 = !DILocation(line: 45, column: 12, scope: !227)
!232 = !DILocation(line: 45, column: 28, scope: !227)
!233 = !DILocation(line: 47, column: 13, scope: !227)
!234 = !DILocation(line: 47, column: 21, scope: !227)
!235 = !DILocation(line: 47, column: 5, scope: !227)
!236 = !DILocation(line: 48, column: 1, scope: !227)
!237 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_67b_goodB2GSink", scope: !49, file: !49, line: 51, type: !212, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!238 = !DILocalVariable(name: "myStruct", arg: 1, scope: !237, file: !49, line: 51, type: !214)
!239 = !DILocation(line: 51, column: 148, scope: !237)
!240 = !DILocalVariable(name: "data", scope: !237, file: !49, line: 53, type: !42)
!241 = !DILocation(line: 53, column: 12, scope: !237)
!242 = !DILocation(line: 53, column: 28, scope: !237)
!243 = !DILocation(line: 55, column: 13, scope: !237)
!244 = !DILocation(line: 55, column: 29, scope: !237)
!245 = !DILocation(line: 55, column: 5, scope: !237)
!246 = !DILocation(line: 56, column: 1, scope: !237)
!247 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !248, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !42}
!250 = !DILocalVariable(name: "line", arg: 1, scope: !247, file: !3, line: 11, type: !42)
!251 = !DILocation(line: 11, column: 25, scope: !247)
!252 = !DILocation(line: 13, column: 1, scope: !247)
!253 = !DILocation(line: 14, column: 8, scope: !254)
!254 = distinct !DILexicalBlock(scope: !247, file: !3, line: 14, column: 8)
!255 = !DILocation(line: 14, column: 13, scope: !254)
!256 = !DILocation(line: 14, column: 8, scope: !247)
!257 = !DILocation(line: 16, column: 24, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 15, column: 5)
!259 = !DILocation(line: 16, column: 9, scope: !258)
!260 = !DILocation(line: 17, column: 5, scope: !258)
!261 = !DILocation(line: 18, column: 5, scope: !247)
!262 = !DILocation(line: 19, column: 1, scope: !247)
!263 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !248, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!264 = !DILocalVariable(name: "line", arg: 1, scope: !263, file: !3, line: 20, type: !42)
!265 = !DILocation(line: 20, column: 29, scope: !263)
!266 = !DILocation(line: 22, column: 8, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !3, line: 22, column: 8)
!268 = !DILocation(line: 22, column: 13, scope: !267)
!269 = !DILocation(line: 22, column: 8, scope: !263)
!270 = !DILocation(line: 24, column: 24, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !3, line: 23, column: 5)
!272 = !DILocation(line: 24, column: 9, scope: !271)
!273 = !DILocation(line: 25, column: 5, scope: !271)
!274 = !DILocation(line: 26, column: 1, scope: !263)
!275 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !276, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !23)
!280 = !DILocalVariable(name: "line", arg: 1, scope: !275, file: !3, line: 27, type: !278)
!281 = !DILocation(line: 27, column: 29, scope: !275)
!282 = !DILocation(line: 29, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !275, file: !3, line: 29, column: 8)
!284 = !DILocation(line: 29, column: 13, scope: !283)
!285 = !DILocation(line: 29, column: 8, scope: !275)
!286 = !DILocation(line: 31, column: 27, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !3, line: 30, column: 5)
!288 = !DILocation(line: 31, column: 9, scope: !287)
!289 = !DILocation(line: 32, column: 5, scope: !287)
!290 = !DILocation(line: 33, column: 1, scope: !275)
!291 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !292, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !23}
!294 = !DILocalVariable(name: "intNumber", arg: 1, scope: !291, file: !3, line: 35, type: !23)
!295 = !DILocation(line: 35, column: 24, scope: !291)
!296 = !DILocation(line: 37, column: 20, scope: !291)
!297 = !DILocation(line: 37, column: 5, scope: !291)
!298 = !DILocation(line: 38, column: 1, scope: !291)
!299 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !300, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !302}
!302 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!303 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !299, file: !3, line: 40, type: !302)
!304 = !DILocation(line: 40, column: 28, scope: !299)
!305 = !DILocation(line: 42, column: 21, scope: !299)
!306 = !DILocation(line: 42, column: 5, scope: !299)
!307 = !DILocation(line: 43, column: 1, scope: !299)
!308 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !309, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !311}
!311 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!312 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !308, file: !3, line: 45, type: !311)
!313 = !DILocation(line: 45, column: 28, scope: !308)
!314 = !DILocation(line: 47, column: 20, scope: !308)
!315 = !DILocation(line: 47, column: 5, scope: !308)
!316 = !DILocation(line: 48, column: 1, scope: !308)
!317 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !318, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!321 = !DILocalVariable(name: "longNumber", arg: 1, scope: !317, file: !3, line: 50, type: !320)
!322 = !DILocation(line: 50, column: 26, scope: !317)
!323 = !DILocation(line: 52, column: 21, scope: !317)
!324 = !DILocation(line: 52, column: 5, scope: !317)
!325 = !DILocation(line: 53, column: 1, scope: !317)
!326 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !327, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !330, line: 27, baseType: !331)
!330 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !332, line: 44, baseType: !320)
!332 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!333 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !326, file: !3, line: 55, type: !329)
!334 = !DILocation(line: 55, column: 33, scope: !326)
!335 = !DILocation(line: 57, column: 29, scope: !326)
!336 = !DILocation(line: 57, column: 5, scope: !326)
!337 = !DILocation(line: 58, column: 1, scope: !326)
!338 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !339, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !75}
!341 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !338, file: !3, line: 60, type: !75)
!342 = !DILocation(line: 60, column: 29, scope: !338)
!343 = !DILocation(line: 62, column: 21, scope: !338)
!344 = !DILocation(line: 62, column: 5, scope: !338)
!345 = !DILocation(line: 63, column: 1, scope: !338)
!346 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !347, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !43}
!349 = !DILocalVariable(name: "charHex", arg: 1, scope: !346, file: !3, line: 65, type: !43)
!350 = !DILocation(line: 65, column: 29, scope: !346)
!351 = !DILocation(line: 67, column: 22, scope: !346)
!352 = !DILocation(line: 67, column: 5, scope: !346)
!353 = !DILocation(line: 68, column: 1, scope: !346)
!354 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !355, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !279}
!357 = !DILocalVariable(name: "wideChar", arg: 1, scope: !354, file: !3, line: 70, type: !279)
!358 = !DILocation(line: 70, column: 29, scope: !354)
!359 = !DILocalVariable(name: "s", scope: !354, file: !3, line: 74, type: !360)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 64, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 2)
!363 = !DILocation(line: 74, column: 13, scope: !354)
!364 = !DILocation(line: 75, column: 16, scope: !354)
!365 = !DILocation(line: 75, column: 9, scope: !354)
!366 = !DILocation(line: 75, column: 14, scope: !354)
!367 = !DILocation(line: 76, column: 9, scope: !354)
!368 = !DILocation(line: 76, column: 14, scope: !354)
!369 = !DILocation(line: 77, column: 21, scope: !354)
!370 = !DILocation(line: 77, column: 5, scope: !354)
!371 = !DILocation(line: 78, column: 1, scope: !354)
!372 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !373, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !7}
!375 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !372, file: !3, line: 80, type: !7)
!376 = !DILocation(line: 80, column: 33, scope: !372)
!377 = !DILocation(line: 82, column: 20, scope: !372)
!378 = !DILocation(line: 82, column: 5, scope: !372)
!379 = !DILocation(line: 83, column: 1, scope: !372)
!380 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !381, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !25}
!383 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !380, file: !3, line: 85, type: !25)
!384 = !DILocation(line: 85, column: 45, scope: !380)
!385 = !DILocation(line: 87, column: 22, scope: !380)
!386 = !DILocation(line: 87, column: 5, scope: !380)
!387 = !DILocation(line: 88, column: 1, scope: !380)
!388 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !389, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391}
!391 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!392 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !388, file: !3, line: 90, type: !391)
!393 = !DILocation(line: 90, column: 29, scope: !388)
!394 = !DILocation(line: 92, column: 20, scope: !388)
!395 = !DILocation(line: 92, column: 5, scope: !388)
!396 = !DILocation(line: 93, column: 1, scope: !388)
!397 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !398, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !402, line: 100, baseType: !403)
!402 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_425/source_code")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !402, line: 96, size: 64, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !403, file: !402, line: 98, baseType: !23, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !403, file: !402, line: 99, baseType: !23, size: 32, offset: 32)
!407 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !397, file: !3, line: 95, type: !400)
!408 = !DILocation(line: 95, column: 40, scope: !397)
!409 = !DILocation(line: 97, column: 26, scope: !397)
!410 = !DILocation(line: 97, column: 47, scope: !397)
!411 = !DILocation(line: 97, column: 55, scope: !397)
!412 = !DILocation(line: 97, column: 76, scope: !397)
!413 = !DILocation(line: 97, column: 5, scope: !397)
!414 = !DILocation(line: 98, column: 1, scope: !397)
!415 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !416, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !418, !75}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!419 = !DILocalVariable(name: "bytes", arg: 1, scope: !415, file: !3, line: 100, type: !418)
!420 = !DILocation(line: 100, column: 38, scope: !415)
!421 = !DILocalVariable(name: "numBytes", arg: 2, scope: !415, file: !3, line: 100, type: !75)
!422 = !DILocation(line: 100, column: 52, scope: !415)
!423 = !DILocalVariable(name: "i", scope: !415, file: !3, line: 102, type: !75)
!424 = !DILocation(line: 102, column: 12, scope: !415)
!425 = !DILocation(line: 103, column: 12, scope: !426)
!426 = distinct !DILexicalBlock(scope: !415, file: !3, line: 103, column: 5)
!427 = !DILocation(line: 103, column: 10, scope: !426)
!428 = !DILocation(line: 103, column: 17, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !3, line: 103, column: 5)
!430 = !DILocation(line: 103, column: 21, scope: !429)
!431 = !DILocation(line: 103, column: 19, scope: !429)
!432 = !DILocation(line: 103, column: 5, scope: !426)
!433 = !DILocation(line: 105, column: 24, scope: !434)
!434 = distinct !DILexicalBlock(scope: !429, file: !3, line: 104, column: 5)
!435 = !DILocation(line: 105, column: 30, scope: !434)
!436 = !DILocation(line: 105, column: 9, scope: !434)
!437 = !DILocation(line: 106, column: 5, scope: !434)
!438 = !DILocation(line: 103, column: 31, scope: !429)
!439 = !DILocation(line: 103, column: 5, scope: !429)
!440 = distinct !{!440, !432, !441, !442}
!441 = !DILocation(line: 106, column: 5, scope: !426)
!442 = !{!"llvm.loop.mustprogress"}
!443 = !DILocation(line: 107, column: 5, scope: !415)
!444 = !DILocation(line: 108, column: 1, scope: !415)
!445 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !446, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!446 = !DISubroutineType(types: !447)
!447 = !{!75, !418, !75, !42}
!448 = !DILocalVariable(name: "bytes", arg: 1, scope: !445, file: !3, line: 113, type: !418)
!449 = !DILocation(line: 113, column: 39, scope: !445)
!450 = !DILocalVariable(name: "numBytes", arg: 2, scope: !445, file: !3, line: 113, type: !75)
!451 = !DILocation(line: 113, column: 53, scope: !445)
!452 = !DILocalVariable(name: "hex", arg: 3, scope: !445, file: !3, line: 113, type: !42)
!453 = !DILocation(line: 113, column: 71, scope: !445)
!454 = !DILocalVariable(name: "numWritten", scope: !445, file: !3, line: 115, type: !75)
!455 = !DILocation(line: 115, column: 12, scope: !445)
!456 = !DILocation(line: 121, column: 5, scope: !445)
!457 = !DILocation(line: 121, column: 12, scope: !445)
!458 = !DILocation(line: 121, column: 25, scope: !445)
!459 = !DILocation(line: 121, column: 23, scope: !445)
!460 = !DILocation(line: 121, column: 34, scope: !445)
!461 = !DILocation(line: 121, column: 37, scope: !445)
!462 = !DILocation(line: 121, column: 67, scope: !445)
!463 = !DILocation(line: 121, column: 70, scope: !445)
!464 = !DILocation(line: 0, scope: !445)
!465 = !DILocalVariable(name: "byte", scope: !466, file: !3, line: 123, type: !23)
!466 = distinct !DILexicalBlock(scope: !445, file: !3, line: 122, column: 5)
!467 = !DILocation(line: 123, column: 13, scope: !466)
!468 = !DILocation(line: 124, column: 17, scope: !466)
!469 = !DILocation(line: 124, column: 25, scope: !466)
!470 = !DILocation(line: 124, column: 23, scope: !466)
!471 = !DILocation(line: 124, column: 9, scope: !466)
!472 = !DILocation(line: 125, column: 45, scope: !466)
!473 = !DILocation(line: 125, column: 29, scope: !466)
!474 = !DILocation(line: 125, column: 9, scope: !466)
!475 = !DILocation(line: 125, column: 15, scope: !466)
!476 = !DILocation(line: 125, column: 27, scope: !466)
!477 = !DILocation(line: 126, column: 9, scope: !466)
!478 = distinct !{!478, !456, !479, !442}
!479 = !DILocation(line: 127, column: 5, scope: !445)
!480 = !DILocation(line: 129, column: 12, scope: !445)
!481 = !DILocation(line: 129, column: 5, scope: !445)
!482 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !483, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DISubroutineType(types: !484)
!484 = !{!75, !418, !75, !278}
!485 = !DILocalVariable(name: "bytes", arg: 1, scope: !482, file: !3, line: 135, type: !418)
!486 = !DILocation(line: 135, column: 41, scope: !482)
!487 = !DILocalVariable(name: "numBytes", arg: 2, scope: !482, file: !3, line: 135, type: !75)
!488 = !DILocation(line: 135, column: 55, scope: !482)
!489 = !DILocalVariable(name: "hex", arg: 3, scope: !482, file: !3, line: 135, type: !278)
!490 = !DILocation(line: 135, column: 76, scope: !482)
!491 = !DILocalVariable(name: "numWritten", scope: !482, file: !3, line: 137, type: !75)
!492 = !DILocation(line: 137, column: 12, scope: !482)
!493 = !DILocation(line: 143, column: 5, scope: !482)
!494 = !DILocation(line: 143, column: 12, scope: !482)
!495 = !DILocation(line: 143, column: 25, scope: !482)
!496 = !DILocation(line: 143, column: 23, scope: !482)
!497 = !DILocation(line: 143, column: 34, scope: !482)
!498 = !DILocation(line: 143, column: 47, scope: !482)
!499 = !DILocation(line: 143, column: 55, scope: !482)
!500 = !DILocation(line: 143, column: 53, scope: !482)
!501 = !DILocation(line: 143, column: 37, scope: !482)
!502 = !DILocation(line: 143, column: 68, scope: !482)
!503 = !DILocation(line: 143, column: 81, scope: !482)
!504 = !DILocation(line: 143, column: 89, scope: !482)
!505 = !DILocation(line: 143, column: 87, scope: !482)
!506 = !DILocation(line: 143, column: 100, scope: !482)
!507 = !DILocation(line: 143, column: 71, scope: !482)
!508 = !DILocation(line: 0, scope: !482)
!509 = !DILocalVariable(name: "byte", scope: !510, file: !3, line: 145, type: !23)
!510 = distinct !DILexicalBlock(scope: !482, file: !3, line: 144, column: 5)
!511 = !DILocation(line: 145, column: 13, scope: !510)
!512 = !DILocation(line: 146, column: 18, scope: !510)
!513 = !DILocation(line: 146, column: 26, scope: !510)
!514 = !DILocation(line: 146, column: 24, scope: !510)
!515 = !DILocation(line: 146, column: 9, scope: !510)
!516 = !DILocation(line: 147, column: 45, scope: !510)
!517 = !DILocation(line: 147, column: 29, scope: !510)
!518 = !DILocation(line: 147, column: 9, scope: !510)
!519 = !DILocation(line: 147, column: 15, scope: !510)
!520 = !DILocation(line: 147, column: 27, scope: !510)
!521 = !DILocation(line: 148, column: 9, scope: !510)
!522 = distinct !{!522, !493, !523, !442}
!523 = !DILocation(line: 149, column: 5, scope: !482)
!524 = !DILocation(line: 151, column: 12, scope: !482)
!525 = !DILocation(line: 151, column: 5, scope: !482)
!526 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !527, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DISubroutineType(types: !528)
!528 = !{!23}
!529 = !DILocation(line: 158, column: 5, scope: !526)
!530 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !527, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!531 = !DILocation(line: 163, column: 5, scope: !530)
!532 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !527, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DILocation(line: 168, column: 13, scope: !532)
!534 = !DILocation(line: 168, column: 20, scope: !532)
!535 = !DILocation(line: 168, column: 5, scope: !532)
!536 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DILocation(line: 187, column: 16, scope: !536)
!538 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DILocation(line: 188, column: 16, scope: !538)
!540 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DILocation(line: 189, column: 16, scope: !540)
!542 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DILocation(line: 190, column: 16, scope: !542)
!544 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DILocation(line: 191, column: 16, scope: !544)
!546 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 192, column: 16, scope: !546)
!548 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DILocation(line: 193, column: 16, scope: !548)
!550 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 194, column: 16, scope: !550)
!552 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 195, column: 16, scope: !552)
!554 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 198, column: 15, scope: !554)
!556 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 199, column: 15, scope: !556)
!558 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 200, column: 15, scope: !558)
!560 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 201, column: 15, scope: !560)
!562 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DILocation(line: 202, column: 15, scope: !562)
!564 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 203, column: 15, scope: !564)
!566 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 204, column: 15, scope: !566)
!568 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 205, column: 15, scope: !568)
!570 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 206, column: 15, scope: !570)
