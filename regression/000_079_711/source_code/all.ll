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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !59, metadata !DIExpression()), !dbg !63
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_badSink, void (i8*)** %funcPtr, align 8, !dbg !63
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
  %7 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !96
  %8 = load i8*, i8** %data, align 8, !dbg !97
  call void %7(i8* %8), !dbg !96
  ret void, !dbg !98
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
define dso_local void @goodG2B() #0 !dbg !99 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !102, metadata !DIExpression()), !dbg !103
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !105
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !105
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !106
  store i8* %arraydecay, i8** %data, align 8, !dbg !107
  %1 = load i8*, i8** %data, align 8, !dbg !108
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !109
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !110
  %3 = load i8*, i8** %data, align 8, !dbg !111
  call void %2(i8* %3), !dbg !110
  ret void, !dbg !112
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !113 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !116, metadata !DIExpression()), !dbg !117
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !117
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !118, metadata !DIExpression()), !dbg !119
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !119
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !119
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !120
  store i8* %arraydecay, i8** %data, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !122, metadata !DIExpression()), !dbg !124
  %1 = load i8*, i8** %data, align 8, !dbg !125
  %call = call i64 @strlen(i8* %1) #7, !dbg !126
  store i64 %call, i64* %dataLen, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !127, metadata !DIExpression()), !dbg !128
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !129
  store i8* %call1, i8** %environment, align 8, !dbg !128
  %2 = load i8*, i8** %environment, align 8, !dbg !130
  %cmp = icmp ne i8* %2, null, !dbg !132
  br i1 %cmp, label %if.then, label %if.end, !dbg !133

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !134
  %4 = load i64, i64* %dataLen, align 8, !dbg !136
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !137
  %5 = load i8*, i8** %environment, align 8, !dbg !138
  %6 = load i64, i64* %dataLen, align 8, !dbg !139
  %sub = sub i64 100, %6, !dbg !140
  %sub2 = sub i64 %sub, 1, !dbg !141
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !142
  br label %if.end, !dbg !143

