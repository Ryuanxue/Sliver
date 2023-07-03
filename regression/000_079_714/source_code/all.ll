; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_badData = dso_local global i8* null, align 8, !dbg !0
@CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodG2BData = dso_local global i8* null, align 8, !dbg !8
@CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodB2GData = dso_local global i8* null, align 8, !dbg !12
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !14
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad() #0 !dbg !61 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
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
  store i8* %7, i8** @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_badData, align 8, !dbg !99
  call void (...) bitcast (void ()* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_badSink to void (...)*)(), !dbg !100
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
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !106
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !107
  store i8* %arraydecay, i8** %data, align 8, !dbg !108
  %1 = load i8*, i8** %data, align 8, !dbg !109
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !110
  %2 = load i8*, i8** %data, align 8, !dbg !111
  store i8* %2, i8** @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodG2BData, align 8, !dbg !112
  call void (...) bitcast (void ()* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodG2BSink to void (...)*)(), !dbg !113
  ret void, !dbg !114
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !115 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !116, metadata !DIExpression()), !dbg !117
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
  %7 = load i8*, i8** %data, align 8, !dbg !144
  store i8* %7, i8** @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodB2GData, align 8, !dbg !145
  call void (...) bitcast (void ()* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodB2GSink to void (...)*)(), !dbg !146
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_good() #0 !dbg !148 {
entry:
  call void @goodG2B(), !dbg !149
  call void @goodB2G(), !dbg !150
  ret void, !dbg !151
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_badSink() #0 !dbg !152 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_badData, align 8, !dbg !155
  store i8* %0, i8** %data, align 8, !dbg !154
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !156
  %2 = load i8*, i8** %data, align 8, !dbg !157
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !158
  ret void, !dbg !159
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodG2BSink() #0 !dbg !160 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodG2BData, align 8, !dbg !163
  store i8* %0, i8** %data, align 8, !dbg !162
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !164
  %2 = load i8*, i8** %data, align 8, !dbg !165
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !166
  ret void, !dbg !167
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodB2GSink() #0 !dbg !168 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodB2GData, align 8, !dbg !171
  store i8* %0, i8** %data, align 8, !dbg !170
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !172
  %2 = load i8*, i8** %data, align 8, !dbg !173
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %2), !dbg !174
  ret void, !dbg !175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !176 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !179, metadata !DIExpression()), !dbg !180
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !181
  %0 = load i8*, i8** %line.addr, align 8, !dbg !182
  %cmp = icmp ne i8* %0, null, !dbg !184
  br i1 %cmp, label %if.then, label %if.end, !dbg !185

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !186
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !188
  br label %if.end, !dbg !189

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !190
  ret void, !dbg !191
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !192 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !193, metadata !DIExpression()), !dbg !194
  %0 = load i8*, i8** %line.addr, align 8, !dbg !195
  %cmp = icmp ne i8* %0, null, !dbg !197
  br i1 %cmp, label %if.then, label %if.end, !dbg !198

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !199
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !201
  br label %if.end, !dbg !202

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !204 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = load i32*, i32** %line.addr, align 8, !dbg !211
  %cmp = icmp ne i32* %0, null, !dbg !213
  br i1 %cmp, label %if.then, label %if.end, !dbg !214

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !215
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !217
  br label %if.end, !dbg !218

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !219
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !220 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !223, metadata !DIExpression()), !dbg !224
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !225
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !226
  ret void, !dbg !227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !228 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !234
  %conv = sext i16 %0 to i32, !dbg !234
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !237 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !241, metadata !DIExpression()), !dbg !242
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !243
  %conv = fpext float %0 to double, !dbg !243
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !244
  ret void, !dbg !245
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !246 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !250, metadata !DIExpression()), !dbg !251
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !252
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !253
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !255 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !262, metadata !DIExpression()), !dbg !263
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !264
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.10, i64 0, i64 0), i64 %0), !dbg !265
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !267 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !272
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.11, i64 0, i64 0), i64 %0), !dbg !273
  ret void, !dbg !274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !275 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !280
  %conv = sext i8 %0 to i32, !dbg !280
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !281
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !283 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !286, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !288, metadata !DIExpression()), !dbg !292
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !293
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !294
  store i32 %0, i32* %arrayidx, align 4, !dbg !295
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !296
  store i32 0, i32* %arrayidx1, align 4, !dbg !297
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !298
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !299
  ret void, !dbg !300
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !301 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !304, metadata !DIExpression()), !dbg !305
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !306
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !307
  ret void, !dbg !308
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !309 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !314
  %conv = zext i8 %0 to i32, !dbg !314
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !317 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !323
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !324
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !326 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !338
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !339
  %1 = load i32, i32* %intOne, align 4, !dbg !339
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !340
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !341
  %3 = load i32, i32* %intTwo, align 4, !dbg !341
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !344 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !348, metadata !DIExpression()), !dbg !349
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata i64* %i, metadata !352, metadata !DIExpression()), !dbg !353
  store i64 0, i64* %i, align 8, !dbg !354
  br label %for.cond, !dbg !356

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !357
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !359
  %cmp = icmp ult i64 %0, %1, !dbg !360
  br i1 %cmp, label %for.body, label %for.end, !dbg !361

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !362
  %3 = load i64, i64* %i, align 8, !dbg !364
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !362
  %4 = load i8, i8* %arrayidx, align 1, !dbg !362
  %conv = zext i8 %4 to i32, !dbg !362
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !365
  br label %for.inc, !dbg !366

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !367
  %inc = add i64 %5, 1, !dbg !367
  store i64 %inc, i64* %i, align 8, !dbg !367
  br label %for.cond, !dbg !368, !llvm.loop !369

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !372
  ret void, !dbg !373
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !374 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !377, metadata !DIExpression()), !dbg !378
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !379, metadata !DIExpression()), !dbg !380
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !381, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !383, metadata !DIExpression()), !dbg !384
  store i64 0, i64* %numWritten, align 8, !dbg !384
  br label %while.cond, !dbg !385

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !386
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !387
  %cmp = icmp ult i64 %0, %1, !dbg !388
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !389

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !390
  %2 = load i16*, i16** %call, align 8, !dbg !390
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !390
  %4 = load i64, i64* %numWritten, align 8, !dbg !390
  %mul = mul i64 2, %4, !dbg !390
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !390
  %5 = load i8, i8* %arrayidx, align 1, !dbg !390
  %conv = sext i8 %5 to i32, !dbg !390
  %idxprom = sext i32 %conv to i64, !dbg !390
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !390
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !390
  %conv2 = zext i16 %6 to i32, !dbg !390
  %and = and i32 %conv2, 4096, !dbg !390
  %tobool = icmp ne i32 %and, 0, !dbg !390
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !391

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !392
  %7 = load i16*, i16** %call3, align 8, !dbg !392
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !392
  %9 = load i64, i64* %numWritten, align 8, !dbg !392
  %mul4 = mul i64 2, %9, !dbg !392
  %add = add i64 %mul4, 1, !dbg !392
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !392
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !392
  %conv6 = sext i8 %10 to i32, !dbg !392
  %idxprom7 = sext i32 %conv6 to i64, !dbg !392
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !392
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !392
  %conv9 = zext i16 %11 to i32, !dbg !392
  %and10 = and i32 %conv9, 4096, !dbg !392
  %tobool11 = icmp ne i32 %and10, 0, !dbg !391
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !393
  br i1 %12, label %while.body, label %while.end, !dbg !385

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !394, metadata !DIExpression()), !dbg !396
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !397
  %14 = load i64, i64* %numWritten, align 8, !dbg !398
  %mul12 = mul i64 2, %14, !dbg !399
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !397
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !400
  %15 = load i32, i32* %byte, align 4, !dbg !401
  %conv15 = trunc i32 %15 to i8, !dbg !402
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !403
  %17 = load i64, i64* %numWritten, align 8, !dbg !404
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !403
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !405
  %18 = load i64, i64* %numWritten, align 8, !dbg !406
  %inc = add i64 %18, 1, !dbg !406
  store i64 %inc, i64* %numWritten, align 8, !dbg !406
  br label %while.cond, !dbg !385, !llvm.loop !407

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !409
  ret i64 %19, !dbg !410
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !411 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !414, metadata !DIExpression()), !dbg !415
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !416, metadata !DIExpression()), !dbg !417
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !418, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !420, metadata !DIExpression()), !dbg !421
  store i64 0, i64* %numWritten, align 8, !dbg !421
  br label %while.cond, !dbg !422

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !423
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !424
  %cmp = icmp ult i64 %0, %1, !dbg !425
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !426

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !427
  %3 = load i64, i64* %numWritten, align 8, !dbg !428
  %mul = mul i64 2, %3, !dbg !429
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !427
  %4 = load i32, i32* %arrayidx, align 4, !dbg !427
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !430
  %tobool = icmp ne i32 %call, 0, !dbg !430
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !431

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !432
  %6 = load i64, i64* %numWritten, align 8, !dbg !433
  %mul1 = mul i64 2, %6, !dbg !434
  %add = add i64 %mul1, 1, !dbg !435
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !432
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !432
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !436
  %tobool4 = icmp ne i32 %call3, 0, !dbg !431
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !437
  br i1 %8, label %while.body, label %while.end, !dbg !422

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !438, metadata !DIExpression()), !dbg !440
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !441
  %10 = load i64, i64* %numWritten, align 8, !dbg !442
  %mul5 = mul i64 2, %10, !dbg !443
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !441
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !444
  %11 = load i32, i32* %byte, align 4, !dbg !445
  %conv = trunc i32 %11 to i8, !dbg !446
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !447
  %13 = load i64, i64* %numWritten, align 8, !dbg !448
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !447
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !449
  %14 = load i64, i64* %numWritten, align 8, !dbg !450
  %inc = add i64 %14, 1, !dbg !450
  store i64 %inc, i64* %numWritten, align 8, !dbg !450
  br label %while.cond, !dbg !422, !llvm.loop !451

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !453
  ret i64 %15, !dbg !454
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !455 {
entry:
  ret i32 1, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !459 {
entry:
  ret i32 0, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !461 {
entry:
  %call = call i32 @rand() #8, !dbg !462
  %rem = srem i32 %call, 2, !dbg !463
  ret i32 %rem, !dbg !464
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !465 {
entry:
  ret void, !dbg !466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !467 {
entry:
  ret void, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !469 {
entry:
  ret void, !dbg !470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !471 {
entry:
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !473 {
entry:
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !475 {
entry:
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !477 {
entry:
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !479 {
entry:
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !481 {
entry:
  ret void, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !483 {
entry:
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !485 {
entry:
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !487 {
entry:
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !489 {
entry:
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !491 {
entry:
  ret void, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !493 {
entry:
  ret void, !dbg !494
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !495 {
entry:
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !497 {
entry:
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !499 {
entry:
  ret void, !dbg !500
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

!llvm.dbg.cu = !{!2, !55, !16}
!llvm.ident = !{!57, !57, !57}
!llvm.module.flags = !{!58, !59, !60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_badData", scope: !2, file: !3, line: 33, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_714/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !12}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodG2BData", scope: !2, file: !3, line: 34, type: !10, isLocal: false, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodB2GData", scope: !2, file: !3, line: 35, type: !10, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !16, file: !17, line: 174, type: !36, isLocal: false, isDefinition: true)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !35, globals: !39, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_714/source_code")
!18 = !{!19}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 46, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!23 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!35 = !{!6, !36, !37, !38}
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!14, !40, !42, !44, !46, !48, !50, !52}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !16, file: !17, line: 175, type: !36, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !16, file: !17, line: 176, type: !36, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalTrue", scope: !16, file: !17, line: 181, type: !36, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalFalse", scope: !16, file: !17, line: 182, type: !36, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalFive", scope: !16, file: !17, line: 183, type: !36, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "globalArgc", scope: !16, file: !17, line: 214, type: !36, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "globalArgv", scope: !16, file: !17, line: 215, type: !54, isLocal: false, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_714/source_code")
!57 = !{!"clang version 12.0.0"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad", scope: !3, file: !3, line: 41, type: !62, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{null}
!64 = !DILocalVariable(name: "data", scope: !61, file: !3, line: 43, type: !10)
!65 = !DILocation(line: 43, column: 12, scope: !61)
!66 = !DILocalVariable(name: "dataBuffer", scope: !61, file: !3, line: 44, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 100)
!70 = !DILocation(line: 44, column: 10, scope: !61)
!71 = !DILocation(line: 45, column: 12, scope: !61)
!72 = !DILocation(line: 45, column: 10, scope: !61)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !3, line: 48, type: !75)
!74 = distinct !DILexicalBlock(scope: !61, file: !3, line: 46, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 48, column: 16, scope: !74)
!79 = !DILocation(line: 48, column: 33, scope: !74)
!80 = !DILocation(line: 48, column: 26, scope: !74)
!81 = !DILocalVariable(name: "environment", scope: !74, file: !3, line: 49, type: !10)
!82 = !DILocation(line: 49, column: 16, scope: !74)
!83 = !DILocation(line: 49, column: 30, scope: !74)
!84 = !DILocation(line: 51, column: 13, scope: !85)
!85 = distinct !DILexicalBlock(scope: !74, file: !3, line: 51, column: 13)
!86 = !DILocation(line: 51, column: 25, scope: !85)
!87 = !DILocation(line: 51, column: 13, scope: !74)
!88 = !DILocation(line: 54, column: 21, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !3, line: 52, column: 9)
!90 = !DILocation(line: 54, column: 26, scope: !89)
!91 = !DILocation(line: 54, column: 25, scope: !89)
!92 = !DILocation(line: 54, column: 35, scope: !89)
!93 = !DILocation(line: 54, column: 52, scope: !89)
!94 = !DILocation(line: 54, column: 51, scope: !89)
!95 = !DILocation(line: 54, column: 59, scope: !89)
!96 = !DILocation(line: 54, column: 13, scope: !89)
!97 = !DILocation(line: 55, column: 9, scope: !89)
!98 = !DILocation(line: 57, column: 78, scope: !61)
!99 = !DILocation(line: 57, column: 76, scope: !61)
!100 = !DILocation(line: 58, column: 5, scope: !61)
!101 = !DILocation(line: 59, column: 1, scope: !61)
!102 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 68, type: !62, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!103 = !DILocalVariable(name: "data", scope: !102, file: !3, line: 70, type: !10)
!104 = !DILocation(line: 70, column: 12, scope: !102)
!105 = !DILocalVariable(name: "dataBuffer", scope: !102, file: !3, line: 71, type: !67)
!106 = !DILocation(line: 71, column: 10, scope: !102)
!107 = !DILocation(line: 72, column: 12, scope: !102)
!108 = !DILocation(line: 72, column: 10, scope: !102)
!109 = !DILocation(line: 74, column: 12, scope: !102)
!110 = !DILocation(line: 74, column: 5, scope: !102)
!111 = !DILocation(line: 75, column: 82, scope: !102)
!112 = !DILocation(line: 75, column: 80, scope: !102)
!113 = !DILocation(line: 76, column: 5, scope: !102)
!114 = !DILocation(line: 77, column: 1, scope: !102)
!115 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 80, type: !62, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!116 = !DILocalVariable(name: "data", scope: !115, file: !3, line: 82, type: !10)
!117 = !DILocation(line: 82, column: 12, scope: !115)
!118 = !DILocalVariable(name: "dataBuffer", scope: !115, file: !3, line: 83, type: !67)
!119 = !DILocation(line: 83, column: 10, scope: !115)
!120 = !DILocation(line: 84, column: 12, scope: !115)
!121 = !DILocation(line: 84, column: 10, scope: !115)
!122 = !DILocalVariable(name: "dataLen", scope: !123, file: !3, line: 87, type: !75)
!123 = distinct !DILexicalBlock(scope: !115, file: !3, line: 85, column: 5)
!124 = !DILocation(line: 87, column: 16, scope: !123)
!125 = !DILocation(line: 87, column: 33, scope: !123)
!126 = !DILocation(line: 87, column: 26, scope: !123)
!127 = !DILocalVariable(name: "environment", scope: !123, file: !3, line: 88, type: !10)
!128 = !DILocation(line: 88, column: 16, scope: !123)
!129 = !DILocation(line: 88, column: 30, scope: !123)
!130 = !DILocation(line: 90, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !3, line: 90, column: 13)
!132 = !DILocation(line: 90, column: 25, scope: !131)
!133 = !DILocation(line: 90, column: 13, scope: !123)
!134 = !DILocation(line: 93, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !3, line: 91, column: 9)
!136 = !DILocation(line: 93, column: 26, scope: !135)
!137 = !DILocation(line: 93, column: 25, scope: !135)
!138 = !DILocation(line: 93, column: 35, scope: !135)
!139 = !DILocation(line: 93, column: 52, scope: !135)
!140 = !DILocation(line: 93, column: 51, scope: !135)
!141 = !DILocation(line: 93, column: 59, scope: !135)
!142 = !DILocation(line: 93, column: 13, scope: !135)
!143 = !DILocation(line: 94, column: 9, scope: !135)
!144 = !DILocation(line: 96, column: 82, scope: !115)
!145 = !DILocation(line: 96, column: 80, scope: !115)
!146 = !DILocation(line: 97, column: 5, scope: !115)
!147 = !DILocation(line: 98, column: 1, scope: !115)
!148 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_good", scope: !3, file: !3, line: 100, type: !62, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!149 = !DILocation(line: 102, column: 5, scope: !148)
!150 = !DILocation(line: 103, column: 5, scope: !148)
!151 = !DILocation(line: 104, column: 1, scope: !148)
!152 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_badSink", scope: !56, file: !56, line: 38, type: !62, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!153 = !DILocalVariable(name: "data", scope: !152, file: !56, line: 40, type: !10)
!154 = !DILocation(line: 40, column: 12, scope: !152)
!155 = !DILocation(line: 40, column: 19, scope: !152)
!156 = !DILocation(line: 42, column: 13, scope: !152)
!157 = !DILocation(line: 42, column: 21, scope: !152)
!158 = !DILocation(line: 42, column: 5, scope: !152)
!159 = !DILocation(line: 43, column: 1, scope: !152)
!160 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodG2BSink", scope: !56, file: !56, line: 50, type: !62, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!161 = !DILocalVariable(name: "data", scope: !160, file: !56, line: 52, type: !10)
!162 = !DILocation(line: 52, column: 12, scope: !160)
!163 = !DILocation(line: 52, column: 19, scope: !160)
!164 = !DILocation(line: 54, column: 13, scope: !160)
!165 = !DILocation(line: 54, column: 21, scope: !160)
!166 = !DILocation(line: 54, column: 5, scope: !160)
!167 = !DILocation(line: 55, column: 1, scope: !160)
!168 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodB2GSink", scope: !56, file: !56, line: 58, type: !62, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!169 = !DILocalVariable(name: "data", scope: !168, file: !56, line: 60, type: !10)
!170 = !DILocation(line: 60, column: 12, scope: !168)
!171 = !DILocation(line: 60, column: 19, scope: !168)
!172 = !DILocation(line: 62, column: 13, scope: !168)
!173 = !DILocation(line: 62, column: 29, scope: !168)
!174 = !DILocation(line: 62, column: 5, scope: !168)
!175 = !DILocation(line: 63, column: 1, scope: !168)
!176 = distinct !DISubprogram(name: "printLine", scope: !17, file: !17, line: 11, type: !177, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !10}
!179 = !DILocalVariable(name: "line", arg: 1, scope: !176, file: !17, line: 11, type: !10)
!180 = !DILocation(line: 11, column: 25, scope: !176)
!181 = !DILocation(line: 13, column: 1, scope: !176)
!182 = !DILocation(line: 14, column: 8, scope: !183)
!183 = distinct !DILexicalBlock(scope: !176, file: !17, line: 14, column: 8)
!184 = !DILocation(line: 14, column: 13, scope: !183)
!185 = !DILocation(line: 14, column: 8, scope: !176)
!186 = !DILocation(line: 16, column: 24, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !17, line: 15, column: 5)
!188 = !DILocation(line: 16, column: 9, scope: !187)
!189 = !DILocation(line: 17, column: 5, scope: !187)
!190 = !DILocation(line: 18, column: 5, scope: !176)
!191 = !DILocation(line: 19, column: 1, scope: !176)
!192 = distinct !DISubprogram(name: "printSinkLine", scope: !17, file: !17, line: 20, type: !177, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!193 = !DILocalVariable(name: "line", arg: 1, scope: !192, file: !17, line: 20, type: !10)
!194 = !DILocation(line: 20, column: 29, scope: !192)
!195 = !DILocation(line: 22, column: 8, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !17, line: 22, column: 8)
!197 = !DILocation(line: 22, column: 13, scope: !196)
!198 = !DILocation(line: 22, column: 8, scope: !192)
!199 = !DILocation(line: 24, column: 24, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !17, line: 23, column: 5)
!201 = !DILocation(line: 24, column: 9, scope: !200)
!202 = !DILocation(line: 25, column: 5, scope: !200)
!203 = !DILocation(line: 26, column: 1, scope: !192)
!204 = distinct !DISubprogram(name: "printWLine", scope: !17, file: !17, line: 27, type: !205, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !36)
!209 = !DILocalVariable(name: "line", arg: 1, scope: !204, file: !17, line: 27, type: !207)
!210 = !DILocation(line: 27, column: 29, scope: !204)
!211 = !DILocation(line: 29, column: 8, scope: !212)
!212 = distinct !DILexicalBlock(scope: !204, file: !17, line: 29, column: 8)
!213 = !DILocation(line: 29, column: 13, scope: !212)
!214 = !DILocation(line: 29, column: 8, scope: !204)
!215 = !DILocation(line: 31, column: 27, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !17, line: 30, column: 5)
!217 = !DILocation(line: 31, column: 9, scope: !216)
!218 = !DILocation(line: 32, column: 5, scope: !216)
!219 = !DILocation(line: 33, column: 1, scope: !204)
!220 = distinct !DISubprogram(name: "printIntLine", scope: !17, file: !17, line: 35, type: !221, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !36}
!223 = !DILocalVariable(name: "intNumber", arg: 1, scope: !220, file: !17, line: 35, type: !36)
!224 = !DILocation(line: 35, column: 24, scope: !220)
!225 = !DILocation(line: 37, column: 20, scope: !220)
!226 = !DILocation(line: 37, column: 5, scope: !220)
!227 = !DILocation(line: 38, column: 1, scope: !220)
!228 = distinct !DISubprogram(name: "printShortLine", scope: !17, file: !17, line: 40, type: !229, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !231}
!231 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!232 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !228, file: !17, line: 40, type: !231)
!233 = !DILocation(line: 40, column: 28, scope: !228)
!234 = !DILocation(line: 42, column: 21, scope: !228)
!235 = !DILocation(line: 42, column: 5, scope: !228)
!236 = !DILocation(line: 43, column: 1, scope: !228)
!237 = distinct !DISubprogram(name: "printFloatLine", scope: !17, file: !17, line: 45, type: !238, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !240}
!240 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!241 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !237, file: !17, line: 45, type: !240)
!242 = !DILocation(line: 45, column: 28, scope: !237)
!243 = !DILocation(line: 47, column: 20, scope: !237)
!244 = !DILocation(line: 47, column: 5, scope: !237)
!245 = !DILocation(line: 48, column: 1, scope: !237)
!246 = distinct !DISubprogram(name: "printLongLine", scope: !17, file: !17, line: 50, type: !247, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !249}
!249 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!250 = !DILocalVariable(name: "longNumber", arg: 1, scope: !246, file: !17, line: 50, type: !249)
!251 = !DILocation(line: 50, column: 26, scope: !246)
!252 = !DILocation(line: 52, column: 21, scope: !246)
!253 = !DILocation(line: 52, column: 5, scope: !246)
!254 = !DILocation(line: 53, column: 1, scope: !246)
!255 = distinct !DISubprogram(name: "printLongLongLine", scope: !17, file: !17, line: 55, type: !256, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !258}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !259, line: 27, baseType: !260)
!259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !261, line: 44, baseType: !249)
!261 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!262 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !255, file: !17, line: 55, type: !258)
!263 = !DILocation(line: 55, column: 33, scope: !255)
!264 = !DILocation(line: 57, column: 29, scope: !255)
!265 = !DILocation(line: 57, column: 5, scope: !255)
!266 = !DILocation(line: 58, column: 1, scope: !255)
!267 = distinct !DISubprogram(name: "printSizeTLine", scope: !17, file: !17, line: 60, type: !268, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !75}
!270 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !267, file: !17, line: 60, type: !75)
!271 = !DILocation(line: 60, column: 29, scope: !267)
!272 = !DILocation(line: 62, column: 21, scope: !267)
!273 = !DILocation(line: 62, column: 5, scope: !267)
!274 = !DILocation(line: 63, column: 1, scope: !267)
!275 = distinct !DISubprogram(name: "printHexCharLine", scope: !17, file: !17, line: 65, type: !276, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !11}
!278 = !DILocalVariable(name: "charHex", arg: 1, scope: !275, file: !17, line: 65, type: !11)
!279 = !DILocation(line: 65, column: 29, scope: !275)
!280 = !DILocation(line: 67, column: 22, scope: !275)
!281 = !DILocation(line: 67, column: 5, scope: !275)
!282 = !DILocation(line: 68, column: 1, scope: !275)
!283 = distinct !DISubprogram(name: "printWcharLine", scope: !17, file: !17, line: 70, type: !284, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !208}
!286 = !DILocalVariable(name: "wideChar", arg: 1, scope: !283, file: !17, line: 70, type: !208)
!287 = !DILocation(line: 70, column: 29, scope: !283)
!288 = !DILocalVariable(name: "s", scope: !283, file: !17, line: 74, type: !289)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 64, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 2)
!292 = !DILocation(line: 74, column: 13, scope: !283)
!293 = !DILocation(line: 75, column: 16, scope: !283)
!294 = !DILocation(line: 75, column: 9, scope: !283)
!295 = !DILocation(line: 75, column: 14, scope: !283)
!296 = !DILocation(line: 76, column: 9, scope: !283)
!297 = !DILocation(line: 76, column: 14, scope: !283)
!298 = !DILocation(line: 77, column: 21, scope: !283)
!299 = !DILocation(line: 77, column: 5, scope: !283)
!300 = !DILocation(line: 78, column: 1, scope: !283)
!301 = distinct !DISubprogram(name: "printUnsignedLine", scope: !17, file: !17, line: 80, type: !302, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !21}
!304 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !301, file: !17, line: 80, type: !21)
!305 = !DILocation(line: 80, column: 33, scope: !301)
!306 = !DILocation(line: 82, column: 20, scope: !301)
!307 = !DILocation(line: 82, column: 5, scope: !301)
!308 = !DILocation(line: 83, column: 1, scope: !301)
!309 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !17, file: !17, line: 85, type: !310, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !38}
!312 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !309, file: !17, line: 85, type: !38)
!313 = !DILocation(line: 85, column: 45, scope: !309)
!314 = !DILocation(line: 87, column: 22, scope: !309)
!315 = !DILocation(line: 87, column: 5, scope: !309)
!316 = !DILocation(line: 88, column: 1, scope: !309)
!317 = distinct !DISubprogram(name: "printDoubleLine", scope: !17, file: !17, line: 90, type: !318, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!321 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !317, file: !17, line: 90, type: !320)
!322 = !DILocation(line: 90, column: 29, scope: !317)
!323 = !DILocation(line: 92, column: 20, scope: !317)
!324 = !DILocation(line: 92, column: 5, scope: !317)
!325 = !DILocation(line: 93, column: 1, scope: !317)
!326 = distinct !DISubprogram(name: "printStructLine", scope: !17, file: !17, line: 95, type: !327, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !331, line: 100, baseType: !332)
!331 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_714/source_code")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !331, line: 96, size: 64, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !332, file: !331, line: 98, baseType: !36, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !332, file: !331, line: 99, baseType: !36, size: 32, offset: 32)
!336 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !326, file: !17, line: 95, type: !329)
!337 = !DILocation(line: 95, column: 40, scope: !326)
!338 = !DILocation(line: 97, column: 26, scope: !326)
!339 = !DILocation(line: 97, column: 47, scope: !326)
!340 = !DILocation(line: 97, column: 55, scope: !326)
!341 = !DILocation(line: 97, column: 76, scope: !326)
!342 = !DILocation(line: 97, column: 5, scope: !326)
!343 = !DILocation(line: 98, column: 1, scope: !326)
!344 = distinct !DISubprogram(name: "printBytesLine", scope: !17, file: !17, line: 100, type: !345, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347, !75}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!348 = !DILocalVariable(name: "bytes", arg: 1, scope: !344, file: !17, line: 100, type: !347)
!349 = !DILocation(line: 100, column: 38, scope: !344)
!350 = !DILocalVariable(name: "numBytes", arg: 2, scope: !344, file: !17, line: 100, type: !75)
!351 = !DILocation(line: 100, column: 52, scope: !344)
!352 = !DILocalVariable(name: "i", scope: !344, file: !17, line: 102, type: !75)
!353 = !DILocation(line: 102, column: 12, scope: !344)
!354 = !DILocation(line: 103, column: 12, scope: !355)
!355 = distinct !DILexicalBlock(scope: !344, file: !17, line: 103, column: 5)
!356 = !DILocation(line: 103, column: 10, scope: !355)
!357 = !DILocation(line: 103, column: 17, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !17, line: 103, column: 5)
!359 = !DILocation(line: 103, column: 21, scope: !358)
!360 = !DILocation(line: 103, column: 19, scope: !358)
!361 = !DILocation(line: 103, column: 5, scope: !355)
!362 = !DILocation(line: 105, column: 24, scope: !363)
!363 = distinct !DILexicalBlock(scope: !358, file: !17, line: 104, column: 5)
!364 = !DILocation(line: 105, column: 30, scope: !363)
!365 = !DILocation(line: 105, column: 9, scope: !363)
!366 = !DILocation(line: 106, column: 5, scope: !363)
!367 = !DILocation(line: 103, column: 31, scope: !358)
!368 = !DILocation(line: 103, column: 5, scope: !358)
!369 = distinct !{!369, !361, !370, !371}
!370 = !DILocation(line: 106, column: 5, scope: !355)
!371 = !{!"llvm.loop.mustprogress"}
!372 = !DILocation(line: 107, column: 5, scope: !344)
!373 = !DILocation(line: 108, column: 1, scope: !344)
!374 = distinct !DISubprogram(name: "decodeHexChars", scope: !17, file: !17, line: 113, type: !375, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!375 = !DISubroutineType(types: !376)
!376 = !{!75, !347, !75, !10}
!377 = !DILocalVariable(name: "bytes", arg: 1, scope: !374, file: !17, line: 113, type: !347)
!378 = !DILocation(line: 113, column: 39, scope: !374)
!379 = !DILocalVariable(name: "numBytes", arg: 2, scope: !374, file: !17, line: 113, type: !75)
!380 = !DILocation(line: 113, column: 53, scope: !374)
!381 = !DILocalVariable(name: "hex", arg: 3, scope: !374, file: !17, line: 113, type: !10)
!382 = !DILocation(line: 113, column: 71, scope: !374)
!383 = !DILocalVariable(name: "numWritten", scope: !374, file: !17, line: 115, type: !75)
!384 = !DILocation(line: 115, column: 12, scope: !374)
!385 = !DILocation(line: 121, column: 5, scope: !374)
!386 = !DILocation(line: 121, column: 12, scope: !374)
!387 = !DILocation(line: 121, column: 25, scope: !374)
!388 = !DILocation(line: 121, column: 23, scope: !374)
!389 = !DILocation(line: 121, column: 34, scope: !374)
!390 = !DILocation(line: 121, column: 37, scope: !374)
!391 = !DILocation(line: 121, column: 67, scope: !374)
!392 = !DILocation(line: 121, column: 70, scope: !374)
!393 = !DILocation(line: 0, scope: !374)
!394 = !DILocalVariable(name: "byte", scope: !395, file: !17, line: 123, type: !36)
!395 = distinct !DILexicalBlock(scope: !374, file: !17, line: 122, column: 5)
!396 = !DILocation(line: 123, column: 13, scope: !395)
!397 = !DILocation(line: 124, column: 17, scope: !395)
!398 = !DILocation(line: 124, column: 25, scope: !395)
!399 = !DILocation(line: 124, column: 23, scope: !395)
!400 = !DILocation(line: 124, column: 9, scope: !395)
!401 = !DILocation(line: 125, column: 45, scope: !395)
!402 = !DILocation(line: 125, column: 29, scope: !395)
!403 = !DILocation(line: 125, column: 9, scope: !395)
!404 = !DILocation(line: 125, column: 15, scope: !395)
!405 = !DILocation(line: 125, column: 27, scope: !395)
!406 = !DILocation(line: 126, column: 9, scope: !395)
!407 = distinct !{!407, !385, !408, !371}
!408 = !DILocation(line: 127, column: 5, scope: !374)
!409 = !DILocation(line: 129, column: 12, scope: !374)
!410 = !DILocation(line: 129, column: 5, scope: !374)
!411 = distinct !DISubprogram(name: "decodeHexWChars", scope: !17, file: !17, line: 135, type: !412, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!412 = !DISubroutineType(types: !413)
!413 = !{!75, !347, !75, !207}
!414 = !DILocalVariable(name: "bytes", arg: 1, scope: !411, file: !17, line: 135, type: !347)
!415 = !DILocation(line: 135, column: 41, scope: !411)
!416 = !DILocalVariable(name: "numBytes", arg: 2, scope: !411, file: !17, line: 135, type: !75)
!417 = !DILocation(line: 135, column: 55, scope: !411)
!418 = !DILocalVariable(name: "hex", arg: 3, scope: !411, file: !17, line: 135, type: !207)
!419 = !DILocation(line: 135, column: 76, scope: !411)
!420 = !DILocalVariable(name: "numWritten", scope: !411, file: !17, line: 137, type: !75)
!421 = !DILocation(line: 137, column: 12, scope: !411)
!422 = !DILocation(line: 143, column: 5, scope: !411)
!423 = !DILocation(line: 143, column: 12, scope: !411)
!424 = !DILocation(line: 143, column: 25, scope: !411)
!425 = !DILocation(line: 143, column: 23, scope: !411)
!426 = !DILocation(line: 143, column: 34, scope: !411)
!427 = !DILocation(line: 143, column: 47, scope: !411)
!428 = !DILocation(line: 143, column: 55, scope: !411)
!429 = !DILocation(line: 143, column: 53, scope: !411)
!430 = !DILocation(line: 143, column: 37, scope: !411)
!431 = !DILocation(line: 143, column: 68, scope: !411)
!432 = !DILocation(line: 143, column: 81, scope: !411)
!433 = !DILocation(line: 143, column: 89, scope: !411)
!434 = !DILocation(line: 143, column: 87, scope: !411)
!435 = !DILocation(line: 143, column: 100, scope: !411)
!436 = !DILocation(line: 143, column: 71, scope: !411)
!437 = !DILocation(line: 0, scope: !411)
!438 = !DILocalVariable(name: "byte", scope: !439, file: !17, line: 145, type: !36)
!439 = distinct !DILexicalBlock(scope: !411, file: !17, line: 144, column: 5)
!440 = !DILocation(line: 145, column: 13, scope: !439)
!441 = !DILocation(line: 146, column: 18, scope: !439)
!442 = !DILocation(line: 146, column: 26, scope: !439)
!443 = !DILocation(line: 146, column: 24, scope: !439)
!444 = !DILocation(line: 146, column: 9, scope: !439)
!445 = !DILocation(line: 147, column: 45, scope: !439)
!446 = !DILocation(line: 147, column: 29, scope: !439)
!447 = !DILocation(line: 147, column: 9, scope: !439)
!448 = !DILocation(line: 147, column: 15, scope: !439)
!449 = !DILocation(line: 147, column: 27, scope: !439)
!450 = !DILocation(line: 148, column: 9, scope: !439)
!451 = distinct !{!451, !422, !452, !371}
!452 = !DILocation(line: 149, column: 5, scope: !411)
!453 = !DILocation(line: 151, column: 12, scope: !411)
!454 = !DILocation(line: 151, column: 5, scope: !411)
!455 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !17, file: !17, line: 156, type: !456, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!456 = !DISubroutineType(types: !457)
!457 = !{!36}
!458 = !DILocation(line: 158, column: 5, scope: !455)
!459 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !17, file: !17, line: 161, type: !456, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!460 = !DILocation(line: 163, column: 5, scope: !459)
!461 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !17, file: !17, line: 166, type: !456, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!462 = !DILocation(line: 168, column: 13, scope: !461)
!463 = !DILocation(line: 168, column: 20, scope: !461)
!464 = !DILocation(line: 168, column: 5, scope: !461)
!465 = distinct !DISubprogram(name: "good1", scope: !17, file: !17, line: 187, type: !62, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!466 = !DILocation(line: 187, column: 16, scope: !465)
!467 = distinct !DISubprogram(name: "good2", scope: !17, file: !17, line: 188, type: !62, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!468 = !DILocation(line: 188, column: 16, scope: !467)
!469 = distinct !DISubprogram(name: "good3", scope: !17, file: !17, line: 189, type: !62, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!470 = !DILocation(line: 189, column: 16, scope: !469)
!471 = distinct !DISubprogram(name: "good4", scope: !17, file: !17, line: 190, type: !62, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!472 = !DILocation(line: 190, column: 16, scope: !471)
!473 = distinct !DISubprogram(name: "good5", scope: !17, file: !17, line: 191, type: !62, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!474 = !DILocation(line: 191, column: 16, scope: !473)
!475 = distinct !DISubprogram(name: "good6", scope: !17, file: !17, line: 192, type: !62, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!476 = !DILocation(line: 192, column: 16, scope: !475)
!477 = distinct !DISubprogram(name: "good7", scope: !17, file: !17, line: 193, type: !62, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!478 = !DILocation(line: 193, column: 16, scope: !477)
!479 = distinct !DISubprogram(name: "good8", scope: !17, file: !17, line: 194, type: !62, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!480 = !DILocation(line: 194, column: 16, scope: !479)
!481 = distinct !DISubprogram(name: "good9", scope: !17, file: !17, line: 195, type: !62, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!482 = !DILocation(line: 195, column: 16, scope: !481)
!483 = distinct !DISubprogram(name: "bad1", scope: !17, file: !17, line: 198, type: !62, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!484 = !DILocation(line: 198, column: 15, scope: !483)
!485 = distinct !DISubprogram(name: "bad2", scope: !17, file: !17, line: 199, type: !62, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!486 = !DILocation(line: 199, column: 15, scope: !485)
!487 = distinct !DISubprogram(name: "bad3", scope: !17, file: !17, line: 200, type: !62, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!488 = !DILocation(line: 200, column: 15, scope: !487)
!489 = distinct !DISubprogram(name: "bad4", scope: !17, file: !17, line: 201, type: !62, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!490 = !DILocation(line: 201, column: 15, scope: !489)
!491 = distinct !DISubprogram(name: "bad5", scope: !17, file: !17, line: 202, type: !62, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!492 = !DILocation(line: 202, column: 15, scope: !491)
!493 = distinct !DISubprogram(name: "bad6", scope: !17, file: !17, line: 203, type: !62, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!494 = !DILocation(line: 203, column: 15, scope: !493)
!495 = distinct !DISubprogram(name: "bad7", scope: !17, file: !17, line: 204, type: !62, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!496 = !DILocation(line: 204, column: 15, scope: !495)
!497 = distinct !DISubprogram(name: "bad8", scope: !17, file: !17, line: 205, type: !62, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!498 = !DILocation(line: 205, column: 15, scope: !497)
!499 = distinct !DISubprogram(name: "bad9", scope: !17, file: !17, line: 206, type: !62, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!500 = !DILocation(line: 206, column: 15, scope: !499)
