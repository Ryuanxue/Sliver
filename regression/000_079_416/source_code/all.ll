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
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.16 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13.18 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16.19 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52_bad() #0 !dbg !56 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !61, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !68, metadata !DIExpression()), !dbg !73
  %1 = load i8*, i8** %data, align 8, !dbg !74
  %call = call i64 @strlen(i8* %1) #7, !dbg !75
  store i64 %call, i64* %dataLen, align 8, !dbg !73
  %2 = load i64, i64* %dataLen, align 8, !dbg !76
  %sub = sub i64 100, %2, !dbg !78
  %cmp = icmp ugt i64 %sub, 1, !dbg !79
  br i1 %cmp, label %if.then, label %if.end18, !dbg !80

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !81
  %4 = load i64, i64* %dataLen, align 8, !dbg !84
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !85
  %5 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub1 = sub i64 100, %5, !dbg !87
  %conv = trunc i64 %sub1 to i32, !dbg !88
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !89
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !90
  %cmp3 = icmp ne i8* %call2, null, !dbg !91
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !92

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !93
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !95
  store i64 %call6, i64* %dataLen, align 8, !dbg !96
  %8 = load i64, i64* %dataLen, align 8, !dbg !97
  %cmp7 = icmp ugt i64 %8, 0, !dbg !99
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !100

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !101
  %10 = load i64, i64* %dataLen, align 8, !dbg !102
  %sub9 = sub i64 %10, 1, !dbg !103
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !101
  %11 = load i8, i8* %arrayidx, align 1, !dbg !101
  %conv10 = sext i8 %11 to i32, !dbg !101
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !104
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !105

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !106
  %13 = load i64, i64* %dataLen, align 8, !dbg !108
  %sub14 = sub i64 %13, 1, !dbg !109
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !106
  store i8 0, i8* %arrayidx15, align 1, !dbg !110
  br label %if.end, !dbg !111

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !112

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !113
  %14 = load i8*, i8** %data, align 8, !dbg !115
  %15 = load i64, i64* %dataLen, align 8, !dbg !116
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !115
  store i8 0, i8* %arrayidx16, align 1, !dbg !117
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !118

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !119
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_badSink(i8* %16), !dbg !120
  ret void, !dbg !121
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !122 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !125, metadata !DIExpression()), !dbg !126
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !126
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !126
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !127
  store i8* %arraydecay, i8** %data, align 8, !dbg !128
  %1 = load i8*, i8** %data, align 8, !dbg !129
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !130
  %2 = load i8*, i8** %data, align 8, !dbg !131
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_goodG2BSink(i8* %2), !dbg !132
  ret void, !dbg !133
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !134 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !137, metadata !DIExpression()), !dbg !138
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !138
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !138
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !139
  store i8* %arraydecay, i8** %data, align 8, !dbg !140
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !141, metadata !DIExpression()), !dbg !143
  %1 = load i8*, i8** %data, align 8, !dbg !144
  %call = call i64 @strlen(i8* %1) #7, !dbg !145
  store i64 %call, i64* %dataLen, align 8, !dbg !143
  %2 = load i64, i64* %dataLen, align 8, !dbg !146
  %sub = sub i64 100, %2, !dbg !148
  %cmp = icmp ugt i64 %sub, 1, !dbg !149
  br i1 %cmp, label %if.then, label %if.end18, !dbg !150

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !151
  %4 = load i64, i64* %dataLen, align 8, !dbg !154
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !155
  %5 = load i64, i64* %dataLen, align 8, !dbg !156
  %sub1 = sub i64 100, %5, !dbg !157
  %conv = trunc i64 %sub1 to i32, !dbg !158
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !159
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !160
  %cmp3 = icmp ne i8* %call2, null, !dbg !161
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !162

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !163
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !165
  store i64 %call6, i64* %dataLen, align 8, !dbg !166
  %8 = load i64, i64* %dataLen, align 8, !dbg !167
  %cmp7 = icmp ugt i64 %8, 0, !dbg !169
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !170

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !171
  %10 = load i64, i64* %dataLen, align 8, !dbg !172
  %sub9 = sub i64 %10, 1, !dbg !173
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !171
  %11 = load i8, i8* %arrayidx, align 1, !dbg !171
  %conv10 = sext i8 %11 to i32, !dbg !171
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !174
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !175

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !176
  %13 = load i64, i64* %dataLen, align 8, !dbg !178
  %sub14 = sub i64 %13, 1, !dbg !179
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !176
  store i8 0, i8* %arrayidx15, align 1, !dbg !180
  br label %if.end, !dbg !181

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !182

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !183
  %14 = load i8*, i8** %data, align 8, !dbg !185
  %15 = load i64, i64* %dataLen, align 8, !dbg !186
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !185
  store i8 0, i8* %arrayidx16, align 1, !dbg !187
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !188

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !189
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_goodB2GSink(i8* %16), !dbg !190
  ret void, !dbg !191
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52_good() #0 !dbg !192 {
entry:
  call void @goodG2B(), !dbg !193
  call void @goodB2G(), !dbg !194
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_badSink(i8* %data) #0 !dbg !196 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !199, metadata !DIExpression()), !dbg !200
  %0 = load i8*, i8** %data.addr, align 8, !dbg !201
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52c_badSink(i8* %0), !dbg !202
  ret void, !dbg !203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_goodG2BSink(i8* %data) #0 !dbg !204 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = load i8*, i8** %data.addr, align 8, !dbg !207
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52c_goodG2BSink(i8* %0), !dbg !208
  ret void, !dbg !209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_goodB2GSink(i8* %data) #0 !dbg !210 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !211, metadata !DIExpression()), !dbg !212
  %0 = load i8*, i8** %data.addr, align 8, !dbg !213
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52c_goodB2GSink(i8* %0), !dbg !214
  ret void, !dbg !215
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52c_badSink(i8* %data) #0 !dbg !216 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !217, metadata !DIExpression()), !dbg !218
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !219
  %1 = load i8*, i8** %data.addr, align 8, !dbg !220
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !221
  ret void, !dbg !222
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52c_goodG2BSink(i8* %data) #0 !dbg !223 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !224, metadata !DIExpression()), !dbg !225
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !226
  %1 = load i8*, i8** %data.addr, align 8, !dbg !227
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !228
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_52c_goodB2GSink(i8* %data) #0 !dbg !230 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !231, metadata !DIExpression()), !dbg !232
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !233
  %1 = load i8*, i8** %data.addr, align 8, !dbg !234
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %1), !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !237 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !238, metadata !DIExpression()), !dbg !239
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)), !dbg !240
  %0 = load i8*, i8** %line.addr, align 8, !dbg !241
  %cmp = icmp ne i8* %0, null, !dbg !243
  br i1 %cmp, label %if.then, label %if.end, !dbg !244

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !245
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.17, i64 0, i64 0), i8* %1), !dbg !247
  br label %if.end, !dbg !248

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !249
  ret void, !dbg !250
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !251 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = load i8*, i8** %line.addr, align 8, !dbg !254
  %cmp = icmp ne i8* %0, null, !dbg !256
  br i1 %cmp, label %if.then, label %if.end, !dbg !257

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !258
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.17, i64 0, i64 0), i8* %1), !dbg !260
  br label %if.end, !dbg !261

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !262
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !263 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = load i32*, i32** %line.addr, align 8, !dbg !270
  %cmp = icmp ne i32* %0, null, !dbg !272
  br i1 %cmp, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !274
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !276
  br label %if.end, !dbg !277

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !278
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !279 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !282, metadata !DIExpression()), !dbg !283
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !284
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !285
  ret void, !dbg !286
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !287 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !293
  %conv = sext i16 %0 to i32, !dbg !293
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !294
  ret void, !dbg !295
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !296 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !302
  %conv = fpext float %0 to double, !dbg !302
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !303
  ret void, !dbg !304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !305 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !311
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !314 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !323
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !324
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !326 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !331
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !332
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !334 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !339
  %conv = sext i8 %0 to i32, !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !342 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !347, metadata !DIExpression()), !dbg !351
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !352
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !353
  store i32 %0, i32* %arrayidx, align 4, !dbg !354
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !355
  store i32 0, i32* %arrayidx1, align 4, !dbg !356
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !357
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !358
  ret void, !dbg !359
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !360 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !368 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !373
  %conv = zext i8 %0 to i32, !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !374
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !376 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !382
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !383
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !385 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !397
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !398
  %1 = load i32, i32* %intOne, align 4, !dbg !398
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !399
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !400
  %3 = load i32, i32* %intTwo, align 4, !dbg !400
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13.18, i64 0, i64 0), i32 %1, i32 %3), !dbg !401
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !403 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !407, metadata !DIExpression()), !dbg !408
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !409, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata i64* %i, metadata !411, metadata !DIExpression()), !dbg !412
  store i64 0, i64* %i, align 8, !dbg !413
  br label %for.cond, !dbg !415

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !416
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !418
  %cmp = icmp ult i64 %0, %1, !dbg !419
  br i1 %cmp, label %for.body, label %for.end, !dbg !420

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !421
  %3 = load i64, i64* %i, align 8, !dbg !423
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !421
  %4 = load i8, i8* %arrayidx, align 1, !dbg !421
  %conv = zext i8 %4 to i32, !dbg !421
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !424
  br label %for.inc, !dbg !425

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !426
  %inc = add i64 %5, 1, !dbg !426
  store i64 %inc, i64* %i, align 8, !dbg !426
  br label %for.cond, !dbg !427, !llvm.loop !428

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !431
  ret void, !dbg !432
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !433 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !436, metadata !DIExpression()), !dbg !437
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !438, metadata !DIExpression()), !dbg !439
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !440, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !442, metadata !DIExpression()), !dbg !443
  store i64 0, i64* %numWritten, align 8, !dbg !443
  br label %while.cond, !dbg !444

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !445
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !446
  %cmp = icmp ult i64 %0, %1, !dbg !447
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !448

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !449
  %2 = load i16*, i16** %call, align 8, !dbg !449
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !449
  %4 = load i64, i64* %numWritten, align 8, !dbg !449
  %mul = mul i64 2, %4, !dbg !449
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !449
  %5 = load i8, i8* %arrayidx, align 1, !dbg !449
  %conv = sext i8 %5 to i32, !dbg !449
  %idxprom = sext i32 %conv to i64, !dbg !449
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !449
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !449
  %conv2 = zext i16 %6 to i32, !dbg !449
  %and = and i32 %conv2, 4096, !dbg !449
  %tobool = icmp ne i32 %and, 0, !dbg !449
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !450

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !451
  %7 = load i16*, i16** %call3, align 8, !dbg !451
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !451
  %9 = load i64, i64* %numWritten, align 8, !dbg !451
  %mul4 = mul i64 2, %9, !dbg !451
  %add = add i64 %mul4, 1, !dbg !451
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !451
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !451
  %conv6 = sext i8 %10 to i32, !dbg !451
  %idxprom7 = sext i32 %conv6 to i64, !dbg !451
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !451
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !451
  %conv9 = zext i16 %11 to i32, !dbg !451
  %and10 = and i32 %conv9, 4096, !dbg !451
  %tobool11 = icmp ne i32 %and10, 0, !dbg !450
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !452
  br i1 %12, label %while.body, label %while.end, !dbg !444

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !453, metadata !DIExpression()), !dbg !455
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !456
  %14 = load i64, i64* %numWritten, align 8, !dbg !457
  %mul12 = mul i64 2, %14, !dbg !458
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !456
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !459
  %15 = load i32, i32* %byte, align 4, !dbg !460
  %conv15 = trunc i32 %15 to i8, !dbg !461
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !462
  %17 = load i64, i64* %numWritten, align 8, !dbg !463
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !462
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !464
  %18 = load i64, i64* %numWritten, align 8, !dbg !465
  %inc = add i64 %18, 1, !dbg !465
  store i64 %inc, i64* %numWritten, align 8, !dbg !465
  br label %while.cond, !dbg !444, !llvm.loop !466

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !468
  ret i64 %19, !dbg !469
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !470 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !473, metadata !DIExpression()), !dbg !474
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !475, metadata !DIExpression()), !dbg !476
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !479, metadata !DIExpression()), !dbg !480
  store i64 0, i64* %numWritten, align 8, !dbg !480
  br label %while.cond, !dbg !481

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !482
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !483
  %cmp = icmp ult i64 %0, %1, !dbg !484
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !485

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !486
  %3 = load i64, i64* %numWritten, align 8, !dbg !487
  %mul = mul i64 2, %3, !dbg !488
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !486
  %4 = load i32, i32* %arrayidx, align 4, !dbg !486
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !489
  %tobool = icmp ne i32 %call, 0, !dbg !489
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !490

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !491
  %6 = load i64, i64* %numWritten, align 8, !dbg !492
  %mul1 = mul i64 2, %6, !dbg !493
  %add = add i64 %mul1, 1, !dbg !494
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !491
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !491
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !495
  %tobool4 = icmp ne i32 %call3, 0, !dbg !490
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !496
  br i1 %8, label %while.body, label %while.end, !dbg !481

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !497, metadata !DIExpression()), !dbg !499
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !500
  %10 = load i64, i64* %numWritten, align 8, !dbg !501
  %mul5 = mul i64 2, %10, !dbg !502
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !500
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16.19, i64 0, i64 0), i32* %byte) #8, !dbg !503
  %11 = load i32, i32* %byte, align 4, !dbg !504
  %conv = trunc i32 %11 to i8, !dbg !505
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !506
  %13 = load i64, i64* %numWritten, align 8, !dbg !507
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !506
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !508
  %14 = load i64, i64* %numWritten, align 8, !dbg !509
  %inc = add i64 %14, 1, !dbg !509
  store i64 %inc, i64* %numWritten, align 8, !dbg !509
  br label %while.cond, !dbg !481, !llvm.loop !510

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !512
  ret i64 %15, !dbg !513
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !514 {
entry:
  ret i32 1, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !518 {
entry:
  ret i32 0, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !520 {
entry:
  %call = call i32 @rand() #8, !dbg !521
  %rem = srem i32 %call, 2, !dbg !522
  ret i32 %rem, !dbg !523
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !524 {
entry:
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !526 {
entry:
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !528 {
entry:
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !530 {
entry:
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !532 {
entry:
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !534 {
entry:
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !536 {
entry:
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !540 {
entry:
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !542 {
entry:
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !544 {
entry:
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !548 {
entry:
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !558 {
entry:
  ret void, !dbg !559
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

!llvm.dbg.cu = !{!44, !48, !50, !2}
!llvm.ident = !{!52, !52, !52, !52}
!llvm.module.flags = !{!53, !54, !55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_416/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_416/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_416/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_416/source_code")
!52 = !{!"clang version 12.0.0"}
!53 = !{i32 7, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52_bad", scope: !45, file: !45, line: 29, type: !57, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!57 = !DISubroutineType(types: !58)
!58 = !{null}
!59 = !DILocalVariable(name: "data", scope: !56, file: !45, line: 31, type: !42)
!60 = !DILocation(line: 31, column: 12, scope: !56)
!61 = !DILocalVariable(name: "dataBuffer", scope: !56, file: !45, line: 32, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 32, column: 10, scope: !56)
!66 = !DILocation(line: 33, column: 12, scope: !56)
!67 = !DILocation(line: 33, column: 10, scope: !56)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !45, line: 36, type: !70)
!69 = distinct !DILexicalBlock(scope: !56, file: !45, line: 34, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 36, column: 16, scope: !69)
!74 = !DILocation(line: 36, column: 33, scope: !69)
!75 = !DILocation(line: 36, column: 26, scope: !69)
!76 = !DILocation(line: 38, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !69, file: !45, line: 38, column: 13)
!78 = !DILocation(line: 38, column: 16, scope: !77)
!79 = !DILocation(line: 38, column: 25, scope: !77)
!80 = !DILocation(line: 38, column: 13, scope: !69)
!81 = !DILocation(line: 41, column: 23, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !45, line: 41, column: 17)
!83 = distinct !DILexicalBlock(scope: !77, file: !45, line: 39, column: 9)
!84 = !DILocation(line: 41, column: 28, scope: !82)
!85 = !DILocation(line: 41, column: 27, scope: !82)
!86 = !DILocation(line: 41, column: 47, scope: !82)
!87 = !DILocation(line: 41, column: 46, scope: !82)
!88 = !DILocation(line: 41, column: 37, scope: !82)
!89 = !DILocation(line: 41, column: 57, scope: !82)
!90 = !DILocation(line: 41, column: 17, scope: !82)
!91 = !DILocation(line: 41, column: 64, scope: !82)
!92 = !DILocation(line: 41, column: 17, scope: !83)
!93 = !DILocation(line: 45, column: 34, scope: !94)
!94 = distinct !DILexicalBlock(scope: !82, file: !45, line: 42, column: 13)
!95 = !DILocation(line: 45, column: 27, scope: !94)
!96 = !DILocation(line: 45, column: 25, scope: !94)
!97 = !DILocation(line: 46, column: 21, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !45, line: 46, column: 21)
!99 = !DILocation(line: 46, column: 29, scope: !98)
!100 = !DILocation(line: 46, column: 33, scope: !98)
!101 = !DILocation(line: 46, column: 36, scope: !98)
!102 = !DILocation(line: 46, column: 41, scope: !98)
!103 = !DILocation(line: 46, column: 48, scope: !98)
!104 = !DILocation(line: 46, column: 52, scope: !98)
!105 = !DILocation(line: 46, column: 21, scope: !94)
!106 = !DILocation(line: 48, column: 21, scope: !107)
!107 = distinct !DILexicalBlock(scope: !98, file: !45, line: 47, column: 17)
!108 = !DILocation(line: 48, column: 26, scope: !107)
!109 = !DILocation(line: 48, column: 33, scope: !107)
!110 = !DILocation(line: 48, column: 37, scope: !107)
!111 = !DILocation(line: 49, column: 17, scope: !107)
!112 = !DILocation(line: 50, column: 13, scope: !94)
!113 = !DILocation(line: 53, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !82, file: !45, line: 52, column: 13)
!115 = !DILocation(line: 55, column: 17, scope: !114)
!116 = !DILocation(line: 55, column: 22, scope: !114)
!117 = !DILocation(line: 55, column: 31, scope: !114)
!118 = !DILocation(line: 57, column: 9, scope: !83)
!119 = !DILocation(line: 59, column: 73, scope: !56)
!120 = !DILocation(line: 59, column: 5, scope: !56)
!121 = !DILocation(line: 60, column: 1, scope: !56)
!122 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 68, type: !57, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!123 = !DILocalVariable(name: "data", scope: !122, file: !45, line: 70, type: !42)
!124 = !DILocation(line: 70, column: 12, scope: !122)
!125 = !DILocalVariable(name: "dataBuffer", scope: !122, file: !45, line: 71, type: !62)
!126 = !DILocation(line: 71, column: 10, scope: !122)
!127 = !DILocation(line: 72, column: 12, scope: !122)
!128 = !DILocation(line: 72, column: 10, scope: !122)
!129 = !DILocation(line: 74, column: 12, scope: !122)
!130 = !DILocation(line: 74, column: 5, scope: !122)
!131 = !DILocation(line: 75, column: 77, scope: !122)
!132 = !DILocation(line: 75, column: 5, scope: !122)
!133 = !DILocation(line: 76, column: 1, scope: !122)
!134 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 80, type: !57, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!135 = !DILocalVariable(name: "data", scope: !134, file: !45, line: 82, type: !42)
!136 = !DILocation(line: 82, column: 12, scope: !134)
!137 = !DILocalVariable(name: "dataBuffer", scope: !134, file: !45, line: 83, type: !62)
!138 = !DILocation(line: 83, column: 10, scope: !134)
!139 = !DILocation(line: 84, column: 12, scope: !134)
!140 = !DILocation(line: 84, column: 10, scope: !134)
!141 = !DILocalVariable(name: "dataLen", scope: !142, file: !45, line: 87, type: !70)
!142 = distinct !DILexicalBlock(scope: !134, file: !45, line: 85, column: 5)
!143 = !DILocation(line: 87, column: 16, scope: !142)
!144 = !DILocation(line: 87, column: 33, scope: !142)
!145 = !DILocation(line: 87, column: 26, scope: !142)
!146 = !DILocation(line: 89, column: 17, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !45, line: 89, column: 13)
!148 = !DILocation(line: 89, column: 16, scope: !147)
!149 = !DILocation(line: 89, column: 25, scope: !147)
!150 = !DILocation(line: 89, column: 13, scope: !142)
!151 = !DILocation(line: 92, column: 23, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !45, line: 92, column: 17)
!153 = distinct !DILexicalBlock(scope: !147, file: !45, line: 90, column: 9)
!154 = !DILocation(line: 92, column: 28, scope: !152)
!155 = !DILocation(line: 92, column: 27, scope: !152)
!156 = !DILocation(line: 92, column: 47, scope: !152)
!157 = !DILocation(line: 92, column: 46, scope: !152)
!158 = !DILocation(line: 92, column: 37, scope: !152)
!159 = !DILocation(line: 92, column: 57, scope: !152)
!160 = !DILocation(line: 92, column: 17, scope: !152)
!161 = !DILocation(line: 92, column: 64, scope: !152)
!162 = !DILocation(line: 92, column: 17, scope: !153)
!163 = !DILocation(line: 96, column: 34, scope: !164)
!164 = distinct !DILexicalBlock(scope: !152, file: !45, line: 93, column: 13)
!165 = !DILocation(line: 96, column: 27, scope: !164)
!166 = !DILocation(line: 96, column: 25, scope: !164)
!167 = !DILocation(line: 97, column: 21, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !45, line: 97, column: 21)
!169 = !DILocation(line: 97, column: 29, scope: !168)
!170 = !DILocation(line: 97, column: 33, scope: !168)
!171 = !DILocation(line: 97, column: 36, scope: !168)
!172 = !DILocation(line: 97, column: 41, scope: !168)
!173 = !DILocation(line: 97, column: 48, scope: !168)
!174 = !DILocation(line: 97, column: 52, scope: !168)
!175 = !DILocation(line: 97, column: 21, scope: !164)
!176 = !DILocation(line: 99, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !168, file: !45, line: 98, column: 17)
!178 = !DILocation(line: 99, column: 26, scope: !177)
!179 = !DILocation(line: 99, column: 33, scope: !177)
!180 = !DILocation(line: 99, column: 37, scope: !177)
!181 = !DILocation(line: 100, column: 17, scope: !177)
!182 = !DILocation(line: 101, column: 13, scope: !164)
!183 = !DILocation(line: 104, column: 17, scope: !184)
!184 = distinct !DILexicalBlock(scope: !152, file: !45, line: 103, column: 13)
!185 = !DILocation(line: 106, column: 17, scope: !184)
!186 = !DILocation(line: 106, column: 22, scope: !184)
!187 = !DILocation(line: 106, column: 31, scope: !184)
!188 = !DILocation(line: 108, column: 9, scope: !153)
!189 = !DILocation(line: 110, column: 77, scope: !134)
!190 = !DILocation(line: 110, column: 5, scope: !134)
!191 = !DILocation(line: 111, column: 1, scope: !134)
!192 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52_good", scope: !45, file: !45, line: 113, type: !57, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!193 = !DILocation(line: 115, column: 5, scope: !192)
!194 = !DILocation(line: 116, column: 5, scope: !192)
!195 = !DILocation(line: 117, column: 1, scope: !192)
!196 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_badSink", scope: !49, file: !49, line: 29, type: !197, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !42}
!199 = !DILocalVariable(name: "data", arg: 1, scope: !196, file: !49, line: 29, type: !42)
!200 = !DILocation(line: 29, column: 81, scope: !196)
!201 = !DILocation(line: 31, column: 73, scope: !196)
!202 = !DILocation(line: 31, column: 5, scope: !196)
!203 = !DILocation(line: 32, column: 1, scope: !196)
!204 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_goodG2BSink", scope: !49, file: !49, line: 41, type: !197, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!205 = !DILocalVariable(name: "data", arg: 1, scope: !204, file: !49, line: 41, type: !42)
!206 = !DILocation(line: 41, column: 85, scope: !204)
!207 = !DILocation(line: 43, column: 77, scope: !204)
!208 = !DILocation(line: 43, column: 5, scope: !204)
!209 = !DILocation(line: 44, column: 1, scope: !204)
!210 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52b_goodB2GSink", scope: !49, file: !49, line: 49, type: !197, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!211 = !DILocalVariable(name: "data", arg: 1, scope: !210, file: !49, line: 49, type: !42)
!212 = !DILocation(line: 49, column: 85, scope: !210)
!213 = !DILocation(line: 51, column: 77, scope: !210)
!214 = !DILocation(line: 51, column: 5, scope: !210)
!215 = !DILocation(line: 52, column: 1, scope: !210)
!216 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52c_badSink", scope: !51, file: !51, line: 26, type: !197, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!217 = !DILocalVariable(name: "data", arg: 1, scope: !216, file: !51, line: 26, type: !42)
!218 = !DILocation(line: 26, column: 81, scope: !216)
!219 = !DILocation(line: 29, column: 13, scope: !216)
!220 = !DILocation(line: 29, column: 21, scope: !216)
!221 = !DILocation(line: 29, column: 5, scope: !216)
!222 = !DILocation(line: 30, column: 1, scope: !216)
!223 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52c_goodG2BSink", scope: !51, file: !51, line: 37, type: !197, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!224 = !DILocalVariable(name: "data", arg: 1, scope: !223, file: !51, line: 37, type: !42)
!225 = !DILocation(line: 37, column: 85, scope: !223)
!226 = !DILocation(line: 40, column: 13, scope: !223)
!227 = !DILocation(line: 40, column: 21, scope: !223)
!228 = !DILocation(line: 40, column: 5, scope: !223)
!229 = !DILocation(line: 41, column: 1, scope: !223)
!230 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_52c_goodB2GSink", scope: !51, file: !51, line: 44, type: !197, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!231 = !DILocalVariable(name: "data", arg: 1, scope: !230, file: !51, line: 44, type: !42)
!232 = !DILocation(line: 44, column: 85, scope: !230)
!233 = !DILocation(line: 47, column: 13, scope: !230)
!234 = !DILocation(line: 47, column: 29, scope: !230)
!235 = !DILocation(line: 47, column: 5, scope: !230)
!236 = !DILocation(line: 48, column: 1, scope: !230)
!237 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !197, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!238 = !DILocalVariable(name: "line", arg: 1, scope: !237, file: !3, line: 11, type: !42)
!239 = !DILocation(line: 11, column: 25, scope: !237)
!240 = !DILocation(line: 13, column: 1, scope: !237)
!241 = !DILocation(line: 14, column: 8, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !3, line: 14, column: 8)
!243 = !DILocation(line: 14, column: 13, scope: !242)
!244 = !DILocation(line: 14, column: 8, scope: !237)
!245 = !DILocation(line: 16, column: 24, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !3, line: 15, column: 5)
!247 = !DILocation(line: 16, column: 9, scope: !246)
!248 = !DILocation(line: 17, column: 5, scope: !246)
!249 = !DILocation(line: 18, column: 5, scope: !237)
!250 = !DILocation(line: 19, column: 1, scope: !237)
!251 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !197, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!252 = !DILocalVariable(name: "line", arg: 1, scope: !251, file: !3, line: 20, type: !42)
!253 = !DILocation(line: 20, column: 29, scope: !251)
!254 = !DILocation(line: 22, column: 8, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !3, line: 22, column: 8)
!256 = !DILocation(line: 22, column: 13, scope: !255)
!257 = !DILocation(line: 22, column: 8, scope: !251)
!258 = !DILocation(line: 24, column: 24, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !3, line: 23, column: 5)
!260 = !DILocation(line: 24, column: 9, scope: !259)
!261 = !DILocation(line: 25, column: 5, scope: !259)
!262 = !DILocation(line: 26, column: 1, scope: !251)
!263 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !264, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!268 = !DILocalVariable(name: "line", arg: 1, scope: !263, file: !3, line: 27, type: !266)
!269 = !DILocation(line: 27, column: 29, scope: !263)
!270 = !DILocation(line: 29, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !263, file: !3, line: 29, column: 8)
!272 = !DILocation(line: 29, column: 13, scope: !271)
!273 = !DILocation(line: 29, column: 8, scope: !263)
!274 = !DILocation(line: 31, column: 27, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 30, column: 5)
!276 = !DILocation(line: 31, column: 9, scope: !275)
!277 = !DILocation(line: 32, column: 5, scope: !275)
!278 = !DILocation(line: 33, column: 1, scope: !263)
!279 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !280, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !23}
!282 = !DILocalVariable(name: "intNumber", arg: 1, scope: !279, file: !3, line: 35, type: !23)
!283 = !DILocation(line: 35, column: 24, scope: !279)
!284 = !DILocation(line: 37, column: 20, scope: !279)
!285 = !DILocation(line: 37, column: 5, scope: !279)
!286 = !DILocation(line: 38, column: 1, scope: !279)
!287 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !288, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !290}
!290 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!291 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !287, file: !3, line: 40, type: !290)
!292 = !DILocation(line: 40, column: 28, scope: !287)
!293 = !DILocation(line: 42, column: 21, scope: !287)
!294 = !DILocation(line: 42, column: 5, scope: !287)
!295 = !DILocation(line: 43, column: 1, scope: !287)
!296 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !297, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299}
!299 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!300 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !296, file: !3, line: 45, type: !299)
!301 = !DILocation(line: 45, column: 28, scope: !296)
!302 = !DILocation(line: 47, column: 20, scope: !296)
!303 = !DILocation(line: 47, column: 5, scope: !296)
!304 = !DILocation(line: 48, column: 1, scope: !296)
!305 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !306, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !308}
!308 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!309 = !DILocalVariable(name: "longNumber", arg: 1, scope: !305, file: !3, line: 50, type: !308)
!310 = !DILocation(line: 50, column: 26, scope: !305)
!311 = !DILocation(line: 52, column: 21, scope: !305)
!312 = !DILocation(line: 52, column: 5, scope: !305)
!313 = !DILocation(line: 53, column: 1, scope: !305)
!314 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !315, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317}
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !318, line: 27, baseType: !319)
!318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !320, line: 44, baseType: !308)
!320 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!321 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !314, file: !3, line: 55, type: !317)
!322 = !DILocation(line: 55, column: 33, scope: !314)
!323 = !DILocation(line: 57, column: 29, scope: !314)
!324 = !DILocation(line: 57, column: 5, scope: !314)
!325 = !DILocation(line: 58, column: 1, scope: !314)
!326 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !327, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !70}
!329 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !326, file: !3, line: 60, type: !70)
!330 = !DILocation(line: 60, column: 29, scope: !326)
!331 = !DILocation(line: 62, column: 21, scope: !326)
!332 = !DILocation(line: 62, column: 5, scope: !326)
!333 = !DILocation(line: 63, column: 1, scope: !326)
!334 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !335, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !43}
!337 = !DILocalVariable(name: "charHex", arg: 1, scope: !334, file: !3, line: 65, type: !43)
!338 = !DILocation(line: 65, column: 29, scope: !334)
!339 = !DILocation(line: 67, column: 22, scope: !334)
!340 = !DILocation(line: 67, column: 5, scope: !334)
!341 = !DILocation(line: 68, column: 1, scope: !334)
!342 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !343, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !267}
!345 = !DILocalVariable(name: "wideChar", arg: 1, scope: !342, file: !3, line: 70, type: !267)
!346 = !DILocation(line: 70, column: 29, scope: !342)
!347 = !DILocalVariable(name: "s", scope: !342, file: !3, line: 74, type: !348)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 64, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 2)
!351 = !DILocation(line: 74, column: 13, scope: !342)
!352 = !DILocation(line: 75, column: 16, scope: !342)
!353 = !DILocation(line: 75, column: 9, scope: !342)
!354 = !DILocation(line: 75, column: 14, scope: !342)
!355 = !DILocation(line: 76, column: 9, scope: !342)
!356 = !DILocation(line: 76, column: 14, scope: !342)
!357 = !DILocation(line: 77, column: 21, scope: !342)
!358 = !DILocation(line: 77, column: 5, scope: !342)
!359 = !DILocation(line: 78, column: 1, scope: !342)
!360 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !361, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !7}
!363 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !360, file: !3, line: 80, type: !7)
!364 = !DILocation(line: 80, column: 33, scope: !360)
!365 = !DILocation(line: 82, column: 20, scope: !360)
!366 = !DILocation(line: 82, column: 5, scope: !360)
!367 = !DILocation(line: 83, column: 1, scope: !360)
!368 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !369, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !25}
!371 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !368, file: !3, line: 85, type: !25)
!372 = !DILocation(line: 85, column: 45, scope: !368)
!373 = !DILocation(line: 87, column: 22, scope: !368)
!374 = !DILocation(line: 87, column: 5, scope: !368)
!375 = !DILocation(line: 88, column: 1, scope: !368)
!376 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !377, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379}
!379 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!380 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !376, file: !3, line: 90, type: !379)
!381 = !DILocation(line: 90, column: 29, scope: !376)
!382 = !DILocation(line: 92, column: 20, scope: !376)
!383 = !DILocation(line: 92, column: 5, scope: !376)
!384 = !DILocation(line: 93, column: 1, scope: !376)
!385 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !386, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !390, line: 100, baseType: !391)
!390 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_416/source_code")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !390, line: 96, size: 64, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !391, file: !390, line: 98, baseType: !23, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !391, file: !390, line: 99, baseType: !23, size: 32, offset: 32)
!395 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !385, file: !3, line: 95, type: !388)
!396 = !DILocation(line: 95, column: 40, scope: !385)
!397 = !DILocation(line: 97, column: 26, scope: !385)
!398 = !DILocation(line: 97, column: 47, scope: !385)
!399 = !DILocation(line: 97, column: 55, scope: !385)
!400 = !DILocation(line: 97, column: 76, scope: !385)
!401 = !DILocation(line: 97, column: 5, scope: !385)
!402 = !DILocation(line: 98, column: 1, scope: !385)
!403 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !404, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !406, !70}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!407 = !DILocalVariable(name: "bytes", arg: 1, scope: !403, file: !3, line: 100, type: !406)
!408 = !DILocation(line: 100, column: 38, scope: !403)
!409 = !DILocalVariable(name: "numBytes", arg: 2, scope: !403, file: !3, line: 100, type: !70)
!410 = !DILocation(line: 100, column: 52, scope: !403)
!411 = !DILocalVariable(name: "i", scope: !403, file: !3, line: 102, type: !70)
!412 = !DILocation(line: 102, column: 12, scope: !403)
!413 = !DILocation(line: 103, column: 12, scope: !414)
!414 = distinct !DILexicalBlock(scope: !403, file: !3, line: 103, column: 5)
!415 = !DILocation(line: 103, column: 10, scope: !414)
!416 = !DILocation(line: 103, column: 17, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !3, line: 103, column: 5)
!418 = !DILocation(line: 103, column: 21, scope: !417)
!419 = !DILocation(line: 103, column: 19, scope: !417)
!420 = !DILocation(line: 103, column: 5, scope: !414)
!421 = !DILocation(line: 105, column: 24, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !3, line: 104, column: 5)
!423 = !DILocation(line: 105, column: 30, scope: !422)
!424 = !DILocation(line: 105, column: 9, scope: !422)
!425 = !DILocation(line: 106, column: 5, scope: !422)
!426 = !DILocation(line: 103, column: 31, scope: !417)
!427 = !DILocation(line: 103, column: 5, scope: !417)
!428 = distinct !{!428, !420, !429, !430}
!429 = !DILocation(line: 106, column: 5, scope: !414)
!430 = !{!"llvm.loop.mustprogress"}
!431 = !DILocation(line: 107, column: 5, scope: !403)
!432 = !DILocation(line: 108, column: 1, scope: !403)
!433 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !434, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!434 = !DISubroutineType(types: !435)
!435 = !{!70, !406, !70, !42}
!436 = !DILocalVariable(name: "bytes", arg: 1, scope: !433, file: !3, line: 113, type: !406)
!437 = !DILocation(line: 113, column: 39, scope: !433)
!438 = !DILocalVariable(name: "numBytes", arg: 2, scope: !433, file: !3, line: 113, type: !70)
!439 = !DILocation(line: 113, column: 53, scope: !433)
!440 = !DILocalVariable(name: "hex", arg: 3, scope: !433, file: !3, line: 113, type: !42)
!441 = !DILocation(line: 113, column: 71, scope: !433)
!442 = !DILocalVariable(name: "numWritten", scope: !433, file: !3, line: 115, type: !70)
!443 = !DILocation(line: 115, column: 12, scope: !433)
!444 = !DILocation(line: 121, column: 5, scope: !433)
!445 = !DILocation(line: 121, column: 12, scope: !433)
!446 = !DILocation(line: 121, column: 25, scope: !433)
!447 = !DILocation(line: 121, column: 23, scope: !433)
!448 = !DILocation(line: 121, column: 34, scope: !433)
!449 = !DILocation(line: 121, column: 37, scope: !433)
!450 = !DILocation(line: 121, column: 67, scope: !433)
!451 = !DILocation(line: 121, column: 70, scope: !433)
!452 = !DILocation(line: 0, scope: !433)
!453 = !DILocalVariable(name: "byte", scope: !454, file: !3, line: 123, type: !23)
!454 = distinct !DILexicalBlock(scope: !433, file: !3, line: 122, column: 5)
!455 = !DILocation(line: 123, column: 13, scope: !454)
!456 = !DILocation(line: 124, column: 17, scope: !454)
!457 = !DILocation(line: 124, column: 25, scope: !454)
!458 = !DILocation(line: 124, column: 23, scope: !454)
!459 = !DILocation(line: 124, column: 9, scope: !454)
!460 = !DILocation(line: 125, column: 45, scope: !454)
!461 = !DILocation(line: 125, column: 29, scope: !454)
!462 = !DILocation(line: 125, column: 9, scope: !454)
!463 = !DILocation(line: 125, column: 15, scope: !454)
!464 = !DILocation(line: 125, column: 27, scope: !454)
!465 = !DILocation(line: 126, column: 9, scope: !454)
!466 = distinct !{!466, !444, !467, !430}
!467 = !DILocation(line: 127, column: 5, scope: !433)
!468 = !DILocation(line: 129, column: 12, scope: !433)
!469 = !DILocation(line: 129, column: 5, scope: !433)
!470 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !471, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!471 = !DISubroutineType(types: !472)
!472 = !{!70, !406, !70, !266}
!473 = !DILocalVariable(name: "bytes", arg: 1, scope: !470, file: !3, line: 135, type: !406)
!474 = !DILocation(line: 135, column: 41, scope: !470)
!475 = !DILocalVariable(name: "numBytes", arg: 2, scope: !470, file: !3, line: 135, type: !70)
!476 = !DILocation(line: 135, column: 55, scope: !470)
!477 = !DILocalVariable(name: "hex", arg: 3, scope: !470, file: !3, line: 135, type: !266)
!478 = !DILocation(line: 135, column: 76, scope: !470)
!479 = !DILocalVariable(name: "numWritten", scope: !470, file: !3, line: 137, type: !70)
!480 = !DILocation(line: 137, column: 12, scope: !470)
!481 = !DILocation(line: 143, column: 5, scope: !470)
!482 = !DILocation(line: 143, column: 12, scope: !470)
!483 = !DILocation(line: 143, column: 25, scope: !470)
!484 = !DILocation(line: 143, column: 23, scope: !470)
!485 = !DILocation(line: 143, column: 34, scope: !470)
!486 = !DILocation(line: 143, column: 47, scope: !470)
!487 = !DILocation(line: 143, column: 55, scope: !470)
!488 = !DILocation(line: 143, column: 53, scope: !470)
!489 = !DILocation(line: 143, column: 37, scope: !470)
!490 = !DILocation(line: 143, column: 68, scope: !470)
!491 = !DILocation(line: 143, column: 81, scope: !470)
!492 = !DILocation(line: 143, column: 89, scope: !470)
!493 = !DILocation(line: 143, column: 87, scope: !470)
!494 = !DILocation(line: 143, column: 100, scope: !470)
!495 = !DILocation(line: 143, column: 71, scope: !470)
!496 = !DILocation(line: 0, scope: !470)
!497 = !DILocalVariable(name: "byte", scope: !498, file: !3, line: 145, type: !23)
!498 = distinct !DILexicalBlock(scope: !470, file: !3, line: 144, column: 5)
!499 = !DILocation(line: 145, column: 13, scope: !498)
!500 = !DILocation(line: 146, column: 18, scope: !498)
!501 = !DILocation(line: 146, column: 26, scope: !498)
!502 = !DILocation(line: 146, column: 24, scope: !498)
!503 = !DILocation(line: 146, column: 9, scope: !498)
!504 = !DILocation(line: 147, column: 45, scope: !498)
!505 = !DILocation(line: 147, column: 29, scope: !498)
!506 = !DILocation(line: 147, column: 9, scope: !498)
!507 = !DILocation(line: 147, column: 15, scope: !498)
!508 = !DILocation(line: 147, column: 27, scope: !498)
!509 = !DILocation(line: 148, column: 9, scope: !498)
!510 = distinct !{!510, !481, !511, !430}
!511 = !DILocation(line: 149, column: 5, scope: !470)
!512 = !DILocation(line: 151, column: 12, scope: !470)
!513 = !DILocation(line: 151, column: 5, scope: !470)
!514 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !515, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DISubroutineType(types: !516)
!516 = !{!23}
!517 = !DILocation(line: 158, column: 5, scope: !514)
!518 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !515, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DILocation(line: 163, column: 5, scope: !518)
!520 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !515, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DILocation(line: 168, column: 13, scope: !520)
!522 = !DILocation(line: 168, column: 20, scope: !520)
!523 = !DILocation(line: 168, column: 5, scope: !520)
!524 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !57, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!525 = !DILocation(line: 187, column: 16, scope: !524)
!526 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !57, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DILocation(line: 188, column: 16, scope: !526)
!528 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !57, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DILocation(line: 189, column: 16, scope: !528)
!530 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !57, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!531 = !DILocation(line: 190, column: 16, scope: !530)
!532 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !57, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DILocation(line: 191, column: 16, scope: !532)
!534 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !57, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DILocation(line: 192, column: 16, scope: !534)
!536 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !57, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DILocation(line: 193, column: 16, scope: !536)
!538 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !57, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DILocation(line: 194, column: 16, scope: !538)
!540 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !57, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DILocation(line: 195, column: 16, scope: !540)
!542 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !57, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DILocation(line: 198, column: 15, scope: !542)
!544 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !57, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DILocation(line: 199, column: 15, scope: !544)
!546 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !57, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 200, column: 15, scope: !546)
!548 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !57, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DILocation(line: 201, column: 15, scope: !548)
!550 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !57, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 202, column: 15, scope: !550)
!552 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !57, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 203, column: 15, scope: !552)
!554 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !57, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 204, column: 15, scope: !554)
!556 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !57, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 205, column: 15, scope: !556)
!558 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !57, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 206, column: 15, scope: !558)
