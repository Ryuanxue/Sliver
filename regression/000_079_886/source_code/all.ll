; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.3 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.5 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.6 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !57, metadata !DIExpression()), !dbg !73
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !74
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !74
  call void @llvm.va_start(i8* %arraydecay1), !dbg !74
  %0 = load i8*, i8** %data.addr, align 8, !dbg !75
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !76
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !77
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !78
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !78
  call void @llvm.va_end(i8* %arraydecay34), !dbg !78
  ret void, !dbg !79
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_31_bad() #0 !dbg !80 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %dataCopy = alloca i8*, align 8
  %data4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !85, metadata !DIExpression()), !dbg !89
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !89
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !89
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !90
  store i8* %arraydecay, i8** %data, align 8, !dbg !91
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !92, metadata !DIExpression()), !dbg !97
  %1 = load i8*, i8** %data, align 8, !dbg !98
  %call = call i64 @strlen(i8* %1) #8, !dbg !99
  store i64 %call, i64* %dataLen, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !100, metadata !DIExpression()), !dbg !101
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9, !dbg !102
  store i8* %call1, i8** %environment, align 8, !dbg !101
  %2 = load i8*, i8** %environment, align 8, !dbg !103
  %cmp = icmp ne i8* %2, null, !dbg !105
  br i1 %cmp, label %if.then, label %if.end, !dbg !106

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !107
  %4 = load i64, i64* %dataLen, align 8, !dbg !109
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !110
  %5 = load i8*, i8** %environment, align 8, !dbg !111
  %6 = load i64, i64* %dataLen, align 8, !dbg !112
  %sub = sub i64 100, %6, !dbg !113
  %sub2 = sub i64 %sub, 1, !dbg !114
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #9, !dbg !115
  br label %if.end, !dbg !116

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !117, metadata !DIExpression()), !dbg !119
  %7 = load i8*, i8** %data, align 8, !dbg !120
  store i8* %7, i8** %dataCopy, align 8, !dbg !119
  call void @llvm.dbg.declare(metadata i8** %data4, metadata !121, metadata !DIExpression()), !dbg !122
  %8 = load i8*, i8** %dataCopy, align 8, !dbg !123
  store i8* %8, i8** %data4, align 8, !dbg !122
  %9 = load i8*, i8** %data4, align 8, !dbg !124
  %10 = load i8*, i8** %data4, align 8, !dbg !125
  call void (i8*, ...) @badVaSink(i8* %9, i8* %10), !dbg !126
  ret void, !dbg !127
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #6

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !128 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !131, metadata !DIExpression()), !dbg !133
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !134
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !134
  call void @llvm.va_start(i8* %arraydecay1), !dbg !134
  %0 = load i8*, i8** %data.addr, align 8, !dbg !135
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !136
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !137
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !138
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !138
  call void @llvm.va_end(i8* %arraydecay34), !dbg !138
  ret void, !dbg !139
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !140 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !143, metadata !DIExpression()), !dbg !144
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !144
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !144
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !145
  store i8* %arraydecay, i8** %data, align 8, !dbg !146
  %1 = load i8*, i8** %data, align 8, !dbg !147
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !148
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !149, metadata !DIExpression()), !dbg !151
  %2 = load i8*, i8** %data, align 8, !dbg !152
  store i8* %2, i8** %dataCopy, align 8, !dbg !151
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !153, metadata !DIExpression()), !dbg !154
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !155
  store i8* %3, i8** %data1, align 8, !dbg !154
  %4 = load i8*, i8** %data1, align 8, !dbg !156
  %5 = load i8*, i8** %data1, align 8, !dbg !157
  call void (i8*, ...) @goodG2BVaSink(i8* %4, i8* %5), !dbg !158
  ret void, !dbg !159
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !160 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !163, metadata !DIExpression()), !dbg !165
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !166
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !166
  call void @llvm.va_start(i8* %arraydecay1), !dbg !166
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !167
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !168
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !169
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !169
  call void @llvm.va_end(i8* %arraydecay34), !dbg !169
  ret void, !dbg !170
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !171 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %dataCopy = alloca i8*, align 8
  %data4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !174, metadata !DIExpression()), !dbg !175
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !175
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !175
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !176
  store i8* %arraydecay, i8** %data, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !178, metadata !DIExpression()), !dbg !180
  %1 = load i8*, i8** %data, align 8, !dbg !181
  %call = call i64 @strlen(i8* %1) #8, !dbg !182
  store i64 %call, i64* %dataLen, align 8, !dbg !180
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !183, metadata !DIExpression()), !dbg !184
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9, !dbg !185
  store i8* %call1, i8** %environment, align 8, !dbg !184
  %2 = load i8*, i8** %environment, align 8, !dbg !186
  %cmp = icmp ne i8* %2, null, !dbg !188
  br i1 %cmp, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !190
  %4 = load i64, i64* %dataLen, align 8, !dbg !192
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !193
  %5 = load i8*, i8** %environment, align 8, !dbg !194
  %6 = load i64, i64* %dataLen, align 8, !dbg !195
  %sub = sub i64 100, %6, !dbg !196
  %sub2 = sub i64 %sub, 1, !dbg !197
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #9, !dbg !198
  br label %if.end, !dbg !199

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !200, metadata !DIExpression()), !dbg !202
  %7 = load i8*, i8** %data, align 8, !dbg !203
  store i8* %7, i8** %dataCopy, align 8, !dbg !202
  call void @llvm.dbg.declare(metadata i8** %data4, metadata !204, metadata !DIExpression()), !dbg !205
  %8 = load i8*, i8** %dataCopy, align 8, !dbg !206
  store i8* %8, i8** %data4, align 8, !dbg !205
  %9 = load i8*, i8** %data4, align 8, !dbg !207
  %10 = load i8*, i8** %data4, align 8, !dbg !208
  call void (i8*, ...) @goodB2GVaSink(i8* %9, i8* %10), !dbg !209
  ret void, !dbg !210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_31_good() #0 !dbg !211 {
