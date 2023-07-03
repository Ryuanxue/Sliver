; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._twoIntsStruct = type { i32, i32 }

@badStatic = dso_local global i32 0, align 4, !dbg !0
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !8
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !11
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !13
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
@.str.4 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local void @badVaSink(i8* %data, ...) #0 !dbg !61 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load i32, i32* @badStatic, align 4, !dbg !66
  %tobool = icmp ne i32 %0, 0, !dbg !66
  br i1 %tobool, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !69, metadata !DIExpression()), !dbg !86
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !87
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !87
  call void @llvm.va_start(i8* %arraydecay1), !dbg !87
  %1 = load i8*, i8** %data.addr, align 8, !dbg !88
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !89
  %call = call i32 @vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !90
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !91
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !91
  call void @llvm.va_end(i8* %arraydecay34), !dbg !91
  br label %if.end, !dbg !92

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_bad() #0 !dbg !94 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !99, metadata !DIExpression()), !dbg !103
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !103
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !103
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !104
  store i8* %arraydecay, i8** %data, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !106, metadata !DIExpression()), !dbg !111
  %1 = load i8*, i8** %data, align 8, !dbg !112
  %call = call i64 @strlen(i8* %1) #8, !dbg !113
  store i64 %call, i64* %dataLen, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !114, metadata !DIExpression()), !dbg !115
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9, !dbg !116
  store i8* %call1, i8** %environment, align 8, !dbg !115
  %2 = load i8*, i8** %environment, align 8, !dbg !117
  %cmp = icmp ne i8* %2, null, !dbg !119
  br i1 %cmp, label %if.then, label %if.end, !dbg !120

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !121
  %4 = load i64, i64* %dataLen, align 8, !dbg !123
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !124
  %5 = load i8*, i8** %environment, align 8, !dbg !125
  %6 = load i64, i64* %dataLen, align 8, !dbg !126
  %sub = sub i64 100, %6, !dbg !127
  %sub2 = sub i64 %sub, 1, !dbg !128
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #9, !dbg !129
  br label %if.end, !dbg !130

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @badStatic, align 4, !dbg !131
  %7 = load i8*, i8** %data, align 8, !dbg !132
  %8 = load i8*, i8** %data, align 8, !dbg !133
  call void (i8*, ...) @badVaSink(i8* %7, i8* %8), !dbg !134
  ret void, !dbg !135
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
define dso_local void @goodB2G1_vasink(i8* %data, ...) #0 !dbg !136 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !137, metadata !DIExpression()), !dbg !138
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !139
  %tobool = icmp ne i32 %0, 0, !dbg !139
  br i1 %tobool, label %if.then, label %if.else, !dbg !141

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !142
  br label %if.end, !dbg !144

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !145, metadata !DIExpression()), !dbg !148
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !149
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !149
  call void @llvm.va_start(i8* %arraydecay1), !dbg !149
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !150
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !151
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !152
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !152
  call void @llvm.va_end(i8* %arraydecay34), !dbg !152
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !154 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !158
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !158
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !159
  store i8* %arraydecay, i8** %data, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !161, metadata !DIExpression()), !dbg !163
  %1 = load i8*, i8** %data, align 8, !dbg !164
  %call = call i64 @strlen(i8* %1) #8, !dbg !165
  store i64 %call, i64* %dataLen, align 8, !dbg !163
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !166, metadata !DIExpression()), !dbg !167
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9, !dbg !168
  store i8* %call1, i8** %environment, align 8, !dbg !167
  %2 = load i8*, i8** %environment, align 8, !dbg !169
  %cmp = icmp ne i8* %2, null, !dbg !171
  br i1 %cmp, label %if.then, label %if.end, !dbg !172

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !173
  %4 = load i64, i64* %dataLen, align 8, !dbg !175
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !176
  %5 = load i8*, i8** %environment, align 8, !dbg !177
  %6 = load i64, i64* %dataLen, align 8, !dbg !178
  %sub = sub i64 100, %6, !dbg !179
  %sub2 = sub i64 %sub, 1, !dbg !180
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #9, !dbg !181
  br label %if.end, !dbg !182

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !183
  %7 = load i8*, i8** %data, align 8, !dbg !184
  %8 = load i8*, i8** %data, align 8, !dbg !185
  call void (i8*, ...) @goodB2G1_vasink(i8* %7, i8* %8), !dbg !186
  ret void, !dbg !187
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2_vasink(i8* %data, ...) #0 !dbg !188 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !189, metadata !DIExpression()), !dbg !190
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !191
  %tobool = icmp ne i32 %0, 0, !dbg !191
  br i1 %tobool, label %if.then, label %if.end, !dbg !193

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !194, metadata !DIExpression()), !dbg !197
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !198
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !198
  call void @llvm.va_start(i8* %arraydecay1), !dbg !198
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !199
  %call = call i32 @vprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.__va_list_tag* %arraydecay2), !dbg !200
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !201
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !201
  call void @llvm.va_end(i8* %arraydecay34), !dbg !201
  br label %if.end, !dbg !202

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !204 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !208
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !208
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !209
  store i8* %arraydecay, i8** %data, align 8, !dbg !210
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !211, metadata !DIExpression()), !dbg !213
  %1 = load i8*, i8** %data, align 8, !dbg !214
  %call = call i64 @strlen(i8* %1) #8, !dbg !215
  store i64 %call, i64* %dataLen, align 8, !dbg !213
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !216, metadata !DIExpression()), !dbg !217
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9, !dbg !218
  store i8* %call1, i8** %environment, align 8, !dbg !217
  %2 = load i8*, i8** %environment, align 8, !dbg !219
  %cmp = icmp ne i8* %2, null, !dbg !221
  br i1 %cmp, label %if.then, label %if.end, !dbg !222

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !223
  %4 = load i64, i64* %dataLen, align 8, !dbg !225
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !226
  %5 = load i8*, i8** %environment, align 8, !dbg !227
  %6 = load i64, i64* %dataLen, align 8, !dbg !228
  %sub = sub i64 100, %6, !dbg !229
  %sub2 = sub i64 %sub, 1, !dbg !230
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #9, !dbg !231
  br label %if.end, !dbg !232

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !233
  %7 = load i8*, i8** %data, align 8, !dbg !234
  %8 = load i8*, i8** %data, align 8, !dbg !235
  call void (i8*, ...) @goodB2G2_vasink(i8* %7, i8* %8), !dbg !236
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BVaSink(i8* %data, ...) #0 !dbg !238 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !241
  %tobool = icmp ne i32 %0, 0, !dbg !241
  br i1 %tobool, label %if.then, label %if.end, !dbg !243

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !244, metadata !DIExpression()), !dbg !247
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !248
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !248
  call void @llvm.va_start(i8* %arraydecay1), !dbg !248
  %1 = load i8*, i8** %data.addr, align 8, !dbg !249
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !250
  %call = call i32 @vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !251
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !252
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !252
  call void @llvm.va_end(i8* %arraydecay34), !dbg !252
  br label %if.end, !dbg !253

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !255 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !258, metadata !DIExpression()), !dbg !259
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !259
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !259
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !260
  store i8* %arraydecay, i8** %data, align 8, !dbg !261
  %1 = load i8*, i8** %data, align 8, !dbg !262
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !263
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !264
  %2 = load i8*, i8** %data, align 8, !dbg !265
  %3 = load i8*, i8** %data, align 8, !dbg !266
  call void (i8*, ...) @goodG2BVaSink(i8* %2, i8* %3), !dbg !267
  ret void, !dbg !268
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_good() #0 !dbg !269 {
entry:
  call void @goodB2G1(), !dbg !270
  call void @goodB2G2(), !dbg !271
  call void @goodG2B(), !dbg !272
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !274 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !277, metadata !DIExpression()), !dbg !278
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !279
  %0 = load i8*, i8** %line.addr, align 8, !dbg !280
  %cmp = icmp ne i8* %0, null, !dbg !282
  br i1 %cmp, label %if.then, label %if.end, !dbg !283

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !284
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !286
  br label %if.end, !dbg !287

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !288
  ret void, !dbg !289
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !290 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load i8*, i8** %line.addr, align 8, !dbg !293
  %cmp = icmp ne i8* %0, null, !dbg !295
  br i1 %cmp, label %if.then, label %if.end, !dbg !296

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !297
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !299
  br label %if.end, !dbg !300

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !302 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !307, metadata !DIExpression()), !dbg !308
  %0 = load i32*, i32** %line.addr, align 8, !dbg !309
  %cmp = icmp ne i32* %0, null, !dbg !311
  br i1 %cmp, label %if.then, label %if.end, !dbg !312

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !313
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !315
  br label %if.end, !dbg !316

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !317
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !318 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !323
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.8, i64 0, i64 0), i32 %0), !dbg !324
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !326 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !332
  %conv = sext i16 %0 to i32, !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !333
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !335 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !341
  %conv = fpext float %0 to double, !dbg !341
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !344 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !350
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !353 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !360, metadata !DIExpression()), !dbg !361
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !362
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !363
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !365 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !370
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !371
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !373 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !378
  %conv = sext i8 %0 to i32, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !381 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !386, metadata !DIExpression()), !dbg !390
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !391
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !392
  store i32 %0, i32* %arrayidx, align 4, !dbg !393
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !394
  store i32 0, i32* %arrayidx1, align 4, !dbg !395
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !396
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !397
  ret void, !dbg !398
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !399 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !404
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !407 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !412
  %conv = zext i8 %0 to i32, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !415 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !419, metadata !DIExpression()), !dbg !420
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !421
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !424 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !436
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !437
  %1 = load i32, i32* %intOne, align 4, !dbg !437
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !438
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !439
  %3 = load i32, i32* %intTwo, align 4, !dbg !439
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !440
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !442 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !446, metadata !DIExpression()), !dbg !447
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata i64* %i, metadata !450, metadata !DIExpression()), !dbg !451
  store i64 0, i64* %i, align 8, !dbg !452
  br label %for.cond, !dbg !454

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !455
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !457
  %cmp = icmp ult i64 %0, %1, !dbg !458
  br i1 %cmp, label %for.body, label %for.end, !dbg !459

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !460
  %3 = load i64, i64* %i, align 8, !dbg !462
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !460
  %4 = load i8, i8* %arrayidx, align 1, !dbg !460
  %conv = zext i8 %4 to i32, !dbg !460
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !463
  br label %for.inc, !dbg !464

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !465
  %inc = add i64 %5, 1, !dbg !465
  store i64 %inc, i64* %i, align 8, !dbg !465
  br label %for.cond, !dbg !466, !llvm.loop !467

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !470
  ret void, !dbg !471
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !472 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !475, metadata !DIExpression()), !dbg !476
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !477, metadata !DIExpression()), !dbg !478
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !479, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !481, metadata !DIExpression()), !dbg !482
  store i64 0, i64* %numWritten, align 8, !dbg !482
  br label %while.cond, !dbg !483

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !484
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !485
  %cmp = icmp ult i64 %0, %1, !dbg !486
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !487

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #10, !dbg !488
  %2 = load i16*, i16** %call, align 8, !dbg !488
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !488
  %4 = load i64, i64* %numWritten, align 8, !dbg !488
  %mul = mul i64 2, %4, !dbg !488
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !488
  %5 = load i8, i8* %arrayidx, align 1, !dbg !488
  %conv = sext i8 %5 to i32, !dbg !488
  %idxprom = sext i32 %conv to i64, !dbg !488
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !488
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !488
  %conv2 = zext i16 %6 to i32, !dbg !488
  %and = and i32 %conv2, 4096, !dbg !488
  %tobool = icmp ne i32 %and, 0, !dbg !488
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !489

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #10, !dbg !490
  %7 = load i16*, i16** %call3, align 8, !dbg !490
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !490
  %9 = load i64, i64* %numWritten, align 8, !dbg !490
  %mul4 = mul i64 2, %9, !dbg !490
  %add = add i64 %mul4, 1, !dbg !490
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !490
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !490
  %conv6 = sext i8 %10 to i32, !dbg !490
  %idxprom7 = sext i32 %conv6 to i64, !dbg !490
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !490
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !490
  %conv9 = zext i16 %11 to i32, !dbg !490
  %and10 = and i32 %conv9, 4096, !dbg !490
  %tobool11 = icmp ne i32 %and10, 0, !dbg !489
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !491
  br i1 %12, label %while.body, label %while.end, !dbg !483

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !492, metadata !DIExpression()), !dbg !494
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !495
  %14 = load i64, i64* %numWritten, align 8, !dbg !496
  %mul12 = mul i64 2, %14, !dbg !497
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !495
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #9, !dbg !498
  %15 = load i32, i32* %byte, align 4, !dbg !499
  %conv15 = trunc i32 %15 to i8, !dbg !500
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !501
  %17 = load i64, i64* %numWritten, align 8, !dbg !502
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !501
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !503
  %18 = load i64, i64* %numWritten, align 8, !dbg !504
  %inc = add i64 %18, 1, !dbg !504
  store i64 %inc, i64* %numWritten, align 8, !dbg !504
  br label %while.cond, !dbg !483, !llvm.loop !505

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !507
  ret i64 %19, !dbg !508
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !509 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !514, metadata !DIExpression()), !dbg !515
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !516, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !518, metadata !DIExpression()), !dbg !519
  store i64 0, i64* %numWritten, align 8, !dbg !519
  br label %while.cond, !dbg !520

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !521
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !522
  %cmp = icmp ult i64 %0, %1, !dbg !523
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !524

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !525
  %3 = load i64, i64* %numWritten, align 8, !dbg !526
  %mul = mul i64 2, %3, !dbg !527
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !525
  %4 = load i32, i32* %arrayidx, align 4, !dbg !525
  %call = call i32 @iswxdigit(i32 %4) #9, !dbg !528
  %tobool = icmp ne i32 %call, 0, !dbg !528
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !529

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !530
  %6 = load i64, i64* %numWritten, align 8, !dbg !531
  %mul1 = mul i64 2, %6, !dbg !532
  %add = add i64 %mul1, 1, !dbg !533
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !530
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !530
  %call3 = call i32 @iswxdigit(i32 %7) #9, !dbg !534
  %tobool4 = icmp ne i32 %call3, 0, !dbg !529
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !535
  br i1 %8, label %while.body, label %while.end, !dbg !520

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !536, metadata !DIExpression()), !dbg !538
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !539
  %10 = load i64, i64* %numWritten, align 8, !dbg !540
  %mul5 = mul i64 2, %10, !dbg !541
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !539
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #9, !dbg !542
  %11 = load i32, i32* %byte, align 4, !dbg !543
  %conv = trunc i32 %11 to i8, !dbg !544
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !545
  %13 = load i64, i64* %numWritten, align 8, !dbg !546
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !545
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !547
  %14 = load i64, i64* %numWritten, align 8, !dbg !548
  %inc = add i64 %14, 1, !dbg !548
  store i64 %inc, i64* %numWritten, align 8, !dbg !548
  br label %while.cond, !dbg !520, !llvm.loop !549

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !551
  ret i64 %15, !dbg !552
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !553 {
entry:
  ret i32 1, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !557 {
entry:
  ret i32 0, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !559 {
entry:
  %call = call i32 @rand() #9, !dbg !560
  %rem = srem i32 %call, 2, !dbg !561
  ret i32 %rem, !dbg !562
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !597 {
entry:
  ret void, !dbg !598
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

!llvm.dbg.cu = !{!2, !17}
!llvm.ident = !{!57, !57}
!llvm.module.flags = !{!58, !59, !60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 37, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_884/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !11, !13}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 78, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 79, type: !10, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 80, type: !10, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !10, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_884/source_code")
!19 = !{!20}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!24 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!36 = !{!6, !10, !37, !38}
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!15, !40, !42, !44, !46, !48, !50, !52}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !17, file: !18, line: 175, type: !10, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !17, file: !18, line: 176, type: !10, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalTrue", scope: !17, file: !18, line: 181, type: !10, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalFalse", scope: !17, file: !18, line: 182, type: !10, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalFive", scope: !17, file: !18, line: 183, type: !10, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "globalArgc", scope: !17, file: !18, line: 214, type: !10, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "globalArgv", scope: !17, file: !18, line: 215, type: !54, isLocal: false, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{!"clang version 12.0.0"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "badVaSink", scope: !3, file: !3, line: 39, type: !62, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !55, null}
!64 = !DILocalVariable(name: "data", arg: 1, scope: !61, file: !3, line: 39, type: !55)
!65 = !DILocation(line: 39, column: 23, scope: !61)
!66 = !DILocation(line: 41, column: 8, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !3, line: 41, column: 8)
!68 = !DILocation(line: 41, column: 8, scope: !61)
!69 = !DILocalVariable(name: "args", scope: !70, file: !3, line: 44, type: !72)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 43, column: 9)
!71 = distinct !DILexicalBlock(scope: !67, file: !3, line: 42, column: 5)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !73, line: 52, baseType: !74)
!73 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !75, line: 32, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stdarg.h", directory: "/home/raoxue")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 192, elements: !84)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !78, file: !3, line: 44, baseType: !22, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !78, file: !3, line: 44, baseType: !22, size: 32, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !78, file: !3, line: 44, baseType: !6, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !78, file: !3, line: 44, baseType: !6, size: 64, offset: 128)
!84 = !{!85}
!85 = !DISubrange(count: 1)
!86 = !DILocation(line: 44, column: 21, scope: !70)
!87 = !DILocation(line: 45, column: 13, scope: !70)
!88 = !DILocation(line: 47, column: 21, scope: !70)
!89 = !DILocation(line: 47, column: 27, scope: !70)
!90 = !DILocation(line: 47, column: 13, scope: !70)
!91 = !DILocation(line: 48, column: 13, scope: !70)
!92 = !DILocation(line: 50, column: 5, scope: !71)
!93 = !DILocation(line: 51, column: 1, scope: !61)
!94 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_bad", scope: !3, file: !3, line: 53, type: !95, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DILocalVariable(name: "data", scope: !94, file: !3, line: 55, type: !55)
!98 = !DILocation(line: 55, column: 12, scope: !94)
!99 = !DILocalVariable(name: "dataBuffer", scope: !94, file: !3, line: 56, type: !100)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 100)
!103 = !DILocation(line: 56, column: 10, scope: !94)
!104 = !DILocation(line: 57, column: 12, scope: !94)
!105 = !DILocation(line: 57, column: 10, scope: !94)
!106 = !DILocalVariable(name: "dataLen", scope: !107, file: !3, line: 60, type: !108)
!107 = distinct !DILexicalBlock(scope: !94, file: !3, line: 58, column: 5)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DILocation(line: 60, column: 16, scope: !107)
!112 = !DILocation(line: 60, column: 33, scope: !107)
!113 = !DILocation(line: 60, column: 26, scope: !107)
!114 = !DILocalVariable(name: "environment", scope: !107, file: !3, line: 61, type: !55)
!115 = !DILocation(line: 61, column: 16, scope: !107)
!116 = !DILocation(line: 61, column: 30, scope: !107)
!117 = !DILocation(line: 63, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !107, file: !3, line: 63, column: 13)
!119 = !DILocation(line: 63, column: 25, scope: !118)
!120 = !DILocation(line: 63, column: 13, scope: !107)
!121 = !DILocation(line: 66, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !3, line: 64, column: 9)
!123 = !DILocation(line: 66, column: 26, scope: !122)
!124 = !DILocation(line: 66, column: 25, scope: !122)
!125 = !DILocation(line: 66, column: 35, scope: !122)
!126 = !DILocation(line: 66, column: 52, scope: !122)
!127 = !DILocation(line: 66, column: 51, scope: !122)
!128 = !DILocation(line: 66, column: 59, scope: !122)
!129 = !DILocation(line: 66, column: 13, scope: !122)
!130 = !DILocation(line: 67, column: 9, scope: !122)
!131 = !DILocation(line: 69, column: 15, scope: !94)
!132 = !DILocation(line: 70, column: 15, scope: !94)
!133 = !DILocation(line: 70, column: 21, scope: !94)
!134 = !DILocation(line: 70, column: 5, scope: !94)
!135 = !DILocation(line: 71, column: 1, scope: !94)
!136 = distinct !DISubprogram(name: "goodB2G1_vasink", scope: !3, file: !3, line: 83, type: !62, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!137 = !DILocalVariable(name: "data", arg: 1, scope: !136, file: !3, line: 83, type: !55)
!138 = !DILocation(line: 83, column: 29, scope: !136)
!139 = !DILocation(line: 85, column: 8, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !3, line: 85, column: 8)
!141 = !DILocation(line: 85, column: 8, scope: !136)
!142 = !DILocation(line: 88, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !3, line: 86, column: 5)
!144 = !DILocation(line: 89, column: 5, scope: !143)
!145 = !DILocalVariable(name: "args", scope: !146, file: !3, line: 93, type: !72)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 92, column: 9)
!147 = distinct !DILexicalBlock(scope: !140, file: !3, line: 91, column: 5)
!148 = !DILocation(line: 93, column: 21, scope: !146)
!149 = !DILocation(line: 94, column: 13, scope: !146)
!150 = !DILocation(line: 96, column: 27, scope: !146)
!151 = !DILocation(line: 96, column: 13, scope: !146)
!152 = !DILocation(line: 97, column: 13, scope: !146)
!153 = !DILocation(line: 100, column: 1, scope: !136)
!154 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 102, type: !95, scopeLine: 103, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!155 = !DILocalVariable(name: "data", scope: !154, file: !3, line: 104, type: !55)
!156 = !DILocation(line: 104, column: 12, scope: !154)
!157 = !DILocalVariable(name: "dataBuffer", scope: !154, file: !3, line: 105, type: !100)
!158 = !DILocation(line: 105, column: 10, scope: !154)
!159 = !DILocation(line: 106, column: 12, scope: !154)
!160 = !DILocation(line: 106, column: 10, scope: !154)
!161 = !DILocalVariable(name: "dataLen", scope: !162, file: !3, line: 109, type: !108)
!162 = distinct !DILexicalBlock(scope: !154, file: !3, line: 107, column: 5)
!163 = !DILocation(line: 109, column: 16, scope: !162)
!164 = !DILocation(line: 109, column: 33, scope: !162)
!165 = !DILocation(line: 109, column: 26, scope: !162)
!166 = !DILocalVariable(name: "environment", scope: !162, file: !3, line: 110, type: !55)
!167 = !DILocation(line: 110, column: 16, scope: !162)
!168 = !DILocation(line: 110, column: 30, scope: !162)
!169 = !DILocation(line: 112, column: 13, scope: !170)
!170 = distinct !DILexicalBlock(scope: !162, file: !3, line: 112, column: 13)
!171 = !DILocation(line: 112, column: 25, scope: !170)
!172 = !DILocation(line: 112, column: 13, scope: !162)
!173 = !DILocation(line: 115, column: 21, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !3, line: 113, column: 9)
!175 = !DILocation(line: 115, column: 26, scope: !174)
!176 = !DILocation(line: 115, column: 25, scope: !174)
!177 = !DILocation(line: 115, column: 35, scope: !174)
!178 = !DILocation(line: 115, column: 52, scope: !174)
!179 = !DILocation(line: 115, column: 51, scope: !174)
!180 = !DILocation(line: 115, column: 59, scope: !174)
!181 = !DILocation(line: 115, column: 13, scope: !174)
!182 = !DILocation(line: 116, column: 9, scope: !174)
!183 = !DILocation(line: 118, column: 20, scope: !154)
!184 = !DILocation(line: 119, column: 21, scope: !154)
!185 = !DILocation(line: 119, column: 27, scope: !154)
!186 = !DILocation(line: 119, column: 5, scope: !154)
!187 = !DILocation(line: 120, column: 1, scope: !154)
!188 = distinct !DISubprogram(name: "goodB2G2_vasink", scope: !3, file: !3, line: 123, type: !62, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!189 = !DILocalVariable(name: "data", arg: 1, scope: !188, file: !3, line: 123, type: !55)
!190 = !DILocation(line: 123, column: 29, scope: !188)
!191 = !DILocation(line: 125, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !3, line: 125, column: 8)
!193 = !DILocation(line: 125, column: 8, scope: !188)
!194 = !DILocalVariable(name: "args", scope: !195, file: !3, line: 128, type: !72)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 127, column: 9)
!196 = distinct !DILexicalBlock(scope: !192, file: !3, line: 126, column: 5)
!197 = !DILocation(line: 128, column: 21, scope: !195)
!198 = !DILocation(line: 129, column: 13, scope: !195)
!199 = !DILocation(line: 131, column: 27, scope: !195)
!200 = !DILocation(line: 131, column: 13, scope: !195)
!201 = !DILocation(line: 132, column: 13, scope: !195)
!202 = !DILocation(line: 134, column: 5, scope: !196)
!203 = !DILocation(line: 135, column: 1, scope: !188)
!204 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 137, type: !95, scopeLine: 138, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!205 = !DILocalVariable(name: "data", scope: !204, file: !3, line: 139, type: !55)
!206 = !DILocation(line: 139, column: 12, scope: !204)
!207 = !DILocalVariable(name: "dataBuffer", scope: !204, file: !3, line: 140, type: !100)
!208 = !DILocation(line: 140, column: 10, scope: !204)
!209 = !DILocation(line: 141, column: 12, scope: !204)
!210 = !DILocation(line: 141, column: 10, scope: !204)
!211 = !DILocalVariable(name: "dataLen", scope: !212, file: !3, line: 144, type: !108)
!212 = distinct !DILexicalBlock(scope: !204, file: !3, line: 142, column: 5)
!213 = !DILocation(line: 144, column: 16, scope: !212)
!214 = !DILocation(line: 144, column: 33, scope: !212)
!215 = !DILocation(line: 144, column: 26, scope: !212)
!216 = !DILocalVariable(name: "environment", scope: !212, file: !3, line: 145, type: !55)
!217 = !DILocation(line: 145, column: 16, scope: !212)
!218 = !DILocation(line: 145, column: 30, scope: !212)
!219 = !DILocation(line: 147, column: 13, scope: !220)
!220 = distinct !DILexicalBlock(scope: !212, file: !3, line: 147, column: 13)
!221 = !DILocation(line: 147, column: 25, scope: !220)
!222 = !DILocation(line: 147, column: 13, scope: !212)
!223 = !DILocation(line: 150, column: 21, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !3, line: 148, column: 9)
!225 = !DILocation(line: 150, column: 26, scope: !224)
!226 = !DILocation(line: 150, column: 25, scope: !224)
!227 = !DILocation(line: 150, column: 35, scope: !224)
!228 = !DILocation(line: 150, column: 52, scope: !224)
!229 = !DILocation(line: 150, column: 51, scope: !224)
!230 = !DILocation(line: 150, column: 59, scope: !224)
!231 = !DILocation(line: 150, column: 13, scope: !224)
!232 = !DILocation(line: 151, column: 9, scope: !224)
!233 = !DILocation(line: 153, column: 20, scope: !204)
!234 = !DILocation(line: 154, column: 21, scope: !204)
!235 = !DILocation(line: 154, column: 27, scope: !204)
!236 = !DILocation(line: 154, column: 5, scope: !204)
!237 = !DILocation(line: 155, column: 1, scope: !204)
!238 = distinct !DISubprogram(name: "goodG2BVaSink", scope: !3, file: !3, line: 158, type: !62, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!239 = !DILocalVariable(name: "data", arg: 1, scope: !238, file: !3, line: 158, type: !55)
!240 = !DILocation(line: 158, column: 27, scope: !238)
!241 = !DILocation(line: 160, column: 8, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !3, line: 160, column: 8)
!243 = !DILocation(line: 160, column: 8, scope: !238)
!244 = !DILocalVariable(name: "args", scope: !245, file: !3, line: 163, type: !72)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 162, column: 9)
!246 = distinct !DILexicalBlock(scope: !242, file: !3, line: 161, column: 5)
!247 = !DILocation(line: 163, column: 21, scope: !245)
!248 = !DILocation(line: 164, column: 13, scope: !245)
!249 = !DILocation(line: 166, column: 21, scope: !245)
!250 = !DILocation(line: 166, column: 27, scope: !245)
!251 = !DILocation(line: 166, column: 13, scope: !245)
!252 = !DILocation(line: 167, column: 13, scope: !245)
!253 = !DILocation(line: 169, column: 5, scope: !246)
!254 = !DILocation(line: 170, column: 1, scope: !238)
!255 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 172, type: !95, scopeLine: 173, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!256 = !DILocalVariable(name: "data", scope: !255, file: !3, line: 174, type: !55)
!257 = !DILocation(line: 174, column: 12, scope: !255)
!258 = !DILocalVariable(name: "dataBuffer", scope: !255, file: !3, line: 175, type: !100)
!259 = !DILocation(line: 175, column: 10, scope: !255)
!260 = !DILocation(line: 176, column: 12, scope: !255)
!261 = !DILocation(line: 176, column: 10, scope: !255)
!262 = !DILocation(line: 178, column: 12, scope: !255)
!263 = !DILocation(line: 178, column: 5, scope: !255)
!264 = !DILocation(line: 179, column: 19, scope: !255)
!265 = !DILocation(line: 180, column: 19, scope: !255)
!266 = !DILocation(line: 180, column: 25, scope: !255)
!267 = !DILocation(line: 180, column: 5, scope: !255)
!268 = !DILocation(line: 181, column: 1, scope: !255)
!269 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_good", scope: !3, file: !3, line: 183, type: !95, scopeLine: 184, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!270 = !DILocation(line: 185, column: 5, scope: !269)
!271 = !DILocation(line: 186, column: 5, scope: !269)
!272 = !DILocation(line: 187, column: 5, scope: !269)
!273 = !DILocation(line: 188, column: 1, scope: !269)
!274 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !275, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !55}
!277 = !DILocalVariable(name: "line", arg: 1, scope: !274, file: !18, line: 11, type: !55)
!278 = !DILocation(line: 11, column: 25, scope: !274)
!279 = !DILocation(line: 13, column: 1, scope: !274)
!280 = !DILocation(line: 14, column: 8, scope: !281)
!281 = distinct !DILexicalBlock(scope: !274, file: !18, line: 14, column: 8)
!282 = !DILocation(line: 14, column: 13, scope: !281)
!283 = !DILocation(line: 14, column: 8, scope: !274)
!284 = !DILocation(line: 16, column: 24, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !18, line: 15, column: 5)
!286 = !DILocation(line: 16, column: 9, scope: !285)
!287 = !DILocation(line: 17, column: 5, scope: !285)
!288 = !DILocation(line: 18, column: 5, scope: !274)
!289 = !DILocation(line: 19, column: 1, scope: !274)
!290 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !275, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!291 = !DILocalVariable(name: "line", arg: 1, scope: !290, file: !18, line: 20, type: !55)
!292 = !DILocation(line: 20, column: 29, scope: !290)
!293 = !DILocation(line: 22, column: 8, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !18, line: 22, column: 8)
!295 = !DILocation(line: 22, column: 13, scope: !294)
!296 = !DILocation(line: 22, column: 8, scope: !290)
!297 = !DILocation(line: 24, column: 24, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !18, line: 23, column: 5)
!299 = !DILocation(line: 24, column: 9, scope: !298)
!300 = !DILocation(line: 25, column: 5, scope: !298)
!301 = !DILocation(line: 26, column: 1, scope: !290)
!302 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !303, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !109, line: 74, baseType: !10)
!307 = !DILocalVariable(name: "line", arg: 1, scope: !302, file: !18, line: 27, type: !305)
!308 = !DILocation(line: 27, column: 29, scope: !302)
!309 = !DILocation(line: 29, column: 8, scope: !310)
!310 = distinct !DILexicalBlock(scope: !302, file: !18, line: 29, column: 8)
!311 = !DILocation(line: 29, column: 13, scope: !310)
!312 = !DILocation(line: 29, column: 8, scope: !302)
!313 = !DILocation(line: 31, column: 27, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !18, line: 30, column: 5)
!315 = !DILocation(line: 31, column: 9, scope: !314)
!316 = !DILocation(line: 32, column: 5, scope: !314)
!317 = !DILocation(line: 33, column: 1, scope: !302)
!318 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !319, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !10}
!321 = !DILocalVariable(name: "intNumber", arg: 1, scope: !318, file: !18, line: 35, type: !10)
!322 = !DILocation(line: 35, column: 24, scope: !318)
!323 = !DILocation(line: 37, column: 20, scope: !318)
!324 = !DILocation(line: 37, column: 5, scope: !318)
!325 = !DILocation(line: 38, column: 1, scope: !318)
!326 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !327, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329}
!329 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!330 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !326, file: !18, line: 40, type: !329)
!331 = !DILocation(line: 40, column: 28, scope: !326)
!332 = !DILocation(line: 42, column: 21, scope: !326)
!333 = !DILocation(line: 42, column: 5, scope: !326)
!334 = !DILocation(line: 43, column: 1, scope: !326)
!335 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !336, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338}
!338 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!339 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !335, file: !18, line: 45, type: !338)
!340 = !DILocation(line: 45, column: 28, scope: !335)
!341 = !DILocation(line: 47, column: 20, scope: !335)
!342 = !DILocation(line: 47, column: 5, scope: !335)
!343 = !DILocation(line: 48, column: 1, scope: !335)
!344 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !345, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347}
!347 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!348 = !DILocalVariable(name: "longNumber", arg: 1, scope: !344, file: !18, line: 50, type: !347)
!349 = !DILocation(line: 50, column: 26, scope: !344)
!350 = !DILocation(line: 52, column: 21, scope: !344)
!351 = !DILocation(line: 52, column: 5, scope: !344)
!352 = !DILocation(line: 53, column: 1, scope: !344)
!353 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !354, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !357, line: 27, baseType: !358)
!357 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !359, line: 44, baseType: !347)
!359 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!360 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !353, file: !18, line: 55, type: !356)
!361 = !DILocation(line: 55, column: 33, scope: !353)
!362 = !DILocation(line: 57, column: 29, scope: !353)
!363 = !DILocation(line: 57, column: 5, scope: !353)
!364 = !DILocation(line: 58, column: 1, scope: !353)
!365 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !366, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !108}
!368 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !365, file: !18, line: 60, type: !108)
!369 = !DILocation(line: 60, column: 29, scope: !365)
!370 = !DILocation(line: 62, column: 21, scope: !365)
!371 = !DILocation(line: 62, column: 5, scope: !365)
!372 = !DILocation(line: 63, column: 1, scope: !365)
!373 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !374, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !56}
!376 = !DILocalVariable(name: "charHex", arg: 1, scope: !373, file: !18, line: 65, type: !56)
!377 = !DILocation(line: 65, column: 29, scope: !373)
!378 = !DILocation(line: 67, column: 22, scope: !373)
!379 = !DILocation(line: 67, column: 5, scope: !373)
!380 = !DILocation(line: 68, column: 1, scope: !373)
!381 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !382, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !306}
!384 = !DILocalVariable(name: "wideChar", arg: 1, scope: !381, file: !18, line: 70, type: !306)
!385 = !DILocation(line: 70, column: 29, scope: !381)
!386 = !DILocalVariable(name: "s", scope: !381, file: !18, line: 74, type: !387)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 64, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 2)
!390 = !DILocation(line: 74, column: 13, scope: !381)
!391 = !DILocation(line: 75, column: 16, scope: !381)
!392 = !DILocation(line: 75, column: 9, scope: !381)
!393 = !DILocation(line: 75, column: 14, scope: !381)
!394 = !DILocation(line: 76, column: 9, scope: !381)
!395 = !DILocation(line: 76, column: 14, scope: !381)
!396 = !DILocation(line: 77, column: 21, scope: !381)
!397 = !DILocation(line: 77, column: 5, scope: !381)
!398 = !DILocation(line: 78, column: 1, scope: !381)
!399 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !400, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !22}
!402 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !399, file: !18, line: 80, type: !22)
!403 = !DILocation(line: 80, column: 33, scope: !399)
!404 = !DILocation(line: 82, column: 20, scope: !399)
!405 = !DILocation(line: 82, column: 5, scope: !399)
!406 = !DILocation(line: 83, column: 1, scope: !399)
!407 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !408, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !38}
!410 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !407, file: !18, line: 85, type: !38)
!411 = !DILocation(line: 85, column: 45, scope: !407)
!412 = !DILocation(line: 87, column: 22, scope: !407)
!413 = !DILocation(line: 87, column: 5, scope: !407)
!414 = !DILocation(line: 88, column: 1, scope: !407)
!415 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !416, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !418}
!418 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!419 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !415, file: !18, line: 90, type: !418)
!420 = !DILocation(line: 90, column: 29, scope: !415)
!421 = !DILocation(line: 92, column: 20, scope: !415)
!422 = !DILocation(line: 92, column: 5, scope: !415)
!423 = !DILocation(line: 93, column: 1, scope: !415)
!424 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !425, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !429, line: 100, baseType: !430)
!429 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_884/source_code")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !429, line: 96, size: 64, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !430, file: !429, line: 98, baseType: !10, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !430, file: !429, line: 99, baseType: !10, size: 32, offset: 32)
!434 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !424, file: !18, line: 95, type: !427)
!435 = !DILocation(line: 95, column: 40, scope: !424)
!436 = !DILocation(line: 97, column: 26, scope: !424)
!437 = !DILocation(line: 97, column: 47, scope: !424)
!438 = !DILocation(line: 97, column: 55, scope: !424)
!439 = !DILocation(line: 97, column: 76, scope: !424)
!440 = !DILocation(line: 97, column: 5, scope: !424)
!441 = !DILocation(line: 98, column: 1, scope: !424)
!442 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !443, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !445, !108}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!446 = !DILocalVariable(name: "bytes", arg: 1, scope: !442, file: !18, line: 100, type: !445)
!447 = !DILocation(line: 100, column: 38, scope: !442)
!448 = !DILocalVariable(name: "numBytes", arg: 2, scope: !442, file: !18, line: 100, type: !108)
!449 = !DILocation(line: 100, column: 52, scope: !442)
!450 = !DILocalVariable(name: "i", scope: !442, file: !18, line: 102, type: !108)
!451 = !DILocation(line: 102, column: 12, scope: !442)
!452 = !DILocation(line: 103, column: 12, scope: !453)
!453 = distinct !DILexicalBlock(scope: !442, file: !18, line: 103, column: 5)
!454 = !DILocation(line: 103, column: 10, scope: !453)
!455 = !DILocation(line: 103, column: 17, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !18, line: 103, column: 5)
!457 = !DILocation(line: 103, column: 21, scope: !456)
!458 = !DILocation(line: 103, column: 19, scope: !456)
!459 = !DILocation(line: 103, column: 5, scope: !453)
!460 = !DILocation(line: 105, column: 24, scope: !461)
!461 = distinct !DILexicalBlock(scope: !456, file: !18, line: 104, column: 5)
!462 = !DILocation(line: 105, column: 30, scope: !461)
!463 = !DILocation(line: 105, column: 9, scope: !461)
!464 = !DILocation(line: 106, column: 5, scope: !461)
!465 = !DILocation(line: 103, column: 31, scope: !456)
!466 = !DILocation(line: 103, column: 5, scope: !456)
!467 = distinct !{!467, !459, !468, !469}
!468 = !DILocation(line: 106, column: 5, scope: !453)
!469 = !{!"llvm.loop.mustprogress"}
!470 = !DILocation(line: 107, column: 5, scope: !442)
!471 = !DILocation(line: 108, column: 1, scope: !442)
!472 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !473, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!473 = !DISubroutineType(types: !474)
!474 = !{!108, !445, !108, !55}
!475 = !DILocalVariable(name: "bytes", arg: 1, scope: !472, file: !18, line: 113, type: !445)
!476 = !DILocation(line: 113, column: 39, scope: !472)
!477 = !DILocalVariable(name: "numBytes", arg: 2, scope: !472, file: !18, line: 113, type: !108)
!478 = !DILocation(line: 113, column: 53, scope: !472)
!479 = !DILocalVariable(name: "hex", arg: 3, scope: !472, file: !18, line: 113, type: !55)
!480 = !DILocation(line: 113, column: 71, scope: !472)
!481 = !DILocalVariable(name: "numWritten", scope: !472, file: !18, line: 115, type: !108)
!482 = !DILocation(line: 115, column: 12, scope: !472)
!483 = !DILocation(line: 121, column: 5, scope: !472)
!484 = !DILocation(line: 121, column: 12, scope: !472)
!485 = !DILocation(line: 121, column: 25, scope: !472)
!486 = !DILocation(line: 121, column: 23, scope: !472)
!487 = !DILocation(line: 121, column: 34, scope: !472)
!488 = !DILocation(line: 121, column: 37, scope: !472)
!489 = !DILocation(line: 121, column: 67, scope: !472)
!490 = !DILocation(line: 121, column: 70, scope: !472)
!491 = !DILocation(line: 0, scope: !472)
!492 = !DILocalVariable(name: "byte", scope: !493, file: !18, line: 123, type: !10)
!493 = distinct !DILexicalBlock(scope: !472, file: !18, line: 122, column: 5)
!494 = !DILocation(line: 123, column: 13, scope: !493)
!495 = !DILocation(line: 124, column: 17, scope: !493)
!496 = !DILocation(line: 124, column: 25, scope: !493)
!497 = !DILocation(line: 124, column: 23, scope: !493)
!498 = !DILocation(line: 124, column: 9, scope: !493)
!499 = !DILocation(line: 125, column: 45, scope: !493)
!500 = !DILocation(line: 125, column: 29, scope: !493)
!501 = !DILocation(line: 125, column: 9, scope: !493)
!502 = !DILocation(line: 125, column: 15, scope: !493)
!503 = !DILocation(line: 125, column: 27, scope: !493)
!504 = !DILocation(line: 126, column: 9, scope: !493)
!505 = distinct !{!505, !483, !506, !469}
!506 = !DILocation(line: 127, column: 5, scope: !472)
!507 = !DILocation(line: 129, column: 12, scope: !472)
!508 = !DILocation(line: 129, column: 5, scope: !472)
!509 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !510, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!510 = !DISubroutineType(types: !511)
!511 = !{!108, !445, !108, !305}
!512 = !DILocalVariable(name: "bytes", arg: 1, scope: !509, file: !18, line: 135, type: !445)
!513 = !DILocation(line: 135, column: 41, scope: !509)
!514 = !DILocalVariable(name: "numBytes", arg: 2, scope: !509, file: !18, line: 135, type: !108)
!515 = !DILocation(line: 135, column: 55, scope: !509)
!516 = !DILocalVariable(name: "hex", arg: 3, scope: !509, file: !18, line: 135, type: !305)
!517 = !DILocation(line: 135, column: 76, scope: !509)
!518 = !DILocalVariable(name: "numWritten", scope: !509, file: !18, line: 137, type: !108)
!519 = !DILocation(line: 137, column: 12, scope: !509)
!520 = !DILocation(line: 143, column: 5, scope: !509)
!521 = !DILocation(line: 143, column: 12, scope: !509)
!522 = !DILocation(line: 143, column: 25, scope: !509)
!523 = !DILocation(line: 143, column: 23, scope: !509)
!524 = !DILocation(line: 143, column: 34, scope: !509)
!525 = !DILocation(line: 143, column: 47, scope: !509)
!526 = !DILocation(line: 143, column: 55, scope: !509)
!527 = !DILocation(line: 143, column: 53, scope: !509)
!528 = !DILocation(line: 143, column: 37, scope: !509)
!529 = !DILocation(line: 143, column: 68, scope: !509)
!530 = !DILocation(line: 143, column: 81, scope: !509)
!531 = !DILocation(line: 143, column: 89, scope: !509)
!532 = !DILocation(line: 143, column: 87, scope: !509)
!533 = !DILocation(line: 143, column: 100, scope: !509)
!534 = !DILocation(line: 143, column: 71, scope: !509)
!535 = !DILocation(line: 0, scope: !509)
!536 = !DILocalVariable(name: "byte", scope: !537, file: !18, line: 145, type: !10)
!537 = distinct !DILexicalBlock(scope: !509, file: !18, line: 144, column: 5)
!538 = !DILocation(line: 145, column: 13, scope: !537)
!539 = !DILocation(line: 146, column: 18, scope: !537)
!540 = !DILocation(line: 146, column: 26, scope: !537)
!541 = !DILocation(line: 146, column: 24, scope: !537)
!542 = !DILocation(line: 146, column: 9, scope: !537)
!543 = !DILocation(line: 147, column: 45, scope: !537)
!544 = !DILocation(line: 147, column: 29, scope: !537)
!545 = !DILocation(line: 147, column: 9, scope: !537)
!546 = !DILocation(line: 147, column: 15, scope: !537)
!547 = !DILocation(line: 147, column: 27, scope: !537)
!548 = !DILocation(line: 148, column: 9, scope: !537)
!549 = distinct !{!549, !520, !550, !469}
!550 = !DILocation(line: 149, column: 5, scope: !509)
!551 = !DILocation(line: 151, column: 12, scope: !509)
!552 = !DILocation(line: 151, column: 5, scope: !509)
!553 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !554, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!554 = !DISubroutineType(types: !555)
!555 = !{!10}
!556 = !DILocation(line: 158, column: 5, scope: !553)
!557 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !554, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!558 = !DILocation(line: 163, column: 5, scope: !557)
!559 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !554, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!560 = !DILocation(line: 168, column: 13, scope: !559)
!561 = !DILocation(line: 168, column: 20, scope: !559)
!562 = !DILocation(line: 168, column: 5, scope: !559)
!563 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !95, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!564 = !DILocation(line: 187, column: 16, scope: !563)
!565 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !95, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!566 = !DILocation(line: 188, column: 16, scope: !565)
!567 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !95, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!568 = !DILocation(line: 189, column: 16, scope: !567)
!569 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !95, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!570 = !DILocation(line: 190, column: 16, scope: !569)
!571 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !95, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!572 = !DILocation(line: 191, column: 16, scope: !571)
!573 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !95, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!574 = !DILocation(line: 192, column: 16, scope: !573)
!575 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !95, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!576 = !DILocation(line: 193, column: 16, scope: !575)
!577 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !95, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!578 = !DILocation(line: 194, column: 16, scope: !577)
!579 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !95, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!580 = !DILocation(line: 195, column: 16, scope: !579)
!581 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !95, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!582 = !DILocation(line: 198, column: 15, scope: !581)
!583 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !95, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!584 = !DILocation(line: 199, column: 15, scope: !583)
!585 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !95, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!586 = !DILocation(line: 200, column: 15, scope: !585)
!587 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !95, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!588 = !DILocation(line: 201, column: 15, scope: !587)
!589 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !95, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!590 = !DILocation(line: 202, column: 15, scope: !589)
!591 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !95, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!592 = !DILocation(line: 203, column: 15, scope: !591)
!593 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !95, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!594 = !DILocation(line: 204, column: 15, scope: !593)
!595 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !95, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!596 = !DILocation(line: 205, column: 15, scope: !595)
!597 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !95, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!598 = !DILocation(line: 206, column: 15, scope: !597)
