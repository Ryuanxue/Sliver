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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_51_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !59, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !66, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i64 @strlen(i8* %1) #7, !dbg !73
  store i64 %call, i64* %dataLen, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !74, metadata !DIExpression()), !dbg !75
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !76
  store i8* %call1, i8** %environment, align 8, !dbg !75
  %2 = load i8*, i8** %environment, align 8, !dbg !77
  %cmp = icmp ne i8* %2, null, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !81
  %4 = load i64, i64* %dataLen, align 8, !dbg !83
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !84
  %5 = load i8*, i8** %environment, align 8, !dbg !85
  %6 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub = sub i64 100, %6, !dbg !87
  %sub2 = sub i64 %sub, 1, !dbg !88
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !89
  br label %if.end, !dbg !90

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !91
  call void @CWE606_Unchecked_Loop_Condition__char_environment_51b_badSink(i8* %7), !dbg !92
  ret void, !dbg !93
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
define dso_local void @goodG2B() #0 !dbg !94 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !97, metadata !DIExpression()), !dbg !98
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !98
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !99
  store i8* %arraydecay, i8** %data, align 8, !dbg !100
  %1 = load i8*, i8** %data, align 8, !dbg !101
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !102
  %2 = load i8*, i8** %data, align 8, !dbg !103
  call void @CWE606_Unchecked_Loop_Condition__char_environment_51b_goodG2BSink(i8* %2), !dbg !104
  ret void, !dbg !105
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !106 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !109, metadata !DIExpression()), !dbg !110
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !110
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !110
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !111
  store i8* %arraydecay, i8** %data, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !113, metadata !DIExpression()), !dbg !115
  %1 = load i8*, i8** %data, align 8, !dbg !116
  %call = call i64 @strlen(i8* %1) #7, !dbg !117
  store i64 %call, i64* %dataLen, align 8, !dbg !115
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !118, metadata !DIExpression()), !dbg !119
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !120
  store i8* %call1, i8** %environment, align 8, !dbg !119
  %2 = load i8*, i8** %environment, align 8, !dbg !121
  %cmp = icmp ne i8* %2, null, !dbg !123
  br i1 %cmp, label %if.then, label %if.end, !dbg !124

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !125
  %4 = load i64, i64* %dataLen, align 8, !dbg !127
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !128
  %5 = load i8*, i8** %environment, align 8, !dbg !129
  %6 = load i64, i64* %dataLen, align 8, !dbg !130
  %sub = sub i64 100, %6, !dbg !131
  %sub2 = sub i64 %sub, 1, !dbg !132
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !133
  br label %if.end, !dbg !134

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !135
  call void @CWE606_Unchecked_Loop_Condition__char_environment_51b_goodB2GSink(i8* %7), !dbg !136
  ret void, !dbg !137
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_51_good() #0 !dbg !138 {
entry:
  call void @goodG2B(), !dbg !139
  call void @goodB2G(), !dbg !140
  ret void, !dbg !141
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_51b_badSink(i8* %data) #0 !dbg !142 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %i, metadata !147, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i32* %n, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load i8*, i8** %data.addr, align 8, !dbg !154
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !156
  %cmp = icmp eq i32 %call, 1, !dbg !157
  br i1 %cmp, label %if.then, label %if.end, !dbg !158

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !159
  store i32 0, i32* %i, align 4, !dbg !161
  br label %for.cond, !dbg !163

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !164
  %2 = load i32, i32* %n, align 4, !dbg !166
  %cmp1 = icmp slt i32 %1, %2, !dbg !167
  br i1 %cmp1, label %for.body, label %for.end, !dbg !168

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !169
  %inc = add nsw i32 %3, 1, !dbg !169
  store i32 %inc, i32* %intVariable, align 4, !dbg !169
  br label %for.inc, !dbg !171

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !172
  %inc2 = add nsw i32 %4, 1, !dbg !172
  store i32 %inc2, i32* %i, align 4, !dbg !172
  br label %for.cond, !dbg !173, !llvm.loop !174

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !177
  call void @printIntLine(i32 %5), !dbg !178
  br label %if.end, !dbg !179

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !180
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_51b_goodG2BSink(i8* %data) #0 !dbg !181 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %i, metadata !184, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %n, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !189, metadata !DIExpression()), !dbg !190
  %0 = load i8*, i8** %data.addr, align 8, !dbg !191
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !193
  %cmp = icmp eq i32 %call, 1, !dbg !194
  br i1 %cmp, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !196
  store i32 0, i32* %i, align 4, !dbg !198
  br label %for.cond, !dbg !200

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !201
  %2 = load i32, i32* %n, align 4, !dbg !203
  %cmp1 = icmp slt i32 %1, %2, !dbg !204
  br i1 %cmp1, label %for.body, label %for.end, !dbg !205

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !206
  %inc = add nsw i32 %3, 1, !dbg !206
  store i32 %inc, i32* %intVariable, align 4, !dbg !206
  br label %for.inc, !dbg !208

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !209
  %inc2 = add nsw i32 %4, 1, !dbg !209
  store i32 %inc2, i32* %i, align 4, !dbg !209
  br label %for.cond, !dbg !210, !llvm.loop !211

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !213
  call void @printIntLine(i32 %5), !dbg !214
  br label %if.end, !dbg !215

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_51b_goodB2GSink(i8* %data) #0 !dbg !217 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %i, metadata !220, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %n, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = load i8*, i8** %data.addr, align 8, !dbg !227
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !229
  %cmp = icmp eq i32 %call, 1, !dbg !230
  br i1 %cmp, label %if.then, label %if.end5, !dbg !231

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !232
  %cmp1 = icmp slt i32 %1, 10000, !dbg !235
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !236

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !237
  store i32 0, i32* %i, align 4, !dbg !239
  br label %for.cond, !dbg !241

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !242
  %3 = load i32, i32* %n, align 4, !dbg !244
  %cmp3 = icmp slt i32 %2, %3, !dbg !245
  br i1 %cmp3, label %for.body, label %for.end, !dbg !246

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !247
  %inc = add nsw i32 %4, 1, !dbg !247
  store i32 %inc, i32* %intVariable, align 4, !dbg !247
  br label %for.inc, !dbg !249

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !250
  %inc4 = add nsw i32 %5, 1, !dbg !250
  store i32 %inc4, i32* %i, align 4, !dbg !250
  br label %for.cond, !dbg !251, !llvm.loop !252

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !254
  call void @printIntLine(i32 %6), !dbg !255
  br label %if.end, !dbg !256

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !257

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !258
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !259 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !260, metadata !DIExpression()), !dbg !261
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !262
  %0 = load i8*, i8** %line.addr, align 8, !dbg !263
  %cmp = icmp ne i8* %0, null, !dbg !265
  br i1 %cmp, label %if.then, label %if.end, !dbg !266

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !267
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !269
  br label %if.end, !dbg !270

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !271
  ret void, !dbg !272
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !273 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !274, metadata !DIExpression()), !dbg !275
  %0 = load i8*, i8** %line.addr, align 8, !dbg !276
  %cmp = icmp ne i8* %0, null, !dbg !278
  br i1 %cmp, label %if.then, label %if.end, !dbg !279

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !280
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !282
  br label %if.end, !dbg !283

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !285 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !290, metadata !DIExpression()), !dbg !291
  %0 = load i32*, i32** %line.addr, align 8, !dbg !292
  %cmp = icmp ne i32* %0, null, !dbg !294
  br i1 %cmp, label %if.then, label %if.end, !dbg !295

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !296
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !298
  br label %if.end, !dbg !299

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !300
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !301 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !304, metadata !DIExpression()), !dbg !305
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !306
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !307
  ret void, !dbg !308
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !309 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !313, metadata !DIExpression()), !dbg !314
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !315
  %conv = sext i16 %0 to i32, !dbg !315
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !316
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !318 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !324
  %conv = fpext float %0 to double, !dbg !324
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !325
  ret void, !dbg !326
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !327 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !333
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !336 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !343, metadata !DIExpression()), !dbg !344
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !345
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !346
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !348 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.13, i64 0, i64 0), i64 %0), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !356 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !361
  %conv = sext i8 %0 to i32, !dbg !361
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !362
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !364 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !367, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !369, metadata !DIExpression()), !dbg !373
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !374
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !375
  store i32 %0, i32* %arrayidx, align 4, !dbg !376
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !377
  store i32 0, i32* %arrayidx1, align 4, !dbg !378
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !379
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !382 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !390 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !393, metadata !DIExpression()), !dbg !394
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !395
  %conv = zext i8 %0 to i32, !dbg !395
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !396
  ret void, !dbg !397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !398 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !404
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !407 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !419
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !420
  %1 = load i32, i32* %intOne, align 4, !dbg !420
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !421
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !422
  %3 = load i32, i32* %intTwo, align 4, !dbg !422
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !425 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !429, metadata !DIExpression()), !dbg !430
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !431, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.declare(metadata i64* %i, metadata !433, metadata !DIExpression()), !dbg !434
  store i64 0, i64* %i, align 8, !dbg !435
  br label %for.cond, !dbg !437

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !438
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !440
  %cmp = icmp ult i64 %0, %1, !dbg !441
  br i1 %cmp, label %for.body, label %for.end, !dbg !442

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !443
  %3 = load i64, i64* %i, align 8, !dbg !445
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !443
  %4 = load i8, i8* %arrayidx, align 1, !dbg !443
  %conv = zext i8 %4 to i32, !dbg !443
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !446
  br label %for.inc, !dbg !447

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !448
  %inc = add i64 %5, 1, !dbg !448
  store i64 %inc, i64* %i, align 8, !dbg !448
  br label %for.cond, !dbg !449, !llvm.loop !450

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !452
  ret void, !dbg !453
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !454 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !457, metadata !DIExpression()), !dbg !458
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !459, metadata !DIExpression()), !dbg !460
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !463, metadata !DIExpression()), !dbg !464
  store i64 0, i64* %numWritten, align 8, !dbg !464
  br label %while.cond, !dbg !465

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !466
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !467
  %cmp = icmp ult i64 %0, %1, !dbg !468
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !469

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !470
  %2 = load i16*, i16** %call, align 8, !dbg !470
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !470
  %4 = load i64, i64* %numWritten, align 8, !dbg !470
  %mul = mul i64 2, %4, !dbg !470
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !470
  %5 = load i8, i8* %arrayidx, align 1, !dbg !470
  %conv = sext i8 %5 to i32, !dbg !470
  %idxprom = sext i32 %conv to i64, !dbg !470
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !470
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !470
  %conv2 = zext i16 %6 to i32, !dbg !470
  %and = and i32 %conv2, 4096, !dbg !470
  %tobool = icmp ne i32 %and, 0, !dbg !470
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !471

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !472
  %7 = load i16*, i16** %call3, align 8, !dbg !472
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !472
  %9 = load i64, i64* %numWritten, align 8, !dbg !472
  %mul4 = mul i64 2, %9, !dbg !472
  %add = add i64 %mul4, 1, !dbg !472
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !472
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !472
  %conv6 = sext i8 %10 to i32, !dbg !472
  %idxprom7 = sext i32 %conv6 to i64, !dbg !472
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !472
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !472
  %conv9 = zext i16 %11 to i32, !dbg !472
  %and10 = and i32 %conv9, 4096, !dbg !472
  %tobool11 = icmp ne i32 %and10, 0, !dbg !471
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !473
  br i1 %12, label %while.body, label %while.end, !dbg !465

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !474, metadata !DIExpression()), !dbg !476
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !477
  %14 = load i64, i64* %numWritten, align 8, !dbg !478
  %mul12 = mul i64 2, %14, !dbg !479
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !477
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !480
  %15 = load i32, i32* %byte, align 4, !dbg !481
  %conv15 = trunc i32 %15 to i8, !dbg !482
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !483
  %17 = load i64, i64* %numWritten, align 8, !dbg !484
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !483
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !485
  %18 = load i64, i64* %numWritten, align 8, !dbg !486
  %inc = add i64 %18, 1, !dbg !486
  store i64 %inc, i64* %numWritten, align 8, !dbg !486
  br label %while.cond, !dbg !465, !llvm.loop !487

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !489
  ret i64 %19, !dbg !490
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !491 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !494, metadata !DIExpression()), !dbg !495
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !496, metadata !DIExpression()), !dbg !497
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !498, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !500, metadata !DIExpression()), !dbg !501
  store i64 0, i64* %numWritten, align 8, !dbg !501
  br label %while.cond, !dbg !502

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !503
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !504
  %cmp = icmp ult i64 %0, %1, !dbg !505
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !506

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !507
  %3 = load i64, i64* %numWritten, align 8, !dbg !508
  %mul = mul i64 2, %3, !dbg !509
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !507
  %4 = load i32, i32* %arrayidx, align 4, !dbg !507
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !510
  %tobool = icmp ne i32 %call, 0, !dbg !510
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !511

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !512
  %6 = load i64, i64* %numWritten, align 8, !dbg !513
  %mul1 = mul i64 2, %6, !dbg !514
  %add = add i64 %mul1, 1, !dbg !515
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !512
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !512
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !516
  %tobool4 = icmp ne i32 %call3, 0, !dbg !511
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !517
  br i1 %8, label %while.body, label %while.end, !dbg !502

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !518, metadata !DIExpression()), !dbg !520
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !521
  %10 = load i64, i64* %numWritten, align 8, !dbg !522
  %mul5 = mul i64 2, %10, !dbg !523
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !521
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !524
  %11 = load i32, i32* %byte, align 4, !dbg !525
  %conv = trunc i32 %11 to i8, !dbg !526
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !527
  %13 = load i64, i64* %numWritten, align 8, !dbg !528
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !527
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !529
  %14 = load i64, i64* %numWritten, align 8, !dbg !530
  %inc = add i64 %14, 1, !dbg !530
  store i64 %inc, i64* %numWritten, align 8, !dbg !530
  br label %while.cond, !dbg !502, !llvm.loop !531

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !533
  ret i64 %15, !dbg !534
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !535 {
entry:
  ret i32 1, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !539 {
entry:
  ret i32 0, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !541 {
entry:
  %call = call i32 @rand() #8, !dbg !542
  %rem = srem i32 %call, 2, !dbg !543
  ret i32 %rem, !dbg !544
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !579 {
entry:
  ret void, !dbg !580
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_055/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_51a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_055/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_51b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_055/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_51_bad", scope: !45, file: !45, line: 39, type: !55, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 41, type: !42)
!58 = !DILocation(line: 41, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 42, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 100)
!63 = !DILocation(line: 42, column: 10, scope: !54)
!64 = !DILocation(line: 43, column: 12, scope: !54)
!65 = !DILocation(line: 43, column: 10, scope: !54)
!66 = !DILocalVariable(name: "dataLen", scope: !67, file: !45, line: 46, type: !68)
!67 = distinct !DILexicalBlock(scope: !54, file: !45, line: 44, column: 5)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 46, column: 16, scope: !67)
!72 = !DILocation(line: 46, column: 33, scope: !67)
!73 = !DILocation(line: 46, column: 26, scope: !67)
!74 = !DILocalVariable(name: "environment", scope: !67, file: !45, line: 47, type: !42)
!75 = !DILocation(line: 47, column: 16, scope: !67)
!76 = !DILocation(line: 47, column: 30, scope: !67)
!77 = !DILocation(line: 49, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !67, file: !45, line: 49, column: 13)
!79 = !DILocation(line: 49, column: 25, scope: !78)
!80 = !DILocation(line: 49, column: 13, scope: !67)
!81 = !DILocation(line: 52, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !45, line: 50, column: 9)
!83 = !DILocation(line: 52, column: 26, scope: !82)
!84 = !DILocation(line: 52, column: 25, scope: !82)
!85 = !DILocation(line: 52, column: 35, scope: !82)
!86 = !DILocation(line: 52, column: 52, scope: !82)
!87 = !DILocation(line: 52, column: 51, scope: !82)
!88 = !DILocation(line: 52, column: 59, scope: !82)
!89 = !DILocation(line: 52, column: 13, scope: !82)
!90 = !DILocation(line: 53, column: 9, scope: !82)
!91 = !DILocation(line: 55, column: 67, scope: !54)
!92 = !DILocation(line: 55, column: 5, scope: !54)
!93 = !DILocation(line: 56, column: 1, scope: !54)
!94 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 64, type: !55, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!95 = !DILocalVariable(name: "data", scope: !94, file: !45, line: 66, type: !42)
!96 = !DILocation(line: 66, column: 12, scope: !94)
!97 = !DILocalVariable(name: "dataBuffer", scope: !94, file: !45, line: 67, type: !60)
!98 = !DILocation(line: 67, column: 10, scope: !94)
!99 = !DILocation(line: 68, column: 12, scope: !94)
!100 = !DILocation(line: 68, column: 10, scope: !94)
!101 = !DILocation(line: 70, column: 12, scope: !94)
!102 = !DILocation(line: 70, column: 5, scope: !94)
!103 = !DILocation(line: 71, column: 71, scope: !94)
!104 = !DILocation(line: 71, column: 5, scope: !94)
!105 = !DILocation(line: 72, column: 1, scope: !94)
!106 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 76, type: !55, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!107 = !DILocalVariable(name: "data", scope: !106, file: !45, line: 78, type: !42)
!108 = !DILocation(line: 78, column: 12, scope: !106)
!109 = !DILocalVariable(name: "dataBuffer", scope: !106, file: !45, line: 79, type: !60)
!110 = !DILocation(line: 79, column: 10, scope: !106)
!111 = !DILocation(line: 80, column: 12, scope: !106)
!112 = !DILocation(line: 80, column: 10, scope: !106)
!113 = !DILocalVariable(name: "dataLen", scope: !114, file: !45, line: 83, type: !68)
!114 = distinct !DILexicalBlock(scope: !106, file: !45, line: 81, column: 5)
!115 = !DILocation(line: 83, column: 16, scope: !114)
!116 = !DILocation(line: 83, column: 33, scope: !114)
!117 = !DILocation(line: 83, column: 26, scope: !114)
!118 = !DILocalVariable(name: "environment", scope: !114, file: !45, line: 84, type: !42)
!119 = !DILocation(line: 84, column: 16, scope: !114)
!120 = !DILocation(line: 84, column: 30, scope: !114)
!121 = !DILocation(line: 86, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !114, file: !45, line: 86, column: 13)
!123 = !DILocation(line: 86, column: 25, scope: !122)
!124 = !DILocation(line: 86, column: 13, scope: !114)
!125 = !DILocation(line: 89, column: 21, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !45, line: 87, column: 9)
!127 = !DILocation(line: 89, column: 26, scope: !126)
!128 = !DILocation(line: 89, column: 25, scope: !126)
!129 = !DILocation(line: 89, column: 35, scope: !126)
!130 = !DILocation(line: 89, column: 52, scope: !126)
!131 = !DILocation(line: 89, column: 51, scope: !126)
!132 = !DILocation(line: 89, column: 59, scope: !126)
!133 = !DILocation(line: 89, column: 13, scope: !126)
!134 = !DILocation(line: 90, column: 9, scope: !126)
!135 = !DILocation(line: 92, column: 71, scope: !106)
!136 = !DILocation(line: 92, column: 5, scope: !106)
!137 = !DILocation(line: 93, column: 1, scope: !106)
!138 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_51_good", scope: !45, file: !45, line: 95, type: !55, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!139 = !DILocation(line: 97, column: 5, scope: !138)
!140 = !DILocation(line: 98, column: 5, scope: !138)
!141 = !DILocation(line: 99, column: 1, scope: !138)
!142 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_51b_badSink", scope: !49, file: !49, line: 36, type: !143, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !42}
!145 = !DILocalVariable(name: "data", arg: 1, scope: !142, file: !49, line: 36, type: !42)
!146 = !DILocation(line: 36, column: 75, scope: !142)
!147 = !DILocalVariable(name: "i", scope: !148, file: !49, line: 39, type: !23)
!148 = distinct !DILexicalBlock(scope: !142, file: !49, line: 38, column: 5)
!149 = !DILocation(line: 39, column: 13, scope: !148)
!150 = !DILocalVariable(name: "n", scope: !148, file: !49, line: 39, type: !23)
!151 = !DILocation(line: 39, column: 16, scope: !148)
!152 = !DILocalVariable(name: "intVariable", scope: !148, file: !49, line: 39, type: !23)
!153 = !DILocation(line: 39, column: 19, scope: !148)
!154 = !DILocation(line: 40, column: 20, scope: !155)
!155 = distinct !DILexicalBlock(scope: !148, file: !49, line: 40, column: 13)
!156 = !DILocation(line: 40, column: 13, scope: !155)
!157 = !DILocation(line: 40, column: 36, scope: !155)
!158 = !DILocation(line: 40, column: 13, scope: !148)
!159 = !DILocation(line: 43, column: 25, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !49, line: 41, column: 9)
!161 = !DILocation(line: 44, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !160, file: !49, line: 44, column: 13)
!163 = !DILocation(line: 44, column: 18, scope: !162)
!164 = !DILocation(line: 44, column: 25, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !49, line: 44, column: 13)
!166 = !DILocation(line: 44, column: 29, scope: !165)
!167 = !DILocation(line: 44, column: 27, scope: !165)
!168 = !DILocation(line: 44, column: 13, scope: !162)
!169 = !DILocation(line: 47, column: 28, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !49, line: 45, column: 13)
!171 = !DILocation(line: 48, column: 13, scope: !170)
!172 = !DILocation(line: 44, column: 33, scope: !165)
!173 = !DILocation(line: 44, column: 13, scope: !165)
!174 = distinct !{!174, !168, !175, !176}
!175 = !DILocation(line: 48, column: 13, scope: !162)
!176 = !{!"llvm.loop.mustprogress"}
!177 = !DILocation(line: 49, column: 26, scope: !160)
!178 = !DILocation(line: 49, column: 13, scope: !160)
!179 = !DILocation(line: 50, column: 9, scope: !160)
!180 = !DILocation(line: 52, column: 1, scope: !142)
!181 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_51b_goodG2BSink", scope: !49, file: !49, line: 59, type: !143, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!182 = !DILocalVariable(name: "data", arg: 1, scope: !181, file: !49, line: 59, type: !42)
!183 = !DILocation(line: 59, column: 79, scope: !181)
!184 = !DILocalVariable(name: "i", scope: !185, file: !49, line: 62, type: !23)
!185 = distinct !DILexicalBlock(scope: !181, file: !49, line: 61, column: 5)
!186 = !DILocation(line: 62, column: 13, scope: !185)
!187 = !DILocalVariable(name: "n", scope: !185, file: !49, line: 62, type: !23)
!188 = !DILocation(line: 62, column: 16, scope: !185)
!189 = !DILocalVariable(name: "intVariable", scope: !185, file: !49, line: 62, type: !23)
!190 = !DILocation(line: 62, column: 19, scope: !185)
!191 = !DILocation(line: 63, column: 20, scope: !192)
!192 = distinct !DILexicalBlock(scope: !185, file: !49, line: 63, column: 13)
!193 = !DILocation(line: 63, column: 13, scope: !192)
!194 = !DILocation(line: 63, column: 36, scope: !192)
!195 = !DILocation(line: 63, column: 13, scope: !185)
!196 = !DILocation(line: 66, column: 25, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !49, line: 64, column: 9)
!198 = !DILocation(line: 67, column: 20, scope: !199)
!199 = distinct !DILexicalBlock(scope: !197, file: !49, line: 67, column: 13)
!200 = !DILocation(line: 67, column: 18, scope: !199)
!201 = !DILocation(line: 67, column: 25, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !49, line: 67, column: 13)
!203 = !DILocation(line: 67, column: 29, scope: !202)
!204 = !DILocation(line: 67, column: 27, scope: !202)
!205 = !DILocation(line: 67, column: 13, scope: !199)
!206 = !DILocation(line: 70, column: 28, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !49, line: 68, column: 13)
!208 = !DILocation(line: 71, column: 13, scope: !207)
!209 = !DILocation(line: 67, column: 33, scope: !202)
!210 = !DILocation(line: 67, column: 13, scope: !202)
!211 = distinct !{!211, !205, !212, !176}
!212 = !DILocation(line: 71, column: 13, scope: !199)
!213 = !DILocation(line: 72, column: 26, scope: !197)
!214 = !DILocation(line: 72, column: 13, scope: !197)
!215 = !DILocation(line: 73, column: 9, scope: !197)
!216 = !DILocation(line: 75, column: 1, scope: !181)
!217 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_51b_goodB2GSink", scope: !49, file: !49, line: 78, type: !143, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!218 = !DILocalVariable(name: "data", arg: 1, scope: !217, file: !49, line: 78, type: !42)
!219 = !DILocation(line: 78, column: 79, scope: !217)
!220 = !DILocalVariable(name: "i", scope: !221, file: !49, line: 81, type: !23)
!221 = distinct !DILexicalBlock(scope: !217, file: !49, line: 80, column: 5)
!222 = !DILocation(line: 81, column: 13, scope: !221)
!223 = !DILocalVariable(name: "n", scope: !221, file: !49, line: 81, type: !23)
!224 = !DILocation(line: 81, column: 16, scope: !221)
!225 = !DILocalVariable(name: "intVariable", scope: !221, file: !49, line: 81, type: !23)
!226 = !DILocation(line: 81, column: 19, scope: !221)
!227 = !DILocation(line: 82, column: 20, scope: !228)
!228 = distinct !DILexicalBlock(scope: !221, file: !49, line: 82, column: 13)
!229 = !DILocation(line: 82, column: 13, scope: !228)
!230 = !DILocation(line: 82, column: 36, scope: !228)
!231 = !DILocation(line: 82, column: 13, scope: !221)
!232 = !DILocation(line: 85, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !49, line: 85, column: 17)
!234 = distinct !DILexicalBlock(scope: !228, file: !49, line: 83, column: 9)
!235 = !DILocation(line: 85, column: 19, scope: !233)
!236 = !DILocation(line: 85, column: 17, scope: !234)
!237 = !DILocation(line: 87, column: 29, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !49, line: 86, column: 13)
!239 = !DILocation(line: 88, column: 24, scope: !240)
!240 = distinct !DILexicalBlock(scope: !238, file: !49, line: 88, column: 17)
!241 = !DILocation(line: 88, column: 22, scope: !240)
!242 = !DILocation(line: 88, column: 29, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !49, line: 88, column: 17)
!244 = !DILocation(line: 88, column: 33, scope: !243)
!245 = !DILocation(line: 88, column: 31, scope: !243)
!246 = !DILocation(line: 88, column: 17, scope: !240)
!247 = !DILocation(line: 91, column: 32, scope: !248)
!248 = distinct !DILexicalBlock(scope: !243, file: !49, line: 89, column: 17)
!249 = !DILocation(line: 92, column: 17, scope: !248)
!250 = !DILocation(line: 88, column: 37, scope: !243)
!251 = !DILocation(line: 88, column: 17, scope: !243)
!252 = distinct !{!252, !246, !253, !176}
!253 = !DILocation(line: 92, column: 17, scope: !240)
!254 = !DILocation(line: 93, column: 30, scope: !238)
!255 = !DILocation(line: 93, column: 17, scope: !238)
!256 = !DILocation(line: 94, column: 13, scope: !238)
!257 = !DILocation(line: 95, column: 9, scope: !234)
!258 = !DILocation(line: 97, column: 1, scope: !217)
!259 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !143, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!260 = !DILocalVariable(name: "line", arg: 1, scope: !259, file: !3, line: 11, type: !42)
!261 = !DILocation(line: 11, column: 25, scope: !259)
!262 = !DILocation(line: 13, column: 1, scope: !259)
!263 = !DILocation(line: 14, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !3, line: 14, column: 8)
!265 = !DILocation(line: 14, column: 13, scope: !264)
!266 = !DILocation(line: 14, column: 8, scope: !259)
!267 = !DILocation(line: 16, column: 24, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !3, line: 15, column: 5)
!269 = !DILocation(line: 16, column: 9, scope: !268)
!270 = !DILocation(line: 17, column: 5, scope: !268)
!271 = !DILocation(line: 18, column: 5, scope: !259)
!272 = !DILocation(line: 19, column: 1, scope: !259)
!273 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !143, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!274 = !DILocalVariable(name: "line", arg: 1, scope: !273, file: !3, line: 20, type: !42)
!275 = !DILocation(line: 20, column: 29, scope: !273)
!276 = !DILocation(line: 22, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !3, line: 22, column: 8)
!278 = !DILocation(line: 22, column: 13, scope: !277)
!279 = !DILocation(line: 22, column: 8, scope: !273)
!280 = !DILocation(line: 24, column: 24, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !3, line: 23, column: 5)
!282 = !DILocation(line: 24, column: 9, scope: !281)
!283 = !DILocation(line: 25, column: 5, scope: !281)
!284 = !DILocation(line: 26, column: 1, scope: !273)
!285 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !286, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!290 = !DILocalVariable(name: "line", arg: 1, scope: !285, file: !3, line: 27, type: !288)
!291 = !DILocation(line: 27, column: 29, scope: !285)
!292 = !DILocation(line: 29, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !285, file: !3, line: 29, column: 8)
!294 = !DILocation(line: 29, column: 13, scope: !293)
!295 = !DILocation(line: 29, column: 8, scope: !285)
!296 = !DILocation(line: 31, column: 27, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !3, line: 30, column: 5)
!298 = !DILocation(line: 31, column: 9, scope: !297)
!299 = !DILocation(line: 32, column: 5, scope: !297)
!300 = !DILocation(line: 33, column: 1, scope: !285)
!301 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !302, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !23}
!304 = !DILocalVariable(name: "intNumber", arg: 1, scope: !301, file: !3, line: 35, type: !23)
!305 = !DILocation(line: 35, column: 24, scope: !301)
!306 = !DILocation(line: 37, column: 20, scope: !301)
!307 = !DILocation(line: 37, column: 5, scope: !301)
!308 = !DILocation(line: 38, column: 1, scope: !301)
!309 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !310, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !312}
!312 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!313 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !309, file: !3, line: 40, type: !312)
!314 = !DILocation(line: 40, column: 28, scope: !309)
!315 = !DILocation(line: 42, column: 21, scope: !309)
!316 = !DILocation(line: 42, column: 5, scope: !309)
!317 = !DILocation(line: 43, column: 1, scope: !309)
!318 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !319, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !321}
!321 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!322 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !318, file: !3, line: 45, type: !321)
!323 = !DILocation(line: 45, column: 28, scope: !318)
!324 = !DILocation(line: 47, column: 20, scope: !318)
!325 = !DILocation(line: 47, column: 5, scope: !318)
!326 = !DILocation(line: 48, column: 1, scope: !318)
!327 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !328, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !330}
!330 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!331 = !DILocalVariable(name: "longNumber", arg: 1, scope: !327, file: !3, line: 50, type: !330)
!332 = !DILocation(line: 50, column: 26, scope: !327)
!333 = !DILocation(line: 52, column: 21, scope: !327)
!334 = !DILocation(line: 52, column: 5, scope: !327)
!335 = !DILocation(line: 53, column: 1, scope: !327)
!336 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !337, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339}
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !340, line: 27, baseType: !341)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !342, line: 44, baseType: !330)
!342 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!343 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !336, file: !3, line: 55, type: !339)
!344 = !DILocation(line: 55, column: 33, scope: !336)
!345 = !DILocation(line: 57, column: 29, scope: !336)
!346 = !DILocation(line: 57, column: 5, scope: !336)
!347 = !DILocation(line: 58, column: 1, scope: !336)
!348 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !349, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !68}
!351 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !348, file: !3, line: 60, type: !68)
!352 = !DILocation(line: 60, column: 29, scope: !348)
!353 = !DILocation(line: 62, column: 21, scope: !348)
!354 = !DILocation(line: 62, column: 5, scope: !348)
!355 = !DILocation(line: 63, column: 1, scope: !348)
!356 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !357, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !43}
!359 = !DILocalVariable(name: "charHex", arg: 1, scope: !356, file: !3, line: 65, type: !43)
!360 = !DILocation(line: 65, column: 29, scope: !356)
!361 = !DILocation(line: 67, column: 22, scope: !356)
!362 = !DILocation(line: 67, column: 5, scope: !356)
!363 = !DILocation(line: 68, column: 1, scope: !356)
!364 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !365, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !289}
!367 = !DILocalVariable(name: "wideChar", arg: 1, scope: !364, file: !3, line: 70, type: !289)
!368 = !DILocation(line: 70, column: 29, scope: !364)
!369 = !DILocalVariable(name: "s", scope: !364, file: !3, line: 74, type: !370)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 64, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 2)
!373 = !DILocation(line: 74, column: 13, scope: !364)
!374 = !DILocation(line: 75, column: 16, scope: !364)
!375 = !DILocation(line: 75, column: 9, scope: !364)
!376 = !DILocation(line: 75, column: 14, scope: !364)
!377 = !DILocation(line: 76, column: 9, scope: !364)
!378 = !DILocation(line: 76, column: 14, scope: !364)
!379 = !DILocation(line: 77, column: 21, scope: !364)
!380 = !DILocation(line: 77, column: 5, scope: !364)
!381 = !DILocation(line: 78, column: 1, scope: !364)
!382 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !383, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !7}
!385 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !382, file: !3, line: 80, type: !7)
!386 = !DILocation(line: 80, column: 33, scope: !382)
!387 = !DILocation(line: 82, column: 20, scope: !382)
!388 = !DILocation(line: 82, column: 5, scope: !382)
!389 = !DILocation(line: 83, column: 1, scope: !382)
!390 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !391, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !25}
!393 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !390, file: !3, line: 85, type: !25)
!394 = !DILocation(line: 85, column: 45, scope: !390)
!395 = !DILocation(line: 87, column: 22, scope: !390)
!396 = !DILocation(line: 87, column: 5, scope: !390)
!397 = !DILocation(line: 88, column: 1, scope: !390)
!398 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !399, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !401}
!401 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!402 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !398, file: !3, line: 90, type: !401)
!403 = !DILocation(line: 90, column: 29, scope: !398)
!404 = !DILocation(line: 92, column: 20, scope: !398)
!405 = !DILocation(line: 92, column: 5, scope: !398)
!406 = !DILocation(line: 93, column: 1, scope: !398)
!407 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !408, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !412, line: 100, baseType: !413)
!412 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_055/source_code")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !412, line: 96, size: 64, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !413, file: !412, line: 98, baseType: !23, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !413, file: !412, line: 99, baseType: !23, size: 32, offset: 32)
!417 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !407, file: !3, line: 95, type: !410)
!418 = !DILocation(line: 95, column: 40, scope: !407)
!419 = !DILocation(line: 97, column: 26, scope: !407)
!420 = !DILocation(line: 97, column: 47, scope: !407)
!421 = !DILocation(line: 97, column: 55, scope: !407)
!422 = !DILocation(line: 97, column: 76, scope: !407)
!423 = !DILocation(line: 97, column: 5, scope: !407)
!424 = !DILocation(line: 98, column: 1, scope: !407)
!425 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !426, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !428, !68}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!429 = !DILocalVariable(name: "bytes", arg: 1, scope: !425, file: !3, line: 100, type: !428)
!430 = !DILocation(line: 100, column: 38, scope: !425)
!431 = !DILocalVariable(name: "numBytes", arg: 2, scope: !425, file: !3, line: 100, type: !68)
!432 = !DILocation(line: 100, column: 52, scope: !425)
!433 = !DILocalVariable(name: "i", scope: !425, file: !3, line: 102, type: !68)
!434 = !DILocation(line: 102, column: 12, scope: !425)
!435 = !DILocation(line: 103, column: 12, scope: !436)
!436 = distinct !DILexicalBlock(scope: !425, file: !3, line: 103, column: 5)
!437 = !DILocation(line: 103, column: 10, scope: !436)
!438 = !DILocation(line: 103, column: 17, scope: !439)
!439 = distinct !DILexicalBlock(scope: !436, file: !3, line: 103, column: 5)
!440 = !DILocation(line: 103, column: 21, scope: !439)
!441 = !DILocation(line: 103, column: 19, scope: !439)
!442 = !DILocation(line: 103, column: 5, scope: !436)
!443 = !DILocation(line: 105, column: 24, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !3, line: 104, column: 5)
!445 = !DILocation(line: 105, column: 30, scope: !444)
!446 = !DILocation(line: 105, column: 9, scope: !444)
!447 = !DILocation(line: 106, column: 5, scope: !444)
!448 = !DILocation(line: 103, column: 31, scope: !439)
!449 = !DILocation(line: 103, column: 5, scope: !439)
!450 = distinct !{!450, !442, !451, !176}
!451 = !DILocation(line: 106, column: 5, scope: !436)
!452 = !DILocation(line: 107, column: 5, scope: !425)
!453 = !DILocation(line: 108, column: 1, scope: !425)
!454 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !455, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DISubroutineType(types: !456)
!456 = !{!68, !428, !68, !42}
!457 = !DILocalVariable(name: "bytes", arg: 1, scope: !454, file: !3, line: 113, type: !428)
!458 = !DILocation(line: 113, column: 39, scope: !454)
!459 = !DILocalVariable(name: "numBytes", arg: 2, scope: !454, file: !3, line: 113, type: !68)
!460 = !DILocation(line: 113, column: 53, scope: !454)
!461 = !DILocalVariable(name: "hex", arg: 3, scope: !454, file: !3, line: 113, type: !42)
!462 = !DILocation(line: 113, column: 71, scope: !454)
!463 = !DILocalVariable(name: "numWritten", scope: !454, file: !3, line: 115, type: !68)
!464 = !DILocation(line: 115, column: 12, scope: !454)
!465 = !DILocation(line: 121, column: 5, scope: !454)
!466 = !DILocation(line: 121, column: 12, scope: !454)
!467 = !DILocation(line: 121, column: 25, scope: !454)
!468 = !DILocation(line: 121, column: 23, scope: !454)
!469 = !DILocation(line: 121, column: 34, scope: !454)
!470 = !DILocation(line: 121, column: 37, scope: !454)
!471 = !DILocation(line: 121, column: 67, scope: !454)
!472 = !DILocation(line: 121, column: 70, scope: !454)
!473 = !DILocation(line: 0, scope: !454)
!474 = !DILocalVariable(name: "byte", scope: !475, file: !3, line: 123, type: !23)
!475 = distinct !DILexicalBlock(scope: !454, file: !3, line: 122, column: 5)
!476 = !DILocation(line: 123, column: 13, scope: !475)
!477 = !DILocation(line: 124, column: 17, scope: !475)
!478 = !DILocation(line: 124, column: 25, scope: !475)
!479 = !DILocation(line: 124, column: 23, scope: !475)
!480 = !DILocation(line: 124, column: 9, scope: !475)
!481 = !DILocation(line: 125, column: 45, scope: !475)
!482 = !DILocation(line: 125, column: 29, scope: !475)
!483 = !DILocation(line: 125, column: 9, scope: !475)
!484 = !DILocation(line: 125, column: 15, scope: !475)
!485 = !DILocation(line: 125, column: 27, scope: !475)
!486 = !DILocation(line: 126, column: 9, scope: !475)
!487 = distinct !{!487, !465, !488, !176}
!488 = !DILocation(line: 127, column: 5, scope: !454)
!489 = !DILocation(line: 129, column: 12, scope: !454)
!490 = !DILocation(line: 129, column: 5, scope: !454)
!491 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !492, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DISubroutineType(types: !493)
!493 = !{!68, !428, !68, !288}
!494 = !DILocalVariable(name: "bytes", arg: 1, scope: !491, file: !3, line: 135, type: !428)
!495 = !DILocation(line: 135, column: 41, scope: !491)
!496 = !DILocalVariable(name: "numBytes", arg: 2, scope: !491, file: !3, line: 135, type: !68)
!497 = !DILocation(line: 135, column: 55, scope: !491)
!498 = !DILocalVariable(name: "hex", arg: 3, scope: !491, file: !3, line: 135, type: !288)
!499 = !DILocation(line: 135, column: 76, scope: !491)
!500 = !DILocalVariable(name: "numWritten", scope: !491, file: !3, line: 137, type: !68)
!501 = !DILocation(line: 137, column: 12, scope: !491)
!502 = !DILocation(line: 143, column: 5, scope: !491)
!503 = !DILocation(line: 143, column: 12, scope: !491)
!504 = !DILocation(line: 143, column: 25, scope: !491)
!505 = !DILocation(line: 143, column: 23, scope: !491)
!506 = !DILocation(line: 143, column: 34, scope: !491)
!507 = !DILocation(line: 143, column: 47, scope: !491)
!508 = !DILocation(line: 143, column: 55, scope: !491)
!509 = !DILocation(line: 143, column: 53, scope: !491)
!510 = !DILocation(line: 143, column: 37, scope: !491)
!511 = !DILocation(line: 143, column: 68, scope: !491)
!512 = !DILocation(line: 143, column: 81, scope: !491)
!513 = !DILocation(line: 143, column: 89, scope: !491)
!514 = !DILocation(line: 143, column: 87, scope: !491)
!515 = !DILocation(line: 143, column: 100, scope: !491)
!516 = !DILocation(line: 143, column: 71, scope: !491)
!517 = !DILocation(line: 0, scope: !491)
!518 = !DILocalVariable(name: "byte", scope: !519, file: !3, line: 145, type: !23)
!519 = distinct !DILexicalBlock(scope: !491, file: !3, line: 144, column: 5)
!520 = !DILocation(line: 145, column: 13, scope: !519)
!521 = !DILocation(line: 146, column: 18, scope: !519)
!522 = !DILocation(line: 146, column: 26, scope: !519)
!523 = !DILocation(line: 146, column: 24, scope: !519)
!524 = !DILocation(line: 146, column: 9, scope: !519)
!525 = !DILocation(line: 147, column: 45, scope: !519)
!526 = !DILocation(line: 147, column: 29, scope: !519)
!527 = !DILocation(line: 147, column: 9, scope: !519)
!528 = !DILocation(line: 147, column: 15, scope: !519)
!529 = !DILocation(line: 147, column: 27, scope: !519)
!530 = !DILocation(line: 148, column: 9, scope: !519)
!531 = distinct !{!531, !502, !532, !176}
!532 = !DILocation(line: 149, column: 5, scope: !491)
!533 = !DILocation(line: 151, column: 12, scope: !491)
!534 = !DILocation(line: 151, column: 5, scope: !491)
!535 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !536, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DISubroutineType(types: !537)
!537 = !{!23}
!538 = !DILocation(line: 158, column: 5, scope: !535)
!539 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !536, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 163, column: 5, scope: !539)
!541 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !536, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 168, column: 13, scope: !541)
!543 = !DILocation(line: 168, column: 20, scope: !541)
!544 = !DILocation(line: 168, column: 5, scope: !541)
!545 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 187, column: 16, scope: !545)
!547 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 188, column: 16, scope: !547)
!549 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 189, column: 16, scope: !549)
!551 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 190, column: 16, scope: !551)
!553 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 191, column: 16, scope: !553)
!555 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 192, column: 16, scope: !555)
!557 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 193, column: 16, scope: !557)
!559 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 194, column: 16, scope: !559)
!561 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 195, column: 16, scope: !561)
!563 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 198, column: 15, scope: !563)
!565 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 199, column: 15, scope: !565)
!567 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 200, column: 15, scope: !567)
!569 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 201, column: 15, scope: !569)
!571 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 202, column: 15, scope: !571)
!573 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 203, column: 15, scope: !573)
!575 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 204, column: 15, scope: !575)
!577 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 205, column: 15, scope: !577)
!579 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 206, column: 15, scope: !579)
