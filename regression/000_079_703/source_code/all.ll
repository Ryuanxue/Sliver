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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_51_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
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
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !74, metadata !DIExpression()), !dbg !75
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !76
  store i8* %call1, i8** %environment, align 8, !dbg !75
  %2 = load i8*, i8** %environment, align 8, !dbg !77
  %cmp = icmp ne i8* %2, null, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !81
  %4 = load i64, i64* %dataLen, align 8, !dbg !83
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !84
  %5 = load i8*, i8** %environment, align 8, !dbg !85
  %6 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub = sub i64 100, %6, !dbg !87
  %sub2 = sub i64 %sub, 1, !dbg !88
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !89
  br label %if.end, !dbg !90

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !91
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_badSink(i8* %7), !dbg !92
  ret void, !dbg !93
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
define dso_local void @goodG2B() #0 !dbg !94 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !97, metadata !DIExpression()), !dbg !98
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !98
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !99
  store i8* %arraydecay, i8** %data, align 8, !dbg !100
  %1 = load i8*, i8** %data, align 8, !dbg !101
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !102
  %2 = load i8*, i8** %data, align 8, !dbg !103
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_goodG2BSink(i8* %2), !dbg !104
  ret void, !dbg !105
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !106 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !109, metadata !DIExpression()), !dbg !110
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !110
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !110
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !111
  store i8* %arraydecay, i8** %data, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !113, metadata !DIExpression()), !dbg !115
  %1 = load i8*, i8** %data, align 8, !dbg !116
  %call = call i64 @strlen(i8* %1) #7, !dbg !117
  store i64 %call, i64* %dataLen, align 8, !dbg !115
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !118, metadata !DIExpression()), !dbg !119
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !120
  store i8* %call1, i8** %environment, align 8, !dbg !119
  %2 = load i8*, i8** %environment, align 8, !dbg !121
  %cmp = icmp ne i8* %2, null, !dbg !123
  br i1 %cmp, label %if.then, label %if.end, !dbg !124

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !125
  %4 = load i64, i64* %dataLen, align 8, !dbg !127
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !128
  %5 = load i8*, i8** %environment, align 8, !dbg !129
  %6 = load i64, i64* %dataLen, align 8, !dbg !130
  %sub = sub i64 100, %6, !dbg !131
  %sub2 = sub i64 %sub, 1, !dbg !132
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !133
  br label %if.end, !dbg !134

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !135
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_goodB2GSink(i8* %7), !dbg !136
  ret void, !dbg !137
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_51_good() #0 !dbg !138 {
entry:
  call void @goodG2B(), !dbg !139
  call void @goodB2G(), !dbg !140
  ret void, !dbg !141
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_badSink(i8* %data) #0 !dbg !142 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !145, metadata !DIExpression()), !dbg !146
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !147
  %1 = load i8*, i8** %data.addr, align 8, !dbg !148
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !149
  ret void, !dbg !150
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_goodG2BSink(i8* %data) #0 !dbg !151 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !154
  %1 = load i8*, i8** %data.addr, align 8, !dbg !155
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !156
  ret void, !dbg !157
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_goodB2GSink(i8* %data) #0 !dbg !158 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !161
  %1 = load i8*, i8** %data.addr, align 8, !dbg !162
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %1), !dbg !163
  ret void, !dbg !164
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !165 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !166, metadata !DIExpression()), !dbg !167
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !168
  %0 = load i8*, i8** %line.addr, align 8, !dbg !169
  %cmp = icmp ne i8* %0, null, !dbg !171
  br i1 %cmp, label %if.then, label %if.end, !dbg !172

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !173
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !175
  br label %if.end, !dbg !176

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !177
  ret void, !dbg !178
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !179 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !180, metadata !DIExpression()), !dbg !181
  %0 = load i8*, i8** %line.addr, align 8, !dbg !182
  %cmp = icmp ne i8* %0, null, !dbg !184
  br i1 %cmp, label %if.then, label %if.end, !dbg !185

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !186
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !188
  br label %if.end, !dbg !189

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !190
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !191 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !196, metadata !DIExpression()), !dbg !197
  %0 = load i32*, i32** %line.addr, align 8, !dbg !198
  %cmp = icmp ne i32* %0, null, !dbg !200
  br i1 %cmp, label %if.then, label %if.end, !dbg !201

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !202
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !204
  br label %if.end, !dbg !205

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !206
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !207 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !212
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !213
  ret void, !dbg !214
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !215 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !219, metadata !DIExpression()), !dbg !220
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !221
  %conv = sext i16 %0 to i32, !dbg !221
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !222
  ret void, !dbg !223
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !224 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !228, metadata !DIExpression()), !dbg !229
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !230
  %conv = fpext float %0 to double, !dbg !230
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !231
  ret void, !dbg !232
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !233 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !237, metadata !DIExpression()), !dbg !238
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !239
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !240
  ret void, !dbg !241
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !242 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !249, metadata !DIExpression()), !dbg !250
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !251
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !252
  ret void, !dbg !253
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !254 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !259
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.11, i64 0, i64 0), i64 %0), !dbg !260
  ret void, !dbg !261
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !262 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !265, metadata !DIExpression()), !dbg !266
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !267
  %conv = sext i8 %0 to i32, !dbg !267
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !268
  ret void, !dbg !269
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !270 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !275, metadata !DIExpression()), !dbg !279
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !280
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !281
  store i32 %0, i32* %arrayidx, align 4, !dbg !282
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !283
  store i32 0, i32* %arrayidx1, align 4, !dbg !284
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !285
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !286
  ret void, !dbg !287
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !288 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !293
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !294
  ret void, !dbg !295
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !296 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !301
  %conv = zext i8 %0 to i32, !dbg !301
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !302
  ret void, !dbg !303
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !304 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !308, metadata !DIExpression()), !dbg !309
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !310
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !311
  ret void, !dbg !312
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !313 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !325
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !326
  %1 = load i32, i32* %intOne, align 4, !dbg !326
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !327
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !328
  %3 = load i32, i32* %intTwo, align 4, !dbg !328
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !329
  ret void, !dbg !330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !331 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !335, metadata !DIExpression()), !dbg !336
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata i64* %i, metadata !339, metadata !DIExpression()), !dbg !340
  store i64 0, i64* %i, align 8, !dbg !341
  br label %for.cond, !dbg !343

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !344
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !346
  %cmp = icmp ult i64 %0, %1, !dbg !347
  br i1 %cmp, label %for.body, label %for.end, !dbg !348

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !349
  %3 = load i64, i64* %i, align 8, !dbg !351
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !349
  %4 = load i8, i8* %arrayidx, align 1, !dbg !349
  %conv = zext i8 %4 to i32, !dbg !349
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !352
  br label %for.inc, !dbg !353

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !354
  %inc = add i64 %5, 1, !dbg !354
  store i64 %inc, i64* %i, align 8, !dbg !354
  br label %for.cond, !dbg !355, !llvm.loop !356

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !359
  ret void, !dbg !360
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !361 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !364, metadata !DIExpression()), !dbg !365
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !366, metadata !DIExpression()), !dbg !367
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !370, metadata !DIExpression()), !dbg !371
  store i64 0, i64* %numWritten, align 8, !dbg !371
  br label %while.cond, !dbg !372

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !373
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !374
  %cmp = icmp ult i64 %0, %1, !dbg !375
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !376

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !377
  %2 = load i16*, i16** %call, align 8, !dbg !377
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !377
  %4 = load i64, i64* %numWritten, align 8, !dbg !377
  %mul = mul i64 2, %4, !dbg !377
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !377
  %5 = load i8, i8* %arrayidx, align 1, !dbg !377
  %conv = sext i8 %5 to i32, !dbg !377
  %idxprom = sext i32 %conv to i64, !dbg !377
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !377
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !377
  %conv2 = zext i16 %6 to i32, !dbg !377
  %and = and i32 %conv2, 4096, !dbg !377
  %tobool = icmp ne i32 %and, 0, !dbg !377
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !378

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !379
  %7 = load i16*, i16** %call3, align 8, !dbg !379
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !379
  %9 = load i64, i64* %numWritten, align 8, !dbg !379
  %mul4 = mul i64 2, %9, !dbg !379
  %add = add i64 %mul4, 1, !dbg !379
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !379
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !379
  %conv6 = sext i8 %10 to i32, !dbg !379
  %idxprom7 = sext i32 %conv6 to i64, !dbg !379
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !379
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !379
  %conv9 = zext i16 %11 to i32, !dbg !379
  %and10 = and i32 %conv9, 4096, !dbg !379
  %tobool11 = icmp ne i32 %and10, 0, !dbg !378
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !380
  br i1 %12, label %while.body, label %while.end, !dbg !372

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !381, metadata !DIExpression()), !dbg !383
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !384
  %14 = load i64, i64* %numWritten, align 8, !dbg !385
  %mul12 = mul i64 2, %14, !dbg !386
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !384
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !387
  %15 = load i32, i32* %byte, align 4, !dbg !388
  %conv15 = trunc i32 %15 to i8, !dbg !389
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !390
  %17 = load i64, i64* %numWritten, align 8, !dbg !391
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !390
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !392
  %18 = load i64, i64* %numWritten, align 8, !dbg !393
  %inc = add i64 %18, 1, !dbg !393
  store i64 %inc, i64* %numWritten, align 8, !dbg !393
  br label %while.cond, !dbg !372, !llvm.loop !394

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !396
  ret i64 %19, !dbg !397
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !398 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !401, metadata !DIExpression()), !dbg !402
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !403, metadata !DIExpression()), !dbg !404
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !407, metadata !DIExpression()), !dbg !408
  store i64 0, i64* %numWritten, align 8, !dbg !408
  br label %while.cond, !dbg !409

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !410
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !411
  %cmp = icmp ult i64 %0, %1, !dbg !412
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !413

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !414
  %3 = load i64, i64* %numWritten, align 8, !dbg !415
  %mul = mul i64 2, %3, !dbg !416
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !414
  %4 = load i32, i32* %arrayidx, align 4, !dbg !414
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !417
  %tobool = icmp ne i32 %call, 0, !dbg !417
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !418

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !419
  %6 = load i64, i64* %numWritten, align 8, !dbg !420
  %mul1 = mul i64 2, %6, !dbg !421
  %add = add i64 %mul1, 1, !dbg !422
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !419
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !419
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !423
  %tobool4 = icmp ne i32 %call3, 0, !dbg !418
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !424
  br i1 %8, label %while.body, label %while.end, !dbg !409

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !425, metadata !DIExpression()), !dbg !427
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !428
  %10 = load i64, i64* %numWritten, align 8, !dbg !429
  %mul5 = mul i64 2, %10, !dbg !430
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !428
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !431
  %11 = load i32, i32* %byte, align 4, !dbg !432
  %conv = trunc i32 %11 to i8, !dbg !433
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !434
  %13 = load i64, i64* %numWritten, align 8, !dbg !435
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !434
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !436
  %14 = load i64, i64* %numWritten, align 8, !dbg !437
  %inc = add i64 %14, 1, !dbg !437
  store i64 %inc, i64* %numWritten, align 8, !dbg !437
  br label %while.cond, !dbg !409, !llvm.loop !438

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !440
  ret i64 %15, !dbg !441
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !442 {
entry:
  ret i32 1, !dbg !445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !446 {
entry:
  ret i32 0, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !448 {
entry:
  %call = call i32 @rand() #8, !dbg !449
  %rem = srem i32 %call, 2, !dbg !450
  ret i32 %rem, !dbg !451
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !452 {
entry:
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !454 {
entry:
  ret void, !dbg !455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !456 {
entry:
  ret void, !dbg !457
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !458 {
entry:
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !460 {
entry:
  ret void, !dbg !461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !462 {
entry:
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !464 {
entry:
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !466 {
entry:
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !468 {
entry:
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !470 {
entry:
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !472 {
entry:
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !474 {
entry:
  ret void, !dbg !475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !476 {
entry:
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !478 {
entry:
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !480 {
entry:
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !482 {
entry:
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !484 {
entry:
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !486 {
entry:
  ret void, !dbg !487
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_703/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_51a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_703/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_703/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_51_bad", scope: !45, file: !45, line: 37, type: !55, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 39, type: !42)
!58 = !DILocation(line: 39, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 40, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 100)
!63 = !DILocation(line: 40, column: 10, scope: !54)
!64 = !DILocation(line: 41, column: 12, scope: !54)
!65 = !DILocation(line: 41, column: 10, scope: !54)
!66 = !DILocalVariable(name: "dataLen", scope: !67, file: !45, line: 44, type: !68)
!67 = distinct !DILexicalBlock(scope: !54, file: !45, line: 42, column: 5)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 44, column: 16, scope: !67)
!72 = !DILocation(line: 44, column: 33, scope: !67)
!73 = !DILocation(line: 44, column: 26, scope: !67)
!74 = !DILocalVariable(name: "environment", scope: !67, file: !45, line: 45, type: !42)
!75 = !DILocation(line: 45, column: 16, scope: !67)
!76 = !DILocation(line: 45, column: 30, scope: !67)
!77 = !DILocation(line: 47, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !67, file: !45, line: 47, column: 13)
!79 = !DILocation(line: 47, column: 25, scope: !78)
!80 = !DILocation(line: 47, column: 13, scope: !67)
!81 = !DILocation(line: 50, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !45, line: 48, column: 9)
!83 = !DILocation(line: 50, column: 26, scope: !82)
!84 = !DILocation(line: 50, column: 25, scope: !82)
!85 = !DILocation(line: 50, column: 35, scope: !82)
!86 = !DILocation(line: 50, column: 52, scope: !82)
!87 = !DILocation(line: 50, column: 51, scope: !82)
!88 = !DILocation(line: 50, column: 59, scope: !82)
!89 = !DILocation(line: 50, column: 13, scope: !82)
!90 = !DILocation(line: 51, column: 9, scope: !82)
!91 = !DILocation(line: 53, column: 77, scope: !54)
!92 = !DILocation(line: 53, column: 5, scope: !54)
!93 = !DILocation(line: 54, column: 1, scope: !54)
!94 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 62, type: !55, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!95 = !DILocalVariable(name: "data", scope: !94, file: !45, line: 64, type: !42)
!96 = !DILocation(line: 64, column: 12, scope: !94)
!97 = !DILocalVariable(name: "dataBuffer", scope: !94, file: !45, line: 65, type: !60)
!98 = !DILocation(line: 65, column: 10, scope: !94)
!99 = !DILocation(line: 66, column: 12, scope: !94)
!100 = !DILocation(line: 66, column: 10, scope: !94)
!101 = !DILocation(line: 68, column: 12, scope: !94)
!102 = !DILocation(line: 68, column: 5, scope: !94)
!103 = !DILocation(line: 69, column: 81, scope: !94)
!104 = !DILocation(line: 69, column: 5, scope: !94)
!105 = !DILocation(line: 70, column: 1, scope: !94)
!106 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 74, type: !55, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!107 = !DILocalVariable(name: "data", scope: !106, file: !45, line: 76, type: !42)
!108 = !DILocation(line: 76, column: 12, scope: !106)
!109 = !DILocalVariable(name: "dataBuffer", scope: !106, file: !45, line: 77, type: !60)
!110 = !DILocation(line: 77, column: 10, scope: !106)
!111 = !DILocation(line: 78, column: 12, scope: !106)
!112 = !DILocation(line: 78, column: 10, scope: !106)
!113 = !DILocalVariable(name: "dataLen", scope: !114, file: !45, line: 81, type: !68)
!114 = distinct !DILexicalBlock(scope: !106, file: !45, line: 79, column: 5)
!115 = !DILocation(line: 81, column: 16, scope: !114)
!116 = !DILocation(line: 81, column: 33, scope: !114)
!117 = !DILocation(line: 81, column: 26, scope: !114)
!118 = !DILocalVariable(name: "environment", scope: !114, file: !45, line: 82, type: !42)
!119 = !DILocation(line: 82, column: 16, scope: !114)
!120 = !DILocation(line: 82, column: 30, scope: !114)
!121 = !DILocation(line: 84, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !114, file: !45, line: 84, column: 13)
!123 = !DILocation(line: 84, column: 25, scope: !122)
!124 = !DILocation(line: 84, column: 13, scope: !114)
!125 = !DILocation(line: 87, column: 21, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !45, line: 85, column: 9)
!127 = !DILocation(line: 87, column: 26, scope: !126)
!128 = !DILocation(line: 87, column: 25, scope: !126)
!129 = !DILocation(line: 87, column: 35, scope: !126)
!130 = !DILocation(line: 87, column: 52, scope: !126)
!131 = !DILocation(line: 87, column: 51, scope: !126)
!132 = !DILocation(line: 87, column: 59, scope: !126)
!133 = !DILocation(line: 87, column: 13, scope: !126)
!134 = !DILocation(line: 88, column: 9, scope: !126)
!135 = !DILocation(line: 90, column: 81, scope: !106)
!136 = !DILocation(line: 90, column: 5, scope: !106)
!137 = !DILocation(line: 91, column: 1, scope: !106)
!138 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_51_good", scope: !45, file: !45, line: 93, type: !55, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!139 = !DILocation(line: 95, column: 5, scope: !138)
!140 = !DILocation(line: 96, column: 5, scope: !138)
!141 = !DILocation(line: 97, column: 1, scope: !138)
!142 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_badSink", scope: !49, file: !49, line: 34, type: !143, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !42}
!145 = !DILocalVariable(name: "data", arg: 1, scope: !142, file: !49, line: 34, type: !42)
!146 = !DILocation(line: 34, column: 85, scope: !142)
!147 = !DILocation(line: 37, column: 13, scope: !142)
!148 = !DILocation(line: 37, column: 21, scope: !142)
!149 = !DILocation(line: 37, column: 5, scope: !142)
!150 = !DILocation(line: 38, column: 1, scope: !142)
!151 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_goodG2BSink", scope: !49, file: !49, line: 45, type: !143, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!152 = !DILocalVariable(name: "data", arg: 1, scope: !151, file: !49, line: 45, type: !42)
!153 = !DILocation(line: 45, column: 89, scope: !151)
!154 = !DILocation(line: 48, column: 13, scope: !151)
!155 = !DILocation(line: 48, column: 21, scope: !151)
!156 = !DILocation(line: 48, column: 5, scope: !151)
!157 = !DILocation(line: 49, column: 1, scope: !151)
!158 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_goodB2GSink", scope: !49, file: !49, line: 52, type: !143, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!159 = !DILocalVariable(name: "data", arg: 1, scope: !158, file: !49, line: 52, type: !42)
!160 = !DILocation(line: 52, column: 89, scope: !158)
!161 = !DILocation(line: 55, column: 13, scope: !158)
!162 = !DILocation(line: 55, column: 29, scope: !158)
!163 = !DILocation(line: 55, column: 5, scope: !158)
!164 = !DILocation(line: 56, column: 1, scope: !158)
!165 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !143, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!166 = !DILocalVariable(name: "line", arg: 1, scope: !165, file: !3, line: 11, type: !42)
!167 = !DILocation(line: 11, column: 25, scope: !165)
!168 = !DILocation(line: 13, column: 1, scope: !165)
!169 = !DILocation(line: 14, column: 8, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !3, line: 14, column: 8)
!171 = !DILocation(line: 14, column: 13, scope: !170)
!172 = !DILocation(line: 14, column: 8, scope: !165)
!173 = !DILocation(line: 16, column: 24, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !3, line: 15, column: 5)
!175 = !DILocation(line: 16, column: 9, scope: !174)
!176 = !DILocation(line: 17, column: 5, scope: !174)
!177 = !DILocation(line: 18, column: 5, scope: !165)
!178 = !DILocation(line: 19, column: 1, scope: !165)
!179 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !143, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!180 = !DILocalVariable(name: "line", arg: 1, scope: !179, file: !3, line: 20, type: !42)
!181 = !DILocation(line: 20, column: 29, scope: !179)
!182 = !DILocation(line: 22, column: 8, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !3, line: 22, column: 8)
!184 = !DILocation(line: 22, column: 13, scope: !183)
!185 = !DILocation(line: 22, column: 8, scope: !179)
!186 = !DILocation(line: 24, column: 24, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !3, line: 23, column: 5)
!188 = !DILocation(line: 24, column: 9, scope: !187)
!189 = !DILocation(line: 25, column: 5, scope: !187)
!190 = !DILocation(line: 26, column: 1, scope: !179)
!191 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !192, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !194}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!196 = !DILocalVariable(name: "line", arg: 1, scope: !191, file: !3, line: 27, type: !194)
!197 = !DILocation(line: 27, column: 29, scope: !191)
!198 = !DILocation(line: 29, column: 8, scope: !199)
!199 = distinct !DILexicalBlock(scope: !191, file: !3, line: 29, column: 8)
!200 = !DILocation(line: 29, column: 13, scope: !199)
!201 = !DILocation(line: 29, column: 8, scope: !191)
!202 = !DILocation(line: 31, column: 27, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !3, line: 30, column: 5)
!204 = !DILocation(line: 31, column: 9, scope: !203)
!205 = !DILocation(line: 32, column: 5, scope: !203)
!206 = !DILocation(line: 33, column: 1, scope: !191)
!207 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !208, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !23}
!210 = !DILocalVariable(name: "intNumber", arg: 1, scope: !207, file: !3, line: 35, type: !23)
!211 = !DILocation(line: 35, column: 24, scope: !207)
!212 = !DILocation(line: 37, column: 20, scope: !207)
!213 = !DILocation(line: 37, column: 5, scope: !207)
!214 = !DILocation(line: 38, column: 1, scope: !207)
!215 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !216, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !218}
!218 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!219 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !215, file: !3, line: 40, type: !218)
!220 = !DILocation(line: 40, column: 28, scope: !215)
!221 = !DILocation(line: 42, column: 21, scope: !215)
!222 = !DILocation(line: 42, column: 5, scope: !215)
!223 = !DILocation(line: 43, column: 1, scope: !215)
!224 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !225, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !227}
!227 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!228 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !224, file: !3, line: 45, type: !227)
!229 = !DILocation(line: 45, column: 28, scope: !224)
!230 = !DILocation(line: 47, column: 20, scope: !224)
!231 = !DILocation(line: 47, column: 5, scope: !224)
!232 = !DILocation(line: 48, column: 1, scope: !224)
!233 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !234, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !236}
!236 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!237 = !DILocalVariable(name: "longNumber", arg: 1, scope: !233, file: !3, line: 50, type: !236)
!238 = !DILocation(line: 50, column: 26, scope: !233)
!239 = !DILocation(line: 52, column: 21, scope: !233)
!240 = !DILocation(line: 52, column: 5, scope: !233)
!241 = !DILocation(line: 53, column: 1, scope: !233)
!242 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !243, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !245}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !246, line: 27, baseType: !247)
!246 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !248, line: 44, baseType: !236)
!248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!249 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !242, file: !3, line: 55, type: !245)
!250 = !DILocation(line: 55, column: 33, scope: !242)
!251 = !DILocation(line: 57, column: 29, scope: !242)
!252 = !DILocation(line: 57, column: 5, scope: !242)
!253 = !DILocation(line: 58, column: 1, scope: !242)
!254 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !255, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !68}
!257 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !254, file: !3, line: 60, type: !68)
!258 = !DILocation(line: 60, column: 29, scope: !254)
!259 = !DILocation(line: 62, column: 21, scope: !254)
!260 = !DILocation(line: 62, column: 5, scope: !254)
!261 = !DILocation(line: 63, column: 1, scope: !254)
!262 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !263, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !43}
!265 = !DILocalVariable(name: "charHex", arg: 1, scope: !262, file: !3, line: 65, type: !43)
!266 = !DILocation(line: 65, column: 29, scope: !262)
!267 = !DILocation(line: 67, column: 22, scope: !262)
!268 = !DILocation(line: 67, column: 5, scope: !262)
!269 = !DILocation(line: 68, column: 1, scope: !262)
!270 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !271, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !195}
!273 = !DILocalVariable(name: "wideChar", arg: 1, scope: !270, file: !3, line: 70, type: !195)
!274 = !DILocation(line: 70, column: 29, scope: !270)
!275 = !DILocalVariable(name: "s", scope: !270, file: !3, line: 74, type: !276)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 64, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 2)
!279 = !DILocation(line: 74, column: 13, scope: !270)
!280 = !DILocation(line: 75, column: 16, scope: !270)
!281 = !DILocation(line: 75, column: 9, scope: !270)
!282 = !DILocation(line: 75, column: 14, scope: !270)
!283 = !DILocation(line: 76, column: 9, scope: !270)
!284 = !DILocation(line: 76, column: 14, scope: !270)
!285 = !DILocation(line: 77, column: 21, scope: !270)
!286 = !DILocation(line: 77, column: 5, scope: !270)
!287 = !DILocation(line: 78, column: 1, scope: !270)
!288 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !289, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !7}
!291 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !288, file: !3, line: 80, type: !7)
!292 = !DILocation(line: 80, column: 33, scope: !288)
!293 = !DILocation(line: 82, column: 20, scope: !288)
!294 = !DILocation(line: 82, column: 5, scope: !288)
!295 = !DILocation(line: 83, column: 1, scope: !288)
!296 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !297, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !25}
!299 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !296, file: !3, line: 85, type: !25)
!300 = !DILocation(line: 85, column: 45, scope: !296)
!301 = !DILocation(line: 87, column: 22, scope: !296)
!302 = !DILocation(line: 87, column: 5, scope: !296)
!303 = !DILocation(line: 88, column: 1, scope: !296)
!304 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !305, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !307}
!307 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!308 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !304, file: !3, line: 90, type: !307)
!309 = !DILocation(line: 90, column: 29, scope: !304)
!310 = !DILocation(line: 92, column: 20, scope: !304)
!311 = !DILocation(line: 92, column: 5, scope: !304)
!312 = !DILocation(line: 93, column: 1, scope: !304)
!313 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !314, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !318, line: 100, baseType: !319)
!318 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_703/source_code")
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !318, line: 96, size: 64, elements: !320)
!320 = !{!321, !322}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !319, file: !318, line: 98, baseType: !23, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !319, file: !318, line: 99, baseType: !23, size: 32, offset: 32)
!323 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !313, file: !3, line: 95, type: !316)
!324 = !DILocation(line: 95, column: 40, scope: !313)
!325 = !DILocation(line: 97, column: 26, scope: !313)
!326 = !DILocation(line: 97, column: 47, scope: !313)
!327 = !DILocation(line: 97, column: 55, scope: !313)
!328 = !DILocation(line: 97, column: 76, scope: !313)
!329 = !DILocation(line: 97, column: 5, scope: !313)
!330 = !DILocation(line: 98, column: 1, scope: !313)
!331 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !332, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !334, !68}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!335 = !DILocalVariable(name: "bytes", arg: 1, scope: !331, file: !3, line: 100, type: !334)
!336 = !DILocation(line: 100, column: 38, scope: !331)
!337 = !DILocalVariable(name: "numBytes", arg: 2, scope: !331, file: !3, line: 100, type: !68)
!338 = !DILocation(line: 100, column: 52, scope: !331)
!339 = !DILocalVariable(name: "i", scope: !331, file: !3, line: 102, type: !68)
!340 = !DILocation(line: 102, column: 12, scope: !331)
!341 = !DILocation(line: 103, column: 12, scope: !342)
!342 = distinct !DILexicalBlock(scope: !331, file: !3, line: 103, column: 5)
!343 = !DILocation(line: 103, column: 10, scope: !342)
!344 = !DILocation(line: 103, column: 17, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !3, line: 103, column: 5)
!346 = !DILocation(line: 103, column: 21, scope: !345)
!347 = !DILocation(line: 103, column: 19, scope: !345)
!348 = !DILocation(line: 103, column: 5, scope: !342)
!349 = !DILocation(line: 105, column: 24, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !3, line: 104, column: 5)
!351 = !DILocation(line: 105, column: 30, scope: !350)
!352 = !DILocation(line: 105, column: 9, scope: !350)
!353 = !DILocation(line: 106, column: 5, scope: !350)
!354 = !DILocation(line: 103, column: 31, scope: !345)
!355 = !DILocation(line: 103, column: 5, scope: !345)
!356 = distinct !{!356, !348, !357, !358}
!357 = !DILocation(line: 106, column: 5, scope: !342)
!358 = !{!"llvm.loop.mustprogress"}
!359 = !DILocation(line: 107, column: 5, scope: !331)
!360 = !DILocation(line: 108, column: 1, scope: !331)
!361 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !362, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!362 = !DISubroutineType(types: !363)
!363 = !{!68, !334, !68, !42}
!364 = !DILocalVariable(name: "bytes", arg: 1, scope: !361, file: !3, line: 113, type: !334)
!365 = !DILocation(line: 113, column: 39, scope: !361)
!366 = !DILocalVariable(name: "numBytes", arg: 2, scope: !361, file: !3, line: 113, type: !68)
!367 = !DILocation(line: 113, column: 53, scope: !361)
!368 = !DILocalVariable(name: "hex", arg: 3, scope: !361, file: !3, line: 113, type: !42)
!369 = !DILocation(line: 113, column: 71, scope: !361)
!370 = !DILocalVariable(name: "numWritten", scope: !361, file: !3, line: 115, type: !68)
!371 = !DILocation(line: 115, column: 12, scope: !361)
!372 = !DILocation(line: 121, column: 5, scope: !361)
!373 = !DILocation(line: 121, column: 12, scope: !361)
!374 = !DILocation(line: 121, column: 25, scope: !361)
!375 = !DILocation(line: 121, column: 23, scope: !361)
!376 = !DILocation(line: 121, column: 34, scope: !361)
!377 = !DILocation(line: 121, column: 37, scope: !361)
!378 = !DILocation(line: 121, column: 67, scope: !361)
!379 = !DILocation(line: 121, column: 70, scope: !361)
!380 = !DILocation(line: 0, scope: !361)
!381 = !DILocalVariable(name: "byte", scope: !382, file: !3, line: 123, type: !23)
!382 = distinct !DILexicalBlock(scope: !361, file: !3, line: 122, column: 5)
!383 = !DILocation(line: 123, column: 13, scope: !382)
!384 = !DILocation(line: 124, column: 17, scope: !382)
!385 = !DILocation(line: 124, column: 25, scope: !382)
!386 = !DILocation(line: 124, column: 23, scope: !382)
!387 = !DILocation(line: 124, column: 9, scope: !382)
!388 = !DILocation(line: 125, column: 45, scope: !382)
!389 = !DILocation(line: 125, column: 29, scope: !382)
!390 = !DILocation(line: 125, column: 9, scope: !382)
!391 = !DILocation(line: 125, column: 15, scope: !382)
!392 = !DILocation(line: 125, column: 27, scope: !382)
!393 = !DILocation(line: 126, column: 9, scope: !382)
!394 = distinct !{!394, !372, !395, !358}
!395 = !DILocation(line: 127, column: 5, scope: !361)
!396 = !DILocation(line: 129, column: 12, scope: !361)
!397 = !DILocation(line: 129, column: 5, scope: !361)
!398 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !399, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!399 = !DISubroutineType(types: !400)
!400 = !{!68, !334, !68, !194}
!401 = !DILocalVariable(name: "bytes", arg: 1, scope: !398, file: !3, line: 135, type: !334)
!402 = !DILocation(line: 135, column: 41, scope: !398)
!403 = !DILocalVariable(name: "numBytes", arg: 2, scope: !398, file: !3, line: 135, type: !68)
!404 = !DILocation(line: 135, column: 55, scope: !398)
!405 = !DILocalVariable(name: "hex", arg: 3, scope: !398, file: !3, line: 135, type: !194)
!406 = !DILocation(line: 135, column: 76, scope: !398)
!407 = !DILocalVariable(name: "numWritten", scope: !398, file: !3, line: 137, type: !68)
!408 = !DILocation(line: 137, column: 12, scope: !398)
!409 = !DILocation(line: 143, column: 5, scope: !398)
!410 = !DILocation(line: 143, column: 12, scope: !398)
!411 = !DILocation(line: 143, column: 25, scope: !398)
!412 = !DILocation(line: 143, column: 23, scope: !398)
!413 = !DILocation(line: 143, column: 34, scope: !398)
!414 = !DILocation(line: 143, column: 47, scope: !398)
!415 = !DILocation(line: 143, column: 55, scope: !398)
!416 = !DILocation(line: 143, column: 53, scope: !398)
!417 = !DILocation(line: 143, column: 37, scope: !398)
!418 = !DILocation(line: 143, column: 68, scope: !398)
!419 = !DILocation(line: 143, column: 81, scope: !398)
!420 = !DILocation(line: 143, column: 89, scope: !398)
!421 = !DILocation(line: 143, column: 87, scope: !398)
!422 = !DILocation(line: 143, column: 100, scope: !398)
!423 = !DILocation(line: 143, column: 71, scope: !398)
!424 = !DILocation(line: 0, scope: !398)
!425 = !DILocalVariable(name: "byte", scope: !426, file: !3, line: 145, type: !23)
!426 = distinct !DILexicalBlock(scope: !398, file: !3, line: 144, column: 5)
!427 = !DILocation(line: 145, column: 13, scope: !426)
!428 = !DILocation(line: 146, column: 18, scope: !426)
!429 = !DILocation(line: 146, column: 26, scope: !426)
!430 = !DILocation(line: 146, column: 24, scope: !426)
!431 = !DILocation(line: 146, column: 9, scope: !426)
!432 = !DILocation(line: 147, column: 45, scope: !426)
!433 = !DILocation(line: 147, column: 29, scope: !426)
!434 = !DILocation(line: 147, column: 9, scope: !426)
!435 = !DILocation(line: 147, column: 15, scope: !426)
!436 = !DILocation(line: 147, column: 27, scope: !426)
!437 = !DILocation(line: 148, column: 9, scope: !426)
!438 = distinct !{!438, !409, !439, !358}
!439 = !DILocation(line: 149, column: 5, scope: !398)
!440 = !DILocation(line: 151, column: 12, scope: !398)
!441 = !DILocation(line: 151, column: 5, scope: !398)
!442 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !443, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!443 = !DISubroutineType(types: !444)
!444 = !{!23}
!445 = !DILocation(line: 158, column: 5, scope: !442)
!446 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !443, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!447 = !DILocation(line: 163, column: 5, scope: !446)
!448 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !443, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!449 = !DILocation(line: 168, column: 13, scope: !448)
!450 = !DILocation(line: 168, column: 20, scope: !448)
!451 = !DILocation(line: 168, column: 5, scope: !448)
!452 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!453 = !DILocation(line: 187, column: 16, scope: !452)
!454 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DILocation(line: 188, column: 16, scope: !454)
!456 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!457 = !DILocation(line: 189, column: 16, scope: !456)
!458 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!459 = !DILocation(line: 190, column: 16, scope: !458)
!460 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DILocation(line: 191, column: 16, scope: !460)
!462 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!463 = !DILocation(line: 192, column: 16, scope: !462)
!464 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!465 = !DILocation(line: 193, column: 16, scope: !464)
!466 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!467 = !DILocation(line: 194, column: 16, scope: !466)
!468 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!469 = !DILocation(line: 195, column: 16, scope: !468)
!470 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!471 = !DILocation(line: 198, column: 15, scope: !470)
!472 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!473 = !DILocation(line: 199, column: 15, scope: !472)
!474 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DILocation(line: 200, column: 15, scope: !474)
!476 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!477 = !DILocation(line: 201, column: 15, scope: !476)
!478 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!479 = !DILocation(line: 202, column: 15, scope: !478)
!480 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!481 = !DILocation(line: 203, column: 15, scope: !480)
!482 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DILocation(line: 204, column: 15, scope: !482)
!484 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!485 = !DILocation(line: 205, column: 15, scope: !484)
!486 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DILocation(line: 206, column: 15, scope: !486)
