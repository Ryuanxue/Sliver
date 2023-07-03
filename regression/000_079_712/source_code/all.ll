; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !59, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !64, metadata !DIExpression()), !dbg !68
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !68
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !68
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !69
  store i8* %arraydecay, i8** %data, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !71, metadata !DIExpression()), !dbg !76
  %1 = load i8*, i8** %data, align 8, !dbg !77
  %call = call i64 @strlen(i8* %1) #7, !dbg !78
  store i64 %call, i64* %dataLen, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !79, metadata !DIExpression()), !dbg !80
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !81
  store i8* %call1, i8** %environment, align 8, !dbg !80
  %2 = load i8*, i8** %environment, align 8, !dbg !82
  %cmp = icmp ne i8* %2, null, !dbg !84
  br i1 %cmp, label %if.then, label %if.end, !dbg !85

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !86
  %4 = load i64, i64* %dataLen, align 8, !dbg !88
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !89
  %5 = load i8*, i8** %environment, align 8, !dbg !90
  %6 = load i64, i64* %dataLen, align 8, !dbg !91
  %sub = sub i64 100, %6, !dbg !92
  %sub2 = sub i64 %sub, 1, !dbg !93
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !94
  br label %if.end, !dbg !95

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !96
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !97
  store i8* %7, i8** %arrayidx, align 16, !dbg !98
  %arraydecay4 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !99
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_badSink(i8** %arraydecay4), !dbg !100
  ret void, !dbg !101
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
define dso_local void @goodG2B() #0 !dbg !102 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !107, metadata !DIExpression()), !dbg !108
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !108
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !108
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !109
  store i8* %arraydecay, i8** %data, align 8, !dbg !110
  %1 = load i8*, i8** %data, align 8, !dbg !111
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !112
  %2 = load i8*, i8** %data, align 8, !dbg !113
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !114
  store i8* %2, i8** %arrayidx, align 16, !dbg !115
  %arraydecay1 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !116
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_goodG2BSink(i8** %arraydecay1), !dbg !117
  ret void, !dbg !118
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !119 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !122, metadata !DIExpression()), !dbg !123
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
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !151
  store i8* %7, i8** %arrayidx, align 16, !dbg !152
  %arraydecay4 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !153
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_goodB2GSink(i8** %arraydecay4), !dbg !154
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66_good() #0 !dbg !156 {
entry:
  call void @goodG2B(), !dbg !157
  call void @goodB2G(), !dbg !158
  ret void, !dbg !159
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_badSink(i8** %dataArray) #0 !dbg !160 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata i8** %data, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !167
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !167
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !167
  store i8* %1, i8** %data, align 8, !dbg !166
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !168
  %3 = load i8*, i8** %data, align 8, !dbg !169
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !170
  ret void, !dbg !171
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_goodG2BSink(i8** %dataArray) #0 !dbg !172 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i8** %data, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !177
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !177
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !177
  store i8* %1, i8** %data, align 8, !dbg !176
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !178
  %3 = load i8*, i8** %data, align 8, !dbg !179
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !180
  ret void, !dbg !181
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_goodB2GSink(i8** %dataArray) #0 !dbg !182 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i8** %data, metadata !185, metadata !DIExpression()), !dbg !186
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !187
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !187
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !187
  store i8* %1, i8** %data, align 8, !dbg !186
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !188
  %3 = load i8*, i8** %data, align 8, !dbg !189
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %3), !dbg !190
  ret void, !dbg !191
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !192 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !195, metadata !DIExpression()), !dbg !196
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !197
  %0 = load i8*, i8** %line.addr, align 8, !dbg !198
  %cmp = icmp ne i8* %0, null, !dbg !200
  br i1 %cmp, label %if.then, label %if.end, !dbg !201

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !202
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !204
  br label %if.end, !dbg !205

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !206
  ret void, !dbg !207
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !208 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = load i8*, i8** %line.addr, align 8, !dbg !211
  %cmp = icmp ne i8* %0, null, !dbg !213
  br i1 %cmp, label %if.then, label %if.end, !dbg !214

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !215
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !217
  br label %if.end, !dbg !218

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !219
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !220 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = load i32*, i32** %line.addr, align 8, !dbg !227
  %cmp = icmp ne i32* %0, null, !dbg !229
  br i1 %cmp, label %if.then, label %if.end, !dbg !230

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !231
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !233
  br label %if.end, !dbg !234

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !235
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !236 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !241
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !244 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !250
  %conv = sext i16 %0 to i32, !dbg !250
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !253 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !259
  %conv = fpext float %0 to double, !dbg !259
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !260
  ret void, !dbg !261
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !262 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !266, metadata !DIExpression()), !dbg !267
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !268
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !269
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !271 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !280
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !281
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !283 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !286, metadata !DIExpression()), !dbg !287
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !288
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.11, i64 0, i64 0), i64 %0), !dbg !289
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !291 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !296
  %conv = sext i8 %0 to i32, !dbg !296
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !299 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !304, metadata !DIExpression()), !dbg !308
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !309
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !310
  store i32 %0, i32* %arrayidx, align 4, !dbg !311
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !312
  store i32 0, i32* %arrayidx1, align 4, !dbg !313
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !314
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !317 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !322
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !325 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !330
  %conv = zext i8 %0 to i32, !dbg !330
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !331
  ret void, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !333 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !342 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !352, metadata !DIExpression()), !dbg !353
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !354
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !355
  %1 = load i32, i32* %intOne, align 4, !dbg !355
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !356
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !357
  %3 = load i32, i32* %intTwo, align 4, !dbg !357
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !358
  ret void, !dbg !359
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !360 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !364, metadata !DIExpression()), !dbg !365
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !366, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata i64* %i, metadata !368, metadata !DIExpression()), !dbg !369
  store i64 0, i64* %i, align 8, !dbg !370
  br label %for.cond, !dbg !372

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !373
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !375
  %cmp = icmp ult i64 %0, %1, !dbg !376
  br i1 %cmp, label %for.body, label %for.end, !dbg !377

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !378
  %3 = load i64, i64* %i, align 8, !dbg !380
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !378
  %4 = load i8, i8* %arrayidx, align 1, !dbg !378
  %conv = zext i8 %4 to i32, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !381
  br label %for.inc, !dbg !382

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !383
  %inc = add i64 %5, 1, !dbg !383
  store i64 %inc, i64* %i, align 8, !dbg !383
  br label %for.cond, !dbg !384, !llvm.loop !385

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !388
  ret void, !dbg !389
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !390 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !393, metadata !DIExpression()), !dbg !394
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !395, metadata !DIExpression()), !dbg !396
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !399, metadata !DIExpression()), !dbg !400
  store i64 0, i64* %numWritten, align 8, !dbg !400
  br label %while.cond, !dbg !401

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !402
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !403
  %cmp = icmp ult i64 %0, %1, !dbg !404
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !405

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !406
  %2 = load i16*, i16** %call, align 8, !dbg !406
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !406
  %4 = load i64, i64* %numWritten, align 8, !dbg !406
  %mul = mul i64 2, %4, !dbg !406
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !406
  %5 = load i8, i8* %arrayidx, align 1, !dbg !406
  %conv = sext i8 %5 to i32, !dbg !406
  %idxprom = sext i32 %conv to i64, !dbg !406
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !406
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !406
  %conv2 = zext i16 %6 to i32, !dbg !406
  %and = and i32 %conv2, 4096, !dbg !406
  %tobool = icmp ne i32 %and, 0, !dbg !406
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !407

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !408
  %7 = load i16*, i16** %call3, align 8, !dbg !408
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !408
  %9 = load i64, i64* %numWritten, align 8, !dbg !408
  %mul4 = mul i64 2, %9, !dbg !408
  %add = add i64 %mul4, 1, !dbg !408
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !408
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !408
  %conv6 = sext i8 %10 to i32, !dbg !408
  %idxprom7 = sext i32 %conv6 to i64, !dbg !408
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !408
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !408
  %conv9 = zext i16 %11 to i32, !dbg !408
  %and10 = and i32 %conv9, 4096, !dbg !408
  %tobool11 = icmp ne i32 %and10, 0, !dbg !407
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !409
  br i1 %12, label %while.body, label %while.end, !dbg !401

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !410, metadata !DIExpression()), !dbg !412
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !413
  %14 = load i64, i64* %numWritten, align 8, !dbg !414
  %mul12 = mul i64 2, %14, !dbg !415
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !413
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !416
  %15 = load i32, i32* %byte, align 4, !dbg !417
  %conv15 = trunc i32 %15 to i8, !dbg !418
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !419
  %17 = load i64, i64* %numWritten, align 8, !dbg !420
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !419
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !421
  %18 = load i64, i64* %numWritten, align 8, !dbg !422
  %inc = add i64 %18, 1, !dbg !422
  store i64 %inc, i64* %numWritten, align 8, !dbg !422
  br label %while.cond, !dbg !401, !llvm.loop !423

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !425
  ret i64 %19, !dbg !426
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !427 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !430, metadata !DIExpression()), !dbg !431
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !432, metadata !DIExpression()), !dbg !433
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !434, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !436, metadata !DIExpression()), !dbg !437
  store i64 0, i64* %numWritten, align 8, !dbg !437
  br label %while.cond, !dbg !438

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !439
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !440
  %cmp = icmp ult i64 %0, %1, !dbg !441
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !442

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !443
  %3 = load i64, i64* %numWritten, align 8, !dbg !444
  %mul = mul i64 2, %3, !dbg !445
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !443
  %4 = load i32, i32* %arrayidx, align 4, !dbg !443
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !446
  %tobool = icmp ne i32 %call, 0, !dbg !446
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !447

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !448
  %6 = load i64, i64* %numWritten, align 8, !dbg !449
  %mul1 = mul i64 2, %6, !dbg !450
  %add = add i64 %mul1, 1, !dbg !451
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !448
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !448
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !452
  %tobool4 = icmp ne i32 %call3, 0, !dbg !447
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !453
  br i1 %8, label %while.body, label %while.end, !dbg !438

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !454, metadata !DIExpression()), !dbg !456
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !457
  %10 = load i64, i64* %numWritten, align 8, !dbg !458
  %mul5 = mul i64 2, %10, !dbg !459
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !457
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !460
  %11 = load i32, i32* %byte, align 4, !dbg !461
  %conv = trunc i32 %11 to i8, !dbg !462
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !463
  %13 = load i64, i64* %numWritten, align 8, !dbg !464
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !463
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !465
  %14 = load i64, i64* %numWritten, align 8, !dbg !466
  %inc = add i64 %14, 1, !dbg !466
  store i64 %inc, i64* %numWritten, align 8, !dbg !466
  br label %while.cond, !dbg !438, !llvm.loop !467

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !469
  ret i64 %15, !dbg !470
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !471 {
entry:
  ret i32 1, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !475 {
entry:
  ret i32 0, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !477 {
entry:
  %call = call i32 @rand() #8, !dbg !478
  %rem = srem i32 %call, 2, !dbg !479
  ret i32 %rem, !dbg !480
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !481 {
entry:
  ret void, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !483 {
entry:
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !485 {
entry:
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !487 {
entry:
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !489 {
entry:
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !491 {
entry:
  ret void, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !493 {
entry:
  ret void, !dbg !494
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !495 {
entry:
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !497 {
entry:
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !499 {
entry:
  ret void, !dbg !500
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !501 {
entry:
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !503 {
entry:
  ret void, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !505 {
entry:
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !507 {
entry:
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !509 {
entry:
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !511 {
entry:
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !513 {
entry:
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !515 {
entry:
  ret void, !dbg !516
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_712/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_66a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_712/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_712/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_66_bad", scope: !45, file: !45, line: 37, type: !55, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 39, type: !42)
!58 = !DILocation(line: 39, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataArray", scope: !54, file: !45, line: 40, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 320, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 5)
!63 = !DILocation(line: 40, column: 12, scope: !54)
!64 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 41, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 100)
!68 = !DILocation(line: 41, column: 10, scope: !54)
!69 = !DILocation(line: 42, column: 12, scope: !54)
!70 = !DILocation(line: 42, column: 10, scope: !54)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !45, line: 45, type: !73)
!72 = distinct !DILexicalBlock(scope: !54, file: !45, line: 43, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DILocation(line: 45, column: 16, scope: !72)
!77 = !DILocation(line: 45, column: 33, scope: !72)
!78 = !DILocation(line: 45, column: 26, scope: !72)
!79 = !DILocalVariable(name: "environment", scope: !72, file: !45, line: 46, type: !42)
!80 = !DILocation(line: 46, column: 16, scope: !72)
!81 = !DILocation(line: 46, column: 30, scope: !72)
!82 = !DILocation(line: 48, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !72, file: !45, line: 48, column: 13)
!84 = !DILocation(line: 48, column: 25, scope: !83)
!85 = !DILocation(line: 48, column: 13, scope: !72)
!86 = !DILocation(line: 51, column: 21, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !45, line: 49, column: 9)
!88 = !DILocation(line: 51, column: 26, scope: !87)
!89 = !DILocation(line: 51, column: 25, scope: !87)
!90 = !DILocation(line: 51, column: 35, scope: !87)
!91 = !DILocation(line: 51, column: 52, scope: !87)
!92 = !DILocation(line: 51, column: 51, scope: !87)
!93 = !DILocation(line: 51, column: 59, scope: !87)
!94 = !DILocation(line: 51, column: 13, scope: !87)
!95 = !DILocation(line: 52, column: 9, scope: !87)
!96 = !DILocation(line: 55, column: 20, scope: !54)
!97 = !DILocation(line: 55, column: 5, scope: !54)
!98 = !DILocation(line: 55, column: 18, scope: !54)
!99 = !DILocation(line: 56, column: 77, scope: !54)
!100 = !DILocation(line: 56, column: 5, scope: !54)
!101 = !DILocation(line: 57, column: 1, scope: !54)
!102 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 65, type: !55, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!103 = !DILocalVariable(name: "data", scope: !102, file: !45, line: 67, type: !42)
!104 = !DILocation(line: 67, column: 12, scope: !102)
!105 = !DILocalVariable(name: "dataArray", scope: !102, file: !45, line: 68, type: !60)
!106 = !DILocation(line: 68, column: 12, scope: !102)
!107 = !DILocalVariable(name: "dataBuffer", scope: !102, file: !45, line: 69, type: !65)
!108 = !DILocation(line: 69, column: 10, scope: !102)
!109 = !DILocation(line: 70, column: 12, scope: !102)
!110 = !DILocation(line: 70, column: 10, scope: !102)
!111 = !DILocation(line: 72, column: 12, scope: !102)
!112 = !DILocation(line: 72, column: 5, scope: !102)
!113 = !DILocation(line: 73, column: 20, scope: !102)
!114 = !DILocation(line: 73, column: 5, scope: !102)
!115 = !DILocation(line: 73, column: 18, scope: !102)
!116 = !DILocation(line: 74, column: 81, scope: !102)
!117 = !DILocation(line: 74, column: 5, scope: !102)
!118 = !DILocation(line: 75, column: 1, scope: !102)
!119 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 79, type: !55, scopeLine: 80, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!120 = !DILocalVariable(name: "data", scope: !119, file: !45, line: 81, type: !42)
!121 = !DILocation(line: 81, column: 12, scope: !119)
!122 = !DILocalVariable(name: "dataArray", scope: !119, file: !45, line: 82, type: !60)
!123 = !DILocation(line: 82, column: 12, scope: !119)
!124 = !DILocalVariable(name: "dataBuffer", scope: !119, file: !45, line: 83, type: !65)
!125 = !DILocation(line: 83, column: 10, scope: !119)
!126 = !DILocation(line: 84, column: 12, scope: !119)
!127 = !DILocation(line: 84, column: 10, scope: !119)
!128 = !DILocalVariable(name: "dataLen", scope: !129, file: !45, line: 87, type: !73)
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
!150 = !DILocation(line: 96, column: 20, scope: !119)
!151 = !DILocation(line: 96, column: 5, scope: !119)
!152 = !DILocation(line: 96, column: 18, scope: !119)
!153 = !DILocation(line: 97, column: 81, scope: !119)
!154 = !DILocation(line: 97, column: 5, scope: !119)
!155 = !DILocation(line: 98, column: 1, scope: !119)
!156 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_66_good", scope: !45, file: !45, line: 100, type: !55, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!157 = !DILocation(line: 102, column: 5, scope: !156)
!158 = !DILocation(line: 103, column: 5, scope: !156)
!159 = !DILocation(line: 104, column: 1, scope: !156)
!160 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_badSink", scope: !49, file: !49, line: 34, type: !161, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !41}
!163 = !DILocalVariable(name: "dataArray", arg: 1, scope: !160, file: !49, line: 34, type: !41)
!164 = !DILocation(line: 34, column: 85, scope: !160)
!165 = !DILocalVariable(name: "data", scope: !160, file: !49, line: 37, type: !42)
!166 = !DILocation(line: 37, column: 12, scope: !160)
!167 = !DILocation(line: 37, column: 19, scope: !160)
!168 = !DILocation(line: 39, column: 13, scope: !160)
!169 = !DILocation(line: 39, column: 21, scope: !160)
!170 = !DILocation(line: 39, column: 5, scope: !160)
!171 = !DILocation(line: 40, column: 1, scope: !160)
!172 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_goodG2BSink", scope: !49, file: !49, line: 47, type: !161, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!173 = !DILocalVariable(name: "dataArray", arg: 1, scope: !172, file: !49, line: 47, type: !41)
!174 = !DILocation(line: 47, column: 89, scope: !172)
!175 = !DILocalVariable(name: "data", scope: !172, file: !49, line: 49, type: !42)
!176 = !DILocation(line: 49, column: 12, scope: !172)
!177 = !DILocation(line: 49, column: 19, scope: !172)
!178 = !DILocation(line: 51, column: 13, scope: !172)
!179 = !DILocation(line: 51, column: 21, scope: !172)
!180 = !DILocation(line: 51, column: 5, scope: !172)
!181 = !DILocation(line: 52, column: 1, scope: !172)
!182 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_66b_goodB2GSink", scope: !49, file: !49, line: 55, type: !161, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!183 = !DILocalVariable(name: "dataArray", arg: 1, scope: !182, file: !49, line: 55, type: !41)
!184 = !DILocation(line: 55, column: 89, scope: !182)
!185 = !DILocalVariable(name: "data", scope: !182, file: !49, line: 57, type: !42)
!186 = !DILocation(line: 57, column: 12, scope: !182)
!187 = !DILocation(line: 57, column: 19, scope: !182)
!188 = !DILocation(line: 59, column: 13, scope: !182)
!189 = !DILocation(line: 59, column: 29, scope: !182)
!190 = !DILocation(line: 59, column: 5, scope: !182)
!191 = !DILocation(line: 60, column: 1, scope: !182)
!192 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !193, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !42}
!195 = !DILocalVariable(name: "line", arg: 1, scope: !192, file: !3, line: 11, type: !42)
!196 = !DILocation(line: 11, column: 25, scope: !192)
!197 = !DILocation(line: 13, column: 1, scope: !192)
!198 = !DILocation(line: 14, column: 8, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !3, line: 14, column: 8)
!200 = !DILocation(line: 14, column: 13, scope: !199)
!201 = !DILocation(line: 14, column: 8, scope: !192)
!202 = !DILocation(line: 16, column: 24, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !3, line: 15, column: 5)
!204 = !DILocation(line: 16, column: 9, scope: !203)
!205 = !DILocation(line: 17, column: 5, scope: !203)
!206 = !DILocation(line: 18, column: 5, scope: !192)
!207 = !DILocation(line: 19, column: 1, scope: !192)
!208 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !193, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!209 = !DILocalVariable(name: "line", arg: 1, scope: !208, file: !3, line: 20, type: !42)
!210 = !DILocation(line: 20, column: 29, scope: !208)
!211 = !DILocation(line: 22, column: 8, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 22, column: 8)
!213 = !DILocation(line: 22, column: 13, scope: !212)
!214 = !DILocation(line: 22, column: 8, scope: !208)
!215 = !DILocation(line: 24, column: 24, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !3, line: 23, column: 5)
!217 = !DILocation(line: 24, column: 9, scope: !216)
!218 = !DILocation(line: 25, column: 5, scope: !216)
!219 = !DILocation(line: 26, column: 1, scope: !208)
!220 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !221, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 74, baseType: !23)
!225 = !DILocalVariable(name: "line", arg: 1, scope: !220, file: !3, line: 27, type: !223)
!226 = !DILocation(line: 27, column: 29, scope: !220)
!227 = !DILocation(line: 29, column: 8, scope: !228)
!228 = distinct !DILexicalBlock(scope: !220, file: !3, line: 29, column: 8)
!229 = !DILocation(line: 29, column: 13, scope: !228)
!230 = !DILocation(line: 29, column: 8, scope: !220)
!231 = !DILocation(line: 31, column: 27, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !3, line: 30, column: 5)
!233 = !DILocation(line: 31, column: 9, scope: !232)
!234 = !DILocation(line: 32, column: 5, scope: !232)
!235 = !DILocation(line: 33, column: 1, scope: !220)
!236 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !237, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !23}
!239 = !DILocalVariable(name: "intNumber", arg: 1, scope: !236, file: !3, line: 35, type: !23)
!240 = !DILocation(line: 35, column: 24, scope: !236)
!241 = !DILocation(line: 37, column: 20, scope: !236)
!242 = !DILocation(line: 37, column: 5, scope: !236)
!243 = !DILocation(line: 38, column: 1, scope: !236)
!244 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !245, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !247}
!247 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!248 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !244, file: !3, line: 40, type: !247)
!249 = !DILocation(line: 40, column: 28, scope: !244)
!250 = !DILocation(line: 42, column: 21, scope: !244)
!251 = !DILocation(line: 42, column: 5, scope: !244)
!252 = !DILocation(line: 43, column: 1, scope: !244)
!253 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !254, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !256}
!256 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!257 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !253, file: !3, line: 45, type: !256)
!258 = !DILocation(line: 45, column: 28, scope: !253)
!259 = !DILocation(line: 47, column: 20, scope: !253)
!260 = !DILocation(line: 47, column: 5, scope: !253)
!261 = !DILocation(line: 48, column: 1, scope: !253)
!262 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !263, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !265}
!265 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!266 = !DILocalVariable(name: "longNumber", arg: 1, scope: !262, file: !3, line: 50, type: !265)
!267 = !DILocation(line: 50, column: 26, scope: !262)
!268 = !DILocation(line: 52, column: 21, scope: !262)
!269 = !DILocation(line: 52, column: 5, scope: !262)
!270 = !DILocation(line: 53, column: 1, scope: !262)
!271 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !272, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !274}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !275, line: 27, baseType: !276)
!275 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !277, line: 44, baseType: !265)
!277 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!278 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !271, file: !3, line: 55, type: !274)
!279 = !DILocation(line: 55, column: 33, scope: !271)
!280 = !DILocation(line: 57, column: 29, scope: !271)
!281 = !DILocation(line: 57, column: 5, scope: !271)
!282 = !DILocation(line: 58, column: 1, scope: !271)
!283 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !284, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !73}
!286 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !283, file: !3, line: 60, type: !73)
!287 = !DILocation(line: 60, column: 29, scope: !283)
!288 = !DILocation(line: 62, column: 21, scope: !283)
!289 = !DILocation(line: 62, column: 5, scope: !283)
!290 = !DILocation(line: 63, column: 1, scope: !283)
!291 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !292, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !43}
!294 = !DILocalVariable(name: "charHex", arg: 1, scope: !291, file: !3, line: 65, type: !43)
!295 = !DILocation(line: 65, column: 29, scope: !291)
!296 = !DILocation(line: 67, column: 22, scope: !291)
!297 = !DILocation(line: 67, column: 5, scope: !291)
!298 = !DILocation(line: 68, column: 1, scope: !291)
!299 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !300, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !224}
!302 = !DILocalVariable(name: "wideChar", arg: 1, scope: !299, file: !3, line: 70, type: !224)
!303 = !DILocation(line: 70, column: 29, scope: !299)
!304 = !DILocalVariable(name: "s", scope: !299, file: !3, line: 74, type: !305)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 64, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 2)
!308 = !DILocation(line: 74, column: 13, scope: !299)
!309 = !DILocation(line: 75, column: 16, scope: !299)
!310 = !DILocation(line: 75, column: 9, scope: !299)
!311 = !DILocation(line: 75, column: 14, scope: !299)
!312 = !DILocation(line: 76, column: 9, scope: !299)
!313 = !DILocation(line: 76, column: 14, scope: !299)
!314 = !DILocation(line: 77, column: 21, scope: !299)
!315 = !DILocation(line: 77, column: 5, scope: !299)
!316 = !DILocation(line: 78, column: 1, scope: !299)
!317 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !318, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !7}
!320 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !317, file: !3, line: 80, type: !7)
!321 = !DILocation(line: 80, column: 33, scope: !317)
!322 = !DILocation(line: 82, column: 20, scope: !317)
!323 = !DILocation(line: 82, column: 5, scope: !317)
!324 = !DILocation(line: 83, column: 1, scope: !317)
!325 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !326, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !25}
!328 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !325, file: !3, line: 85, type: !25)
!329 = !DILocation(line: 85, column: 45, scope: !325)
!330 = !DILocation(line: 87, column: 22, scope: !325)
!331 = !DILocation(line: 87, column: 5, scope: !325)
!332 = !DILocation(line: 88, column: 1, scope: !325)
!333 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !334, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !336}
!336 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!337 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !333, file: !3, line: 90, type: !336)
!338 = !DILocation(line: 90, column: 29, scope: !333)
!339 = !DILocation(line: 92, column: 20, scope: !333)
!340 = !DILocation(line: 92, column: 5, scope: !333)
!341 = !DILocation(line: 93, column: 1, scope: !333)
!342 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !343, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !347, line: 100, baseType: !348)
!347 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_712/source_code")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !347, line: 96, size: 64, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !348, file: !347, line: 98, baseType: !23, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !348, file: !347, line: 99, baseType: !23, size: 32, offset: 32)
!352 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !342, file: !3, line: 95, type: !345)
!353 = !DILocation(line: 95, column: 40, scope: !342)
!354 = !DILocation(line: 97, column: 26, scope: !342)
!355 = !DILocation(line: 97, column: 47, scope: !342)
!356 = !DILocation(line: 97, column: 55, scope: !342)
!357 = !DILocation(line: 97, column: 76, scope: !342)
!358 = !DILocation(line: 97, column: 5, scope: !342)
!359 = !DILocation(line: 98, column: 1, scope: !342)
!360 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !361, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !363, !73}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!364 = !DILocalVariable(name: "bytes", arg: 1, scope: !360, file: !3, line: 100, type: !363)
!365 = !DILocation(line: 100, column: 38, scope: !360)
!366 = !DILocalVariable(name: "numBytes", arg: 2, scope: !360, file: !3, line: 100, type: !73)
!367 = !DILocation(line: 100, column: 52, scope: !360)
!368 = !DILocalVariable(name: "i", scope: !360, file: !3, line: 102, type: !73)
!369 = !DILocation(line: 102, column: 12, scope: !360)
!370 = !DILocation(line: 103, column: 12, scope: !371)
!371 = distinct !DILexicalBlock(scope: !360, file: !3, line: 103, column: 5)
!372 = !DILocation(line: 103, column: 10, scope: !371)
!373 = !DILocation(line: 103, column: 17, scope: !374)
!374 = distinct !DILexicalBlock(scope: !371, file: !3, line: 103, column: 5)
!375 = !DILocation(line: 103, column: 21, scope: !374)
!376 = !DILocation(line: 103, column: 19, scope: !374)
!377 = !DILocation(line: 103, column: 5, scope: !371)
!378 = !DILocation(line: 105, column: 24, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !3, line: 104, column: 5)
!380 = !DILocation(line: 105, column: 30, scope: !379)
!381 = !DILocation(line: 105, column: 9, scope: !379)
!382 = !DILocation(line: 106, column: 5, scope: !379)
!383 = !DILocation(line: 103, column: 31, scope: !374)
!384 = !DILocation(line: 103, column: 5, scope: !374)
!385 = distinct !{!385, !377, !386, !387}
!386 = !DILocation(line: 106, column: 5, scope: !371)
!387 = !{!"llvm.loop.mustprogress"}
!388 = !DILocation(line: 107, column: 5, scope: !360)
!389 = !DILocation(line: 108, column: 1, scope: !360)
!390 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !391, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{!73, !363, !73, !42}
!393 = !DILocalVariable(name: "bytes", arg: 1, scope: !390, file: !3, line: 113, type: !363)
!394 = !DILocation(line: 113, column: 39, scope: !390)
!395 = !DILocalVariable(name: "numBytes", arg: 2, scope: !390, file: !3, line: 113, type: !73)
!396 = !DILocation(line: 113, column: 53, scope: !390)
!397 = !DILocalVariable(name: "hex", arg: 3, scope: !390, file: !3, line: 113, type: !42)
!398 = !DILocation(line: 113, column: 71, scope: !390)
!399 = !DILocalVariable(name: "numWritten", scope: !390, file: !3, line: 115, type: !73)
!400 = !DILocation(line: 115, column: 12, scope: !390)
!401 = !DILocation(line: 121, column: 5, scope: !390)
!402 = !DILocation(line: 121, column: 12, scope: !390)
!403 = !DILocation(line: 121, column: 25, scope: !390)
!404 = !DILocation(line: 121, column: 23, scope: !390)
!405 = !DILocation(line: 121, column: 34, scope: !390)
!406 = !DILocation(line: 121, column: 37, scope: !390)
!407 = !DILocation(line: 121, column: 67, scope: !390)
!408 = !DILocation(line: 121, column: 70, scope: !390)
!409 = !DILocation(line: 0, scope: !390)
!410 = !DILocalVariable(name: "byte", scope: !411, file: !3, line: 123, type: !23)
!411 = distinct !DILexicalBlock(scope: !390, file: !3, line: 122, column: 5)
!412 = !DILocation(line: 123, column: 13, scope: !411)
!413 = !DILocation(line: 124, column: 17, scope: !411)
!414 = !DILocation(line: 124, column: 25, scope: !411)
!415 = !DILocation(line: 124, column: 23, scope: !411)
!416 = !DILocation(line: 124, column: 9, scope: !411)
!417 = !DILocation(line: 125, column: 45, scope: !411)
!418 = !DILocation(line: 125, column: 29, scope: !411)
!419 = !DILocation(line: 125, column: 9, scope: !411)
!420 = !DILocation(line: 125, column: 15, scope: !411)
!421 = !DILocation(line: 125, column: 27, scope: !411)
!422 = !DILocation(line: 126, column: 9, scope: !411)
!423 = distinct !{!423, !401, !424, !387}
!424 = !DILocation(line: 127, column: 5, scope: !390)
!425 = !DILocation(line: 129, column: 12, scope: !390)
!426 = !DILocation(line: 129, column: 5, scope: !390)
!427 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !428, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!428 = !DISubroutineType(types: !429)
!429 = !{!73, !363, !73, !223}
!430 = !DILocalVariable(name: "bytes", arg: 1, scope: !427, file: !3, line: 135, type: !363)
!431 = !DILocation(line: 135, column: 41, scope: !427)
!432 = !DILocalVariable(name: "numBytes", arg: 2, scope: !427, file: !3, line: 135, type: !73)
!433 = !DILocation(line: 135, column: 55, scope: !427)
!434 = !DILocalVariable(name: "hex", arg: 3, scope: !427, file: !3, line: 135, type: !223)
!435 = !DILocation(line: 135, column: 76, scope: !427)
!436 = !DILocalVariable(name: "numWritten", scope: !427, file: !3, line: 137, type: !73)
!437 = !DILocation(line: 137, column: 12, scope: !427)
!438 = !DILocation(line: 143, column: 5, scope: !427)
!439 = !DILocation(line: 143, column: 12, scope: !427)
!440 = !DILocation(line: 143, column: 25, scope: !427)
!441 = !DILocation(line: 143, column: 23, scope: !427)
!442 = !DILocation(line: 143, column: 34, scope: !427)
!443 = !DILocation(line: 143, column: 47, scope: !427)
!444 = !DILocation(line: 143, column: 55, scope: !427)
!445 = !DILocation(line: 143, column: 53, scope: !427)
!446 = !DILocation(line: 143, column: 37, scope: !427)
!447 = !DILocation(line: 143, column: 68, scope: !427)
!448 = !DILocation(line: 143, column: 81, scope: !427)
!449 = !DILocation(line: 143, column: 89, scope: !427)
!450 = !DILocation(line: 143, column: 87, scope: !427)
!451 = !DILocation(line: 143, column: 100, scope: !427)
!452 = !DILocation(line: 143, column: 71, scope: !427)
!453 = !DILocation(line: 0, scope: !427)
!454 = !DILocalVariable(name: "byte", scope: !455, file: !3, line: 145, type: !23)
!455 = distinct !DILexicalBlock(scope: !427, file: !3, line: 144, column: 5)
!456 = !DILocation(line: 145, column: 13, scope: !455)
!457 = !DILocation(line: 146, column: 18, scope: !455)
!458 = !DILocation(line: 146, column: 26, scope: !455)
!459 = !DILocation(line: 146, column: 24, scope: !455)
!460 = !DILocation(line: 146, column: 9, scope: !455)
!461 = !DILocation(line: 147, column: 45, scope: !455)
!462 = !DILocation(line: 147, column: 29, scope: !455)
!463 = !DILocation(line: 147, column: 9, scope: !455)
!464 = !DILocation(line: 147, column: 15, scope: !455)
!465 = !DILocation(line: 147, column: 27, scope: !455)
!466 = !DILocation(line: 148, column: 9, scope: !455)
!467 = distinct !{!467, !438, !468, !387}
!468 = !DILocation(line: 149, column: 5, scope: !427)
!469 = !DILocation(line: 151, column: 12, scope: !427)
!470 = !DILocation(line: 151, column: 5, scope: !427)
!471 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !472, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!472 = !DISubroutineType(types: !473)
!473 = !{!23}
!474 = !DILocation(line: 158, column: 5, scope: !471)
!475 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !472, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!476 = !DILocation(line: 163, column: 5, scope: !475)
!477 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !472, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!478 = !DILocation(line: 168, column: 13, scope: !477)
!479 = !DILocation(line: 168, column: 20, scope: !477)
!480 = !DILocation(line: 168, column: 5, scope: !477)
!481 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DILocation(line: 187, column: 16, scope: !481)
!483 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!484 = !DILocation(line: 188, column: 16, scope: !483)
!485 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!486 = !DILocation(line: 189, column: 16, scope: !485)
!487 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!488 = !DILocation(line: 190, column: 16, scope: !487)
!489 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!490 = !DILocation(line: 191, column: 16, scope: !489)
!491 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DILocation(line: 192, column: 16, scope: !491)
!493 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!494 = !DILocation(line: 193, column: 16, scope: !493)
!495 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!496 = !DILocation(line: 194, column: 16, scope: !495)
!497 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DILocation(line: 195, column: 16, scope: !497)
!499 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DILocation(line: 198, column: 15, scope: !499)
!501 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!502 = !DILocation(line: 199, column: 15, scope: !501)
!503 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!504 = !DILocation(line: 200, column: 15, scope: !503)
!505 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DILocation(line: 201, column: 15, scope: !505)
!507 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DILocation(line: 202, column: 15, scope: !507)
!509 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DILocation(line: 203, column: 15, scope: !509)
!511 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DILocation(line: 204, column: 15, scope: !511)
!513 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DILocation(line: 205, column: 15, scope: !513)
!515 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DILocation(line: 206, column: 15, scope: !515)
