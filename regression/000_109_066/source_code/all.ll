; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@CWE606_Unchecked_Loop_Condition__char_environment_68_badData = dso_local global i8* null, align 8, !dbg !0
@CWE606_Unchecked_Loop_Condition__char_environment_68_goodG2BData = dso_local global i8* null, align 8, !dbg !8
@CWE606_Unchecked_Loop_Condition__char_environment_68_goodB2GData = dso_local global i8* null, align 8, !dbg !12
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_68_bad() #0 !dbg !61 {
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
  store i8* %7, i8** @CWE606_Unchecked_Loop_Condition__char_environment_68_badData, align 8, !dbg !99
  call void (...) bitcast (void ()* @CWE606_Unchecked_Loop_Condition__char_environment_68b_badSink to void (...)*)(), !dbg !100
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !110
  %2 = load i8*, i8** %data, align 8, !dbg !111
  store i8* %2, i8** @CWE606_Unchecked_Loop_Condition__char_environment_68_goodG2BData, align 8, !dbg !112
  call void (...) bitcast (void ()* @CWE606_Unchecked_Loop_Condition__char_environment_68b_goodG2BSink to void (...)*)(), !dbg !113
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
  store i8* %7, i8** @CWE606_Unchecked_Loop_Condition__char_environment_68_goodB2GData, align 8, !dbg !145
  call void (...) bitcast (void ()* @CWE606_Unchecked_Loop_Condition__char_environment_68b_goodB2GSink to void (...)*)(), !dbg !146
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_68_good() #0 !dbg !148 {
entry:
  call void @goodG2B(), !dbg !149
  call void @goodB2G(), !dbg !150
  ret void, !dbg !151
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_68b_badSink() #0 !dbg !152 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_environment_68_badData, align 8, !dbg !155
  store i8* %0, i8** %data, align 8, !dbg !154
  call void @llvm.dbg.declare(metadata i32* %i, metadata !156, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %n, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !161, metadata !DIExpression()), !dbg !162
  %1 = load i8*, i8** %data, align 8, !dbg !163
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !165
  %cmp = icmp eq i32 %call, 1, !dbg !166
  br i1 %cmp, label %if.then, label %if.end, !dbg !167

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !168
  store i32 0, i32* %i, align 4, !dbg !170
  br label %for.cond, !dbg !172

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !173
  %3 = load i32, i32* %n, align 4, !dbg !175
  %cmp1 = icmp slt i32 %2, %3, !dbg !176
  br i1 %cmp1, label %for.body, label %for.end, !dbg !177

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !178
  %inc = add nsw i32 %4, 1, !dbg !178
  store i32 %inc, i32* %intVariable, align 4, !dbg !178
  br label %for.inc, !dbg !180

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !181
  %inc2 = add nsw i32 %5, 1, !dbg !181
  store i32 %inc2, i32* %i, align 4, !dbg !181
  br label %for.cond, !dbg !182, !llvm.loop !183

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !186
  call void @printIntLine(i32 %6), !dbg !187
  br label %if.end, !dbg !188

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !189
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_68b_goodG2BSink() #0 !dbg !190 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_environment_68_goodG2BData, align 8, !dbg !193
  store i8* %0, i8** %data, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata i32* %i, metadata !194, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %n, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !199, metadata !DIExpression()), !dbg !200
  %1 = load i8*, i8** %data, align 8, !dbg !201
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !203
  %cmp = icmp eq i32 %call, 1, !dbg !204
  br i1 %cmp, label %if.then, label %if.end, !dbg !205

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !206
  store i32 0, i32* %i, align 4, !dbg !208
  br label %for.cond, !dbg !210

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !211
  %3 = load i32, i32* %n, align 4, !dbg !213
  %cmp1 = icmp slt i32 %2, %3, !dbg !214
  br i1 %cmp1, label %for.body, label %for.end, !dbg !215

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !216
  %inc = add nsw i32 %4, 1, !dbg !216
  store i32 %inc, i32* %intVariable, align 4, !dbg !216
  br label %for.inc, !dbg !218

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !219
  %inc2 = add nsw i32 %5, 1, !dbg !219
  store i32 %inc2, i32* %i, align 4, !dbg !219
  br label %for.cond, !dbg !220, !llvm.loop !221

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !223
  call void @printIntLine(i32 %6), !dbg !224
  br label %if.end, !dbg !225

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !226
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_68b_goodB2GSink() #0 !dbg !227 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !228, metadata !DIExpression()), !dbg !229
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_environment_68_goodB2GData, align 8, !dbg !230
  store i8* %0, i8** %data, align 8, !dbg !229
  call void @llvm.dbg.declare(metadata i32* %i, metadata !231, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata i32* %n, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !236, metadata !DIExpression()), !dbg !237
  %1 = load i8*, i8** %data, align 8, !dbg !238
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !240
  %cmp = icmp eq i32 %call, 1, !dbg !241
  br i1 %cmp, label %if.then, label %if.end5, !dbg !242

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !243
  %cmp1 = icmp slt i32 %2, 10000, !dbg !246
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !247

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !248
  store i32 0, i32* %i, align 4, !dbg !250
  br label %for.cond, !dbg !252

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !253
  %4 = load i32, i32* %n, align 4, !dbg !255
  %cmp3 = icmp slt i32 %3, %4, !dbg !256
  br i1 %cmp3, label %for.body, label %for.end, !dbg !257

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !258
  %inc = add nsw i32 %5, 1, !dbg !258
  store i32 %inc, i32* %intVariable, align 4, !dbg !258
  br label %for.inc, !dbg !260

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !261
  %inc4 = add nsw i32 %6, 1, !dbg !261
  store i32 %inc4, i32* %i, align 4, !dbg !261
  br label %for.cond, !dbg !262, !llvm.loop !263

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !265
  call void @printIntLine(i32 %7), !dbg !266
  br label %if.end, !dbg !267

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !268

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !269
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !270 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !275
  %0 = load i8*, i8** %line.addr, align 8, !dbg !276
  %cmp = icmp ne i8* %0, null, !dbg !278
  br i1 %cmp, label %if.then, label %if.end, !dbg !279

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !280
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !282
  br label %if.end, !dbg !283

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !284
  ret void, !dbg !285
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !286 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = load i8*, i8** %line.addr, align 8, !dbg !289
  %cmp = icmp ne i8* %0, null, !dbg !291
  br i1 %cmp, label %if.then, label %if.end, !dbg !292

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !293
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !295
  br label %if.end, !dbg !296

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !297
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !298 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load i32*, i32** %line.addr, align 8, !dbg !305
  %cmp = icmp ne i32* %0, null, !dbg !307
  br i1 %cmp, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !309
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !311
  br label %if.end, !dbg !312

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !313
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !314 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !319
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !320
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !322 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !326, metadata !DIExpression()), !dbg !327
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !328
  %conv = sext i16 %0 to i32, !dbg !328
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !329
  ret void, !dbg !330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !331 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !337
  %conv = fpext float %0 to double, !dbg !337
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !338
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !340 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !346
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !349 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !358
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !359
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !361 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !366
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.13, i64 0, i64 0), i64 %0), !dbg !367
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !369 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !374
  %conv = sext i8 %0 to i32, !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !377 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !382, metadata !DIExpression()), !dbg !386
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !387
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !388
  store i32 %0, i32* %arrayidx, align 4, !dbg !389
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !390
  store i32 0, i32* %arrayidx1, align 4, !dbg !391
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !393
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !395 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !400
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !401
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !403 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !408
  %conv = zext i8 %0 to i32, !dbg !408
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !411 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !417
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !418
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !420 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !432
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !433
  %1 = load i32, i32* %intOne, align 4, !dbg !433
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !434
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !435
  %3 = load i32, i32* %intTwo, align 4, !dbg !435
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !436
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !438 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !442, metadata !DIExpression()), !dbg !443
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !444, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata i64* %i, metadata !446, metadata !DIExpression()), !dbg !447
  store i64 0, i64* %i, align 8, !dbg !448
  br label %for.cond, !dbg !450

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !451
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !453
  %cmp = icmp ult i64 %0, %1, !dbg !454
  br i1 %cmp, label %for.body, label %for.end, !dbg !455

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !456
  %3 = load i64, i64* %i, align 8, !dbg !458
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !456
  %4 = load i8, i8* %arrayidx, align 1, !dbg !456
  %conv = zext i8 %4 to i32, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !459
  br label %for.inc, !dbg !460

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !461
  %inc = add i64 %5, 1, !dbg !461
  store i64 %inc, i64* %i, align 8, !dbg !461
  br label %for.cond, !dbg !462, !llvm.loop !463

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !465
  ret void, !dbg !466
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !467 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !470, metadata !DIExpression()), !dbg !471
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !472, metadata !DIExpression()), !dbg !473
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !474, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !476, metadata !DIExpression()), !dbg !477
  store i64 0, i64* %numWritten, align 8, !dbg !477
  br label %while.cond, !dbg !478

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !479
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !480
  %cmp = icmp ult i64 %0, %1, !dbg !481
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !482

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !483
  %2 = load i16*, i16** %call, align 8, !dbg !483
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !483
  %4 = load i64, i64* %numWritten, align 8, !dbg !483
  %mul = mul i64 2, %4, !dbg !483
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !483
  %5 = load i8, i8* %arrayidx, align 1, !dbg !483
  %conv = sext i8 %5 to i32, !dbg !483
  %idxprom = sext i32 %conv to i64, !dbg !483
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !483
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !483
  %conv2 = zext i16 %6 to i32, !dbg !483
  %and = and i32 %conv2, 4096, !dbg !483
  %tobool = icmp ne i32 %and, 0, !dbg !483
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !484

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !485
  %7 = load i16*, i16** %call3, align 8, !dbg !485
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !485
  %9 = load i64, i64* %numWritten, align 8, !dbg !485
  %mul4 = mul i64 2, %9, !dbg !485
  %add = add i64 %mul4, 1, !dbg !485
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !485
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !485
  %conv6 = sext i8 %10 to i32, !dbg !485
  %idxprom7 = sext i32 %conv6 to i64, !dbg !485
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !485
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !485
  %conv9 = zext i16 %11 to i32, !dbg !485
  %and10 = and i32 %conv9, 4096, !dbg !485
  %tobool11 = icmp ne i32 %and10, 0, !dbg !484
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !486
  br i1 %12, label %while.body, label %while.end, !dbg !478

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !487, metadata !DIExpression()), !dbg !489
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !490
  %14 = load i64, i64* %numWritten, align 8, !dbg !491
  %mul12 = mul i64 2, %14, !dbg !492
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !490
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !493
  %15 = load i32, i32* %byte, align 4, !dbg !494
  %conv15 = trunc i32 %15 to i8, !dbg !495
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !496
  %17 = load i64, i64* %numWritten, align 8, !dbg !497
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !496
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !498
  %18 = load i64, i64* %numWritten, align 8, !dbg !499
  %inc = add i64 %18, 1, !dbg !499
  store i64 %inc, i64* %numWritten, align 8, !dbg !499
  br label %while.cond, !dbg !478, !llvm.loop !500

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !502
  ret i64 %19, !dbg !503
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !504 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !507, metadata !DIExpression()), !dbg !508
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !509, metadata !DIExpression()), !dbg !510
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !513, metadata !DIExpression()), !dbg !514
  store i64 0, i64* %numWritten, align 8, !dbg !514
  br label %while.cond, !dbg !515

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !516
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !517
  %cmp = icmp ult i64 %0, %1, !dbg !518
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !519

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !520
  %3 = load i64, i64* %numWritten, align 8, !dbg !521
  %mul = mul i64 2, %3, !dbg !522
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !520
  %4 = load i32, i32* %arrayidx, align 4, !dbg !520
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !523
  %tobool = icmp ne i32 %call, 0, !dbg !523
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !524

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !525
  %6 = load i64, i64* %numWritten, align 8, !dbg !526
  %mul1 = mul i64 2, %6, !dbg !527
  %add = add i64 %mul1, 1, !dbg !528
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !525
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !525
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !529
  %tobool4 = icmp ne i32 %call3, 0, !dbg !524
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !530
  br i1 %8, label %while.body, label %while.end, !dbg !515

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !531, metadata !DIExpression()), !dbg !533
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !534
  %10 = load i64, i64* %numWritten, align 8, !dbg !535
  %mul5 = mul i64 2, %10, !dbg !536
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !534
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !537
  %11 = load i32, i32* %byte, align 4, !dbg !538
  %conv = trunc i32 %11 to i8, !dbg !539
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !540
  %13 = load i64, i64* %numWritten, align 8, !dbg !541
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !540
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !542
  %14 = load i64, i64* %numWritten, align 8, !dbg !543
  %inc = add i64 %14, 1, !dbg !543
  store i64 %inc, i64* %numWritten, align 8, !dbg !543
  br label %while.cond, !dbg !515, !llvm.loop !544

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !546
  ret i64 %15, !dbg !547
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !548 {
entry:
  ret i32 1, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !552 {
entry:
  ret i32 0, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !554 {
entry:
  %call = call i32 @rand() #8, !dbg !555
  %rem = srem i32 %call, 2, !dbg !556
  ret i32 %rem, !dbg !557
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !588 {
entry:
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !590 {
entry:
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !592 {
entry:
  ret void, !dbg !593
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
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_68_badData", scope: !2, file: !3, line: 35, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_066/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !12}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_68_goodG2BData", scope: !2, file: !3, line: 36, type: !10, isLocal: false, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_68_goodB2GData", scope: !2, file: !3, line: 37, type: !10, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !16, file: !17, line: 174, type: !36, isLocal: false, isDefinition: true)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !35, globals: !39, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_066/source_code")
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
!56 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_68b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_066/source_code")
!57 = !{!"clang version 12.0.0"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_68_bad", scope: !3, file: !3, line: 43, type: !62, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{null}
!64 = !DILocalVariable(name: "data", scope: !61, file: !3, line: 45, type: !10)
!65 = !DILocation(line: 45, column: 12, scope: !61)
!66 = !DILocalVariable(name: "dataBuffer", scope: !61, file: !3, line: 46, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 100)
!70 = !DILocation(line: 46, column: 10, scope: !61)
!71 = !DILocation(line: 47, column: 12, scope: !61)
!72 = !DILocation(line: 47, column: 10, scope: !61)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !3, line: 50, type: !75)
!74 = distinct !DILexicalBlock(scope: !61, file: !3, line: 48, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 50, column: 16, scope: !74)
!79 = !DILocation(line: 50, column: 33, scope: !74)
!80 = !DILocation(line: 50, column: 26, scope: !74)
!81 = !DILocalVariable(name: "environment", scope: !74, file: !3, line: 51, type: !10)
!82 = !DILocation(line: 51, column: 16, scope: !74)
!83 = !DILocation(line: 51, column: 30, scope: !74)
!84 = !DILocation(line: 53, column: 13, scope: !85)
!85 = distinct !DILexicalBlock(scope: !74, file: !3, line: 53, column: 13)
!86 = !DILocation(line: 53, column: 25, scope: !85)
!87 = !DILocation(line: 53, column: 13, scope: !74)
!88 = !DILocation(line: 56, column: 21, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !3, line: 54, column: 9)
!90 = !DILocation(line: 56, column: 26, scope: !89)
!91 = !DILocation(line: 56, column: 25, scope: !89)
!92 = !DILocation(line: 56, column: 35, scope: !89)
!93 = !DILocation(line: 56, column: 52, scope: !89)
!94 = !DILocation(line: 56, column: 51, scope: !89)
!95 = !DILocation(line: 56, column: 59, scope: !89)
!96 = !DILocation(line: 56, column: 13, scope: !89)
!97 = !DILocation(line: 57, column: 9, scope: !89)
!98 = !DILocation(line: 59, column: 68, scope: !61)
!99 = !DILocation(line: 59, column: 66, scope: !61)
!100 = !DILocation(line: 60, column: 5, scope: !61)
!101 = !DILocation(line: 61, column: 1, scope: !61)
!102 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 70, type: !62, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!103 = !DILocalVariable(name: "data", scope: !102, file: !3, line: 72, type: !10)
!104 = !DILocation(line: 72, column: 12, scope: !102)
!105 = !DILocalVariable(name: "dataBuffer", scope: !102, file: !3, line: 73, type: !67)
!106 = !DILocation(line: 73, column: 10, scope: !102)
!107 = !DILocation(line: 74, column: 12, scope: !102)
!108 = !DILocation(line: 74, column: 10, scope: !102)
!109 = !DILocation(line: 76, column: 12, scope: !102)
!110 = !DILocation(line: 76, column: 5, scope: !102)
!111 = !DILocation(line: 77, column: 72, scope: !102)
!112 = !DILocation(line: 77, column: 70, scope: !102)
!113 = !DILocation(line: 78, column: 5, scope: !102)
!114 = !DILocation(line: 79, column: 1, scope: !102)
!115 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 82, type: !62, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!116 = !DILocalVariable(name: "data", scope: !115, file: !3, line: 84, type: !10)
!117 = !DILocation(line: 84, column: 12, scope: !115)
!118 = !DILocalVariable(name: "dataBuffer", scope: !115, file: !3, line: 85, type: !67)
!119 = !DILocation(line: 85, column: 10, scope: !115)
!120 = !DILocation(line: 86, column: 12, scope: !115)
!121 = !DILocation(line: 86, column: 10, scope: !115)
!122 = !DILocalVariable(name: "dataLen", scope: !123, file: !3, line: 89, type: !75)
!123 = distinct !DILexicalBlock(scope: !115, file: !3, line: 87, column: 5)
!124 = !DILocation(line: 89, column: 16, scope: !123)
!125 = !DILocation(line: 89, column: 33, scope: !123)
!126 = !DILocation(line: 89, column: 26, scope: !123)
!127 = !DILocalVariable(name: "environment", scope: !123, file: !3, line: 90, type: !10)
!128 = !DILocation(line: 90, column: 16, scope: !123)
!129 = !DILocation(line: 90, column: 30, scope: !123)
!130 = !DILocation(line: 92, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !3, line: 92, column: 13)
!132 = !DILocation(line: 92, column: 25, scope: !131)
!133 = !DILocation(line: 92, column: 13, scope: !123)
!134 = !DILocation(line: 95, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !3, line: 93, column: 9)
!136 = !DILocation(line: 95, column: 26, scope: !135)
!137 = !DILocation(line: 95, column: 25, scope: !135)
!138 = !DILocation(line: 95, column: 35, scope: !135)
!139 = !DILocation(line: 95, column: 52, scope: !135)
!140 = !DILocation(line: 95, column: 51, scope: !135)
!141 = !DILocation(line: 95, column: 59, scope: !135)
!142 = !DILocation(line: 95, column: 13, scope: !135)
!143 = !DILocation(line: 96, column: 9, scope: !135)
!144 = !DILocation(line: 98, column: 72, scope: !115)
!145 = !DILocation(line: 98, column: 70, scope: !115)
!146 = !DILocation(line: 99, column: 5, scope: !115)
!147 = !DILocation(line: 100, column: 1, scope: !115)
!148 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_68_good", scope: !3, file: !3, line: 102, type: !62, scopeLine: 103, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!149 = !DILocation(line: 104, column: 5, scope: !148)
!150 = !DILocation(line: 105, column: 5, scope: !148)
!151 = !DILocation(line: 106, column: 1, scope: !148)
!152 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_68b_badSink", scope: !56, file: !56, line: 40, type: !62, scopeLine: 41, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!153 = !DILocalVariable(name: "data", scope: !152, file: !56, line: 42, type: !10)
!154 = !DILocation(line: 42, column: 12, scope: !152)
!155 = !DILocation(line: 42, column: 19, scope: !152)
!156 = !DILocalVariable(name: "i", scope: !157, file: !56, line: 44, type: !36)
!157 = distinct !DILexicalBlock(scope: !152, file: !56, line: 43, column: 5)
!158 = !DILocation(line: 44, column: 13, scope: !157)
!159 = !DILocalVariable(name: "n", scope: !157, file: !56, line: 44, type: !36)
!160 = !DILocation(line: 44, column: 16, scope: !157)
!161 = !DILocalVariable(name: "intVariable", scope: !157, file: !56, line: 44, type: !36)
!162 = !DILocation(line: 44, column: 19, scope: !157)
!163 = !DILocation(line: 45, column: 20, scope: !164)
!164 = distinct !DILexicalBlock(scope: !157, file: !56, line: 45, column: 13)
!165 = !DILocation(line: 45, column: 13, scope: !164)
!166 = !DILocation(line: 45, column: 36, scope: !164)
!167 = !DILocation(line: 45, column: 13, scope: !157)
!168 = !DILocation(line: 48, column: 25, scope: !169)
!169 = distinct !DILexicalBlock(scope: !164, file: !56, line: 46, column: 9)
!170 = !DILocation(line: 49, column: 20, scope: !171)
!171 = distinct !DILexicalBlock(scope: !169, file: !56, line: 49, column: 13)
!172 = !DILocation(line: 49, column: 18, scope: !171)
!173 = !DILocation(line: 49, column: 25, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !56, line: 49, column: 13)
!175 = !DILocation(line: 49, column: 29, scope: !174)
!176 = !DILocation(line: 49, column: 27, scope: !174)
!177 = !DILocation(line: 49, column: 13, scope: !171)
!178 = !DILocation(line: 52, column: 28, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !56, line: 50, column: 13)
!180 = !DILocation(line: 53, column: 13, scope: !179)
!181 = !DILocation(line: 49, column: 33, scope: !174)
!182 = !DILocation(line: 49, column: 13, scope: !174)
!183 = distinct !{!183, !177, !184, !185}
!184 = !DILocation(line: 53, column: 13, scope: !171)
!185 = !{!"llvm.loop.mustprogress"}
!186 = !DILocation(line: 54, column: 26, scope: !169)
!187 = !DILocation(line: 54, column: 13, scope: !169)
!188 = !DILocation(line: 55, column: 9, scope: !169)
!189 = !DILocation(line: 57, column: 1, scope: !152)
!190 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_68b_goodG2BSink", scope: !56, file: !56, line: 64, type: !62, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!191 = !DILocalVariable(name: "data", scope: !190, file: !56, line: 66, type: !10)
!192 = !DILocation(line: 66, column: 12, scope: !190)
!193 = !DILocation(line: 66, column: 19, scope: !190)
!194 = !DILocalVariable(name: "i", scope: !195, file: !56, line: 68, type: !36)
!195 = distinct !DILexicalBlock(scope: !190, file: !56, line: 67, column: 5)
!196 = !DILocation(line: 68, column: 13, scope: !195)
!197 = !DILocalVariable(name: "n", scope: !195, file: !56, line: 68, type: !36)
!198 = !DILocation(line: 68, column: 16, scope: !195)
!199 = !DILocalVariable(name: "intVariable", scope: !195, file: !56, line: 68, type: !36)
!200 = !DILocation(line: 68, column: 19, scope: !195)
!201 = !DILocation(line: 69, column: 20, scope: !202)
!202 = distinct !DILexicalBlock(scope: !195, file: !56, line: 69, column: 13)
!203 = !DILocation(line: 69, column: 13, scope: !202)
!204 = !DILocation(line: 69, column: 36, scope: !202)
!205 = !DILocation(line: 69, column: 13, scope: !195)
!206 = !DILocation(line: 72, column: 25, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !56, line: 70, column: 9)
!208 = !DILocation(line: 73, column: 20, scope: !209)
!209 = distinct !DILexicalBlock(scope: !207, file: !56, line: 73, column: 13)
!210 = !DILocation(line: 73, column: 18, scope: !209)
!211 = !DILocation(line: 73, column: 25, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !56, line: 73, column: 13)
!213 = !DILocation(line: 73, column: 29, scope: !212)
!214 = !DILocation(line: 73, column: 27, scope: !212)
!215 = !DILocation(line: 73, column: 13, scope: !209)
!216 = !DILocation(line: 76, column: 28, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !56, line: 74, column: 13)
!218 = !DILocation(line: 77, column: 13, scope: !217)
!219 = !DILocation(line: 73, column: 33, scope: !212)
!220 = !DILocation(line: 73, column: 13, scope: !212)
!221 = distinct !{!221, !215, !222, !185}
!222 = !DILocation(line: 77, column: 13, scope: !209)
!223 = !DILocation(line: 78, column: 26, scope: !207)
!224 = !DILocation(line: 78, column: 13, scope: !207)
!225 = !DILocation(line: 79, column: 9, scope: !207)
!226 = !DILocation(line: 81, column: 1, scope: !190)
!227 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_68b_goodB2GSink", scope: !56, file: !56, line: 84, type: !62, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!228 = !DILocalVariable(name: "data", scope: !227, file: !56, line: 86, type: !10)
!229 = !DILocation(line: 86, column: 12, scope: !227)
!230 = !DILocation(line: 86, column: 19, scope: !227)
!231 = !DILocalVariable(name: "i", scope: !232, file: !56, line: 88, type: !36)
!232 = distinct !DILexicalBlock(scope: !227, file: !56, line: 87, column: 5)
!233 = !DILocation(line: 88, column: 13, scope: !232)
!234 = !DILocalVariable(name: "n", scope: !232, file: !56, line: 88, type: !36)
!235 = !DILocation(line: 88, column: 16, scope: !232)
!236 = !DILocalVariable(name: "intVariable", scope: !232, file: !56, line: 88, type: !36)
!237 = !DILocation(line: 88, column: 19, scope: !232)
!238 = !DILocation(line: 89, column: 20, scope: !239)
!239 = distinct !DILexicalBlock(scope: !232, file: !56, line: 89, column: 13)
!240 = !DILocation(line: 89, column: 13, scope: !239)
!241 = !DILocation(line: 89, column: 36, scope: !239)
!242 = !DILocation(line: 89, column: 13, scope: !232)
!243 = !DILocation(line: 92, column: 17, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !56, line: 92, column: 17)
!245 = distinct !DILexicalBlock(scope: !239, file: !56, line: 90, column: 9)
!246 = !DILocation(line: 92, column: 19, scope: !244)
!247 = !DILocation(line: 92, column: 17, scope: !245)
!248 = !DILocation(line: 94, column: 29, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !56, line: 93, column: 13)
!250 = !DILocation(line: 95, column: 24, scope: !251)
!251 = distinct !DILexicalBlock(scope: !249, file: !56, line: 95, column: 17)
!252 = !DILocation(line: 95, column: 22, scope: !251)
!253 = !DILocation(line: 95, column: 29, scope: !254)
!254 = distinct !DILexicalBlock(scope: !251, file: !56, line: 95, column: 17)
!255 = !DILocation(line: 95, column: 33, scope: !254)
!256 = !DILocation(line: 95, column: 31, scope: !254)
!257 = !DILocation(line: 95, column: 17, scope: !251)
!258 = !DILocation(line: 98, column: 32, scope: !259)
!259 = distinct !DILexicalBlock(scope: !254, file: !56, line: 96, column: 17)
!260 = !DILocation(line: 99, column: 17, scope: !259)
!261 = !DILocation(line: 95, column: 37, scope: !254)
!262 = !DILocation(line: 95, column: 17, scope: !254)
!263 = distinct !{!263, !257, !264, !185}
!264 = !DILocation(line: 99, column: 17, scope: !251)
!265 = !DILocation(line: 100, column: 30, scope: !249)
!266 = !DILocation(line: 100, column: 17, scope: !249)
!267 = !DILocation(line: 101, column: 13, scope: !249)
!268 = !DILocation(line: 102, column: 9, scope: !245)
!269 = !DILocation(line: 104, column: 1, scope: !227)
!270 = distinct !DISubprogram(name: "printLine", scope: !17, file: !17, line: 11, type: !271, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !10}
!273 = !DILocalVariable(name: "line", arg: 1, scope: !270, file: !17, line: 11, type: !10)
!274 = !DILocation(line: 11, column: 25, scope: !270)
!275 = !DILocation(line: 13, column: 1, scope: !270)
!276 = !DILocation(line: 14, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !270, file: !17, line: 14, column: 8)
!278 = !DILocation(line: 14, column: 13, scope: !277)
!279 = !DILocation(line: 14, column: 8, scope: !270)
!280 = !DILocation(line: 16, column: 24, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !17, line: 15, column: 5)
!282 = !DILocation(line: 16, column: 9, scope: !281)
!283 = !DILocation(line: 17, column: 5, scope: !281)
!284 = !DILocation(line: 18, column: 5, scope: !270)
!285 = !DILocation(line: 19, column: 1, scope: !270)
!286 = distinct !DISubprogram(name: "printSinkLine", scope: !17, file: !17, line: 20, type: !271, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!287 = !DILocalVariable(name: "line", arg: 1, scope: !286, file: !17, line: 20, type: !10)
!288 = !DILocation(line: 20, column: 29, scope: !286)
!289 = !DILocation(line: 22, column: 8, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !17, line: 22, column: 8)
!291 = !DILocation(line: 22, column: 13, scope: !290)
!292 = !DILocation(line: 22, column: 8, scope: !286)
!293 = !DILocation(line: 24, column: 24, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !17, line: 23, column: 5)
!295 = !DILocation(line: 24, column: 9, scope: !294)
!296 = !DILocation(line: 25, column: 5, scope: !294)
!297 = !DILocation(line: 26, column: 1, scope: !286)
!298 = distinct !DISubprogram(name: "printWLine", scope: !17, file: !17, line: 27, type: !299, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !36)
!303 = !DILocalVariable(name: "line", arg: 1, scope: !298, file: !17, line: 27, type: !301)
!304 = !DILocation(line: 27, column: 29, scope: !298)
!305 = !DILocation(line: 29, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !298, file: !17, line: 29, column: 8)
!307 = !DILocation(line: 29, column: 13, scope: !306)
!308 = !DILocation(line: 29, column: 8, scope: !298)
!309 = !DILocation(line: 31, column: 27, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !17, line: 30, column: 5)
!311 = !DILocation(line: 31, column: 9, scope: !310)
!312 = !DILocation(line: 32, column: 5, scope: !310)
!313 = !DILocation(line: 33, column: 1, scope: !298)
!314 = distinct !DISubprogram(name: "printIntLine", scope: !17, file: !17, line: 35, type: !315, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !36}
!317 = !DILocalVariable(name: "intNumber", arg: 1, scope: !314, file: !17, line: 35, type: !36)
!318 = !DILocation(line: 35, column: 24, scope: !314)
!319 = !DILocation(line: 37, column: 20, scope: !314)
!320 = !DILocation(line: 37, column: 5, scope: !314)
!321 = !DILocation(line: 38, column: 1, scope: !314)
!322 = distinct !DISubprogram(name: "printShortLine", scope: !17, file: !17, line: 40, type: !323, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !325}
!325 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!326 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !322, file: !17, line: 40, type: !325)
!327 = !DILocation(line: 40, column: 28, scope: !322)
!328 = !DILocation(line: 42, column: 21, scope: !322)
!329 = !DILocation(line: 42, column: 5, scope: !322)
!330 = !DILocation(line: 43, column: 1, scope: !322)
!331 = distinct !DISubprogram(name: "printFloatLine", scope: !17, file: !17, line: 45, type: !332, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !334}
!334 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!335 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !331, file: !17, line: 45, type: !334)
!336 = !DILocation(line: 45, column: 28, scope: !331)
!337 = !DILocation(line: 47, column: 20, scope: !331)
!338 = !DILocation(line: 47, column: 5, scope: !331)
!339 = !DILocation(line: 48, column: 1, scope: !331)
!340 = distinct !DISubprogram(name: "printLongLine", scope: !17, file: !17, line: 50, type: !341, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !343}
!343 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!344 = !DILocalVariable(name: "longNumber", arg: 1, scope: !340, file: !17, line: 50, type: !343)
!345 = !DILocation(line: 50, column: 26, scope: !340)
!346 = !DILocation(line: 52, column: 21, scope: !340)
!347 = !DILocation(line: 52, column: 5, scope: !340)
!348 = !DILocation(line: 53, column: 1, scope: !340)
!349 = distinct !DISubprogram(name: "printLongLongLine", scope: !17, file: !17, line: 55, type: !350, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !352}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !353, line: 27, baseType: !354)
!353 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !355, line: 44, baseType: !343)
!355 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!356 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !349, file: !17, line: 55, type: !352)
!357 = !DILocation(line: 55, column: 33, scope: !349)
!358 = !DILocation(line: 57, column: 29, scope: !349)
!359 = !DILocation(line: 57, column: 5, scope: !349)
!360 = !DILocation(line: 58, column: 1, scope: !349)
!361 = distinct !DISubprogram(name: "printSizeTLine", scope: !17, file: !17, line: 60, type: !362, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !75}
!364 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !361, file: !17, line: 60, type: !75)
!365 = !DILocation(line: 60, column: 29, scope: !361)
!366 = !DILocation(line: 62, column: 21, scope: !361)
!367 = !DILocation(line: 62, column: 5, scope: !361)
!368 = !DILocation(line: 63, column: 1, scope: !361)
!369 = distinct !DISubprogram(name: "printHexCharLine", scope: !17, file: !17, line: 65, type: !370, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !11}
!372 = !DILocalVariable(name: "charHex", arg: 1, scope: !369, file: !17, line: 65, type: !11)
!373 = !DILocation(line: 65, column: 29, scope: !369)
!374 = !DILocation(line: 67, column: 22, scope: !369)
!375 = !DILocation(line: 67, column: 5, scope: !369)
!376 = !DILocation(line: 68, column: 1, scope: !369)
!377 = distinct !DISubprogram(name: "printWcharLine", scope: !17, file: !17, line: 70, type: !378, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !302}
!380 = !DILocalVariable(name: "wideChar", arg: 1, scope: !377, file: !17, line: 70, type: !302)
!381 = !DILocation(line: 70, column: 29, scope: !377)
!382 = !DILocalVariable(name: "s", scope: !377, file: !17, line: 74, type: !383)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 64, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 2)
!386 = !DILocation(line: 74, column: 13, scope: !377)
!387 = !DILocation(line: 75, column: 16, scope: !377)
!388 = !DILocation(line: 75, column: 9, scope: !377)
!389 = !DILocation(line: 75, column: 14, scope: !377)
!390 = !DILocation(line: 76, column: 9, scope: !377)
!391 = !DILocation(line: 76, column: 14, scope: !377)
!392 = !DILocation(line: 77, column: 21, scope: !377)
!393 = !DILocation(line: 77, column: 5, scope: !377)
!394 = !DILocation(line: 78, column: 1, scope: !377)
!395 = distinct !DISubprogram(name: "printUnsignedLine", scope: !17, file: !17, line: 80, type: !396, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !21}
!398 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !395, file: !17, line: 80, type: !21)
!399 = !DILocation(line: 80, column: 33, scope: !395)
!400 = !DILocation(line: 82, column: 20, scope: !395)
!401 = !DILocation(line: 82, column: 5, scope: !395)
!402 = !DILocation(line: 83, column: 1, scope: !395)
!403 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !17, file: !17, line: 85, type: !404, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !38}
!406 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !403, file: !17, line: 85, type: !38)
!407 = !DILocation(line: 85, column: 45, scope: !403)
!408 = !DILocation(line: 87, column: 22, scope: !403)
!409 = !DILocation(line: 87, column: 5, scope: !403)
!410 = !DILocation(line: 88, column: 1, scope: !403)
!411 = distinct !DISubprogram(name: "printDoubleLine", scope: !17, file: !17, line: 90, type: !412, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !414}
!414 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!415 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !411, file: !17, line: 90, type: !414)
!416 = !DILocation(line: 90, column: 29, scope: !411)
!417 = !DILocation(line: 92, column: 20, scope: !411)
!418 = !DILocation(line: 92, column: 5, scope: !411)
!419 = !DILocation(line: 93, column: 1, scope: !411)
!420 = distinct !DISubprogram(name: "printStructLine", scope: !17, file: !17, line: 95, type: !421, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !425, line: 100, baseType: !426)
!425 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_066/source_code")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !425, line: 96, size: 64, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !426, file: !425, line: 98, baseType: !36, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !426, file: !425, line: 99, baseType: !36, size: 32, offset: 32)
!430 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !420, file: !17, line: 95, type: !423)
!431 = !DILocation(line: 95, column: 40, scope: !420)
!432 = !DILocation(line: 97, column: 26, scope: !420)
!433 = !DILocation(line: 97, column: 47, scope: !420)
!434 = !DILocation(line: 97, column: 55, scope: !420)
!435 = !DILocation(line: 97, column: 76, scope: !420)
!436 = !DILocation(line: 97, column: 5, scope: !420)
!437 = !DILocation(line: 98, column: 1, scope: !420)
!438 = distinct !DISubprogram(name: "printBytesLine", scope: !17, file: !17, line: 100, type: !439, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !441, !75}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!442 = !DILocalVariable(name: "bytes", arg: 1, scope: !438, file: !17, line: 100, type: !441)
!443 = !DILocation(line: 100, column: 38, scope: !438)
!444 = !DILocalVariable(name: "numBytes", arg: 2, scope: !438, file: !17, line: 100, type: !75)
!445 = !DILocation(line: 100, column: 52, scope: !438)
!446 = !DILocalVariable(name: "i", scope: !438, file: !17, line: 102, type: !75)
!447 = !DILocation(line: 102, column: 12, scope: !438)
!448 = !DILocation(line: 103, column: 12, scope: !449)
!449 = distinct !DILexicalBlock(scope: !438, file: !17, line: 103, column: 5)
!450 = !DILocation(line: 103, column: 10, scope: !449)
!451 = !DILocation(line: 103, column: 17, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !17, line: 103, column: 5)
!453 = !DILocation(line: 103, column: 21, scope: !452)
!454 = !DILocation(line: 103, column: 19, scope: !452)
!455 = !DILocation(line: 103, column: 5, scope: !449)
!456 = !DILocation(line: 105, column: 24, scope: !457)
!457 = distinct !DILexicalBlock(scope: !452, file: !17, line: 104, column: 5)
!458 = !DILocation(line: 105, column: 30, scope: !457)
!459 = !DILocation(line: 105, column: 9, scope: !457)
!460 = !DILocation(line: 106, column: 5, scope: !457)
!461 = !DILocation(line: 103, column: 31, scope: !452)
!462 = !DILocation(line: 103, column: 5, scope: !452)
!463 = distinct !{!463, !455, !464, !185}
!464 = !DILocation(line: 106, column: 5, scope: !449)
!465 = !DILocation(line: 107, column: 5, scope: !438)
!466 = !DILocation(line: 108, column: 1, scope: !438)
!467 = distinct !DISubprogram(name: "decodeHexChars", scope: !17, file: !17, line: 113, type: !468, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!468 = !DISubroutineType(types: !469)
!469 = !{!75, !441, !75, !10}
!470 = !DILocalVariable(name: "bytes", arg: 1, scope: !467, file: !17, line: 113, type: !441)
!471 = !DILocation(line: 113, column: 39, scope: !467)
!472 = !DILocalVariable(name: "numBytes", arg: 2, scope: !467, file: !17, line: 113, type: !75)
!473 = !DILocation(line: 113, column: 53, scope: !467)
!474 = !DILocalVariable(name: "hex", arg: 3, scope: !467, file: !17, line: 113, type: !10)
!475 = !DILocation(line: 113, column: 71, scope: !467)
!476 = !DILocalVariable(name: "numWritten", scope: !467, file: !17, line: 115, type: !75)
!477 = !DILocation(line: 115, column: 12, scope: !467)
!478 = !DILocation(line: 121, column: 5, scope: !467)
!479 = !DILocation(line: 121, column: 12, scope: !467)
!480 = !DILocation(line: 121, column: 25, scope: !467)
!481 = !DILocation(line: 121, column: 23, scope: !467)
!482 = !DILocation(line: 121, column: 34, scope: !467)
!483 = !DILocation(line: 121, column: 37, scope: !467)
!484 = !DILocation(line: 121, column: 67, scope: !467)
!485 = !DILocation(line: 121, column: 70, scope: !467)
!486 = !DILocation(line: 0, scope: !467)
!487 = !DILocalVariable(name: "byte", scope: !488, file: !17, line: 123, type: !36)
!488 = distinct !DILexicalBlock(scope: !467, file: !17, line: 122, column: 5)
!489 = !DILocation(line: 123, column: 13, scope: !488)
!490 = !DILocation(line: 124, column: 17, scope: !488)
!491 = !DILocation(line: 124, column: 25, scope: !488)
!492 = !DILocation(line: 124, column: 23, scope: !488)
!493 = !DILocation(line: 124, column: 9, scope: !488)
!494 = !DILocation(line: 125, column: 45, scope: !488)
!495 = !DILocation(line: 125, column: 29, scope: !488)
!496 = !DILocation(line: 125, column: 9, scope: !488)
!497 = !DILocation(line: 125, column: 15, scope: !488)
!498 = !DILocation(line: 125, column: 27, scope: !488)
!499 = !DILocation(line: 126, column: 9, scope: !488)
!500 = distinct !{!500, !478, !501, !185}
!501 = !DILocation(line: 127, column: 5, scope: !467)
!502 = !DILocation(line: 129, column: 12, scope: !467)
!503 = !DILocation(line: 129, column: 5, scope: !467)
!504 = distinct !DISubprogram(name: "decodeHexWChars", scope: !17, file: !17, line: 135, type: !505, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!505 = !DISubroutineType(types: !506)
!506 = !{!75, !441, !75, !301}
!507 = !DILocalVariable(name: "bytes", arg: 1, scope: !504, file: !17, line: 135, type: !441)
!508 = !DILocation(line: 135, column: 41, scope: !504)
!509 = !DILocalVariable(name: "numBytes", arg: 2, scope: !504, file: !17, line: 135, type: !75)
!510 = !DILocation(line: 135, column: 55, scope: !504)
!511 = !DILocalVariable(name: "hex", arg: 3, scope: !504, file: !17, line: 135, type: !301)
!512 = !DILocation(line: 135, column: 76, scope: !504)
!513 = !DILocalVariable(name: "numWritten", scope: !504, file: !17, line: 137, type: !75)
!514 = !DILocation(line: 137, column: 12, scope: !504)
!515 = !DILocation(line: 143, column: 5, scope: !504)
!516 = !DILocation(line: 143, column: 12, scope: !504)
!517 = !DILocation(line: 143, column: 25, scope: !504)
!518 = !DILocation(line: 143, column: 23, scope: !504)
!519 = !DILocation(line: 143, column: 34, scope: !504)
!520 = !DILocation(line: 143, column: 47, scope: !504)
!521 = !DILocation(line: 143, column: 55, scope: !504)
!522 = !DILocation(line: 143, column: 53, scope: !504)
!523 = !DILocation(line: 143, column: 37, scope: !504)
!524 = !DILocation(line: 143, column: 68, scope: !504)
!525 = !DILocation(line: 143, column: 81, scope: !504)
!526 = !DILocation(line: 143, column: 89, scope: !504)
!527 = !DILocation(line: 143, column: 87, scope: !504)
!528 = !DILocation(line: 143, column: 100, scope: !504)
!529 = !DILocation(line: 143, column: 71, scope: !504)
!530 = !DILocation(line: 0, scope: !504)
!531 = !DILocalVariable(name: "byte", scope: !532, file: !17, line: 145, type: !36)
!532 = distinct !DILexicalBlock(scope: !504, file: !17, line: 144, column: 5)
!533 = !DILocation(line: 145, column: 13, scope: !532)
!534 = !DILocation(line: 146, column: 18, scope: !532)
!535 = !DILocation(line: 146, column: 26, scope: !532)
!536 = !DILocation(line: 146, column: 24, scope: !532)
!537 = !DILocation(line: 146, column: 9, scope: !532)
!538 = !DILocation(line: 147, column: 45, scope: !532)
!539 = !DILocation(line: 147, column: 29, scope: !532)
!540 = !DILocation(line: 147, column: 9, scope: !532)
!541 = !DILocation(line: 147, column: 15, scope: !532)
!542 = !DILocation(line: 147, column: 27, scope: !532)
!543 = !DILocation(line: 148, column: 9, scope: !532)
!544 = distinct !{!544, !515, !545, !185}
!545 = !DILocation(line: 149, column: 5, scope: !504)
!546 = !DILocation(line: 151, column: 12, scope: !504)
!547 = !DILocation(line: 151, column: 5, scope: !504)
!548 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !17, file: !17, line: 156, type: !549, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!549 = !DISubroutineType(types: !550)
!550 = !{!36}
!551 = !DILocation(line: 158, column: 5, scope: !548)
!552 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !17, file: !17, line: 161, type: !549, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!553 = !DILocation(line: 163, column: 5, scope: !552)
!554 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !17, file: !17, line: 166, type: !549, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!555 = !DILocation(line: 168, column: 13, scope: !554)
!556 = !DILocation(line: 168, column: 20, scope: !554)
!557 = !DILocation(line: 168, column: 5, scope: !554)
!558 = distinct !DISubprogram(name: "good1", scope: !17, file: !17, line: 187, type: !62, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!559 = !DILocation(line: 187, column: 16, scope: !558)
!560 = distinct !DISubprogram(name: "good2", scope: !17, file: !17, line: 188, type: !62, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!561 = !DILocation(line: 188, column: 16, scope: !560)
!562 = distinct !DISubprogram(name: "good3", scope: !17, file: !17, line: 189, type: !62, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!563 = !DILocation(line: 189, column: 16, scope: !562)
!564 = distinct !DISubprogram(name: "good4", scope: !17, file: !17, line: 190, type: !62, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!565 = !DILocation(line: 190, column: 16, scope: !564)
!566 = distinct !DISubprogram(name: "good5", scope: !17, file: !17, line: 191, type: !62, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!567 = !DILocation(line: 191, column: 16, scope: !566)
!568 = distinct !DISubprogram(name: "good6", scope: !17, file: !17, line: 192, type: !62, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!569 = !DILocation(line: 192, column: 16, scope: !568)
!570 = distinct !DISubprogram(name: "good7", scope: !17, file: !17, line: 193, type: !62, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!571 = !DILocation(line: 193, column: 16, scope: !570)
!572 = distinct !DISubprogram(name: "good8", scope: !17, file: !17, line: 194, type: !62, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!573 = !DILocation(line: 194, column: 16, scope: !572)
!574 = distinct !DISubprogram(name: "good9", scope: !17, file: !17, line: 195, type: !62, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!575 = !DILocation(line: 195, column: 16, scope: !574)
!576 = distinct !DISubprogram(name: "bad1", scope: !17, file: !17, line: 198, type: !62, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!577 = !DILocation(line: 198, column: 15, scope: !576)
!578 = distinct !DISubprogram(name: "bad2", scope: !17, file: !17, line: 199, type: !62, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!579 = !DILocation(line: 199, column: 15, scope: !578)
!580 = distinct !DISubprogram(name: "bad3", scope: !17, file: !17, line: 200, type: !62, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!581 = !DILocation(line: 200, column: 15, scope: !580)
!582 = distinct !DISubprogram(name: "bad4", scope: !17, file: !17, line: 201, type: !62, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!583 = !DILocation(line: 201, column: 15, scope: !582)
!584 = distinct !DISubprogram(name: "bad5", scope: !17, file: !17, line: 202, type: !62, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!585 = !DILocation(line: 202, column: 15, scope: !584)
!586 = distinct !DISubprogram(name: "bad6", scope: !17, file: !17, line: 203, type: !62, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!587 = !DILocation(line: 203, column: 15, scope: !586)
!588 = distinct !DISubprogram(name: "bad7", scope: !17, file: !17, line: 204, type: !62, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!589 = !DILocation(line: 204, column: 15, scope: !588)
!590 = distinct !DISubprogram(name: "bad8", scope: !17, file: !17, line: 205, type: !62, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!591 = !DILocation(line: 205, column: 15, scope: !590)
!592 = distinct !DISubprogram(name: "bad9", scope: !17, file: !17, line: 206, type: !62, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!593 = !DILocation(line: 206, column: 15, scope: !592)
