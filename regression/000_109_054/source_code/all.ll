; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@CWE606_Unchecked_Loop_Condition__char_environment_45_badData = dso_local global i8* null, align 8, !dbg !0
@CWE606_Unchecked_Loop_Condition__char_environment_45_goodG2BData = dso_local global i8* null, align 8, !dbg !8
@CWE606_Unchecked_Loop_Condition__char_environment_45_goodB2GData = dso_local global i8* null, align 8, !dbg !12
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !14
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
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
define dso_local void @badSink() #0 !dbg !59 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_environment_45_badData, align 8, !dbg !64
  store i8* %0, i8** %data, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %i, metadata !65, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %n, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !70, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !74
  %cmp = icmp eq i32 %call, 1, !dbg !75
  br i1 %cmp, label %if.then, label %if.end, !dbg !76

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !77
  store i32 0, i32* %i, align 4, !dbg !79
  br label %for.cond, !dbg !81

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !82
  %3 = load i32, i32* %n, align 4, !dbg !84
  %cmp1 = icmp slt i32 %2, %3, !dbg !85
  br i1 %cmp1, label %for.body, label %for.end, !dbg !86

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !87
  %inc = add nsw i32 %4, 1, !dbg !87
  store i32 %inc, i32* %intVariable, align 4, !dbg !87
  br label %for.inc, !dbg !89

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !90
  %inc2 = add nsw i32 %5, 1, !dbg !90
  store i32 %inc2, i32* %i, align 4, !dbg !90
  br label %for.cond, !dbg !91, !llvm.loop !92

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !95
  call void @printIntLine(i32 %6), !dbg !96
  br label %if.end, !dbg !97

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !98
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_45_bad() #0 !dbg !99 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !102, metadata !DIExpression()), !dbg !106
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !106
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !107
  store i8* %arraydecay, i8** %data, align 8, !dbg !108
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !109, metadata !DIExpression()), !dbg !114
  %1 = load i8*, i8** %data, align 8, !dbg !115
  %call = call i64 @strlen(i8* %1) #8, !dbg !116
  store i64 %call, i64* %dataLen, align 8, !dbg !114
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !117, metadata !DIExpression()), !dbg !118
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !119
  store i8* %call1, i8** %environment, align 8, !dbg !118
  %2 = load i8*, i8** %environment, align 8, !dbg !120
  %cmp = icmp ne i8* %2, null, !dbg !122
  br i1 %cmp, label %if.then, label %if.end, !dbg !123

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !124
  %4 = load i64, i64* %dataLen, align 8, !dbg !126
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !127
  %5 = load i8*, i8** %environment, align 8, !dbg !128
  %6 = load i64, i64* %dataLen, align 8, !dbg !129
  %sub = sub i64 100, %6, !dbg !130
  %sub2 = sub i64 %sub, 1, !dbg !131
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !132
  br label %if.end, !dbg !133

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !134
  store i8* %7, i8** @CWE606_Unchecked_Loop_Condition__char_environment_45_badData, align 8, !dbg !135
  call void @badSink(), !dbg !136
  ret void, !dbg !137
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !138 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_environment_45_goodG2BData, align 8, !dbg !141
  store i8* %0, i8** %data, align 8, !dbg !140
  call void @llvm.dbg.declare(metadata i32* %i, metadata !142, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %n, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !147, metadata !DIExpression()), !dbg !148
  %1 = load i8*, i8** %data, align 8, !dbg !149
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !151
  %cmp = icmp eq i32 %call, 1, !dbg !152
  br i1 %cmp, label %if.then, label %if.end, !dbg !153

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !154
  store i32 0, i32* %i, align 4, !dbg !156
  br label %for.cond, !dbg !158

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !159
  %3 = load i32, i32* %n, align 4, !dbg !161
  %cmp1 = icmp slt i32 %2, %3, !dbg !162
  br i1 %cmp1, label %for.body, label %for.end, !dbg !163

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !164
  %inc = add nsw i32 %4, 1, !dbg !164
  store i32 %inc, i32* %intVariable, align 4, !dbg !164
  br label %for.inc, !dbg !166

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !167
  %inc2 = add nsw i32 %5, 1, !dbg !167
  store i32 %inc2, i32* %i, align 4, !dbg !167
  br label %for.cond, !dbg !168, !llvm.loop !169

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !171
  call void @printIntLine(i32 %6), !dbg !172
  br label %if.end, !dbg !173

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !174
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !175 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !179
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !179
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !180
  store i8* %arraydecay, i8** %data, align 8, !dbg !181
  %1 = load i8*, i8** %data, align 8, !dbg !182
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !183
  %2 = load i8*, i8** %data, align 8, !dbg !184
  store i8* %2, i8** @CWE606_Unchecked_Loop_Condition__char_environment_45_goodG2BData, align 8, !dbg !185
  call void @goodG2BSink(), !dbg !186
  ret void, !dbg !187
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !188 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !189, metadata !DIExpression()), !dbg !190
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_environment_45_goodB2GData, align 8, !dbg !191
  store i8* %0, i8** %data, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i32* %i, metadata !192, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i32* %n, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !197, metadata !DIExpression()), !dbg !198
  %1 = load i8*, i8** %data, align 8, !dbg !199
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !201
  %cmp = icmp eq i32 %call, 1, !dbg !202
  br i1 %cmp, label %if.then, label %if.end5, !dbg !203

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !204
  %cmp1 = icmp slt i32 %2, 10000, !dbg !207
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !208

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !209
  store i32 0, i32* %i, align 4, !dbg !211
  br label %for.cond, !dbg !213

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !214
  %4 = load i32, i32* %n, align 4, !dbg !216
  %cmp3 = icmp slt i32 %3, %4, !dbg !217
  br i1 %cmp3, label %for.body, label %for.end, !dbg !218

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !219
  %inc = add nsw i32 %5, 1, !dbg !219
  store i32 %inc, i32* %intVariable, align 4, !dbg !219
  br label %for.inc, !dbg !221

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !222
  %inc4 = add nsw i32 %6, 1, !dbg !222
  store i32 %inc4, i32* %i, align 4, !dbg !222
  br label %for.cond, !dbg !223, !llvm.loop !224

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !226
  call void @printIntLine(i32 %7), !dbg !227
  br label %if.end, !dbg !228

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !229

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !230
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !231 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !235
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !235
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !236
  store i8* %arraydecay, i8** %data, align 8, !dbg !237
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !238, metadata !DIExpression()), !dbg !240
  %1 = load i8*, i8** %data, align 8, !dbg !241
  %call = call i64 @strlen(i8* %1) #8, !dbg !242
  store i64 %call, i64* %dataLen, align 8, !dbg !240
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !243, metadata !DIExpression()), !dbg !244
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !245
  store i8* %call1, i8** %environment, align 8, !dbg !244
  %2 = load i8*, i8** %environment, align 8, !dbg !246
  %cmp = icmp ne i8* %2, null, !dbg !248
  br i1 %cmp, label %if.then, label %if.end, !dbg !249

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !250
  %4 = load i64, i64* %dataLen, align 8, !dbg !252
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !253
  %5 = load i8*, i8** %environment, align 8, !dbg !254
  %6 = load i64, i64* %dataLen, align 8, !dbg !255
  %sub = sub i64 100, %6, !dbg !256
  %sub2 = sub i64 %sub, 1, !dbg !257
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !258
  br label %if.end, !dbg !259

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !260
  store i8* %7, i8** @CWE606_Unchecked_Loop_Condition__char_environment_45_goodB2GData, align 8, !dbg !261
  call void @goodB2GSink(), !dbg !262
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_45_good() #0 !dbg !264 {
entry:
  call void @goodG2B(), !dbg !265
  call void @goodB2G(), !dbg !266
  ret void, !dbg !267
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !268 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !271, metadata !DIExpression()), !dbg !272
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !273
  %0 = load i8*, i8** %line.addr, align 8, !dbg !274
  %cmp = icmp ne i8* %0, null, !dbg !276
  br i1 %cmp, label %if.then, label %if.end, !dbg !277

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !278
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !280
  br label %if.end, !dbg !281

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !282
  ret void, !dbg !283
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !284 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load i8*, i8** %line.addr, align 8, !dbg !287
  %cmp = icmp ne i8* %0, null, !dbg !289
  br i1 %cmp, label %if.then, label %if.end, !dbg !290

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !291
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !293
  br label %if.end, !dbg !294

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !295
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !296 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !301, metadata !DIExpression()), !dbg !302
  %0 = load i32*, i32** %line.addr, align 8, !dbg !303
  %cmp = icmp ne i32* %0, null, !dbg !305
  br i1 %cmp, label %if.then, label %if.end, !dbg !306

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !307
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !309
  br label %if.end, !dbg !310

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !311
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !312 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !315, metadata !DIExpression()), !dbg !316
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !317
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !318
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !320 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !326
  %conv = sext i16 %0 to i32, !dbg !326
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !327
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !329 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !335
  %conv = fpext float %0 to double, !dbg !335
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !338 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !347 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !354, metadata !DIExpression()), !dbg !355
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !356
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !357
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !359 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !364
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !367 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !372
  %conv = sext i8 %0 to i32, !dbg !372
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !375 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !380, metadata !DIExpression()), !dbg !384
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !385
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !386
  store i32 %0, i32* %arrayidx, align 4, !dbg !387
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !388
  store i32 0, i32* %arrayidx1, align 4, !dbg !389
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !390
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !393 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !398
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !399
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !401 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !406
  %conv = zext i8 %0 to i32, !dbg !406
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !409 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !413, metadata !DIExpression()), !dbg !414
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !415
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !416
  ret void, !dbg !417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !418 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !430
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !431
  %1 = load i32, i32* %intOne, align 4, !dbg !431
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !432
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !433
  %3 = load i32, i32* %intTwo, align 4, !dbg !433
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !434
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !436 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !440, metadata !DIExpression()), !dbg !441
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata i64* %i, metadata !444, metadata !DIExpression()), !dbg !445
  store i64 0, i64* %i, align 8, !dbg !446
  br label %for.cond, !dbg !448

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !449
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !451
  %cmp = icmp ult i64 %0, %1, !dbg !452
  br i1 %cmp, label %for.body, label %for.end, !dbg !453

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !454
  %3 = load i64, i64* %i, align 8, !dbg !456
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !454
  %4 = load i8, i8* %arrayidx, align 1, !dbg !454
  %conv = zext i8 %4 to i32, !dbg !454
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !457
  br label %for.inc, !dbg !458

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !459
  %inc = add i64 %5, 1, !dbg !459
  store i64 %inc, i64* %i, align 8, !dbg !459
  br label %for.cond, !dbg !460, !llvm.loop !461

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !463
  ret void, !dbg !464
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !465 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !468, metadata !DIExpression()), !dbg !469
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !470, metadata !DIExpression()), !dbg !471
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !472, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !474, metadata !DIExpression()), !dbg !475
  store i64 0, i64* %numWritten, align 8, !dbg !475
  br label %while.cond, !dbg !476

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !477
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !478
  %cmp = icmp ult i64 %0, %1, !dbg !479
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !480

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !481
  %2 = load i16*, i16** %call, align 8, !dbg !481
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !481
  %4 = load i64, i64* %numWritten, align 8, !dbg !481
  %mul = mul i64 2, %4, !dbg !481
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !481
  %5 = load i8, i8* %arrayidx, align 1, !dbg !481
  %conv = sext i8 %5 to i32, !dbg !481
  %idxprom = sext i32 %conv to i64, !dbg !481
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !481
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !481
  %conv2 = zext i16 %6 to i32, !dbg !481
  %and = and i32 %conv2, 4096, !dbg !481
  %tobool = icmp ne i32 %and, 0, !dbg !481
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !482

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !483
  %7 = load i16*, i16** %call3, align 8, !dbg !483
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !483
  %9 = load i64, i64* %numWritten, align 8, !dbg !483
  %mul4 = mul i64 2, %9, !dbg !483
  %add = add i64 %mul4, 1, !dbg !483
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !483
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !483
  %conv6 = sext i8 %10 to i32, !dbg !483
  %idxprom7 = sext i32 %conv6 to i64, !dbg !483
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !483
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !483
  %conv9 = zext i16 %11 to i32, !dbg !483
  %and10 = and i32 %conv9, 4096, !dbg !483
  %tobool11 = icmp ne i32 %and10, 0, !dbg !482
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !484
  br i1 %12, label %while.body, label %while.end, !dbg !476

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !485, metadata !DIExpression()), !dbg !487
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !488
  %14 = load i64, i64* %numWritten, align 8, !dbg !489
  %mul12 = mul i64 2, %14, !dbg !490
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !488
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !491
  %15 = load i32, i32* %byte, align 4, !dbg !492
  %conv15 = trunc i32 %15 to i8, !dbg !493
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !494
  %17 = load i64, i64* %numWritten, align 8, !dbg !495
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !494
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !496
  %18 = load i64, i64* %numWritten, align 8, !dbg !497
  %inc = add i64 %18, 1, !dbg !497
  store i64 %inc, i64* %numWritten, align 8, !dbg !497
  br label %while.cond, !dbg !476, !llvm.loop !498

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !500
  ret i64 %19, !dbg !501
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !502 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !505, metadata !DIExpression()), !dbg !506
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !507, metadata !DIExpression()), !dbg !508
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !509, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !511, metadata !DIExpression()), !dbg !512
  store i64 0, i64* %numWritten, align 8, !dbg !512
  br label %while.cond, !dbg !513

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !514
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !515
  %cmp = icmp ult i64 %0, %1, !dbg !516
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !517

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !518
  %3 = load i64, i64* %numWritten, align 8, !dbg !519
  %mul = mul i64 2, %3, !dbg !520
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !518
  %4 = load i32, i32* %arrayidx, align 4, !dbg !518
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !521
  %tobool = icmp ne i32 %call, 0, !dbg !521
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !522

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !523
  %6 = load i64, i64* %numWritten, align 8, !dbg !524
  %mul1 = mul i64 2, %6, !dbg !525
  %add = add i64 %mul1, 1, !dbg !526
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !523
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !523
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !527
  %tobool4 = icmp ne i32 %call3, 0, !dbg !522
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !528
  br i1 %8, label %while.body, label %while.end, !dbg !513

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !529, metadata !DIExpression()), !dbg !531
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !532
  %10 = load i64, i64* %numWritten, align 8, !dbg !533
  %mul5 = mul i64 2, %10, !dbg !534
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !532
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !535
  %11 = load i32, i32* %byte, align 4, !dbg !536
  %conv = trunc i32 %11 to i8, !dbg !537
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !538
  %13 = load i64, i64* %numWritten, align 8, !dbg !539
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !538
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !540
  %14 = load i64, i64* %numWritten, align 8, !dbg !541
  %inc = add i64 %14, 1, !dbg !541
  store i64 %inc, i64* %numWritten, align 8, !dbg !541
  br label %while.cond, !dbg !513, !llvm.loop !542

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !544
  ret i64 %15, !dbg !545
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !546 {
entry:
  ret i32 1, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !550 {
entry:
  ret i32 0, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !552 {
entry:
  %call = call i32 @rand() #7, !dbg !553
  %rem = srem i32 %call, 2, !dbg !554
  ret i32 %rem, !dbg !555
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !588 {
entry:
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !590 {
entry:
  ret void, !dbg !591
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2, !16}
!llvm.ident = !{!55, !55}
!llvm.module.flags = !{!56, !57, !58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_45_badData", scope: !2, file: !3, line: 35, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_054/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !12}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_45_goodG2BData", scope: !2, file: !3, line: 36, type: !10, isLocal: false, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_45_goodB2GData", scope: !2, file: !3, line: 37, type: !10, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !16, file: !17, line: 174, type: !36, isLocal: false, isDefinition: true)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !35, globals: !39, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_054/source_code")
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
!55 = !{!"clang version 12.0.0"}
!56 = !{i32 7, !"Dwarf Version", i32 4}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 41, type: !60, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!60 = !DISubroutineType(types: !61)
!61 = !{null}
!62 = !DILocalVariable(name: "data", scope: !59, file: !3, line: 43, type: !10)
!63 = !DILocation(line: 43, column: 12, scope: !59)
!64 = !DILocation(line: 43, column: 19, scope: !59)
!65 = !DILocalVariable(name: "i", scope: !66, file: !3, line: 45, type: !36)
!66 = distinct !DILexicalBlock(scope: !59, file: !3, line: 44, column: 5)
!67 = !DILocation(line: 45, column: 13, scope: !66)
!68 = !DILocalVariable(name: "n", scope: !66, file: !3, line: 45, type: !36)
!69 = !DILocation(line: 45, column: 16, scope: !66)
!70 = !DILocalVariable(name: "intVariable", scope: !66, file: !3, line: 45, type: !36)
!71 = !DILocation(line: 45, column: 19, scope: !66)
!72 = !DILocation(line: 46, column: 20, scope: !73)
!73 = distinct !DILexicalBlock(scope: !66, file: !3, line: 46, column: 13)
!74 = !DILocation(line: 46, column: 13, scope: !73)
!75 = !DILocation(line: 46, column: 36, scope: !73)
!76 = !DILocation(line: 46, column: 13, scope: !66)
!77 = !DILocation(line: 49, column: 25, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !3, line: 47, column: 9)
!79 = !DILocation(line: 50, column: 20, scope: !80)
!80 = distinct !DILexicalBlock(scope: !78, file: !3, line: 50, column: 13)
!81 = !DILocation(line: 50, column: 18, scope: !80)
!82 = !DILocation(line: 50, column: 25, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !3, line: 50, column: 13)
!84 = !DILocation(line: 50, column: 29, scope: !83)
!85 = !DILocation(line: 50, column: 27, scope: !83)
!86 = !DILocation(line: 50, column: 13, scope: !80)
!87 = !DILocation(line: 53, column: 28, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !3, line: 51, column: 13)
!89 = !DILocation(line: 54, column: 13, scope: !88)
!90 = !DILocation(line: 50, column: 33, scope: !83)
!91 = !DILocation(line: 50, column: 13, scope: !83)
!92 = distinct !{!92, !86, !93, !94}
!93 = !DILocation(line: 54, column: 13, scope: !80)
!94 = !{!"llvm.loop.mustprogress"}
!95 = !DILocation(line: 55, column: 26, scope: !78)
!96 = !DILocation(line: 55, column: 13, scope: !78)
!97 = !DILocation(line: 56, column: 9, scope: !78)
!98 = !DILocation(line: 58, column: 1, scope: !59)
!99 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_45_bad", scope: !3, file: !3, line: 60, type: !60, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!100 = !DILocalVariable(name: "data", scope: !99, file: !3, line: 62, type: !10)
!101 = !DILocation(line: 62, column: 12, scope: !99)
!102 = !DILocalVariable(name: "dataBuffer", scope: !99, file: !3, line: 63, type: !103)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 100)
!106 = !DILocation(line: 63, column: 10, scope: !99)
!107 = !DILocation(line: 64, column: 12, scope: !99)
!108 = !DILocation(line: 64, column: 10, scope: !99)
!109 = !DILocalVariable(name: "dataLen", scope: !110, file: !3, line: 67, type: !111)
!110 = distinct !DILexicalBlock(scope: !99, file: !3, line: 65, column: 5)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 46, baseType: !113)
!112 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!113 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !DILocation(line: 67, column: 16, scope: !110)
!115 = !DILocation(line: 67, column: 33, scope: !110)
!116 = !DILocation(line: 67, column: 26, scope: !110)
!117 = !DILocalVariable(name: "environment", scope: !110, file: !3, line: 68, type: !10)
!118 = !DILocation(line: 68, column: 16, scope: !110)
!119 = !DILocation(line: 68, column: 30, scope: !110)
!120 = !DILocation(line: 70, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !110, file: !3, line: 70, column: 13)
!122 = !DILocation(line: 70, column: 25, scope: !121)
!123 = !DILocation(line: 70, column: 13, scope: !110)
!124 = !DILocation(line: 73, column: 21, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !3, line: 71, column: 9)
!126 = !DILocation(line: 73, column: 26, scope: !125)
!127 = !DILocation(line: 73, column: 25, scope: !125)
!128 = !DILocation(line: 73, column: 35, scope: !125)
!129 = !DILocation(line: 73, column: 52, scope: !125)
!130 = !DILocation(line: 73, column: 51, scope: !125)
!131 = !DILocation(line: 73, column: 59, scope: !125)
!132 = !DILocation(line: 73, column: 13, scope: !125)
!133 = !DILocation(line: 74, column: 9, scope: !125)
!134 = !DILocation(line: 76, column: 68, scope: !99)
!135 = !DILocation(line: 76, column: 66, scope: !99)
!136 = !DILocation(line: 77, column: 5, scope: !99)
!137 = !DILocation(line: 78, column: 1, scope: !99)
!138 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 85, type: !60, scopeLine: 86, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!139 = !DILocalVariable(name: "data", scope: !138, file: !3, line: 87, type: !10)
!140 = !DILocation(line: 87, column: 12, scope: !138)
!141 = !DILocation(line: 87, column: 19, scope: !138)
!142 = !DILocalVariable(name: "i", scope: !143, file: !3, line: 89, type: !36)
!143 = distinct !DILexicalBlock(scope: !138, file: !3, line: 88, column: 5)
!144 = !DILocation(line: 89, column: 13, scope: !143)
!145 = !DILocalVariable(name: "n", scope: !143, file: !3, line: 89, type: !36)
!146 = !DILocation(line: 89, column: 16, scope: !143)
!147 = !DILocalVariable(name: "intVariable", scope: !143, file: !3, line: 89, type: !36)
!148 = !DILocation(line: 89, column: 19, scope: !143)
!149 = !DILocation(line: 90, column: 20, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !3, line: 90, column: 13)
!151 = !DILocation(line: 90, column: 13, scope: !150)
!152 = !DILocation(line: 90, column: 36, scope: !150)
!153 = !DILocation(line: 90, column: 13, scope: !143)
!154 = !DILocation(line: 93, column: 25, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !3, line: 91, column: 9)
!156 = !DILocation(line: 94, column: 20, scope: !157)
!157 = distinct !DILexicalBlock(scope: !155, file: !3, line: 94, column: 13)
!158 = !DILocation(line: 94, column: 18, scope: !157)
!159 = !DILocation(line: 94, column: 25, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !3, line: 94, column: 13)
!161 = !DILocation(line: 94, column: 29, scope: !160)
!162 = !DILocation(line: 94, column: 27, scope: !160)
!163 = !DILocation(line: 94, column: 13, scope: !157)
!164 = !DILocation(line: 97, column: 28, scope: !165)
!165 = distinct !DILexicalBlock(scope: !160, file: !3, line: 95, column: 13)
!166 = !DILocation(line: 98, column: 13, scope: !165)
!167 = !DILocation(line: 94, column: 33, scope: !160)
!168 = !DILocation(line: 94, column: 13, scope: !160)
!169 = distinct !{!169, !163, !170, !94}
!170 = !DILocation(line: 98, column: 13, scope: !157)
!171 = !DILocation(line: 99, column: 26, scope: !155)
!172 = !DILocation(line: 99, column: 13, scope: !155)
!173 = !DILocation(line: 100, column: 9, scope: !155)
!174 = !DILocation(line: 102, column: 1, scope: !138)
!175 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 104, type: !60, scopeLine: 105, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!176 = !DILocalVariable(name: "data", scope: !175, file: !3, line: 106, type: !10)
!177 = !DILocation(line: 106, column: 12, scope: !175)
!178 = !DILocalVariable(name: "dataBuffer", scope: !175, file: !3, line: 107, type: !103)
!179 = !DILocation(line: 107, column: 10, scope: !175)
!180 = !DILocation(line: 108, column: 12, scope: !175)
!181 = !DILocation(line: 108, column: 10, scope: !175)
!182 = !DILocation(line: 110, column: 12, scope: !175)
!183 = !DILocation(line: 110, column: 5, scope: !175)
!184 = !DILocation(line: 111, column: 72, scope: !175)
!185 = !DILocation(line: 111, column: 70, scope: !175)
!186 = !DILocation(line: 112, column: 5, scope: !175)
!187 = !DILocation(line: 113, column: 1, scope: !175)
!188 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 116, type: !60, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!189 = !DILocalVariable(name: "data", scope: !188, file: !3, line: 118, type: !10)
!190 = !DILocation(line: 118, column: 12, scope: !188)
!191 = !DILocation(line: 118, column: 19, scope: !188)
!192 = !DILocalVariable(name: "i", scope: !193, file: !3, line: 120, type: !36)
!193 = distinct !DILexicalBlock(scope: !188, file: !3, line: 119, column: 5)
!194 = !DILocation(line: 120, column: 13, scope: !193)
!195 = !DILocalVariable(name: "n", scope: !193, file: !3, line: 120, type: !36)
!196 = !DILocation(line: 120, column: 16, scope: !193)
!197 = !DILocalVariable(name: "intVariable", scope: !193, file: !3, line: 120, type: !36)
!198 = !DILocation(line: 120, column: 19, scope: !193)
!199 = !DILocation(line: 121, column: 20, scope: !200)
!200 = distinct !DILexicalBlock(scope: !193, file: !3, line: 121, column: 13)
!201 = !DILocation(line: 121, column: 13, scope: !200)
!202 = !DILocation(line: 121, column: 36, scope: !200)
!203 = !DILocation(line: 121, column: 13, scope: !193)
!204 = !DILocation(line: 124, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 124, column: 17)
!206 = distinct !DILexicalBlock(scope: !200, file: !3, line: 122, column: 9)
!207 = !DILocation(line: 124, column: 19, scope: !205)
!208 = !DILocation(line: 124, column: 17, scope: !206)
!209 = !DILocation(line: 126, column: 29, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !3, line: 125, column: 13)
!211 = !DILocation(line: 127, column: 24, scope: !212)
!212 = distinct !DILexicalBlock(scope: !210, file: !3, line: 127, column: 17)
!213 = !DILocation(line: 127, column: 22, scope: !212)
!214 = !DILocation(line: 127, column: 29, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !3, line: 127, column: 17)
!216 = !DILocation(line: 127, column: 33, scope: !215)
!217 = !DILocation(line: 127, column: 31, scope: !215)
!218 = !DILocation(line: 127, column: 17, scope: !212)
!219 = !DILocation(line: 130, column: 32, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !3, line: 128, column: 17)
!221 = !DILocation(line: 131, column: 17, scope: !220)
!222 = !DILocation(line: 127, column: 37, scope: !215)
!223 = !DILocation(line: 127, column: 17, scope: !215)
!224 = distinct !{!224, !218, !225, !94}
!225 = !DILocation(line: 131, column: 17, scope: !212)
!226 = !DILocation(line: 132, column: 30, scope: !210)
!227 = !DILocation(line: 132, column: 17, scope: !210)
!228 = !DILocation(line: 133, column: 13, scope: !210)
!229 = !DILocation(line: 134, column: 9, scope: !206)
!230 = !DILocation(line: 136, column: 1, scope: !188)
!231 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 138, type: !60, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!232 = !DILocalVariable(name: "data", scope: !231, file: !3, line: 140, type: !10)
!233 = !DILocation(line: 140, column: 12, scope: !231)
!234 = !DILocalVariable(name: "dataBuffer", scope: !231, file: !3, line: 141, type: !103)
!235 = !DILocation(line: 141, column: 10, scope: !231)
!236 = !DILocation(line: 142, column: 12, scope: !231)
!237 = !DILocation(line: 142, column: 10, scope: !231)
!238 = !DILocalVariable(name: "dataLen", scope: !239, file: !3, line: 145, type: !111)
!239 = distinct !DILexicalBlock(scope: !231, file: !3, line: 143, column: 5)
!240 = !DILocation(line: 145, column: 16, scope: !239)
!241 = !DILocation(line: 145, column: 33, scope: !239)
!242 = !DILocation(line: 145, column: 26, scope: !239)
!243 = !DILocalVariable(name: "environment", scope: !239, file: !3, line: 146, type: !10)
!244 = !DILocation(line: 146, column: 16, scope: !239)
!245 = !DILocation(line: 146, column: 30, scope: !239)
!246 = !DILocation(line: 148, column: 13, scope: !247)
!247 = distinct !DILexicalBlock(scope: !239, file: !3, line: 148, column: 13)
!248 = !DILocation(line: 148, column: 25, scope: !247)
!249 = !DILocation(line: 148, column: 13, scope: !239)
!250 = !DILocation(line: 151, column: 21, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !3, line: 149, column: 9)
!252 = !DILocation(line: 151, column: 26, scope: !251)
!253 = !DILocation(line: 151, column: 25, scope: !251)
!254 = !DILocation(line: 151, column: 35, scope: !251)
!255 = !DILocation(line: 151, column: 52, scope: !251)
!256 = !DILocation(line: 151, column: 51, scope: !251)
!257 = !DILocation(line: 151, column: 59, scope: !251)
!258 = !DILocation(line: 151, column: 13, scope: !251)
!259 = !DILocation(line: 152, column: 9, scope: !251)
!260 = !DILocation(line: 154, column: 72, scope: !231)
!261 = !DILocation(line: 154, column: 70, scope: !231)
!262 = !DILocation(line: 155, column: 5, scope: !231)
!263 = !DILocation(line: 156, column: 1, scope: !231)
!264 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_45_good", scope: !3, file: !3, line: 158, type: !60, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!265 = !DILocation(line: 160, column: 5, scope: !264)
!266 = !DILocation(line: 161, column: 5, scope: !264)
!267 = !DILocation(line: 162, column: 1, scope: !264)
!268 = distinct !DISubprogram(name: "printLine", scope: !17, file: !17, line: 11, type: !269, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !10}
!271 = !DILocalVariable(name: "line", arg: 1, scope: !268, file: !17, line: 11, type: !10)
!272 = !DILocation(line: 11, column: 25, scope: !268)
!273 = !DILocation(line: 13, column: 1, scope: !268)
!274 = !DILocation(line: 14, column: 8, scope: !275)
!275 = distinct !DILexicalBlock(scope: !268, file: !17, line: 14, column: 8)
!276 = !DILocation(line: 14, column: 13, scope: !275)
!277 = !DILocation(line: 14, column: 8, scope: !268)
!278 = !DILocation(line: 16, column: 24, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !17, line: 15, column: 5)
!280 = !DILocation(line: 16, column: 9, scope: !279)
!281 = !DILocation(line: 17, column: 5, scope: !279)
!282 = !DILocation(line: 18, column: 5, scope: !268)
!283 = !DILocation(line: 19, column: 1, scope: !268)
!284 = distinct !DISubprogram(name: "printSinkLine", scope: !17, file: !17, line: 20, type: !269, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!285 = !DILocalVariable(name: "line", arg: 1, scope: !284, file: !17, line: 20, type: !10)
!286 = !DILocation(line: 20, column: 29, scope: !284)
!287 = !DILocation(line: 22, column: 8, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !17, line: 22, column: 8)
!289 = !DILocation(line: 22, column: 13, scope: !288)
!290 = !DILocation(line: 22, column: 8, scope: !284)
!291 = !DILocation(line: 24, column: 24, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !17, line: 23, column: 5)
!293 = !DILocation(line: 24, column: 9, scope: !292)
!294 = !DILocation(line: 25, column: 5, scope: !292)
!295 = !DILocation(line: 26, column: 1, scope: !284)
!296 = distinct !DISubprogram(name: "printWLine", scope: !17, file: !17, line: 27, type: !297, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !112, line: 74, baseType: !36)
!301 = !DILocalVariable(name: "line", arg: 1, scope: !296, file: !17, line: 27, type: !299)
!302 = !DILocation(line: 27, column: 29, scope: !296)
!303 = !DILocation(line: 29, column: 8, scope: !304)
!304 = distinct !DILexicalBlock(scope: !296, file: !17, line: 29, column: 8)
!305 = !DILocation(line: 29, column: 13, scope: !304)
!306 = !DILocation(line: 29, column: 8, scope: !296)
!307 = !DILocation(line: 31, column: 27, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !17, line: 30, column: 5)
!309 = !DILocation(line: 31, column: 9, scope: !308)
!310 = !DILocation(line: 32, column: 5, scope: !308)
!311 = !DILocation(line: 33, column: 1, scope: !296)
!312 = distinct !DISubprogram(name: "printIntLine", scope: !17, file: !17, line: 35, type: !313, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !36}
!315 = !DILocalVariable(name: "intNumber", arg: 1, scope: !312, file: !17, line: 35, type: !36)
!316 = !DILocation(line: 35, column: 24, scope: !312)
!317 = !DILocation(line: 37, column: 20, scope: !312)
!318 = !DILocation(line: 37, column: 5, scope: !312)
!319 = !DILocation(line: 38, column: 1, scope: !312)
!320 = distinct !DISubprogram(name: "printShortLine", scope: !17, file: !17, line: 40, type: !321, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !323}
!323 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!324 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !320, file: !17, line: 40, type: !323)
!325 = !DILocation(line: 40, column: 28, scope: !320)
!326 = !DILocation(line: 42, column: 21, scope: !320)
!327 = !DILocation(line: 42, column: 5, scope: !320)
!328 = !DILocation(line: 43, column: 1, scope: !320)
!329 = distinct !DISubprogram(name: "printFloatLine", scope: !17, file: !17, line: 45, type: !330, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !332}
!332 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!333 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !329, file: !17, line: 45, type: !332)
!334 = !DILocation(line: 45, column: 28, scope: !329)
!335 = !DILocation(line: 47, column: 20, scope: !329)
!336 = !DILocation(line: 47, column: 5, scope: !329)
!337 = !DILocation(line: 48, column: 1, scope: !329)
!338 = distinct !DISubprogram(name: "printLongLine", scope: !17, file: !17, line: 50, type: !339, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341}
!341 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!342 = !DILocalVariable(name: "longNumber", arg: 1, scope: !338, file: !17, line: 50, type: !341)
!343 = !DILocation(line: 50, column: 26, scope: !338)
!344 = !DILocation(line: 52, column: 21, scope: !338)
!345 = !DILocation(line: 52, column: 5, scope: !338)
!346 = !DILocation(line: 53, column: 1, scope: !338)
!347 = distinct !DISubprogram(name: "printLongLongLine", scope: !17, file: !17, line: 55, type: !348, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !350}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !351, line: 27, baseType: !352)
!351 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !353, line: 44, baseType: !341)
!353 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!354 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !347, file: !17, line: 55, type: !350)
!355 = !DILocation(line: 55, column: 33, scope: !347)
!356 = !DILocation(line: 57, column: 29, scope: !347)
!357 = !DILocation(line: 57, column: 5, scope: !347)
!358 = !DILocation(line: 58, column: 1, scope: !347)
!359 = distinct !DISubprogram(name: "printSizeTLine", scope: !17, file: !17, line: 60, type: !360, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !111}
!362 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !359, file: !17, line: 60, type: !111)
!363 = !DILocation(line: 60, column: 29, scope: !359)
!364 = !DILocation(line: 62, column: 21, scope: !359)
!365 = !DILocation(line: 62, column: 5, scope: !359)
!366 = !DILocation(line: 63, column: 1, scope: !359)
!367 = distinct !DISubprogram(name: "printHexCharLine", scope: !17, file: !17, line: 65, type: !368, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !11}
!370 = !DILocalVariable(name: "charHex", arg: 1, scope: !367, file: !17, line: 65, type: !11)
!371 = !DILocation(line: 65, column: 29, scope: !367)
!372 = !DILocation(line: 67, column: 22, scope: !367)
!373 = !DILocation(line: 67, column: 5, scope: !367)
!374 = !DILocation(line: 68, column: 1, scope: !367)
!375 = distinct !DISubprogram(name: "printWcharLine", scope: !17, file: !17, line: 70, type: !376, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !300}
!378 = !DILocalVariable(name: "wideChar", arg: 1, scope: !375, file: !17, line: 70, type: !300)
!379 = !DILocation(line: 70, column: 29, scope: !375)
!380 = !DILocalVariable(name: "s", scope: !375, file: !17, line: 74, type: !381)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 64, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 2)
!384 = !DILocation(line: 74, column: 13, scope: !375)
!385 = !DILocation(line: 75, column: 16, scope: !375)
!386 = !DILocation(line: 75, column: 9, scope: !375)
!387 = !DILocation(line: 75, column: 14, scope: !375)
!388 = !DILocation(line: 76, column: 9, scope: !375)
!389 = !DILocation(line: 76, column: 14, scope: !375)
!390 = !DILocation(line: 77, column: 21, scope: !375)
!391 = !DILocation(line: 77, column: 5, scope: !375)
!392 = !DILocation(line: 78, column: 1, scope: !375)
!393 = distinct !DISubprogram(name: "printUnsignedLine", scope: !17, file: !17, line: 80, type: !394, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !21}
!396 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !393, file: !17, line: 80, type: !21)
!397 = !DILocation(line: 80, column: 33, scope: !393)
!398 = !DILocation(line: 82, column: 20, scope: !393)
!399 = !DILocation(line: 82, column: 5, scope: !393)
!400 = !DILocation(line: 83, column: 1, scope: !393)
!401 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !17, file: !17, line: 85, type: !402, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !38}
!404 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !401, file: !17, line: 85, type: !38)
!405 = !DILocation(line: 85, column: 45, scope: !401)
!406 = !DILocation(line: 87, column: 22, scope: !401)
!407 = !DILocation(line: 87, column: 5, scope: !401)
!408 = !DILocation(line: 88, column: 1, scope: !401)
!409 = distinct !DISubprogram(name: "printDoubleLine", scope: !17, file: !17, line: 90, type: !410, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !412}
!412 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!413 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !409, file: !17, line: 90, type: !412)
!414 = !DILocation(line: 90, column: 29, scope: !409)
!415 = !DILocation(line: 92, column: 20, scope: !409)
!416 = !DILocation(line: 92, column: 5, scope: !409)
!417 = !DILocation(line: 93, column: 1, scope: !409)
!418 = distinct !DISubprogram(name: "printStructLine", scope: !17, file: !17, line: 95, type: !419, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !423, line: 100, baseType: !424)
!423 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_054/source_code")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !423, line: 96, size: 64, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !424, file: !423, line: 98, baseType: !36, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !424, file: !423, line: 99, baseType: !36, size: 32, offset: 32)
!428 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !418, file: !17, line: 95, type: !421)
!429 = !DILocation(line: 95, column: 40, scope: !418)
!430 = !DILocation(line: 97, column: 26, scope: !418)
!431 = !DILocation(line: 97, column: 47, scope: !418)
!432 = !DILocation(line: 97, column: 55, scope: !418)
!433 = !DILocation(line: 97, column: 76, scope: !418)
!434 = !DILocation(line: 97, column: 5, scope: !418)
!435 = !DILocation(line: 98, column: 1, scope: !418)
!436 = distinct !DISubprogram(name: "printBytesLine", scope: !17, file: !17, line: 100, type: !437, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439, !111}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!440 = !DILocalVariable(name: "bytes", arg: 1, scope: !436, file: !17, line: 100, type: !439)
!441 = !DILocation(line: 100, column: 38, scope: !436)
!442 = !DILocalVariable(name: "numBytes", arg: 2, scope: !436, file: !17, line: 100, type: !111)
!443 = !DILocation(line: 100, column: 52, scope: !436)
!444 = !DILocalVariable(name: "i", scope: !436, file: !17, line: 102, type: !111)
!445 = !DILocation(line: 102, column: 12, scope: !436)
!446 = !DILocation(line: 103, column: 12, scope: !447)
!447 = distinct !DILexicalBlock(scope: !436, file: !17, line: 103, column: 5)
!448 = !DILocation(line: 103, column: 10, scope: !447)
!449 = !DILocation(line: 103, column: 17, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !17, line: 103, column: 5)
!451 = !DILocation(line: 103, column: 21, scope: !450)
!452 = !DILocation(line: 103, column: 19, scope: !450)
!453 = !DILocation(line: 103, column: 5, scope: !447)
!454 = !DILocation(line: 105, column: 24, scope: !455)
!455 = distinct !DILexicalBlock(scope: !450, file: !17, line: 104, column: 5)
!456 = !DILocation(line: 105, column: 30, scope: !455)
!457 = !DILocation(line: 105, column: 9, scope: !455)
!458 = !DILocation(line: 106, column: 5, scope: !455)
!459 = !DILocation(line: 103, column: 31, scope: !450)
!460 = !DILocation(line: 103, column: 5, scope: !450)
!461 = distinct !{!461, !453, !462, !94}
!462 = !DILocation(line: 106, column: 5, scope: !447)
!463 = !DILocation(line: 107, column: 5, scope: !436)
!464 = !DILocation(line: 108, column: 1, scope: !436)
!465 = distinct !DISubprogram(name: "decodeHexChars", scope: !17, file: !17, line: 113, type: !466, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!466 = !DISubroutineType(types: !467)
!467 = !{!111, !439, !111, !10}
!468 = !DILocalVariable(name: "bytes", arg: 1, scope: !465, file: !17, line: 113, type: !439)
!469 = !DILocation(line: 113, column: 39, scope: !465)
!470 = !DILocalVariable(name: "numBytes", arg: 2, scope: !465, file: !17, line: 113, type: !111)
!471 = !DILocation(line: 113, column: 53, scope: !465)
!472 = !DILocalVariable(name: "hex", arg: 3, scope: !465, file: !17, line: 113, type: !10)
!473 = !DILocation(line: 113, column: 71, scope: !465)
!474 = !DILocalVariable(name: "numWritten", scope: !465, file: !17, line: 115, type: !111)
!475 = !DILocation(line: 115, column: 12, scope: !465)
!476 = !DILocation(line: 121, column: 5, scope: !465)
!477 = !DILocation(line: 121, column: 12, scope: !465)
!478 = !DILocation(line: 121, column: 25, scope: !465)
!479 = !DILocation(line: 121, column: 23, scope: !465)
!480 = !DILocation(line: 121, column: 34, scope: !465)
!481 = !DILocation(line: 121, column: 37, scope: !465)
!482 = !DILocation(line: 121, column: 67, scope: !465)
!483 = !DILocation(line: 121, column: 70, scope: !465)
!484 = !DILocation(line: 0, scope: !465)
!485 = !DILocalVariable(name: "byte", scope: !486, file: !17, line: 123, type: !36)
!486 = distinct !DILexicalBlock(scope: !465, file: !17, line: 122, column: 5)
!487 = !DILocation(line: 123, column: 13, scope: !486)
!488 = !DILocation(line: 124, column: 17, scope: !486)
!489 = !DILocation(line: 124, column: 25, scope: !486)
!490 = !DILocation(line: 124, column: 23, scope: !486)
!491 = !DILocation(line: 124, column: 9, scope: !486)
!492 = !DILocation(line: 125, column: 45, scope: !486)
!493 = !DILocation(line: 125, column: 29, scope: !486)
!494 = !DILocation(line: 125, column: 9, scope: !486)
!495 = !DILocation(line: 125, column: 15, scope: !486)
!496 = !DILocation(line: 125, column: 27, scope: !486)
!497 = !DILocation(line: 126, column: 9, scope: !486)
!498 = distinct !{!498, !476, !499, !94}
!499 = !DILocation(line: 127, column: 5, scope: !465)
!500 = !DILocation(line: 129, column: 12, scope: !465)
!501 = !DILocation(line: 129, column: 5, scope: !465)
!502 = distinct !DISubprogram(name: "decodeHexWChars", scope: !17, file: !17, line: 135, type: !503, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!503 = !DISubroutineType(types: !504)
!504 = !{!111, !439, !111, !299}
!505 = !DILocalVariable(name: "bytes", arg: 1, scope: !502, file: !17, line: 135, type: !439)
!506 = !DILocation(line: 135, column: 41, scope: !502)
!507 = !DILocalVariable(name: "numBytes", arg: 2, scope: !502, file: !17, line: 135, type: !111)
!508 = !DILocation(line: 135, column: 55, scope: !502)
!509 = !DILocalVariable(name: "hex", arg: 3, scope: !502, file: !17, line: 135, type: !299)
!510 = !DILocation(line: 135, column: 76, scope: !502)
!511 = !DILocalVariable(name: "numWritten", scope: !502, file: !17, line: 137, type: !111)
!512 = !DILocation(line: 137, column: 12, scope: !502)
!513 = !DILocation(line: 143, column: 5, scope: !502)
!514 = !DILocation(line: 143, column: 12, scope: !502)
!515 = !DILocation(line: 143, column: 25, scope: !502)
!516 = !DILocation(line: 143, column: 23, scope: !502)
!517 = !DILocation(line: 143, column: 34, scope: !502)
!518 = !DILocation(line: 143, column: 47, scope: !502)
!519 = !DILocation(line: 143, column: 55, scope: !502)
!520 = !DILocation(line: 143, column: 53, scope: !502)
!521 = !DILocation(line: 143, column: 37, scope: !502)
!522 = !DILocation(line: 143, column: 68, scope: !502)
!523 = !DILocation(line: 143, column: 81, scope: !502)
!524 = !DILocation(line: 143, column: 89, scope: !502)
!525 = !DILocation(line: 143, column: 87, scope: !502)
!526 = !DILocation(line: 143, column: 100, scope: !502)
!527 = !DILocation(line: 143, column: 71, scope: !502)
!528 = !DILocation(line: 0, scope: !502)
!529 = !DILocalVariable(name: "byte", scope: !530, file: !17, line: 145, type: !36)
!530 = distinct !DILexicalBlock(scope: !502, file: !17, line: 144, column: 5)
!531 = !DILocation(line: 145, column: 13, scope: !530)
!532 = !DILocation(line: 146, column: 18, scope: !530)
!533 = !DILocation(line: 146, column: 26, scope: !530)
!534 = !DILocation(line: 146, column: 24, scope: !530)
!535 = !DILocation(line: 146, column: 9, scope: !530)
!536 = !DILocation(line: 147, column: 45, scope: !530)
!537 = !DILocation(line: 147, column: 29, scope: !530)
!538 = !DILocation(line: 147, column: 9, scope: !530)
!539 = !DILocation(line: 147, column: 15, scope: !530)
!540 = !DILocation(line: 147, column: 27, scope: !530)
!541 = !DILocation(line: 148, column: 9, scope: !530)
!542 = distinct !{!542, !513, !543, !94}
!543 = !DILocation(line: 149, column: 5, scope: !502)
!544 = !DILocation(line: 151, column: 12, scope: !502)
!545 = !DILocation(line: 151, column: 5, scope: !502)
!546 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !17, file: !17, line: 156, type: !547, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!547 = !DISubroutineType(types: !548)
!548 = !{!36}
!549 = !DILocation(line: 158, column: 5, scope: !546)
!550 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !17, file: !17, line: 161, type: !547, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!551 = !DILocation(line: 163, column: 5, scope: !550)
!552 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !17, file: !17, line: 166, type: !547, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!553 = !DILocation(line: 168, column: 13, scope: !552)
!554 = !DILocation(line: 168, column: 20, scope: !552)
!555 = !DILocation(line: 168, column: 5, scope: !552)
!556 = distinct !DISubprogram(name: "good1", scope: !17, file: !17, line: 187, type: !60, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!557 = !DILocation(line: 187, column: 16, scope: !556)
!558 = distinct !DISubprogram(name: "good2", scope: !17, file: !17, line: 188, type: !60, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!559 = !DILocation(line: 188, column: 16, scope: !558)
!560 = distinct !DISubprogram(name: "good3", scope: !17, file: !17, line: 189, type: !60, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!561 = !DILocation(line: 189, column: 16, scope: !560)
!562 = distinct !DISubprogram(name: "good4", scope: !17, file: !17, line: 190, type: !60, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!563 = !DILocation(line: 190, column: 16, scope: !562)
!564 = distinct !DISubprogram(name: "good5", scope: !17, file: !17, line: 191, type: !60, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!565 = !DILocation(line: 191, column: 16, scope: !564)
!566 = distinct !DISubprogram(name: "good6", scope: !17, file: !17, line: 192, type: !60, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!567 = !DILocation(line: 192, column: 16, scope: !566)
!568 = distinct !DISubprogram(name: "good7", scope: !17, file: !17, line: 193, type: !60, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!569 = !DILocation(line: 193, column: 16, scope: !568)
!570 = distinct !DISubprogram(name: "good8", scope: !17, file: !17, line: 194, type: !60, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!571 = !DILocation(line: 194, column: 16, scope: !570)
!572 = distinct !DISubprogram(name: "good9", scope: !17, file: !17, line: 195, type: !60, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!573 = !DILocation(line: 195, column: 16, scope: !572)
!574 = distinct !DISubprogram(name: "bad1", scope: !17, file: !17, line: 198, type: !60, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!575 = !DILocation(line: 198, column: 15, scope: !574)
!576 = distinct !DISubprogram(name: "bad2", scope: !17, file: !17, line: 199, type: !60, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!577 = !DILocation(line: 199, column: 15, scope: !576)
!578 = distinct !DISubprogram(name: "bad3", scope: !17, file: !17, line: 200, type: !60, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!579 = !DILocation(line: 200, column: 15, scope: !578)
!580 = distinct !DISubprogram(name: "bad4", scope: !17, file: !17, line: 201, type: !60, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!581 = !DILocation(line: 201, column: 15, scope: !580)
!582 = distinct !DISubprogram(name: "bad5", scope: !17, file: !17, line: 202, type: !60, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!583 = !DILocation(line: 202, column: 15, scope: !582)
!584 = distinct !DISubprogram(name: "bad6", scope: !17, file: !17, line: 203, type: !60, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!585 = !DILocation(line: 203, column: 15, scope: !584)
!586 = distinct !DISubprogram(name: "bad7", scope: !17, file: !17, line: 204, type: !60, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!587 = !DILocation(line: 204, column: 15, scope: !586)
!588 = distinct !DISubprogram(name: "bad8", scope: !17, file: !17, line: 205, type: !60, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!589 = !DILocation(line: 205, column: 15, scope: !588)
!590 = distinct !DISubprogram(name: "bad9", scope: !17, file: !17, line: 206, type: !60, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !4)
!591 = !DILocation(line: 206, column: 15, scope: !590)
