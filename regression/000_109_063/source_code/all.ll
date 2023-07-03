; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_65_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !59, metadata !DIExpression()), !dbg !63
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_environment_65b_badSink, void (i8*)** %funcPtr, align 8, !dbg !63
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
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !105
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !105
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !106
  store i8* %arraydecay, i8** %data, align 8, !dbg !107
  %1 = load i8*, i8** %data, align 8, !dbg !108
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !109
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
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_environment_65b_goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !117
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_65_good() #0 !dbg !147 {
entry:
  call void @goodG2B(), !dbg !148
  call void @goodB2G(), !dbg !149
  ret void, !dbg !150
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_65b_badSink(i8* %data) #0 !dbg !151 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %i, metadata !154, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i32* %n, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = load i8*, i8** %data.addr, align 8, !dbg !161
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !163
  %cmp = icmp eq i32 %call, 1, !dbg !164
  br i1 %cmp, label %if.then, label %if.end, !dbg !165

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !166
  store i32 0, i32* %i, align 4, !dbg !168
  br label %for.cond, !dbg !170

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !171
  %2 = load i32, i32* %n, align 4, !dbg !173
  %cmp1 = icmp slt i32 %1, %2, !dbg !174
  br i1 %cmp1, label %for.body, label %for.end, !dbg !175

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !176
  %inc = add nsw i32 %3, 1, !dbg !176
  store i32 %inc, i32* %intVariable, align 4, !dbg !176
  br label %for.inc, !dbg !178

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !179
  %inc2 = add nsw i32 %4, 1, !dbg !179
  store i32 %inc2, i32* %i, align 4, !dbg !179
  br label %for.cond, !dbg !180, !llvm.loop !181

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !184
  call void @printIntLine(i32 %5), !dbg !185
  br label %if.end, !dbg !186

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !187
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink(i8* %data) #0 !dbg !188 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %i, metadata !191, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %n, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !196, metadata !DIExpression()), !dbg !197
  %0 = load i8*, i8** %data.addr, align 8, !dbg !198
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !200
  %cmp = icmp eq i32 %call, 1, !dbg !201
  br i1 %cmp, label %if.then, label %if.end, !dbg !202

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !203
  store i32 0, i32* %i, align 4, !dbg !205
  br label %for.cond, !dbg !207

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !208
  %2 = load i32, i32* %n, align 4, !dbg !210
  %cmp1 = icmp slt i32 %1, %2, !dbg !211
  br i1 %cmp1, label %for.body, label %for.end, !dbg !212

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !213
  %inc = add nsw i32 %3, 1, !dbg !213
  store i32 %inc, i32* %intVariable, align 4, !dbg !213
  br label %for.inc, !dbg !215

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !216
  %inc2 = add nsw i32 %4, 1, !dbg !216
  store i32 %inc2, i32* %i, align 4, !dbg !216
  br label %for.cond, !dbg !217, !llvm.loop !218

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !220
  call void @printIntLine(i32 %5), !dbg !221
  br label %if.end, !dbg !222

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !223
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_65b_goodB2GSink(i8* %data) #0 !dbg !224 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i32* %i, metadata !227, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %n, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = load i8*, i8** %data.addr, align 8, !dbg !234
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !236
  %cmp = icmp eq i32 %call, 1, !dbg !237
  br i1 %cmp, label %if.then, label %if.end5, !dbg !238

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !239
  %cmp1 = icmp slt i32 %1, 10000, !dbg !242
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !243

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !244
  store i32 0, i32* %i, align 4, !dbg !246
  br label %for.cond, !dbg !248

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !249
  %3 = load i32, i32* %n, align 4, !dbg !251
  %cmp3 = icmp slt i32 %2, %3, !dbg !252
  br i1 %cmp3, label %for.body, label %for.end, !dbg !253

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !254
  %inc = add nsw i32 %4, 1, !dbg !254
  store i32 %inc, i32* %intVariable, align 4, !dbg !254
  br label %for.inc, !dbg !256

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !257
  %inc4 = add nsw i32 %5, 1, !dbg !257
  store i32 %inc4, i32* %i, align 4, !dbg !257
  br label %for.cond, !dbg !258, !llvm.loop !259

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !261
  call void @printIntLine(i32 %6), !dbg !262
  br label %if.end, !dbg !263

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !264

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !266 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !267, metadata !DIExpression()), !dbg !268
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !269
  %0 = load i8*, i8** %line.addr, align 8, !dbg !270
  %cmp = icmp ne i8* %0, null, !dbg !272
  br i1 %cmp, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !274
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !276
  br label %if.end, !dbg !277

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !278
  ret void, !dbg !279
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !280 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load i8*, i8** %line.addr, align 8, !dbg !283
  %cmp = icmp ne i8* %0, null, !dbg !285
  br i1 %cmp, label %if.then, label %if.end, !dbg !286

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !287
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !289
  br label %if.end, !dbg !290

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !292 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load i32*, i32** %line.addr, align 8, !dbg !299
  %cmp = icmp ne i32* %0, null, !dbg !301
  br i1 %cmp, label %if.then, label %if.end, !dbg !302

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !303
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !305
  br label %if.end, !dbg !306

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !307
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !308 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !313
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !316 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !322
  %conv = sext i16 %0 to i32, !dbg !322
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !325 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !331
  %conv = fpext float %0 to double, !dbg !331
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !332
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !334 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !340
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !341
  ret void, !dbg !342
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !343 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !352
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !353
  ret void, !dbg !354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !355 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.13, i64 0, i64 0), i64 %0), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !363 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !368
  %conv = sext i8 %0 to i32, !dbg !368
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !369
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !371 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !374, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !376, metadata !DIExpression()), !dbg !380
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !381
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !382
  store i32 %0, i32* %arrayidx, align 4, !dbg !383
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !384
  store i32 0, i32* %arrayidx1, align 4, !dbg !385
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !386
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !387
  ret void, !dbg !388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !389 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !394
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !395
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !397 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !402
  %conv = zext i8 %0 to i32, !dbg !402
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !403
  ret void, !dbg !404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !405 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !414 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !426
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !427
  %1 = load i32, i32* %intOne, align 4, !dbg !427
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !428
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !429
  %3 = load i32, i32* %intTwo, align 4, !dbg !429
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !430
  ret void, !dbg !431
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !432 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !436, metadata !DIExpression()), !dbg !437
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata i64* %i, metadata !440, metadata !DIExpression()), !dbg !441
  store i64 0, i64* %i, align 8, !dbg !442
  br label %for.cond, !dbg !444

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !445
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !447
  %cmp = icmp ult i64 %0, %1, !dbg !448
  br i1 %cmp, label %for.body, label %for.end, !dbg !449

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !450
  %3 = load i64, i64* %i, align 8, !dbg !452
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !450
  %4 = load i8, i8* %arrayidx, align 1, !dbg !450
  %conv = zext i8 %4 to i32, !dbg !450
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !453
  br label %for.inc, !dbg !454

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !455
  %inc = add i64 %5, 1, !dbg !455
  store i64 %inc, i64* %i, align 8, !dbg !455
  br label %for.cond, !dbg !456, !llvm.loop !457

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !459
  ret void, !dbg !460
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !461 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !464, metadata !DIExpression()), !dbg !465
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !466, metadata !DIExpression()), !dbg !467
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !468, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !470, metadata !DIExpression()), !dbg !471
  store i64 0, i64* %numWritten, align 8, !dbg !471
  br label %while.cond, !dbg !472

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !473
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !474
  %cmp = icmp ult i64 %0, %1, !dbg !475
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !476

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !477
  %2 = load i16*, i16** %call, align 8, !dbg !477
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !477
  %4 = load i64, i64* %numWritten, align 8, !dbg !477
  %mul = mul i64 2, %4, !dbg !477
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !477
  %5 = load i8, i8* %arrayidx, align 1, !dbg !477
  %conv = sext i8 %5 to i32, !dbg !477
  %idxprom = sext i32 %conv to i64, !dbg !477
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !477
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !477
  %conv2 = zext i16 %6 to i32, !dbg !477
  %and = and i32 %conv2, 4096, !dbg !477
  %tobool = icmp ne i32 %and, 0, !dbg !477
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !478

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !479
  %7 = load i16*, i16** %call3, align 8, !dbg !479
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !479
  %9 = load i64, i64* %numWritten, align 8, !dbg !479
  %mul4 = mul i64 2, %9, !dbg !479
  %add = add i64 %mul4, 1, !dbg !479
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !479
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !479
  %conv6 = sext i8 %10 to i32, !dbg !479
  %idxprom7 = sext i32 %conv6 to i64, !dbg !479
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !479
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !479
  %conv9 = zext i16 %11 to i32, !dbg !479
  %and10 = and i32 %conv9, 4096, !dbg !479
  %tobool11 = icmp ne i32 %and10, 0, !dbg !478
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !480
  br i1 %12, label %while.body, label %while.end, !dbg !472

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !481, metadata !DIExpression()), !dbg !483
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !484
  %14 = load i64, i64* %numWritten, align 8, !dbg !485
  %mul12 = mul i64 2, %14, !dbg !486
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !484
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !487
  %15 = load i32, i32* %byte, align 4, !dbg !488
  %conv15 = trunc i32 %15 to i8, !dbg !489
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !490
  %17 = load i64, i64* %numWritten, align 8, !dbg !491
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !490
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !492
  %18 = load i64, i64* %numWritten, align 8, !dbg !493
  %inc = add i64 %18, 1, !dbg !493
  store i64 %inc, i64* %numWritten, align 8, !dbg !493
  br label %while.cond, !dbg !472, !llvm.loop !494

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !496
  ret i64 %19, !dbg !497
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !498 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !501, metadata !DIExpression()), !dbg !502
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !503, metadata !DIExpression()), !dbg !504
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !505, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !507, metadata !DIExpression()), !dbg !508
  store i64 0, i64* %numWritten, align 8, !dbg !508
  br label %while.cond, !dbg !509

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !510
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !511
  %cmp = icmp ult i64 %0, %1, !dbg !512
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !513

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !514
  %3 = load i64, i64* %numWritten, align 8, !dbg !515
  %mul = mul i64 2, %3, !dbg !516
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !514
  %4 = load i32, i32* %arrayidx, align 4, !dbg !514
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !517
  %tobool = icmp ne i32 %call, 0, !dbg !517
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !518

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !519
  %6 = load i64, i64* %numWritten, align 8, !dbg !520
  %mul1 = mul i64 2, %6, !dbg !521
  %add = add i64 %mul1, 1, !dbg !522
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !519
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !519
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !523
  %tobool4 = icmp ne i32 %call3, 0, !dbg !518
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !524
  br i1 %8, label %while.body, label %while.end, !dbg !509

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !525, metadata !DIExpression()), !dbg !527
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !528
  %10 = load i64, i64* %numWritten, align 8, !dbg !529
  %mul5 = mul i64 2, %10, !dbg !530
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !528
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !531
  %11 = load i32, i32* %byte, align 4, !dbg !532
  %conv = trunc i32 %11 to i8, !dbg !533
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !534
  %13 = load i64, i64* %numWritten, align 8, !dbg !535
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !534
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !536
  %14 = load i64, i64* %numWritten, align 8, !dbg !537
  %inc = add i64 %14, 1, !dbg !537
  store i64 %inc, i64* %numWritten, align 8, !dbg !537
  br label %while.cond, !dbg !509, !llvm.loop !538

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !540
  ret i64 %15, !dbg !541
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !542 {
entry:
  ret i32 1, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !546 {
entry:
  ret i32 0, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !548 {
entry:
  %call = call i32 @rand() #8, !dbg !549
  %rem = srem i32 %call, 2, !dbg !550
  ret i32 %rem, !dbg !551
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !586 {
entry:
  ret void, !dbg !587
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_063/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_063/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_65b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_063/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_65_bad", scope: !45, file: !45, line: 39, type: !55, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 41, type: !42)
!58 = !DILocation(line: 41, column: 12, scope: !54)
!59 = !DILocalVariable(name: "funcPtr", scope: !54, file: !45, line: 43, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !42}
!63 = !DILocation(line: 43, column: 12, scope: !54)
!64 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 44, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 100)
!68 = !DILocation(line: 44, column: 10, scope: !54)
!69 = !DILocation(line: 45, column: 12, scope: !54)
!70 = !DILocation(line: 45, column: 10, scope: !54)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !45, line: 48, type: !73)
!72 = distinct !DILexicalBlock(scope: !54, file: !45, line: 46, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DILocation(line: 48, column: 16, scope: !72)
!77 = !DILocation(line: 48, column: 33, scope: !72)
!78 = !DILocation(line: 48, column: 26, scope: !72)
!79 = !DILocalVariable(name: "environment", scope: !72, file: !45, line: 49, type: !42)
!80 = !DILocation(line: 49, column: 16, scope: !72)
!81 = !DILocation(line: 49, column: 30, scope: !72)
!82 = !DILocation(line: 51, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !72, file: !45, line: 51, column: 13)
!84 = !DILocation(line: 51, column: 25, scope: !83)
!85 = !DILocation(line: 51, column: 13, scope: !72)
!86 = !DILocation(line: 54, column: 21, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !45, line: 52, column: 9)
!88 = !DILocation(line: 54, column: 26, scope: !87)
!89 = !DILocation(line: 54, column: 25, scope: !87)
!90 = !DILocation(line: 54, column: 35, scope: !87)
!91 = !DILocation(line: 54, column: 52, scope: !87)
!92 = !DILocation(line: 54, column: 51, scope: !87)
!93 = !DILocation(line: 54, column: 59, scope: !87)
!94 = !DILocation(line: 54, column: 13, scope: !87)
!95 = !DILocation(line: 55, column: 9, scope: !87)
!96 = !DILocation(line: 58, column: 5, scope: !54)
!97 = !DILocation(line: 58, column: 13, scope: !54)
!98 = !DILocation(line: 59, column: 1, scope: !54)
!99 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 67, type: !55, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!100 = !DILocalVariable(name: "data", scope: !99, file: !45, line: 69, type: !42)
!101 = !DILocation(line: 69, column: 12, scope: !99)
!102 = !DILocalVariable(name: "funcPtr", scope: !99, file: !45, line: 70, type: !60)
!103 = !DILocation(line: 70, column: 12, scope: !99)
!104 = !DILocalVariable(name: "dataBuffer", scope: !99, file: !45, line: 71, type: !65)
!105 = !DILocation(line: 71, column: 10, scope: !99)
!106 = !DILocation(line: 72, column: 12, scope: !99)
!107 = !DILocation(line: 72, column: 10, scope: !99)
!108 = !DILocation(line: 74, column: 12, scope: !99)
!109 = !DILocation(line: 74, column: 5, scope: !99)
!110 = !DILocation(line: 75, column: 5, scope: !99)
!111 = !DILocation(line: 75, column: 13, scope: !99)
!112 = !DILocation(line: 76, column: 1, scope: !99)
!113 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 80, type: !55, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!114 = !DILocalVariable(name: "data", scope: !113, file: !45, line: 82, type: !42)
!115 = !DILocation(line: 82, column: 12, scope: !113)
!116 = !DILocalVariable(name: "funcPtr", scope: !113, file: !45, line: 83, type: !60)
!117 = !DILocation(line: 83, column: 12, scope: !113)
!118 = !DILocalVariable(name: "dataBuffer", scope: !113, file: !45, line: 84, type: !65)
!119 = !DILocation(line: 84, column: 10, scope: !113)
!120 = !DILocation(line: 85, column: 12, scope: !113)
!121 = !DILocation(line: 85, column: 10, scope: !113)
!122 = !DILocalVariable(name: "dataLen", scope: !123, file: !45, line: 88, type: !73)
!123 = distinct !DILexicalBlock(scope: !113, file: !45, line: 86, column: 5)
!124 = !DILocation(line: 88, column: 16, scope: !123)
!125 = !DILocation(line: 88, column: 33, scope: !123)
!126 = !DILocation(line: 88, column: 26, scope: !123)
!127 = !DILocalVariable(name: "environment", scope: !123, file: !45, line: 89, type: !42)
!128 = !DILocation(line: 89, column: 16, scope: !123)
!129 = !DILocation(line: 89, column: 30, scope: !123)
!130 = !DILocation(line: 91, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !45, line: 91, column: 13)
!132 = !DILocation(line: 91, column: 25, scope: !131)
!133 = !DILocation(line: 91, column: 13, scope: !123)
!134 = !DILocation(line: 94, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !45, line: 92, column: 9)
!136 = !DILocation(line: 94, column: 26, scope: !135)
!137 = !DILocation(line: 94, column: 25, scope: !135)
!138 = !DILocation(line: 94, column: 35, scope: !135)
!139 = !DILocation(line: 94, column: 52, scope: !135)
!140 = !DILocation(line: 94, column: 51, scope: !135)
!141 = !DILocation(line: 94, column: 59, scope: !135)
!142 = !DILocation(line: 94, column: 13, scope: !135)
!143 = !DILocation(line: 95, column: 9, scope: !135)
!144 = !DILocation(line: 97, column: 5, scope: !113)
!145 = !DILocation(line: 97, column: 13, scope: !113)
!146 = !DILocation(line: 98, column: 1, scope: !113)
!147 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_65_good", scope: !45, file: !45, line: 100, type: !55, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!148 = !DILocation(line: 102, column: 5, scope: !147)
!149 = !DILocation(line: 103, column: 5, scope: !147)
!150 = !DILocation(line: 104, column: 1, scope: !147)
!151 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_65b_badSink", scope: !49, file: !49, line: 36, type: !61, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!152 = !DILocalVariable(name: "data", arg: 1, scope: !151, file: !49, line: 36, type: !42)
!153 = !DILocation(line: 36, column: 75, scope: !151)
!154 = !DILocalVariable(name: "i", scope: !155, file: !49, line: 39, type: !23)
!155 = distinct !DILexicalBlock(scope: !151, file: !49, line: 38, column: 5)
!156 = !DILocation(line: 39, column: 13, scope: !155)
!157 = !DILocalVariable(name: "n", scope: !155, file: !49, line: 39, type: !23)
!158 = !DILocation(line: 39, column: 16, scope: !155)
!159 = !DILocalVariable(name: "intVariable", scope: !155, file: !49, line: 39, type: !23)
!160 = !DILocation(line: 39, column: 19, scope: !155)
!161 = !DILocation(line: 40, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !49, line: 40, column: 13)
!163 = !DILocation(line: 40, column: 13, scope: !162)
!164 = !DILocation(line: 40, column: 36, scope: !162)
!165 = !DILocation(line: 40, column: 13, scope: !155)
!166 = !DILocation(line: 43, column: 25, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !49, line: 41, column: 9)
!168 = !DILocation(line: 44, column: 20, scope: !169)
!169 = distinct !DILexicalBlock(scope: !167, file: !49, line: 44, column: 13)
!170 = !DILocation(line: 44, column: 18, scope: !169)
!171 = !DILocation(line: 44, column: 25, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !49, line: 44, column: 13)
!173 = !DILocation(line: 44, column: 29, scope: !172)
!174 = !DILocation(line: 44, column: 27, scope: !172)
!175 = !DILocation(line: 44, column: 13, scope: !169)
!176 = !DILocation(line: 47, column: 28, scope: !177)
!177 = distinct !DILexicalBlock(scope: !172, file: !49, line: 45, column: 13)
!178 = !DILocation(line: 48, column: 13, scope: !177)
!179 = !DILocation(line: 44, column: 33, scope: !172)
!180 = !DILocation(line: 44, column: 13, scope: !172)
!181 = distinct !{!181, !175, !182, !183}
!182 = !DILocation(line: 48, column: 13, scope: !169)
!183 = !{!"llvm.loop.mustprogress"}
!184 = !DILocation(line: 49, column: 26, scope: !167)
!185 = !DILocation(line: 49, column: 13, scope: !167)
!186 = !DILocation(line: 50, column: 9, scope: !167)
!187 = !DILocation(line: 52, column: 1, scope: !151)
!188 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink", scope: !49, file: !49, line: 59, type: !61, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!189 = !DILocalVariable(name: "data", arg: 1, scope: !188, file: !49, line: 59, type: !42)
!190 = !DILocation(line: 59, column: 79, scope: !188)
!191 = !DILocalVariable(name: "i", scope: !192, file: !49, line: 62, type: !23)
!192 = distinct !DILexicalBlock(scope: !188, file: !49, line: 61, column: 5)
!193 = !DILocation(line: 62, column: 13, scope: !192)
!194 = !DILocalVariable(name: "n", scope: !192, file: !49, line: 62, type: !23)
!195 = !DILocation(line: 62, column: 16, scope: !192)
!196 = !DILocalVariable(name: "intVariable", scope: !192, file: !49, line: 62, type: !23)
!197 = !DILocation(line: 62, column: 19, scope: !192)
!198 = !DILocation(line: 63, column: 20, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !49, line: 63, column: 13)
!200 = !DILocation(line: 63, column: 13, scope: !199)
!201 = !DILocation(line: 63, column: 36, scope: !199)
!202 = !DILocation(line: 63, column: 13, scope: !192)
!203 = !DILocation(line: 66, column: 25, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !49, line: 64, column: 9)
!205 = !DILocation(line: 67, column: 20, scope: !206)
!206 = distinct !DILexicalBlock(scope: !204, file: !49, line: 67, column: 13)
!207 = !DILocation(line: 67, column: 18, scope: !206)
!208 = !DILocation(line: 67, column: 25, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !49, line: 67, column: 13)
!210 = !DILocation(line: 67, column: 29, scope: !209)
!211 = !DILocation(line: 67, column: 27, scope: !209)
!212 = !DILocation(line: 67, column: 13, scope: !206)
!213 = !DILocation(line: 70, column: 28, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !49, line: 68, column: 13)
!215 = !DILocation(line: 71, column: 13, scope: !214)
!216 = !DILocation(line: 67, column: 33, scope: !209)
!217 = !DILocation(line: 67, column: 13, scope: !209)
!218 = distinct !{!218, !212, !219, !183}
!219 = !DILocation(line: 71, column: 13, scope: !206)
!220 = !DILocation(line: 72, column: 26, scope: !204)
!221 = !DILocation(line: 72, column: 13, scope: !204)
!222 = !DILocation(line: 73, column: 9, scope: !204)
!223 = !DILocation(line: 75, column: 1, scope: !188)
!224 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_65b_goodB2GSink", scope: !49, file: !49, line: 78, type: !61, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!225 = !DILocalVariable(name: "data", arg: 1, scope: !224, file: !49, line: 78, type: !42)
!226 = !DILocation(line: 78, column: 79, scope: !224)
!227 = !DILocalVariable(name: "i", scope: !228, file: !49, line: 81, type: !23)
!228 = distinct !DILexicalBlock(scope: !224, file: !49, line: 80, column: 5)
!229 = !DILocation(line: 81, column: 13, scope: !228)
!230 = !DILocalVariable(name: "n", scope: !228, file: !49, line: 81, type: !23)
!231 = !DILocation(line: 81, column: 16, scope: !228)
!232 = !DILocalVariable(name: "intVariable", scope: !228, file: !49, line: 81, type: !23)
!233 = !DILocation(line: 81, column: 19, scope: !228)
!234 = !DILocation(line: 82, column: 20, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !49, line: 82, column: 13)
!236 = !DILocation(line: 82, column: 13, scope: !235)
!237 = !DILocation(line: 82, column: 36, scope: !235)
!238 = !DILocation(line: 82, column: 13, scope: !228)
!239 = !DILocation(line: 85, column: 17, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !49, line: 85, column: 17)
!241 = distinct !DILexicalBlock(scope: !235, file: !49, line: 83, column: 9)
!242 = !DILocation(line: 85, column: 19, scope: !240)
!243 = !DILocation(line: 85, column: 17, scope: !241)
!244 = !DILocation(line: 87, column: 29, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !49, line: 86, column: 13)
!246 = !DILocation(line: 88, column: 24, scope: !247)
!247 = distinct !DILexicalBlock(scope: !245, file: !49, line: 88, column: 17)
!248 = !DILocation(line: 88, column: 22, scope: !247)
!249 = !DILocation(line: 88, column: 29, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !49, line: 88, column: 17)
!251 = !DILocation(line: 88, column: 33, scope: !250)
!252 = !DILocation(line: 88, column: 31, scope: !250)
!253 = !DILocation(line: 88, column: 17, scope: !247)
!254 = !DILocation(line: 91, column: 32, scope: !255)
!255 = distinct !DILexicalBlock(scope: !250, file: !49, line: 89, column: 17)
!256 = !DILocation(line: 92, column: 17, scope: !255)
!257 = !DILocation(line: 88, column: 37, scope: !250)
!258 = !DILocation(line: 88, column: 17, scope: !250)
!259 = distinct !{!259, !253, !260, !183}
!260 = !DILocation(line: 92, column: 17, scope: !247)
!261 = !DILocation(line: 93, column: 30, scope: !245)
!262 = !DILocation(line: 93, column: 17, scope: !245)
!263 = !DILocation(line: 94, column: 13, scope: !245)
!264 = !DILocation(line: 95, column: 9, scope: !241)
!265 = !DILocation(line: 97, column: 1, scope: !224)
!266 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !61, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!267 = !DILocalVariable(name: "line", arg: 1, scope: !266, file: !3, line: 11, type: !42)
!268 = !DILocation(line: 11, column: 25, scope: !266)
!269 = !DILocation(line: 13, column: 1, scope: !266)
!270 = !DILocation(line: 14, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !266, file: !3, line: 14, column: 8)
!272 = !DILocation(line: 14, column: 13, scope: !271)
!273 = !DILocation(line: 14, column: 8, scope: !266)
!274 = !DILocation(line: 16, column: 24, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 15, column: 5)
!276 = !DILocation(line: 16, column: 9, scope: !275)
!277 = !DILocation(line: 17, column: 5, scope: !275)
!278 = !DILocation(line: 18, column: 5, scope: !266)
!279 = !DILocation(line: 19, column: 1, scope: !266)
!280 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !61, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!281 = !DILocalVariable(name: "line", arg: 1, scope: !280, file: !3, line: 20, type: !42)
!282 = !DILocation(line: 20, column: 29, scope: !280)
!283 = !DILocation(line: 22, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !3, line: 22, column: 8)
!285 = !DILocation(line: 22, column: 13, scope: !284)
!286 = !DILocation(line: 22, column: 8, scope: !280)
!287 = !DILocation(line: 24, column: 24, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !3, line: 23, column: 5)
!289 = !DILocation(line: 24, column: 9, scope: !288)
!290 = !DILocation(line: 25, column: 5, scope: !288)
!291 = !DILocation(line: 26, column: 1, scope: !280)
!292 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !293, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 74, baseType: !23)
!297 = !DILocalVariable(name: "line", arg: 1, scope: !292, file: !3, line: 27, type: !295)
!298 = !DILocation(line: 27, column: 29, scope: !292)
!299 = !DILocation(line: 29, column: 8, scope: !300)
!300 = distinct !DILexicalBlock(scope: !292, file: !3, line: 29, column: 8)
!301 = !DILocation(line: 29, column: 13, scope: !300)
!302 = !DILocation(line: 29, column: 8, scope: !292)
!303 = !DILocation(line: 31, column: 27, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !3, line: 30, column: 5)
!305 = !DILocation(line: 31, column: 9, scope: !304)
!306 = !DILocation(line: 32, column: 5, scope: !304)
!307 = !DILocation(line: 33, column: 1, scope: !292)
!308 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !309, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !23}
!311 = !DILocalVariable(name: "intNumber", arg: 1, scope: !308, file: !3, line: 35, type: !23)
!312 = !DILocation(line: 35, column: 24, scope: !308)
!313 = !DILocation(line: 37, column: 20, scope: !308)
!314 = !DILocation(line: 37, column: 5, scope: !308)
!315 = !DILocation(line: 38, column: 1, scope: !308)
!316 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !317, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319}
!319 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!320 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !316, file: !3, line: 40, type: !319)
!321 = !DILocation(line: 40, column: 28, scope: !316)
!322 = !DILocation(line: 42, column: 21, scope: !316)
!323 = !DILocation(line: 42, column: 5, scope: !316)
!324 = !DILocation(line: 43, column: 1, scope: !316)
!325 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !326, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!329 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !325, file: !3, line: 45, type: !328)
!330 = !DILocation(line: 45, column: 28, scope: !325)
!331 = !DILocation(line: 47, column: 20, scope: !325)
!332 = !DILocation(line: 47, column: 5, scope: !325)
!333 = !DILocation(line: 48, column: 1, scope: !325)
!334 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !335, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !337}
!337 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!338 = !DILocalVariable(name: "longNumber", arg: 1, scope: !334, file: !3, line: 50, type: !337)
!339 = !DILocation(line: 50, column: 26, scope: !334)
!340 = !DILocation(line: 52, column: 21, scope: !334)
!341 = !DILocation(line: 52, column: 5, scope: !334)
!342 = !DILocation(line: 53, column: 1, scope: !334)
!343 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !344, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !346}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !347, line: 27, baseType: !348)
!347 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !349, line: 44, baseType: !337)
!349 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!350 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !343, file: !3, line: 55, type: !346)
!351 = !DILocation(line: 55, column: 33, scope: !343)
!352 = !DILocation(line: 57, column: 29, scope: !343)
!353 = !DILocation(line: 57, column: 5, scope: !343)
!354 = !DILocation(line: 58, column: 1, scope: !343)
!355 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !356, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !73}
!358 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !355, file: !3, line: 60, type: !73)
!359 = !DILocation(line: 60, column: 29, scope: !355)
!360 = !DILocation(line: 62, column: 21, scope: !355)
!361 = !DILocation(line: 62, column: 5, scope: !355)
!362 = !DILocation(line: 63, column: 1, scope: !355)
!363 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !364, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !43}
!366 = !DILocalVariable(name: "charHex", arg: 1, scope: !363, file: !3, line: 65, type: !43)
!367 = !DILocation(line: 65, column: 29, scope: !363)
!368 = !DILocation(line: 67, column: 22, scope: !363)
!369 = !DILocation(line: 67, column: 5, scope: !363)
!370 = !DILocation(line: 68, column: 1, scope: !363)
!371 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !372, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !296}
!374 = !DILocalVariable(name: "wideChar", arg: 1, scope: !371, file: !3, line: 70, type: !296)
!375 = !DILocation(line: 70, column: 29, scope: !371)
!376 = !DILocalVariable(name: "s", scope: !371, file: !3, line: 74, type: !377)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 64, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 2)
!380 = !DILocation(line: 74, column: 13, scope: !371)
!381 = !DILocation(line: 75, column: 16, scope: !371)
!382 = !DILocation(line: 75, column: 9, scope: !371)
!383 = !DILocation(line: 75, column: 14, scope: !371)
!384 = !DILocation(line: 76, column: 9, scope: !371)
!385 = !DILocation(line: 76, column: 14, scope: !371)
!386 = !DILocation(line: 77, column: 21, scope: !371)
!387 = !DILocation(line: 77, column: 5, scope: !371)
!388 = !DILocation(line: 78, column: 1, scope: !371)
!389 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !390, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !7}
!392 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !389, file: !3, line: 80, type: !7)
!393 = !DILocation(line: 80, column: 33, scope: !389)
!394 = !DILocation(line: 82, column: 20, scope: !389)
!395 = !DILocation(line: 82, column: 5, scope: !389)
!396 = !DILocation(line: 83, column: 1, scope: !389)
!397 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !398, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !25}
!400 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !397, file: !3, line: 85, type: !25)
!401 = !DILocation(line: 85, column: 45, scope: !397)
!402 = !DILocation(line: 87, column: 22, scope: !397)
!403 = !DILocation(line: 87, column: 5, scope: !397)
!404 = !DILocation(line: 88, column: 1, scope: !397)
!405 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !406, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !408}
!408 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!409 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !405, file: !3, line: 90, type: !408)
!410 = !DILocation(line: 90, column: 29, scope: !405)
!411 = !DILocation(line: 92, column: 20, scope: !405)
!412 = !DILocation(line: 92, column: 5, scope: !405)
!413 = !DILocation(line: 93, column: 1, scope: !405)
!414 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !415, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !419, line: 100, baseType: !420)
!419 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_063/source_code")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !419, line: 96, size: 64, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !420, file: !419, line: 98, baseType: !23, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !420, file: !419, line: 99, baseType: !23, size: 32, offset: 32)
!424 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !414, file: !3, line: 95, type: !417)
!425 = !DILocation(line: 95, column: 40, scope: !414)
!426 = !DILocation(line: 97, column: 26, scope: !414)
!427 = !DILocation(line: 97, column: 47, scope: !414)
!428 = !DILocation(line: 97, column: 55, scope: !414)
!429 = !DILocation(line: 97, column: 76, scope: !414)
!430 = !DILocation(line: 97, column: 5, scope: !414)
!431 = !DILocation(line: 98, column: 1, scope: !414)
!432 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !433, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !435, !73}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!436 = !DILocalVariable(name: "bytes", arg: 1, scope: !432, file: !3, line: 100, type: !435)
!437 = !DILocation(line: 100, column: 38, scope: !432)
!438 = !DILocalVariable(name: "numBytes", arg: 2, scope: !432, file: !3, line: 100, type: !73)
!439 = !DILocation(line: 100, column: 52, scope: !432)
!440 = !DILocalVariable(name: "i", scope: !432, file: !3, line: 102, type: !73)
!441 = !DILocation(line: 102, column: 12, scope: !432)
!442 = !DILocation(line: 103, column: 12, scope: !443)
!443 = distinct !DILexicalBlock(scope: !432, file: !3, line: 103, column: 5)
!444 = !DILocation(line: 103, column: 10, scope: !443)
!445 = !DILocation(line: 103, column: 17, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !3, line: 103, column: 5)
!447 = !DILocation(line: 103, column: 21, scope: !446)
!448 = !DILocation(line: 103, column: 19, scope: !446)
!449 = !DILocation(line: 103, column: 5, scope: !443)
!450 = !DILocation(line: 105, column: 24, scope: !451)
!451 = distinct !DILexicalBlock(scope: !446, file: !3, line: 104, column: 5)
!452 = !DILocation(line: 105, column: 30, scope: !451)
!453 = !DILocation(line: 105, column: 9, scope: !451)
!454 = !DILocation(line: 106, column: 5, scope: !451)
!455 = !DILocation(line: 103, column: 31, scope: !446)
!456 = !DILocation(line: 103, column: 5, scope: !446)
!457 = distinct !{!457, !449, !458, !183}
!458 = !DILocation(line: 106, column: 5, scope: !443)
!459 = !DILocation(line: 107, column: 5, scope: !432)
!460 = !DILocation(line: 108, column: 1, scope: !432)
!461 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !462, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!462 = !DISubroutineType(types: !463)
!463 = !{!73, !435, !73, !42}
!464 = !DILocalVariable(name: "bytes", arg: 1, scope: !461, file: !3, line: 113, type: !435)
!465 = !DILocation(line: 113, column: 39, scope: !461)
!466 = !DILocalVariable(name: "numBytes", arg: 2, scope: !461, file: !3, line: 113, type: !73)
!467 = !DILocation(line: 113, column: 53, scope: !461)
!468 = !DILocalVariable(name: "hex", arg: 3, scope: !461, file: !3, line: 113, type: !42)
!469 = !DILocation(line: 113, column: 71, scope: !461)
!470 = !DILocalVariable(name: "numWritten", scope: !461, file: !3, line: 115, type: !73)
!471 = !DILocation(line: 115, column: 12, scope: !461)
!472 = !DILocation(line: 121, column: 5, scope: !461)
!473 = !DILocation(line: 121, column: 12, scope: !461)
!474 = !DILocation(line: 121, column: 25, scope: !461)
!475 = !DILocation(line: 121, column: 23, scope: !461)
!476 = !DILocation(line: 121, column: 34, scope: !461)
!477 = !DILocation(line: 121, column: 37, scope: !461)
!478 = !DILocation(line: 121, column: 67, scope: !461)
!479 = !DILocation(line: 121, column: 70, scope: !461)
!480 = !DILocation(line: 0, scope: !461)
!481 = !DILocalVariable(name: "byte", scope: !482, file: !3, line: 123, type: !23)
!482 = distinct !DILexicalBlock(scope: !461, file: !3, line: 122, column: 5)
!483 = !DILocation(line: 123, column: 13, scope: !482)
!484 = !DILocation(line: 124, column: 17, scope: !482)
!485 = !DILocation(line: 124, column: 25, scope: !482)
!486 = !DILocation(line: 124, column: 23, scope: !482)
!487 = !DILocation(line: 124, column: 9, scope: !482)
!488 = !DILocation(line: 125, column: 45, scope: !482)
!489 = !DILocation(line: 125, column: 29, scope: !482)
!490 = !DILocation(line: 125, column: 9, scope: !482)
!491 = !DILocation(line: 125, column: 15, scope: !482)
!492 = !DILocation(line: 125, column: 27, scope: !482)
!493 = !DILocation(line: 126, column: 9, scope: !482)
!494 = distinct !{!494, !472, !495, !183}
!495 = !DILocation(line: 127, column: 5, scope: !461)
!496 = !DILocation(line: 129, column: 12, scope: !461)
!497 = !DILocation(line: 129, column: 5, scope: !461)
!498 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !499, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!499 = !DISubroutineType(types: !500)
!500 = !{!73, !435, !73, !295}
!501 = !DILocalVariable(name: "bytes", arg: 1, scope: !498, file: !3, line: 135, type: !435)
!502 = !DILocation(line: 135, column: 41, scope: !498)
!503 = !DILocalVariable(name: "numBytes", arg: 2, scope: !498, file: !3, line: 135, type: !73)
!504 = !DILocation(line: 135, column: 55, scope: !498)
!505 = !DILocalVariable(name: "hex", arg: 3, scope: !498, file: !3, line: 135, type: !295)
!506 = !DILocation(line: 135, column: 76, scope: !498)
!507 = !DILocalVariable(name: "numWritten", scope: !498, file: !3, line: 137, type: !73)
!508 = !DILocation(line: 137, column: 12, scope: !498)
!509 = !DILocation(line: 143, column: 5, scope: !498)
!510 = !DILocation(line: 143, column: 12, scope: !498)
!511 = !DILocation(line: 143, column: 25, scope: !498)
!512 = !DILocation(line: 143, column: 23, scope: !498)
!513 = !DILocation(line: 143, column: 34, scope: !498)
!514 = !DILocation(line: 143, column: 47, scope: !498)
!515 = !DILocation(line: 143, column: 55, scope: !498)
!516 = !DILocation(line: 143, column: 53, scope: !498)
!517 = !DILocation(line: 143, column: 37, scope: !498)
!518 = !DILocation(line: 143, column: 68, scope: !498)
!519 = !DILocation(line: 143, column: 81, scope: !498)
!520 = !DILocation(line: 143, column: 89, scope: !498)
!521 = !DILocation(line: 143, column: 87, scope: !498)
!522 = !DILocation(line: 143, column: 100, scope: !498)
!523 = !DILocation(line: 143, column: 71, scope: !498)
!524 = !DILocation(line: 0, scope: !498)
!525 = !DILocalVariable(name: "byte", scope: !526, file: !3, line: 145, type: !23)
!526 = distinct !DILexicalBlock(scope: !498, file: !3, line: 144, column: 5)
!527 = !DILocation(line: 145, column: 13, scope: !526)
!528 = !DILocation(line: 146, column: 18, scope: !526)
!529 = !DILocation(line: 146, column: 26, scope: !526)
!530 = !DILocation(line: 146, column: 24, scope: !526)
!531 = !DILocation(line: 146, column: 9, scope: !526)
!532 = !DILocation(line: 147, column: 45, scope: !526)
!533 = !DILocation(line: 147, column: 29, scope: !526)
!534 = !DILocation(line: 147, column: 9, scope: !526)
!535 = !DILocation(line: 147, column: 15, scope: !526)
!536 = !DILocation(line: 147, column: 27, scope: !526)
!537 = !DILocation(line: 148, column: 9, scope: !526)
!538 = distinct !{!538, !509, !539, !183}
!539 = !DILocation(line: 149, column: 5, scope: !498)
!540 = !DILocation(line: 151, column: 12, scope: !498)
!541 = !DILocation(line: 151, column: 5, scope: !498)
!542 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !543, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DISubroutineType(types: !544)
!544 = !{!23}
!545 = !DILocation(line: 158, column: 5, scope: !542)
!546 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !543, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 163, column: 5, scope: !546)
!548 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !543, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DILocation(line: 168, column: 13, scope: !548)
!550 = !DILocation(line: 168, column: 20, scope: !548)
!551 = !DILocation(line: 168, column: 5, scope: !548)
!552 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 187, column: 16, scope: !552)
!554 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 188, column: 16, scope: !554)
!556 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 189, column: 16, scope: !556)
!558 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 190, column: 16, scope: !558)
!560 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 191, column: 16, scope: !560)
!562 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DILocation(line: 192, column: 16, scope: !562)
!564 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 193, column: 16, scope: !564)
!566 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 194, column: 16, scope: !566)
!568 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 195, column: 16, scope: !568)
!570 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 198, column: 15, scope: !570)
!572 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 199, column: 15, scope: !572)
!574 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DILocation(line: 200, column: 15, scope: !574)
!576 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 201, column: 15, scope: !576)
!578 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 202, column: 15, scope: !578)
!580 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 203, column: 15, scope: !580)
!582 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DILocation(line: 204, column: 15, scope: !582)
!584 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DILocation(line: 205, column: 15, scope: !584)
!586 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DILocation(line: 206, column: 15, scope: !586)
