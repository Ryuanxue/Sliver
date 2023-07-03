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
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.14 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
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
@.str.13.16 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14.17 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52_bad() #0 !dbg !56 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
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
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !76, metadata !DIExpression()), !dbg !77
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !78
  store i8* %call1, i8** %environment, align 8, !dbg !77
  %2 = load i8*, i8** %environment, align 8, !dbg !79
  %cmp = icmp ne i8* %2, null, !dbg !81
  br i1 %cmp, label %if.then, label %if.end, !dbg !82

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !83
  %4 = load i64, i64* %dataLen, align 8, !dbg !85
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !86
  %5 = load i8*, i8** %environment, align 8, !dbg !87
  %6 = load i64, i64* %dataLen, align 8, !dbg !88
  %sub = sub i64 100, %6, !dbg !89
  %sub2 = sub i64 %sub, 1, !dbg !90
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !91
  br label %if.end, !dbg !92

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !93
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52b_badSink(i8* %7), !dbg !94
  ret void, !dbg !95
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
define dso_local void @goodG2B() #0 !dbg !96 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !100
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !100
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !101
  store i8* %arraydecay, i8** %data, align 8, !dbg !102
  %1 = load i8*, i8** %data, align 8, !dbg !103
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !104
  %2 = load i8*, i8** %data, align 8, !dbg !105
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52b_goodG2BSink(i8* %2), !dbg !106
  ret void, !dbg !107
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !108 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !111, metadata !DIExpression()), !dbg !112
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !112
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !112
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !113
  store i8* %arraydecay, i8** %data, align 8, !dbg !114
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !115, metadata !DIExpression()), !dbg !117
  %1 = load i8*, i8** %data, align 8, !dbg !118
  %call = call i64 @strlen(i8* %1) #7, !dbg !119
  store i64 %call, i64* %dataLen, align 8, !dbg !117
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !120, metadata !DIExpression()), !dbg !121
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !122
  store i8* %call1, i8** %environment, align 8, !dbg !121
  %2 = load i8*, i8** %environment, align 8, !dbg !123
  %cmp = icmp ne i8* %2, null, !dbg !125
  br i1 %cmp, label %if.then, label %if.end, !dbg !126

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !127
  %4 = load i64, i64* %dataLen, align 8, !dbg !129
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !130
  %5 = load i8*, i8** %environment, align 8, !dbg !131
  %6 = load i64, i64* %dataLen, align 8, !dbg !132
  %sub = sub i64 100, %6, !dbg !133
  %sub2 = sub i64 %sub, 1, !dbg !134
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !135
  br label %if.end, !dbg !136

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !137
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52b_goodB2GSink(i8* %7), !dbg !138
  ret void, !dbg !139
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52_good() #0 !dbg !140 {
entry:
  call void @goodG2B(), !dbg !141
  call void @goodB2G(), !dbg !142
  ret void, !dbg !143
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52b_badSink(i8* %data) #0 !dbg !144 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !147, metadata !DIExpression()), !dbg !148
  %0 = load i8*, i8** %data.addr, align 8, !dbg !149
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52c_badSink(i8* %0), !dbg !150
  ret void, !dbg !151
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52b_goodG2BSink(i8* %data) #0 !dbg !152 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load i8*, i8** %data.addr, align 8, !dbg !155
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52c_goodG2BSink(i8* %0), !dbg !156
  ret void, !dbg !157
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52b_goodB2GSink(i8* %data) #0 !dbg !158 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = load i8*, i8** %data.addr, align 8, !dbg !161
  call void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52c_goodB2GSink(i8* %0), !dbg !162
  ret void, !dbg !163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52c_badSink(i8* %data) #0 !dbg !164 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !167
  %1 = load i8*, i8** %data.addr, align 8, !dbg !168
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !169
  ret void, !dbg !170
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52c_goodG2BSink(i8* %data) #0 !dbg !171 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !172, metadata !DIExpression()), !dbg !173
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !174
  %1 = load i8*, i8** %data.addr, align 8, !dbg !175
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !176
  ret void, !dbg !177
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_52c_goodB2GSink(i8* %data) #0 !dbg !178 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !181
  %1 = load i8*, i8** %data.addr, align 8, !dbg !182
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %1), !dbg !183
  ret void, !dbg !184
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !185 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !186, metadata !DIExpression()), !dbg !187
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0)), !dbg !188
  %0 = load i8*, i8** %line.addr, align 8, !dbg !189
  %cmp = icmp ne i8* %0, null, !dbg !191
  br i1 %cmp, label %if.then, label %if.end, !dbg !192

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !193
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.15, i64 0, i64 0), i8* %1), !dbg !195
  br label %if.end, !dbg !196

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !197
  ret void, !dbg !198
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !199 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = load i8*, i8** %line.addr, align 8, !dbg !202
  %cmp = icmp ne i8* %0, null, !dbg !204
  br i1 %cmp, label %if.then, label %if.end, !dbg !205

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !206
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.15, i64 0, i64 0), i8* %1), !dbg !208
  br label %if.end, !dbg !209

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !211 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !216, metadata !DIExpression()), !dbg !217
  %0 = load i32*, i32** %line.addr, align 8, !dbg !218
  %cmp = icmp ne i32* %0, null, !dbg !220
  br i1 %cmp, label %if.then, label %if.end, !dbg !221

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !222
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !224
  br label %if.end, !dbg !225

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !226
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !227 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !230, metadata !DIExpression()), !dbg !231
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !232
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !233
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !235 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !241
  %conv = sext i16 %0 to i32, !dbg !241
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !244 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !250
  %conv = fpext float %0 to double, !dbg !250
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !253 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !257, metadata !DIExpression()), !dbg !258
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !259
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !260
  ret void, !dbg !261
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !262 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !271
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !272
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !274 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !277, metadata !DIExpression()), !dbg !278
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !279
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !280
  ret void, !dbg !281
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !282 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !287
  %conv = sext i8 %0 to i32, !dbg !287
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !288
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !290 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !295, metadata !DIExpression()), !dbg !299
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !300
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !301
  store i32 %0, i32* %arrayidx, align 4, !dbg !302
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !303
  store i32 0, i32* %arrayidx1, align 4, !dbg !304
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !305
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !306
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !308 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !313
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !316 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !321
  %conv = zext i8 %0 to i32, !dbg !321
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !324 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !330
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !331
  ret void, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !333 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !343, metadata !DIExpression()), !dbg !344
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !345
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !346
  %1 = load i32, i32* %intOne, align 4, !dbg !346
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !347
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !348
  %3 = load i32, i32* %intTwo, align 4, !dbg !348
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13.16, i64 0, i64 0), i32 %1, i32 %3), !dbg !349
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !351 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !355, metadata !DIExpression()), !dbg !356
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata i64* %i, metadata !359, metadata !DIExpression()), !dbg !360
  store i64 0, i64* %i, align 8, !dbg !361
  br label %for.cond, !dbg !363

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !364
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !366
  %cmp = icmp ult i64 %0, %1, !dbg !367
  br i1 %cmp, label %for.body, label %for.end, !dbg !368

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !369
  %3 = load i64, i64* %i, align 8, !dbg !371
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !369
  %4 = load i8, i8* %arrayidx, align 1, !dbg !369
  %conv = zext i8 %4 to i32, !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14.17, i64 0, i64 0), i32 %conv), !dbg !372
  br label %for.inc, !dbg !373

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !374
  %inc = add i64 %5, 1, !dbg !374
  store i64 %inc, i64* %i, align 8, !dbg !374
  br label %for.cond, !dbg !375, !llvm.loop !376

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !379
  ret void, !dbg !380
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !381 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !384, metadata !DIExpression()), !dbg !385
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !386, metadata !DIExpression()), !dbg !387
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !390, metadata !DIExpression()), !dbg !391
  store i64 0, i64* %numWritten, align 8, !dbg !391
  br label %while.cond, !dbg !392

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !393
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !394
  %cmp = icmp ult i64 %0, %1, !dbg !395
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !396

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !397
  %2 = load i16*, i16** %call, align 8, !dbg !397
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !397
  %4 = load i64, i64* %numWritten, align 8, !dbg !397
  %mul = mul i64 2, %4, !dbg !397
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !397
  %5 = load i8, i8* %arrayidx, align 1, !dbg !397
  %conv = sext i8 %5 to i32, !dbg !397
  %idxprom = sext i32 %conv to i64, !dbg !397
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !397
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !397
  %conv2 = zext i16 %6 to i32, !dbg !397
  %and = and i32 %conv2, 4096, !dbg !397
  %tobool = icmp ne i32 %and, 0, !dbg !397
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !398

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !399
  %7 = load i16*, i16** %call3, align 8, !dbg !399
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !399
  %9 = load i64, i64* %numWritten, align 8, !dbg !399
  %mul4 = mul i64 2, %9, !dbg !399
  %add = add i64 %mul4, 1, !dbg !399
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !399
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !399
  %conv6 = sext i8 %10 to i32, !dbg !399
  %idxprom7 = sext i32 %conv6 to i64, !dbg !399
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !399
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !399
  %conv9 = zext i16 %11 to i32, !dbg !399
  %and10 = and i32 %conv9, 4096, !dbg !399
  %tobool11 = icmp ne i32 %and10, 0, !dbg !398
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !400
  br i1 %12, label %while.body, label %while.end, !dbg !392

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !401, metadata !DIExpression()), !dbg !403
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !404
  %14 = load i64, i64* %numWritten, align 8, !dbg !405
  %mul12 = mul i64 2, %14, !dbg !406
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !404
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14.17, i64 0, i64 0), i32* %byte) #8, !dbg !407
  %15 = load i32, i32* %byte, align 4, !dbg !408
  %conv15 = trunc i32 %15 to i8, !dbg !409
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !410
  %17 = load i64, i64* %numWritten, align 8, !dbg !411
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !410
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !412
  %18 = load i64, i64* %numWritten, align 8, !dbg !413
  %inc = add i64 %18, 1, !dbg !413
  store i64 %inc, i64* %numWritten, align 8, !dbg !413
  br label %while.cond, !dbg !392, !llvm.loop !414

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !416
  ret i64 %19, !dbg !417
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !418 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !421, metadata !DIExpression()), !dbg !422
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !423, metadata !DIExpression()), !dbg !424
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !427, metadata !DIExpression()), !dbg !428
  store i64 0, i64* %numWritten, align 8, !dbg !428
  br label %while.cond, !dbg !429

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !430
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !431
  %cmp = icmp ult i64 %0, %1, !dbg !432
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !433

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !434
  %3 = load i64, i64* %numWritten, align 8, !dbg !435
  %mul = mul i64 2, %3, !dbg !436
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !434
  %4 = load i32, i32* %arrayidx, align 4, !dbg !434
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !437
  %tobool = icmp ne i32 %call, 0, !dbg !437
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !438

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !439
  %6 = load i64, i64* %numWritten, align 8, !dbg !440
  %mul1 = mul i64 2, %6, !dbg !441
  %add = add i64 %mul1, 1, !dbg !442
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !439
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !439
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !443
  %tobool4 = icmp ne i32 %call3, 0, !dbg !438
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !444
  br i1 %8, label %while.body, label %while.end, !dbg !429

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !445, metadata !DIExpression()), !dbg !447
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !448
  %10 = load i64, i64* %numWritten, align 8, !dbg !449
  %mul5 = mul i64 2, %10, !dbg !450
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !448
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !451
  %11 = load i32, i32* %byte, align 4, !dbg !452
  %conv = trunc i32 %11 to i8, !dbg !453
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !454
  %13 = load i64, i64* %numWritten, align 8, !dbg !455
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !454
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !456
  %14 = load i64, i64* %numWritten, align 8, !dbg !457
  %inc = add i64 %14, 1, !dbg !457
  store i64 %inc, i64* %numWritten, align 8, !dbg !457
  br label %while.cond, !dbg !429, !llvm.loop !458

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !460
  ret i64 %15, !dbg !461
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !462 {
entry:
  ret i32 1, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !466 {
entry:
  ret i32 0, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !468 {
entry:
  %call = call i32 @rand() #8, !dbg !469
  %rem = srem i32 %call, 2, !dbg !470
  ret i32 %rem, !dbg !471
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !472 {
entry:
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !474 {
entry:
  ret void, !dbg !475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !476 {
entry:
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !478 {
entry:
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !480 {
entry:
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !482 {
entry:
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !484 {
entry:
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !486 {
entry:
  ret void, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !488 {
entry:
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !490 {
entry:
  ret void, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !492 {
entry:
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !494 {
entry:
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !496 {
entry:
  ret void, !dbg !497
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !498 {
entry:
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !500 {
entry:
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !502 {
entry:
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !504 {
entry:
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !506 {
entry:
  ret void, !dbg !507
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

!llvm.dbg.cu = !{!44, !48, !50, !2}
!llvm.ident = !{!52, !52, !52, !52}
!llvm.module.flags = !{!53, !54, !55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_704/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_52a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_704/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_52b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_704/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_52c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_704/source_code")
!52 = !{!"clang version 12.0.0"}
!53 = !{i32 7, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_52_bad", scope: !45, file: !45, line: 37, type: !57, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!57 = !DISubroutineType(types: !58)
!58 = !{null}
!59 = !DILocalVariable(name: "data", scope: !56, file: !45, line: 39, type: !42)
!60 = !DILocation(line: 39, column: 12, scope: !56)
!61 = !DILocalVariable(name: "dataBuffer", scope: !56, file: !45, line: 40, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 40, column: 10, scope: !56)
!66 = !DILocation(line: 41, column: 12, scope: !56)
!67 = !DILocation(line: 41, column: 10, scope: !56)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !45, line: 44, type: !70)
!69 = distinct !DILexicalBlock(scope: !56, file: !45, line: 42, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 44, column: 16, scope: !69)
!74 = !DILocation(line: 44, column: 33, scope: !69)
!75 = !DILocation(line: 44, column: 26, scope: !69)
!76 = !DILocalVariable(name: "environment", scope: !69, file: !45, line: 45, type: !42)
!77 = !DILocation(line: 45, column: 16, scope: !69)
!78 = !DILocation(line: 45, column: 30, scope: !69)
!79 = !DILocation(line: 47, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !69, file: !45, line: 47, column: 13)
!81 = !DILocation(line: 47, column: 25, scope: !80)
!82 = !DILocation(line: 47, column: 13, scope: !69)
!83 = !DILocation(line: 50, column: 21, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !45, line: 48, column: 9)
!85 = !DILocation(line: 50, column: 26, scope: !84)
!86 = !DILocation(line: 50, column: 25, scope: !84)
!87 = !DILocation(line: 50, column: 35, scope: !84)
!88 = !DILocation(line: 50, column: 52, scope: !84)
!89 = !DILocation(line: 50, column: 51, scope: !84)
!90 = !DILocation(line: 50, column: 59, scope: !84)
!91 = !DILocation(line: 50, column: 13, scope: !84)
!92 = !DILocation(line: 51, column: 9, scope: !84)
!93 = !DILocation(line: 53, column: 77, scope: !56)
!94 = !DILocation(line: 53, column: 5, scope: !56)
!95 = !DILocation(line: 54, column: 1, scope: !56)
!96 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 62, type: !57, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!97 = !DILocalVariable(name: "data", scope: !96, file: !45, line: 64, type: !42)
!98 = !DILocation(line: 64, column: 12, scope: !96)
!99 = !DILocalVariable(name: "dataBuffer", scope: !96, file: !45, line: 65, type: !62)
!100 = !DILocation(line: 65, column: 10, scope: !96)
!101 = !DILocation(line: 66, column: 12, scope: !96)
!102 = !DILocation(line: 66, column: 10, scope: !96)
!103 = !DILocation(line: 68, column: 12, scope: !96)
!104 = !DILocation(line: 68, column: 5, scope: !96)
!105 = !DILocation(line: 69, column: 81, scope: !96)
!106 = !DILocation(line: 69, column: 5, scope: !96)
!107 = !DILocation(line: 70, column: 1, scope: !96)
!108 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 74, type: !57, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!109 = !DILocalVariable(name: "data", scope: !108, file: !45, line: 76, type: !42)
!110 = !DILocation(line: 76, column: 12, scope: !108)
!111 = !DILocalVariable(name: "dataBuffer", scope: !108, file: !45, line: 77, type: !62)
!112 = !DILocation(line: 77, column: 10, scope: !108)
!113 = !DILocation(line: 78, column: 12, scope: !108)
!114 = !DILocation(line: 78, column: 10, scope: !108)
!115 = !DILocalVariable(name: "dataLen", scope: !116, file: !45, line: 81, type: !70)
!116 = distinct !DILexicalBlock(scope: !108, file: !45, line: 79, column: 5)
!117 = !DILocation(line: 81, column: 16, scope: !116)
!118 = !DILocation(line: 81, column: 33, scope: !116)
!119 = !DILocation(line: 81, column: 26, scope: !116)
!120 = !DILocalVariable(name: "environment", scope: !116, file: !45, line: 82, type: !42)
!121 = !DILocation(line: 82, column: 16, scope: !116)
!122 = !DILocation(line: 82, column: 30, scope: !116)
!123 = !DILocation(line: 84, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !45, line: 84, column: 13)
!125 = !DILocation(line: 84, column: 25, scope: !124)
!126 = !DILocation(line: 84, column: 13, scope: !116)
!127 = !DILocation(line: 87, column: 21, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !45, line: 85, column: 9)
!129 = !DILocation(line: 87, column: 26, scope: !128)
!130 = !DILocation(line: 87, column: 25, scope: !128)
!131 = !DILocation(line: 87, column: 35, scope: !128)
!132 = !DILocation(line: 87, column: 52, scope: !128)
!133 = !DILocation(line: 87, column: 51, scope: !128)
!134 = !DILocation(line: 87, column: 59, scope: !128)
!135 = !DILocation(line: 87, column: 13, scope: !128)
!136 = !DILocation(line: 88, column: 9, scope: !128)
!137 = !DILocation(line: 90, column: 81, scope: !108)
!138 = !DILocation(line: 90, column: 5, scope: !108)
!139 = !DILocation(line: 91, column: 1, scope: !108)
!140 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_52_good", scope: !45, file: !45, line: 93, type: !57, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!141 = !DILocation(line: 95, column: 5, scope: !140)
!142 = !DILocation(line: 96, column: 5, scope: !140)
!143 = !DILocation(line: 97, column: 1, scope: !140)
!144 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_52b_badSink", scope: !49, file: !49, line: 37, type: !145, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !42}
!147 = !DILocalVariable(name: "data", arg: 1, scope: !144, file: !49, line: 37, type: !42)
!148 = !DILocation(line: 37, column: 85, scope: !144)
!149 = !DILocation(line: 39, column: 77, scope: !144)
!150 = !DILocation(line: 39, column: 5, scope: !144)
!151 = !DILocation(line: 40, column: 1, scope: !144)
!152 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_52b_goodG2BSink", scope: !49, file: !49, line: 49, type: !145, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!153 = !DILocalVariable(name: "data", arg: 1, scope: !152, file: !49, line: 49, type: !42)
!154 = !DILocation(line: 49, column: 89, scope: !152)
!155 = !DILocation(line: 51, column: 81, scope: !152)
!156 = !DILocation(line: 51, column: 5, scope: !152)
!157 = !DILocation(line: 52, column: 1, scope: !152)
!158 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_52b_goodB2GSink", scope: !49, file: !49, line: 57, type: !145, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!159 = !DILocalVariable(name: "data", arg: 1, scope: !158, file: !49, line: 57, type: !42)
!160 = !DILocation(line: 57, column: 89, scope: !158)
!161 = !DILocation(line: 59, column: 81, scope: !158)
!162 = !DILocation(line: 59, column: 5, scope: !158)
!163 = !DILocation(line: 60, column: 1, scope: !158)
!164 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_52c_badSink", scope: !51, file: !51, line: 34, type: !145, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!165 = !DILocalVariable(name: "data", arg: 1, scope: !164, file: !51, line: 34, type: !42)
!166 = !DILocation(line: 34, column: 85, scope: !164)
!167 = !DILocation(line: 37, column: 13, scope: !164)
!168 = !DILocation(line: 37, column: 21, scope: !164)
!169 = !DILocation(line: 37, column: 5, scope: !164)
!170 = !DILocation(line: 38, column: 1, scope: !164)
!171 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_52c_goodG2BSink", scope: !51, file: !51, line: 45, type: !145, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!172 = !DILocalVariable(name: "data", arg: 1, scope: !171, file: !51, line: 45, type: !42)
!173 = !DILocation(line: 45, column: 89, scope: !171)
!174 = !DILocation(line: 48, column: 13, scope: !171)
!175 = !DILocation(line: 48, column: 21, scope: !171)
!176 = !DILocation(line: 48, column: 5, scope: !171)
!177 = !DILocation(line: 49, column: 1, scope: !171)
!178 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_52c_goodB2GSink", scope: !51, file: !51, line: 52, type: !145, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!179 = !DILocalVariable(name: "data", arg: 1, scope: !178, file: !51, line: 52, type: !42)
!180 = !DILocation(line: 52, column: 89, scope: !178)
!181 = !DILocation(line: 55, column: 13, scope: !178)
!182 = !DILocation(line: 55, column: 29, scope: !178)
!183 = !DILocation(line: 55, column: 5, scope: !178)
!184 = !DILocation(line: 56, column: 1, scope: !178)
!185 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !145, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!186 = !DILocalVariable(name: "line", arg: 1, scope: !185, file: !3, line: 11, type: !42)
!187 = !DILocation(line: 11, column: 25, scope: !185)
!188 = !DILocation(line: 13, column: 1, scope: !185)
!189 = !DILocation(line: 14, column: 8, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 14, column: 8)
!191 = !DILocation(line: 14, column: 13, scope: !190)
!192 = !DILocation(line: 14, column: 8, scope: !185)
!193 = !DILocation(line: 16, column: 24, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !3, line: 15, column: 5)
!195 = !DILocation(line: 16, column: 9, scope: !194)
!196 = !DILocation(line: 17, column: 5, scope: !194)
!197 = !DILocation(line: 18, column: 5, scope: !185)
!198 = !DILocation(line: 19, column: 1, scope: !185)
!199 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!200 = !DILocalVariable(name: "line", arg: 1, scope: !199, file: !3, line: 20, type: !42)
!201 = !DILocation(line: 20, column: 29, scope: !199)
!202 = !DILocation(line: 22, column: 8, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !3, line: 22, column: 8)
!204 = !DILocation(line: 22, column: 13, scope: !203)
!205 = !DILocation(line: 22, column: 8, scope: !199)
!206 = !DILocation(line: 24, column: 24, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !3, line: 23, column: 5)
!208 = !DILocation(line: 24, column: 9, scope: !207)
!209 = !DILocation(line: 25, column: 5, scope: !207)
!210 = !DILocation(line: 26, column: 1, scope: !199)
!211 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !212, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!216 = !DILocalVariable(name: "line", arg: 1, scope: !211, file: !3, line: 27, type: !214)
!217 = !DILocation(line: 27, column: 29, scope: !211)
!218 = !DILocation(line: 29, column: 8, scope: !219)
!219 = distinct !DILexicalBlock(scope: !211, file: !3, line: 29, column: 8)
!220 = !DILocation(line: 29, column: 13, scope: !219)
!221 = !DILocation(line: 29, column: 8, scope: !211)
!222 = !DILocation(line: 31, column: 27, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 30, column: 5)
!224 = !DILocation(line: 31, column: 9, scope: !223)
!225 = !DILocation(line: 32, column: 5, scope: !223)
!226 = !DILocation(line: 33, column: 1, scope: !211)
!227 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !228, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !23}
!230 = !DILocalVariable(name: "intNumber", arg: 1, scope: !227, file: !3, line: 35, type: !23)
!231 = !DILocation(line: 35, column: 24, scope: !227)
!232 = !DILocation(line: 37, column: 20, scope: !227)
!233 = !DILocation(line: 37, column: 5, scope: !227)
!234 = !DILocation(line: 38, column: 1, scope: !227)
!235 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !236, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !238}
!238 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!239 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !235, file: !3, line: 40, type: !238)
!240 = !DILocation(line: 40, column: 28, scope: !235)
!241 = !DILocation(line: 42, column: 21, scope: !235)
!242 = !DILocation(line: 42, column: 5, scope: !235)
!243 = !DILocation(line: 43, column: 1, scope: !235)
!244 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !245, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !247}
!247 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!248 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !244, file: !3, line: 45, type: !247)
!249 = !DILocation(line: 45, column: 28, scope: !244)
!250 = !DILocation(line: 47, column: 20, scope: !244)
!251 = !DILocation(line: 47, column: 5, scope: !244)
!252 = !DILocation(line: 48, column: 1, scope: !244)
!253 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !254, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !256}
!256 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!257 = !DILocalVariable(name: "longNumber", arg: 1, scope: !253, file: !3, line: 50, type: !256)
!258 = !DILocation(line: 50, column: 26, scope: !253)
!259 = !DILocation(line: 52, column: 21, scope: !253)
!260 = !DILocation(line: 52, column: 5, scope: !253)
!261 = !DILocation(line: 53, column: 1, scope: !253)
!262 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !263, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !265}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !266, line: 27, baseType: !267)
!266 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !268, line: 44, baseType: !256)
!268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!269 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !262, file: !3, line: 55, type: !265)
!270 = !DILocation(line: 55, column: 33, scope: !262)
!271 = !DILocation(line: 57, column: 29, scope: !262)
!272 = !DILocation(line: 57, column: 5, scope: !262)
!273 = !DILocation(line: 58, column: 1, scope: !262)
!274 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !275, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !70}
!277 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !274, file: !3, line: 60, type: !70)
!278 = !DILocation(line: 60, column: 29, scope: !274)
!279 = !DILocation(line: 62, column: 21, scope: !274)
!280 = !DILocation(line: 62, column: 5, scope: !274)
!281 = !DILocation(line: 63, column: 1, scope: !274)
!282 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !283, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !43}
!285 = !DILocalVariable(name: "charHex", arg: 1, scope: !282, file: !3, line: 65, type: !43)
!286 = !DILocation(line: 65, column: 29, scope: !282)
!287 = !DILocation(line: 67, column: 22, scope: !282)
!288 = !DILocation(line: 67, column: 5, scope: !282)
!289 = !DILocation(line: 68, column: 1, scope: !282)
!290 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !291, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !215}
!293 = !DILocalVariable(name: "wideChar", arg: 1, scope: !290, file: !3, line: 70, type: !215)
!294 = !DILocation(line: 70, column: 29, scope: !290)
!295 = !DILocalVariable(name: "s", scope: !290, file: !3, line: 74, type: !296)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 64, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 2)
!299 = !DILocation(line: 74, column: 13, scope: !290)
!300 = !DILocation(line: 75, column: 16, scope: !290)
!301 = !DILocation(line: 75, column: 9, scope: !290)
!302 = !DILocation(line: 75, column: 14, scope: !290)
!303 = !DILocation(line: 76, column: 9, scope: !290)
!304 = !DILocation(line: 76, column: 14, scope: !290)
!305 = !DILocation(line: 77, column: 21, scope: !290)
!306 = !DILocation(line: 77, column: 5, scope: !290)
!307 = !DILocation(line: 78, column: 1, scope: !290)
!308 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !309, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !7}
!311 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !308, file: !3, line: 80, type: !7)
!312 = !DILocation(line: 80, column: 33, scope: !308)
!313 = !DILocation(line: 82, column: 20, scope: !308)
!314 = !DILocation(line: 82, column: 5, scope: !308)
!315 = !DILocation(line: 83, column: 1, scope: !308)
!316 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !317, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !25}
!319 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !316, file: !3, line: 85, type: !25)
!320 = !DILocation(line: 85, column: 45, scope: !316)
!321 = !DILocation(line: 87, column: 22, scope: !316)
!322 = !DILocation(line: 87, column: 5, scope: !316)
!323 = !DILocation(line: 88, column: 1, scope: !316)
!324 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !325, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !327}
!327 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!328 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !324, file: !3, line: 90, type: !327)
!329 = !DILocation(line: 90, column: 29, scope: !324)
!330 = !DILocation(line: 92, column: 20, scope: !324)
!331 = !DILocation(line: 92, column: 5, scope: !324)
!332 = !DILocation(line: 93, column: 1, scope: !324)
!333 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !334, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !338, line: 100, baseType: !339)
!338 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_704/source_code")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !338, line: 96, size: 64, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !339, file: !338, line: 98, baseType: !23, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !339, file: !338, line: 99, baseType: !23, size: 32, offset: 32)
!343 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !333, file: !3, line: 95, type: !336)
!344 = !DILocation(line: 95, column: 40, scope: !333)
!345 = !DILocation(line: 97, column: 26, scope: !333)
!346 = !DILocation(line: 97, column: 47, scope: !333)
!347 = !DILocation(line: 97, column: 55, scope: !333)
!348 = !DILocation(line: 97, column: 76, scope: !333)
!349 = !DILocation(line: 97, column: 5, scope: !333)
!350 = !DILocation(line: 98, column: 1, scope: !333)
!351 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !352, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !354, !70}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!355 = !DILocalVariable(name: "bytes", arg: 1, scope: !351, file: !3, line: 100, type: !354)
!356 = !DILocation(line: 100, column: 38, scope: !351)
!357 = !DILocalVariable(name: "numBytes", arg: 2, scope: !351, file: !3, line: 100, type: !70)
!358 = !DILocation(line: 100, column: 52, scope: !351)
!359 = !DILocalVariable(name: "i", scope: !351, file: !3, line: 102, type: !70)
!360 = !DILocation(line: 102, column: 12, scope: !351)
!361 = !DILocation(line: 103, column: 12, scope: !362)
!362 = distinct !DILexicalBlock(scope: !351, file: !3, line: 103, column: 5)
!363 = !DILocation(line: 103, column: 10, scope: !362)
!364 = !DILocation(line: 103, column: 17, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !3, line: 103, column: 5)
!366 = !DILocation(line: 103, column: 21, scope: !365)
!367 = !DILocation(line: 103, column: 19, scope: !365)
!368 = !DILocation(line: 103, column: 5, scope: !362)
!369 = !DILocation(line: 105, column: 24, scope: !370)
!370 = distinct !DILexicalBlock(scope: !365, file: !3, line: 104, column: 5)
!371 = !DILocation(line: 105, column: 30, scope: !370)
!372 = !DILocation(line: 105, column: 9, scope: !370)
!373 = !DILocation(line: 106, column: 5, scope: !370)
!374 = !DILocation(line: 103, column: 31, scope: !365)
!375 = !DILocation(line: 103, column: 5, scope: !365)
!376 = distinct !{!376, !368, !377, !378}
!377 = !DILocation(line: 106, column: 5, scope: !362)
!378 = !{!"llvm.loop.mustprogress"}
!379 = !DILocation(line: 107, column: 5, scope: !351)
!380 = !DILocation(line: 108, column: 1, scope: !351)
!381 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !382, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{!70, !354, !70, !42}
!384 = !DILocalVariable(name: "bytes", arg: 1, scope: !381, file: !3, line: 113, type: !354)
!385 = !DILocation(line: 113, column: 39, scope: !381)
!386 = !DILocalVariable(name: "numBytes", arg: 2, scope: !381, file: !3, line: 113, type: !70)
!387 = !DILocation(line: 113, column: 53, scope: !381)
!388 = !DILocalVariable(name: "hex", arg: 3, scope: !381, file: !3, line: 113, type: !42)
!389 = !DILocation(line: 113, column: 71, scope: !381)
!390 = !DILocalVariable(name: "numWritten", scope: !381, file: !3, line: 115, type: !70)
!391 = !DILocation(line: 115, column: 12, scope: !381)
!392 = !DILocation(line: 121, column: 5, scope: !381)
!393 = !DILocation(line: 121, column: 12, scope: !381)
!394 = !DILocation(line: 121, column: 25, scope: !381)
!395 = !DILocation(line: 121, column: 23, scope: !381)
!396 = !DILocation(line: 121, column: 34, scope: !381)
!397 = !DILocation(line: 121, column: 37, scope: !381)
!398 = !DILocation(line: 121, column: 67, scope: !381)
!399 = !DILocation(line: 121, column: 70, scope: !381)
!400 = !DILocation(line: 0, scope: !381)
!401 = !DILocalVariable(name: "byte", scope: !402, file: !3, line: 123, type: !23)
!402 = distinct !DILexicalBlock(scope: !381, file: !3, line: 122, column: 5)
!403 = !DILocation(line: 123, column: 13, scope: !402)
!404 = !DILocation(line: 124, column: 17, scope: !402)
!405 = !DILocation(line: 124, column: 25, scope: !402)
!406 = !DILocation(line: 124, column: 23, scope: !402)
!407 = !DILocation(line: 124, column: 9, scope: !402)
!408 = !DILocation(line: 125, column: 45, scope: !402)
!409 = !DILocation(line: 125, column: 29, scope: !402)
!410 = !DILocation(line: 125, column: 9, scope: !402)
!411 = !DILocation(line: 125, column: 15, scope: !402)
!412 = !DILocation(line: 125, column: 27, scope: !402)
!413 = !DILocation(line: 126, column: 9, scope: !402)
!414 = distinct !{!414, !392, !415, !378}
!415 = !DILocation(line: 127, column: 5, scope: !381)
!416 = !DILocation(line: 129, column: 12, scope: !381)
!417 = !DILocation(line: 129, column: 5, scope: !381)
!418 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !419, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!419 = !DISubroutineType(types: !420)
!420 = !{!70, !354, !70, !214}
!421 = !DILocalVariable(name: "bytes", arg: 1, scope: !418, file: !3, line: 135, type: !354)
!422 = !DILocation(line: 135, column: 41, scope: !418)
!423 = !DILocalVariable(name: "numBytes", arg: 2, scope: !418, file: !3, line: 135, type: !70)
!424 = !DILocation(line: 135, column: 55, scope: !418)
!425 = !DILocalVariable(name: "hex", arg: 3, scope: !418, file: !3, line: 135, type: !214)
!426 = !DILocation(line: 135, column: 76, scope: !418)
!427 = !DILocalVariable(name: "numWritten", scope: !418, file: !3, line: 137, type: !70)
!428 = !DILocation(line: 137, column: 12, scope: !418)
!429 = !DILocation(line: 143, column: 5, scope: !418)
!430 = !DILocation(line: 143, column: 12, scope: !418)
!431 = !DILocation(line: 143, column: 25, scope: !418)
!432 = !DILocation(line: 143, column: 23, scope: !418)
!433 = !DILocation(line: 143, column: 34, scope: !418)
!434 = !DILocation(line: 143, column: 47, scope: !418)
!435 = !DILocation(line: 143, column: 55, scope: !418)
!436 = !DILocation(line: 143, column: 53, scope: !418)
!437 = !DILocation(line: 143, column: 37, scope: !418)
!438 = !DILocation(line: 143, column: 68, scope: !418)
!439 = !DILocation(line: 143, column: 81, scope: !418)
!440 = !DILocation(line: 143, column: 89, scope: !418)
!441 = !DILocation(line: 143, column: 87, scope: !418)
!442 = !DILocation(line: 143, column: 100, scope: !418)
!443 = !DILocation(line: 143, column: 71, scope: !418)
!444 = !DILocation(line: 0, scope: !418)
!445 = !DILocalVariable(name: "byte", scope: !446, file: !3, line: 145, type: !23)
!446 = distinct !DILexicalBlock(scope: !418, file: !3, line: 144, column: 5)
!447 = !DILocation(line: 145, column: 13, scope: !446)
!448 = !DILocation(line: 146, column: 18, scope: !446)
!449 = !DILocation(line: 146, column: 26, scope: !446)
!450 = !DILocation(line: 146, column: 24, scope: !446)
!451 = !DILocation(line: 146, column: 9, scope: !446)
!452 = !DILocation(line: 147, column: 45, scope: !446)
!453 = !DILocation(line: 147, column: 29, scope: !446)
!454 = !DILocation(line: 147, column: 9, scope: !446)
!455 = !DILocation(line: 147, column: 15, scope: !446)
!456 = !DILocation(line: 147, column: 27, scope: !446)
!457 = !DILocation(line: 148, column: 9, scope: !446)
!458 = distinct !{!458, !429, !459, !378}
!459 = !DILocation(line: 149, column: 5, scope: !418)
!460 = !DILocation(line: 151, column: 12, scope: !418)
!461 = !DILocation(line: 151, column: 5, scope: !418)
!462 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !463, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!463 = !DISubroutineType(types: !464)
!464 = !{!23}
!465 = !DILocation(line: 158, column: 5, scope: !462)
!466 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !463, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!467 = !DILocation(line: 163, column: 5, scope: !466)
!468 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !463, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!469 = !DILocation(line: 168, column: 13, scope: !468)
!470 = !DILocation(line: 168, column: 20, scope: !468)
!471 = !DILocation(line: 168, column: 5, scope: !468)
!472 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !57, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!473 = !DILocation(line: 187, column: 16, scope: !472)
!474 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !57, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DILocation(line: 188, column: 16, scope: !474)
!476 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !57, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!477 = !DILocation(line: 189, column: 16, scope: !476)
!478 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !57, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!479 = !DILocation(line: 190, column: 16, scope: !478)
!480 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !57, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!481 = !DILocation(line: 191, column: 16, scope: !480)
!482 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !57, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DILocation(line: 192, column: 16, scope: !482)
!484 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !57, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!485 = !DILocation(line: 193, column: 16, scope: !484)
!486 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !57, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DILocation(line: 194, column: 16, scope: !486)
!488 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !57, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!489 = !DILocation(line: 195, column: 16, scope: !488)
!490 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !57, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!491 = !DILocation(line: 198, column: 15, scope: !490)
!492 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !57, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!493 = !DILocation(line: 199, column: 15, scope: !492)
!494 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !57, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!495 = !DILocation(line: 200, column: 15, scope: !494)
!496 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !57, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!497 = !DILocation(line: 201, column: 15, scope: !496)
!498 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !57, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!499 = !DILocation(line: 202, column: 15, scope: !498)
!500 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !57, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!501 = !DILocation(line: 203, column: 15, scope: !500)
!502 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !57, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DILocation(line: 204, column: 15, scope: !502)
!504 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !57, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DILocation(line: 205, column: 15, scope: !504)
!506 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !57, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DILocation(line: 206, column: 15, scope: !506)
