; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_64_bad() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !65
  store i8* %arraydecay, i8** %data, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !72
  %1 = load i8*, i8** %data, align 8, !dbg !73
  %call = call i64 @strlen(i8* %1) #7, !dbg !74
  store i64 %call, i64* %dataLen, align 8, !dbg !72
  %2 = load i64, i64* %dataLen, align 8, !dbg !75
  %sub = sub i64 100, %2, !dbg !77
  %cmp = icmp ugt i64 %sub, 1, !dbg !78
  br i1 %cmp, label %if.then, label %if.end18, !dbg !79

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !80
  %4 = load i64, i64* %dataLen, align 8, !dbg !83
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !84
  %5 = load i64, i64* %dataLen, align 8, !dbg !85
  %sub1 = sub i64 100, %5, !dbg !86
  %conv = trunc i64 %sub1 to i32, !dbg !87
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !88
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !89
  %cmp3 = icmp ne i8* %call2, null, !dbg !90
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !91

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !92
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !94
  store i64 %call6, i64* %dataLen, align 8, !dbg !95
  %8 = load i64, i64* %dataLen, align 8, !dbg !96
  %cmp7 = icmp ugt i64 %8, 0, !dbg !98
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !99

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !100
  %10 = load i64, i64* %dataLen, align 8, !dbg !101
  %sub9 = sub i64 %10, 1, !dbg !102
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !100
  %11 = load i8, i8* %arrayidx, align 1, !dbg !100
  %conv10 = sext i8 %11 to i32, !dbg !100
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !103
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !104

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !105
  %13 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub14 = sub i64 %13, 1, !dbg !108
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !105
  store i8 0, i8* %arrayidx15, align 1, !dbg !109
  br label %if.end, !dbg !110

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !111

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !112
  %14 = load i8*, i8** %data, align 8, !dbg !114
  %15 = load i64, i64* %dataLen, align 8, !dbg !115
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !114
  store i8 0, i8* %arrayidx16, align 1, !dbg !116
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !117

if.end18:                                         ; preds = %if.end17, %entry
  %16 = bitcast i8** %data to i8*, !dbg !118
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_64b_badSink(i8* %16), !dbg !119
  ret void, !dbg !120
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !121 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !125
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !125
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !126
  store i8* %arraydecay, i8** %data, align 8, !dbg !127
  %1 = load i8*, i8** %data, align 8, !dbg !128
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !129
  %2 = bitcast i8** %data to i8*, !dbg !130
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_64b_goodG2BSink(i8* %2), !dbg !131
  ret void, !dbg !132
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !133 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !137
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !138
  store i8* %arraydecay, i8** %data, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !140, metadata !DIExpression()), !dbg !142
  %1 = load i8*, i8** %data, align 8, !dbg !143
  %call = call i64 @strlen(i8* %1) #7, !dbg !144
  store i64 %call, i64* %dataLen, align 8, !dbg !142
  %2 = load i64, i64* %dataLen, align 8, !dbg !145
  %sub = sub i64 100, %2, !dbg !147
  %cmp = icmp ugt i64 %sub, 1, !dbg !148
  br i1 %cmp, label %if.then, label %if.end18, !dbg !149

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !150
  %4 = load i64, i64* %dataLen, align 8, !dbg !153
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !154
  %5 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub1 = sub i64 100, %5, !dbg !156
  %conv = trunc i64 %sub1 to i32, !dbg !157
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !158
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !159
  %cmp3 = icmp ne i8* %call2, null, !dbg !160
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !161

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !162
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !164
  store i64 %call6, i64* %dataLen, align 8, !dbg !165
  %8 = load i64, i64* %dataLen, align 8, !dbg !166
  %cmp7 = icmp ugt i64 %8, 0, !dbg !168
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !169

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !170
  %10 = load i64, i64* %dataLen, align 8, !dbg !171
  %sub9 = sub i64 %10, 1, !dbg !172
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !170
  %11 = load i8, i8* %arrayidx, align 1, !dbg !170
  %conv10 = sext i8 %11 to i32, !dbg !170
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !173
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !174

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !175
  %13 = load i64, i64* %dataLen, align 8, !dbg !177
  %sub14 = sub i64 %13, 1, !dbg !178
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !175
  store i8 0, i8* %arrayidx15, align 1, !dbg !179
  br label %if.end, !dbg !180

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !181

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !182
  %14 = load i8*, i8** %data, align 8, !dbg !184
  %15 = load i64, i64* %dataLen, align 8, !dbg !185
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !184
  store i8 0, i8* %arrayidx16, align 1, !dbg !186
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !187

