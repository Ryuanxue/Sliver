; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType = type { i8* }
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
@.str.3.10 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8.13 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_67_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, metadata !59, metadata !DIExpression()), !dbg !65
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
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, i32 0, i32 0, !dbg !99
  store i8* %7, i8** %structFirst, align 8, !dbg !100
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, i32 0, i32 0, !dbg !101
  %8 = load i8*, i8** %coerce.dive, align 8, !dbg !101
  call void @CWE606_Unchecked_Loop_Condition__char_environment_67b_badSink(i8* %8), !dbg !101
  ret void, !dbg !102
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
define dso_local void @goodG2B() #0 !dbg !103 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !108, metadata !DIExpression()), !dbg !109
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !109
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !109
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !110
  store i8* %arraydecay, i8** %data, align 8, !dbg !111
  %1 = load i8*, i8** %data, align 8, !dbg !112
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !113
  %2 = load i8*, i8** %data, align 8, !dbg !114
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, i32 0, i32 0, !dbg !115
  store i8* %2, i8** %structFirst, align 8, !dbg !116
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, i32 0, i32 0, !dbg !117
  %3 = load i8*, i8** %coerce.dive, align 8, !dbg !117
  call void @CWE606_Unchecked_Loop_Condition__char_environment_67b_goodG2BSink(i8* %3), !dbg !117
  ret void, !dbg !118
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !119 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, metadata !122, metadata !DIExpression()), !dbg !123
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
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, i32 0, i32 0, !dbg !151
  store i8* %7, i8** %structFirst, align 8, !dbg !152
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, i32 0, i32 0, !dbg !153
  %8 = load i8*, i8** %coerce.dive, align 8, !dbg !153
  call void @CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink(i8* %8), !dbg !153
  ret void, !dbg !154
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_67_good() #0 !dbg !155 {
entry:
  call void @goodG2B(), !dbg !156
  call void @goodB2G(), !dbg !157
  ret void, !dbg !158
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_67b_badSink(i8* %myStruct.coerce) #0 !dbg !159 {
entry:
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata i8** %data, metadata !168, metadata !DIExpression()), !dbg !169
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, i32 0, i32 0, !dbg !170
  %0 = load i8*, i8** %structFirst, align 8, !dbg !170
  store i8* %0, i8** %data, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata i32* %i, metadata !171, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %n, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !176, metadata !DIExpression()), !dbg !177
  %1 = load i8*, i8** %data, align 8, !dbg !178
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !180
  %cmp = icmp eq i32 %call, 1, !dbg !181
  br i1 %cmp, label %if.then, label %if.end, !dbg !182

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !183
  store i32 0, i32* %i, align 4, !dbg !185
  br label %for.cond, !dbg !187

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !188
  %3 = load i32, i32* %n, align 4, !dbg !190
  %cmp1 = icmp slt i32 %2, %3, !dbg !191
  br i1 %cmp1, label %for.body, label %for.end, !dbg !192

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !193
  %inc = add nsw i32 %4, 1, !dbg !193
  store i32 %inc, i32* %intVariable, align 4, !dbg !193
  br label %for.inc, !dbg !195

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !196
  %inc2 = add nsw i32 %5, 1, !dbg !196
  store i32 %inc2, i32* %i, align 4, !dbg !196
  br label %for.cond, !dbg !197, !llvm.loop !198

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !201
  call void @printIntLine(i32 %6), !dbg !202
  br label %if.end, !dbg !203

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !204
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_67b_goodG2BSink(i8* %myStruct.coerce) #0 !dbg !205 {
entry:
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata i8** %data, metadata !208, metadata !DIExpression()), !dbg !209
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, i32 0, i32 0, !dbg !210
  %0 = load i8*, i8** %structFirst, align 8, !dbg !210
  store i8* %0, i8** %data, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata i32* %i, metadata !211, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %n, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !216, metadata !DIExpression()), !dbg !217
  %1 = load i8*, i8** %data, align 8, !dbg !218
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !220
  %cmp = icmp eq i32 %call, 1, !dbg !221
  br i1 %cmp, label %if.then, label %if.end, !dbg !222

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !223
  store i32 0, i32* %i, align 4, !dbg !225
  br label %for.cond, !dbg !227

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !228
  %3 = load i32, i32* %n, align 4, !dbg !230
  %cmp1 = icmp slt i32 %2, %3, !dbg !231
  br i1 %cmp1, label %for.body, label %for.end, !dbg !232

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !233
  %inc = add nsw i32 %4, 1, !dbg !233
  store i32 %inc, i32* %intVariable, align 4, !dbg !233
  br label %for.inc, !dbg !235

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !236
  %inc2 = add nsw i32 %5, 1, !dbg !236
  store i32 %inc2, i32* %i, align 4, !dbg !236
  br label %for.cond, !dbg !237, !llvm.loop !238

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !240
  call void @printIntLine(i32 %6), !dbg !241
  br label %if.end, !dbg !242

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink(i8* %myStruct.coerce) #0 !dbg !244 {
entry:
  %myStruct = alloca %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i8** %data, metadata !247, metadata !DIExpression()), !dbg !248
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %myStruct, i32 0, i32 0, !dbg !249
  %0 = load i8*, i8** %structFirst, align 8, !dbg !249
  store i8* %0, i8** %data, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata i32* %i, metadata !250, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i32* %n, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !255, metadata !DIExpression()), !dbg !256
  %1 = load i8*, i8** %data, align 8, !dbg !257
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !259
  %cmp = icmp eq i32 %call, 1, !dbg !260
  br i1 %cmp, label %if.then, label %if.end5, !dbg !261

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !262
  %cmp1 = icmp slt i32 %2, 10000, !dbg !265
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !266

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !267
  store i32 0, i32* %i, align 4, !dbg !269
  br label %for.cond, !dbg !271

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !272
  %4 = load i32, i32* %n, align 4, !dbg !274
  %cmp3 = icmp slt i32 %3, %4, !dbg !275
  br i1 %cmp3, label %for.body, label %for.end, !dbg !276

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !277
  %inc = add nsw i32 %5, 1, !dbg !277
  store i32 %inc, i32* %intVariable, align 4, !dbg !277
  br label %for.inc, !dbg !279

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !280
  %inc4 = add nsw i32 %6, 1, !dbg !280
  store i32 %inc4, i32* %i, align 4, !dbg !280
  br label %for.cond, !dbg !281, !llvm.loop !282

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !284
  call void @printIntLine(i32 %7), !dbg !285
  br label %if.end, !dbg !286

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !287

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !288
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !289 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !292, metadata !DIExpression()), !dbg !293
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !294
  %0 = load i8*, i8** %line.addr, align 8, !dbg !295
  %cmp = icmp ne i8* %0, null, !dbg !297
  br i1 %cmp, label %if.then, label %if.end, !dbg !298

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !299
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !301
  br label %if.end, !dbg !302

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !303
  ret void, !dbg !304
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !305 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load i8*, i8** %line.addr, align 8, !dbg !308
  %cmp = icmp ne i8* %0, null, !dbg !310
  br i1 %cmp, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !312
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !314
  br label %if.end, !dbg !315

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !317 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load i32*, i32** %line.addr, align 8, !dbg !324
  %cmp = icmp ne i32* %0, null, !dbg !326
  br i1 %cmp, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !328
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !330
  br label %if.end, !dbg !331

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !332
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !333 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !338
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !341 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !345, metadata !DIExpression()), !dbg !346
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !347
  %conv = sext i16 %0 to i32, !dbg !347
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !348
  ret void, !dbg !349
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !350 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !354, metadata !DIExpression()), !dbg !355
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !356
  %conv = fpext float %0 to double, !dbg !356
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !357
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !359 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !368 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !377
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !378
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !380 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.13, i64 0, i64 0), i64 %0), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !388 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !393
  %conv = sext i8 %0 to i32, !dbg !393
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !396 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !401, metadata !DIExpression()), !dbg !405
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !406
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !407
  store i32 %0, i32* %arrayidx, align 4, !dbg !408
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !409
  store i32 0, i32* %arrayidx1, align 4, !dbg !410
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !414 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !422 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !427
  %conv = zext i8 %0 to i32, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !430 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !439 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !451
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !452
  %1 = load i32, i32* %intOne, align 4, !dbg !452
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !453
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !454
  %3 = load i32, i32* %intTwo, align 4, !dbg !454
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !455
  ret void, !dbg !456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !457 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !461, metadata !DIExpression()), !dbg !462
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !463, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata i64* %i, metadata !465, metadata !DIExpression()), !dbg !466
  store i64 0, i64* %i, align 8, !dbg !467
  br label %for.cond, !dbg !469

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !470
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !472
  %cmp = icmp ult i64 %0, %1, !dbg !473
  br i1 %cmp, label %for.body, label %for.end, !dbg !474

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !475
  %3 = load i64, i64* %i, align 8, !dbg !477
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !475
  %4 = load i8, i8* %arrayidx, align 1, !dbg !475
  %conv = zext i8 %4 to i32, !dbg !475
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !478
  br label %for.inc, !dbg !479

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !480
  %inc = add i64 %5, 1, !dbg !480
  store i64 %inc, i64* %i, align 8, !dbg !480
  br label %for.cond, !dbg !481, !llvm.loop !482

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !484
  ret void, !dbg !485
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !486 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !489, metadata !DIExpression()), !dbg !490
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !491, metadata !DIExpression()), !dbg !492
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !493, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !495, metadata !DIExpression()), !dbg !496
  store i64 0, i64* %numWritten, align 8, !dbg !496
  br label %while.cond, !dbg !497

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !498
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !499
  %cmp = icmp ult i64 %0, %1, !dbg !500
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !501

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !502
  %2 = load i16*, i16** %call, align 8, !dbg !502
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !502
  %4 = load i64, i64* %numWritten, align 8, !dbg !502
  %mul = mul i64 2, %4, !dbg !502
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !502
  %5 = load i8, i8* %arrayidx, align 1, !dbg !502
  %conv = sext i8 %5 to i32, !dbg !502
  %idxprom = sext i32 %conv to i64, !dbg !502
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !502
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !502
  %conv2 = zext i16 %6 to i32, !dbg !502
  %and = and i32 %conv2, 4096, !dbg !502
  %tobool = icmp ne i32 %and, 0, !dbg !502
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !503

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !504
  %7 = load i16*, i16** %call3, align 8, !dbg !504
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !504
  %9 = load i64, i64* %numWritten, align 8, !dbg !504
  %mul4 = mul i64 2, %9, !dbg !504
  %add = add i64 %mul4, 1, !dbg !504
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !504
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !504
  %conv6 = sext i8 %10 to i32, !dbg !504
  %idxprom7 = sext i32 %conv6 to i64, !dbg !504
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !504
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !504
  %conv9 = zext i16 %11 to i32, !dbg !504
  %and10 = and i32 %conv9, 4096, !dbg !504
  %tobool11 = icmp ne i32 %and10, 0, !dbg !503
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !505
  br i1 %12, label %while.body, label %while.end, !dbg !497

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !506, metadata !DIExpression()), !dbg !508
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !509
  %14 = load i64, i64* %numWritten, align 8, !dbg !510
  %mul12 = mul i64 2, %14, !dbg !511
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !509
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !512
  %15 = load i32, i32* %byte, align 4, !dbg !513
  %conv15 = trunc i32 %15 to i8, !dbg !514
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !515
  %17 = load i64, i64* %numWritten, align 8, !dbg !516
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !515
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !517
  %18 = load i64, i64* %numWritten, align 8, !dbg !518
  %inc = add i64 %18, 1, !dbg !518
  store i64 %inc, i64* %numWritten, align 8, !dbg !518
  br label %while.cond, !dbg !497, !llvm.loop !519

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !521
  ret i64 %19, !dbg !522
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !523 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !526, metadata !DIExpression()), !dbg !527
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !528, metadata !DIExpression()), !dbg !529
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !532, metadata !DIExpression()), !dbg !533
  store i64 0, i64* %numWritten, align 8, !dbg !533
  br label %while.cond, !dbg !534

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !535
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !536
  %cmp = icmp ult i64 %0, %1, !dbg !537
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !538

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !539
  %3 = load i64, i64* %numWritten, align 8, !dbg !540
  %mul = mul i64 2, %3, !dbg !541
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !539
  %4 = load i32, i32* %arrayidx, align 4, !dbg !539
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !542
  %tobool = icmp ne i32 %call, 0, !dbg !542
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !543

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !544
  %6 = load i64, i64* %numWritten, align 8, !dbg !545
  %mul1 = mul i64 2, %6, !dbg !546
  %add = add i64 %mul1, 1, !dbg !547
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !544
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !544
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !548
  %tobool4 = icmp ne i32 %call3, 0, !dbg !543
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !549
  br i1 %8, label %while.body, label %while.end, !dbg !534

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !550, metadata !DIExpression()), !dbg !552
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !553
  %10 = load i64, i64* %numWritten, align 8, !dbg !554
  %mul5 = mul i64 2, %10, !dbg !555
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !553
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !556
  %11 = load i32, i32* %byte, align 4, !dbg !557
  %conv = trunc i32 %11 to i8, !dbg !558
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !559
  %13 = load i64, i64* %numWritten, align 8, !dbg !560
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !559
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !561
  %14 = load i64, i64* %numWritten, align 8, !dbg !562
  %inc = add i64 %14, 1, !dbg !562
  store i64 %inc, i64* %numWritten, align 8, !dbg !562
  br label %while.cond, !dbg !534, !llvm.loop !563

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !565
  ret i64 %15, !dbg !566
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !567 {
entry:
  ret i32 1, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !571 {
entry:
  ret i32 0, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !573 {
entry:
  %call = call i32 @rand() #8, !dbg !574
  %rem = srem i32 %call, 2, !dbg !575
  ret i32 %rem, !dbg !576
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !611 {
entry:
  ret void, !dbg !612
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_065/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_67a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_065/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_67b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_065/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_67_bad", scope: !45, file: !45, line: 40, type: !55, scopeLine: 41, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 42, type: !42)
!58 = !DILocation(line: 42, column: 12, scope: !54)
!59 = !DILocalVariable(name: "myStruct", scope: !54, file: !45, line: 43, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_environment_67_structType", file: !61, line: 8, baseType: !62)
!61 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_065/source_code")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE606_Unchecked_Loop_Condition__char_environment_67_structType", file: !61, line: 5, size: 64, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !62, file: !61, line: 7, baseType: !42, size: 64)
!65 = !DILocation(line: 43, column: 69, scope: !54)
!66 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 44, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 100)
!70 = !DILocation(line: 44, column: 10, scope: !54)
!71 = !DILocation(line: 45, column: 12, scope: !54)
!72 = !DILocation(line: 45, column: 10, scope: !54)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 48, type: !75)
!74 = distinct !DILexicalBlock(scope: !54, file: !45, line: 46, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 48, column: 16, scope: !74)
!79 = !DILocation(line: 48, column: 33, scope: !74)
!80 = !DILocation(line: 48, column: 26, scope: !74)
!81 = !DILocalVariable(name: "environment", scope: !74, file: !45, line: 49, type: !42)
!82 = !DILocation(line: 49, column: 16, scope: !74)
!83 = !DILocation(line: 49, column: 30, scope: !74)
!84 = !DILocation(line: 51, column: 13, scope: !85)
!85 = distinct !DILexicalBlock(scope: !74, file: !45, line: 51, column: 13)
!86 = !DILocation(line: 51, column: 25, scope: !85)
!87 = !DILocation(line: 51, column: 13, scope: !74)
!88 = !DILocation(line: 54, column: 21, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !45, line: 52, column: 9)
!90 = !DILocation(line: 54, column: 26, scope: !89)
!91 = !DILocation(line: 54, column: 25, scope: !89)
!92 = !DILocation(line: 54, column: 35, scope: !89)
!93 = !DILocation(line: 54, column: 52, scope: !89)
!94 = !DILocation(line: 54, column: 51, scope: !89)
!95 = !DILocation(line: 54, column: 59, scope: !89)
!96 = !DILocation(line: 54, column: 13, scope: !89)
!97 = !DILocation(line: 55, column: 9, scope: !89)
!98 = !DILocation(line: 57, column: 28, scope: !54)
!99 = !DILocation(line: 57, column: 14, scope: !54)
!100 = !DILocation(line: 57, column: 26, scope: !54)
!101 = !DILocation(line: 58, column: 5, scope: !54)
!102 = !DILocation(line: 59, column: 1, scope: !54)
!103 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 67, type: !55, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!104 = !DILocalVariable(name: "data", scope: !103, file: !45, line: 69, type: !42)
!105 = !DILocation(line: 69, column: 12, scope: !103)
!106 = !DILocalVariable(name: "myStruct", scope: !103, file: !45, line: 70, type: !60)
!107 = !DILocation(line: 70, column: 69, scope: !103)
!108 = !DILocalVariable(name: "dataBuffer", scope: !103, file: !45, line: 71, type: !67)
!109 = !DILocation(line: 71, column: 10, scope: !103)
!110 = !DILocation(line: 72, column: 12, scope: !103)
!111 = !DILocation(line: 72, column: 10, scope: !103)
!112 = !DILocation(line: 74, column: 12, scope: !103)
!113 = !DILocation(line: 74, column: 5, scope: !103)
!114 = !DILocation(line: 75, column: 28, scope: !103)
!115 = !DILocation(line: 75, column: 14, scope: !103)
!116 = !DILocation(line: 75, column: 26, scope: !103)
!117 = !DILocation(line: 76, column: 5, scope: !103)
!118 = !DILocation(line: 77, column: 1, scope: !103)
!119 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 81, type: !55, scopeLine: 82, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!120 = !DILocalVariable(name: "data", scope: !119, file: !45, line: 83, type: !42)
!121 = !DILocation(line: 83, column: 12, scope: !119)
!122 = !DILocalVariable(name: "myStruct", scope: !119, file: !45, line: 84, type: !60)
!123 = !DILocation(line: 84, column: 69, scope: !119)
!124 = !DILocalVariable(name: "dataBuffer", scope: !119, file: !45, line: 85, type: !67)
!125 = !DILocation(line: 85, column: 10, scope: !119)
!126 = !DILocation(line: 86, column: 12, scope: !119)
!127 = !DILocation(line: 86, column: 10, scope: !119)
!128 = !DILocalVariable(name: "dataLen", scope: !129, file: !45, line: 89, type: !75)
!129 = distinct !DILexicalBlock(scope: !119, file: !45, line: 87, column: 5)
!130 = !DILocation(line: 89, column: 16, scope: !129)
!131 = !DILocation(line: 89, column: 33, scope: !129)
!132 = !DILocation(line: 89, column: 26, scope: !129)
!133 = !DILocalVariable(name: "environment", scope: !129, file: !45, line: 90, type: !42)
!134 = !DILocation(line: 90, column: 16, scope: !129)
!135 = !DILocation(line: 90, column: 30, scope: !129)
!136 = !DILocation(line: 92, column: 13, scope: !137)
!137 = distinct !DILexicalBlock(scope: !129, file: !45, line: 92, column: 13)
!138 = !DILocation(line: 92, column: 25, scope: !137)
!139 = !DILocation(line: 92, column: 13, scope: !129)
!140 = !DILocation(line: 95, column: 21, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !45, line: 93, column: 9)
!142 = !DILocation(line: 95, column: 26, scope: !141)
!143 = !DILocation(line: 95, column: 25, scope: !141)
!144 = !DILocation(line: 95, column: 35, scope: !141)
!145 = !DILocation(line: 95, column: 52, scope: !141)
!146 = !DILocation(line: 95, column: 51, scope: !141)
!147 = !DILocation(line: 95, column: 59, scope: !141)
!148 = !DILocation(line: 95, column: 13, scope: !141)
!149 = !DILocation(line: 96, column: 9, scope: !141)
!150 = !DILocation(line: 98, column: 28, scope: !119)
!151 = !DILocation(line: 98, column: 14, scope: !119)
!152 = !DILocation(line: 98, column: 26, scope: !119)
!153 = !DILocation(line: 99, column: 5, scope: !119)
!154 = !DILocation(line: 100, column: 1, scope: !119)
!155 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_67_good", scope: !45, file: !45, line: 102, type: !55, scopeLine: 103, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!156 = !DILocation(line: 104, column: 5, scope: !155)
!157 = !DILocation(line: 105, column: 5, scope: !155)
!158 = !DILocation(line: 106, column: 1, scope: !155)
!159 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_67b_badSink", scope: !49, file: !49, line: 41, type: !160, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_environment_67_structType", file: !49, line: 37, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE606_Unchecked_Loop_Condition__char_environment_67_structType", file: !49, line: 34, size: 64, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !163, file: !49, line: 36, baseType: !42, size: 64)
!166 = !DILocalVariable(name: "myStruct", arg: 1, scope: !159, file: !49, line: 41, type: !162)
!167 = !DILocation(line: 41, column: 132, scope: !159)
!168 = !DILocalVariable(name: "data", scope: !159, file: !49, line: 43, type: !42)
!169 = !DILocation(line: 43, column: 12, scope: !159)
!170 = !DILocation(line: 43, column: 28, scope: !159)
!171 = !DILocalVariable(name: "i", scope: !172, file: !49, line: 45, type: !23)
!172 = distinct !DILexicalBlock(scope: !159, file: !49, line: 44, column: 5)
!173 = !DILocation(line: 45, column: 13, scope: !172)
!174 = !DILocalVariable(name: "n", scope: !172, file: !49, line: 45, type: !23)
!175 = !DILocation(line: 45, column: 16, scope: !172)
!176 = !DILocalVariable(name: "intVariable", scope: !172, file: !49, line: 45, type: !23)
!177 = !DILocation(line: 45, column: 19, scope: !172)
!178 = !DILocation(line: 46, column: 20, scope: !179)
!179 = distinct !DILexicalBlock(scope: !172, file: !49, line: 46, column: 13)
!180 = !DILocation(line: 46, column: 13, scope: !179)
!181 = !DILocation(line: 46, column: 36, scope: !179)
!182 = !DILocation(line: 46, column: 13, scope: !172)
!183 = !DILocation(line: 49, column: 25, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !49, line: 47, column: 9)
!185 = !DILocation(line: 50, column: 20, scope: !186)
!186 = distinct !DILexicalBlock(scope: !184, file: !49, line: 50, column: 13)
!187 = !DILocation(line: 50, column: 18, scope: !186)
!188 = !DILocation(line: 50, column: 25, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !49, line: 50, column: 13)
!190 = !DILocation(line: 50, column: 29, scope: !189)
!191 = !DILocation(line: 50, column: 27, scope: !189)
!192 = !DILocation(line: 50, column: 13, scope: !186)
!193 = !DILocation(line: 53, column: 28, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !49, line: 51, column: 13)
!195 = !DILocation(line: 54, column: 13, scope: !194)
!196 = !DILocation(line: 50, column: 33, scope: !189)
!197 = !DILocation(line: 50, column: 13, scope: !189)
!198 = distinct !{!198, !192, !199, !200}
!199 = !DILocation(line: 54, column: 13, scope: !186)
!200 = !{!"llvm.loop.mustprogress"}
!201 = !DILocation(line: 55, column: 26, scope: !184)
!202 = !DILocation(line: 55, column: 13, scope: !184)
!203 = !DILocation(line: 56, column: 9, scope: !184)
!204 = !DILocation(line: 58, column: 1, scope: !159)
!205 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_67b_goodG2BSink", scope: !49, file: !49, line: 65, type: !160, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!206 = !DILocalVariable(name: "myStruct", arg: 1, scope: !205, file: !49, line: 65, type: !162)
!207 = !DILocation(line: 65, column: 136, scope: !205)
!208 = !DILocalVariable(name: "data", scope: !205, file: !49, line: 67, type: !42)
!209 = !DILocation(line: 67, column: 12, scope: !205)
!210 = !DILocation(line: 67, column: 28, scope: !205)
!211 = !DILocalVariable(name: "i", scope: !212, file: !49, line: 69, type: !23)
!212 = distinct !DILexicalBlock(scope: !205, file: !49, line: 68, column: 5)
!213 = !DILocation(line: 69, column: 13, scope: !212)
!214 = !DILocalVariable(name: "n", scope: !212, file: !49, line: 69, type: !23)
!215 = !DILocation(line: 69, column: 16, scope: !212)
!216 = !DILocalVariable(name: "intVariable", scope: !212, file: !49, line: 69, type: !23)
!217 = !DILocation(line: 69, column: 19, scope: !212)
!218 = !DILocation(line: 70, column: 20, scope: !219)
!219 = distinct !DILexicalBlock(scope: !212, file: !49, line: 70, column: 13)
!220 = !DILocation(line: 70, column: 13, scope: !219)
!221 = !DILocation(line: 70, column: 36, scope: !219)
!222 = !DILocation(line: 70, column: 13, scope: !212)
!223 = !DILocation(line: 73, column: 25, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !49, line: 71, column: 9)
!225 = !DILocation(line: 74, column: 20, scope: !226)
!226 = distinct !DILexicalBlock(scope: !224, file: !49, line: 74, column: 13)
!227 = !DILocation(line: 74, column: 18, scope: !226)
!228 = !DILocation(line: 74, column: 25, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !49, line: 74, column: 13)
!230 = !DILocation(line: 74, column: 29, scope: !229)
!231 = !DILocation(line: 74, column: 27, scope: !229)
!232 = !DILocation(line: 74, column: 13, scope: !226)
!233 = !DILocation(line: 77, column: 28, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !49, line: 75, column: 13)
!235 = !DILocation(line: 78, column: 13, scope: !234)
!236 = !DILocation(line: 74, column: 33, scope: !229)
!237 = !DILocation(line: 74, column: 13, scope: !229)
!238 = distinct !{!238, !232, !239, !200}
!239 = !DILocation(line: 78, column: 13, scope: !226)
!240 = !DILocation(line: 79, column: 26, scope: !224)
!241 = !DILocation(line: 79, column: 13, scope: !224)
!242 = !DILocation(line: 80, column: 9, scope: !224)
!243 = !DILocation(line: 82, column: 1, scope: !205)
!244 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink", scope: !49, file: !49, line: 85, type: !160, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!245 = !DILocalVariable(name: "myStruct", arg: 1, scope: !244, file: !49, line: 85, type: !162)
!246 = !DILocation(line: 85, column: 136, scope: !244)
!247 = !DILocalVariable(name: "data", scope: !244, file: !49, line: 87, type: !42)
!248 = !DILocation(line: 87, column: 12, scope: !244)
!249 = !DILocation(line: 87, column: 28, scope: !244)
!250 = !DILocalVariable(name: "i", scope: !251, file: !49, line: 89, type: !23)
!251 = distinct !DILexicalBlock(scope: !244, file: !49, line: 88, column: 5)
!252 = !DILocation(line: 89, column: 13, scope: !251)
!253 = !DILocalVariable(name: "n", scope: !251, file: !49, line: 89, type: !23)
!254 = !DILocation(line: 89, column: 16, scope: !251)
!255 = !DILocalVariable(name: "intVariable", scope: !251, file: !49, line: 89, type: !23)
!256 = !DILocation(line: 89, column: 19, scope: !251)
!257 = !DILocation(line: 90, column: 20, scope: !258)
!258 = distinct !DILexicalBlock(scope: !251, file: !49, line: 90, column: 13)
!259 = !DILocation(line: 90, column: 13, scope: !258)
!260 = !DILocation(line: 90, column: 36, scope: !258)
!261 = !DILocation(line: 90, column: 13, scope: !251)
!262 = !DILocation(line: 93, column: 17, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !49, line: 93, column: 17)
!264 = distinct !DILexicalBlock(scope: !258, file: !49, line: 91, column: 9)
!265 = !DILocation(line: 93, column: 19, scope: !263)
!266 = !DILocation(line: 93, column: 17, scope: !264)
!267 = !DILocation(line: 95, column: 29, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !49, line: 94, column: 13)
!269 = !DILocation(line: 96, column: 24, scope: !270)
!270 = distinct !DILexicalBlock(scope: !268, file: !49, line: 96, column: 17)
!271 = !DILocation(line: 96, column: 22, scope: !270)
!272 = !DILocation(line: 96, column: 29, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !49, line: 96, column: 17)
!274 = !DILocation(line: 96, column: 33, scope: !273)
!275 = !DILocation(line: 96, column: 31, scope: !273)
!276 = !DILocation(line: 96, column: 17, scope: !270)
!277 = !DILocation(line: 99, column: 32, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !49, line: 97, column: 17)
!279 = !DILocation(line: 100, column: 17, scope: !278)
!280 = !DILocation(line: 96, column: 37, scope: !273)
!281 = !DILocation(line: 96, column: 17, scope: !273)
!282 = distinct !{!282, !276, !283, !200}
!283 = !DILocation(line: 100, column: 17, scope: !270)
!284 = !DILocation(line: 101, column: 30, scope: !268)
!285 = !DILocation(line: 101, column: 17, scope: !268)
!286 = !DILocation(line: 102, column: 13, scope: !268)
!287 = !DILocation(line: 103, column: 9, scope: !264)
!288 = !DILocation(line: 105, column: 1, scope: !244)
!289 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !290, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !42}
!292 = !DILocalVariable(name: "line", arg: 1, scope: !289, file: !3, line: 11, type: !42)
!293 = !DILocation(line: 11, column: 25, scope: !289)
!294 = !DILocation(line: 13, column: 1, scope: !289)
!295 = !DILocation(line: 14, column: 8, scope: !296)
!296 = distinct !DILexicalBlock(scope: !289, file: !3, line: 14, column: 8)
!297 = !DILocation(line: 14, column: 13, scope: !296)
!298 = !DILocation(line: 14, column: 8, scope: !289)
!299 = !DILocation(line: 16, column: 24, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !3, line: 15, column: 5)
!301 = !DILocation(line: 16, column: 9, scope: !300)
!302 = !DILocation(line: 17, column: 5, scope: !300)
!303 = !DILocation(line: 18, column: 5, scope: !289)
!304 = !DILocation(line: 19, column: 1, scope: !289)
!305 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !290, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!306 = !DILocalVariable(name: "line", arg: 1, scope: !305, file: !3, line: 20, type: !42)
!307 = !DILocation(line: 20, column: 29, scope: !305)
!308 = !DILocation(line: 22, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !3, line: 22, column: 8)
!310 = !DILocation(line: 22, column: 13, scope: !309)
!311 = !DILocation(line: 22, column: 8, scope: !305)
!312 = !DILocation(line: 24, column: 24, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !3, line: 23, column: 5)
!314 = !DILocation(line: 24, column: 9, scope: !313)
!315 = !DILocation(line: 25, column: 5, scope: !313)
!316 = !DILocation(line: 26, column: 1, scope: !305)
!317 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !318, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !23)
!322 = !DILocalVariable(name: "line", arg: 1, scope: !317, file: !3, line: 27, type: !320)
!323 = !DILocation(line: 27, column: 29, scope: !317)
!324 = !DILocation(line: 29, column: 8, scope: !325)
!325 = distinct !DILexicalBlock(scope: !317, file: !3, line: 29, column: 8)
!326 = !DILocation(line: 29, column: 13, scope: !325)
!327 = !DILocation(line: 29, column: 8, scope: !317)
!328 = !DILocation(line: 31, column: 27, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 30, column: 5)
!330 = !DILocation(line: 31, column: 9, scope: !329)
!331 = !DILocation(line: 32, column: 5, scope: !329)
!332 = !DILocation(line: 33, column: 1, scope: !317)
!333 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !334, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !23}
!336 = !DILocalVariable(name: "intNumber", arg: 1, scope: !333, file: !3, line: 35, type: !23)
!337 = !DILocation(line: 35, column: 24, scope: !333)
!338 = !DILocation(line: 37, column: 20, scope: !333)
!339 = !DILocation(line: 37, column: 5, scope: !333)
!340 = !DILocation(line: 38, column: 1, scope: !333)
!341 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !342, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !344}
!344 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!345 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !341, file: !3, line: 40, type: !344)
!346 = !DILocation(line: 40, column: 28, scope: !341)
!347 = !DILocation(line: 42, column: 21, scope: !341)
!348 = !DILocation(line: 42, column: 5, scope: !341)
!349 = !DILocation(line: 43, column: 1, scope: !341)
!350 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !351, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !353}
!353 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!354 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !350, file: !3, line: 45, type: !353)
!355 = !DILocation(line: 45, column: 28, scope: !350)
!356 = !DILocation(line: 47, column: 20, scope: !350)
!357 = !DILocation(line: 47, column: 5, scope: !350)
!358 = !DILocation(line: 48, column: 1, scope: !350)
!359 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !360, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362}
!362 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!363 = !DILocalVariable(name: "longNumber", arg: 1, scope: !359, file: !3, line: 50, type: !362)
!364 = !DILocation(line: 50, column: 26, scope: !359)
!365 = !DILocation(line: 52, column: 21, scope: !359)
!366 = !DILocation(line: 52, column: 5, scope: !359)
!367 = !DILocation(line: 53, column: 1, scope: !359)
!368 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !369, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371}
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !372, line: 27, baseType: !373)
!372 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !374, line: 44, baseType: !362)
!374 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!375 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !368, file: !3, line: 55, type: !371)
!376 = !DILocation(line: 55, column: 33, scope: !368)
!377 = !DILocation(line: 57, column: 29, scope: !368)
!378 = !DILocation(line: 57, column: 5, scope: !368)
!379 = !DILocation(line: 58, column: 1, scope: !368)
!380 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !381, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !75}
!383 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !380, file: !3, line: 60, type: !75)
!384 = !DILocation(line: 60, column: 29, scope: !380)
!385 = !DILocation(line: 62, column: 21, scope: !380)
!386 = !DILocation(line: 62, column: 5, scope: !380)
!387 = !DILocation(line: 63, column: 1, scope: !380)
!388 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !389, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !43}
!391 = !DILocalVariable(name: "charHex", arg: 1, scope: !388, file: !3, line: 65, type: !43)
!392 = !DILocation(line: 65, column: 29, scope: !388)
!393 = !DILocation(line: 67, column: 22, scope: !388)
!394 = !DILocation(line: 67, column: 5, scope: !388)
!395 = !DILocation(line: 68, column: 1, scope: !388)
!396 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !397, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !321}
!399 = !DILocalVariable(name: "wideChar", arg: 1, scope: !396, file: !3, line: 70, type: !321)
!400 = !DILocation(line: 70, column: 29, scope: !396)
!401 = !DILocalVariable(name: "s", scope: !396, file: !3, line: 74, type: !402)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 64, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 2)
!405 = !DILocation(line: 74, column: 13, scope: !396)
!406 = !DILocation(line: 75, column: 16, scope: !396)
!407 = !DILocation(line: 75, column: 9, scope: !396)
!408 = !DILocation(line: 75, column: 14, scope: !396)
!409 = !DILocation(line: 76, column: 9, scope: !396)
!410 = !DILocation(line: 76, column: 14, scope: !396)
!411 = !DILocation(line: 77, column: 21, scope: !396)
!412 = !DILocation(line: 77, column: 5, scope: !396)
!413 = !DILocation(line: 78, column: 1, scope: !396)
!414 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !415, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !7}
!417 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !414, file: !3, line: 80, type: !7)
!418 = !DILocation(line: 80, column: 33, scope: !414)
!419 = !DILocation(line: 82, column: 20, scope: !414)
!420 = !DILocation(line: 82, column: 5, scope: !414)
!421 = !DILocation(line: 83, column: 1, scope: !414)
!422 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !423, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !25}
!425 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !422, file: !3, line: 85, type: !25)
!426 = !DILocation(line: 85, column: 45, scope: !422)
!427 = !DILocation(line: 87, column: 22, scope: !422)
!428 = !DILocation(line: 87, column: 5, scope: !422)
!429 = !DILocation(line: 88, column: 1, scope: !422)
!430 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !431, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433}
!433 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!434 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !430, file: !3, line: 90, type: !433)
!435 = !DILocation(line: 90, column: 29, scope: !430)
!436 = !DILocation(line: 92, column: 20, scope: !430)
!437 = !DILocation(line: 92, column: 5, scope: !430)
!438 = !DILocation(line: 93, column: 1, scope: !430)
!439 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !440, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !444, line: 100, baseType: !445)
!444 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_065/source_code")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !444, line: 96, size: 64, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !445, file: !444, line: 98, baseType: !23, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !445, file: !444, line: 99, baseType: !23, size: 32, offset: 32)
!449 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !439, file: !3, line: 95, type: !442)
!450 = !DILocation(line: 95, column: 40, scope: !439)
!451 = !DILocation(line: 97, column: 26, scope: !439)
!452 = !DILocation(line: 97, column: 47, scope: !439)
!453 = !DILocation(line: 97, column: 55, scope: !439)
!454 = !DILocation(line: 97, column: 76, scope: !439)
!455 = !DILocation(line: 97, column: 5, scope: !439)
!456 = !DILocation(line: 98, column: 1, scope: !439)
!457 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !458, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !460, !75}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!461 = !DILocalVariable(name: "bytes", arg: 1, scope: !457, file: !3, line: 100, type: !460)
!462 = !DILocation(line: 100, column: 38, scope: !457)
!463 = !DILocalVariable(name: "numBytes", arg: 2, scope: !457, file: !3, line: 100, type: !75)
!464 = !DILocation(line: 100, column: 52, scope: !457)
!465 = !DILocalVariable(name: "i", scope: !457, file: !3, line: 102, type: !75)
!466 = !DILocation(line: 102, column: 12, scope: !457)
!467 = !DILocation(line: 103, column: 12, scope: !468)
!468 = distinct !DILexicalBlock(scope: !457, file: !3, line: 103, column: 5)
!469 = !DILocation(line: 103, column: 10, scope: !468)
!470 = !DILocation(line: 103, column: 17, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !3, line: 103, column: 5)
!472 = !DILocation(line: 103, column: 21, scope: !471)
!473 = !DILocation(line: 103, column: 19, scope: !471)
!474 = !DILocation(line: 103, column: 5, scope: !468)
!475 = !DILocation(line: 105, column: 24, scope: !476)
!476 = distinct !DILexicalBlock(scope: !471, file: !3, line: 104, column: 5)
!477 = !DILocation(line: 105, column: 30, scope: !476)
!478 = !DILocation(line: 105, column: 9, scope: !476)
!479 = !DILocation(line: 106, column: 5, scope: !476)
!480 = !DILocation(line: 103, column: 31, scope: !471)
!481 = !DILocation(line: 103, column: 5, scope: !471)
!482 = distinct !{!482, !474, !483, !200}
!483 = !DILocation(line: 106, column: 5, scope: !468)
!484 = !DILocation(line: 107, column: 5, scope: !457)
!485 = !DILocation(line: 108, column: 1, scope: !457)
!486 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !487, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DISubroutineType(types: !488)
!488 = !{!75, !460, !75, !42}
!489 = !DILocalVariable(name: "bytes", arg: 1, scope: !486, file: !3, line: 113, type: !460)
!490 = !DILocation(line: 113, column: 39, scope: !486)
!491 = !DILocalVariable(name: "numBytes", arg: 2, scope: !486, file: !3, line: 113, type: !75)
!492 = !DILocation(line: 113, column: 53, scope: !486)
!493 = !DILocalVariable(name: "hex", arg: 3, scope: !486, file: !3, line: 113, type: !42)
!494 = !DILocation(line: 113, column: 71, scope: !486)
!495 = !DILocalVariable(name: "numWritten", scope: !486, file: !3, line: 115, type: !75)
!496 = !DILocation(line: 115, column: 12, scope: !486)
!497 = !DILocation(line: 121, column: 5, scope: !486)
!498 = !DILocation(line: 121, column: 12, scope: !486)
!499 = !DILocation(line: 121, column: 25, scope: !486)
!500 = !DILocation(line: 121, column: 23, scope: !486)
!501 = !DILocation(line: 121, column: 34, scope: !486)
!502 = !DILocation(line: 121, column: 37, scope: !486)
!503 = !DILocation(line: 121, column: 67, scope: !486)
!504 = !DILocation(line: 121, column: 70, scope: !486)
!505 = !DILocation(line: 0, scope: !486)
!506 = !DILocalVariable(name: "byte", scope: !507, file: !3, line: 123, type: !23)
!507 = distinct !DILexicalBlock(scope: !486, file: !3, line: 122, column: 5)
!508 = !DILocation(line: 123, column: 13, scope: !507)
!509 = !DILocation(line: 124, column: 17, scope: !507)
!510 = !DILocation(line: 124, column: 25, scope: !507)
!511 = !DILocation(line: 124, column: 23, scope: !507)
!512 = !DILocation(line: 124, column: 9, scope: !507)
!513 = !DILocation(line: 125, column: 45, scope: !507)
!514 = !DILocation(line: 125, column: 29, scope: !507)
!515 = !DILocation(line: 125, column: 9, scope: !507)
!516 = !DILocation(line: 125, column: 15, scope: !507)
!517 = !DILocation(line: 125, column: 27, scope: !507)
!518 = !DILocation(line: 126, column: 9, scope: !507)
!519 = distinct !{!519, !497, !520, !200}
!520 = !DILocation(line: 127, column: 5, scope: !486)
!521 = !DILocation(line: 129, column: 12, scope: !486)
!522 = !DILocation(line: 129, column: 5, scope: !486)
!523 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !524, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DISubroutineType(types: !525)
!525 = !{!75, !460, !75, !320}
!526 = !DILocalVariable(name: "bytes", arg: 1, scope: !523, file: !3, line: 135, type: !460)
!527 = !DILocation(line: 135, column: 41, scope: !523)
!528 = !DILocalVariable(name: "numBytes", arg: 2, scope: !523, file: !3, line: 135, type: !75)
!529 = !DILocation(line: 135, column: 55, scope: !523)
!530 = !DILocalVariable(name: "hex", arg: 3, scope: !523, file: !3, line: 135, type: !320)
!531 = !DILocation(line: 135, column: 76, scope: !523)
!532 = !DILocalVariable(name: "numWritten", scope: !523, file: !3, line: 137, type: !75)
!533 = !DILocation(line: 137, column: 12, scope: !523)
!534 = !DILocation(line: 143, column: 5, scope: !523)
!535 = !DILocation(line: 143, column: 12, scope: !523)
!536 = !DILocation(line: 143, column: 25, scope: !523)
!537 = !DILocation(line: 143, column: 23, scope: !523)
!538 = !DILocation(line: 143, column: 34, scope: !523)
!539 = !DILocation(line: 143, column: 47, scope: !523)
!540 = !DILocation(line: 143, column: 55, scope: !523)
!541 = !DILocation(line: 143, column: 53, scope: !523)
!542 = !DILocation(line: 143, column: 37, scope: !523)
!543 = !DILocation(line: 143, column: 68, scope: !523)
!544 = !DILocation(line: 143, column: 81, scope: !523)
!545 = !DILocation(line: 143, column: 89, scope: !523)
!546 = !DILocation(line: 143, column: 87, scope: !523)
!547 = !DILocation(line: 143, column: 100, scope: !523)
!548 = !DILocation(line: 143, column: 71, scope: !523)
!549 = !DILocation(line: 0, scope: !523)
!550 = !DILocalVariable(name: "byte", scope: !551, file: !3, line: 145, type: !23)
!551 = distinct !DILexicalBlock(scope: !523, file: !3, line: 144, column: 5)
!552 = !DILocation(line: 145, column: 13, scope: !551)
!553 = !DILocation(line: 146, column: 18, scope: !551)
!554 = !DILocation(line: 146, column: 26, scope: !551)
!555 = !DILocation(line: 146, column: 24, scope: !551)
!556 = !DILocation(line: 146, column: 9, scope: !551)
!557 = !DILocation(line: 147, column: 45, scope: !551)
!558 = !DILocation(line: 147, column: 29, scope: !551)
!559 = !DILocation(line: 147, column: 9, scope: !551)
!560 = !DILocation(line: 147, column: 15, scope: !551)
!561 = !DILocation(line: 147, column: 27, scope: !551)
!562 = !DILocation(line: 148, column: 9, scope: !551)
!563 = distinct !{!563, !534, !564, !200}
!564 = !DILocation(line: 149, column: 5, scope: !523)
!565 = !DILocation(line: 151, column: 12, scope: !523)
!566 = !DILocation(line: 151, column: 5, scope: !523)
!567 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !568, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DISubroutineType(types: !569)
!569 = !{!23}
!570 = !DILocation(line: 158, column: 5, scope: !567)
!571 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !568, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 163, column: 5, scope: !571)
!573 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !568, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 168, column: 13, scope: !573)
!575 = !DILocation(line: 168, column: 20, scope: !573)
!576 = !DILocation(line: 168, column: 5, scope: !573)
!577 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 187, column: 16, scope: !577)
!579 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 188, column: 16, scope: !579)
!581 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 189, column: 16, scope: !581)
!583 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 190, column: 16, scope: !583)
!585 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 191, column: 16, scope: !585)
!587 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 192, column: 16, scope: !587)
!589 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 193, column: 16, scope: !589)
!591 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 194, column: 16, scope: !591)
!593 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 195, column: 16, scope: !593)
!595 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 198, column: 15, scope: !595)
!597 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 199, column: 15, scope: !597)
!599 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 200, column: 15, scope: !599)
!601 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 201, column: 15, scope: !601)
!603 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 202, column: 15, scope: !603)
!605 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 203, column: 15, scope: !605)
!607 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 204, column: 15, scope: !607)
!609 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 205, column: 15, scope: !609)
!611 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 206, column: 15, scope: !611)