entry:
  call void @goodG2B(), !dbg !212
  call void @goodB2G(), !dbg !213
  ret void, !dbg !214
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !215 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !218, metadata !DIExpression()), !dbg !219
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !220
  %0 = load i8*, i8** %line.addr, align 8, !dbg !221
  %cmp = icmp ne i8* %0, null, !dbg !223
  br i1 %cmp, label %if.then, label %if.end, !dbg !224

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !225
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !227
  br label %if.end, !dbg !228

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !229
  ret void, !dbg !230
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !231 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = load i8*, i8** %line.addr, align 8, !dbg !234
  %cmp = icmp ne i8* %0, null, !dbg !236
  br i1 %cmp, label %if.then, label %if.end, !dbg !237

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !238
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !240
  br label %if.end, !dbg !241

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !242
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !243 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load i32*, i32** %line.addr, align 8, !dbg !250
  %cmp = icmp ne i32* %0, null, !dbg !252
  br i1 %cmp, label %if.then, label %if.end, !dbg !253

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !254
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !256
  br label %if.end, !dbg !257

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !258
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !259 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !262, metadata !DIExpression()), !dbg !263
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !264
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !265
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !267 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !271, metadata !DIExpression()), !dbg !272
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !273
  %conv = sext i16 %0 to i32, !dbg !273
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !274
  ret void, !dbg !275
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !276 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !282
  %conv = fpext float %0 to double, !dbg !282
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !283
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !285 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !291
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !292
  ret void, !dbg !293
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !294 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !301, metadata !DIExpression()), !dbg !302
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !303
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !304
  ret void, !dbg !305
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !306 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !311
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !314 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !319
  %conv = sext i8 %0 to i32, !dbg !319
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !320
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !322 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !325, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !327, metadata !DIExpression()), !dbg !331
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !332
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !333
  store i32 %0, i32* %arrayidx, align 4, !dbg !334
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !335
  store i32 0, i32* %arrayidx1, align 4, !dbg !336
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !337
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !338
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !340 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !343, metadata !DIExpression()), !dbg !344
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !345
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !346
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !348 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !353
  %conv = zext i8 %0 to i32, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !356 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !360, metadata !DIExpression()), !dbg !361
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !362
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !363
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !365 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !377
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !378
  %1 = load i32, i32* %intOne, align 4, !dbg !378
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !379
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !380
  %3 = load i32, i32* %intTwo, align 4, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !381
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !383 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !387, metadata !DIExpression()), !dbg !388
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata i64* %i, metadata !391, metadata !DIExpression()), !dbg !392
  store i64 0, i64* %i, align 8, !dbg !393
  br label %for.cond, !dbg !395

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !396
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !398
  %cmp = icmp ult i64 %0, %1, !dbg !399
  br i1 %cmp, label %for.body, label %for.end, !dbg !400

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !401
  %3 = load i64, i64* %i, align 8, !dbg !403
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !401
  %4 = load i8, i8* %arrayidx, align 1, !dbg !401
  %conv = zext i8 %4 to i32, !dbg !401
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !404
  br label %for.inc, !dbg !405

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !406
  %inc = add i64 %5, 1, !dbg !406
  store i64 %inc, i64* %i, align 8, !dbg !406
  br label %for.cond, !dbg !407, !llvm.loop !408

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !411
  ret void, !dbg !412
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !413 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !416, metadata !DIExpression()), !dbg !417
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !418, metadata !DIExpression()), !dbg !419
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !422, metadata !DIExpression()), !dbg !423
  store i64 0, i64* %numWritten, align 8, !dbg !423
  br label %while.cond, !dbg !424

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !425
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !426
  %cmp = icmp ult i64 %0, %1, !dbg !427
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !428

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !429
  %2 = load i16*, i16** %call, align 8, !dbg !429
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !429
  %4 = load i64, i64* %numWritten, align 8, !dbg !429
  %mul = mul i64 2, %4, !dbg !429
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !429
  %5 = load i8, i8* %arrayidx, align 1, !dbg !429
  %conv = sext i8 %5 to i32, !dbg !429
  %idxprom = sext i32 %conv to i64, !dbg !429
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !429
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !429
  %conv2 = zext i16 %6 to i32, !dbg !429
  %and = and i32 %conv2, 4096, !dbg !429
  %tobool = icmp ne i32 %and, 0, !dbg !429
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !430

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !431
  %7 = load i16*, i16** %call3, align 8, !dbg !431
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !431
  %9 = load i64, i64* %numWritten, align 8, !dbg !431
  %mul4 = mul i64 2, %9, !dbg !431
  %add = add i64 %mul4, 1, !dbg !431
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !431
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !431
  %conv6 = sext i8 %10 to i32, !dbg !431
  %idxprom7 = sext i32 %conv6 to i64, !dbg !431
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !431
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !431
  %conv9 = zext i16 %11 to i32, !dbg !431
  %and10 = and i32 %conv9, 4096, !dbg !431
  %tobool11 = icmp ne i32 %and10, 0, !dbg !430
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !432
  br i1 %12, label %while.body, label %while.end, !dbg !424

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !433, metadata !DIExpression()), !dbg !435
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !436
  %14 = load i64, i64* %numWritten, align 8, !dbg !437
  %mul12 = mul i64 2, %14, !dbg !438
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !436
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !439
  %15 = load i32, i32* %byte, align 4, !dbg !440
  %conv15 = trunc i32 %15 to i8, !dbg !441
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !442
  %17 = load i64, i64* %numWritten, align 8, !dbg !443
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !442
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !444
  %18 = load i64, i64* %numWritten, align 8, !dbg !445
  %inc = add i64 %18, 1, !dbg !445
  store i64 %inc, i64* %numWritten, align 8, !dbg !445
  br label %while.cond, !dbg !424, !llvm.loop !446

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !448
  ret i64 %19, !dbg !449
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !450 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !453, metadata !DIExpression()), !dbg !454
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !455, metadata !DIExpression()), !dbg !456
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !459, metadata !DIExpression()), !dbg !460
  store i64 0, i64* %numWritten, align 8, !dbg !460
  br label %while.cond, !dbg !461

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !462
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !463
  %cmp = icmp ult i64 %0, %1, !dbg !464
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !465

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !466
  %3 = load i64, i64* %numWritten, align 8, !dbg !467
  %mul = mul i64 2, %3, !dbg !468
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !466
  %4 = load i32, i32* %arrayidx, align 4, !dbg !466
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !469
  %tobool = icmp ne i32 %call, 0, !dbg !469
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !470

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !471
  %6 = load i64, i64* %numWritten, align 8, !dbg !472
  %mul1 = mul i64 2, %6, !dbg !473
  %add = add i64 %mul1, 1, !dbg !474
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !471
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !471
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !475
  %tobool4 = icmp ne i32 %call3, 0, !dbg !470
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !476
  br i1 %8, label %while.body, label %while.end, !dbg !461

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !477, metadata !DIExpression()), !dbg !479
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !480
  %10 = load i64, i64* %numWritten, align 8, !dbg !481
  %mul5 = mul i64 2, %10, !dbg !482
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !480
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !483
  %11 = load i32, i32* %byte, align 4, !dbg !484
  %conv = trunc i32 %11 to i8, !dbg !485
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !486
  %13 = load i64, i64* %numWritten, align 8, !dbg !487
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !486
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !488
  %14 = load i64, i64* %numWritten, align 8, !dbg !489
  %inc = add i64 %14, 1, !dbg !489
  store i64 %inc, i64* %numWritten, align 8, !dbg !489
  br label %while.cond, !dbg !461, !llvm.loop !490

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !492
  ret i64 %15, !dbg !493
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !494 {
entry:
  ret i32 1, !dbg !497
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !498 {
entry:
  ret i32 0, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !500 {
entry:
  %call = call i32 @rand() #9, !dbg !501
  %rem = srem i32 %call, 2, !dbg !502
  ret i32 %rem, !dbg !503
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !504 {
entry:
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !506 {
entry:
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !508 {
entry:
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !510 {
entry:
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !512 {
entry:
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !514 {
entry:
  ret void, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !516 {
entry:
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !518 {
entry:
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !520 {
entry:
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !522 {
entry:
  ret void, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !524 {
entry:
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !526 {
entry:
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !528 {
entry:
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !530 {
entry:
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !532 {
entry:
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !534 {
entry:
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !536 {
entry:
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_886/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_886/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badVaSink", scope: !45, file: !45, line: 36, type: !53, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !42, null}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 36, type: !42)
!56 = !DILocation(line: 36, column: 23, scope: !52)
!57 = !DILocalVariable(name: "args", scope: !58, file: !45, line: 39, type: !59)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 38, column: 5)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !60, line: 52, baseType: !61)
!60 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !62, line: 32, baseType: !63)
!62 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !45, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 192, elements: !71)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !66)
!66 = !{!67, !68, !69, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !65, file: !45, line: 39, baseType: !7, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !65, file: !45, line: 39, baseType: !7, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !65, file: !45, line: 39, baseType: !22, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !65, file: !45, line: 39, baseType: !22, size: 64, offset: 128)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DILocation(line: 39, column: 17, scope: !58)
!74 = !DILocation(line: 40, column: 9, scope: !58)
!75 = !DILocation(line: 42, column: 17, scope: !58)
!76 = !DILocation(line: 42, column: 23, scope: !58)
!77 = !DILocation(line: 42, column: 9, scope: !58)
!78 = !DILocation(line: 43, column: 9, scope: !58)
!79 = !DILocation(line: 45, column: 1, scope: !52)
!80 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_31_bad", scope: !45, file: !45, line: 47, type: !81, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!81 = !DISubroutineType(types: !82)
!82 = !{null}
!83 = !DILocalVariable(name: "data", scope: !80, file: !45, line: 49, type: !42)
!84 = !DILocation(line: 49, column: 12, scope: !80)
!85 = !DILocalVariable(name: "dataBuffer", scope: !80, file: !45, line: 50, type: !86)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 100)
!89 = !DILocation(line: 50, column: 10, scope: !80)
!90 = !DILocation(line: 51, column: 12, scope: !80)
!91 = !DILocation(line: 51, column: 10, scope: !80)
!92 = !DILocalVariable(name: "dataLen", scope: !93, file: !45, line: 54, type: !94)
!93 = distinct !DILexicalBlock(scope: !80, file: !45, line: 52, column: 5)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !DILocation(line: 54, column: 16, scope: !93)
!98 = !DILocation(line: 54, column: 33, scope: !93)
!99 = !DILocation(line: 54, column: 26, scope: !93)
!100 = !DILocalVariable(name: "environment", scope: !93, file: !45, line: 55, type: !42)
!101 = !DILocation(line: 55, column: 16, scope: !93)
!102 = !DILocation(line: 55, column: 30, scope: !93)
!103 = !DILocation(line: 57, column: 13, scope: !104)
!104 = distinct !DILexicalBlock(scope: !93, file: !45, line: 57, column: 13)
!105 = !DILocation(line: 57, column: 25, scope: !104)
!106 = !DILocation(line: 57, column: 13, scope: !93)
!107 = !DILocation(line: 60, column: 21, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !45, line: 58, column: 9)
!109 = !DILocation(line: 60, column: 26, scope: !108)
!110 = !DILocation(line: 60, column: 25, scope: !108)
!111 = !DILocation(line: 60, column: 35, scope: !108)
!112 = !DILocation(line: 60, column: 52, scope: !108)
!113 = !DILocation(line: 60, column: 51, scope: !108)
!114 = !DILocation(line: 60, column: 59, scope: !108)
!115 = !DILocation(line: 60, column: 13, scope: !108)
!116 = !DILocation(line: 61, column: 9, scope: !108)
!117 = !DILocalVariable(name: "dataCopy", scope: !118, file: !45, line: 64, type: !42)
!118 = distinct !DILexicalBlock(scope: !80, file: !45, line: 63, column: 5)
!119 = !DILocation(line: 64, column: 16, scope: !118)
!120 = !DILocation(line: 64, column: 27, scope: !118)
!121 = !DILocalVariable(name: "data", scope: !118, file: !45, line: 65, type: !42)
!122 = !DILocation(line: 65, column: 16, scope: !118)
!123 = !DILocation(line: 65, column: 23, scope: !118)
!124 = !DILocation(line: 66, column: 19, scope: !118)
!125 = !DILocation(line: 66, column: 25, scope: !118)
!126 = !DILocation(line: 66, column: 9, scope: !118)
!127 = !DILocation(line: 68, column: 1, scope: !80)
!128 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !45, file: !45, line: 75, type: !53, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!129 = !DILocalVariable(name: "data", arg: 1, scope: !128, file: !45, line: 75, type: !42)
!130 = !DILocation(line: 75, column: 27, scope: !128)
!131 = !DILocalVariable(name: "args", scope: !132, file: !45, line: 78, type: !59)
!132 = distinct !DILexicalBlock(scope: !128, file: !45, line: 77, column: 5)
!133 = !DILocation(line: 78, column: 17, scope: !132)
!134 = !DILocation(line: 79, column: 9, scope: !132)
!135 = !DILocation(line: 81, column: 17, scope: !132)
!136 = !DILocation(line: 81, column: 23, scope: !132)
!137 = !DILocation(line: 81, column: 9, scope: !132)
!138 = !DILocation(line: 82, column: 9, scope: !132)
!139 = !DILocation(line: 84, column: 1, scope: !128)
!140 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 86, type: !81, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!141 = !DILocalVariable(name: "data", scope: !140, file: !45, line: 88, type: !42)
!142 = !DILocation(line: 88, column: 12, scope: !140)
!143 = !DILocalVariable(name: "dataBuffer", scope: !140, file: !45, line: 89, type: !86)
!144 = !DILocation(line: 89, column: 10, scope: !140)
!145 = !DILocation(line: 90, column: 12, scope: !140)
!146 = !DILocation(line: 90, column: 10, scope: !140)
!147 = !DILocation(line: 92, column: 12, scope: !140)
!148 = !DILocation(line: 92, column: 5, scope: !140)
!149 = !DILocalVariable(name: "dataCopy", scope: !150, file: !45, line: 94, type: !42)
!150 = distinct !DILexicalBlock(scope: !140, file: !45, line: 93, column: 5)
!151 = !DILocation(line: 94, column: 16, scope: !150)
!152 = !DILocation(line: 94, column: 27, scope: !150)
!153 = !DILocalVariable(name: "data", scope: !150, file: !45, line: 95, type: !42)
!154 = !DILocation(line: 95, column: 16, scope: !150)
!155 = !DILocation(line: 95, column: 23, scope: !150)
!156 = !DILocation(line: 96, column: 23, scope: !150)
!157 = !DILocation(line: 96, column: 29, scope: !150)
!158 = !DILocation(line: 96, column: 9, scope: !150)
!159 = !DILocation(line: 98, column: 1, scope: !140)
!160 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !45, file: !45, line: 101, type: !53, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!161 = !DILocalVariable(name: "data", arg: 1, scope: !160, file: !45, line: 101, type: !42)
!162 = !DILocation(line: 101, column: 27, scope: !160)
!163 = !DILocalVariable(name: "args", scope: !164, file: !45, line: 104, type: !59)
!164 = distinct !DILexicalBlock(scope: !160, file: !45, line: 103, column: 5)
!165 = !DILocation(line: 104, column: 17, scope: !164)
!166 = !DILocation(line: 105, column: 9, scope: !164)
!167 = !DILocation(line: 107, column: 23, scope: !164)
!168 = !DILocation(line: 107, column: 9, scope: !164)
!169 = !DILocation(line: 108, column: 9, scope: !164)
!170 = !DILocation(line: 110, column: 1, scope: !160)
!171 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 112, type: !81, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!172 = !DILocalVariable(name: "data", scope: !171, file: !45, line: 114, type: !42)
!173 = !DILocation(line: 114, column: 12, scope: !171)
!174 = !DILocalVariable(name: "dataBuffer", scope: !171, file: !45, line: 115, type: !86)
!175 = !DILocation(line: 115, column: 10, scope: !171)
!176 = !DILocation(line: 116, column: 12, scope: !171)
!177 = !DILocation(line: 116, column: 10, scope: !171)
!178 = !DILocalVariable(name: "dataLen", scope: !179, file: !45, line: 119, type: !94)
!179 = distinct !DILexicalBlock(scope: !171, file: !45, line: 117, column: 5)
!180 = !DILocation(line: 119, column: 16, scope: !179)
!181 = !DILocation(line: 119, column: 33, scope: !179)
!182 = !DILocation(line: 119, column: 26, scope: !179)
!183 = !DILocalVariable(name: "environment", scope: !179, file: !45, line: 120, type: !42)
!184 = !DILocation(line: 120, column: 16, scope: !179)
!185 = !DILocation(line: 120, column: 30, scope: !179)
!186 = !DILocation(line: 122, column: 13, scope: !187)
!187 = distinct !DILexicalBlock(scope: !179, file: !45, line: 122, column: 13)
!188 = !DILocation(line: 122, column: 25, scope: !187)
!189 = !DILocation(line: 122, column: 13, scope: !179)
!190 = !DILocation(line: 125, column: 21, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !45, line: 123, column: 9)
!192 = !DILocation(line: 125, column: 26, scope: !191)
!193 = !DILocation(line: 125, column: 25, scope: !191)
!194 = !DILocation(line: 125, column: 35, scope: !191)
!195 = !DILocation(line: 125, column: 52, scope: !191)
!196 = !DILocation(line: 125, column: 51, scope: !191)
!197 = !DILocation(line: 125, column: 59, scope: !191)
!198 = !DILocation(line: 125, column: 13, scope: !191)
!199 = !DILocation(line: 126, column: 9, scope: !191)
!200 = !DILocalVariable(name: "dataCopy", scope: !201, file: !45, line: 129, type: !42)
!201 = distinct !DILexicalBlock(scope: !171, file: !45, line: 128, column: 5)
!202 = !DILocation(line: 129, column: 16, scope: !201)
!203 = !DILocation(line: 129, column: 27, scope: !201)
!204 = !DILocalVariable(name: "data", scope: !201, file: !45, line: 130, type: !42)
!205 = !DILocation(line: 130, column: 16, scope: !201)
!206 = !DILocation(line: 130, column: 23, scope: !201)
!207 = !DILocation(line: 131, column: 23, scope: !201)
!208 = !DILocation(line: 131, column: 29, scope: !201)
!209 = !DILocation(line: 131, column: 9, scope: !201)
!210 = !DILocation(line: 133, column: 1, scope: !171)
!211 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_31_good", scope: !45, file: !45, line: 135, type: !81, scopeLine: 136, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!212 = !DILocation(line: 137, column: 5, scope: !211)
!213 = !DILocation(line: 138, column: 5, scope: !211)
!214 = !DILocation(line: 139, column: 1, scope: !211)
!215 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !216, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !42}
!218 = !DILocalVariable(name: "line", arg: 1, scope: !215, file: !3, line: 11, type: !42)
!219 = !DILocation(line: 11, column: 25, scope: !215)
!220 = !DILocation(line: 13, column: 1, scope: !215)
!221 = !DILocation(line: 14, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !215, file: !3, line: 14, column: 8)
!223 = !DILocation(line: 14, column: 13, scope: !222)
!224 = !DILocation(line: 14, column: 8, scope: !215)
!225 = !DILocation(line: 16, column: 24, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !3, line: 15, column: 5)
!227 = !DILocation(line: 16, column: 9, scope: !226)
!228 = !DILocation(line: 17, column: 5, scope: !226)
!229 = !DILocation(line: 18, column: 5, scope: !215)
!230 = !DILocation(line: 19, column: 1, scope: !215)
!231 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !216, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!232 = !DILocalVariable(name: "line", arg: 1, scope: !231, file: !3, line: 20, type: !42)
!233 = !DILocation(line: 20, column: 29, scope: !231)
!234 = !DILocation(line: 22, column: 8, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !3, line: 22, column: 8)
!236 = !DILocation(line: 22, column: 13, scope: !235)
!237 = !DILocation(line: 22, column: 8, scope: !231)
!238 = !DILocation(line: 24, column: 24, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !3, line: 23, column: 5)
!240 = !DILocation(line: 24, column: 9, scope: !239)
!241 = !DILocation(line: 25, column: 5, scope: !239)
!242 = !DILocation(line: 26, column: 1, scope: !231)
!243 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !244, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 74, baseType: !23)
!248 = !DILocalVariable(name: "line", arg: 1, scope: !243, file: !3, line: 27, type: !246)
!249 = !DILocation(line: 27, column: 29, scope: !243)
!250 = !DILocation(line: 29, column: 8, scope: !251)
!251 = distinct !DILexicalBlock(scope: !243, file: !3, line: 29, column: 8)
!252 = !DILocation(line: 29, column: 13, scope: !251)
!253 = !DILocation(line: 29, column: 8, scope: !243)
!254 = !DILocation(line: 31, column: 27, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !3, line: 30, column: 5)
!256 = !DILocation(line: 31, column: 9, scope: !255)
!257 = !DILocation(line: 32, column: 5, scope: !255)
!258 = !DILocation(line: 33, column: 1, scope: !243)
!259 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !260, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !23}
!262 = !DILocalVariable(name: "intNumber", arg: 1, scope: !259, file: !3, line: 35, type: !23)
!263 = !DILocation(line: 35, column: 24, scope: !259)
!264 = !DILocation(line: 37, column: 20, scope: !259)
!265 = !DILocation(line: 37, column: 5, scope: !259)
!266 = !DILocation(line: 38, column: 1, scope: !259)
!267 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !268, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !270}
!270 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!271 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !267, file: !3, line: 40, type: !270)
!272 = !DILocation(line: 40, column: 28, scope: !267)
!273 = !DILocation(line: 42, column: 21, scope: !267)
!274 = !DILocation(line: 42, column: 5, scope: !267)
!275 = !DILocation(line: 43, column: 1, scope: !267)
!276 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !277, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !279}
!279 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!280 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !276, file: !3, line: 45, type: !279)
!281 = !DILocation(line: 45, column: 28, scope: !276)
!282 = !DILocation(line: 47, column: 20, scope: !276)
!283 = !DILocation(line: 47, column: 5, scope: !276)
!284 = !DILocation(line: 48, column: 1, scope: !276)
!285 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !286, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !288}
!288 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!289 = !DILocalVariable(name: "longNumber", arg: 1, scope: !285, file: !3, line: 50, type: !288)
!290 = !DILocation(line: 50, column: 26, scope: !285)
!291 = !DILocation(line: 52, column: 21, scope: !285)
!292 = !DILocation(line: 52, column: 5, scope: !285)
!293 = !DILocation(line: 53, column: 1, scope: !285)
!294 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !295, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !297}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !298, line: 27, baseType: !299)
!298 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !300, line: 44, baseType: !288)
!300 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!301 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !294, file: !3, line: 55, type: !297)
!302 = !DILocation(line: 55, column: 33, scope: !294)
!303 = !DILocation(line: 57, column: 29, scope: !294)
!304 = !DILocation(line: 57, column: 5, scope: !294)
!305 = !DILocation(line: 58, column: 1, scope: !294)
!306 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !307, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !94}
!309 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !306, file: !3, line: 60, type: !94)
!310 = !DILocation(line: 60, column: 29, scope: !306)
!311 = !DILocation(line: 62, column: 21, scope: !306)
!312 = !DILocation(line: 62, column: 5, scope: !306)
!313 = !DILocation(line: 63, column: 1, scope: !306)
!314 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !315, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !43}
!317 = !DILocalVariable(name: "charHex", arg: 1, scope: !314, file: !3, line: 65, type: !43)
!318 = !DILocation(line: 65, column: 29, scope: !314)
!319 = !DILocation(line: 67, column: 22, scope: !314)
!320 = !DILocation(line: 67, column: 5, scope: !314)
!321 = !DILocation(line: 68, column: 1, scope: !314)
!322 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !323, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !247}
!325 = !DILocalVariable(name: "wideChar", arg: 1, scope: !322, file: !3, line: 70, type: !247)
!326 = !DILocation(line: 70, column: 29, scope: !322)
!327 = !DILocalVariable(name: "s", scope: !322, file: !3, line: 74, type: !328)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 64, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 2)
!331 = !DILocation(line: 74, column: 13, scope: !322)
!332 = !DILocation(line: 75, column: 16, scope: !322)
!333 = !DILocation(line: 75, column: 9, scope: !322)
!334 = !DILocation(line: 75, column: 14, scope: !322)
!335 = !DILocation(line: 76, column: 9, scope: !322)
!336 = !DILocation(line: 76, column: 14, scope: !322)
!337 = !DILocation(line: 77, column: 21, scope: !322)
!338 = !DILocation(line: 77, column: 5, scope: !322)
!339 = !DILocation(line: 78, column: 1, scope: !322)
!340 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !341, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !7}
!343 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !340, file: !3, line: 80, type: !7)
!344 = !DILocation(line: 80, column: 33, scope: !340)
!345 = !DILocation(line: 82, column: 20, scope: !340)
!346 = !DILocation(line: 82, column: 5, scope: !340)
!347 = !DILocation(line: 83, column: 1, scope: !340)
!348 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !349, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !25}
!351 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !348, file: !3, line: 85, type: !25)
!352 = !DILocation(line: 85, column: 45, scope: !348)
!353 = !DILocation(line: 87, column: 22, scope: !348)
!354 = !DILocation(line: 87, column: 5, scope: !348)
!355 = !DILocation(line: 88, column: 1, scope: !348)
!356 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !357, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359}
!359 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!360 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !356, file: !3, line: 90, type: !359)
!361 = !DILocation(line: 90, column: 29, scope: !356)
!362 = !DILocation(line: 92, column: 20, scope: !356)
!363 = !DILocation(line: 92, column: 5, scope: !356)
!364 = !DILocation(line: 93, column: 1, scope: !356)
!365 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !366, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !370, line: 100, baseType: !371)
!370 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_886/source_code")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !370, line: 96, size: 64, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !371, file: !370, line: 98, baseType: !23, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !371, file: !370, line: 99, baseType: !23, size: 32, offset: 32)
!375 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !365, file: !3, line: 95, type: !368)
!376 = !DILocation(line: 95, column: 40, scope: !365)
!377 = !DILocation(line: 97, column: 26, scope: !365)
!378 = !DILocation(line: 97, column: 47, scope: !365)
!379 = !DILocation(line: 97, column: 55, scope: !365)
!380 = !DILocation(line: 97, column: 76, scope: !365)
!381 = !DILocation(line: 97, column: 5, scope: !365)
!382 = !DILocation(line: 98, column: 1, scope: !365)
!383 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !384, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386, !94}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!387 = !DILocalVariable(name: "bytes", arg: 1, scope: !383, file: !3, line: 100, type: !386)
!388 = !DILocation(line: 100, column: 38, scope: !383)
!389 = !DILocalVariable(name: "numBytes", arg: 2, scope: !383, file: !3, line: 100, type: !94)
!390 = !DILocation(line: 100, column: 52, scope: !383)
!391 = !DILocalVariable(name: "i", scope: !383, file: !3, line: 102, type: !94)
!392 = !DILocation(line: 102, column: 12, scope: !383)
!393 = !DILocation(line: 103, column: 12, scope: !394)
!394 = distinct !DILexicalBlock(scope: !383, file: !3, line: 103, column: 5)
!395 = !DILocation(line: 103, column: 10, scope: !394)
!396 = !DILocation(line: 103, column: 17, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !3, line: 103, column: 5)
!398 = !DILocation(line: 103, column: 21, scope: !397)
!399 = !DILocation(line: 103, column: 19, scope: !397)
!400 = !DILocation(line: 103, column: 5, scope: !394)
!401 = !DILocation(line: 105, column: 24, scope: !402)
!402 = distinct !DILexicalBlock(scope: !397, file: !3, line: 104, column: 5)
!403 = !DILocation(line: 105, column: 30, scope: !402)
!404 = !DILocation(line: 105, column: 9, scope: !402)
!405 = !DILocation(line: 106, column: 5, scope: !402)
!406 = !DILocation(line: 103, column: 31, scope: !397)
!407 = !DILocation(line: 103, column: 5, scope: !397)
!408 = distinct !{!408, !400, !409, !410}
!409 = !DILocation(line: 106, column: 5, scope: !394)
!410 = !{!"llvm.loop.mustprogress"}
!411 = !DILocation(line: 107, column: 5, scope: !383)
!412 = !DILocation(line: 108, column: 1, scope: !383)
!413 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !414, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{!94, !386, !94, !42}
!416 = !DILocalVariable(name: "bytes", arg: 1, scope: !413, file: !3, line: 113, type: !386)
!417 = !DILocation(line: 113, column: 39, scope: !413)
!418 = !DILocalVariable(name: "numBytes", arg: 2, scope: !413, file: !3, line: 113, type: !94)
!419 = !DILocation(line: 113, column: 53, scope: !413)
!420 = !DILocalVariable(name: "hex", arg: 3, scope: !413, file: !3, line: 113, type: !42)
!421 = !DILocation(line: 113, column: 71, scope: !413)
!422 = !DILocalVariable(name: "numWritten", scope: !413, file: !3, line: 115, type: !94)
!423 = !DILocation(line: 115, column: 12, scope: !413)
!424 = !DILocation(line: 121, column: 5, scope: !413)
!425 = !DILocation(line: 121, column: 12, scope: !413)
!426 = !DILocation(line: 121, column: 25, scope: !413)
!427 = !DILocation(line: 121, column: 23, scope: !413)
!428 = !DILocation(line: 121, column: 34, scope: !413)
!429 = !DILocation(line: 121, column: 37, scope: !413)
!430 = !DILocation(line: 121, column: 67, scope: !413)
!431 = !DILocation(line: 121, column: 70, scope: !413)
!432 = !DILocation(line: 0, scope: !413)
!433 = !DILocalVariable(name: "byte", scope: !434, file: !3, line: 123, type: !23)
!434 = distinct !DILexicalBlock(scope: !413, file: !3, line: 122, column: 5)
!435 = !DILocation(line: 123, column: 13, scope: !434)
!436 = !DILocation(line: 124, column: 17, scope: !434)
!437 = !DILocation(line: 124, column: 25, scope: !434)
!438 = !DILocation(line: 124, column: 23, scope: !434)
!439 = !DILocation(line: 124, column: 9, scope: !434)
!440 = !DILocation(line: 125, column: 45, scope: !434)
!441 = !DILocation(line: 125, column: 29, scope: !434)
!442 = !DILocation(line: 125, column: 9, scope: !434)
!443 = !DILocation(line: 125, column: 15, scope: !434)
!444 = !DILocation(line: 125, column: 27, scope: !434)
!445 = !DILocation(line: 126, column: 9, scope: !434)
!446 = distinct !{!446, !424, !447, !410}
!447 = !DILocation(line: 127, column: 5, scope: !413)
!448 = !DILocation(line: 129, column: 12, scope: !413)
!449 = !DILocation(line: 129, column: 5, scope: !413)
!450 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !451, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!451 = !DISubroutineType(types: !452)
!452 = !{!94, !386, !94, !246}
!453 = !DILocalVariable(name: "bytes", arg: 1, scope: !450, file: !3, line: 135, type: !386)
!454 = !DILocation(line: 135, column: 41, scope: !450)
!455 = !DILocalVariable(name: "numBytes", arg: 2, scope: !450, file: !3, line: 135, type: !94)
!456 = !DILocation(line: 135, column: 55, scope: !450)
!457 = !DILocalVariable(name: "hex", arg: 3, scope: !450, file: !3, line: 135, type: !246)
!458 = !DILocation(line: 135, column: 76, scope: !450)
!459 = !DILocalVariable(name: "numWritten", scope: !450, file: !3, line: 137, type: !94)
!460 = !DILocation(line: 137, column: 12, scope: !450)
!461 = !DILocation(line: 143, column: 5, scope: !450)
!462 = !DILocation(line: 143, column: 12, scope: !450)
!463 = !DILocation(line: 143, column: 25, scope: !450)
!464 = !DILocation(line: 143, column: 23, scope: !450)
!465 = !DILocation(line: 143, column: 34, scope: !450)
!466 = !DILocation(line: 143, column: 47, scope: !450)
!467 = !DILocation(line: 143, column: 55, scope: !450)
!468 = !DILocation(line: 143, column: 53, scope: !450)
!469 = !DILocation(line: 143, column: 37, scope: !450)
!470 = !DILocation(line: 143, column: 68, scope: !450)
!471 = !DILocation(line: 143, column: 81, scope: !450)
!472 = !DILocation(line: 143, column: 89, scope: !450)
!473 = !DILocation(line: 143, column: 87, scope: !450)
!474 = !DILocation(line: 143, column: 100, scope: !450)
!475 = !DILocation(line: 143, column: 71, scope: !450)
!476 = !DILocation(line: 0, scope: !450)
!477 = !DILocalVariable(name: "byte", scope: !478, file: !3, line: 145, type: !23)
!478 = distinct !DILexicalBlock(scope: !450, file: !3, line: 144, column: 5)
!479 = !DILocation(line: 145, column: 13, scope: !478)
!480 = !DILocation(line: 146, column: 18, scope: !478)
!481 = !DILocation(line: 146, column: 26, scope: !478)
!482 = !DILocation(line: 146, column: 24, scope: !478)
!483 = !DILocation(line: 146, column: 9, scope: !478)
!484 = !DILocation(line: 147, column: 45, scope: !478)
!485 = !DILocation(line: 147, column: 29, scope: !478)
!486 = !DILocation(line: 147, column: 9, scope: !478)
!487 = !DILocation(line: 147, column: 15, scope: !478)
!488 = !DILocation(line: 147, column: 27, scope: !478)
!489 = !DILocation(line: 148, column: 9, scope: !478)
!490 = distinct !{!490, !461, !491, !410}
!491 = !DILocation(line: 149, column: 5, scope: !450)
!492 = !DILocation(line: 151, column: 12, scope: !450)
!493 = !DILocation(line: 151, column: 5, scope: !450)
!494 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !495, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!495 = !DISubroutineType(types: !496)
!496 = !{!23}
!497 = !DILocation(line: 158, column: 5, scope: !494)
!498 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !495, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!499 = !DILocation(line: 163, column: 5, scope: !498)
!500 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !495, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!501 = !DILocation(line: 168, column: 13, scope: !500)
!502 = !DILocation(line: 168, column: 20, scope: !500)
!503 = !DILocation(line: 168, column: 5, scope: !500)
!504 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !81, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DILocation(line: 187, column: 16, scope: !504)
!506 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !81, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DILocation(line: 188, column: 16, scope: !506)
!508 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !81, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!509 = !DILocation(line: 189, column: 16, scope: !508)
!510 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !81, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!511 = !DILocation(line: 190, column: 16, scope: !510)
!512 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !81, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!513 = !DILocation(line: 191, column: 16, scope: !512)
!514 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !81, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DILocation(line: 192, column: 16, scope: !514)
!516 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !81, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DILocation(line: 193, column: 16, scope: !516)
!518 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !81, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DILocation(line: 194, column: 16, scope: !518)
!520 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !81, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DILocation(line: 195, column: 16, scope: !520)
!522 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !81, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!523 = !DILocation(line: 198, column: 15, scope: !522)
!524 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !81, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!525 = !DILocation(line: 199, column: 15, scope: !524)
!526 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !81, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DILocation(line: 200, column: 15, scope: !526)
!528 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !81, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DILocation(line: 201, column: 15, scope: !528)
!530 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !81, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!531 = !DILocation(line: 202, column: 15, scope: !530)
!532 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !81, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DILocation(line: 203, column: 15, scope: !532)
!534 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !81, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DILocation(line: 204, column: 15, scope: !534)
!536 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !81, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DILocation(line: 205, column: 15, scope: !536)
!538 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !81, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DILocation(line: 206, column: 15, scope: !538)
