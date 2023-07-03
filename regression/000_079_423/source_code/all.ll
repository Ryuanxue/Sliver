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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_65_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !59, metadata !DIExpression()), !dbg !63
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_badSink, void (i8*)** %funcPtr, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !64, metadata !DIExpression()), !dbg !68
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !68
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !68
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !69
  store i8* %arraydecay, i8** %data, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !71, metadata !DIExpression()), !dbg !76
  %1 = load i8*, i8** %data, align 8, !dbg !77
  %call = call i64 @strlen(i8* %1) #7, !dbg !78
  store i64 %call, i64* %dataLen, align 8, !dbg !76
  %2 = load i64, i64* %dataLen, align 8, !dbg !79
  %sub = sub i64 100, %2, !dbg !81
  %cmp = icmp ugt i64 %sub, 1, !dbg !82
  br i1 %cmp, label %if.then, label %if.end18, !dbg !83

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !84
  %4 = load i64, i64* %dataLen, align 8, !dbg !87
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !88
  %5 = load i64, i64* %dataLen, align 8, !dbg !89
  %sub1 = sub i64 100, %5, !dbg !90
  %conv = trunc i64 %sub1 to i32, !dbg !91
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !92
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !93
  %cmp3 = icmp ne i8* %call2, null, !dbg !94
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !95

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !96
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !98
  store i64 %call6, i64* %dataLen, align 8, !dbg !99
  %8 = load i64, i64* %dataLen, align 8, !dbg !100
  %cmp7 = icmp ugt i64 %8, 0, !dbg !102
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !103

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !104
  %10 = load i64, i64* %dataLen, align 8, !dbg !105
  %sub9 = sub i64 %10, 1, !dbg !106
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !104
  %11 = load i8, i8* %arrayidx, align 1, !dbg !104
  %conv10 = sext i8 %11 to i32, !dbg !104
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !107
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !108

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !109
  %13 = load i64, i64* %dataLen, align 8, !dbg !111
  %sub14 = sub i64 %13, 1, !dbg !112
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !109
  store i8 0, i8* %arrayidx15, align 1, !dbg !113
  br label %if.end, !dbg !114

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !115

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !116
  %14 = load i8*, i8** %data, align 8, !dbg !118
  %15 = load i64, i64* %dataLen, align 8, !dbg !119
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !118
  store i8 0, i8* %arrayidx16, align 1, !dbg !120
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !121

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !122
  %17 = load i8*, i8** %data, align 8, !dbg !123
  call void %16(i8* %17), !dbg !122
  ret void, !dbg !124
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !125 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !128, metadata !DIExpression()), !dbg !129
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !131
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !132
  store i8* %arraydecay, i8** %data, align 8, !dbg !133
  %1 = load i8*, i8** %data, align 8, !dbg !134
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !135
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !136
  %3 = load i8*, i8** %data, align 8, !dbg !137
  call void %2(i8* %3), !dbg !136
  ret void, !dbg !138
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !139 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !142, metadata !DIExpression()), !dbg !143
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !143
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
  %16 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !196
  %17 = load i8*, i8** %data, align 8, !dbg !197
  call void %16(i8* %17), !dbg !196
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_65_good() #0 !dbg !199 {
entry:
  call void @goodG2B(), !dbg !200
  call void @goodB2G(), !dbg !201
  ret void, !dbg !202
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_badSink(i8* %data) #0 !dbg !203 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !204, metadata !DIExpression()), !dbg !205
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !206
  %1 = load i8*, i8** %data.addr, align 8, !dbg !207
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !208
  ret void, !dbg !209
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_goodG2BSink(i8* %data) #0 !dbg !210 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !211, metadata !DIExpression()), !dbg !212
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !213
  %1 = load i8*, i8** %data.addr, align 8, !dbg !214
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !215
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_goodB2GSink(i8* %data) #0 !dbg !217 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !220
  %1 = load i8*, i8** %data.addr, align 8, !dbg !221
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %1), !dbg !222
  ret void, !dbg !223
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !224 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !225, metadata !DIExpression()), !dbg !226
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !227
  %0 = load i8*, i8** %line.addr, align 8, !dbg !228
  %cmp = icmp ne i8* %0, null, !dbg !230
  br i1 %cmp, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !232
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !234
  br label %if.end, !dbg !235

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !236
  ret void, !dbg !237
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !238 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load i8*, i8** %line.addr, align 8, !dbg !241
  %cmp = icmp ne i8* %0, null, !dbg !243
  br i1 %cmp, label %if.then, label %if.end, !dbg !244

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !245
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !247
  br label %if.end, !dbg !248

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !249
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !250 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !255, metadata !DIExpression()), !dbg !256
  %0 = load i32*, i32** %line.addr, align 8, !dbg !257
  %cmp = icmp ne i32* %0, null, !dbg !259
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !261
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !263
  br label %if.end, !dbg !264

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !265
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !266 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !271
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !272
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !274 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !280
  %conv = sext i16 %0 to i32, !dbg !280
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !281
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !283 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !289
  %conv = fpext float %0 to double, !dbg !289
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !290
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !292 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !298
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.12, i64 0, i64 0), i64 %0), !dbg !299
  ret void, !dbg !300
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !301 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !308, metadata !DIExpression()), !dbg !309
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !310
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.12, i64 0, i64 0), i64 %0), !dbg !311
  ret void, !dbg !312
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !313 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !316, metadata !DIExpression()), !dbg !317
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !318
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !319
  ret void, !dbg !320
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !321 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !326
  %conv = sext i8 %0 to i32, !dbg !326
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !327
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !329 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !332, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !334, metadata !DIExpression()), !dbg !338
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !339
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !340
  store i32 %0, i32* %arrayidx, align 4, !dbg !341
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !342
  store i32 0, i32* %arrayidx1, align 4, !dbg !343
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.13, i64 0, i64 0), i32* %arraydecay), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !347 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !352
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !353
  ret void, !dbg !354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !355 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !360
  %conv = zext i8 %0 to i32, !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !363 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !372 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !384
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !385
  %1 = load i32, i32* %intOne, align 4, !dbg !385
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !386
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !387
  %3 = load i32, i32* %intTwo, align 4, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !390 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !394, metadata !DIExpression()), !dbg !395
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata i64* %i, metadata !398, metadata !DIExpression()), !dbg !399
  store i64 0, i64* %i, align 8, !dbg !400
  br label %for.cond, !dbg !402

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !403
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !405
  %cmp = icmp ult i64 %0, %1, !dbg !406
  br i1 %cmp, label %for.body, label %for.end, !dbg !407

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !408
  %3 = load i64, i64* %i, align 8, !dbg !410
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !408
  %4 = load i8, i8* %arrayidx, align 1, !dbg !408
  %conv = zext i8 %4 to i32, !dbg !408
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !411
  br label %for.inc, !dbg !412

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !413
  %inc = add i64 %5, 1, !dbg !413
  store i64 %inc, i64* %i, align 8, !dbg !413
  br label %for.cond, !dbg !414, !llvm.loop !415

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !418
  ret void, !dbg !419
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !420 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !423, metadata !DIExpression()), !dbg !424
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !425, metadata !DIExpression()), !dbg !426
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !427, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !429, metadata !DIExpression()), !dbg !430
  store i64 0, i64* %numWritten, align 8, !dbg !430
  br label %while.cond, !dbg !431

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !432
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !433
  %cmp = icmp ult i64 %0, %1, !dbg !434
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !435

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !436
  %2 = load i16*, i16** %call, align 8, !dbg !436
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !436
  %4 = load i64, i64* %numWritten, align 8, !dbg !436
  %mul = mul i64 2, %4, !dbg !436
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !436
  %5 = load i8, i8* %arrayidx, align 1, !dbg !436
  %conv = sext i8 %5 to i32, !dbg !436
  %idxprom = sext i32 %conv to i64, !dbg !436
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !436
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !436
  %conv2 = zext i16 %6 to i32, !dbg !436
  %and = and i32 %conv2, 4096, !dbg !436
  %tobool = icmp ne i32 %and, 0, !dbg !436
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !437

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !438
  %7 = load i16*, i16** %call3, align 8, !dbg !438
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !438
  %9 = load i64, i64* %numWritten, align 8, !dbg !438
  %mul4 = mul i64 2, %9, !dbg !438
  %add = add i64 %mul4, 1, !dbg !438
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !438
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !438
  %conv6 = sext i8 %10 to i32, !dbg !438
  %idxprom7 = sext i32 %conv6 to i64, !dbg !438
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !438
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !438
  %conv9 = zext i16 %11 to i32, !dbg !438
  %and10 = and i32 %conv9, 4096, !dbg !438
  %tobool11 = icmp ne i32 %and10, 0, !dbg !437
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !439
  br i1 %12, label %while.body, label %while.end, !dbg !431

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !440, metadata !DIExpression()), !dbg !442
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !443
  %14 = load i64, i64* %numWritten, align 8, !dbg !444
  %mul12 = mul i64 2, %14, !dbg !445
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !443
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !446
  %15 = load i32, i32* %byte, align 4, !dbg !447
  %conv15 = trunc i32 %15 to i8, !dbg !448
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !449
  %17 = load i64, i64* %numWritten, align 8, !dbg !450
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !449
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !451
  %18 = load i64, i64* %numWritten, align 8, !dbg !452
  %inc = add i64 %18, 1, !dbg !452
  store i64 %inc, i64* %numWritten, align 8, !dbg !452
  br label %while.cond, !dbg !431, !llvm.loop !453

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !455
  ret i64 %19, !dbg !456
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !457 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !460, metadata !DIExpression()), !dbg !461
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !462, metadata !DIExpression()), !dbg !463
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !464, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !466, metadata !DIExpression()), !dbg !467
  store i64 0, i64* %numWritten, align 8, !dbg !467
  br label %while.cond, !dbg !468

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !469
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !470
  %cmp = icmp ult i64 %0, %1, !dbg !471
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !472

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !473
  %3 = load i64, i64* %numWritten, align 8, !dbg !474
  %mul = mul i64 2, %3, !dbg !475
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !473
  %4 = load i32, i32* %arrayidx, align 4, !dbg !473
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !476
  %tobool = icmp ne i32 %call, 0, !dbg !476
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !477

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !478
  %6 = load i64, i64* %numWritten, align 8, !dbg !479
  %mul1 = mul i64 2, %6, !dbg !480
  %add = add i64 %mul1, 1, !dbg !481
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !478
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !478
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !482
  %tobool4 = icmp ne i32 %call3, 0, !dbg !477
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !483
  br i1 %8, label %while.body, label %while.end, !dbg !468

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !484, metadata !DIExpression()), !dbg !486
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !487
  %10 = load i64, i64* %numWritten, align 8, !dbg !488
  %mul5 = mul i64 2, %10, !dbg !489
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !487
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !490
  %11 = load i32, i32* %byte, align 4, !dbg !491
  %conv = trunc i32 %11 to i8, !dbg !492
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !493
  %13 = load i64, i64* %numWritten, align 8, !dbg !494
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !493
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !495
  %14 = load i64, i64* %numWritten, align 8, !dbg !496
  %inc = add i64 %14, 1, !dbg !496
  store i64 %inc, i64* %numWritten, align 8, !dbg !496
  br label %while.cond, !dbg !468, !llvm.loop !497

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !499
  ret i64 %15, !dbg !500
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !501 {
entry:
  ret i32 1, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !505 {
entry:
  ret i32 0, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !507 {
entry:
  %call = call i32 @rand() #8, !dbg !508
  %rem = srem i32 %call, 2, !dbg !509
  ret i32 %rem, !dbg !510
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !511 {
entry:
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !513 {
entry:
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !515 {
entry:
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !517 {
entry:
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !519 {
entry:
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !521 {
entry:
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !523 {
entry:
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !545 {
entry:
  ret void, !dbg !546
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_423/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_423/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_65b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_423/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_65_bad", scope: !45, file: !45, line: 29, type: !55, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 31, type: !42)
!58 = !DILocation(line: 31, column: 12, scope: !54)
!59 = !DILocalVariable(name: "funcPtr", scope: !54, file: !45, line: 33, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !42}
!63 = !DILocation(line: 33, column: 12, scope: !54)
!64 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 34, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 100)
!68 = !DILocation(line: 34, column: 10, scope: !54)
!69 = !DILocation(line: 35, column: 12, scope: !54)
!70 = !DILocation(line: 35, column: 10, scope: !54)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !45, line: 38, type: !73)
!72 = distinct !DILexicalBlock(scope: !54, file: !45, line: 36, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DILocation(line: 38, column: 16, scope: !72)
!77 = !DILocation(line: 38, column: 33, scope: !72)
!78 = !DILocation(line: 38, column: 26, scope: !72)
!79 = !DILocation(line: 40, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !72, file: !45, line: 40, column: 13)
!81 = !DILocation(line: 40, column: 16, scope: !80)
!82 = !DILocation(line: 40, column: 25, scope: !80)
!83 = !DILocation(line: 40, column: 13, scope: !72)
!84 = !DILocation(line: 43, column: 23, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !45, line: 43, column: 17)
!86 = distinct !DILexicalBlock(scope: !80, file: !45, line: 41, column: 9)
!87 = !DILocation(line: 43, column: 28, scope: !85)
!88 = !DILocation(line: 43, column: 27, scope: !85)
!89 = !DILocation(line: 43, column: 47, scope: !85)
!90 = !DILocation(line: 43, column: 46, scope: !85)
!91 = !DILocation(line: 43, column: 37, scope: !85)
!92 = !DILocation(line: 43, column: 57, scope: !85)
!93 = !DILocation(line: 43, column: 17, scope: !85)
!94 = !DILocation(line: 43, column: 64, scope: !85)
!95 = !DILocation(line: 43, column: 17, scope: !86)
!96 = !DILocation(line: 47, column: 34, scope: !97)
!97 = distinct !DILexicalBlock(scope: !85, file: !45, line: 44, column: 13)
!98 = !DILocation(line: 47, column: 27, scope: !97)
!99 = !DILocation(line: 47, column: 25, scope: !97)
!100 = !DILocation(line: 48, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !45, line: 48, column: 21)
!102 = !DILocation(line: 48, column: 29, scope: !101)
!103 = !DILocation(line: 48, column: 33, scope: !101)
!104 = !DILocation(line: 48, column: 36, scope: !101)
!105 = !DILocation(line: 48, column: 41, scope: !101)
!106 = !DILocation(line: 48, column: 48, scope: !101)
!107 = !DILocation(line: 48, column: 52, scope: !101)
!108 = !DILocation(line: 48, column: 21, scope: !97)
!109 = !DILocation(line: 50, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !101, file: !45, line: 49, column: 17)
!111 = !DILocation(line: 50, column: 26, scope: !110)
!112 = !DILocation(line: 50, column: 33, scope: !110)
!113 = !DILocation(line: 50, column: 37, scope: !110)
!114 = !DILocation(line: 51, column: 17, scope: !110)
!115 = !DILocation(line: 52, column: 13, scope: !97)
!116 = !DILocation(line: 55, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !85, file: !45, line: 54, column: 13)
!118 = !DILocation(line: 57, column: 17, scope: !117)
!119 = !DILocation(line: 57, column: 22, scope: !117)
!120 = !DILocation(line: 57, column: 31, scope: !117)
!121 = !DILocation(line: 59, column: 9, scope: !86)
!122 = !DILocation(line: 62, column: 5, scope: !54)
!123 = !DILocation(line: 62, column: 13, scope: !54)
!124 = !DILocation(line: 63, column: 1, scope: !54)
!125 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 71, type: !55, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!126 = !DILocalVariable(name: "data", scope: !125, file: !45, line: 73, type: !42)
!127 = !DILocation(line: 73, column: 12, scope: !125)
!128 = !DILocalVariable(name: "funcPtr", scope: !125, file: !45, line: 74, type: !60)
!129 = !DILocation(line: 74, column: 12, scope: !125)
!130 = !DILocalVariable(name: "dataBuffer", scope: !125, file: !45, line: 75, type: !65)
!131 = !DILocation(line: 75, column: 10, scope: !125)
!132 = !DILocation(line: 76, column: 12, scope: !125)
!133 = !DILocation(line: 76, column: 10, scope: !125)
!134 = !DILocation(line: 78, column: 12, scope: !125)
!135 = !DILocation(line: 78, column: 5, scope: !125)
!136 = !DILocation(line: 79, column: 5, scope: !125)
!137 = !DILocation(line: 79, column: 13, scope: !125)
!138 = !DILocation(line: 80, column: 1, scope: !125)
!139 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 84, type: !55, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!140 = !DILocalVariable(name: "data", scope: !139, file: !45, line: 86, type: !42)
!141 = !DILocation(line: 86, column: 12, scope: !139)
!142 = !DILocalVariable(name: "funcPtr", scope: !139, file: !45, line: 87, type: !60)
!143 = !DILocation(line: 87, column: 12, scope: !139)
!144 = !DILocalVariable(name: "dataBuffer", scope: !139, file: !45, line: 88, type: !65)
!145 = !DILocation(line: 88, column: 10, scope: !139)
!146 = !DILocation(line: 89, column: 12, scope: !139)
!147 = !DILocation(line: 89, column: 10, scope: !139)
!148 = !DILocalVariable(name: "dataLen", scope: !149, file: !45, line: 92, type: !73)
!149 = distinct !DILexicalBlock(scope: !139, file: !45, line: 90, column: 5)
!150 = !DILocation(line: 92, column: 16, scope: !149)
!151 = !DILocation(line: 92, column: 33, scope: !149)
!152 = !DILocation(line: 92, column: 26, scope: !149)
!153 = !DILocation(line: 94, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !45, line: 94, column: 13)
!155 = !DILocation(line: 94, column: 16, scope: !154)
!156 = !DILocation(line: 94, column: 25, scope: !154)
!157 = !DILocation(line: 94, column: 13, scope: !149)
!158 = !DILocation(line: 97, column: 23, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !45, line: 97, column: 17)
!160 = distinct !DILexicalBlock(scope: !154, file: !45, line: 95, column: 9)
!161 = !DILocation(line: 97, column: 28, scope: !159)
!162 = !DILocation(line: 97, column: 27, scope: !159)
!163 = !DILocation(line: 97, column: 47, scope: !159)
!164 = !DILocation(line: 97, column: 46, scope: !159)
!165 = !DILocation(line: 97, column: 37, scope: !159)
!166 = !DILocation(line: 97, column: 57, scope: !159)
!167 = !DILocation(line: 97, column: 17, scope: !159)
!168 = !DILocation(line: 97, column: 64, scope: !159)
!169 = !DILocation(line: 97, column: 17, scope: !160)
!170 = !DILocation(line: 101, column: 34, scope: !171)
!171 = distinct !DILexicalBlock(scope: !159, file: !45, line: 98, column: 13)
!172 = !DILocation(line: 101, column: 27, scope: !171)
!173 = !DILocation(line: 101, column: 25, scope: !171)
!174 = !DILocation(line: 102, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !45, line: 102, column: 21)
!176 = !DILocation(line: 102, column: 29, scope: !175)
!177 = !DILocation(line: 102, column: 33, scope: !175)
!178 = !DILocation(line: 102, column: 36, scope: !175)
!179 = !DILocation(line: 102, column: 41, scope: !175)
!180 = !DILocation(line: 102, column: 48, scope: !175)
!181 = !DILocation(line: 102, column: 52, scope: !175)
!182 = !DILocation(line: 102, column: 21, scope: !171)
!183 = !DILocation(line: 104, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !175, file: !45, line: 103, column: 17)
!185 = !DILocation(line: 104, column: 26, scope: !184)
!186 = !DILocation(line: 104, column: 33, scope: !184)
!187 = !DILocation(line: 104, column: 37, scope: !184)
!188 = !DILocation(line: 105, column: 17, scope: !184)
!189 = !DILocation(line: 106, column: 13, scope: !171)
!190 = !DILocation(line: 109, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !159, file: !45, line: 108, column: 13)
!192 = !DILocation(line: 111, column: 17, scope: !191)
!193 = !DILocation(line: 111, column: 22, scope: !191)
!194 = !DILocation(line: 111, column: 31, scope: !191)
!195 = !DILocation(line: 113, column: 9, scope: !160)
!196 = !DILocation(line: 115, column: 5, scope: !139)
!197 = !DILocation(line: 115, column: 13, scope: !139)
!198 = !DILocation(line: 116, column: 1, scope: !139)
!199 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_65_good", scope: !45, file: !45, line: 118, type: !55, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!200 = !DILocation(line: 120, column: 5, scope: !199)
!201 = !DILocation(line: 121, column: 5, scope: !199)
!202 = !DILocation(line: 122, column: 1, scope: !199)
!203 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_badSink", scope: !49, file: !49, line: 26, type: !61, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!204 = !DILocalVariable(name: "data", arg: 1, scope: !203, file: !49, line: 26, type: !42)
!205 = !DILocation(line: 26, column: 81, scope: !203)
!206 = !DILocation(line: 29, column: 13, scope: !203)
!207 = !DILocation(line: 29, column: 21, scope: !203)
!208 = !DILocation(line: 29, column: 5, scope: !203)
!209 = !DILocation(line: 30, column: 1, scope: !203)
!210 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_goodG2BSink", scope: !49, file: !49, line: 37, type: !61, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!211 = !DILocalVariable(name: "data", arg: 1, scope: !210, file: !49, line: 37, type: !42)
!212 = !DILocation(line: 37, column: 85, scope: !210)
!213 = !DILocation(line: 40, column: 13, scope: !210)
!214 = !DILocation(line: 40, column: 21, scope: !210)
!215 = !DILocation(line: 40, column: 5, scope: !210)
!216 = !DILocation(line: 41, column: 1, scope: !210)
!217 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_65b_goodB2GSink", scope: !49, file: !49, line: 44, type: !61, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!218 = !DILocalVariable(name: "data", arg: 1, scope: !217, file: !49, line: 44, type: !42)
!219 = !DILocation(line: 44, column: 85, scope: !217)
!220 = !DILocation(line: 47, column: 13, scope: !217)
!221 = !DILocation(line: 47, column: 29, scope: !217)
!222 = !DILocation(line: 47, column: 5, scope: !217)
!223 = !DILocation(line: 48, column: 1, scope: !217)
!224 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !61, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!225 = !DILocalVariable(name: "line", arg: 1, scope: !224, file: !3, line: 11, type: !42)
!226 = !DILocation(line: 11, column: 25, scope: !224)
!227 = !DILocation(line: 13, column: 1, scope: !224)
!228 = !DILocation(line: 14, column: 8, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !3, line: 14, column: 8)
!230 = !DILocation(line: 14, column: 13, scope: !229)
!231 = !DILocation(line: 14, column: 8, scope: !224)
!232 = !DILocation(line: 16, column: 24, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !3, line: 15, column: 5)
!234 = !DILocation(line: 16, column: 9, scope: !233)
!235 = !DILocation(line: 17, column: 5, scope: !233)
!236 = !DILocation(line: 18, column: 5, scope: !224)
!237 = !DILocation(line: 19, column: 1, scope: !224)
!238 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !61, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!239 = !DILocalVariable(name: "line", arg: 1, scope: !238, file: !3, line: 20, type: !42)
!240 = !DILocation(line: 20, column: 29, scope: !238)
!241 = !DILocation(line: 22, column: 8, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !3, line: 22, column: 8)
!243 = !DILocation(line: 22, column: 13, scope: !242)
!244 = !DILocation(line: 22, column: 8, scope: !238)
!245 = !DILocation(line: 24, column: 24, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !3, line: 23, column: 5)
!247 = !DILocation(line: 24, column: 9, scope: !246)
!248 = !DILocation(line: 25, column: 5, scope: !246)
!249 = !DILocation(line: 26, column: 1, scope: !238)
!250 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !251, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !253}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 74, baseType: !23)
!255 = !DILocalVariable(name: "line", arg: 1, scope: !250, file: !3, line: 27, type: !253)
!256 = !DILocation(line: 27, column: 29, scope: !250)
!257 = !DILocation(line: 29, column: 8, scope: !258)
!258 = distinct !DILexicalBlock(scope: !250, file: !3, line: 29, column: 8)
!259 = !DILocation(line: 29, column: 13, scope: !258)
!260 = !DILocation(line: 29, column: 8, scope: !250)
!261 = !DILocation(line: 31, column: 27, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !3, line: 30, column: 5)
!263 = !DILocation(line: 31, column: 9, scope: !262)
!264 = !DILocation(line: 32, column: 5, scope: !262)
!265 = !DILocation(line: 33, column: 1, scope: !250)
!266 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !267, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !23}
!269 = !DILocalVariable(name: "intNumber", arg: 1, scope: !266, file: !3, line: 35, type: !23)
!270 = !DILocation(line: 35, column: 24, scope: !266)
!271 = !DILocation(line: 37, column: 20, scope: !266)
!272 = !DILocation(line: 37, column: 5, scope: !266)
!273 = !DILocation(line: 38, column: 1, scope: !266)
!274 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !275, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !277}
!277 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!278 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !274, file: !3, line: 40, type: !277)
!279 = !DILocation(line: 40, column: 28, scope: !274)
!280 = !DILocation(line: 42, column: 21, scope: !274)
!281 = !DILocation(line: 42, column: 5, scope: !274)
!282 = !DILocation(line: 43, column: 1, scope: !274)
!283 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !284, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !286}
!286 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!287 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !283, file: !3, line: 45, type: !286)
!288 = !DILocation(line: 45, column: 28, scope: !283)
!289 = !DILocation(line: 47, column: 20, scope: !283)
!290 = !DILocation(line: 47, column: 5, scope: !283)
!291 = !DILocation(line: 48, column: 1, scope: !283)
!292 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !293, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295}
!295 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!296 = !DILocalVariable(name: "longNumber", arg: 1, scope: !292, file: !3, line: 50, type: !295)
!297 = !DILocation(line: 50, column: 26, scope: !292)
!298 = !DILocation(line: 52, column: 21, scope: !292)
!299 = !DILocation(line: 52, column: 5, scope: !292)
!300 = !DILocation(line: 53, column: 1, scope: !292)
!301 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !302, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !304}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !305, line: 27, baseType: !306)
!305 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !307, line: 44, baseType: !295)
!307 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!308 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !301, file: !3, line: 55, type: !304)
!309 = !DILocation(line: 55, column: 33, scope: !301)
!310 = !DILocation(line: 57, column: 29, scope: !301)
!311 = !DILocation(line: 57, column: 5, scope: !301)
!312 = !DILocation(line: 58, column: 1, scope: !301)
!313 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !314, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !73}
!316 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !313, file: !3, line: 60, type: !73)
!317 = !DILocation(line: 60, column: 29, scope: !313)
!318 = !DILocation(line: 62, column: 21, scope: !313)
!319 = !DILocation(line: 62, column: 5, scope: !313)
!320 = !DILocation(line: 63, column: 1, scope: !313)
!321 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !322, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !43}
!324 = !DILocalVariable(name: "charHex", arg: 1, scope: !321, file: !3, line: 65, type: !43)
!325 = !DILocation(line: 65, column: 29, scope: !321)
!326 = !DILocation(line: 67, column: 22, scope: !321)
!327 = !DILocation(line: 67, column: 5, scope: !321)
!328 = !DILocation(line: 68, column: 1, scope: !321)
!329 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !330, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !254}
!332 = !DILocalVariable(name: "wideChar", arg: 1, scope: !329, file: !3, line: 70, type: !254)
!333 = !DILocation(line: 70, column: 29, scope: !329)
!334 = !DILocalVariable(name: "s", scope: !329, file: !3, line: 74, type: !335)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 64, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 2)
!338 = !DILocation(line: 74, column: 13, scope: !329)
!339 = !DILocation(line: 75, column: 16, scope: !329)
!340 = !DILocation(line: 75, column: 9, scope: !329)
!341 = !DILocation(line: 75, column: 14, scope: !329)
!342 = !DILocation(line: 76, column: 9, scope: !329)
!343 = !DILocation(line: 76, column: 14, scope: !329)
!344 = !DILocation(line: 77, column: 21, scope: !329)
!345 = !DILocation(line: 77, column: 5, scope: !329)
!346 = !DILocation(line: 78, column: 1, scope: !329)
!347 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !348, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !7}
!350 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !347, file: !3, line: 80, type: !7)
!351 = !DILocation(line: 80, column: 33, scope: !347)
!352 = !DILocation(line: 82, column: 20, scope: !347)
!353 = !DILocation(line: 82, column: 5, scope: !347)
!354 = !DILocation(line: 83, column: 1, scope: !347)
!355 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !356, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !25}
!358 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !355, file: !3, line: 85, type: !25)
!359 = !DILocation(line: 85, column: 45, scope: !355)
!360 = !DILocation(line: 87, column: 22, scope: !355)
!361 = !DILocation(line: 87, column: 5, scope: !355)
!362 = !DILocation(line: 88, column: 1, scope: !355)
!363 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !364, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !366}
!366 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!367 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !363, file: !3, line: 90, type: !366)
!368 = !DILocation(line: 90, column: 29, scope: !363)
!369 = !DILocation(line: 92, column: 20, scope: !363)
!370 = !DILocation(line: 92, column: 5, scope: !363)
!371 = !DILocation(line: 93, column: 1, scope: !363)
!372 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !373, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !377, line: 100, baseType: !378)
!377 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_423/source_code")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !377, line: 96, size: 64, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !378, file: !377, line: 98, baseType: !23, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !378, file: !377, line: 99, baseType: !23, size: 32, offset: 32)
!382 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !372, file: !3, line: 95, type: !375)
!383 = !DILocation(line: 95, column: 40, scope: !372)
!384 = !DILocation(line: 97, column: 26, scope: !372)
!385 = !DILocation(line: 97, column: 47, scope: !372)
!386 = !DILocation(line: 97, column: 55, scope: !372)
!387 = !DILocation(line: 97, column: 76, scope: !372)
!388 = !DILocation(line: 97, column: 5, scope: !372)
!389 = !DILocation(line: 98, column: 1, scope: !372)
!390 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !391, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393, !73}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!394 = !DILocalVariable(name: "bytes", arg: 1, scope: !390, file: !3, line: 100, type: !393)
!395 = !DILocation(line: 100, column: 38, scope: !390)
!396 = !DILocalVariable(name: "numBytes", arg: 2, scope: !390, file: !3, line: 100, type: !73)
!397 = !DILocation(line: 100, column: 52, scope: !390)
!398 = !DILocalVariable(name: "i", scope: !390, file: !3, line: 102, type: !73)
!399 = !DILocation(line: 102, column: 12, scope: !390)
!400 = !DILocation(line: 103, column: 12, scope: !401)
!401 = distinct !DILexicalBlock(scope: !390, file: !3, line: 103, column: 5)
!402 = !DILocation(line: 103, column: 10, scope: !401)
!403 = !DILocation(line: 103, column: 17, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !3, line: 103, column: 5)
!405 = !DILocation(line: 103, column: 21, scope: !404)
!406 = !DILocation(line: 103, column: 19, scope: !404)
!407 = !DILocation(line: 103, column: 5, scope: !401)
!408 = !DILocation(line: 105, column: 24, scope: !409)
!409 = distinct !DILexicalBlock(scope: !404, file: !3, line: 104, column: 5)
!410 = !DILocation(line: 105, column: 30, scope: !409)
!411 = !DILocation(line: 105, column: 9, scope: !409)
!412 = !DILocation(line: 106, column: 5, scope: !409)
!413 = !DILocation(line: 103, column: 31, scope: !404)
!414 = !DILocation(line: 103, column: 5, scope: !404)
!415 = distinct !{!415, !407, !416, !417}
!416 = !DILocation(line: 106, column: 5, scope: !401)
!417 = !{!"llvm.loop.mustprogress"}
!418 = !DILocation(line: 107, column: 5, scope: !390)
!419 = !DILocation(line: 108, column: 1, scope: !390)
!420 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !421, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!421 = !DISubroutineType(types: !422)
!422 = !{!73, !393, !73, !42}
!423 = !DILocalVariable(name: "bytes", arg: 1, scope: !420, file: !3, line: 113, type: !393)
!424 = !DILocation(line: 113, column: 39, scope: !420)
!425 = !DILocalVariable(name: "numBytes", arg: 2, scope: !420, file: !3, line: 113, type: !73)
!426 = !DILocation(line: 113, column: 53, scope: !420)
!427 = !DILocalVariable(name: "hex", arg: 3, scope: !420, file: !3, line: 113, type: !42)
!428 = !DILocation(line: 113, column: 71, scope: !420)
!429 = !DILocalVariable(name: "numWritten", scope: !420, file: !3, line: 115, type: !73)
!430 = !DILocation(line: 115, column: 12, scope: !420)
!431 = !DILocation(line: 121, column: 5, scope: !420)
!432 = !DILocation(line: 121, column: 12, scope: !420)
!433 = !DILocation(line: 121, column: 25, scope: !420)
!434 = !DILocation(line: 121, column: 23, scope: !420)
!435 = !DILocation(line: 121, column: 34, scope: !420)
!436 = !DILocation(line: 121, column: 37, scope: !420)
!437 = !DILocation(line: 121, column: 67, scope: !420)
!438 = !DILocation(line: 121, column: 70, scope: !420)
!439 = !DILocation(line: 0, scope: !420)
!440 = !DILocalVariable(name: "byte", scope: !441, file: !3, line: 123, type: !23)
!441 = distinct !DILexicalBlock(scope: !420, file: !3, line: 122, column: 5)
!442 = !DILocation(line: 123, column: 13, scope: !441)
!443 = !DILocation(line: 124, column: 17, scope: !441)
!444 = !DILocation(line: 124, column: 25, scope: !441)
!445 = !DILocation(line: 124, column: 23, scope: !441)
!446 = !DILocation(line: 124, column: 9, scope: !441)
!447 = !DILocation(line: 125, column: 45, scope: !441)
!448 = !DILocation(line: 125, column: 29, scope: !441)
!449 = !DILocation(line: 125, column: 9, scope: !441)
!450 = !DILocation(line: 125, column: 15, scope: !441)
!451 = !DILocation(line: 125, column: 27, scope: !441)
!452 = !DILocation(line: 126, column: 9, scope: !441)
!453 = distinct !{!453, !431, !454, !417}
!454 = !DILocation(line: 127, column: 5, scope: !420)
!455 = !DILocation(line: 129, column: 12, scope: !420)
!456 = !DILocation(line: 129, column: 5, scope: !420)
!457 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !458, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!458 = !DISubroutineType(types: !459)
!459 = !{!73, !393, !73, !253}
!460 = !DILocalVariable(name: "bytes", arg: 1, scope: !457, file: !3, line: 135, type: !393)
!461 = !DILocation(line: 135, column: 41, scope: !457)
!462 = !DILocalVariable(name: "numBytes", arg: 2, scope: !457, file: !3, line: 135, type: !73)
!463 = !DILocation(line: 135, column: 55, scope: !457)
!464 = !DILocalVariable(name: "hex", arg: 3, scope: !457, file: !3, line: 135, type: !253)
!465 = !DILocation(line: 135, column: 76, scope: !457)
!466 = !DILocalVariable(name: "numWritten", scope: !457, file: !3, line: 137, type: !73)
!467 = !DILocation(line: 137, column: 12, scope: !457)
!468 = !DILocation(line: 143, column: 5, scope: !457)
!469 = !DILocation(line: 143, column: 12, scope: !457)
!470 = !DILocation(line: 143, column: 25, scope: !457)
!471 = !DILocation(line: 143, column: 23, scope: !457)
!472 = !DILocation(line: 143, column: 34, scope: !457)
!473 = !DILocation(line: 143, column: 47, scope: !457)
!474 = !DILocation(line: 143, column: 55, scope: !457)
!475 = !DILocation(line: 143, column: 53, scope: !457)
!476 = !DILocation(line: 143, column: 37, scope: !457)
!477 = !DILocation(line: 143, column: 68, scope: !457)
!478 = !DILocation(line: 143, column: 81, scope: !457)
!479 = !DILocation(line: 143, column: 89, scope: !457)
!480 = !DILocation(line: 143, column: 87, scope: !457)
!481 = !DILocation(line: 143, column: 100, scope: !457)
!482 = !DILocation(line: 143, column: 71, scope: !457)
!483 = !DILocation(line: 0, scope: !457)
!484 = !DILocalVariable(name: "byte", scope: !485, file: !3, line: 145, type: !23)
!485 = distinct !DILexicalBlock(scope: !457, file: !3, line: 144, column: 5)
!486 = !DILocation(line: 145, column: 13, scope: !485)
!487 = !DILocation(line: 146, column: 18, scope: !485)
!488 = !DILocation(line: 146, column: 26, scope: !485)
!489 = !DILocation(line: 146, column: 24, scope: !485)
!490 = !DILocation(line: 146, column: 9, scope: !485)
!491 = !DILocation(line: 147, column: 45, scope: !485)
!492 = !DILocation(line: 147, column: 29, scope: !485)
!493 = !DILocation(line: 147, column: 9, scope: !485)
!494 = !DILocation(line: 147, column: 15, scope: !485)
!495 = !DILocation(line: 147, column: 27, scope: !485)
!496 = !DILocation(line: 148, column: 9, scope: !485)
!497 = distinct !{!497, !468, !498, !417}
!498 = !DILocation(line: 149, column: 5, scope: !457)
!499 = !DILocation(line: 151, column: 12, scope: !457)
!500 = !DILocation(line: 151, column: 5, scope: !457)
!501 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !502, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!502 = !DISubroutineType(types: !503)
!503 = !{!23}
!504 = !DILocation(line: 158, column: 5, scope: !501)
!505 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !502, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DILocation(line: 163, column: 5, scope: !505)
!507 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !502, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DILocation(line: 168, column: 13, scope: !507)
!509 = !DILocation(line: 168, column: 20, scope: !507)
!510 = !DILocation(line: 168, column: 5, scope: !507)
!511 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DILocation(line: 187, column: 16, scope: !511)
!513 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DILocation(line: 188, column: 16, scope: !513)
!515 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DILocation(line: 189, column: 16, scope: !515)
!517 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DILocation(line: 190, column: 16, scope: !517)
!519 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DILocation(line: 191, column: 16, scope: !519)
!521 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DILocation(line: 192, column: 16, scope: !521)
!523 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 193, column: 16, scope: !523)
!525 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 194, column: 16, scope: !525)
!527 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 195, column: 16, scope: !527)
!529 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 198, column: 15, scope: !529)
!531 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 199, column: 15, scope: !531)
!533 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 200, column: 15, scope: !533)
!535 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 201, column: 15, scope: !535)
!537 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 202, column: 15, scope: !537)
!539 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 203, column: 15, scope: !539)
!541 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 204, column: 15, scope: !541)
!543 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 205, column: 15, scope: !543)
!545 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 206, column: 15, scope: !545)
