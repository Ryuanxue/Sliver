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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_63_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !59, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !66, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i64 @strlen(i8* %1) #7, !dbg !73
  store i64 %call, i64* %dataLen, align 8, !dbg !71
  %2 = load i64, i64* %dataLen, align 8, !dbg !74
  %sub = sub i64 100, %2, !dbg !76
  %cmp = icmp ugt i64 %sub, 1, !dbg !77
  br i1 %cmp, label %if.then, label %if.end18, !dbg !78

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !79
  %4 = load i64, i64* %dataLen, align 8, !dbg !82
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !83
  %5 = load i64, i64* %dataLen, align 8, !dbg !84
  %sub1 = sub i64 100, %5, !dbg !85
  %conv = trunc i64 %sub1 to i32, !dbg !86
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !87
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !88
  %cmp3 = icmp ne i8* %call2, null, !dbg !89
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !90

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !91
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !93
  store i64 %call6, i64* %dataLen, align 8, !dbg !94
  %8 = load i64, i64* %dataLen, align 8, !dbg !95
  %cmp7 = icmp ugt i64 %8, 0, !dbg !97
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !98

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !99
  %10 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub9 = sub i64 %10, 1, !dbg !101
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !99
  %11 = load i8, i8* %arrayidx, align 1, !dbg !99
  %conv10 = sext i8 %11 to i32, !dbg !99
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !102
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !103

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !104
  %13 = load i64, i64* %dataLen, align 8, !dbg !106
  %sub14 = sub i64 %13, 1, !dbg !107
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !104
  store i8 0, i8* %arrayidx15, align 1, !dbg !108
  br label %if.end, !dbg !109

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !110

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !111
  %14 = load i8*, i8** %data, align 8, !dbg !113
  %15 = load i64, i64* %dataLen, align 8, !dbg !114
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !113
  store i8 0, i8* %arrayidx16, align 1, !dbg !115
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !116

if.end18:                                         ; preds = %if.end17, %entry
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_63b_badSink(i8** %data), !dbg !117
  ret void, !dbg !118
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !119 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !122, metadata !DIExpression()), !dbg !123
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !123
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !123
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !124
  store i8* %arraydecay, i8** %data, align 8, !dbg !125
  %1 = load i8*, i8** %data, align 8, !dbg !126
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !127
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_63b_goodG2BSink(i8** %data), !dbg !128
  ret void, !dbg !129
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !130 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !134
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !134
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !135
  store i8* %arraydecay, i8** %data, align 8, !dbg !136
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !137, metadata !DIExpression()), !dbg !139
  %1 = load i8*, i8** %data, align 8, !dbg !140
  %call = call i64 @strlen(i8* %1) #7, !dbg !141
  store i64 %call, i64* %dataLen, align 8, !dbg !139
  %2 = load i64, i64* %dataLen, align 8, !dbg !142
  %sub = sub i64 100, %2, !dbg !144
  %cmp = icmp ugt i64 %sub, 1, !dbg !145
  br i1 %cmp, label %if.then, label %if.end18, !dbg !146

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !147
  %4 = load i64, i64* %dataLen, align 8, !dbg !150
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !151
  %5 = load i64, i64* %dataLen, align 8, !dbg !152
  %sub1 = sub i64 100, %5, !dbg !153
  %conv = trunc i64 %sub1 to i32, !dbg !154
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !155
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !156
  %cmp3 = icmp ne i8* %call2, null, !dbg !157
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !158

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !159
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !161
  store i64 %call6, i64* %dataLen, align 8, !dbg !162
  %8 = load i64, i64* %dataLen, align 8, !dbg !163
  %cmp7 = icmp ugt i64 %8, 0, !dbg !165
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !166

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !167
  %10 = load i64, i64* %dataLen, align 8, !dbg !168
  %sub9 = sub i64 %10, 1, !dbg !169
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !167
  %11 = load i8, i8* %arrayidx, align 1, !dbg !167
  %conv10 = sext i8 %11 to i32, !dbg !167
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !170
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !171

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !172
  %13 = load i64, i64* %dataLen, align 8, !dbg !174
  %sub14 = sub i64 %13, 1, !dbg !175
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !172
  store i8 0, i8* %arrayidx15, align 1, !dbg !176
  br label %if.end, !dbg !177

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !178

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !179
  %14 = load i8*, i8** %data, align 8, !dbg !181
  %15 = load i64, i64* %dataLen, align 8, !dbg !182
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !181
  store i8 0, i8* %arrayidx16, align 1, !dbg !183
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !184

