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
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad() #0 !dbg !80 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %data5 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !85, metadata !DIExpression()), !dbg !86
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !87, metadata !DIExpression()), !dbg !88
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !88
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !89, metadata !DIExpression()), !dbg !93
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !93
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !93
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !94
  store i8* %arraydecay, i8** %data, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !96, metadata !DIExpression()), !dbg !98
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !99
  %2 = load i8*, i8** %1, align 8, !dbg !100
  store i8* %2, i8** %data1, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !101, metadata !DIExpression()), !dbg !106
  %3 = load i8*, i8** %data1, align 8, !dbg !107
  %call = call i64 @strlen(i8* %3) #8, !dbg !108
  store i64 %call, i64* %dataLen, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !109, metadata !DIExpression()), !dbg !110
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9, !dbg !111
  store i8* %call2, i8** %environment, align 8, !dbg !110
  %4 = load i8*, i8** %environment, align 8, !dbg !112
  %cmp = icmp ne i8* %4, null, !dbg !114
  br i1 %cmp, label %if.then, label %if.end, !dbg !115

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !116
  %6 = load i64, i64* %dataLen, align 8, !dbg !118
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !119
  %7 = load i8*, i8** %environment, align 8, !dbg !120
  %8 = load i64, i64* %dataLen, align 8, !dbg !121
  %sub = sub i64 100, %8, !dbg !122
  %sub3 = sub i64 %sub, 1, !dbg !123
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %7, i64 %sub3) #9, !dbg !124
  br label %if.end, !dbg !125

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %data1, align 8, !dbg !126
  %10 = load i8**, i8*** %dataPtr1, align 8, !dbg !127
  store i8* %9, i8** %10, align 8, !dbg !128
  call void @llvm.dbg.declare(metadata i8** %data5, metadata !129, metadata !DIExpression()), !dbg !131
  %11 = load i8**, i8*** %dataPtr2, align 8, !dbg !132
  %12 = load i8*, i8** %11, align 8, !dbg !133
  store i8* %12, i8** %data5, align 8, !dbg !131
  %13 = load i8*, i8** %data5, align 8, !dbg !134
  %14 = load i8*, i8** %data5, align 8, !dbg !135
  call void (i8*, ...) @badVaSink(i8* %13, i8* %14), !dbg !136
  ret void, !dbg !137
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
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !138 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !141, metadata !DIExpression()), !dbg !143
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !144
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !144
  call void @llvm.va_start(i8* %arraydecay1), !dbg !144
  %0 = load i8*, i8** %data.addr, align 8, !dbg !145
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !146
  %call = call i32 @vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2), !dbg !147
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !148
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !148
  call void @llvm.va_end(i8* %arraydecay34), !dbg !148
  ret void, !dbg !149
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !150 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !153, metadata !DIExpression()), !dbg !154
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !154
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !155, metadata !DIExpression()), !dbg !156
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !158
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !158
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !159
  store i8* %arraydecay, i8** %data, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !161, metadata !DIExpression()), !dbg !163
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !164
  %2 = load i8*, i8** %1, align 8, !dbg !165
  store i8* %2, i8** %data1, align 8, !dbg !163
  %3 = load i8*, i8** %data1, align 8, !dbg !166
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !167
  %4 = load i8*, i8** %data1, align 8, !dbg !168
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !169
  store i8* %4, i8** %5, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !171, metadata !DIExpression()), !dbg !173
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !174
  %7 = load i8*, i8** %6, align 8, !dbg !175
  store i8* %7, i8** %data2, align 8, !dbg !173
  %8 = load i8*, i8** %data2, align 8, !dbg !176
  %9 = load i8*, i8** %data2, align 8, !dbg !177
  call void (i8*, ...) @goodG2BVaSink(i8* %8, i8* %9), !dbg !178
  ret void, !dbg !179
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GVaSink(i8* %data, ...) #0 !dbg !180 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !183, metadata !DIExpression()), !dbg !185
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !186
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !186
  call void @llvm.va_start(i8* %arraydecay1), !dbg !186
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !187
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !188
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !189
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !189
  call void @llvm.va_end(i8* %arraydecay34), !dbg !189
  ret void, !dbg !190
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !191 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %data5 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !194, metadata !DIExpression()), !dbg !195
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !196, metadata !DIExpression()), !dbg !197
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !198, metadata !DIExpression()), !dbg !199
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !199
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !199
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !200
  store i8* %arraydecay, i8** %data, align 8, !dbg !201
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !202, metadata !DIExpression()), !dbg !204
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !205
  %2 = load i8*, i8** %1, align 8, !dbg !206
  store i8* %2, i8** %data1, align 8, !dbg !204
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !207, metadata !DIExpression()), !dbg !209
  %3 = load i8*, i8** %data1, align 8, !dbg !210
  %call = call i64 @strlen(i8* %3) #8, !dbg !211
  store i64 %call, i64* %dataLen, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !212, metadata !DIExpression()), !dbg !213
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9, !dbg !214
  store i8* %call2, i8** %environment, align 8, !dbg !213
  %4 = load i8*, i8** %environment, align 8, !dbg !215
  %cmp = icmp ne i8* %4, null, !dbg !217
  br i1 %cmp, label %if.then, label %if.end, !dbg !218

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !219
  %6 = load i64, i64* %dataLen, align 8, !dbg !221
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !222
  %7 = load i8*, i8** %environment, align 8, !dbg !223
  %8 = load i64, i64* %dataLen, align 8, !dbg !224
  %sub = sub i64 100, %8, !dbg !225
  %sub3 = sub i64 %sub, 1, !dbg !226
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %7, i64 %sub3) #9, !dbg !227
  br label %if.end, !dbg !228

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %data1, align 8, !dbg !229
  %10 = load i8**, i8*** %dataPtr1, align 8, !dbg !230
  store i8* %9, i8** %10, align 8, !dbg !231
  call void @llvm.dbg.declare(metadata i8** %data5, metadata !232, metadata !DIExpression()), !dbg !234
  %11 = load i8**, i8*** %dataPtr2, align 8, !dbg !235
  %12 = load i8*, i8** %11, align 8, !dbg !236
  store i8* %12, i8** %data5, align 8, !dbg !234
  %13 = load i8*, i8** %data5, align 8, !dbg !237
  %14 = load i8*, i8** %data5, align 8, !dbg !238
  call void (i8*, ...) @goodB2GVaSink(i8* %13, i8* %14), !dbg !239
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_good() #0 !dbg !241 {
entry:
  call void @goodG2B(), !dbg !242
  call void @goodB2G(), !dbg !243
  ret void, !dbg !244
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !245 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !248, metadata !DIExpression()), !dbg !249
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !250
  %0 = load i8*, i8** %line.addr, align 8, !dbg !251
  %cmp = icmp ne i8* %0, null, !dbg !253
  br i1 %cmp, label %if.then, label %if.end, !dbg !254

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !255
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !257
  br label %if.end, !dbg !258

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !259
  ret void, !dbg !260
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !261 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !262, metadata !DIExpression()), !dbg !263
  %0 = load i8*, i8** %line.addr, align 8, !dbg !264
  %cmp = icmp ne i8* %0, null, !dbg !266
  br i1 %cmp, label %if.then, label %if.end, !dbg !267

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !268
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !270
  br label %if.end, !dbg !271

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !273 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = load i32*, i32** %line.addr, align 8, !dbg !280
  %cmp = icmp ne i32* %0, null, !dbg !282
  br i1 %cmp, label %if.then, label %if.end, !dbg !283

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !284
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !286
  br label %if.end, !dbg !287

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !288
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !289 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !292, metadata !DIExpression()), !dbg !293
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !294
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !295
  ret void, !dbg !296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !297 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !301, metadata !DIExpression()), !dbg !302
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !303
  %conv = sext i16 %0 to i32, !dbg !303
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !304
  ret void, !dbg !305
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !306 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !310, metadata !DIExpression()), !dbg !311
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !312
  %conv = fpext float %0 to double, !dbg !312
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !313
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !315 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !321
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !324 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !333
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !336 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !341
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !344 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !347, metadata !DIExpression()), !dbg !348
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !349
  %conv = sext i8 %0 to i32, !dbg !349
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !350
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !352 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !357, metadata !DIExpression()), !dbg !361
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !362
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !363
  store i32 %0, i32* %arrayidx, align 4, !dbg !364
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !365
  store i32 0, i32* %arrayidx1, align 4, !dbg !366
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !367
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !368
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !370 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !373, metadata !DIExpression()), !dbg !374
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !375
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !376
  ret void, !dbg !377
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !378 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !381, metadata !DIExpression()), !dbg !382
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !383
  %conv = zext i8 %0 to i32, !dbg !383
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !384
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !386 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !393
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !395 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !405, metadata !DIExpression()), !dbg !406
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !407
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !408
  %1 = load i32, i32* %intOne, align 4, !dbg !408
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !409
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !410
  %3 = load i32, i32* %intTwo, align 4, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !413 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !417, metadata !DIExpression()), !dbg !418
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata i64* %i, metadata !421, metadata !DIExpression()), !dbg !422
  store i64 0, i64* %i, align 8, !dbg !423
  br label %for.cond, !dbg !425

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !426
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !428
  %cmp = icmp ult i64 %0, %1, !dbg !429
  br i1 %cmp, label %for.body, label %for.end, !dbg !430

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !431
  %3 = load i64, i64* %i, align 8, !dbg !433
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !431
  %4 = load i8, i8* %arrayidx, align 1, !dbg !431
  %conv = zext i8 %4 to i32, !dbg !431
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !434
  br label %for.inc, !dbg !435

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !436
  %inc = add i64 %5, 1, !dbg !436
  store i64 %inc, i64* %i, align 8, !dbg !436
  br label %for.cond, !dbg !437, !llvm.loop !438

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !441
  ret void, !dbg !442
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !443 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !446, metadata !DIExpression()), !dbg !447
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !448, metadata !DIExpression()), !dbg !449
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !450, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !452, metadata !DIExpression()), !dbg !453
  store i64 0, i64* %numWritten, align 8, !dbg !453
  br label %while.cond, !dbg !454

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !455
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !456
  %cmp = icmp ult i64 %0, %1, !dbg !457
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !458

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !459
  %2 = load i16*, i16** %call, align 8, !dbg !459
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !459
  %4 = load i64, i64* %numWritten, align 8, !dbg !459
  %mul = mul i64 2, %4, !dbg !459
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !459
  %5 = load i8, i8* %arrayidx, align 1, !dbg !459
  %conv = sext i8 %5 to i32, !dbg !459
  %idxprom = sext i32 %conv to i64, !dbg !459
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !459
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !459
  %conv2 = zext i16 %6 to i32, !dbg !459
  %and = and i32 %conv2, 4096, !dbg !459
  %tobool = icmp ne i32 %and, 0, !dbg !459
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !460

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !461
  %7 = load i16*, i16** %call3, align 8, !dbg !461
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !461
  %9 = load i64, i64* %numWritten, align 8, !dbg !461
  %mul4 = mul i64 2, %9, !dbg !461
  %add = add i64 %mul4, 1, !dbg !461
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !461
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !461
  %conv6 = sext i8 %10 to i32, !dbg !461
  %idxprom7 = sext i32 %conv6 to i64, !dbg !461
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !461
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !461
  %conv9 = zext i16 %11 to i32, !dbg !461
  %and10 = and i32 %conv9, 4096, !dbg !461
  %tobool11 = icmp ne i32 %and10, 0, !dbg !460
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !462
  br i1 %12, label %while.body, label %while.end, !dbg !454

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !463, metadata !DIExpression()), !dbg !465
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !466
  %14 = load i64, i64* %numWritten, align 8, !dbg !467
  %mul12 = mul i64 2, %14, !dbg !468
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !466
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !469
  %15 = load i32, i32* %byte, align 4, !dbg !470
  %conv15 = trunc i32 %15 to i8, !dbg !471
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !472
  %17 = load i64, i64* %numWritten, align 8, !dbg !473
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !472
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !474
  %18 = load i64, i64* %numWritten, align 8, !dbg !475
  %inc = add i64 %18, 1, !dbg !475
  store i64 %inc, i64* %numWritten, align 8, !dbg !475
  br label %while.cond, !dbg !454, !llvm.loop !476

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !478
  ret i64 %19, !dbg !479
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !480 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !483, metadata !DIExpression()), !dbg !484
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !485, metadata !DIExpression()), !dbg !486
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !487, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !489, metadata !DIExpression()), !dbg !490
  store i64 0, i64* %numWritten, align 8, !dbg !490
  br label %while.cond, !dbg !491

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !492
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !493
  %cmp = icmp ult i64 %0, %1, !dbg !494
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !495

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !496
  %3 = load i64, i64* %numWritten, align 8, !dbg !497
  %mul = mul i64 2, %3, !dbg !498
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !496
  %4 = load i32, i32* %arrayidx, align 4, !dbg !496
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !499
  %tobool = icmp ne i32 %call, 0, !dbg !499
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !500

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !501
  %6 = load i64, i64* %numWritten, align 8, !dbg !502
  %mul1 = mul i64 2, %6, !dbg !503
  %add = add i64 %mul1, 1, !dbg !504
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !501
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !501
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !505
  %tobool4 = icmp ne i32 %call3, 0, !dbg !500
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !506
  br i1 %8, label %while.body, label %while.end, !dbg !491

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !507, metadata !DIExpression()), !dbg !509
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !510
  %10 = load i64, i64* %numWritten, align 8, !dbg !511
  %mul5 = mul i64 2, %10, !dbg !512
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !510
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !513
  %11 = load i32, i32* %byte, align 4, !dbg !514
  %conv = trunc i32 %11 to i8, !dbg !515
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !516
  %13 = load i64, i64* %numWritten, align 8, !dbg !517
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !516
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !518
  %14 = load i64, i64* %numWritten, align 8, !dbg !519
  %inc = add i64 %14, 1, !dbg !519
  store i64 %inc, i64* %numWritten, align 8, !dbg !519
  br label %while.cond, !dbg !491, !llvm.loop !520

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !522
  ret i64 %15, !dbg !523
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !524 {
entry:
  ret i32 1, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !528 {
entry:
  ret i32 0, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !530 {
entry:
  %call = call i32 @rand() #9, !dbg !531
  %rem = srem i32 %call, 2, !dbg !532
  ret i32 %rem, !dbg !533
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !534 {
entry:
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !536 {
entry:
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !540 {
entry:
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !542 {
entry:
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !544 {
entry:
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !548 {
entry:
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !568 {
entry:
  ret void, !dbg !569
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_887/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_887/source_code")
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
!80 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad", scope: !45, file: !45, line: 47, type: !81, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!81 = !DISubroutineType(types: !82)
!82 = !{null}
!83 = !DILocalVariable(name: "data", scope: !80, file: !45, line: 49, type: !42)
!84 = !DILocation(line: 49, column: 12, scope: !80)
!85 = !DILocalVariable(name: "dataPtr1", scope: !80, file: !45, line: 50, type: !41)
!86 = !DILocation(line: 50, column: 13, scope: !80)
!87 = !DILocalVariable(name: "dataPtr2", scope: !80, file: !45, line: 51, type: !41)
!88 = !DILocation(line: 51, column: 13, scope: !80)
!89 = !DILocalVariable(name: "dataBuffer", scope: !80, file: !45, line: 52, type: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 100)
!93 = !DILocation(line: 52, column: 10, scope: !80)
!94 = !DILocation(line: 53, column: 12, scope: !80)
!95 = !DILocation(line: 53, column: 10, scope: !80)
!96 = !DILocalVariable(name: "data", scope: !97, file: !45, line: 55, type: !42)
!97 = distinct !DILexicalBlock(scope: !80, file: !45, line: 54, column: 5)
!98 = !DILocation(line: 55, column: 16, scope: !97)
!99 = !DILocation(line: 55, column: 24, scope: !97)
!100 = !DILocation(line: 55, column: 23, scope: !97)
!101 = !DILocalVariable(name: "dataLen", scope: !102, file: !45, line: 58, type: !103)
!102 = distinct !DILexicalBlock(scope: !97, file: !45, line: 56, column: 9)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 46, baseType: !105)
!104 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!105 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!106 = !DILocation(line: 58, column: 20, scope: !102)
!107 = !DILocation(line: 58, column: 37, scope: !102)
!108 = !DILocation(line: 58, column: 30, scope: !102)
!109 = !DILocalVariable(name: "environment", scope: !102, file: !45, line: 59, type: !42)
!110 = !DILocation(line: 59, column: 20, scope: !102)
!111 = !DILocation(line: 59, column: 34, scope: !102)
!112 = !DILocation(line: 61, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !102, file: !45, line: 61, column: 17)
!114 = !DILocation(line: 61, column: 29, scope: !113)
!115 = !DILocation(line: 61, column: 17, scope: !102)
!116 = !DILocation(line: 64, column: 25, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !45, line: 62, column: 13)
!118 = !DILocation(line: 64, column: 30, scope: !117)
!119 = !DILocation(line: 64, column: 29, scope: !117)
!120 = !DILocation(line: 64, column: 39, scope: !117)
!121 = !DILocation(line: 64, column: 56, scope: !117)
!122 = !DILocation(line: 64, column: 55, scope: !117)
!123 = !DILocation(line: 64, column: 63, scope: !117)
!124 = !DILocation(line: 64, column: 17, scope: !117)
!125 = !DILocation(line: 65, column: 13, scope: !117)
!126 = !DILocation(line: 67, column: 21, scope: !97)
!127 = !DILocation(line: 67, column: 10, scope: !97)
!128 = !DILocation(line: 67, column: 19, scope: !97)
!129 = !DILocalVariable(name: "data", scope: !130, file: !45, line: 70, type: !42)
!130 = distinct !DILexicalBlock(scope: !80, file: !45, line: 69, column: 5)
!131 = !DILocation(line: 70, column: 16, scope: !130)
!132 = !DILocation(line: 70, column: 24, scope: !130)
!133 = !DILocation(line: 70, column: 23, scope: !130)
!134 = !DILocation(line: 71, column: 19, scope: !130)
!135 = !DILocation(line: 71, column: 25, scope: !130)
!136 = !DILocation(line: 71, column: 9, scope: !130)
!137 = !DILocation(line: 73, column: 1, scope: !80)
!138 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !45, file: !45, line: 80, type: !53, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!139 = !DILocalVariable(name: "data", arg: 1, scope: !138, file: !45, line: 80, type: !42)
!140 = !DILocation(line: 80, column: 27, scope: !138)
!141 = !DILocalVariable(name: "args", scope: !142, file: !45, line: 83, type: !59)
!142 = distinct !DILexicalBlock(scope: !138, file: !45, line: 82, column: 5)
!143 = !DILocation(line: 83, column: 17, scope: !142)
!144 = !DILocation(line: 84, column: 9, scope: !142)
!145 = !DILocation(line: 86, column: 17, scope: !142)
!146 = !DILocation(line: 86, column: 23, scope: !142)
!147 = !DILocation(line: 86, column: 9, scope: !142)
!148 = !DILocation(line: 87, column: 9, scope: !142)
!149 = !DILocation(line: 89, column: 1, scope: !138)
!150 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 91, type: !81, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!151 = !DILocalVariable(name: "data", scope: !150, file: !45, line: 93, type: !42)
!152 = !DILocation(line: 93, column: 12, scope: !150)
!153 = !DILocalVariable(name: "dataPtr1", scope: !150, file: !45, line: 94, type: !41)
!154 = !DILocation(line: 94, column: 13, scope: !150)
!155 = !DILocalVariable(name: "dataPtr2", scope: !150, file: !45, line: 95, type: !41)
!156 = !DILocation(line: 95, column: 13, scope: !150)
!157 = !DILocalVariable(name: "dataBuffer", scope: !150, file: !45, line: 96, type: !90)
!158 = !DILocation(line: 96, column: 10, scope: !150)
!159 = !DILocation(line: 97, column: 12, scope: !150)
!160 = !DILocation(line: 97, column: 10, scope: !150)
!161 = !DILocalVariable(name: "data", scope: !162, file: !45, line: 99, type: !42)
!162 = distinct !DILexicalBlock(scope: !150, file: !45, line: 98, column: 5)
!163 = !DILocation(line: 99, column: 16, scope: !162)
!164 = !DILocation(line: 99, column: 24, scope: !162)
!165 = !DILocation(line: 99, column: 23, scope: !162)
!166 = !DILocation(line: 101, column: 16, scope: !162)
!167 = !DILocation(line: 101, column: 9, scope: !162)
!168 = !DILocation(line: 102, column: 21, scope: !162)
!169 = !DILocation(line: 102, column: 10, scope: !162)
!170 = !DILocation(line: 102, column: 19, scope: !162)
!171 = !DILocalVariable(name: "data", scope: !172, file: !45, line: 105, type: !42)
!172 = distinct !DILexicalBlock(scope: !150, file: !45, line: 104, column: 5)
!173 = !DILocation(line: 105, column: 16, scope: !172)
!174 = !DILocation(line: 105, column: 24, scope: !172)
!175 = !DILocation(line: 105, column: 23, scope: !172)
!176 = !DILocation(line: 106, column: 23, scope: !172)
!177 = !DILocation(line: 106, column: 29, scope: !172)
!178 = !DILocation(line: 106, column: 9, scope: !172)
!179 = !DILocation(line: 108, column: 1, scope: !150)
!180 = distinct !DISubprogram(name: "goodB2GVaSink", scope: !45, file: !45, line: 111, type: !53, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!181 = !DILocalVariable(name: "data", arg: 1, scope: !180, file: !45, line: 111, type: !42)
!182 = !DILocation(line: 111, column: 27, scope: !180)
!183 = !DILocalVariable(name: "args", scope: !184, file: !45, line: 114, type: !59)
!184 = distinct !DILexicalBlock(scope: !180, file: !45, line: 113, column: 5)
!185 = !DILocation(line: 114, column: 17, scope: !184)
!186 = !DILocation(line: 115, column: 9, scope: !184)
!187 = !DILocation(line: 117, column: 23, scope: !184)
!188 = !DILocation(line: 117, column: 9, scope: !184)
!189 = !DILocation(line: 118, column: 9, scope: !184)
!190 = !DILocation(line: 120, column: 1, scope: !180)
!191 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 122, type: !81, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!192 = !DILocalVariable(name: "data", scope: !191, file: !45, line: 124, type: !42)
!193 = !DILocation(line: 124, column: 12, scope: !191)
!194 = !DILocalVariable(name: "dataPtr1", scope: !191, file: !45, line: 125, type: !41)
!195 = !DILocation(line: 125, column: 13, scope: !191)
!196 = !DILocalVariable(name: "dataPtr2", scope: !191, file: !45, line: 126, type: !41)
!197 = !DILocation(line: 126, column: 13, scope: !191)
!198 = !DILocalVariable(name: "dataBuffer", scope: !191, file: !45, line: 127, type: !90)
!199 = !DILocation(line: 127, column: 10, scope: !191)
!200 = !DILocation(line: 128, column: 12, scope: !191)
!201 = !DILocation(line: 128, column: 10, scope: !191)
!202 = !DILocalVariable(name: "data", scope: !203, file: !45, line: 130, type: !42)
!203 = distinct !DILexicalBlock(scope: !191, file: !45, line: 129, column: 5)
!204 = !DILocation(line: 130, column: 16, scope: !203)
!205 = !DILocation(line: 130, column: 24, scope: !203)
!206 = !DILocation(line: 130, column: 23, scope: !203)
!207 = !DILocalVariable(name: "dataLen", scope: !208, file: !45, line: 133, type: !103)
!208 = distinct !DILexicalBlock(scope: !203, file: !45, line: 131, column: 9)
!209 = !DILocation(line: 133, column: 20, scope: !208)
!210 = !DILocation(line: 133, column: 37, scope: !208)
!211 = !DILocation(line: 133, column: 30, scope: !208)
!212 = !DILocalVariable(name: "environment", scope: !208, file: !45, line: 134, type: !42)
!213 = !DILocation(line: 134, column: 20, scope: !208)
!214 = !DILocation(line: 134, column: 34, scope: !208)
!215 = !DILocation(line: 136, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !208, file: !45, line: 136, column: 17)
!217 = !DILocation(line: 136, column: 29, scope: !216)
!218 = !DILocation(line: 136, column: 17, scope: !208)
!219 = !DILocation(line: 139, column: 25, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !45, line: 137, column: 13)
!221 = !DILocation(line: 139, column: 30, scope: !220)
!222 = !DILocation(line: 139, column: 29, scope: !220)
!223 = !DILocation(line: 139, column: 39, scope: !220)
!224 = !DILocation(line: 139, column: 56, scope: !220)
!225 = !DILocation(line: 139, column: 55, scope: !220)
!226 = !DILocation(line: 139, column: 63, scope: !220)
!227 = !DILocation(line: 139, column: 17, scope: !220)
!228 = !DILocation(line: 140, column: 13, scope: !220)
!229 = !DILocation(line: 142, column: 21, scope: !203)
!230 = !DILocation(line: 142, column: 10, scope: !203)
!231 = !DILocation(line: 142, column: 19, scope: !203)
!232 = !DILocalVariable(name: "data", scope: !233, file: !45, line: 145, type: !42)
!233 = distinct !DILexicalBlock(scope: !191, file: !45, line: 144, column: 5)
!234 = !DILocation(line: 145, column: 16, scope: !233)
!235 = !DILocation(line: 145, column: 24, scope: !233)
!236 = !DILocation(line: 145, column: 23, scope: !233)
!237 = !DILocation(line: 146, column: 23, scope: !233)
!238 = !DILocation(line: 146, column: 29, scope: !233)
!239 = !DILocation(line: 146, column: 9, scope: !233)
!240 = !DILocation(line: 148, column: 1, scope: !191)
!241 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_good", scope: !45, file: !45, line: 150, type: !81, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!242 = !DILocation(line: 152, column: 5, scope: !241)
!243 = !DILocation(line: 153, column: 5, scope: !241)
!244 = !DILocation(line: 154, column: 1, scope: !241)
!245 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !246, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !42}
!248 = !DILocalVariable(name: "line", arg: 1, scope: !245, file: !3, line: 11, type: !42)
!249 = !DILocation(line: 11, column: 25, scope: !245)
!250 = !DILocation(line: 13, column: 1, scope: !245)
!251 = !DILocation(line: 14, column: 8, scope: !252)
!252 = distinct !DILexicalBlock(scope: !245, file: !3, line: 14, column: 8)
!253 = !DILocation(line: 14, column: 13, scope: !252)
!254 = !DILocation(line: 14, column: 8, scope: !245)
!255 = !DILocation(line: 16, column: 24, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !3, line: 15, column: 5)
!257 = !DILocation(line: 16, column: 9, scope: !256)
!258 = !DILocation(line: 17, column: 5, scope: !256)
!259 = !DILocation(line: 18, column: 5, scope: !245)
!260 = !DILocation(line: 19, column: 1, scope: !245)
!261 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !246, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!262 = !DILocalVariable(name: "line", arg: 1, scope: !261, file: !3, line: 20, type: !42)
!263 = !DILocation(line: 20, column: 29, scope: !261)
!264 = !DILocation(line: 22, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !3, line: 22, column: 8)
!266 = !DILocation(line: 22, column: 13, scope: !265)
!267 = !DILocation(line: 22, column: 8, scope: !261)
!268 = !DILocation(line: 24, column: 24, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !3, line: 23, column: 5)
!270 = !DILocation(line: 24, column: 9, scope: !269)
!271 = !DILocation(line: 25, column: 5, scope: !269)
!272 = !DILocation(line: 26, column: 1, scope: !261)
!273 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !274, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !104, line: 74, baseType: !23)
!278 = !DILocalVariable(name: "line", arg: 1, scope: !273, file: !3, line: 27, type: !276)
!279 = !DILocation(line: 27, column: 29, scope: !273)
!280 = !DILocation(line: 29, column: 8, scope: !281)
!281 = distinct !DILexicalBlock(scope: !273, file: !3, line: 29, column: 8)
!282 = !DILocation(line: 29, column: 13, scope: !281)
!283 = !DILocation(line: 29, column: 8, scope: !273)
!284 = !DILocation(line: 31, column: 27, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !3, line: 30, column: 5)
!286 = !DILocation(line: 31, column: 9, scope: !285)
!287 = !DILocation(line: 32, column: 5, scope: !285)
!288 = !DILocation(line: 33, column: 1, scope: !273)
!289 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !290, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !23}
!292 = !DILocalVariable(name: "intNumber", arg: 1, scope: !289, file: !3, line: 35, type: !23)
!293 = !DILocation(line: 35, column: 24, scope: !289)
!294 = !DILocation(line: 37, column: 20, scope: !289)
!295 = !DILocation(line: 37, column: 5, scope: !289)
!296 = !DILocation(line: 38, column: 1, scope: !289)
!297 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !298, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300}
!300 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!301 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !297, file: !3, line: 40, type: !300)
!302 = !DILocation(line: 40, column: 28, scope: !297)
!303 = !DILocation(line: 42, column: 21, scope: !297)
!304 = !DILocation(line: 42, column: 5, scope: !297)
!305 = !DILocation(line: 43, column: 1, scope: !297)
!306 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !307, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309}
!309 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!310 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !306, file: !3, line: 45, type: !309)
!311 = !DILocation(line: 45, column: 28, scope: !306)
!312 = !DILocation(line: 47, column: 20, scope: !306)
!313 = !DILocation(line: 47, column: 5, scope: !306)
!314 = !DILocation(line: 48, column: 1, scope: !306)
!315 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !316, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !318}
!318 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!319 = !DILocalVariable(name: "longNumber", arg: 1, scope: !315, file: !3, line: 50, type: !318)
!320 = !DILocation(line: 50, column: 26, scope: !315)
!321 = !DILocation(line: 52, column: 21, scope: !315)
!322 = !DILocation(line: 52, column: 5, scope: !315)
!323 = !DILocation(line: 53, column: 1, scope: !315)
!324 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !325, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !327}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !328, line: 27, baseType: !329)
!328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !330, line: 44, baseType: !318)
!330 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!331 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !324, file: !3, line: 55, type: !327)
!332 = !DILocation(line: 55, column: 33, scope: !324)
!333 = !DILocation(line: 57, column: 29, scope: !324)
!334 = !DILocation(line: 57, column: 5, scope: !324)
!335 = !DILocation(line: 58, column: 1, scope: !324)
!336 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !337, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !103}
!339 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !336, file: !3, line: 60, type: !103)
!340 = !DILocation(line: 60, column: 29, scope: !336)
!341 = !DILocation(line: 62, column: 21, scope: !336)
!342 = !DILocation(line: 62, column: 5, scope: !336)
!343 = !DILocation(line: 63, column: 1, scope: !336)
!344 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !345, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !43}
!347 = !DILocalVariable(name: "charHex", arg: 1, scope: !344, file: !3, line: 65, type: !43)
!348 = !DILocation(line: 65, column: 29, scope: !344)
!349 = !DILocation(line: 67, column: 22, scope: !344)
!350 = !DILocation(line: 67, column: 5, scope: !344)
!351 = !DILocation(line: 68, column: 1, scope: !344)
!352 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !353, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !277}
!355 = !DILocalVariable(name: "wideChar", arg: 1, scope: !352, file: !3, line: 70, type: !277)
!356 = !DILocation(line: 70, column: 29, scope: !352)
!357 = !DILocalVariable(name: "s", scope: !352, file: !3, line: 74, type: !358)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 64, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 2)
!361 = !DILocation(line: 74, column: 13, scope: !352)
!362 = !DILocation(line: 75, column: 16, scope: !352)
!363 = !DILocation(line: 75, column: 9, scope: !352)
!364 = !DILocation(line: 75, column: 14, scope: !352)
!365 = !DILocation(line: 76, column: 9, scope: !352)
!366 = !DILocation(line: 76, column: 14, scope: !352)
!367 = !DILocation(line: 77, column: 21, scope: !352)
!368 = !DILocation(line: 77, column: 5, scope: !352)
!369 = !DILocation(line: 78, column: 1, scope: !352)
!370 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !371, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !7}
!373 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !370, file: !3, line: 80, type: !7)
!374 = !DILocation(line: 80, column: 33, scope: !370)
!375 = !DILocation(line: 82, column: 20, scope: !370)
!376 = !DILocation(line: 82, column: 5, scope: !370)
!377 = !DILocation(line: 83, column: 1, scope: !370)
!378 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !379, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !25}
!381 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !378, file: !3, line: 85, type: !25)
!382 = !DILocation(line: 85, column: 45, scope: !378)
!383 = !DILocation(line: 87, column: 22, scope: !378)
!384 = !DILocation(line: 87, column: 5, scope: !378)
!385 = !DILocation(line: 88, column: 1, scope: !378)
!386 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !387, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389}
!389 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!390 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !386, file: !3, line: 90, type: !389)
!391 = !DILocation(line: 90, column: 29, scope: !386)
!392 = !DILocation(line: 92, column: 20, scope: !386)
!393 = !DILocation(line: 92, column: 5, scope: !386)
!394 = !DILocation(line: 93, column: 1, scope: !386)
!395 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !396, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !400, line: 100, baseType: !401)
!400 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_887/source_code")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !400, line: 96, size: 64, elements: !402)
!402 = !{!403, !404}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !401, file: !400, line: 98, baseType: !23, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !401, file: !400, line: 99, baseType: !23, size: 32, offset: 32)
!405 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !395, file: !3, line: 95, type: !398)
!406 = !DILocation(line: 95, column: 40, scope: !395)
!407 = !DILocation(line: 97, column: 26, scope: !395)
!408 = !DILocation(line: 97, column: 47, scope: !395)
!409 = !DILocation(line: 97, column: 55, scope: !395)
!410 = !DILocation(line: 97, column: 76, scope: !395)
!411 = !DILocation(line: 97, column: 5, scope: !395)
!412 = !DILocation(line: 98, column: 1, scope: !395)
!413 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !414, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !416, !103}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!417 = !DILocalVariable(name: "bytes", arg: 1, scope: !413, file: !3, line: 100, type: !416)
!418 = !DILocation(line: 100, column: 38, scope: !413)
!419 = !DILocalVariable(name: "numBytes", arg: 2, scope: !413, file: !3, line: 100, type: !103)
!420 = !DILocation(line: 100, column: 52, scope: !413)
!421 = !DILocalVariable(name: "i", scope: !413, file: !3, line: 102, type: !103)
!422 = !DILocation(line: 102, column: 12, scope: !413)
!423 = !DILocation(line: 103, column: 12, scope: !424)
!424 = distinct !DILexicalBlock(scope: !413, file: !3, line: 103, column: 5)
!425 = !DILocation(line: 103, column: 10, scope: !424)
!426 = !DILocation(line: 103, column: 17, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !3, line: 103, column: 5)
!428 = !DILocation(line: 103, column: 21, scope: !427)
!429 = !DILocation(line: 103, column: 19, scope: !427)
!430 = !DILocation(line: 103, column: 5, scope: !424)
!431 = !DILocation(line: 105, column: 24, scope: !432)
!432 = distinct !DILexicalBlock(scope: !427, file: !3, line: 104, column: 5)
!433 = !DILocation(line: 105, column: 30, scope: !432)
!434 = !DILocation(line: 105, column: 9, scope: !432)
!435 = !DILocation(line: 106, column: 5, scope: !432)
!436 = !DILocation(line: 103, column: 31, scope: !427)
!437 = !DILocation(line: 103, column: 5, scope: !427)
!438 = distinct !{!438, !430, !439, !440}
!439 = !DILocation(line: 106, column: 5, scope: !424)
!440 = !{!"llvm.loop.mustprogress"}
!441 = !DILocation(line: 107, column: 5, scope: !413)
!442 = !DILocation(line: 108, column: 1, scope: !413)
!443 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !444, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!444 = !DISubroutineType(types: !445)
!445 = !{!103, !416, !103, !42}
!446 = !DILocalVariable(name: "bytes", arg: 1, scope: !443, file: !3, line: 113, type: !416)
!447 = !DILocation(line: 113, column: 39, scope: !443)
!448 = !DILocalVariable(name: "numBytes", arg: 2, scope: !443, file: !3, line: 113, type: !103)
!449 = !DILocation(line: 113, column: 53, scope: !443)
!450 = !DILocalVariable(name: "hex", arg: 3, scope: !443, file: !3, line: 113, type: !42)
!451 = !DILocation(line: 113, column: 71, scope: !443)
!452 = !DILocalVariable(name: "numWritten", scope: !443, file: !3, line: 115, type: !103)
!453 = !DILocation(line: 115, column: 12, scope: !443)
!454 = !DILocation(line: 121, column: 5, scope: !443)
!455 = !DILocation(line: 121, column: 12, scope: !443)
!456 = !DILocation(line: 121, column: 25, scope: !443)
!457 = !DILocation(line: 121, column: 23, scope: !443)
!458 = !DILocation(line: 121, column: 34, scope: !443)
!459 = !DILocation(line: 121, column: 37, scope: !443)
!460 = !DILocation(line: 121, column: 67, scope: !443)
!461 = !DILocation(line: 121, column: 70, scope: !443)
!462 = !DILocation(line: 0, scope: !443)
!463 = !DILocalVariable(name: "byte", scope: !464, file: !3, line: 123, type: !23)
!464 = distinct !DILexicalBlock(scope: !443, file: !3, line: 122, column: 5)
!465 = !DILocation(line: 123, column: 13, scope: !464)
!466 = !DILocation(line: 124, column: 17, scope: !464)
!467 = !DILocation(line: 124, column: 25, scope: !464)
!468 = !DILocation(line: 124, column: 23, scope: !464)
!469 = !DILocation(line: 124, column: 9, scope: !464)
!470 = !DILocation(line: 125, column: 45, scope: !464)
!471 = !DILocation(line: 125, column: 29, scope: !464)
!472 = !DILocation(line: 125, column: 9, scope: !464)
!473 = !DILocation(line: 125, column: 15, scope: !464)
!474 = !DILocation(line: 125, column: 27, scope: !464)
!475 = !DILocation(line: 126, column: 9, scope: !464)
!476 = distinct !{!476, !454, !477, !440}
!477 = !DILocation(line: 127, column: 5, scope: !443)
!478 = !DILocation(line: 129, column: 12, scope: !443)
!479 = !DILocation(line: 129, column: 5, scope: !443)
!480 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !481, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!481 = !DISubroutineType(types: !482)
!482 = !{!103, !416, !103, !276}
!483 = !DILocalVariable(name: "bytes", arg: 1, scope: !480, file: !3, line: 135, type: !416)
!484 = !DILocation(line: 135, column: 41, scope: !480)
!485 = !DILocalVariable(name: "numBytes", arg: 2, scope: !480, file: !3, line: 135, type: !103)
!486 = !DILocation(line: 135, column: 55, scope: !480)
!487 = !DILocalVariable(name: "hex", arg: 3, scope: !480, file: !3, line: 135, type: !276)
!488 = !DILocation(line: 135, column: 76, scope: !480)
!489 = !DILocalVariable(name: "numWritten", scope: !480, file: !3, line: 137, type: !103)
!490 = !DILocation(line: 137, column: 12, scope: !480)
!491 = !DILocation(line: 143, column: 5, scope: !480)
!492 = !DILocation(line: 143, column: 12, scope: !480)
!493 = !DILocation(line: 143, column: 25, scope: !480)
!494 = !DILocation(line: 143, column: 23, scope: !480)
!495 = !DILocation(line: 143, column: 34, scope: !480)
!496 = !DILocation(line: 143, column: 47, scope: !480)
!497 = !DILocation(line: 143, column: 55, scope: !480)
!498 = !DILocation(line: 143, column: 53, scope: !480)
!499 = !DILocation(line: 143, column: 37, scope: !480)
!500 = !DILocation(line: 143, column: 68, scope: !480)
!501 = !DILocation(line: 143, column: 81, scope: !480)
!502 = !DILocation(line: 143, column: 89, scope: !480)
!503 = !DILocation(line: 143, column: 87, scope: !480)
!504 = !DILocation(line: 143, column: 100, scope: !480)
!505 = !DILocation(line: 143, column: 71, scope: !480)
!506 = !DILocation(line: 0, scope: !480)
!507 = !DILocalVariable(name: "byte", scope: !508, file: !3, line: 145, type: !23)
!508 = distinct !DILexicalBlock(scope: !480, file: !3, line: 144, column: 5)
!509 = !DILocation(line: 145, column: 13, scope: !508)
!510 = !DILocation(line: 146, column: 18, scope: !508)
!511 = !DILocation(line: 146, column: 26, scope: !508)
!512 = !DILocation(line: 146, column: 24, scope: !508)
!513 = !DILocation(line: 146, column: 9, scope: !508)
!514 = !DILocation(line: 147, column: 45, scope: !508)
!515 = !DILocation(line: 147, column: 29, scope: !508)
!516 = !DILocation(line: 147, column: 9, scope: !508)
!517 = !DILocation(line: 147, column: 15, scope: !508)
!518 = !DILocation(line: 147, column: 27, scope: !508)
!519 = !DILocation(line: 148, column: 9, scope: !508)
!520 = distinct !{!520, !491, !521, !440}
!521 = !DILocation(line: 149, column: 5, scope: !480)
!522 = !DILocation(line: 151, column: 12, scope: !480)
!523 = !DILocation(line: 151, column: 5, scope: !480)
!524 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !525, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!525 = !DISubroutineType(types: !526)
!526 = !{!23}
!527 = !DILocation(line: 158, column: 5, scope: !524)
!528 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !525, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DILocation(line: 163, column: 5, scope: !528)
!530 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !525, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!531 = !DILocation(line: 168, column: 13, scope: !530)
!532 = !DILocation(line: 168, column: 20, scope: !530)
!533 = !DILocation(line: 168, column: 5, scope: !530)
!534 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !81, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DILocation(line: 187, column: 16, scope: !534)
!536 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !81, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DILocation(line: 188, column: 16, scope: !536)
!538 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !81, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DILocation(line: 189, column: 16, scope: !538)
!540 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !81, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DILocation(line: 190, column: 16, scope: !540)
!542 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !81, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DILocation(line: 191, column: 16, scope: !542)
!544 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !81, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DILocation(line: 192, column: 16, scope: !544)
!546 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !81, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 193, column: 16, scope: !546)
!548 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !81, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DILocation(line: 194, column: 16, scope: !548)
!550 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !81, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 195, column: 16, scope: !550)
!552 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !81, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 198, column: 15, scope: !552)
!554 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !81, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 199, column: 15, scope: !554)
!556 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !81, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 200, column: 15, scope: !556)
!558 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !81, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 201, column: 15, scope: !558)
!560 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !81, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 202, column: 15, scope: !560)
!562 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !81, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DILocation(line: 203, column: 15, scope: !562)
!564 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !81, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 204, column: 15, scope: !564)
!566 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !81, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 205, column: 15, scope: !566)
!568 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !81, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 206, column: 15, scope: !568)
