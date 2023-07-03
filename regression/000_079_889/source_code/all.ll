; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_unionType = type { i8* }
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_bad() #0 !dbg !80 {
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
  %myUnion = alloca %union.CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata %union.CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_unionType* %myUnion, metadata !143, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !151, metadata !DIExpression()), !dbg !152
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !152
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !152
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !153
  store i8* %arraydecay, i8** %data, align 8, !dbg !154
  %1 = load i8*, i8** %data, align 8, !dbg !155
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !156
  %2 = load i8*, i8** %data, align 8, !dbg !157
  %unionFirst = bitcast %union.CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_unionType* %myUnion to i8**, !dbg !158
  store i8* %2, i8** %unionFirst, align 8, !dbg !159
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !160, metadata !DIExpression()), !dbg !162
  %unionSecond = bitcast %union.CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_unionType* %myUnion to i8**, !dbg !163
  %3 = load i8*, i8** %unionSecond, align 8, !dbg !163
  store i8* %3, i8** %data1, align 8, !dbg !162
  %4 = load i8*, i8** %data1, align 8, !dbg !164
  %5 = load i8*, i8** %data1, align 8, !dbg !165
  call void (i8*, ...) @goodG2BVaSink(i8* %4, i8* %5), !dbg !166
  ret void, !dbg !167
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !168 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !171, metadata !DIExpression()), !dbg !173
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !174
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !174
  call void @llvm.va_start(i8* %arraydecay1), !dbg !174
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !175
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !176
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !177
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !177
  call void @llvm.va_end(i8* %arraydecay34), !dbg !177
  ret void, !dbg !178
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !179 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %data4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata %union.CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_unionType* %myUnion, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !184, metadata !DIExpression()), !dbg !185
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !185
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !185
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !186
  store i8* %arraydecay, i8** %data, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !188, metadata !DIExpression()), !dbg !190
  %1 = load i8*, i8** %data, align 8, !dbg !191
  %call = call i64 @strlen(i8* %1) #8, !dbg !192
  store i64 %call, i64* %dataLen, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !193, metadata !DIExpression()), !dbg !194
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9, !dbg !195
  store i8* %call1, i8** %environment, align 8, !dbg !194
  %2 = load i8*, i8** %environment, align 8, !dbg !196
  %cmp = icmp ne i8* %2, null, !dbg !198
  br i1 %cmp, label %if.then, label %if.end, !dbg !199

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !200
  %4 = load i64, i64* %dataLen, align 8, !dbg !202
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !203
  %5 = load i8*, i8** %environment, align 8, !dbg !204
  %6 = load i64, i64* %dataLen, align 8, !dbg !205
  %sub = sub i64 100, %6, !dbg !206
  %sub2 = sub i64 %sub, 1, !dbg !207
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #9, !dbg !208
  br label %if.end, !dbg !209

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !210
  %unionFirst = bitcast %union.CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_unionType* %myUnion to i8**, !dbg !211
  store i8* %7, i8** %unionFirst, align 8, !dbg !212
  call void @llvm.dbg.declare(metadata i8** %data4, metadata !213, metadata !DIExpression()), !dbg !215
  %unionSecond = bitcast %union.CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_unionType* %myUnion to i8**, !dbg !216
  %8 = load i8*, i8** %unionSecond, align 8, !dbg !216
  store i8* %8, i8** %data4, align 8, !dbg !215
  %9 = load i8*, i8** %data4, align 8, !dbg !217
  %10 = load i8*, i8** %data4, align 8, !dbg !218
  call void (i8*, ...) @goodB2GVaSink(i8* %9, i8* %10), !dbg !219
  ret void, !dbg !220
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_good() #0 !dbg !221 {
entry:
  call void @goodG2B(), !dbg !222
  call void @goodB2G(), !dbg !223
  ret void, !dbg !224
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !225 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !228, metadata !DIExpression()), !dbg !229
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !230
  %0 = load i8*, i8** %line.addr, align 8, !dbg !231
  %cmp = icmp ne i8* %0, null, !dbg !233
  br i1 %cmp, label %if.then, label %if.end, !dbg !234

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !235
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !237
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !239
  ret void, !dbg !240
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !241 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = load i8*, i8** %line.addr, align 8, !dbg !244
  %cmp = icmp ne i8* %0, null, !dbg !246
  br i1 %cmp, label %if.then, label %if.end, !dbg !247

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !248
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !250
  br label %if.end, !dbg !251

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !253 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !258, metadata !DIExpression()), !dbg !259
  %0 = load i32*, i32** %line.addr, align 8, !dbg !260
  %cmp = icmp ne i32* %0, null, !dbg !262
  br i1 %cmp, label %if.then, label %if.end, !dbg !263

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !264
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !266
  br label %if.end, !dbg !267

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !268
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !269 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !274
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !275
  ret void, !dbg !276
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !277 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !283
  %conv = sext i16 %0 to i32, !dbg !283
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !284
  ret void, !dbg !285
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !286 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !290, metadata !DIExpression()), !dbg !291
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !292
  %conv = fpext float %0 to double, !dbg !292
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !293
  ret void, !dbg !294
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !295 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !301
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !302
  ret void, !dbg !303
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !304 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !313
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !316 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !321
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !324 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !327, metadata !DIExpression()), !dbg !328
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !329
  %conv = sext i8 %0 to i32, !dbg !329
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !330
  ret void, !dbg !331
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !332 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !337, metadata !DIExpression()), !dbg !341
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !342
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !343
  store i32 %0, i32* %arrayidx, align 4, !dbg !344
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !345
  store i32 0, i32* %arrayidx1, align 4, !dbg !346
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !347
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !348
  ret void, !dbg !349
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !350 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !358 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !361, metadata !DIExpression()), !dbg !362
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !363
  %conv = zext i8 %0 to i32, !dbg !363
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !366 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !372
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !375 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !387
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !388
  %1 = load i32, i32* %intOne, align 4, !dbg !388
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !389
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !390
  %3 = load i32, i32* %intTwo, align 4, !dbg !390
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !393 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !397, metadata !DIExpression()), !dbg !398
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata i64* %i, metadata !401, metadata !DIExpression()), !dbg !402
  store i64 0, i64* %i, align 8, !dbg !403
  br label %for.cond, !dbg !405

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !406
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !408
  %cmp = icmp ult i64 %0, %1, !dbg !409
  br i1 %cmp, label %for.body, label %for.end, !dbg !410

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !411
  %3 = load i64, i64* %i, align 8, !dbg !413
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !411
  %4 = load i8, i8* %arrayidx, align 1, !dbg !411
  %conv = zext i8 %4 to i32, !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !414
  br label %for.inc, !dbg !415

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !416
  %inc = add i64 %5, 1, !dbg !416
  store i64 %inc, i64* %i, align 8, !dbg !416
  br label %for.cond, !dbg !417, !llvm.loop !418

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !421
  ret void, !dbg !422
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !423 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !426, metadata !DIExpression()), !dbg !427
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !428, metadata !DIExpression()), !dbg !429
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !432, metadata !DIExpression()), !dbg !433
  store i64 0, i64* %numWritten, align 8, !dbg !433
  br label %while.cond, !dbg !434

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !435
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !436
  %cmp = icmp ult i64 %0, %1, !dbg !437
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !438

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !439
  %2 = load i16*, i16** %call, align 8, !dbg !439
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !439
  %4 = load i64, i64* %numWritten, align 8, !dbg !439
  %mul = mul i64 2, %4, !dbg !439
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !439
  %5 = load i8, i8* %arrayidx, align 1, !dbg !439
  %conv = sext i8 %5 to i32, !dbg !439
  %idxprom = sext i32 %conv to i64, !dbg !439
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !439
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !439
  %conv2 = zext i16 %6 to i32, !dbg !439
  %and = and i32 %conv2, 4096, !dbg !439
  %tobool = icmp ne i32 %and, 0, !dbg !439
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !440

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !441
  %7 = load i16*, i16** %call3, align 8, !dbg !441
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !441
  %9 = load i64, i64* %numWritten, align 8, !dbg !441
  %mul4 = mul i64 2, %9, !dbg !441
  %add = add i64 %mul4, 1, !dbg !441
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !441
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !441
  %conv6 = sext i8 %10 to i32, !dbg !441
  %idxprom7 = sext i32 %conv6 to i64, !dbg !441
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !441
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !441
  %conv9 = zext i16 %11 to i32, !dbg !441
  %and10 = and i32 %conv9, 4096, !dbg !441
  %tobool11 = icmp ne i32 %and10, 0, !dbg !440
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !442
  br i1 %12, label %while.body, label %while.end, !dbg !434

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !443, metadata !DIExpression()), !dbg !445
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !446
  %14 = load i64, i64* %numWritten, align 8, !dbg !447
  %mul12 = mul i64 2, %14, !dbg !448
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !446
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !449
  %15 = load i32, i32* %byte, align 4, !dbg !450
  %conv15 = trunc i32 %15 to i8, !dbg !451
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !452
  %17 = load i64, i64* %numWritten, align 8, !dbg !453
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !452
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !454
  %18 = load i64, i64* %numWritten, align 8, !dbg !455
  %inc = add i64 %18, 1, !dbg !455
  store i64 %inc, i64* %numWritten, align 8, !dbg !455
  br label %while.cond, !dbg !434, !llvm.loop !456

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !458
  ret i64 %19, !dbg !459
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !460 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !463, metadata !DIExpression()), !dbg !464
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !465, metadata !DIExpression()), !dbg !466
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !467, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !469, metadata !DIExpression()), !dbg !470
  store i64 0, i64* %numWritten, align 8, !dbg !470
  br label %while.cond, !dbg !471

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !472
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !473
  %cmp = icmp ult i64 %0, %1, !dbg !474
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !475

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !476
  %3 = load i64, i64* %numWritten, align 8, !dbg !477
  %mul = mul i64 2, %3, !dbg !478
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !476
  %4 = load i32, i32* %arrayidx, align 4, !dbg !476
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !479
  %tobool = icmp ne i32 %call, 0, !dbg !479
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !480

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !481
  %6 = load i64, i64* %numWritten, align 8, !dbg !482
  %mul1 = mul i64 2, %6, !dbg !483
  %add = add i64 %mul1, 1, !dbg !484
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !481
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !481
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !485
  %tobool4 = icmp ne i32 %call3, 0, !dbg !480
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !486
  br i1 %8, label %while.body, label %while.end, !dbg !471

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !487, metadata !DIExpression()), !dbg !489
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !490
  %10 = load i64, i64* %numWritten, align 8, !dbg !491
  %mul5 = mul i64 2, %10, !dbg !492
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !490
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !493
  %11 = load i32, i32* %byte, align 4, !dbg !494
  %conv = trunc i32 %11 to i8, !dbg !495
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !496
  %13 = load i64, i64* %numWritten, align 8, !dbg !497
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !496
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !498
  %14 = load i64, i64* %numWritten, align 8, !dbg !499
  %inc = add i64 %14, 1, !dbg !499
  store i64 %inc, i64* %numWritten, align 8, !dbg !499
  br label %while.cond, !dbg !471, !llvm.loop !500

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !502
  ret i64 %15, !dbg !503
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !504 {
entry:
  ret i32 1, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !508 {
entry:
  ret i32 0, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !510 {
entry:
  %call = call i32 @rand() #9, !dbg !511
  %rem = srem i32 %call, 2, !dbg !512
  ret i32 %rem, !dbg !513
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !514 {
entry:
  ret void, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !516 {
entry:
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !518 {
entry:
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !520 {
entry:
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !522 {
entry:
  ret void, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !524 {
entry:
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !526 {
entry:
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !528 {
entry:
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !530 {
entry:
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !532 {
entry:
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !534 {
entry:
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !536 {
entry:
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !540 {
entry:
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !542 {
entry:
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !544 {
entry:
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !548 {
entry:
  ret void, !dbg !549
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_889/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_889/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badVaSink", scope: !45, file: !45, line: 37, type: !53, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !42, null}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 37, type: !42)
!56 = !DILocation(line: 37, column: 23, scope: !52)
!57 = !DILocalVariable(name: "args", scope: !58, file: !45, line: 40, type: !59)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 39, column: 5)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !60, line: 52, baseType: !61)
!60 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !62, line: 32, baseType: !63)
!62 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !45, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 192, elements: !71)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !66)
!66 = !{!67, !68, !69, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !65, file: !45, line: 40, baseType: !7, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !65, file: !45, line: 40, baseType: !7, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !65, file: !45, line: 40, baseType: !22, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !65, file: !45, line: 40, baseType: !22, size: 64, offset: 128)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DILocation(line: 40, column: 17, scope: !58)
!74 = !DILocation(line: 41, column: 9, scope: !58)
!75 = !DILocation(line: 43, column: 17, scope: !58)
!76 = !DILocation(line: 43, column: 23, scope: !58)
!77 = !DILocation(line: 43, column: 9, scope: !58)
!78 = !DILocation(line: 44, column: 9, scope: !58)
!79 = !DILocation(line: 46, column: 1, scope: !52)
!80 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_bad", scope: !45, file: !45, line: 48, type: !81, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!81 = !DISubroutineType(types: !82)
!82 = !{null}
!83 = !DILocalVariable(name: "data", scope: !80, file: !45, line: 50, type: !42)
!84 = !DILocation(line: 50, column: 12, scope: !80)
!85 = !DILocalVariable(name: "dataBuffer", scope: !80, file: !45, line: 51, type: !86)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 100)
!89 = !DILocation(line: 51, column: 10, scope: !80)
!90 = !DILocation(line: 52, column: 12, scope: !80)
!91 = !DILocation(line: 52, column: 10, scope: !80)
!92 = !DILocalVariable(name: "dataLen", scope: !93, file: !45, line: 55, type: !94)
!93 = distinct !DILexicalBlock(scope: !80, file: !45, line: 53, column: 5)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !DILocation(line: 55, column: 16, scope: !93)
!98 = !DILocation(line: 55, column: 33, scope: !93)
!99 = !DILocation(line: 55, column: 26, scope: !93)
!100 = !DILocalVariable(name: "environment", scope: !93, file: !45, line: 56, type: !42)
!101 = !DILocation(line: 56, column: 16, scope: !93)
!102 = !DILocation(line: 56, column: 30, scope: !93)
!103 = !DILocation(line: 58, column: 13, scope: !104)
!104 = distinct !DILexicalBlock(scope: !93, file: !45, line: 58, column: 13)
!105 = !DILocation(line: 58, column: 25, scope: !104)
!106 = !DILocation(line: 58, column: 13, scope: !93)
!107 = !DILocation(line: 61, column: 21, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !45, line: 59, column: 9)
!109 = !DILocation(line: 61, column: 26, scope: !108)
!110 = !DILocation(line: 61, column: 25, scope: !108)
!111 = !DILocation(line: 61, column: 35, scope: !108)
!112 = !DILocation(line: 61, column: 52, scope: !108)
!113 = !DILocation(line: 61, column: 51, scope: !108)
!114 = !DILocation(line: 61, column: 59, scope: !108)
!115 = !DILocation(line: 61, column: 13, scope: !108)
!116 = !DILocation(line: 62, column: 9, scope: !108)
!117 = !DILocalVariable(name: "dataCopy", scope: !118, file: !45, line: 65, type: !42)
!118 = distinct !DILexicalBlock(scope: !80, file: !45, line: 64, column: 5)
!119 = !DILocation(line: 65, column: 16, scope: !118)
!120 = !DILocation(line: 65, column: 27, scope: !118)
!121 = !DILocalVariable(name: "data", scope: !118, file: !45, line: 66, type: !42)
!122 = !DILocation(line: 66, column: 16, scope: !118)
!123 = !DILocation(line: 66, column: 23, scope: !118)
!124 = !DILocation(line: 67, column: 19, scope: !118)
!125 = !DILocation(line: 67, column: 25, scope: !118)
!126 = !DILocation(line: 67, column: 9, scope: !118)
!127 = !DILocation(line: 69, column: 1, scope: !80)
!128 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !45, file: !45, line: 76, type: !53, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!129 = !DILocalVariable(name: "data", arg: 1, scope: !128, file: !45, line: 76, type: !42)
!130 = !DILocation(line: 76, column: 27, scope: !128)
!131 = !DILocalVariable(name: "args", scope: !132, file: !45, line: 79, type: !59)
!132 = distinct !DILexicalBlock(scope: !128, file: !45, line: 78, column: 5)
!133 = !DILocation(line: 79, column: 17, scope: !132)
!134 = !DILocation(line: 80, column: 9, scope: !132)
!135 = !DILocation(line: 82, column: 17, scope: !132)
!136 = !DILocation(line: 82, column: 23, scope: !132)
!137 = !DILocation(line: 82, column: 9, scope: !132)
!138 = !DILocation(line: 83, column: 9, scope: !132)
!139 = !DILocation(line: 85, column: 1, scope: !128)
!140 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 87, type: !81, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!141 = !DILocalVariable(name: "data", scope: !140, file: !45, line: 89, type: !42)
!142 = !DILocation(line: 89, column: 12, scope: !140)
!143 = !DILocalVariable(name: "myUnion", scope: !140, file: !45, line: 90, type: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_unionType", file: !145, line: 9, baseType: !146)
!145 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_889/source_code")
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !145, line: 5, size: 64, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !146, file: !145, line: 7, baseType: !42, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !146, file: !145, line: 8, baseType: !42, size: 64)
!150 = !DILocation(line: 90, column: 78, scope: !140)
!151 = !DILocalVariable(name: "dataBuffer", scope: !140, file: !45, line: 91, type: !86)
!152 = !DILocation(line: 91, column: 10, scope: !140)
!153 = !DILocation(line: 92, column: 12, scope: !140)
!154 = !DILocation(line: 92, column: 10, scope: !140)
!155 = !DILocation(line: 94, column: 12, scope: !140)
!156 = !DILocation(line: 94, column: 5, scope: !140)
!157 = !DILocation(line: 95, column: 26, scope: !140)
!158 = !DILocation(line: 95, column: 13, scope: !140)
!159 = !DILocation(line: 95, column: 24, scope: !140)
!160 = !DILocalVariable(name: "data", scope: !161, file: !45, line: 97, type: !42)
!161 = distinct !DILexicalBlock(scope: !140, file: !45, line: 96, column: 5)
!162 = !DILocation(line: 97, column: 16, scope: !161)
!163 = !DILocation(line: 97, column: 31, scope: !161)
!164 = !DILocation(line: 98, column: 23, scope: !161)
!165 = !DILocation(line: 98, column: 29, scope: !161)
!166 = !DILocation(line: 98, column: 9, scope: !161)
!167 = !DILocation(line: 100, column: 1, scope: !140)
!168 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !45, file: !45, line: 103, type: !53, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!169 = !DILocalVariable(name: "data", arg: 1, scope: !168, file: !45, line: 103, type: !42)
!170 = !DILocation(line: 103, column: 27, scope: !168)
!171 = !DILocalVariable(name: "args", scope: !172, file: !45, line: 106, type: !59)
!172 = distinct !DILexicalBlock(scope: !168, file: !45, line: 105, column: 5)
!173 = !DILocation(line: 106, column: 17, scope: !172)
!174 = !DILocation(line: 107, column: 9, scope: !172)
!175 = !DILocation(line: 109, column: 23, scope: !172)
!176 = !DILocation(line: 109, column: 9, scope: !172)
!177 = !DILocation(line: 110, column: 9, scope: !172)
!178 = !DILocation(line: 112, column: 1, scope: !168)
!179 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 114, type: !81, scopeLine: 115, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!180 = !DILocalVariable(name: "data", scope: !179, file: !45, line: 116, type: !42)
!181 = !DILocation(line: 116, column: 12, scope: !179)
!182 = !DILocalVariable(name: "myUnion", scope: !179, file: !45, line: 117, type: !144)
!183 = !DILocation(line: 117, column: 78, scope: !179)
!184 = !DILocalVariable(name: "dataBuffer", scope: !179, file: !45, line: 118, type: !86)
!185 = !DILocation(line: 118, column: 10, scope: !179)
!186 = !DILocation(line: 119, column: 12, scope: !179)
!187 = !DILocation(line: 119, column: 10, scope: !179)
!188 = !DILocalVariable(name: "dataLen", scope: !189, file: !45, line: 122, type: !94)
!189 = distinct !DILexicalBlock(scope: !179, file: !45, line: 120, column: 5)
!190 = !DILocation(line: 122, column: 16, scope: !189)
!191 = !DILocation(line: 122, column: 33, scope: !189)
!192 = !DILocation(line: 122, column: 26, scope: !189)
!193 = !DILocalVariable(name: "environment", scope: !189, file: !45, line: 123, type: !42)
!194 = !DILocation(line: 123, column: 16, scope: !189)
!195 = !DILocation(line: 123, column: 30, scope: !189)
!196 = !DILocation(line: 125, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !189, file: !45, line: 125, column: 13)
!198 = !DILocation(line: 125, column: 25, scope: !197)
!199 = !DILocation(line: 125, column: 13, scope: !189)
!200 = !DILocation(line: 128, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !45, line: 126, column: 9)
!202 = !DILocation(line: 128, column: 26, scope: !201)
!203 = !DILocation(line: 128, column: 25, scope: !201)
!204 = !DILocation(line: 128, column: 35, scope: !201)
!205 = !DILocation(line: 128, column: 52, scope: !201)
!206 = !DILocation(line: 128, column: 51, scope: !201)
!207 = !DILocation(line: 128, column: 59, scope: !201)
!208 = !DILocation(line: 128, column: 13, scope: !201)
!209 = !DILocation(line: 129, column: 9, scope: !201)
!210 = !DILocation(line: 131, column: 26, scope: !179)
!211 = !DILocation(line: 131, column: 13, scope: !179)
!212 = !DILocation(line: 131, column: 24, scope: !179)
!213 = !DILocalVariable(name: "data", scope: !214, file: !45, line: 133, type: !42)
!214 = distinct !DILexicalBlock(scope: !179, file: !45, line: 132, column: 5)
!215 = !DILocation(line: 133, column: 16, scope: !214)
!216 = !DILocation(line: 133, column: 31, scope: !214)
!217 = !DILocation(line: 134, column: 23, scope: !214)
!218 = !DILocation(line: 134, column: 29, scope: !214)
!219 = !DILocation(line: 134, column: 9, scope: !214)
!220 = !DILocation(line: 136, column: 1, scope: !179)
!221 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_good", scope: !45, file: !45, line: 138, type: !81, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!222 = !DILocation(line: 140, column: 5, scope: !221)
!223 = !DILocation(line: 141, column: 5, scope: !221)
!224 = !DILocation(line: 142, column: 1, scope: !221)
!225 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !226, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !42}
!228 = !DILocalVariable(name: "line", arg: 1, scope: !225, file: !3, line: 11, type: !42)
!229 = !DILocation(line: 11, column: 25, scope: !225)
!230 = !DILocation(line: 13, column: 1, scope: !225)
!231 = !DILocation(line: 14, column: 8, scope: !232)
!232 = distinct !DILexicalBlock(scope: !225, file: !3, line: 14, column: 8)
!233 = !DILocation(line: 14, column: 13, scope: !232)
!234 = !DILocation(line: 14, column: 8, scope: !225)
!235 = !DILocation(line: 16, column: 24, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !3, line: 15, column: 5)
!237 = !DILocation(line: 16, column: 9, scope: !236)
!238 = !DILocation(line: 17, column: 5, scope: !236)
!239 = !DILocation(line: 18, column: 5, scope: !225)
!240 = !DILocation(line: 19, column: 1, scope: !225)
!241 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !226, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!242 = !DILocalVariable(name: "line", arg: 1, scope: !241, file: !3, line: 20, type: !42)
!243 = !DILocation(line: 20, column: 29, scope: !241)
!244 = !DILocation(line: 22, column: 8, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !3, line: 22, column: 8)
!246 = !DILocation(line: 22, column: 13, scope: !245)
!247 = !DILocation(line: 22, column: 8, scope: !241)
!248 = !DILocation(line: 24, column: 24, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !3, line: 23, column: 5)
!250 = !DILocation(line: 24, column: 9, scope: !249)
!251 = !DILocation(line: 25, column: 5, scope: !249)
!252 = !DILocation(line: 26, column: 1, scope: !241)
!253 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !254, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 74, baseType: !23)
!258 = !DILocalVariable(name: "line", arg: 1, scope: !253, file: !3, line: 27, type: !256)
!259 = !DILocation(line: 27, column: 29, scope: !253)
!260 = !DILocation(line: 29, column: 8, scope: !261)
!261 = distinct !DILexicalBlock(scope: !253, file: !3, line: 29, column: 8)
!262 = !DILocation(line: 29, column: 13, scope: !261)
!263 = !DILocation(line: 29, column: 8, scope: !253)
!264 = !DILocation(line: 31, column: 27, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !3, line: 30, column: 5)
!266 = !DILocation(line: 31, column: 9, scope: !265)
!267 = !DILocation(line: 32, column: 5, scope: !265)
!268 = !DILocation(line: 33, column: 1, scope: !253)
!269 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !270, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !23}
!272 = !DILocalVariable(name: "intNumber", arg: 1, scope: !269, file: !3, line: 35, type: !23)
!273 = !DILocation(line: 35, column: 24, scope: !269)
!274 = !DILocation(line: 37, column: 20, scope: !269)
!275 = !DILocation(line: 37, column: 5, scope: !269)
!276 = !DILocation(line: 38, column: 1, scope: !269)
!277 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !278, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !280}
!280 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!281 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !277, file: !3, line: 40, type: !280)
!282 = !DILocation(line: 40, column: 28, scope: !277)
!283 = !DILocation(line: 42, column: 21, scope: !277)
!284 = !DILocation(line: 42, column: 5, scope: !277)
!285 = !DILocation(line: 43, column: 1, scope: !277)
!286 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !287, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289}
!289 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!290 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !286, file: !3, line: 45, type: !289)
!291 = !DILocation(line: 45, column: 28, scope: !286)
!292 = !DILocation(line: 47, column: 20, scope: !286)
!293 = !DILocation(line: 47, column: 5, scope: !286)
!294 = !DILocation(line: 48, column: 1, scope: !286)
!295 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !296, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298}
!298 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!299 = !DILocalVariable(name: "longNumber", arg: 1, scope: !295, file: !3, line: 50, type: !298)
!300 = !DILocation(line: 50, column: 26, scope: !295)
!301 = !DILocation(line: 52, column: 21, scope: !295)
!302 = !DILocation(line: 52, column: 5, scope: !295)
!303 = !DILocation(line: 53, column: 1, scope: !295)
!304 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !305, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !307}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !308, line: 27, baseType: !309)
!308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !310, line: 44, baseType: !298)
!310 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!311 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !304, file: !3, line: 55, type: !307)
!312 = !DILocation(line: 55, column: 33, scope: !304)
!313 = !DILocation(line: 57, column: 29, scope: !304)
!314 = !DILocation(line: 57, column: 5, scope: !304)
!315 = !DILocation(line: 58, column: 1, scope: !304)
!316 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !317, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !94}
!319 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !316, file: !3, line: 60, type: !94)
!320 = !DILocation(line: 60, column: 29, scope: !316)
!321 = !DILocation(line: 62, column: 21, scope: !316)
!322 = !DILocation(line: 62, column: 5, scope: !316)
!323 = !DILocation(line: 63, column: 1, scope: !316)
!324 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !325, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !43}
!327 = !DILocalVariable(name: "charHex", arg: 1, scope: !324, file: !3, line: 65, type: !43)
!328 = !DILocation(line: 65, column: 29, scope: !324)
!329 = !DILocation(line: 67, column: 22, scope: !324)
!330 = !DILocation(line: 67, column: 5, scope: !324)
!331 = !DILocation(line: 68, column: 1, scope: !324)
!332 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !333, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !257}
!335 = !DILocalVariable(name: "wideChar", arg: 1, scope: !332, file: !3, line: 70, type: !257)
!336 = !DILocation(line: 70, column: 29, scope: !332)
!337 = !DILocalVariable(name: "s", scope: !332, file: !3, line: 74, type: !338)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 64, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 2)
!341 = !DILocation(line: 74, column: 13, scope: !332)
!342 = !DILocation(line: 75, column: 16, scope: !332)
!343 = !DILocation(line: 75, column: 9, scope: !332)
!344 = !DILocation(line: 75, column: 14, scope: !332)
!345 = !DILocation(line: 76, column: 9, scope: !332)
!346 = !DILocation(line: 76, column: 14, scope: !332)
!347 = !DILocation(line: 77, column: 21, scope: !332)
!348 = !DILocation(line: 77, column: 5, scope: !332)
!349 = !DILocation(line: 78, column: 1, scope: !332)
!350 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !351, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !7}
!353 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !350, file: !3, line: 80, type: !7)
!354 = !DILocation(line: 80, column: 33, scope: !350)
!355 = !DILocation(line: 82, column: 20, scope: !350)
!356 = !DILocation(line: 82, column: 5, scope: !350)
!357 = !DILocation(line: 83, column: 1, scope: !350)
!358 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !359, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !25}
!361 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !358, file: !3, line: 85, type: !25)
!362 = !DILocation(line: 85, column: 45, scope: !358)
!363 = !DILocation(line: 87, column: 22, scope: !358)
!364 = !DILocation(line: 87, column: 5, scope: !358)
!365 = !DILocation(line: 88, column: 1, scope: !358)
!366 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !367, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !369}
!369 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!370 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !366, file: !3, line: 90, type: !369)
!371 = !DILocation(line: 90, column: 29, scope: !366)
!372 = !DILocation(line: 92, column: 20, scope: !366)
!373 = !DILocation(line: 92, column: 5, scope: !366)
!374 = !DILocation(line: 93, column: 1, scope: !366)
!375 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !376, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !380, line: 100, baseType: !381)
!380 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_889/source_code")
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !380, line: 96, size: 64, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !381, file: !380, line: 98, baseType: !23, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !381, file: !380, line: 99, baseType: !23, size: 32, offset: 32)
!385 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !375, file: !3, line: 95, type: !378)
!386 = !DILocation(line: 95, column: 40, scope: !375)
!387 = !DILocation(line: 97, column: 26, scope: !375)
!388 = !DILocation(line: 97, column: 47, scope: !375)
!389 = !DILocation(line: 97, column: 55, scope: !375)
!390 = !DILocation(line: 97, column: 76, scope: !375)
!391 = !DILocation(line: 97, column: 5, scope: !375)
!392 = !DILocation(line: 98, column: 1, scope: !375)
!393 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !394, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !396, !94}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!397 = !DILocalVariable(name: "bytes", arg: 1, scope: !393, file: !3, line: 100, type: !396)
!398 = !DILocation(line: 100, column: 38, scope: !393)
!399 = !DILocalVariable(name: "numBytes", arg: 2, scope: !393, file: !3, line: 100, type: !94)
!400 = !DILocation(line: 100, column: 52, scope: !393)
!401 = !DILocalVariable(name: "i", scope: !393, file: !3, line: 102, type: !94)
!402 = !DILocation(line: 102, column: 12, scope: !393)
!403 = !DILocation(line: 103, column: 12, scope: !404)
!404 = distinct !DILexicalBlock(scope: !393, file: !3, line: 103, column: 5)
!405 = !DILocation(line: 103, column: 10, scope: !404)
!406 = !DILocation(line: 103, column: 17, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !3, line: 103, column: 5)
!408 = !DILocation(line: 103, column: 21, scope: !407)
!409 = !DILocation(line: 103, column: 19, scope: !407)
!410 = !DILocation(line: 103, column: 5, scope: !404)
!411 = !DILocation(line: 105, column: 24, scope: !412)
!412 = distinct !DILexicalBlock(scope: !407, file: !3, line: 104, column: 5)
!413 = !DILocation(line: 105, column: 30, scope: !412)
!414 = !DILocation(line: 105, column: 9, scope: !412)
!415 = !DILocation(line: 106, column: 5, scope: !412)
!416 = !DILocation(line: 103, column: 31, scope: !407)
!417 = !DILocation(line: 103, column: 5, scope: !407)
!418 = distinct !{!418, !410, !419, !420}
!419 = !DILocation(line: 106, column: 5, scope: !404)
!420 = !{!"llvm.loop.mustprogress"}
!421 = !DILocation(line: 107, column: 5, scope: !393)
!422 = !DILocation(line: 108, column: 1, scope: !393)
!423 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !424, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!424 = !DISubroutineType(types: !425)
!425 = !{!94, !396, !94, !42}
!426 = !DILocalVariable(name: "bytes", arg: 1, scope: !423, file: !3, line: 113, type: !396)
!427 = !DILocation(line: 113, column: 39, scope: !423)
!428 = !DILocalVariable(name: "numBytes", arg: 2, scope: !423, file: !3, line: 113, type: !94)
!429 = !DILocation(line: 113, column: 53, scope: !423)
!430 = !DILocalVariable(name: "hex", arg: 3, scope: !423, file: !3, line: 113, type: !42)
!431 = !DILocation(line: 113, column: 71, scope: !423)
!432 = !DILocalVariable(name: "numWritten", scope: !423, file: !3, line: 115, type: !94)
!433 = !DILocation(line: 115, column: 12, scope: !423)
!434 = !DILocation(line: 121, column: 5, scope: !423)
!435 = !DILocation(line: 121, column: 12, scope: !423)
!436 = !DILocation(line: 121, column: 25, scope: !423)
!437 = !DILocation(line: 121, column: 23, scope: !423)
!438 = !DILocation(line: 121, column: 34, scope: !423)
!439 = !DILocation(line: 121, column: 37, scope: !423)
!440 = !DILocation(line: 121, column: 67, scope: !423)
!441 = !DILocation(line: 121, column: 70, scope: !423)
!442 = !DILocation(line: 0, scope: !423)
!443 = !DILocalVariable(name: "byte", scope: !444, file: !3, line: 123, type: !23)
!444 = distinct !DILexicalBlock(scope: !423, file: !3, line: 122, column: 5)
!445 = !DILocation(line: 123, column: 13, scope: !444)
!446 = !DILocation(line: 124, column: 17, scope: !444)
!447 = !DILocation(line: 124, column: 25, scope: !444)
!448 = !DILocation(line: 124, column: 23, scope: !444)
!449 = !DILocation(line: 124, column: 9, scope: !444)
!450 = !DILocation(line: 125, column: 45, scope: !444)
!451 = !DILocation(line: 125, column: 29, scope: !444)
!452 = !DILocation(line: 125, column: 9, scope: !444)
!453 = !DILocation(line: 125, column: 15, scope: !444)
!454 = !DILocation(line: 125, column: 27, scope: !444)
!455 = !DILocation(line: 126, column: 9, scope: !444)
!456 = distinct !{!456, !434, !457, !420}
!457 = !DILocation(line: 127, column: 5, scope: !423)
!458 = !DILocation(line: 129, column: 12, scope: !423)
!459 = !DILocation(line: 129, column: 5, scope: !423)
!460 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !461, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DISubroutineType(types: !462)
!462 = !{!94, !396, !94, !256}
!463 = !DILocalVariable(name: "bytes", arg: 1, scope: !460, file: !3, line: 135, type: !396)
!464 = !DILocation(line: 135, column: 41, scope: !460)
!465 = !DILocalVariable(name: "numBytes", arg: 2, scope: !460, file: !3, line: 135, type: !94)
!466 = !DILocation(line: 135, column: 55, scope: !460)
!467 = !DILocalVariable(name: "hex", arg: 3, scope: !460, file: !3, line: 135, type: !256)
!468 = !DILocation(line: 135, column: 76, scope: !460)
!469 = !DILocalVariable(name: "numWritten", scope: !460, file: !3, line: 137, type: !94)
!470 = !DILocation(line: 137, column: 12, scope: !460)
!471 = !DILocation(line: 143, column: 5, scope: !460)
!472 = !DILocation(line: 143, column: 12, scope: !460)
!473 = !DILocation(line: 143, column: 25, scope: !460)
!474 = !DILocation(line: 143, column: 23, scope: !460)
!475 = !DILocation(line: 143, column: 34, scope: !460)
!476 = !DILocation(line: 143, column: 47, scope: !460)
!477 = !DILocation(line: 143, column: 55, scope: !460)
!478 = !DILocation(line: 143, column: 53, scope: !460)
!479 = !DILocation(line: 143, column: 37, scope: !460)
!480 = !DILocation(line: 143, column: 68, scope: !460)
!481 = !DILocation(line: 143, column: 81, scope: !460)
!482 = !DILocation(line: 143, column: 89, scope: !460)
!483 = !DILocation(line: 143, column: 87, scope: !460)
!484 = !DILocation(line: 143, column: 100, scope: !460)
!485 = !DILocation(line: 143, column: 71, scope: !460)
!486 = !DILocation(line: 0, scope: !460)
!487 = !DILocalVariable(name: "byte", scope: !488, file: !3, line: 145, type: !23)
!488 = distinct !DILexicalBlock(scope: !460, file: !3, line: 144, column: 5)
!489 = !DILocation(line: 145, column: 13, scope: !488)
!490 = !DILocation(line: 146, column: 18, scope: !488)
!491 = !DILocation(line: 146, column: 26, scope: !488)
!492 = !DILocation(line: 146, column: 24, scope: !488)
!493 = !DILocation(line: 146, column: 9, scope: !488)
!494 = !DILocation(line: 147, column: 45, scope: !488)
!495 = !DILocation(line: 147, column: 29, scope: !488)
!496 = !DILocation(line: 147, column: 9, scope: !488)
!497 = !DILocation(line: 147, column: 15, scope: !488)
!498 = !DILocation(line: 147, column: 27, scope: !488)
!499 = !DILocation(line: 148, column: 9, scope: !488)
!500 = distinct !{!500, !471, !501, !420}
!501 = !DILocation(line: 149, column: 5, scope: !460)
!502 = !DILocation(line: 151, column: 12, scope: !460)
!503 = !DILocation(line: 151, column: 5, scope: !460)
!504 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !505, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DISubroutineType(types: !506)
!506 = !{!23}
!507 = !DILocation(line: 158, column: 5, scope: !504)
!508 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !505, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!509 = !DILocation(line: 163, column: 5, scope: !508)
!510 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !505, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!511 = !DILocation(line: 168, column: 13, scope: !510)
!512 = !DILocation(line: 168, column: 20, scope: !510)
!513 = !DILocation(line: 168, column: 5, scope: !510)
!514 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !81, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DILocation(line: 187, column: 16, scope: !514)
!516 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !81, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DILocation(line: 188, column: 16, scope: !516)
!518 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !81, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DILocation(line: 189, column: 16, scope: !518)
!520 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !81, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DILocation(line: 190, column: 16, scope: !520)
!522 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !81, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!523 = !DILocation(line: 191, column: 16, scope: !522)
!524 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !81, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!525 = !DILocation(line: 192, column: 16, scope: !524)
!526 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !81, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DILocation(line: 193, column: 16, scope: !526)
!528 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !81, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DILocation(line: 194, column: 16, scope: !528)
!530 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !81, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!531 = !DILocation(line: 195, column: 16, scope: !530)
!532 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !81, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DILocation(line: 198, column: 15, scope: !532)
!534 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !81, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DILocation(line: 199, column: 15, scope: !534)
!536 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !81, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DILocation(line: 200, column: 15, scope: !536)
!538 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !81, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DILocation(line: 201, column: 15, scope: !538)
!540 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !81, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DILocation(line: 202, column: 15, scope: !540)
!542 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !81, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DILocation(line: 203, column: 15, scope: !542)
!544 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !81, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DILocation(line: 204, column: 15, scope: !544)
!546 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !81, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 205, column: 15, scope: !546)
!548 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !81, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DILocation(line: 206, column: 15, scope: !548)