if.end:                                           ; preds = %if.then, %entry
  %7 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !144
  %8 = load i8*, i8** %data, align 8, !dbg !145
  call void %7(i8* %8), !dbg !144
  ret void, !dbg !146
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65_good() #0 !dbg !147 {
entry:
  call void @goodG2B(), !dbg !148
  call void @goodB2G(), !dbg !149
  ret void, !dbg !150
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_badSink(i8* %data) #0 !dbg !151 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !154
  %1 = load i8*, i8** %data.addr, align 8, !dbg !155
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !156
  ret void, !dbg !157
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_goodG2BSink(i8* %data) #0 !dbg !158 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !161
  %1 = load i8*, i8** %data.addr, align 8, !dbg !162
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !163
  ret void, !dbg !164
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_goodB2GSink(i8* %data) #0 !dbg !165 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !166, metadata !DIExpression()), !dbg !167
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !168
  %1 = load i8*, i8** %data.addr, align 8, !dbg !169
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %1), !dbg !170
  ret void, !dbg !171
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !172 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !173, metadata !DIExpression()), !dbg !174
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !175
  %0 = load i8*, i8** %line.addr, align 8, !dbg !176
  %cmp = icmp ne i8* %0, null, !dbg !178
  br i1 %cmp, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !180
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !182
  br label %if.end, !dbg !183

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !184
  ret void, !dbg !185
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !186 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !187, metadata !DIExpression()), !dbg !188
  %0 = load i8*, i8** %line.addr, align 8, !dbg !189
  %cmp = icmp ne i8* %0, null, !dbg !191
  br i1 %cmp, label %if.then, label %if.end, !dbg !192

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !193
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !195
  br label %if.end, !dbg !196

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !197
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !198 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !203, metadata !DIExpression()), !dbg !204
  %0 = load i32*, i32** %line.addr, align 8, !dbg !205
  %cmp = icmp ne i32* %0, null, !dbg !207
  br i1 %cmp, label %if.then, label %if.end, !dbg !208

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !209
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !211
  br label %if.end, !dbg !212

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !213
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !214 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !217, metadata !DIExpression()), !dbg !218
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !219
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !220
  ret void, !dbg !221
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !222 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !226, metadata !DIExpression()), !dbg !227
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !228
  %conv = sext i16 %0 to i32, !dbg !228
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !229
  ret void, !dbg !230
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !231 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !235, metadata !DIExpression()), !dbg !236
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !237
  %conv = fpext float %0 to double, !dbg !237
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !238
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !240 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !246
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !247
  ret void, !dbg !248
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !249 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !258
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !259
  ret void, !dbg !260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !261 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !266
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.11, i64 0, i64 0), i64 %0), !dbg !267
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !269 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !274
  %conv = sext i8 %0 to i32, !dbg !274
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !275
  ret void, !dbg !276
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !277 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !282, metadata !DIExpression()), !dbg !286
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !287
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !288
  store i32 %0, i32* %arrayidx, align 4, !dbg !289
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !290
  store i32 0, i32* %arrayidx1, align 4, !dbg !291
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !292
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !293
  ret void, !dbg !294
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !295 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !300
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !301
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !303 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !308
  %conv = zext i8 %0 to i32, !dbg !308
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !309
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !311 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !315, metadata !DIExpression()), !dbg !316
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !317
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !318
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !320 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !332
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !333
  %1 = load i32, i32* %intOne, align 4, !dbg !333
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !334
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !335
  %3 = load i32, i32* %intTwo, align 4, !dbg !335
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !338 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !342, metadata !DIExpression()), !dbg !343
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !344, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata i64* %i, metadata !346, metadata !DIExpression()), !dbg !347
  store i64 0, i64* %i, align 8, !dbg !348
  br label %for.cond, !dbg !350

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !351
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !353
  %cmp = icmp ult i64 %0, %1, !dbg !354
  br i1 %cmp, label %for.body, label %for.end, !dbg !355

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !356
  %3 = load i64, i64* %i, align 8, !dbg !358
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !356
  %4 = load i8, i8* %arrayidx, align 1, !dbg !356
  %conv = zext i8 %4 to i32, !dbg !356
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !359
  br label %for.inc, !dbg !360

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !361
  %inc = add i64 %5, 1, !dbg !361
  store i64 %inc, i64* %i, align 8, !dbg !361
  br label %for.cond, !dbg !362, !llvm.loop !363

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !366
  ret void, !dbg !367
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !368 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !371, metadata !DIExpression()), !dbg !372
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !373, metadata !DIExpression()), !dbg !374
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !377, metadata !DIExpression()), !dbg !378
  store i64 0, i64* %numWritten, align 8, !dbg !378
  br label %while.cond, !dbg !379

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !380
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !381
  %cmp = icmp ult i64 %0, %1, !dbg !382
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !383

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !384
  %2 = load i16*, i16** %call, align 8, !dbg !384
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !384
  %4 = load i64, i64* %numWritten, align 8, !dbg !384
  %mul = mul i64 2, %4, !dbg !384
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !384
  %5 = load i8, i8* %arrayidx, align 1, !dbg !384
  %conv = sext i8 %5 to i32, !dbg !384
  %idxprom = sext i32 %conv to i64, !dbg !384
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !384
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !384
  %conv2 = zext i16 %6 to i32, !dbg !384
  %and = and i32 %conv2, 4096, !dbg !384
  %tobool = icmp ne i32 %and, 0, !dbg !384
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !385

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !386
  %7 = load i16*, i16** %call3, align 8, !dbg !386
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !386
  %9 = load i64, i64* %numWritten, align 8, !dbg !386
  %mul4 = mul i64 2, %9, !dbg !386
  %add = add i64 %mul4, 1, !dbg !386
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !386
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !386
  %conv6 = sext i8 %10 to i32, !dbg !386
  %idxprom7 = sext i32 %conv6 to i64, !dbg !386
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !386
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !386
  %conv9 = zext i16 %11 to i32, !dbg !386
  %and10 = and i32 %conv9, 4096, !dbg !386
  %tobool11 = icmp ne i32 %and10, 0, !dbg !385
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !387
  br i1 %12, label %while.body, label %while.end, !dbg !379

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !388, metadata !DIExpression()), !dbg !390
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !391
  %14 = load i64, i64* %numWritten, align 8, !dbg !392
  %mul12 = mul i64 2, %14, !dbg !393
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !391
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !394
  %15 = load i32, i32* %byte, align 4, !dbg !395
  %conv15 = trunc i32 %15 to i8, !dbg !396
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !397
  %17 = load i64, i64* %numWritten, align 8, !dbg !398
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !397
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !399
  %18 = load i64, i64* %numWritten, align 8, !dbg !400
  %inc = add i64 %18, 1, !dbg !400
  store i64 %inc, i64* %numWritten, align 8, !dbg !400
  br label %while.cond, !dbg !379, !llvm.loop !401

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !403
  ret i64 %19, !dbg !404
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !405 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !408, metadata !DIExpression()), !dbg !409
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !410, metadata !DIExpression()), !dbg !411
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !414, metadata !DIExpression()), !dbg !415
  store i64 0, i64* %numWritten, align 8, !dbg !415
  br label %while.cond, !dbg !416

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !417
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !418
  %cmp = icmp ult i64 %0, %1, !dbg !419
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !420

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !421
  %3 = load i64, i64* %numWritten, align 8, !dbg !422
  %mul = mul i64 2, %3, !dbg !423
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !421
  %4 = load i32, i32* %arrayidx, align 4, !dbg !421
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !424
  %tobool = icmp ne i32 %call, 0, !dbg !424
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !425

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !426
  %6 = load i64, i64* %numWritten, align 8, !dbg !427
  %mul1 = mul i64 2, %6, !dbg !428
  %add = add i64 %mul1, 1, !dbg !429
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !426
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !426
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !430
  %tobool4 = icmp ne i32 %call3, 0, !dbg !425
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !431
  br i1 %8, label %while.body, label %while.end, !dbg !416

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !432, metadata !DIExpression()), !dbg !434
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !435
  %10 = load i64, i64* %numWritten, align 8, !dbg !436
  %mul5 = mul i64 2, %10, !dbg !437
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !435
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !438
  %11 = load i32, i32* %byte, align 4, !dbg !439
  %conv = trunc i32 %11 to i8, !dbg !440
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !441
  %13 = load i64, i64* %numWritten, align 8, !dbg !442
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !441
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !443
  %14 = load i64, i64* %numWritten, align 8, !dbg !444
  %inc = add i64 %14, 1, !dbg !444
  store i64 %inc, i64* %numWritten, align 8, !dbg !444
  br label %while.cond, !dbg !416, !llvm.loop !445

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !447
  ret i64 %15, !dbg !448
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !449 {
entry:
  ret i32 1, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !453 {
entry:
  ret i32 0, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !455 {
entry:
  %call = call i32 @rand() #8, !dbg !456
  %rem = srem i32 %call, 2, !dbg !457
  ret i32 %rem, !dbg !458
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !459 {
entry:
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !461 {
entry:
  ret void, !dbg !462
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !463 {
entry:
  ret void, !dbg !464
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !465 {
entry:
  ret void, !dbg !466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !467 {
entry:
  ret void, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !469 {
entry:
  ret void, !dbg !470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !471 {
entry:
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !473 {
entry:
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !475 {
entry:
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !477 {
entry:
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !479 {
entry:
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !481 {
entry:
  ret void, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !483 {
entry:
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !485 {
entry:
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !487 {
entry:
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !489 {
entry:
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !491 {
entry:
  ret void, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !493 {
entry:
  ret void, !dbg !494
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_711/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_711/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_711/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_65_bad", scope: !45, file: !45, line: 37, type: !55, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 39, type: !42)
!58 = !DILocation(line: 39, column: 12, scope: !54)
!59 = !DILocalVariable(name: "funcPtr", scope: !54, file: !45, line: 41, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !42}
!63 = !DILocation(line: 41, column: 12, scope: !54)
!64 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 42, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 100)
!68 = !DILocation(line: 42, column: 10, scope: !54)
!69 = !DILocation(line: 43, column: 12, scope: !54)
!70 = !DILocation(line: 43, column: 10, scope: !54)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !45, line: 46, type: !73)
!72 = distinct !DILexicalBlock(scope: !54, file: !45, line: 44, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DILocation(line: 46, column: 16, scope: !72)
!77 = !DILocation(line: 46, column: 33, scope: !72)
!78 = !DILocation(line: 46, column: 26, scope: !72)
!79 = !DILocalVariable(name: "environment", scope: !72, file: !45, line: 47, type: !42)
!80 = !DILocation(line: 47, column: 16, scope: !72)
!81 = !DILocation(line: 47, column: 30, scope: !72)
!82 = !DILocation(line: 49, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !72, file: !45, line: 49, column: 13)
!84 = !DILocation(line: 49, column: 25, scope: !83)
!85 = !DILocation(line: 49, column: 13, scope: !72)
!86 = !DILocation(line: 52, column: 21, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !45, line: 50, column: 9)
!88 = !DILocation(line: 52, column: 26, scope: !87)
!89 = !DILocation(line: 52, column: 25, scope: !87)
!90 = !DILocation(line: 52, column: 35, scope: !87)
!91 = !DILocation(line: 52, column: 52, scope: !87)
!92 = !DILocation(line: 52, column: 51, scope: !87)
!93 = !DILocation(line: 52, column: 59, scope: !87)
!94 = !DILocation(line: 52, column: 13, scope: !87)
!95 = !DILocation(line: 53, column: 9, scope: !87)
!96 = !DILocation(line: 56, column: 5, scope: !54)
!97 = !DILocation(line: 56, column: 13, scope: !54)
!98 = !DILocation(line: 57, column: 1, scope: !54)
!99 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 65, type: !55, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!100 = !DILocalVariable(name: "data", scope: !99, file: !45, line: 67, type: !42)
!101 = !DILocation(line: 67, column: 12, scope: !99)
!102 = !DILocalVariable(name: "funcPtr", scope: !99, file: !45, line: 68, type: !60)
!103 = !DILocation(line: 68, column: 12, scope: !99)
!104 = !DILocalVariable(name: "dataBuffer", scope: !99, file: !45, line: 69, type: !65)
!105 = !DILocation(line: 69, column: 10, scope: !99)
!106 = !DILocation(line: 70, column: 12, scope: !99)
!107 = !DILocation(line: 70, column: 10, scope: !99)
!108 = !DILocation(line: 72, column: 12, scope: !99)
!109 = !DILocation(line: 72, column: 5, scope: !99)
!110 = !DILocation(line: 73, column: 5, scope: !99)
!111 = !DILocation(line: 73, column: 13, scope: !99)
!112 = !DILocation(line: 74, column: 1, scope: !99)
!113 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 78, type: !55, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!114 = !DILocalVariable(name: "data", scope: !113, file: !45, line: 80, type: !42)
!115 = !DILocation(line: 80, column: 12, scope: !113)
!116 = !DILocalVariable(name: "funcPtr", scope: !113, file: !45, line: 81, type: !60)
!117 = !DILocation(line: 81, column: 12, scope: !113)
!118 = !DILocalVariable(name: "dataBuffer", scope: !113, file: !45, line: 82, type: !65)
!119 = !DILocation(line: 82, column: 10, scope: !113)
!120 = !DILocation(line: 83, column: 12, scope: !113)
!121 = !DILocation(line: 83, column: 10, scope: !113)
!122 = !DILocalVariable(name: "dataLen", scope: !123, file: !45, line: 86, type: !73)
!123 = distinct !DILexicalBlock(scope: !113, file: !45, line: 84, column: 5)
!124 = !DILocation(line: 86, column: 16, scope: !123)
!125 = !DILocation(line: 86, column: 33, scope: !123)
!126 = !DILocation(line: 86, column: 26, scope: !123)
!127 = !DILocalVariable(name: "environment", scope: !123, file: !45, line: 87, type: !42)
!128 = !DILocation(line: 87, column: 16, scope: !123)
!129 = !DILocation(line: 87, column: 30, scope: !123)
!130 = !DILocation(line: 89, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !45, line: 89, column: 13)
!132 = !DILocation(line: 89, column: 25, scope: !131)
!133 = !DILocation(line: 89, column: 13, scope: !123)
!134 = !DILocation(line: 92, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !45, line: 90, column: 9)
!136 = !DILocation(line: 92, column: 26, scope: !135)
!137 = !DILocation(line: 92, column: 25, scope: !135)
!138 = !DILocation(line: 92, column: 35, scope: !135)
!139 = !DILocation(line: 92, column: 52, scope: !135)
!140 = !DILocation(line: 92, column: 51, scope: !135)
!141 = !DILocation(line: 92, column: 59, scope: !135)
!142 = !DILocation(line: 92, column: 13, scope: !135)
!143 = !DILocation(line: 93, column: 9, scope: !135)
!144 = !DILocation(line: 95, column: 5, scope: !113)
!145 = !DILocation(line: 95, column: 13, scope: !113)
!146 = !DILocation(line: 96, column: 1, scope: !113)
!147 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_65_good", scope: !45, file: !45, line: 98, type: !55, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!148 = !DILocation(line: 100, column: 5, scope: !147)
!149 = !DILocation(line: 101, column: 5, scope: !147)
!150 = !DILocation(line: 102, column: 1, scope: !147)
!151 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_badSink", scope: !49, file: !49, line: 34, type: !61, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!152 = !DILocalVariable(name: "data", arg: 1, scope: !151, file: !49, line: 34, type: !42)
!153 = !DILocation(line: 34, column: 85, scope: !151)
!154 = !DILocation(line: 37, column: 13, scope: !151)
!155 = !DILocation(line: 37, column: 21, scope: !151)
!156 = !DILocation(line: 37, column: 5, scope: !151)
!157 = !DILocation(line: 38, column: 1, scope: !151)
!158 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_goodG2BSink", scope: !49, file: !49, line: 45, type: !61, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!159 = !DILocalVariable(name: "data", arg: 1, scope: !158, file: !49, line: 45, type: !42)
!160 = !DILocation(line: 45, column: 89, scope: !158)
!161 = !DILocation(line: 48, column: 13, scope: !158)
!162 = !DILocation(line: 48, column: 21, scope: !158)
!163 = !DILocation(line: 48, column: 5, scope: !158)
!164 = !DILocation(line: 49, column: 1, scope: !158)
!165 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_goodB2GSink", scope: !49, file: !49, line: 52, type: !61, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!166 = !DILocalVariable(name: "data", arg: 1, scope: !165, file: !49, line: 52, type: !42)
!167 = !DILocation(line: 52, column: 89, scope: !165)
!168 = !DILocation(line: 55, column: 13, scope: !165)
!169 = !DILocation(line: 55, column: 29, scope: !165)
!170 = !DILocation(line: 55, column: 5, scope: !165)
!171 = !DILocation(line: 56, column: 1, scope: !165)
!172 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !61, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!173 = !DILocalVariable(name: "line", arg: 1, scope: !172, file: !3, line: 11, type: !42)
!174 = !DILocation(line: 11, column: 25, scope: !172)
!175 = !DILocation(line: 13, column: 1, scope: !172)
!176 = !DILocation(line: 14, column: 8, scope: !177)
!177 = distinct !DILexicalBlock(scope: !172, file: !3, line: 14, column: 8)
!178 = !DILocation(line: 14, column: 13, scope: !177)
!179 = !DILocation(line: 14, column: 8, scope: !172)
!180 = !DILocation(line: 16, column: 24, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !3, line: 15, column: 5)
!182 = !DILocation(line: 16, column: 9, scope: !181)
!183 = !DILocation(line: 17, column: 5, scope: !181)
!184 = !DILocation(line: 18, column: 5, scope: !172)
!185 = !DILocation(line: 19, column: 1, scope: !172)
!186 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !61, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!187 = !DILocalVariable(name: "line", arg: 1, scope: !186, file: !3, line: 20, type: !42)
!188 = !DILocation(line: 20, column: 29, scope: !186)
!189 = !DILocation(line: 22, column: 8, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !3, line: 22, column: 8)
!191 = !DILocation(line: 22, column: 13, scope: !190)
!192 = !DILocation(line: 22, column: 8, scope: !186)
!193 = !DILocation(line: 24, column: 24, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !3, line: 23, column: 5)
!195 = !DILocation(line: 24, column: 9, scope: !194)
!196 = !DILocation(line: 25, column: 5, scope: !194)
!197 = !DILocation(line: 26, column: 1, scope: !186)
!198 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !199, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 74, baseType: !23)
!203 = !DILocalVariable(name: "line", arg: 1, scope: !198, file: !3, line: 27, type: !201)
!204 = !DILocation(line: 27, column: 29, scope: !198)
!205 = !DILocation(line: 29, column: 8, scope: !206)
!206 = distinct !DILexicalBlock(scope: !198, file: !3, line: 29, column: 8)
!207 = !DILocation(line: 29, column: 13, scope: !206)
!208 = !DILocation(line: 29, column: 8, scope: !198)
!209 = !DILocation(line: 31, column: 27, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !3, line: 30, column: 5)
!211 = !DILocation(line: 31, column: 9, scope: !210)
!212 = !DILocation(line: 32, column: 5, scope: !210)
!213 = !DILocation(line: 33, column: 1, scope: !198)
!214 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !215, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !23}
!217 = !DILocalVariable(name: "intNumber", arg: 1, scope: !214, file: !3, line: 35, type: !23)
!218 = !DILocation(line: 35, column: 24, scope: !214)
!219 = !DILocation(line: 37, column: 20, scope: !214)
!220 = !DILocation(line: 37, column: 5, scope: !214)
!221 = !DILocation(line: 38, column: 1, scope: !214)
!222 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !223, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !225}
!225 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!226 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !222, file: !3, line: 40, type: !225)
!227 = !DILocation(line: 40, column: 28, scope: !222)
!228 = !DILocation(line: 42, column: 21, scope: !222)
!229 = !DILocation(line: 42, column: 5, scope: !222)
!230 = !DILocation(line: 43, column: 1, scope: !222)
!231 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !232, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !234}
!234 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!235 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !231, file: !3, line: 45, type: !234)
!236 = !DILocation(line: 45, column: 28, scope: !231)
!237 = !DILocation(line: 47, column: 20, scope: !231)
!238 = !DILocation(line: 47, column: 5, scope: !231)
!239 = !DILocation(line: 48, column: 1, scope: !231)
!240 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !241, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !243}
!243 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!244 = !DILocalVariable(name: "longNumber", arg: 1, scope: !240, file: !3, line: 50, type: !243)
!245 = !DILocation(line: 50, column: 26, scope: !240)
!246 = !DILocation(line: 52, column: 21, scope: !240)
!247 = !DILocation(line: 52, column: 5, scope: !240)
!248 = !DILocation(line: 53, column: 1, scope: !240)
!249 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !250, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !252}
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !253, line: 27, baseType: !254)
!253 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !255, line: 44, baseType: !243)
!255 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!256 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !249, file: !3, line: 55, type: !252)
!257 = !DILocation(line: 55, column: 33, scope: !249)
!258 = !DILocation(line: 57, column: 29, scope: !249)
!259 = !DILocation(line: 57, column: 5, scope: !249)
!260 = !DILocation(line: 58, column: 1, scope: !249)
!261 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !262, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !73}
!264 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !261, file: !3, line: 60, type: !73)
!265 = !DILocation(line: 60, column: 29, scope: !261)
!266 = !DILocation(line: 62, column: 21, scope: !261)
!267 = !DILocation(line: 62, column: 5, scope: !261)
!268 = !DILocation(line: 63, column: 1, scope: !261)
!269 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !270, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !43}
!272 = !DILocalVariable(name: "charHex", arg: 1, scope: !269, file: !3, line: 65, type: !43)
!273 = !DILocation(line: 65, column: 29, scope: !269)
!274 = !DILocation(line: 67, column: 22, scope: !269)
!275 = !DILocation(line: 67, column: 5, scope: !269)
!276 = !DILocation(line: 68, column: 1, scope: !269)
!277 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !278, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !202}
!280 = !DILocalVariable(name: "wideChar", arg: 1, scope: !277, file: !3, line: 70, type: !202)
!281 = !DILocation(line: 70, column: 29, scope: !277)
!282 = !DILocalVariable(name: "s", scope: !277, file: !3, line: 74, type: !283)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 2)
!286 = !DILocation(line: 74, column: 13, scope: !277)
!287 = !DILocation(line: 75, column: 16, scope: !277)
!288 = !DILocation(line: 75, column: 9, scope: !277)
!289 = !DILocation(line: 75, column: 14, scope: !277)
!290 = !DILocation(line: 76, column: 9, scope: !277)
!291 = !DILocation(line: 76, column: 14, scope: !277)
!292 = !DILocation(line: 77, column: 21, scope: !277)
!293 = !DILocation(line: 77, column: 5, scope: !277)
!294 = !DILocation(line: 78, column: 1, scope: !277)
!295 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !296, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !7}
!298 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !295, file: !3, line: 80, type: !7)
!299 = !DILocation(line: 80, column: 33, scope: !295)
!300 = !DILocation(line: 82, column: 20, scope: !295)
!301 = !DILocation(line: 82, column: 5, scope: !295)
!302 = !DILocation(line: 83, column: 1, scope: !295)
!303 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !304, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !25}
!306 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !303, file: !3, line: 85, type: !25)
!307 = !DILocation(line: 85, column: 45, scope: !303)
!308 = !DILocation(line: 87, column: 22, scope: !303)
!309 = !DILocation(line: 87, column: 5, scope: !303)
!310 = !DILocation(line: 88, column: 1, scope: !303)
!311 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !312, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !314}
!314 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!315 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !311, file: !3, line: 90, type: !314)
!316 = !DILocation(line: 90, column: 29, scope: !311)
!317 = !DILocation(line: 92, column: 20, scope: !311)
!318 = !DILocation(line: 92, column: 5, scope: !311)
!319 = !DILocation(line: 93, column: 1, scope: !311)
!320 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !321, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !325, line: 100, baseType: !326)
!325 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_711/source_code")
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !325, line: 96, size: 64, elements: !327)
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !326, file: !325, line: 98, baseType: !23, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !326, file: !325, line: 99, baseType: !23, size: 32, offset: 32)
!330 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !320, file: !3, line: 95, type: !323)
!331 = !DILocation(line: 95, column: 40, scope: !320)
!332 = !DILocation(line: 97, column: 26, scope: !320)
!333 = !DILocation(line: 97, column: 47, scope: !320)
!334 = !DILocation(line: 97, column: 55, scope: !320)
!335 = !DILocation(line: 97, column: 76, scope: !320)
!336 = !DILocation(line: 97, column: 5, scope: !320)
!337 = !DILocation(line: 98, column: 1, scope: !320)
!338 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !339, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341, !73}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!342 = !DILocalVariable(name: "bytes", arg: 1, scope: !338, file: !3, line: 100, type: !341)
!343 = !DILocation(line: 100, column: 38, scope: !338)
!344 = !DILocalVariable(name: "numBytes", arg: 2, scope: !338, file: !3, line: 100, type: !73)
!345 = !DILocation(line: 100, column: 52, scope: !338)
!346 = !DILocalVariable(name: "i", scope: !338, file: !3, line: 102, type: !73)
!347 = !DILocation(line: 102, column: 12, scope: !338)
!348 = !DILocation(line: 103, column: 12, scope: !349)
!349 = distinct !DILexicalBlock(scope: !338, file: !3, line: 103, column: 5)
!350 = !DILocation(line: 103, column: 10, scope: !349)
!351 = !DILocation(line: 103, column: 17, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !3, line: 103, column: 5)
!353 = !DILocation(line: 103, column: 21, scope: !352)
!354 = !DILocation(line: 103, column: 19, scope: !352)
!355 = !DILocation(line: 103, column: 5, scope: !349)
!356 = !DILocation(line: 105, column: 24, scope: !357)
!357 = distinct !DILexicalBlock(scope: !352, file: !3, line: 104, column: 5)
!358 = !DILocation(line: 105, column: 30, scope: !357)
!359 = !DILocation(line: 105, column: 9, scope: !357)
!360 = !DILocation(line: 106, column: 5, scope: !357)
!361 = !DILocation(line: 103, column: 31, scope: !352)
!362 = !DILocation(line: 103, column: 5, scope: !352)
!363 = distinct !{!363, !355, !364, !365}
!364 = !DILocation(line: 106, column: 5, scope: !349)
!365 = !{!"llvm.loop.mustprogress"}
!366 = !DILocation(line: 107, column: 5, scope: !338)
!367 = !DILocation(line: 108, column: 1, scope: !338)
!368 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !369, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{!73, !341, !73, !42}
!371 = !DILocalVariable(name: "bytes", arg: 1, scope: !368, file: !3, line: 113, type: !341)
!372 = !DILocation(line: 113, column: 39, scope: !368)
!373 = !DILocalVariable(name: "numBytes", arg: 2, scope: !368, file: !3, line: 113, type: !73)
!374 = !DILocation(line: 113, column: 53, scope: !368)
!375 = !DILocalVariable(name: "hex", arg: 3, scope: !368, file: !3, line: 113, type: !42)
!376 = !DILocation(line: 113, column: 71, scope: !368)
!377 = !DILocalVariable(name: "numWritten", scope: !368, file: !3, line: 115, type: !73)
!378 = !DILocation(line: 115, column: 12, scope: !368)
!379 = !DILocation(line: 121, column: 5, scope: !368)
!380 = !DILocation(line: 121, column: 12, scope: !368)
!381 = !DILocation(line: 121, column: 25, scope: !368)
!382 = !DILocation(line: 121, column: 23, scope: !368)
!383 = !DILocation(line: 121, column: 34, scope: !368)
!384 = !DILocation(line: 121, column: 37, scope: !368)
!385 = !DILocation(line: 121, column: 67, scope: !368)
!386 = !DILocation(line: 121, column: 70, scope: !368)
!387 = !DILocation(line: 0, scope: !368)
!388 = !DILocalVariable(name: "byte", scope: !389, file: !3, line: 123, type: !23)
!389 = distinct !DILexicalBlock(scope: !368, file: !3, line: 122, column: 5)
!390 = !DILocation(line: 123, column: 13, scope: !389)
!391 = !DILocation(line: 124, column: 17, scope: !389)
!392 = !DILocation(line: 124, column: 25, scope: !389)
!393 = !DILocation(line: 124, column: 23, scope: !389)
!394 = !DILocation(line: 124, column: 9, scope: !389)
!395 = !DILocation(line: 125, column: 45, scope: !389)
!396 = !DILocation(line: 125, column: 29, scope: !389)
!397 = !DILocation(line: 125, column: 9, scope: !389)
!398 = !DILocation(line: 125, column: 15, scope: !389)
!399 = !DILocation(line: 125, column: 27, scope: !389)
!400 = !DILocation(line: 126, column: 9, scope: !389)
!401 = distinct !{!401, !379, !402, !365}
!402 = !DILocation(line: 127, column: 5, scope: !368)
!403 = !DILocation(line: 129, column: 12, scope: !368)
!404 = !DILocation(line: 129, column: 5, scope: !368)
!405 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !406, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!406 = !DISubroutineType(types: !407)
!407 = !{!73, !341, !73, !201}
!408 = !DILocalVariable(name: "bytes", arg: 1, scope: !405, file: !3, line: 135, type: !341)
!409 = !DILocation(line: 135, column: 41, scope: !405)
!410 = !DILocalVariable(name: "numBytes", arg: 2, scope: !405, file: !3, line: 135, type: !73)
!411 = !DILocation(line: 135, column: 55, scope: !405)
!412 = !DILocalVariable(name: "hex", arg: 3, scope: !405, file: !3, line: 135, type: !201)
!413 = !DILocation(line: 135, column: 76, scope: !405)
!414 = !DILocalVariable(name: "numWritten", scope: !405, file: !3, line: 137, type: !73)
!415 = !DILocation(line: 137, column: 12, scope: !405)
!416 = !DILocation(line: 143, column: 5, scope: !405)
!417 = !DILocation(line: 143, column: 12, scope: !405)
!418 = !DILocation(line: 143, column: 25, scope: !405)
!419 = !DILocation(line: 143, column: 23, scope: !405)
!420 = !DILocation(line: 143, column: 34, scope: !405)
!421 = !DILocation(line: 143, column: 47, scope: !405)
!422 = !DILocation(line: 143, column: 55, scope: !405)
!423 = !DILocation(line: 143, column: 53, scope: !405)
!424 = !DILocation(line: 143, column: 37, scope: !405)
!425 = !DILocation(line: 143, column: 68, scope: !405)
!426 = !DILocation(line: 143, column: 81, scope: !405)
!427 = !DILocation(line: 143, column: 89, scope: !405)
!428 = !DILocation(line: 143, column: 87, scope: !405)
!429 = !DILocation(line: 143, column: 100, scope: !405)
!430 = !DILocation(line: 143, column: 71, scope: !405)
!431 = !DILocation(line: 0, scope: !405)
!432 = !DILocalVariable(name: "byte", scope: !433, file: !3, line: 145, type: !23)
!433 = distinct !DILexicalBlock(scope: !405, file: !3, line: 144, column: 5)
!434 = !DILocation(line: 145, column: 13, scope: !433)
!435 = !DILocation(line: 146, column: 18, scope: !433)
!436 = !DILocation(line: 146, column: 26, scope: !433)
!437 = !DILocation(line: 146, column: 24, scope: !433)
!438 = !DILocation(line: 146, column: 9, scope: !433)
!439 = !DILocation(line: 147, column: 45, scope: !433)
!440 = !DILocation(line: 147, column: 29, scope: !433)
!441 = !DILocation(line: 147, column: 9, scope: !433)
!442 = !DILocation(line: 147, column: 15, scope: !433)
!443 = !DILocation(line: 147, column: 27, scope: !433)
!444 = !DILocation(line: 148, column: 9, scope: !433)
!445 = distinct !{!445, !416, !446, !365}
!446 = !DILocation(line: 149, column: 5, scope: !405)
!447 = !DILocation(line: 151, column: 12, scope: !405)
!448 = !DILocation(line: 151, column: 5, scope: !405)
!449 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !450, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!450 = !DISubroutineType(types: !451)
!451 = !{!23}
!452 = !DILocation(line: 158, column: 5, scope: !449)
!453 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !450, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!454 = !DILocation(line: 163, column: 5, scope: !453)
!455 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !450, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DILocation(line: 168, column: 13, scope: !455)
!457 = !DILocation(line: 168, column: 20, scope: !455)
!458 = !DILocation(line: 168, column: 5, scope: !455)
!459 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DILocation(line: 187, column: 16, scope: !459)
!461 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!462 = !DILocation(line: 188, column: 16, scope: !461)
!463 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!464 = !DILocation(line: 189, column: 16, scope: !463)
!465 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!466 = !DILocation(line: 190, column: 16, scope: !465)
!467 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!468 = !DILocation(line: 191, column: 16, scope: !467)
!469 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!470 = !DILocation(line: 192, column: 16, scope: !469)
!471 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!472 = !DILocation(line: 193, column: 16, scope: !471)
!473 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!474 = !DILocation(line: 194, column: 16, scope: !473)
!475 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!476 = !DILocation(line: 195, column: 16, scope: !475)
!477 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!478 = !DILocation(line: 198, column: 15, scope: !477)
!479 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DILocation(line: 199, column: 15, scope: !479)
!481 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DILocation(line: 200, column: 15, scope: !481)
!483 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!484 = !DILocation(line: 201, column: 15, scope: !483)
!485 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!486 = !DILocation(line: 202, column: 15, scope: !485)
!487 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!488 = !DILocation(line: 203, column: 15, scope: !487)
!489 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!490 = !DILocation(line: 204, column: 15, scope: !489)
!491 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DILocation(line: 205, column: 15, scope: !491)
!493 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!494 = !DILocation(line: 206, column: 15, scope: !493)
