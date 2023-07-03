; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE134_Uncontrolled_Format_String__char_console_fprintf_68_badData = dso_local global i8* null, align 8, !dbg !0
@CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodG2BData = dso_local global i8* null, align 8, !dbg !9
@CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodB2GData = dso_local global i8* null, align 8, !dbg !13
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_bad() #0 !dbg !61 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !64, metadata !DIExpression()), !dbg !65
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
  store i8* %16, i8** @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_badData, align 8, !dbg !125
  call void (...) bitcast (void ()* @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_badSink to void (...)*)(), !dbg !126
  ret void, !dbg !127
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !128 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !132
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !132
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !133
  store i8* %arraydecay, i8** %data, align 8, !dbg !134
  %1 = load i8*, i8** %data, align 8, !dbg !135
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !136
  %2 = load i8*, i8** %data, align 8, !dbg !137
  store i8* %2, i8** @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodG2BData, align 8, !dbg !138
  call void (...) bitcast (void ()* @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodG2BSink to void (...)*)(), !dbg !139
  ret void, !dbg !140
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !141 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !144, metadata !DIExpression()), !dbg !145
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !145
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !145
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !146
  store i8* %arraydecay, i8** %data, align 8, !dbg !147
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !148, metadata !DIExpression()), !dbg !150
  %1 = load i8*, i8** %data, align 8, !dbg !151
  %call = call i64 @strlen(i8* %1) #7, !dbg !152
  store i64 %call, i64* %dataLen, align 8, !dbg !150
  %2 = load i64, i64* %dataLen, align 8, !dbg !153
  %sub = sub i64 100, %2, !dbg !155
  %cmp = icmp ugt i64 %sub, 1, !dbg !156
  br i1 %cmp, label %if.then, label %if.end18, !dbg !157

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !158
  %4 = load i64, i64* %dataLen, align 8, !dbg !161
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !162
  %5 = load i64, i64* %dataLen, align 8, !dbg !163
  %sub1 = sub i64 100, %5, !dbg !164
  %conv = trunc i64 %sub1 to i32, !dbg !165
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !166
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !167
  %cmp3 = icmp ne i8* %call2, null, !dbg !168
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !169

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !170
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !172
  store i64 %call6, i64* %dataLen, align 8, !dbg !173
  %8 = load i64, i64* %dataLen, align 8, !dbg !174
  %cmp7 = icmp ugt i64 %8, 0, !dbg !176
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !177

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !178
  %10 = load i64, i64* %dataLen, align 8, !dbg !179
  %sub9 = sub i64 %10, 1, !dbg !180
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !178
  %11 = load i8, i8* %arrayidx, align 1, !dbg !178
  %conv10 = sext i8 %11 to i32, !dbg !178
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !181
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !182

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !183
  %13 = load i64, i64* %dataLen, align 8, !dbg !185
  %sub14 = sub i64 %13, 1, !dbg !186
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !183
  store i8 0, i8* %arrayidx15, align 1, !dbg !187
  br label %if.end, !dbg !188

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !189

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !190
  %14 = load i8*, i8** %data, align 8, !dbg !192
  %15 = load i64, i64* %dataLen, align 8, !dbg !193
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !192
  store i8 0, i8* %arrayidx16, align 1, !dbg !194
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !195

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !196
  store i8* %16, i8** @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodB2GData, align 8, !dbg !197
  call void (...) bitcast (void ()* @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodB2GSink to void (...)*)(), !dbg !198
  ret void, !dbg !199
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_good() #0 !dbg !200 {
entry:
  call void @goodG2B(), !dbg !201
  call void @goodB2G(), !dbg !202
  ret void, !dbg !203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_badSink() #0 !dbg !204 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_badData, align 8, !dbg !207
  store i8* %0, i8** %data, align 8, !dbg !206
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !208
  %2 = load i8*, i8** %data, align 8, !dbg !209
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !210
  ret void, !dbg !211
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodG2BSink() #0 !dbg !212 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !213, metadata !DIExpression()), !dbg !214
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodG2BData, align 8, !dbg !215
  store i8* %0, i8** %data, align 8, !dbg !214
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !216
  %2 = load i8*, i8** %data, align 8, !dbg !217
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !218
  ret void, !dbg !219
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodB2GSink() #0 !dbg !220 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodB2GData, align 8, !dbg !223
  store i8* %0, i8** %data, align 8, !dbg !222
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !224
  %2 = load i8*, i8** %data, align 8, !dbg !225
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %2), !dbg !226
  ret void, !dbg !227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !228 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !231, metadata !DIExpression()), !dbg !232
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !233
  %0 = load i8*, i8** %line.addr, align 8, !dbg !234
  %cmp = icmp ne i8* %0, null, !dbg !236
  br i1 %cmp, label %if.then, label %if.end, !dbg !237

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !238
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !240
  br label %if.end, !dbg !241

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !242
  ret void, !dbg !243
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !244 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i8*, i8** %line.addr, align 8, !dbg !247
  %cmp = icmp ne i8* %0, null, !dbg !249
  br i1 %cmp, label %if.then, label %if.end, !dbg !250

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !251
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !253
  br label %if.end, !dbg !254

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !256 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !261, metadata !DIExpression()), !dbg !262
  %0 = load i32*, i32** %line.addr, align 8, !dbg !263
  %cmp = icmp ne i32* %0, null, !dbg !265
  br i1 %cmp, label %if.then, label %if.end, !dbg !266

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !267
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !269
  br label %if.end, !dbg !270

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !271
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !272 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !277
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !278
  ret void, !dbg !279
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !280 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !286
  %conv = sext i16 %0 to i32, !dbg !286
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !287
  ret void, !dbg !288
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !289 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !293, metadata !DIExpression()), !dbg !294
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !295
  %conv = fpext float %0 to double, !dbg !295
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !296
  ret void, !dbg !297
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !298 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !304
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.12, i64 0, i64 0), i64 %0), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !307 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !316
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.12, i64 0, i64 0), i64 %0), !dbg !317
  ret void, !dbg !318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !319 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !324
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !325
  ret void, !dbg !326
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !327 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !332
  %conv = sext i8 %0 to i32, !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !333
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !335 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !340, metadata !DIExpression()), !dbg !344
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !345
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !346
  store i32 %0, i32* %arrayidx, align 4, !dbg !347
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !348
  store i32 0, i32* %arrayidx1, align 4, !dbg !349
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !350
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.13, i64 0, i64 0), i32* %arraydecay), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !353 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !358
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !359
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !361 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !366
  %conv = zext i8 %0 to i32, !dbg !366
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !367
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !369 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !373, metadata !DIExpression()), !dbg !374
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !375
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !376
  ret void, !dbg !377
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !378 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !390
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !391
  %1 = load i32, i32* %intOne, align 4, !dbg !391
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !392
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !393
  %3 = load i32, i32* %intTwo, align 4, !dbg !393
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !396 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !400, metadata !DIExpression()), !dbg !401
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !402, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.declare(metadata i64* %i, metadata !404, metadata !DIExpression()), !dbg !405
  store i64 0, i64* %i, align 8, !dbg !406
  br label %for.cond, !dbg !408

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !409
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !411
  %cmp = icmp ult i64 %0, %1, !dbg !412
  br i1 %cmp, label %for.body, label %for.end, !dbg !413

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !414
  %3 = load i64, i64* %i, align 8, !dbg !416
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !414
  %4 = load i8, i8* %arrayidx, align 1, !dbg !414
  %conv = zext i8 %4 to i32, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !417
  br label %for.inc, !dbg !418

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !419
  %inc = add i64 %5, 1, !dbg !419
  store i64 %inc, i64* %i, align 8, !dbg !419
  br label %for.cond, !dbg !420, !llvm.loop !421

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !424
  ret void, !dbg !425
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !426 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !429, metadata !DIExpression()), !dbg !430
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !431, metadata !DIExpression()), !dbg !432
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !433, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !435, metadata !DIExpression()), !dbg !436
  store i64 0, i64* %numWritten, align 8, !dbg !436
  br label %while.cond, !dbg !437

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !438
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !439
  %cmp = icmp ult i64 %0, %1, !dbg !440
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !441

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !442
  %2 = load i16*, i16** %call, align 8, !dbg !442
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !442
  %4 = load i64, i64* %numWritten, align 8, !dbg !442
  %mul = mul i64 2, %4, !dbg !442
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !442
  %5 = load i8, i8* %arrayidx, align 1, !dbg !442
  %conv = sext i8 %5 to i32, !dbg !442
  %idxprom = sext i32 %conv to i64, !dbg !442
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !442
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !442
  %conv2 = zext i16 %6 to i32, !dbg !442
  %and = and i32 %conv2, 4096, !dbg !442
  %tobool = icmp ne i32 %and, 0, !dbg !442
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !443

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !444
  %7 = load i16*, i16** %call3, align 8, !dbg !444
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !444
  %9 = load i64, i64* %numWritten, align 8, !dbg !444
  %mul4 = mul i64 2, %9, !dbg !444
  %add = add i64 %mul4, 1, !dbg !444
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !444
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !444
  %conv6 = sext i8 %10 to i32, !dbg !444
  %idxprom7 = sext i32 %conv6 to i64, !dbg !444
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !444
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !444
  %conv9 = zext i16 %11 to i32, !dbg !444
  %and10 = and i32 %conv9, 4096, !dbg !444
  %tobool11 = icmp ne i32 %and10, 0, !dbg !443
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !445
  br i1 %12, label %while.body, label %while.end, !dbg !437

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !446, metadata !DIExpression()), !dbg !448
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !449
  %14 = load i64, i64* %numWritten, align 8, !dbg !450
  %mul12 = mul i64 2, %14, !dbg !451
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !449
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !452
  %15 = load i32, i32* %byte, align 4, !dbg !453
  %conv15 = trunc i32 %15 to i8, !dbg !454
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !455
  %17 = load i64, i64* %numWritten, align 8, !dbg !456
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !455
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !457
  %18 = load i64, i64* %numWritten, align 8, !dbg !458
  %inc = add i64 %18, 1, !dbg !458
  store i64 %inc, i64* %numWritten, align 8, !dbg !458
  br label %while.cond, !dbg !437, !llvm.loop !459

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !461
  ret i64 %19, !dbg !462
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !463 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !466, metadata !DIExpression()), !dbg !467
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !468, metadata !DIExpression()), !dbg !469
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !470, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !472, metadata !DIExpression()), !dbg !473
  store i64 0, i64* %numWritten, align 8, !dbg !473
  br label %while.cond, !dbg !474

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !475
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !476
  %cmp = icmp ult i64 %0, %1, !dbg !477
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !478

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !479
  %3 = load i64, i64* %numWritten, align 8, !dbg !480
  %mul = mul i64 2, %3, !dbg !481
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !479
  %4 = load i32, i32* %arrayidx, align 4, !dbg !479
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !482
  %tobool = icmp ne i32 %call, 0, !dbg !482
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !483

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !484
  %6 = load i64, i64* %numWritten, align 8, !dbg !485
  %mul1 = mul i64 2, %6, !dbg !486
  %add = add i64 %mul1, 1, !dbg !487
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !484
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !484
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !488
  %tobool4 = icmp ne i32 %call3, 0, !dbg !483
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !489
  br i1 %8, label %while.body, label %while.end, !dbg !474

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !490, metadata !DIExpression()), !dbg !492
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !493
  %10 = load i64, i64* %numWritten, align 8, !dbg !494
  %mul5 = mul i64 2, %10, !dbg !495
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !493
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !496
  %11 = load i32, i32* %byte, align 4, !dbg !497
  %conv = trunc i32 %11 to i8, !dbg !498
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !499
  %13 = load i64, i64* %numWritten, align 8, !dbg !500
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !499
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !501
  %14 = load i64, i64* %numWritten, align 8, !dbg !502
  %inc = add i64 %14, 1, !dbg !502
  store i64 %inc, i64* %numWritten, align 8, !dbg !502
  br label %while.cond, !dbg !474, !llvm.loop !503

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !505
  ret i64 %15, !dbg !506
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !507 {
entry:
  ret i32 1, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !511 {
entry:
  ret i32 0, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !513 {
entry:
  %call = call i32 @rand() #8, !dbg !514
  %rem = srem i32 %call, 2, !dbg !515
  ret i32 %rem, !dbg !516
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !517 {
entry:
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !519 {
entry:
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !521 {
entry:
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !523 {
entry:
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !551 {
entry:
  ret void, !dbg !552
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

!llvm.dbg.cu = !{!2, !55, !17}
!llvm.ident = !{!57, !57, !57}
!llvm.module.flags = !{!58, !59, !60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68_badData", scope: !2, file: !3, line: 25, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_426/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodG2BData", scope: !2, file: !3, line: 26, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodB2GData", scope: !2, file: !3, line: 27, type: !11, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !6, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_426/source_code")
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
!36 = !{!7, !6, !37, !38}
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!15, !40, !42, !44, !46, !48, !50, !52}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !17, file: !18, line: 175, type: !6, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !17, file: !18, line: 176, type: !6, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalTrue", scope: !17, file: !18, line: 181, type: !6, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalFalse", scope: !17, file: !18, line: 182, type: !6, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalFive", scope: !17, file: !18, line: 183, type: !6, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "globalArgc", scope: !17, file: !18, line: 214, type: !6, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "globalArgv", scope: !17, file: !18, line: 215, type: !54, isLocal: false, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_426/source_code")
!57 = !{!"clang version 12.0.0"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68_bad", scope: !3, file: !3, line: 33, type: !62, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{null}
!64 = !DILocalVariable(name: "data", scope: !61, file: !3, line: 35, type: !11)
!65 = !DILocation(line: 35, column: 12, scope: !61)
!66 = !DILocalVariable(name: "dataBuffer", scope: !61, file: !3, line: 36, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 100)
!70 = !DILocation(line: 36, column: 10, scope: !61)
!71 = !DILocation(line: 37, column: 12, scope: !61)
!72 = !DILocation(line: 37, column: 10, scope: !61)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !3, line: 40, type: !75)
!74 = distinct !DILexicalBlock(scope: !61, file: !3, line: 38, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 40, column: 16, scope: !74)
!79 = !DILocation(line: 40, column: 33, scope: !74)
!80 = !DILocation(line: 40, column: 26, scope: !74)
!81 = !DILocation(line: 42, column: 17, scope: !82)
!82 = distinct !DILexicalBlock(scope: !74, file: !3, line: 42, column: 13)
!83 = !DILocation(line: 42, column: 16, scope: !82)
!84 = !DILocation(line: 42, column: 25, scope: !82)
!85 = !DILocation(line: 42, column: 13, scope: !74)
!86 = !DILocation(line: 45, column: 23, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 45, column: 17)
!88 = distinct !DILexicalBlock(scope: !82, file: !3, line: 43, column: 9)
!89 = !DILocation(line: 45, column: 28, scope: !87)
!90 = !DILocation(line: 45, column: 27, scope: !87)
!91 = !DILocation(line: 45, column: 47, scope: !87)
!92 = !DILocation(line: 45, column: 46, scope: !87)
!93 = !DILocation(line: 45, column: 37, scope: !87)
!94 = !DILocation(line: 45, column: 57, scope: !87)
!95 = !DILocation(line: 45, column: 17, scope: !87)
!96 = !DILocation(line: 45, column: 64, scope: !87)
!97 = !DILocation(line: 45, column: 17, scope: !88)
!98 = !DILocation(line: 49, column: 34, scope: !99)
!99 = distinct !DILexicalBlock(scope: !87, file: !3, line: 46, column: 13)
!100 = !DILocation(line: 49, column: 27, scope: !99)
!101 = !DILocation(line: 49, column: 25, scope: !99)
!102 = !DILocation(line: 50, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !3, line: 50, column: 21)
!104 = !DILocation(line: 50, column: 29, scope: !103)
!105 = !DILocation(line: 50, column: 33, scope: !103)
!106 = !DILocation(line: 50, column: 36, scope: !103)
!107 = !DILocation(line: 50, column: 41, scope: !103)
!108 = !DILocation(line: 50, column: 48, scope: !103)
!109 = !DILocation(line: 50, column: 52, scope: !103)
!110 = !DILocation(line: 50, column: 21, scope: !99)
!111 = !DILocation(line: 52, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !103, file: !3, line: 51, column: 17)
!113 = !DILocation(line: 52, column: 26, scope: !112)
!114 = !DILocation(line: 52, column: 33, scope: !112)
!115 = !DILocation(line: 52, column: 37, scope: !112)
!116 = !DILocation(line: 53, column: 17, scope: !112)
!117 = !DILocation(line: 54, column: 13, scope: !99)
!118 = !DILocation(line: 57, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !87, file: !3, line: 56, column: 13)
!120 = !DILocation(line: 59, column: 17, scope: !119)
!121 = !DILocation(line: 59, column: 22, scope: !119)
!122 = !DILocation(line: 59, column: 31, scope: !119)
!123 = !DILocation(line: 61, column: 9, scope: !88)
!124 = !DILocation(line: 63, column: 74, scope: !61)
!125 = !DILocation(line: 63, column: 72, scope: !61)
!126 = !DILocation(line: 64, column: 5, scope: !61)
!127 = !DILocation(line: 65, column: 1, scope: !61)
!128 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 74, type: !62, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!129 = !DILocalVariable(name: "data", scope: !128, file: !3, line: 76, type: !11)
!130 = !DILocation(line: 76, column: 12, scope: !128)
!131 = !DILocalVariable(name: "dataBuffer", scope: !128, file: !3, line: 77, type: !67)
!132 = !DILocation(line: 77, column: 10, scope: !128)
!133 = !DILocation(line: 78, column: 12, scope: !128)
!134 = !DILocation(line: 78, column: 10, scope: !128)
!135 = !DILocation(line: 80, column: 12, scope: !128)
!136 = !DILocation(line: 80, column: 5, scope: !128)
!137 = !DILocation(line: 81, column: 78, scope: !128)
!138 = !DILocation(line: 81, column: 76, scope: !128)
!139 = !DILocation(line: 82, column: 5, scope: !128)
!140 = !DILocation(line: 83, column: 1, scope: !128)
!141 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 86, type: !62, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!142 = !DILocalVariable(name: "data", scope: !141, file: !3, line: 88, type: !11)
!143 = !DILocation(line: 88, column: 12, scope: !141)
!144 = !DILocalVariable(name: "dataBuffer", scope: !141, file: !3, line: 89, type: !67)
!145 = !DILocation(line: 89, column: 10, scope: !141)
!146 = !DILocation(line: 90, column: 12, scope: !141)
!147 = !DILocation(line: 90, column: 10, scope: !141)
!148 = !DILocalVariable(name: "dataLen", scope: !149, file: !3, line: 93, type: !75)
!149 = distinct !DILexicalBlock(scope: !141, file: !3, line: 91, column: 5)
!150 = !DILocation(line: 93, column: 16, scope: !149)
!151 = !DILocation(line: 93, column: 33, scope: !149)
!152 = !DILocation(line: 93, column: 26, scope: !149)
!153 = !DILocation(line: 95, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !3, line: 95, column: 13)
!155 = !DILocation(line: 95, column: 16, scope: !154)
!156 = !DILocation(line: 95, column: 25, scope: !154)
!157 = !DILocation(line: 95, column: 13, scope: !149)
!158 = !DILocation(line: 98, column: 23, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 98, column: 17)
!160 = distinct !DILexicalBlock(scope: !154, file: !3, line: 96, column: 9)
!161 = !DILocation(line: 98, column: 28, scope: !159)
!162 = !DILocation(line: 98, column: 27, scope: !159)
!163 = !DILocation(line: 98, column: 47, scope: !159)
!164 = !DILocation(line: 98, column: 46, scope: !159)
!165 = !DILocation(line: 98, column: 37, scope: !159)
!166 = !DILocation(line: 98, column: 57, scope: !159)
!167 = !DILocation(line: 98, column: 17, scope: !159)
!168 = !DILocation(line: 98, column: 64, scope: !159)
!169 = !DILocation(line: 98, column: 17, scope: !160)
!170 = !DILocation(line: 102, column: 34, scope: !171)
!171 = distinct !DILexicalBlock(scope: !159, file: !3, line: 99, column: 13)
!172 = !DILocation(line: 102, column: 27, scope: !171)
!173 = !DILocation(line: 102, column: 25, scope: !171)
!174 = !DILocation(line: 103, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !3, line: 103, column: 21)
!176 = !DILocation(line: 103, column: 29, scope: !175)
!177 = !DILocation(line: 103, column: 33, scope: !175)
!178 = !DILocation(line: 103, column: 36, scope: !175)
!179 = !DILocation(line: 103, column: 41, scope: !175)
!180 = !DILocation(line: 103, column: 48, scope: !175)
!181 = !DILocation(line: 103, column: 52, scope: !175)
!182 = !DILocation(line: 103, column: 21, scope: !171)
!183 = !DILocation(line: 105, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !175, file: !3, line: 104, column: 17)
!185 = !DILocation(line: 105, column: 26, scope: !184)
!186 = !DILocation(line: 105, column: 33, scope: !184)
!187 = !DILocation(line: 105, column: 37, scope: !184)
!188 = !DILocation(line: 106, column: 17, scope: !184)
!189 = !DILocation(line: 107, column: 13, scope: !171)
!190 = !DILocation(line: 110, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !159, file: !3, line: 109, column: 13)
!192 = !DILocation(line: 112, column: 17, scope: !191)
!193 = !DILocation(line: 112, column: 22, scope: !191)
!194 = !DILocation(line: 112, column: 31, scope: !191)
!195 = !DILocation(line: 114, column: 9, scope: !160)
!196 = !DILocation(line: 116, column: 78, scope: !141)
!197 = !DILocation(line: 116, column: 76, scope: !141)
!198 = !DILocation(line: 117, column: 5, scope: !141)
!199 = !DILocation(line: 118, column: 1, scope: !141)
!200 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68_good", scope: !3, file: !3, line: 120, type: !62, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!201 = !DILocation(line: 122, column: 5, scope: !200)
!202 = !DILocation(line: 123, column: 5, scope: !200)
!203 = !DILocation(line: 124, column: 1, scope: !200)
!204 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_badSink", scope: !56, file: !56, line: 30, type: !62, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!205 = !DILocalVariable(name: "data", scope: !204, file: !56, line: 32, type: !11)
!206 = !DILocation(line: 32, column: 12, scope: !204)
!207 = !DILocation(line: 32, column: 19, scope: !204)
!208 = !DILocation(line: 34, column: 13, scope: !204)
!209 = !DILocation(line: 34, column: 21, scope: !204)
!210 = !DILocation(line: 34, column: 5, scope: !204)
!211 = !DILocation(line: 35, column: 1, scope: !204)
!212 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodG2BSink", scope: !56, file: !56, line: 42, type: !62, scopeLine: 43, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!213 = !DILocalVariable(name: "data", scope: !212, file: !56, line: 44, type: !11)
!214 = !DILocation(line: 44, column: 12, scope: !212)
!215 = !DILocation(line: 44, column: 19, scope: !212)
!216 = !DILocation(line: 46, column: 13, scope: !212)
!217 = !DILocation(line: 46, column: 21, scope: !212)
!218 = !DILocation(line: 46, column: 5, scope: !212)
!219 = !DILocation(line: 47, column: 1, scope: !212)
!220 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodB2GSink", scope: !56, file: !56, line: 50, type: !62, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!221 = !DILocalVariable(name: "data", scope: !220, file: !56, line: 52, type: !11)
!222 = !DILocation(line: 52, column: 12, scope: !220)
!223 = !DILocation(line: 52, column: 19, scope: !220)
!224 = !DILocation(line: 54, column: 13, scope: !220)
!225 = !DILocation(line: 54, column: 29, scope: !220)
!226 = !DILocation(line: 54, column: 5, scope: !220)
!227 = !DILocation(line: 55, column: 1, scope: !220)
!228 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !229, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !11}
!231 = !DILocalVariable(name: "line", arg: 1, scope: !228, file: !18, line: 11, type: !11)
!232 = !DILocation(line: 11, column: 25, scope: !228)
!233 = !DILocation(line: 13, column: 1, scope: !228)
!234 = !DILocation(line: 14, column: 8, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !18, line: 14, column: 8)
!236 = !DILocation(line: 14, column: 13, scope: !235)
!237 = !DILocation(line: 14, column: 8, scope: !228)
!238 = !DILocation(line: 16, column: 24, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !18, line: 15, column: 5)
!240 = !DILocation(line: 16, column: 9, scope: !239)
!241 = !DILocation(line: 17, column: 5, scope: !239)
!242 = !DILocation(line: 18, column: 5, scope: !228)
!243 = !DILocation(line: 19, column: 1, scope: !228)
!244 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !229, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!245 = !DILocalVariable(name: "line", arg: 1, scope: !244, file: !18, line: 20, type: !11)
!246 = !DILocation(line: 20, column: 29, scope: !244)
!247 = !DILocation(line: 22, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !18, line: 22, column: 8)
!249 = !DILocation(line: 22, column: 13, scope: !248)
!250 = !DILocation(line: 22, column: 8, scope: !244)
!251 = !DILocation(line: 24, column: 24, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !18, line: 23, column: 5)
!253 = !DILocation(line: 24, column: 9, scope: !252)
!254 = !DILocation(line: 25, column: 5, scope: !252)
!255 = !DILocation(line: 26, column: 1, scope: !244)
!256 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !257, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !6)
!261 = !DILocalVariable(name: "line", arg: 1, scope: !256, file: !18, line: 27, type: !259)
!262 = !DILocation(line: 27, column: 29, scope: !256)
!263 = !DILocation(line: 29, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !256, file: !18, line: 29, column: 8)
!265 = !DILocation(line: 29, column: 13, scope: !264)
!266 = !DILocation(line: 29, column: 8, scope: !256)
!267 = !DILocation(line: 31, column: 27, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !18, line: 30, column: 5)
!269 = !DILocation(line: 31, column: 9, scope: !268)
!270 = !DILocation(line: 32, column: 5, scope: !268)
!271 = !DILocation(line: 33, column: 1, scope: !256)
!272 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !273, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !6}
!275 = !DILocalVariable(name: "intNumber", arg: 1, scope: !272, file: !18, line: 35, type: !6)
!276 = !DILocation(line: 35, column: 24, scope: !272)
!277 = !DILocation(line: 37, column: 20, scope: !272)
!278 = !DILocation(line: 37, column: 5, scope: !272)
!279 = !DILocation(line: 38, column: 1, scope: !272)
!280 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !281, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !283}
!283 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!284 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !280, file: !18, line: 40, type: !283)
!285 = !DILocation(line: 40, column: 28, scope: !280)
!286 = !DILocation(line: 42, column: 21, scope: !280)
!287 = !DILocation(line: 42, column: 5, scope: !280)
!288 = !DILocation(line: 43, column: 1, scope: !280)
!289 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !290, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !292}
!292 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!293 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !289, file: !18, line: 45, type: !292)
!294 = !DILocation(line: 45, column: 28, scope: !289)
!295 = !DILocation(line: 47, column: 20, scope: !289)
!296 = !DILocation(line: 47, column: 5, scope: !289)
!297 = !DILocation(line: 48, column: 1, scope: !289)
!298 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !299, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !301}
!301 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!302 = !DILocalVariable(name: "longNumber", arg: 1, scope: !298, file: !18, line: 50, type: !301)
!303 = !DILocation(line: 50, column: 26, scope: !298)
!304 = !DILocation(line: 52, column: 21, scope: !298)
!305 = !DILocation(line: 52, column: 5, scope: !298)
!306 = !DILocation(line: 53, column: 1, scope: !298)
!307 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !308, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !311, line: 27, baseType: !312)
!311 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !313, line: 44, baseType: !301)
!313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!314 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !307, file: !18, line: 55, type: !310)
!315 = !DILocation(line: 55, column: 33, scope: !307)
!316 = !DILocation(line: 57, column: 29, scope: !307)
!317 = !DILocation(line: 57, column: 5, scope: !307)
!318 = !DILocation(line: 58, column: 1, scope: !307)
!319 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !320, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !75}
!322 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !319, file: !18, line: 60, type: !75)
!323 = !DILocation(line: 60, column: 29, scope: !319)
!324 = !DILocation(line: 62, column: 21, scope: !319)
!325 = !DILocation(line: 62, column: 5, scope: !319)
!326 = !DILocation(line: 63, column: 1, scope: !319)
!327 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !328, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !12}
!330 = !DILocalVariable(name: "charHex", arg: 1, scope: !327, file: !18, line: 65, type: !12)
!331 = !DILocation(line: 65, column: 29, scope: !327)
!332 = !DILocation(line: 67, column: 22, scope: !327)
!333 = !DILocation(line: 67, column: 5, scope: !327)
!334 = !DILocation(line: 68, column: 1, scope: !327)
!335 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !336, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !260}
!338 = !DILocalVariable(name: "wideChar", arg: 1, scope: !335, file: !18, line: 70, type: !260)
!339 = !DILocation(line: 70, column: 29, scope: !335)
!340 = !DILocalVariable(name: "s", scope: !335, file: !18, line: 74, type: !341)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 2)
!344 = !DILocation(line: 74, column: 13, scope: !335)
!345 = !DILocation(line: 75, column: 16, scope: !335)
!346 = !DILocation(line: 75, column: 9, scope: !335)
!347 = !DILocation(line: 75, column: 14, scope: !335)
!348 = !DILocation(line: 76, column: 9, scope: !335)
!349 = !DILocation(line: 76, column: 14, scope: !335)
!350 = !DILocation(line: 77, column: 21, scope: !335)
!351 = !DILocation(line: 77, column: 5, scope: !335)
!352 = !DILocation(line: 78, column: 1, scope: !335)
!353 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !354, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !22}
!356 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !353, file: !18, line: 80, type: !22)
!357 = !DILocation(line: 80, column: 33, scope: !353)
!358 = !DILocation(line: 82, column: 20, scope: !353)
!359 = !DILocation(line: 82, column: 5, scope: !353)
!360 = !DILocation(line: 83, column: 1, scope: !353)
!361 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !362, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !38}
!364 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !361, file: !18, line: 85, type: !38)
!365 = !DILocation(line: 85, column: 45, scope: !361)
!366 = !DILocation(line: 87, column: 22, scope: !361)
!367 = !DILocation(line: 87, column: 5, scope: !361)
!368 = !DILocation(line: 88, column: 1, scope: !361)
!369 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !370, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !372}
!372 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!373 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !369, file: !18, line: 90, type: !372)
!374 = !DILocation(line: 90, column: 29, scope: !369)
!375 = !DILocation(line: 92, column: 20, scope: !369)
!376 = !DILocation(line: 92, column: 5, scope: !369)
!377 = !DILocation(line: 93, column: 1, scope: !369)
!378 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !379, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !383, line: 100, baseType: !384)
!383 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_426/source_code")
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !383, line: 96, size: 64, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !384, file: !383, line: 98, baseType: !6, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !384, file: !383, line: 99, baseType: !6, size: 32, offset: 32)
!388 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !378, file: !18, line: 95, type: !381)
!389 = !DILocation(line: 95, column: 40, scope: !378)
!390 = !DILocation(line: 97, column: 26, scope: !378)
!391 = !DILocation(line: 97, column: 47, scope: !378)
!392 = !DILocation(line: 97, column: 55, scope: !378)
!393 = !DILocation(line: 97, column: 76, scope: !378)
!394 = !DILocation(line: 97, column: 5, scope: !378)
!395 = !DILocation(line: 98, column: 1, scope: !378)
!396 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !397, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399, !75}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!400 = !DILocalVariable(name: "bytes", arg: 1, scope: !396, file: !18, line: 100, type: !399)
!401 = !DILocation(line: 100, column: 38, scope: !396)
!402 = !DILocalVariable(name: "numBytes", arg: 2, scope: !396, file: !18, line: 100, type: !75)
!403 = !DILocation(line: 100, column: 52, scope: !396)
!404 = !DILocalVariable(name: "i", scope: !396, file: !18, line: 102, type: !75)
!405 = !DILocation(line: 102, column: 12, scope: !396)
!406 = !DILocation(line: 103, column: 12, scope: !407)
!407 = distinct !DILexicalBlock(scope: !396, file: !18, line: 103, column: 5)
!408 = !DILocation(line: 103, column: 10, scope: !407)
!409 = !DILocation(line: 103, column: 17, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !18, line: 103, column: 5)
!411 = !DILocation(line: 103, column: 21, scope: !410)
!412 = !DILocation(line: 103, column: 19, scope: !410)
!413 = !DILocation(line: 103, column: 5, scope: !407)
!414 = !DILocation(line: 105, column: 24, scope: !415)
!415 = distinct !DILexicalBlock(scope: !410, file: !18, line: 104, column: 5)
!416 = !DILocation(line: 105, column: 30, scope: !415)
!417 = !DILocation(line: 105, column: 9, scope: !415)
!418 = !DILocation(line: 106, column: 5, scope: !415)
!419 = !DILocation(line: 103, column: 31, scope: !410)
!420 = !DILocation(line: 103, column: 5, scope: !410)
!421 = distinct !{!421, !413, !422, !423}
!422 = !DILocation(line: 106, column: 5, scope: !407)
!423 = !{!"llvm.loop.mustprogress"}
!424 = !DILocation(line: 107, column: 5, scope: !396)
!425 = !DILocation(line: 108, column: 1, scope: !396)
!426 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !427, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!427 = !DISubroutineType(types: !428)
!428 = !{!75, !399, !75, !11}
!429 = !DILocalVariable(name: "bytes", arg: 1, scope: !426, file: !18, line: 113, type: !399)
!430 = !DILocation(line: 113, column: 39, scope: !426)
!431 = !DILocalVariable(name: "numBytes", arg: 2, scope: !426, file: !18, line: 113, type: !75)
!432 = !DILocation(line: 113, column: 53, scope: !426)
!433 = !DILocalVariable(name: "hex", arg: 3, scope: !426, file: !18, line: 113, type: !11)
!434 = !DILocation(line: 113, column: 71, scope: !426)
!435 = !DILocalVariable(name: "numWritten", scope: !426, file: !18, line: 115, type: !75)
!436 = !DILocation(line: 115, column: 12, scope: !426)
!437 = !DILocation(line: 121, column: 5, scope: !426)
!438 = !DILocation(line: 121, column: 12, scope: !426)
!439 = !DILocation(line: 121, column: 25, scope: !426)
!440 = !DILocation(line: 121, column: 23, scope: !426)
!441 = !DILocation(line: 121, column: 34, scope: !426)
!442 = !DILocation(line: 121, column: 37, scope: !426)
!443 = !DILocation(line: 121, column: 67, scope: !426)
!444 = !DILocation(line: 121, column: 70, scope: !426)
!445 = !DILocation(line: 0, scope: !426)
!446 = !DILocalVariable(name: "byte", scope: !447, file: !18, line: 123, type: !6)
!447 = distinct !DILexicalBlock(scope: !426, file: !18, line: 122, column: 5)
!448 = !DILocation(line: 123, column: 13, scope: !447)
!449 = !DILocation(line: 124, column: 17, scope: !447)
!450 = !DILocation(line: 124, column: 25, scope: !447)
!451 = !DILocation(line: 124, column: 23, scope: !447)
!452 = !DILocation(line: 124, column: 9, scope: !447)
!453 = !DILocation(line: 125, column: 45, scope: !447)
!454 = !DILocation(line: 125, column: 29, scope: !447)
!455 = !DILocation(line: 125, column: 9, scope: !447)
!456 = !DILocation(line: 125, column: 15, scope: !447)
!457 = !DILocation(line: 125, column: 27, scope: !447)
!458 = !DILocation(line: 126, column: 9, scope: !447)
!459 = distinct !{!459, !437, !460, !423}
!460 = !DILocation(line: 127, column: 5, scope: !426)
!461 = !DILocation(line: 129, column: 12, scope: !426)
!462 = !DILocation(line: 129, column: 5, scope: !426)
!463 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !464, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!464 = !DISubroutineType(types: !465)
!465 = !{!75, !399, !75, !259}
!466 = !DILocalVariable(name: "bytes", arg: 1, scope: !463, file: !18, line: 135, type: !399)
!467 = !DILocation(line: 135, column: 41, scope: !463)
!468 = !DILocalVariable(name: "numBytes", arg: 2, scope: !463, file: !18, line: 135, type: !75)
!469 = !DILocation(line: 135, column: 55, scope: !463)
!470 = !DILocalVariable(name: "hex", arg: 3, scope: !463, file: !18, line: 135, type: !259)
!471 = !DILocation(line: 135, column: 76, scope: !463)
!472 = !DILocalVariable(name: "numWritten", scope: !463, file: !18, line: 137, type: !75)
!473 = !DILocation(line: 137, column: 12, scope: !463)
!474 = !DILocation(line: 143, column: 5, scope: !463)
!475 = !DILocation(line: 143, column: 12, scope: !463)
!476 = !DILocation(line: 143, column: 25, scope: !463)
!477 = !DILocation(line: 143, column: 23, scope: !463)
!478 = !DILocation(line: 143, column: 34, scope: !463)
!479 = !DILocation(line: 143, column: 47, scope: !463)
!480 = !DILocation(line: 143, column: 55, scope: !463)
!481 = !DILocation(line: 143, column: 53, scope: !463)
!482 = !DILocation(line: 143, column: 37, scope: !463)
!483 = !DILocation(line: 143, column: 68, scope: !463)
!484 = !DILocation(line: 143, column: 81, scope: !463)
!485 = !DILocation(line: 143, column: 89, scope: !463)
!486 = !DILocation(line: 143, column: 87, scope: !463)
!487 = !DILocation(line: 143, column: 100, scope: !463)
!488 = !DILocation(line: 143, column: 71, scope: !463)
!489 = !DILocation(line: 0, scope: !463)
!490 = !DILocalVariable(name: "byte", scope: !491, file: !18, line: 145, type: !6)
!491 = distinct !DILexicalBlock(scope: !463, file: !18, line: 144, column: 5)
!492 = !DILocation(line: 145, column: 13, scope: !491)
!493 = !DILocation(line: 146, column: 18, scope: !491)
!494 = !DILocation(line: 146, column: 26, scope: !491)
!495 = !DILocation(line: 146, column: 24, scope: !491)
!496 = !DILocation(line: 146, column: 9, scope: !491)
!497 = !DILocation(line: 147, column: 45, scope: !491)
!498 = !DILocation(line: 147, column: 29, scope: !491)
!499 = !DILocation(line: 147, column: 9, scope: !491)
!500 = !DILocation(line: 147, column: 15, scope: !491)
!501 = !DILocation(line: 147, column: 27, scope: !491)
!502 = !DILocation(line: 148, column: 9, scope: !491)
!503 = distinct !{!503, !474, !504, !423}
!504 = !DILocation(line: 149, column: 5, scope: !463)
!505 = !DILocation(line: 151, column: 12, scope: !463)
!506 = !DILocation(line: 151, column: 5, scope: !463)
!507 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !508, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!508 = !DISubroutineType(types: !509)
!509 = !{!6}
!510 = !DILocation(line: 158, column: 5, scope: !507)
!511 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !508, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!512 = !DILocation(line: 163, column: 5, scope: !511)
!513 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !508, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!514 = !DILocation(line: 168, column: 13, scope: !513)
!515 = !DILocation(line: 168, column: 20, scope: !513)
!516 = !DILocation(line: 168, column: 5, scope: !513)
!517 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !62, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!518 = !DILocation(line: 187, column: 16, scope: !517)
!519 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !62, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!520 = !DILocation(line: 188, column: 16, scope: !519)
!521 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !62, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!522 = !DILocation(line: 189, column: 16, scope: !521)
!523 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !62, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!524 = !DILocation(line: 190, column: 16, scope: !523)
!525 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !62, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!526 = !DILocation(line: 191, column: 16, scope: !525)
!527 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !62, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!528 = !DILocation(line: 192, column: 16, scope: !527)
!529 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !62, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!530 = !DILocation(line: 193, column: 16, scope: !529)
!531 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !62, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!532 = !DILocation(line: 194, column: 16, scope: !531)
!533 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !62, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!534 = !DILocation(line: 195, column: 16, scope: !533)
!535 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !62, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!536 = !DILocation(line: 198, column: 15, scope: !535)
!537 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !62, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!538 = !DILocation(line: 199, column: 15, scope: !537)
!539 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !62, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!540 = !DILocation(line: 200, column: 15, scope: !539)
!541 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !62, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!542 = !DILocation(line: 201, column: 15, scope: !541)
!543 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !62, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!544 = !DILocation(line: 202, column: 15, scope: !543)
!545 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !62, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!546 = !DILocation(line: 203, column: 15, scope: !545)
!547 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !62, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!548 = !DILocation(line: 204, column: 15, scope: !547)
!549 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !62, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!550 = !DILocation(line: 205, column: 15, scope: !549)
!551 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !62, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!552 = !DILocation(line: 206, column: 15, scope: !551)