if.end18:                                         ; preds = %if.end17, %entry
  %16 = bitcast i8** %data to i8*, !dbg !188
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_64b_goodB2GSink(i8* %16), !dbg !189
  ret void, !dbg !190
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_64_good() #0 !dbg !191 {
entry:
  call void @goodG2B(), !dbg !192
  call void @goodB2G(), !dbg !193
  ret void, !dbg !194
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_64b_badSink(i8* %dataVoidPtr) #0 !dbg !195 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !202
  %1 = bitcast i8* %0 to i8**, !dbg !203
  store i8** %1, i8*** %dataPtr, align 8, !dbg !201
  call void @llvm.dbg.declare(metadata i8** %data, metadata !204, metadata !DIExpression()), !dbg !205
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !206
  %3 = load i8*, i8** %2, align 8, !dbg !207
  store i8* %3, i8** %data, align 8, !dbg !205
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !208
  %5 = load i8*, i8** %data, align 8, !dbg !209
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %5), !dbg !210
  ret void, !dbg !211
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_64b_goodG2BSink(i8* %dataVoidPtr) #0 !dbg !212 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !217
  %1 = bitcast i8* %0 to i8**, !dbg !218
  store i8** %1, i8*** %dataPtr, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata i8** %data, metadata !219, metadata !DIExpression()), !dbg !220
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !221
  %3 = load i8*, i8** %2, align 8, !dbg !222
  store i8* %3, i8** %data, align 8, !dbg !220
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !223
  %5 = load i8*, i8** %data, align 8, !dbg !224
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %5), !dbg !225
  ret void, !dbg !226
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_64b_goodB2GSink(i8* %dataVoidPtr) #0 !dbg !227 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !230, metadata !DIExpression()), !dbg !231
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !232
  %1 = bitcast i8* %0 to i8**, !dbg !233
  store i8** %1, i8*** %dataPtr, align 8, !dbg !231
  call void @llvm.dbg.declare(metadata i8** %data, metadata !234, metadata !DIExpression()), !dbg !235
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !236
  %3 = load i8*, i8** %2, align 8, !dbg !237
  store i8* %3, i8** %data, align 8, !dbg !235
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !238
  %5 = load i8*, i8** %data, align 8, !dbg !239
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %5), !dbg !240
  ret void, !dbg !241
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !242 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !247
  %0 = load i8*, i8** %line.addr, align 8, !dbg !248
  %cmp = icmp ne i8* %0, null, !dbg !250
  br i1 %cmp, label %if.then, label %if.end, !dbg !251

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !252
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !254
  br label %if.end, !dbg !255

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !256
  ret void, !dbg !257
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !258 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = load i8*, i8** %line.addr, align 8, !dbg !261
  %cmp = icmp ne i8* %0, null, !dbg !263
  br i1 %cmp, label %if.then, label %if.end, !dbg !264

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !265
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !267
  br label %if.end, !dbg !268

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !269
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !270 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = load i32*, i32** %line.addr, align 8, !dbg !277
  %cmp = icmp ne i32* %0, null, !dbg !279
  br i1 %cmp, label %if.then, label %if.end, !dbg !280

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !281
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !283
  br label %if.end, !dbg !284

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !285
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !286 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !291
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !292
  ret void, !dbg !293
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !294 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !300
  %conv = sext i16 %0 to i32, !dbg !300
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !301
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !303 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !307, metadata !DIExpression()), !dbg !308
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !309
  %conv = fpext float %0 to double, !dbg !309
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !310
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !312 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !316, metadata !DIExpression()), !dbg !317
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !318
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.12, i64 0, i64 0), i64 %0), !dbg !319
  ret void, !dbg !320
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !321 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !330
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.12, i64 0, i64 0), i64 %0), !dbg !331
  ret void, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !333 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !338
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !341 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !346
  %conv = sext i8 %0 to i32, !dbg !346
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !349 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !352, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !354, metadata !DIExpression()), !dbg !358
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !359
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !360
  store i32 %0, i32* %arrayidx, align 4, !dbg !361
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !362
  store i32 0, i32* %arrayidx1, align 4, !dbg !363
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !364
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.13, i64 0, i64 0), i32* %arraydecay), !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !367 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !372
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !375 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !380
  %conv = zext i8 %0 to i32, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !381
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !383 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !389
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !390
  ret void, !dbg !391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !392 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !404
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !405
  %1 = load i32, i32* %intOne, align 4, !dbg !405
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !406
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !407
  %3 = load i32, i32* %intTwo, align 4, !dbg !407
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !408
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !410 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !414, metadata !DIExpression()), !dbg !415
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata i64* %i, metadata !418, metadata !DIExpression()), !dbg !419
  store i64 0, i64* %i, align 8, !dbg !420
  br label %for.cond, !dbg !422

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !423
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !425
  %cmp = icmp ult i64 %0, %1, !dbg !426
  br i1 %cmp, label %for.body, label %for.end, !dbg !427

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !428
  %3 = load i64, i64* %i, align 8, !dbg !430
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !428
  %4 = load i8, i8* %arrayidx, align 1, !dbg !428
  %conv = zext i8 %4 to i32, !dbg !428
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !431
  br label %for.inc, !dbg !432

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !433
  %inc = add i64 %5, 1, !dbg !433
  store i64 %inc, i64* %i, align 8, !dbg !433
  br label %for.cond, !dbg !434, !llvm.loop !435

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !438
  ret void, !dbg !439
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !440 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !443, metadata !DIExpression()), !dbg !444
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !445, metadata !DIExpression()), !dbg !446
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !447, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !449, metadata !DIExpression()), !dbg !450
  store i64 0, i64* %numWritten, align 8, !dbg !450
  br label %while.cond, !dbg !451

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !452
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !453
  %cmp = icmp ult i64 %0, %1, !dbg !454
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !455

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !456
  %2 = load i16*, i16** %call, align 8, !dbg !456
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !456
  %4 = load i64, i64* %numWritten, align 8, !dbg !456
  %mul = mul i64 2, %4, !dbg !456
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !456
  %5 = load i8, i8* %arrayidx, align 1, !dbg !456
  %conv = sext i8 %5 to i32, !dbg !456
  %idxprom = sext i32 %conv to i64, !dbg !456
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !456
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !456
  %conv2 = zext i16 %6 to i32, !dbg !456
  %and = and i32 %conv2, 4096, !dbg !456
  %tobool = icmp ne i32 %and, 0, !dbg !456
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !457

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !458
  %7 = load i16*, i16** %call3, align 8, !dbg !458
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !458
  %9 = load i64, i64* %numWritten, align 8, !dbg !458
  %mul4 = mul i64 2, %9, !dbg !458
  %add = add i64 %mul4, 1, !dbg !458
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !458
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !458
  %conv6 = sext i8 %10 to i32, !dbg !458
  %idxprom7 = sext i32 %conv6 to i64, !dbg !458
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !458
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !458
  %conv9 = zext i16 %11 to i32, !dbg !458
  %and10 = and i32 %conv9, 4096, !dbg !458
  %tobool11 = icmp ne i32 %and10, 0, !dbg !457
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !459
  br i1 %12, label %while.body, label %while.end, !dbg !451

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !460, metadata !DIExpression()), !dbg !462
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !463
  %14 = load i64, i64* %numWritten, align 8, !dbg !464
  %mul12 = mul i64 2, %14, !dbg !465
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !463
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !466
  %15 = load i32, i32* %byte, align 4, !dbg !467
  %conv15 = trunc i32 %15 to i8, !dbg !468
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !469
  %17 = load i64, i64* %numWritten, align 8, !dbg !470
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !469
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !471
  %18 = load i64, i64* %numWritten, align 8, !dbg !472
  %inc = add i64 %18, 1, !dbg !472
  store i64 %inc, i64* %numWritten, align 8, !dbg !472
  br label %while.cond, !dbg !451, !llvm.loop !473

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !475
  ret i64 %19, !dbg !476
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !477 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !480, metadata !DIExpression()), !dbg !481
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !482, metadata !DIExpression()), !dbg !483
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !484, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !486, metadata !DIExpression()), !dbg !487
  store i64 0, i64* %numWritten, align 8, !dbg !487
  br label %while.cond, !dbg !488

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !489
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !490
  %cmp = icmp ult i64 %0, %1, !dbg !491
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !492

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !493
  %3 = load i64, i64* %numWritten, align 8, !dbg !494
  %mul = mul i64 2, %3, !dbg !495
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !493
  %4 = load i32, i32* %arrayidx, align 4, !dbg !493
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !496
  %tobool = icmp ne i32 %call, 0, !dbg !496
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !497

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !498
  %6 = load i64, i64* %numWritten, align 8, !dbg !499
  %mul1 = mul i64 2, %6, !dbg !500
  %add = add i64 %mul1, 1, !dbg !501
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !498
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !498
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !502
  %tobool4 = icmp ne i32 %call3, 0, !dbg !497
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !503
  br i1 %8, label %while.body, label %while.end, !dbg !488

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !504, metadata !DIExpression()), !dbg !506
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !507
  %10 = load i64, i64* %numWritten, align 8, !dbg !508
  %mul5 = mul i64 2, %10, !dbg !509
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !507
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !510
  %11 = load i32, i32* %byte, align 4, !dbg !511
  %conv = trunc i32 %11 to i8, !dbg !512
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !513
  %13 = load i64, i64* %numWritten, align 8, !dbg !514
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !513
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !515
  %14 = load i64, i64* %numWritten, align 8, !dbg !516
  %inc = add i64 %14, 1, !dbg !516
  store i64 %inc, i64* %numWritten, align 8, !dbg !516
  br label %while.cond, !dbg !488, !llvm.loop !517

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !519
  ret i64 %15, !dbg !520
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !521 {
entry:
  ret i32 1, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !525 {
entry:
  ret i32 0, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !527 {
entry:
  %call = call i32 @rand() #8, !dbg !528
  %rem = srem i32 %call, 2, !dbg !529
  ret i32 %rem, !dbg !530
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !565 {
entry:
  ret void, !dbg !566
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
!llvm.ident = !{!51, !51, !51}
!llvm.module.flags = !{!52, !53, !54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_422/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_64a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_422/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !50, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_64b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_422/source_code")
!50 = !{!41}
!51 = !{!"clang version 12.0.0"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_64_bad", scope: !45, file: !45, line: 29, type: !56, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !45, line: 31, type: !42)
!59 = !DILocation(line: 31, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !45, line: 32, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 32, column: 10, scope: !55)
!65 = !DILocation(line: 33, column: 12, scope: !55)
!66 = !DILocation(line: 33, column: 10, scope: !55)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 36, type: !69)
!68 = distinct !DILexicalBlock(scope: !55, file: !45, line: 34, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 36, column: 16, scope: !68)
!73 = !DILocation(line: 36, column: 33, scope: !68)
!74 = !DILocation(line: 36, column: 26, scope: !68)
!75 = !DILocation(line: 38, column: 17, scope: !76)
!76 = distinct !DILexicalBlock(scope: !68, file: !45, line: 38, column: 13)
!77 = !DILocation(line: 38, column: 16, scope: !76)
!78 = !DILocation(line: 38, column: 25, scope: !76)
!79 = !DILocation(line: 38, column: 13, scope: !68)
!80 = !DILocation(line: 41, column: 23, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !45, line: 41, column: 17)
!82 = distinct !DILexicalBlock(scope: !76, file: !45, line: 39, column: 9)
!83 = !DILocation(line: 41, column: 28, scope: !81)
!84 = !DILocation(line: 41, column: 27, scope: !81)
!85 = !DILocation(line: 41, column: 47, scope: !81)
!86 = !DILocation(line: 41, column: 46, scope: !81)
!87 = !DILocation(line: 41, column: 37, scope: !81)
!88 = !DILocation(line: 41, column: 57, scope: !81)
!89 = !DILocation(line: 41, column: 17, scope: !81)
!90 = !DILocation(line: 41, column: 64, scope: !81)
!91 = !DILocation(line: 41, column: 17, scope: !82)
!92 = !DILocation(line: 45, column: 34, scope: !93)
!93 = distinct !DILexicalBlock(scope: !81, file: !45, line: 42, column: 13)
!94 = !DILocation(line: 45, column: 27, scope: !93)
!95 = !DILocation(line: 45, column: 25, scope: !93)
!96 = !DILocation(line: 46, column: 21, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !45, line: 46, column: 21)
!98 = !DILocation(line: 46, column: 29, scope: !97)
!99 = !DILocation(line: 46, column: 33, scope: !97)
!100 = !DILocation(line: 46, column: 36, scope: !97)
!101 = !DILocation(line: 46, column: 41, scope: !97)
!102 = !DILocation(line: 46, column: 48, scope: !97)
!103 = !DILocation(line: 46, column: 52, scope: !97)
!104 = !DILocation(line: 46, column: 21, scope: !93)
!105 = !DILocation(line: 48, column: 21, scope: !106)
!106 = distinct !DILexicalBlock(scope: !97, file: !45, line: 47, column: 17)
!107 = !DILocation(line: 48, column: 26, scope: !106)
!108 = !DILocation(line: 48, column: 33, scope: !106)
!109 = !DILocation(line: 48, column: 37, scope: !106)
!110 = !DILocation(line: 49, column: 17, scope: !106)
!111 = !DILocation(line: 50, column: 13, scope: !93)
!112 = !DILocation(line: 53, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !81, file: !45, line: 52, column: 13)
!114 = !DILocation(line: 55, column: 17, scope: !113)
!115 = !DILocation(line: 55, column: 22, scope: !113)
!116 = !DILocation(line: 55, column: 31, scope: !113)
!117 = !DILocation(line: 57, column: 9, scope: !82)
!118 = !DILocation(line: 59, column: 73, scope: !55)
!119 = !DILocation(line: 59, column: 5, scope: !55)
!120 = !DILocation(line: 60, column: 1, scope: !55)
!121 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 68, type: !56, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!122 = !DILocalVariable(name: "data", scope: !121, file: !45, line: 70, type: !42)
!123 = !DILocation(line: 70, column: 12, scope: !121)
!124 = !DILocalVariable(name: "dataBuffer", scope: !121, file: !45, line: 71, type: !61)
!125 = !DILocation(line: 71, column: 10, scope: !121)
!126 = !DILocation(line: 72, column: 12, scope: !121)
!127 = !DILocation(line: 72, column: 10, scope: !121)
!128 = !DILocation(line: 74, column: 12, scope: !121)
!129 = !DILocation(line: 74, column: 5, scope: !121)
!130 = !DILocation(line: 75, column: 77, scope: !121)
!131 = !DILocation(line: 75, column: 5, scope: !121)
!132 = !DILocation(line: 76, column: 1, scope: !121)
!133 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 80, type: !56, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!134 = !DILocalVariable(name: "data", scope: !133, file: !45, line: 82, type: !42)
!135 = !DILocation(line: 82, column: 12, scope: !133)
!136 = !DILocalVariable(name: "dataBuffer", scope: !133, file: !45, line: 83, type: !61)
!137 = !DILocation(line: 83, column: 10, scope: !133)
!138 = !DILocation(line: 84, column: 12, scope: !133)
!139 = !DILocation(line: 84, column: 10, scope: !133)
!140 = !DILocalVariable(name: "dataLen", scope: !141, file: !45, line: 87, type: !69)
!141 = distinct !DILexicalBlock(scope: !133, file: !45, line: 85, column: 5)
!142 = !DILocation(line: 87, column: 16, scope: !141)
!143 = !DILocation(line: 87, column: 33, scope: !141)
!144 = !DILocation(line: 87, column: 26, scope: !141)
!145 = !DILocation(line: 89, column: 17, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !45, line: 89, column: 13)
!147 = !DILocation(line: 89, column: 16, scope: !146)
!148 = !DILocation(line: 89, column: 25, scope: !146)
!149 = !DILocation(line: 89, column: 13, scope: !141)
!150 = !DILocation(line: 92, column: 23, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !45, line: 92, column: 17)
!152 = distinct !DILexicalBlock(scope: !146, file: !45, line: 90, column: 9)
!153 = !DILocation(line: 92, column: 28, scope: !151)
!154 = !DILocation(line: 92, column: 27, scope: !151)
!155 = !DILocation(line: 92, column: 47, scope: !151)
!156 = !DILocation(line: 92, column: 46, scope: !151)
!157 = !DILocation(line: 92, column: 37, scope: !151)
!158 = !DILocation(line: 92, column: 57, scope: !151)
!159 = !DILocation(line: 92, column: 17, scope: !151)
!160 = !DILocation(line: 92, column: 64, scope: !151)
!161 = !DILocation(line: 92, column: 17, scope: !152)
!162 = !DILocation(line: 96, column: 34, scope: !163)
!163 = distinct !DILexicalBlock(scope: !151, file: !45, line: 93, column: 13)
!164 = !DILocation(line: 96, column: 27, scope: !163)
!165 = !DILocation(line: 96, column: 25, scope: !163)
!166 = !DILocation(line: 97, column: 21, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !45, line: 97, column: 21)
!168 = !DILocation(line: 97, column: 29, scope: !167)
!169 = !DILocation(line: 97, column: 33, scope: !167)
!170 = !DILocation(line: 97, column: 36, scope: !167)
!171 = !DILocation(line: 97, column: 41, scope: !167)
!172 = !DILocation(line: 97, column: 48, scope: !167)
!173 = !DILocation(line: 97, column: 52, scope: !167)
!174 = !DILocation(line: 97, column: 21, scope: !163)
!175 = !DILocation(line: 99, column: 21, scope: !176)
!176 = distinct !DILexicalBlock(scope: !167, file: !45, line: 98, column: 17)
!177 = !DILocation(line: 99, column: 26, scope: !176)
!178 = !DILocation(line: 99, column: 33, scope: !176)
!179 = !DILocation(line: 99, column: 37, scope: !176)
!180 = !DILocation(line: 100, column: 17, scope: !176)
!181 = !DILocation(line: 101, column: 13, scope: !163)
!182 = !DILocation(line: 104, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !151, file: !45, line: 103, column: 13)
!184 = !DILocation(line: 106, column: 17, scope: !183)
!185 = !DILocation(line: 106, column: 22, scope: !183)
!186 = !DILocation(line: 106, column: 31, scope: !183)
!187 = !DILocation(line: 108, column: 9, scope: !152)
!188 = !DILocation(line: 110, column: 77, scope: !133)
!189 = !DILocation(line: 110, column: 5, scope: !133)
!190 = !DILocation(line: 111, column: 1, scope: !133)
!191 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_64_good", scope: !45, file: !45, line: 113, type: !56, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!192 = !DILocation(line: 115, column: 5, scope: !191)
!193 = !DILocation(line: 116, column: 5, scope: !191)
!194 = !DILocation(line: 117, column: 1, scope: !191)
!195 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_64b_badSink", scope: !49, file: !49, line: 26, type: !196, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !22}
!198 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !195, file: !49, line: 26, type: !22)
!199 = !DILocation(line: 26, column: 81, scope: !195)
!200 = !DILocalVariable(name: "dataPtr", scope: !195, file: !49, line: 29, type: !41)
!201 = !DILocation(line: 29, column: 14, scope: !195)
!202 = !DILocation(line: 29, column: 34, scope: !195)
!203 = !DILocation(line: 29, column: 24, scope: !195)
!204 = !DILocalVariable(name: "data", scope: !195, file: !49, line: 31, type: !42)
!205 = !DILocation(line: 31, column: 12, scope: !195)
!206 = !DILocation(line: 31, column: 21, scope: !195)
!207 = !DILocation(line: 31, column: 20, scope: !195)
!208 = !DILocation(line: 33, column: 13, scope: !195)
!209 = !DILocation(line: 33, column: 21, scope: !195)
!210 = !DILocation(line: 33, column: 5, scope: !195)
!211 = !DILocation(line: 34, column: 1, scope: !195)
!212 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_64b_goodG2BSink", scope: !49, file: !49, line: 41, type: !196, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!213 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !212, file: !49, line: 41, type: !22)
!214 = !DILocation(line: 41, column: 85, scope: !212)
!215 = !DILocalVariable(name: "dataPtr", scope: !212, file: !49, line: 44, type: !41)
!216 = !DILocation(line: 44, column: 14, scope: !212)
!217 = !DILocation(line: 44, column: 34, scope: !212)
!218 = !DILocation(line: 44, column: 24, scope: !212)
!219 = !DILocalVariable(name: "data", scope: !212, file: !49, line: 46, type: !42)
!220 = !DILocation(line: 46, column: 12, scope: !212)
!221 = !DILocation(line: 46, column: 21, scope: !212)
!222 = !DILocation(line: 46, column: 20, scope: !212)
!223 = !DILocation(line: 48, column: 13, scope: !212)
!224 = !DILocation(line: 48, column: 21, scope: !212)
!225 = !DILocation(line: 48, column: 5, scope: !212)
!226 = !DILocation(line: 49, column: 1, scope: !212)
!227 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_64b_goodB2GSink", scope: !49, file: !49, line: 52, type: !196, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!228 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !227, file: !49, line: 52, type: !22)
!229 = !DILocation(line: 52, column: 85, scope: !227)
!230 = !DILocalVariable(name: "dataPtr", scope: !227, file: !49, line: 55, type: !41)
!231 = !DILocation(line: 55, column: 14, scope: !227)
!232 = !DILocation(line: 55, column: 34, scope: !227)
!233 = !DILocation(line: 55, column: 24, scope: !227)
!234 = !DILocalVariable(name: "data", scope: !227, file: !49, line: 57, type: !42)
!235 = !DILocation(line: 57, column: 12, scope: !227)
!236 = !DILocation(line: 57, column: 21, scope: !227)
!237 = !DILocation(line: 57, column: 20, scope: !227)
!238 = !DILocation(line: 59, column: 13, scope: !227)
!239 = !DILocation(line: 59, column: 29, scope: !227)
!240 = !DILocation(line: 59, column: 5, scope: !227)
!241 = !DILocation(line: 60, column: 1, scope: !227)
!242 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !243, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !42}
!245 = !DILocalVariable(name: "line", arg: 1, scope: !242, file: !3, line: 11, type: !42)
!246 = !DILocation(line: 11, column: 25, scope: !242)
!247 = !DILocation(line: 13, column: 1, scope: !242)
!248 = !DILocation(line: 14, column: 8, scope: !249)
!249 = distinct !DILexicalBlock(scope: !242, file: !3, line: 14, column: 8)
!250 = !DILocation(line: 14, column: 13, scope: !249)
!251 = !DILocation(line: 14, column: 8, scope: !242)
!252 = !DILocation(line: 16, column: 24, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !3, line: 15, column: 5)
!254 = !DILocation(line: 16, column: 9, scope: !253)
!255 = !DILocation(line: 17, column: 5, scope: !253)
!256 = !DILocation(line: 18, column: 5, scope: !242)
!257 = !DILocation(line: 19, column: 1, scope: !242)
!258 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !243, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!259 = !DILocalVariable(name: "line", arg: 1, scope: !258, file: !3, line: 20, type: !42)
!260 = !DILocation(line: 20, column: 29, scope: !258)
!261 = !DILocation(line: 22, column: 8, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !3, line: 22, column: 8)
!263 = !DILocation(line: 22, column: 13, scope: !262)
!264 = !DILocation(line: 22, column: 8, scope: !258)
!265 = !DILocation(line: 24, column: 24, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 23, column: 5)
!267 = !DILocation(line: 24, column: 9, scope: !266)
!268 = !DILocation(line: 25, column: 5, scope: !266)
!269 = !DILocation(line: 26, column: 1, scope: !258)
!270 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !271, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !23)
!275 = !DILocalVariable(name: "line", arg: 1, scope: !270, file: !3, line: 27, type: !273)
!276 = !DILocation(line: 27, column: 29, scope: !270)
!277 = !DILocation(line: 29, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !270, file: !3, line: 29, column: 8)
!279 = !DILocation(line: 29, column: 13, scope: !278)
!280 = !DILocation(line: 29, column: 8, scope: !270)
!281 = !DILocation(line: 31, column: 27, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !3, line: 30, column: 5)
!283 = !DILocation(line: 31, column: 9, scope: !282)
!284 = !DILocation(line: 32, column: 5, scope: !282)
!285 = !DILocation(line: 33, column: 1, scope: !270)
!286 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !287, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !23}
!289 = !DILocalVariable(name: "intNumber", arg: 1, scope: !286, file: !3, line: 35, type: !23)
!290 = !DILocation(line: 35, column: 24, scope: !286)
!291 = !DILocation(line: 37, column: 20, scope: !286)
!292 = !DILocation(line: 37, column: 5, scope: !286)
!293 = !DILocation(line: 38, column: 1, scope: !286)
!294 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !295, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !297}
!297 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!298 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !294, file: !3, line: 40, type: !297)
!299 = !DILocation(line: 40, column: 28, scope: !294)
!300 = !DILocation(line: 42, column: 21, scope: !294)
!301 = !DILocation(line: 42, column: 5, scope: !294)
!302 = !DILocation(line: 43, column: 1, scope: !294)
!303 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !304, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !306}
!306 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!307 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !303, file: !3, line: 45, type: !306)
!308 = !DILocation(line: 45, column: 28, scope: !303)
!309 = !DILocation(line: 47, column: 20, scope: !303)
!310 = !DILocation(line: 47, column: 5, scope: !303)
!311 = !DILocation(line: 48, column: 1, scope: !303)
!312 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !313, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !315}
!315 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!316 = !DILocalVariable(name: "longNumber", arg: 1, scope: !312, file: !3, line: 50, type: !315)
!317 = !DILocation(line: 50, column: 26, scope: !312)
!318 = !DILocation(line: 52, column: 21, scope: !312)
!319 = !DILocation(line: 52, column: 5, scope: !312)
!320 = !DILocation(line: 53, column: 1, scope: !312)
!321 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !322, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !324}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !325, line: 27, baseType: !326)
!325 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !327, line: 44, baseType: !315)
!327 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!328 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !321, file: !3, line: 55, type: !324)
!329 = !DILocation(line: 55, column: 33, scope: !321)
!330 = !DILocation(line: 57, column: 29, scope: !321)
!331 = !DILocation(line: 57, column: 5, scope: !321)
!332 = !DILocation(line: 58, column: 1, scope: !321)
!333 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !334, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !69}
!336 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !333, file: !3, line: 60, type: !69)
!337 = !DILocation(line: 60, column: 29, scope: !333)
!338 = !DILocation(line: 62, column: 21, scope: !333)
!339 = !DILocation(line: 62, column: 5, scope: !333)
!340 = !DILocation(line: 63, column: 1, scope: !333)
!341 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !342, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !43}
!344 = !DILocalVariable(name: "charHex", arg: 1, scope: !341, file: !3, line: 65, type: !43)
!345 = !DILocation(line: 65, column: 29, scope: !341)
!346 = !DILocation(line: 67, column: 22, scope: !341)
!347 = !DILocation(line: 67, column: 5, scope: !341)
!348 = !DILocation(line: 68, column: 1, scope: !341)
!349 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !350, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !274}
!352 = !DILocalVariable(name: "wideChar", arg: 1, scope: !349, file: !3, line: 70, type: !274)
!353 = !DILocation(line: 70, column: 29, scope: !349)
!354 = !DILocalVariable(name: "s", scope: !349, file: !3, line: 74, type: !355)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 64, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 2)
!358 = !DILocation(line: 74, column: 13, scope: !349)
!359 = !DILocation(line: 75, column: 16, scope: !349)
!360 = !DILocation(line: 75, column: 9, scope: !349)
!361 = !DILocation(line: 75, column: 14, scope: !349)
!362 = !DILocation(line: 76, column: 9, scope: !349)
!363 = !DILocation(line: 76, column: 14, scope: !349)
!364 = !DILocation(line: 77, column: 21, scope: !349)
!365 = !DILocation(line: 77, column: 5, scope: !349)
!366 = !DILocation(line: 78, column: 1, scope: !349)
!367 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !368, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !7}
!370 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !367, file: !3, line: 80, type: !7)
!371 = !DILocation(line: 80, column: 33, scope: !367)
!372 = !DILocation(line: 82, column: 20, scope: !367)
!373 = !DILocation(line: 82, column: 5, scope: !367)
!374 = !DILocation(line: 83, column: 1, scope: !367)
!375 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !376, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !25}
!378 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !375, file: !3, line: 85, type: !25)
!379 = !DILocation(line: 85, column: 45, scope: !375)
!380 = !DILocation(line: 87, column: 22, scope: !375)
!381 = !DILocation(line: 87, column: 5, scope: !375)
!382 = !DILocation(line: 88, column: 1, scope: !375)
!383 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !384, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386}
!386 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!387 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !383, file: !3, line: 90, type: !386)
!388 = !DILocation(line: 90, column: 29, scope: !383)
!389 = !DILocation(line: 92, column: 20, scope: !383)
!390 = !DILocation(line: 92, column: 5, scope: !383)
!391 = !DILocation(line: 93, column: 1, scope: !383)
!392 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !393, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !395}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !397, line: 100, baseType: !398)
!397 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_422/source_code")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !397, line: 96, size: 64, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !398, file: !397, line: 98, baseType: !23, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !398, file: !397, line: 99, baseType: !23, size: 32, offset: 32)
!402 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !392, file: !3, line: 95, type: !395)
!403 = !DILocation(line: 95, column: 40, scope: !392)
!404 = !DILocation(line: 97, column: 26, scope: !392)
!405 = !DILocation(line: 97, column: 47, scope: !392)
!406 = !DILocation(line: 97, column: 55, scope: !392)
!407 = !DILocation(line: 97, column: 76, scope: !392)
!408 = !DILocation(line: 97, column: 5, scope: !392)
!409 = !DILocation(line: 98, column: 1, scope: !392)
!410 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !411, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413, !69}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!414 = !DILocalVariable(name: "bytes", arg: 1, scope: !410, file: !3, line: 100, type: !413)
!415 = !DILocation(line: 100, column: 38, scope: !410)
!416 = !DILocalVariable(name: "numBytes", arg: 2, scope: !410, file: !3, line: 100, type: !69)
!417 = !DILocation(line: 100, column: 52, scope: !410)
!418 = !DILocalVariable(name: "i", scope: !410, file: !3, line: 102, type: !69)
!419 = !DILocation(line: 102, column: 12, scope: !410)
!420 = !DILocation(line: 103, column: 12, scope: !421)
!421 = distinct !DILexicalBlock(scope: !410, file: !3, line: 103, column: 5)
!422 = !DILocation(line: 103, column: 10, scope: !421)
!423 = !DILocation(line: 103, column: 17, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !3, line: 103, column: 5)
!425 = !DILocation(line: 103, column: 21, scope: !424)
!426 = !DILocation(line: 103, column: 19, scope: !424)
!427 = !DILocation(line: 103, column: 5, scope: !421)
!428 = !DILocation(line: 105, column: 24, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !3, line: 104, column: 5)
!430 = !DILocation(line: 105, column: 30, scope: !429)
!431 = !DILocation(line: 105, column: 9, scope: !429)
!432 = !DILocation(line: 106, column: 5, scope: !429)
!433 = !DILocation(line: 103, column: 31, scope: !424)
!434 = !DILocation(line: 103, column: 5, scope: !424)
!435 = distinct !{!435, !427, !436, !437}
!436 = !DILocation(line: 106, column: 5, scope: !421)
!437 = !{!"llvm.loop.mustprogress"}
!438 = !DILocation(line: 107, column: 5, scope: !410)
!439 = !DILocation(line: 108, column: 1, scope: !410)
!440 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !441, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!441 = !DISubroutineType(types: !442)
!442 = !{!69, !413, !69, !42}
!443 = !DILocalVariable(name: "bytes", arg: 1, scope: !440, file: !3, line: 113, type: !413)
!444 = !DILocation(line: 113, column: 39, scope: !440)
!445 = !DILocalVariable(name: "numBytes", arg: 2, scope: !440, file: !3, line: 113, type: !69)
!446 = !DILocation(line: 113, column: 53, scope: !440)
!447 = !DILocalVariable(name: "hex", arg: 3, scope: !440, file: !3, line: 113, type: !42)
!448 = !DILocation(line: 113, column: 71, scope: !440)
!449 = !DILocalVariable(name: "numWritten", scope: !440, file: !3, line: 115, type: !69)
!450 = !DILocation(line: 115, column: 12, scope: !440)
!451 = !DILocation(line: 121, column: 5, scope: !440)
!452 = !DILocation(line: 121, column: 12, scope: !440)
!453 = !DILocation(line: 121, column: 25, scope: !440)
!454 = !DILocation(line: 121, column: 23, scope: !440)
!455 = !DILocation(line: 121, column: 34, scope: !440)
!456 = !DILocation(line: 121, column: 37, scope: !440)
!457 = !DILocation(line: 121, column: 67, scope: !440)
!458 = !DILocation(line: 121, column: 70, scope: !440)
!459 = !DILocation(line: 0, scope: !440)
!460 = !DILocalVariable(name: "byte", scope: !461, file: !3, line: 123, type: !23)
!461 = distinct !DILexicalBlock(scope: !440, file: !3, line: 122, column: 5)
!462 = !DILocation(line: 123, column: 13, scope: !461)
!463 = !DILocation(line: 124, column: 17, scope: !461)
!464 = !DILocation(line: 124, column: 25, scope: !461)
!465 = !DILocation(line: 124, column: 23, scope: !461)
!466 = !DILocation(line: 124, column: 9, scope: !461)
!467 = !DILocation(line: 125, column: 45, scope: !461)
!468 = !DILocation(line: 125, column: 29, scope: !461)
!469 = !DILocation(line: 125, column: 9, scope: !461)
!470 = !DILocation(line: 125, column: 15, scope: !461)
!471 = !DILocation(line: 125, column: 27, scope: !461)
!472 = !DILocation(line: 126, column: 9, scope: !461)
!473 = distinct !{!473, !451, !474, !437}
!474 = !DILocation(line: 127, column: 5, scope: !440)
!475 = !DILocation(line: 129, column: 12, scope: !440)
!476 = !DILocation(line: 129, column: 5, scope: !440)
!477 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !478, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!478 = !DISubroutineType(types: !479)
!479 = !{!69, !413, !69, !273}
!480 = !DILocalVariable(name: "bytes", arg: 1, scope: !477, file: !3, line: 135, type: !413)
!481 = !DILocation(line: 135, column: 41, scope: !477)
!482 = !DILocalVariable(name: "numBytes", arg: 2, scope: !477, file: !3, line: 135, type: !69)
!483 = !DILocation(line: 135, column: 55, scope: !477)
!484 = !DILocalVariable(name: "hex", arg: 3, scope: !477, file: !3, line: 135, type: !273)
!485 = !DILocation(line: 135, column: 76, scope: !477)
!486 = !DILocalVariable(name: "numWritten", scope: !477, file: !3, line: 137, type: !69)
!487 = !DILocation(line: 137, column: 12, scope: !477)
!488 = !DILocation(line: 143, column: 5, scope: !477)
!489 = !DILocation(line: 143, column: 12, scope: !477)
!490 = !DILocation(line: 143, column: 25, scope: !477)
!491 = !DILocation(line: 143, column: 23, scope: !477)
!492 = !DILocation(line: 143, column: 34, scope: !477)
!493 = !DILocation(line: 143, column: 47, scope: !477)
!494 = !DILocation(line: 143, column: 55, scope: !477)
!495 = !DILocation(line: 143, column: 53, scope: !477)
!496 = !DILocation(line: 143, column: 37, scope: !477)
!497 = !DILocation(line: 143, column: 68, scope: !477)
!498 = !DILocation(line: 143, column: 81, scope: !477)
!499 = !DILocation(line: 143, column: 89, scope: !477)
!500 = !DILocation(line: 143, column: 87, scope: !477)
!501 = !DILocation(line: 143, column: 100, scope: !477)
!502 = !DILocation(line: 143, column: 71, scope: !477)
!503 = !DILocation(line: 0, scope: !477)
!504 = !DILocalVariable(name: "byte", scope: !505, file: !3, line: 145, type: !23)
!505 = distinct !DILexicalBlock(scope: !477, file: !3, line: 144, column: 5)
!506 = !DILocation(line: 145, column: 13, scope: !505)
!507 = !DILocation(line: 146, column: 18, scope: !505)
!508 = !DILocation(line: 146, column: 26, scope: !505)
!509 = !DILocation(line: 146, column: 24, scope: !505)
!510 = !DILocation(line: 146, column: 9, scope: !505)
!511 = !DILocation(line: 147, column: 45, scope: !505)
!512 = !DILocation(line: 147, column: 29, scope: !505)
!513 = !DILocation(line: 147, column: 9, scope: !505)
!514 = !DILocation(line: 147, column: 15, scope: !505)
!515 = !DILocation(line: 147, column: 27, scope: !505)
!516 = !DILocation(line: 148, column: 9, scope: !505)
!517 = distinct !{!517, !488, !518, !437}
!518 = !DILocation(line: 149, column: 5, scope: !477)
!519 = !DILocation(line: 151, column: 12, scope: !477)
!520 = !DILocation(line: 151, column: 5, scope: !477)
!521 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !522, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DISubroutineType(types: !523)
!523 = !{!23}
!524 = !DILocation(line: 158, column: 5, scope: !521)
!525 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !522, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 163, column: 5, scope: !525)
!527 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !522, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 168, column: 13, scope: !527)
!529 = !DILocation(line: 168, column: 20, scope: !527)
!530 = !DILocation(line: 168, column: 5, scope: !527)
!531 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 187, column: 16, scope: !531)
!533 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 188, column: 16, scope: !533)
!535 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 189, column: 16, scope: !535)
!537 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 190, column: 16, scope: !537)
!539 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 191, column: 16, scope: !539)
!541 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 192, column: 16, scope: !541)
!543 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 193, column: 16, scope: !543)
!545 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 194, column: 16, scope: !545)
!547 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 195, column: 16, scope: !547)
!549 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 198, column: 15, scope: !549)
!551 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 199, column: 15, scope: !551)
!553 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 200, column: 15, scope: !553)
!555 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 201, column: 15, scope: !555)
!557 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 202, column: 15, scope: !557)
!559 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 203, column: 15, scope: !559)
!561 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 204, column: 15, scope: !561)
!563 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 205, column: 15, scope: !563)
!565 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 206, column: 15, scope: !565)