if.end18:                                         ; preds = %if.end17, %entry
  call void @CWE134_Uncontrolled_Format_String__char_console_fprintf_63b_goodB2GSink(i8** %data), !dbg !185
  ret void, !dbg !186
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_63_good() #0 !dbg !187 {
entry:
  call void @goodG2B(), !dbg !188
  call void @goodB2G(), !dbg !189
  ret void, !dbg !190
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_63b_badSink(i8** %dataPtr) #0 !dbg !191 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i8** %data, metadata !196, metadata !DIExpression()), !dbg !197
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !198
  %1 = load i8*, i8** %0, align 8, !dbg !199
  store i8* %1, i8** %data, align 8, !dbg !197
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !200
  %3 = load i8*, i8** %data, align 8, !dbg !201
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !202
  ret void, !dbg !203
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_63b_goodG2BSink(i8** %dataPtr) #0 !dbg !204 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i8** %data, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !209
  %1 = load i8*, i8** %0, align 8, !dbg !210
  store i8* %1, i8** %data, align 8, !dbg !208
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !211
  %3 = load i8*, i8** %data, align 8, !dbg !212
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !213
  ret void, !dbg !214
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_63b_goodB2GSink(i8** %dataPtr) #0 !dbg !215 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata i8** %data, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !220
  %1 = load i8*, i8** %0, align 8, !dbg !221
  store i8* %1, i8** %data, align 8, !dbg !219
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !222
  %3 = load i8*, i8** %data, align 8, !dbg !223
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %3), !dbg !224
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !226 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !229, metadata !DIExpression()), !dbg !230
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !231
  %0 = load i8*, i8** %line.addr, align 8, !dbg !232
  %cmp = icmp ne i8* %0, null, !dbg !234
  br i1 %cmp, label %if.then, label %if.end, !dbg !235

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !236
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !238
  br label %if.end, !dbg !239

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !240
  ret void, !dbg !241
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !242 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !243, metadata !DIExpression()), !dbg !244
  %0 = load i8*, i8** %line.addr, align 8, !dbg !245
  %cmp = icmp ne i8* %0, null, !dbg !247
  br i1 %cmp, label %if.then, label %if.end, !dbg !248

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !249
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !251
  br label %if.end, !dbg !252

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !253
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !254 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = load i32*, i32** %line.addr, align 8, !dbg !261
  %cmp = icmp ne i32* %0, null, !dbg !263
  br i1 %cmp, label %if.then, label %if.end, !dbg !264

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !265
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !267
  br label %if.end, !dbg !268

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !269
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !270 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !275
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !276
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !278 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !282, metadata !DIExpression()), !dbg !283
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !284
  %conv = sext i16 %0 to i32, !dbg !284
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !285
  ret void, !dbg !286
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !287 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !293
  %conv = fpext float %0 to double, !dbg !293
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !294
  ret void, !dbg !295
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !296 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !302
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.12, i64 0, i64 0), i64 %0), !dbg !303
  ret void, !dbg !304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !305 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !314
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.12, i64 0, i64 0), i64 %0), !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !317 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !322
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !325 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !330
  %conv = sext i8 %0 to i32, !dbg !330
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !331
  ret void, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !333 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !338, metadata !DIExpression()), !dbg !342
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !343
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !344
  store i32 %0, i32* %arrayidx, align 4, !dbg !345
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !346
  store i32 0, i32* %arrayidx1, align 4, !dbg !347
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !348
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.13, i64 0, i64 0), i32* %arraydecay), !dbg !349
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !351 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !354, metadata !DIExpression()), !dbg !355
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !356
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !357
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !359 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !364
  %conv = zext i8 %0 to i32, !dbg !364
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !367 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !374
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !376 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !388
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !389
  %1 = load i32, i32* %intOne, align 4, !dbg !389
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !390
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !391
  %3 = load i32, i32* %intTwo, align 4, !dbg !391
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !392
  ret void, !dbg !393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !394 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !398, metadata !DIExpression()), !dbg !399
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata i64* %i, metadata !402, metadata !DIExpression()), !dbg !403
  store i64 0, i64* %i, align 8, !dbg !404
  br label %for.cond, !dbg !406

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !407
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !409
  %cmp = icmp ult i64 %0, %1, !dbg !410
  br i1 %cmp, label %for.body, label %for.end, !dbg !411

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !412
  %3 = load i64, i64* %i, align 8, !dbg !414
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !412
  %4 = load i8, i8* %arrayidx, align 1, !dbg !412
  %conv = zext i8 %4 to i32, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !415
  br label %for.inc, !dbg !416

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !417
  %inc = add i64 %5, 1, !dbg !417
  store i64 %inc, i64* %i, align 8, !dbg !417
  br label %for.cond, !dbg !418, !llvm.loop !419

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !422
  ret void, !dbg !423
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !424 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !427, metadata !DIExpression()), !dbg !428
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !429, metadata !DIExpression()), !dbg !430
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !431, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !433, metadata !DIExpression()), !dbg !434
  store i64 0, i64* %numWritten, align 8, !dbg !434
  br label %while.cond, !dbg !435

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !436
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !437
  %cmp = icmp ult i64 %0, %1, !dbg !438
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !439

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !440
  %2 = load i16*, i16** %call, align 8, !dbg !440
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !440
  %4 = load i64, i64* %numWritten, align 8, !dbg !440
  %mul = mul i64 2, %4, !dbg !440
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !440
  %5 = load i8, i8* %arrayidx, align 1, !dbg !440
  %conv = sext i8 %5 to i32, !dbg !440
  %idxprom = sext i32 %conv to i64, !dbg !440
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !440
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !440
  %conv2 = zext i16 %6 to i32, !dbg !440
  %and = and i32 %conv2, 4096, !dbg !440
  %tobool = icmp ne i32 %and, 0, !dbg !440
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !441

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !442
  %7 = load i16*, i16** %call3, align 8, !dbg !442
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !442
  %9 = load i64, i64* %numWritten, align 8, !dbg !442
  %mul4 = mul i64 2, %9, !dbg !442
  %add = add i64 %mul4, 1, !dbg !442
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !442
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !442
  %conv6 = sext i8 %10 to i32, !dbg !442
  %idxprom7 = sext i32 %conv6 to i64, !dbg !442
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !442
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !442
  %conv9 = zext i16 %11 to i32, !dbg !442
  %and10 = and i32 %conv9, 4096, !dbg !442
  %tobool11 = icmp ne i32 %and10, 0, !dbg !441
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !443
  br i1 %12, label %while.body, label %while.end, !dbg !435

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !444, metadata !DIExpression()), !dbg !446
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !447
  %14 = load i64, i64* %numWritten, align 8, !dbg !448
  %mul12 = mul i64 2, %14, !dbg !449
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !447
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !450
  %15 = load i32, i32* %byte, align 4, !dbg !451
  %conv15 = trunc i32 %15 to i8, !dbg !452
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !453
  %17 = load i64, i64* %numWritten, align 8, !dbg !454
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !453
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !455
  %18 = load i64, i64* %numWritten, align 8, !dbg !456
  %inc = add i64 %18, 1, !dbg !456
  store i64 %inc, i64* %numWritten, align 8, !dbg !456
  br label %while.cond, !dbg !435, !llvm.loop !457

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !459
  ret i64 %19, !dbg !460
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !461 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !464, metadata !DIExpression()), !dbg !465
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !466, metadata !DIExpression()), !dbg !467
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !468, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !470, metadata !DIExpression()), !dbg !471
  store i64 0, i64* %numWritten, align 8, !dbg !471
  br label %while.cond, !dbg !472

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !473
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !474
  %cmp = icmp ult i64 %0, %1, !dbg !475
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !476

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !477
  %3 = load i64, i64* %numWritten, align 8, !dbg !478
  %mul = mul i64 2, %3, !dbg !479
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !477
  %4 = load i32, i32* %arrayidx, align 4, !dbg !477
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !480
  %tobool = icmp ne i32 %call, 0, !dbg !480
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !481

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !482
  %6 = load i64, i64* %numWritten, align 8, !dbg !483
  %mul1 = mul i64 2, %6, !dbg !484
  %add = add i64 %mul1, 1, !dbg !485
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !482
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !482
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !486
  %tobool4 = icmp ne i32 %call3, 0, !dbg !481
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !487
  br i1 %8, label %while.body, label %while.end, !dbg !472

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !488, metadata !DIExpression()), !dbg !490
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !491
  %10 = load i64, i64* %numWritten, align 8, !dbg !492
  %mul5 = mul i64 2, %10, !dbg !493
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !491
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !494
  %11 = load i32, i32* %byte, align 4, !dbg !495
  %conv = trunc i32 %11 to i8, !dbg !496
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !497
  %13 = load i64, i64* %numWritten, align 8, !dbg !498
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !497
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !499
  %14 = load i64, i64* %numWritten, align 8, !dbg !500
  %inc = add i64 %14, 1, !dbg !500
  store i64 %inc, i64* %numWritten, align 8, !dbg !500
  br label %while.cond, !dbg !472, !llvm.loop !501

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !503
  ret i64 %15, !dbg !504
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !505 {
entry:
  ret i32 1, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !509 {
entry:
  ret i32 0, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !511 {
entry:
  %call = call i32 @rand() #8, !dbg !512
  %rem = srem i32 %call, 2, !dbg !513
  ret i32 %rem, !dbg !514
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !515 {
entry:
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !517 {
entry:
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !519 {
entry:
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !521 {
entry:
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !523 {
entry:
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !549 {
entry:
  ret void, !dbg !550
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_421/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_63a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_421/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_63b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_421/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_63_bad", scope: !45, file: !45, line: 29, type: !55, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 31, type: !42)
!58 = !DILocation(line: 31, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 32, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 100)
!63 = !DILocation(line: 32, column: 10, scope: !54)
!64 = !DILocation(line: 33, column: 12, scope: !54)
!65 = !DILocation(line: 33, column: 10, scope: !54)
!66 = !DILocalVariable(name: "dataLen", scope: !67, file: !45, line: 36, type: !68)
!67 = distinct !DILexicalBlock(scope: !54, file: !45, line: 34, column: 5)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 36, column: 16, scope: !67)
!72 = !DILocation(line: 36, column: 33, scope: !67)
!73 = !DILocation(line: 36, column: 26, scope: !67)
!74 = !DILocation(line: 38, column: 17, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !45, line: 38, column: 13)
!76 = !DILocation(line: 38, column: 16, scope: !75)
!77 = !DILocation(line: 38, column: 25, scope: !75)
!78 = !DILocation(line: 38, column: 13, scope: !67)
!79 = !DILocation(line: 41, column: 23, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !45, line: 41, column: 17)
!81 = distinct !DILexicalBlock(scope: !75, file: !45, line: 39, column: 9)
!82 = !DILocation(line: 41, column: 28, scope: !80)
!83 = !DILocation(line: 41, column: 27, scope: !80)
!84 = !DILocation(line: 41, column: 47, scope: !80)
!85 = !DILocation(line: 41, column: 46, scope: !80)
!86 = !DILocation(line: 41, column: 37, scope: !80)
!87 = !DILocation(line: 41, column: 57, scope: !80)
!88 = !DILocation(line: 41, column: 17, scope: !80)
!89 = !DILocation(line: 41, column: 64, scope: !80)
!90 = !DILocation(line: 41, column: 17, scope: !81)
!91 = !DILocation(line: 45, column: 34, scope: !92)
!92 = distinct !DILexicalBlock(scope: !80, file: !45, line: 42, column: 13)
!93 = !DILocation(line: 45, column: 27, scope: !92)
!94 = !DILocation(line: 45, column: 25, scope: !92)
!95 = !DILocation(line: 46, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !45, line: 46, column: 21)
!97 = !DILocation(line: 46, column: 29, scope: !96)
!98 = !DILocation(line: 46, column: 33, scope: !96)
!99 = !DILocation(line: 46, column: 36, scope: !96)
!100 = !DILocation(line: 46, column: 41, scope: !96)
!101 = !DILocation(line: 46, column: 48, scope: !96)
!102 = !DILocation(line: 46, column: 52, scope: !96)
!103 = !DILocation(line: 46, column: 21, scope: !92)
!104 = !DILocation(line: 48, column: 21, scope: !105)
!105 = distinct !DILexicalBlock(scope: !96, file: !45, line: 47, column: 17)
!106 = !DILocation(line: 48, column: 26, scope: !105)
!107 = !DILocation(line: 48, column: 33, scope: !105)
!108 = !DILocation(line: 48, column: 37, scope: !105)
!109 = !DILocation(line: 49, column: 17, scope: !105)
!110 = !DILocation(line: 50, column: 13, scope: !92)
!111 = !DILocation(line: 53, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !80, file: !45, line: 52, column: 13)
!113 = !DILocation(line: 55, column: 17, scope: !112)
!114 = !DILocation(line: 55, column: 22, scope: !112)
!115 = !DILocation(line: 55, column: 31, scope: !112)
!116 = !DILocation(line: 57, column: 9, scope: !81)
!117 = !DILocation(line: 59, column: 5, scope: !54)
!118 = !DILocation(line: 60, column: 1, scope: !54)
!119 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 68, type: !55, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!120 = !DILocalVariable(name: "data", scope: !119, file: !45, line: 70, type: !42)
!121 = !DILocation(line: 70, column: 12, scope: !119)
!122 = !DILocalVariable(name: "dataBuffer", scope: !119, file: !45, line: 71, type: !60)
!123 = !DILocation(line: 71, column: 10, scope: !119)
!124 = !DILocation(line: 72, column: 12, scope: !119)
!125 = !DILocation(line: 72, column: 10, scope: !119)
!126 = !DILocation(line: 74, column: 12, scope: !119)
!127 = !DILocation(line: 74, column: 5, scope: !119)
!128 = !DILocation(line: 75, column: 5, scope: !119)
!129 = !DILocation(line: 76, column: 1, scope: !119)
!130 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 80, type: !55, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!131 = !DILocalVariable(name: "data", scope: !130, file: !45, line: 82, type: !42)
!132 = !DILocation(line: 82, column: 12, scope: !130)
!133 = !DILocalVariable(name: "dataBuffer", scope: !130, file: !45, line: 83, type: !60)
!134 = !DILocation(line: 83, column: 10, scope: !130)
!135 = !DILocation(line: 84, column: 12, scope: !130)
!136 = !DILocation(line: 84, column: 10, scope: !130)
!137 = !DILocalVariable(name: "dataLen", scope: !138, file: !45, line: 87, type: !68)
!138 = distinct !DILexicalBlock(scope: !130, file: !45, line: 85, column: 5)
!139 = !DILocation(line: 87, column: 16, scope: !138)
!140 = !DILocation(line: 87, column: 33, scope: !138)
!141 = !DILocation(line: 87, column: 26, scope: !138)
!142 = !DILocation(line: 89, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 89, column: 13)
!144 = !DILocation(line: 89, column: 16, scope: !143)
!145 = !DILocation(line: 89, column: 25, scope: !143)
!146 = !DILocation(line: 89, column: 13, scope: !138)
!147 = !DILocation(line: 92, column: 23, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !45, line: 92, column: 17)
!149 = distinct !DILexicalBlock(scope: !143, file: !45, line: 90, column: 9)
!150 = !DILocation(line: 92, column: 28, scope: !148)
!151 = !DILocation(line: 92, column: 27, scope: !148)
!152 = !DILocation(line: 92, column: 47, scope: !148)
!153 = !DILocation(line: 92, column: 46, scope: !148)
!154 = !DILocation(line: 92, column: 37, scope: !148)
!155 = !DILocation(line: 92, column: 57, scope: !148)
!156 = !DILocation(line: 92, column: 17, scope: !148)
!157 = !DILocation(line: 92, column: 64, scope: !148)
!158 = !DILocation(line: 92, column: 17, scope: !149)
!159 = !DILocation(line: 96, column: 34, scope: !160)
!160 = distinct !DILexicalBlock(scope: !148, file: !45, line: 93, column: 13)
!161 = !DILocation(line: 96, column: 27, scope: !160)
!162 = !DILocation(line: 96, column: 25, scope: !160)
!163 = !DILocation(line: 97, column: 21, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !45, line: 97, column: 21)
!165 = !DILocation(line: 97, column: 29, scope: !164)
!166 = !DILocation(line: 97, column: 33, scope: !164)
!167 = !DILocation(line: 97, column: 36, scope: !164)
!168 = !DILocation(line: 97, column: 41, scope: !164)
!169 = !DILocation(line: 97, column: 48, scope: !164)
!170 = !DILocation(line: 97, column: 52, scope: !164)
!171 = !DILocation(line: 97, column: 21, scope: !160)
!172 = !DILocation(line: 99, column: 21, scope: !173)
!173 = distinct !DILexicalBlock(scope: !164, file: !45, line: 98, column: 17)
!174 = !DILocation(line: 99, column: 26, scope: !173)
!175 = !DILocation(line: 99, column: 33, scope: !173)
!176 = !DILocation(line: 99, column: 37, scope: !173)
!177 = !DILocation(line: 100, column: 17, scope: !173)
!178 = !DILocation(line: 101, column: 13, scope: !160)
!179 = !DILocation(line: 104, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !148, file: !45, line: 103, column: 13)
!181 = !DILocation(line: 106, column: 17, scope: !180)
!182 = !DILocation(line: 106, column: 22, scope: !180)
!183 = !DILocation(line: 106, column: 31, scope: !180)
!184 = !DILocation(line: 108, column: 9, scope: !149)
!185 = !DILocation(line: 110, column: 5, scope: !130)
!186 = !DILocation(line: 111, column: 1, scope: !130)
!187 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_63_good", scope: !45, file: !45, line: 113, type: !55, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!188 = !DILocation(line: 115, column: 5, scope: !187)
!189 = !DILocation(line: 116, column: 5, scope: !187)
!190 = !DILocation(line: 117, column: 1, scope: !187)
!191 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_63b_badSink", scope: !49, file: !49, line: 26, type: !192, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !41}
!194 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !191, file: !49, line: 26, type: !41)
!195 = !DILocation(line: 26, column: 83, scope: !191)
!196 = !DILocalVariable(name: "data", scope: !191, file: !49, line: 28, type: !42)
!197 = !DILocation(line: 28, column: 12, scope: !191)
!198 = !DILocation(line: 28, column: 20, scope: !191)
!199 = !DILocation(line: 28, column: 19, scope: !191)
!200 = !DILocation(line: 30, column: 13, scope: !191)
!201 = !DILocation(line: 30, column: 21, scope: !191)
!202 = !DILocation(line: 30, column: 5, scope: !191)
!203 = !DILocation(line: 31, column: 1, scope: !191)
!204 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_63b_goodG2BSink", scope: !49, file: !49, line: 38, type: !192, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!205 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !204, file: !49, line: 38, type: !41)
!206 = !DILocation(line: 38, column: 87, scope: !204)
!207 = !DILocalVariable(name: "data", scope: !204, file: !49, line: 40, type: !42)
!208 = !DILocation(line: 40, column: 12, scope: !204)
!209 = !DILocation(line: 40, column: 20, scope: !204)
!210 = !DILocation(line: 40, column: 19, scope: !204)
!211 = !DILocation(line: 42, column: 13, scope: !204)
!212 = !DILocation(line: 42, column: 21, scope: !204)
!213 = !DILocation(line: 42, column: 5, scope: !204)
!214 = !DILocation(line: 43, column: 1, scope: !204)
!215 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_63b_goodB2GSink", scope: !49, file: !49, line: 46, type: !192, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!216 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !215, file: !49, line: 46, type: !41)
!217 = !DILocation(line: 46, column: 87, scope: !215)
!218 = !DILocalVariable(name: "data", scope: !215, file: !49, line: 48, type: !42)
!219 = !DILocation(line: 48, column: 12, scope: !215)
!220 = !DILocation(line: 48, column: 20, scope: !215)
!221 = !DILocation(line: 48, column: 19, scope: !215)
!222 = !DILocation(line: 50, column: 13, scope: !215)
!223 = !DILocation(line: 50, column: 29, scope: !215)
!224 = !DILocation(line: 50, column: 5, scope: !215)
!225 = !DILocation(line: 51, column: 1, scope: !215)
!226 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !227, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !42}
!229 = !DILocalVariable(name: "line", arg: 1, scope: !226, file: !3, line: 11, type: !42)
!230 = !DILocation(line: 11, column: 25, scope: !226)
!231 = !DILocation(line: 13, column: 1, scope: !226)
!232 = !DILocation(line: 14, column: 8, scope: !233)
!233 = distinct !DILexicalBlock(scope: !226, file: !3, line: 14, column: 8)
!234 = !DILocation(line: 14, column: 13, scope: !233)
!235 = !DILocation(line: 14, column: 8, scope: !226)
!236 = !DILocation(line: 16, column: 24, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !3, line: 15, column: 5)
!238 = !DILocation(line: 16, column: 9, scope: !237)
!239 = !DILocation(line: 17, column: 5, scope: !237)
!240 = !DILocation(line: 18, column: 5, scope: !226)
!241 = !DILocation(line: 19, column: 1, scope: !226)
!242 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !227, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!243 = !DILocalVariable(name: "line", arg: 1, scope: !242, file: !3, line: 20, type: !42)
!244 = !DILocation(line: 20, column: 29, scope: !242)
!245 = !DILocation(line: 22, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !3, line: 22, column: 8)
!247 = !DILocation(line: 22, column: 13, scope: !246)
!248 = !DILocation(line: 22, column: 8, scope: !242)
!249 = !DILocation(line: 24, column: 24, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 23, column: 5)
!251 = !DILocation(line: 24, column: 9, scope: !250)
!252 = !DILocation(line: 25, column: 5, scope: !250)
!253 = !DILocation(line: 26, column: 1, scope: !242)
!254 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !255, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!259 = !DILocalVariable(name: "line", arg: 1, scope: !254, file: !3, line: 27, type: !257)
!260 = !DILocation(line: 27, column: 29, scope: !254)
!261 = !DILocation(line: 29, column: 8, scope: !262)
!262 = distinct !DILexicalBlock(scope: !254, file: !3, line: 29, column: 8)
!263 = !DILocation(line: 29, column: 13, scope: !262)
!264 = !DILocation(line: 29, column: 8, scope: !254)
!265 = !DILocation(line: 31, column: 27, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 30, column: 5)
!267 = !DILocation(line: 31, column: 9, scope: !266)
!268 = !DILocation(line: 32, column: 5, scope: !266)
!269 = !DILocation(line: 33, column: 1, scope: !254)
!270 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !271, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !23}
!273 = !DILocalVariable(name: "intNumber", arg: 1, scope: !270, file: !3, line: 35, type: !23)
!274 = !DILocation(line: 35, column: 24, scope: !270)
!275 = !DILocation(line: 37, column: 20, scope: !270)
!276 = !DILocation(line: 37, column: 5, scope: !270)
!277 = !DILocation(line: 38, column: 1, scope: !270)
!278 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !279, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !281}
!281 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!282 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !278, file: !3, line: 40, type: !281)
!283 = !DILocation(line: 40, column: 28, scope: !278)
!284 = !DILocation(line: 42, column: 21, scope: !278)
!285 = !DILocation(line: 42, column: 5, scope: !278)
!286 = !DILocation(line: 43, column: 1, scope: !278)
!287 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !288, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !290}
!290 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!291 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !287, file: !3, line: 45, type: !290)
!292 = !DILocation(line: 45, column: 28, scope: !287)
!293 = !DILocation(line: 47, column: 20, scope: !287)
!294 = !DILocation(line: 47, column: 5, scope: !287)
!295 = !DILocation(line: 48, column: 1, scope: !287)
!296 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !297, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299}
!299 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!300 = !DILocalVariable(name: "longNumber", arg: 1, scope: !296, file: !3, line: 50, type: !299)
!301 = !DILocation(line: 50, column: 26, scope: !296)
!302 = !DILocation(line: 52, column: 21, scope: !296)
!303 = !DILocation(line: 52, column: 5, scope: !296)
!304 = !DILocation(line: 53, column: 1, scope: !296)
!305 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !306, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !308}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !309, line: 27, baseType: !310)
!309 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !311, line: 44, baseType: !299)
!311 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!312 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !305, file: !3, line: 55, type: !308)
!313 = !DILocation(line: 55, column: 33, scope: !305)
!314 = !DILocation(line: 57, column: 29, scope: !305)
!315 = !DILocation(line: 57, column: 5, scope: !305)
!316 = !DILocation(line: 58, column: 1, scope: !305)
!317 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !318, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !68}
!320 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !317, file: !3, line: 60, type: !68)
!321 = !DILocation(line: 60, column: 29, scope: !317)
!322 = !DILocation(line: 62, column: 21, scope: !317)
!323 = !DILocation(line: 62, column: 5, scope: !317)
!324 = !DILocation(line: 63, column: 1, scope: !317)
!325 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !326, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !43}
!328 = !DILocalVariable(name: "charHex", arg: 1, scope: !325, file: !3, line: 65, type: !43)
!329 = !DILocation(line: 65, column: 29, scope: !325)
!330 = !DILocation(line: 67, column: 22, scope: !325)
!331 = !DILocation(line: 67, column: 5, scope: !325)
!332 = !DILocation(line: 68, column: 1, scope: !325)
!333 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !334, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !258}
!336 = !DILocalVariable(name: "wideChar", arg: 1, scope: !333, file: !3, line: 70, type: !258)
!337 = !DILocation(line: 70, column: 29, scope: !333)
!338 = !DILocalVariable(name: "s", scope: !333, file: !3, line: 74, type: !339)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 64, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 2)
!342 = !DILocation(line: 74, column: 13, scope: !333)
!343 = !DILocation(line: 75, column: 16, scope: !333)
!344 = !DILocation(line: 75, column: 9, scope: !333)
!345 = !DILocation(line: 75, column: 14, scope: !333)
!346 = !DILocation(line: 76, column: 9, scope: !333)
!347 = !DILocation(line: 76, column: 14, scope: !333)
!348 = !DILocation(line: 77, column: 21, scope: !333)
!349 = !DILocation(line: 77, column: 5, scope: !333)
!350 = !DILocation(line: 78, column: 1, scope: !333)
!351 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !352, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !7}
!354 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !351, file: !3, line: 80, type: !7)
!355 = !DILocation(line: 80, column: 33, scope: !351)
!356 = !DILocation(line: 82, column: 20, scope: !351)
!357 = !DILocation(line: 82, column: 5, scope: !351)
!358 = !DILocation(line: 83, column: 1, scope: !351)
!359 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !360, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !25}
!362 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !359, file: !3, line: 85, type: !25)
!363 = !DILocation(line: 85, column: 45, scope: !359)
!364 = !DILocation(line: 87, column: 22, scope: !359)
!365 = !DILocation(line: 87, column: 5, scope: !359)
!366 = !DILocation(line: 88, column: 1, scope: !359)
!367 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !368, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !370}
!370 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!371 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !367, file: !3, line: 90, type: !370)
!372 = !DILocation(line: 90, column: 29, scope: !367)
!373 = !DILocation(line: 92, column: 20, scope: !367)
!374 = !DILocation(line: 92, column: 5, scope: !367)
!375 = !DILocation(line: 93, column: 1, scope: !367)
!376 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !377, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !381, line: 100, baseType: !382)
!381 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_421/source_code")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !381, line: 96, size: 64, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !382, file: !381, line: 98, baseType: !23, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !382, file: !381, line: 99, baseType: !23, size: 32, offset: 32)
!386 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !376, file: !3, line: 95, type: !379)
!387 = !DILocation(line: 95, column: 40, scope: !376)
!388 = !DILocation(line: 97, column: 26, scope: !376)
!389 = !DILocation(line: 97, column: 47, scope: !376)
!390 = !DILocation(line: 97, column: 55, scope: !376)
!391 = !DILocation(line: 97, column: 76, scope: !376)
!392 = !DILocation(line: 97, column: 5, scope: !376)
!393 = !DILocation(line: 98, column: 1, scope: !376)
!394 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !395, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397, !68}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!398 = !DILocalVariable(name: "bytes", arg: 1, scope: !394, file: !3, line: 100, type: !397)
!399 = !DILocation(line: 100, column: 38, scope: !394)
!400 = !DILocalVariable(name: "numBytes", arg: 2, scope: !394, file: !3, line: 100, type: !68)
!401 = !DILocation(line: 100, column: 52, scope: !394)
!402 = !DILocalVariable(name: "i", scope: !394, file: !3, line: 102, type: !68)
!403 = !DILocation(line: 102, column: 12, scope: !394)
!404 = !DILocation(line: 103, column: 12, scope: !405)
!405 = distinct !DILexicalBlock(scope: !394, file: !3, line: 103, column: 5)
!406 = !DILocation(line: 103, column: 10, scope: !405)
!407 = !DILocation(line: 103, column: 17, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !3, line: 103, column: 5)
!409 = !DILocation(line: 103, column: 21, scope: !408)
!410 = !DILocation(line: 103, column: 19, scope: !408)
!411 = !DILocation(line: 103, column: 5, scope: !405)
!412 = !DILocation(line: 105, column: 24, scope: !413)
!413 = distinct !DILexicalBlock(scope: !408, file: !3, line: 104, column: 5)
!414 = !DILocation(line: 105, column: 30, scope: !413)
!415 = !DILocation(line: 105, column: 9, scope: !413)
!416 = !DILocation(line: 106, column: 5, scope: !413)
!417 = !DILocation(line: 103, column: 31, scope: !408)
!418 = !DILocation(line: 103, column: 5, scope: !408)
!419 = distinct !{!419, !411, !420, !421}
!420 = !DILocation(line: 106, column: 5, scope: !405)
!421 = !{!"llvm.loop.mustprogress"}
!422 = !DILocation(line: 107, column: 5, scope: !394)
!423 = !DILocation(line: 108, column: 1, scope: !394)
!424 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !425, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!425 = !DISubroutineType(types: !426)
!426 = !{!68, !397, !68, !42}
!427 = !DILocalVariable(name: "bytes", arg: 1, scope: !424, file: !3, line: 113, type: !397)
!428 = !DILocation(line: 113, column: 39, scope: !424)
!429 = !DILocalVariable(name: "numBytes", arg: 2, scope: !424, file: !3, line: 113, type: !68)
!430 = !DILocation(line: 113, column: 53, scope: !424)
!431 = !DILocalVariable(name: "hex", arg: 3, scope: !424, file: !3, line: 113, type: !42)
!432 = !DILocation(line: 113, column: 71, scope: !424)
!433 = !DILocalVariable(name: "numWritten", scope: !424, file: !3, line: 115, type: !68)
!434 = !DILocation(line: 115, column: 12, scope: !424)
!435 = !DILocation(line: 121, column: 5, scope: !424)
!436 = !DILocation(line: 121, column: 12, scope: !424)
!437 = !DILocation(line: 121, column: 25, scope: !424)
!438 = !DILocation(line: 121, column: 23, scope: !424)
!439 = !DILocation(line: 121, column: 34, scope: !424)
!440 = !DILocation(line: 121, column: 37, scope: !424)
!441 = !DILocation(line: 121, column: 67, scope: !424)
!442 = !DILocation(line: 121, column: 70, scope: !424)
!443 = !DILocation(line: 0, scope: !424)
!444 = !DILocalVariable(name: "byte", scope: !445, file: !3, line: 123, type: !23)
!445 = distinct !DILexicalBlock(scope: !424, file: !3, line: 122, column: 5)
!446 = !DILocation(line: 123, column: 13, scope: !445)
!447 = !DILocation(line: 124, column: 17, scope: !445)
!448 = !DILocation(line: 124, column: 25, scope: !445)
!449 = !DILocation(line: 124, column: 23, scope: !445)
!450 = !DILocation(line: 124, column: 9, scope: !445)
!451 = !DILocation(line: 125, column: 45, scope: !445)
!452 = !DILocation(line: 125, column: 29, scope: !445)
!453 = !DILocation(line: 125, column: 9, scope: !445)
!454 = !DILocation(line: 125, column: 15, scope: !445)
!455 = !DILocation(line: 125, column: 27, scope: !445)
!456 = !DILocation(line: 126, column: 9, scope: !445)
!457 = distinct !{!457, !435, !458, !421}
!458 = !DILocation(line: 127, column: 5, scope: !424)
!459 = !DILocation(line: 129, column: 12, scope: !424)
!460 = !DILocation(line: 129, column: 5, scope: !424)
!461 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !462, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!462 = !DISubroutineType(types: !463)
!463 = !{!68, !397, !68, !257}
!464 = !DILocalVariable(name: "bytes", arg: 1, scope: !461, file: !3, line: 135, type: !397)
!465 = !DILocation(line: 135, column: 41, scope: !461)
!466 = !DILocalVariable(name: "numBytes", arg: 2, scope: !461, file: !3, line: 135, type: !68)
!467 = !DILocation(line: 135, column: 55, scope: !461)
!468 = !DILocalVariable(name: "hex", arg: 3, scope: !461, file: !3, line: 135, type: !257)
!469 = !DILocation(line: 135, column: 76, scope: !461)
!470 = !DILocalVariable(name: "numWritten", scope: !461, file: !3, line: 137, type: !68)
!471 = !DILocation(line: 137, column: 12, scope: !461)
!472 = !DILocation(line: 143, column: 5, scope: !461)
!473 = !DILocation(line: 143, column: 12, scope: !461)
!474 = !DILocation(line: 143, column: 25, scope: !461)
!475 = !DILocation(line: 143, column: 23, scope: !461)
!476 = !DILocation(line: 143, column: 34, scope: !461)
!477 = !DILocation(line: 143, column: 47, scope: !461)
!478 = !DILocation(line: 143, column: 55, scope: !461)
!479 = !DILocation(line: 143, column: 53, scope: !461)
!480 = !DILocation(line: 143, column: 37, scope: !461)
!481 = !DILocation(line: 143, column: 68, scope: !461)
!482 = !DILocation(line: 143, column: 81, scope: !461)
!483 = !DILocation(line: 143, column: 89, scope: !461)
!484 = !DILocation(line: 143, column: 87, scope: !461)
!485 = !DILocation(line: 143, column: 100, scope: !461)
!486 = !DILocation(line: 143, column: 71, scope: !461)
!487 = !DILocation(line: 0, scope: !461)
!488 = !DILocalVariable(name: "byte", scope: !489, file: !3, line: 145, type: !23)
!489 = distinct !DILexicalBlock(scope: !461, file: !3, line: 144, column: 5)
!490 = !DILocation(line: 145, column: 13, scope: !489)
!491 = !DILocation(line: 146, column: 18, scope: !489)
!492 = !DILocation(line: 146, column: 26, scope: !489)
!493 = !DILocation(line: 146, column: 24, scope: !489)
!494 = !DILocation(line: 146, column: 9, scope: !489)
!495 = !DILocation(line: 147, column: 45, scope: !489)
!496 = !DILocation(line: 147, column: 29, scope: !489)
!497 = !DILocation(line: 147, column: 9, scope: !489)
!498 = !DILocation(line: 147, column: 15, scope: !489)
!499 = !DILocation(line: 147, column: 27, scope: !489)
!500 = !DILocation(line: 148, column: 9, scope: !489)
!501 = distinct !{!501, !472, !502, !421}
!502 = !DILocation(line: 149, column: 5, scope: !461)
!503 = !DILocation(line: 151, column: 12, scope: !461)
!504 = !DILocation(line: 151, column: 5, scope: !461)
!505 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !506, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DISubroutineType(types: !507)
!507 = !{!23}
!508 = !DILocation(line: 158, column: 5, scope: !505)
!509 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !506, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DILocation(line: 163, column: 5, scope: !509)
!511 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !506, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DILocation(line: 168, column: 13, scope: !511)
!513 = !DILocation(line: 168, column: 20, scope: !511)
!514 = !DILocation(line: 168, column: 5, scope: !511)
!515 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DILocation(line: 187, column: 16, scope: !515)
!517 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DILocation(line: 188, column: 16, scope: !517)
!519 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DILocation(line: 189, column: 16, scope: !519)
!521 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DILocation(line: 190, column: 16, scope: !521)
!523 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DILocation(line: 191, column: 16, scope: !523)
!525 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 192, column: 16, scope: !525)
!527 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 193, column: 16, scope: !527)
!529 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 194, column: 16, scope: !529)
!531 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 195, column: 16, scope: !531)
!533 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 198, column: 15, scope: !533)
!535 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 199, column: 15, scope: !535)
!537 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 200, column: 15, scope: !537)
!539 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 201, column: 15, scope: !539)
!541 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 202, column: 15, scope: !541)
!543 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 203, column: 15, scope: !543)
!545 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 204, column: 15, scope: !545)
!547 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 205, column: 15, scope: !547)
!549 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 206, column: 15, scope: !549)
