; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_01_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !69
  %1 = load i8*, i8** %data, align 8, !dbg !70
  %call = call i64 @strlen(i8* %1) #7, !dbg !71
  store i64 %call, i64* %dataLen, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !72, metadata !DIExpression()), !dbg !73
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !74
  store i8* %call1, i8** %environment, align 8, !dbg !73
  %2 = load i8*, i8** %environment, align 8, !dbg !75
  %cmp = icmp ne i8* %2, null, !dbg !77
  br i1 %cmp, label %if.then, label %if.end, !dbg !78

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !79
  %4 = load i64, i64* %dataLen, align 8, !dbg !81
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !82
  %5 = load i8*, i8** %environment, align 8, !dbg !83
  %6 = load i64, i64* %dataLen, align 8, !dbg !84
  %sub = sub i64 100, %6, !dbg !85
  %sub2 = sub i64 %sub, 1, !dbg !86
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !87
  br label %if.end, !dbg !88

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !89, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %n, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !94, metadata !DIExpression()), !dbg !95
  %7 = load i8*, i8** %data, align 8, !dbg !96
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !98
  %cmp5 = icmp eq i32 %call4, 1, !dbg !99
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !100

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %intVariable, align 4, !dbg !101
  store i32 0, i32* %i, align 4, !dbg !103
  br label %for.cond, !dbg !105

for.cond:                                         ; preds = %for.inc, %if.then6
  %8 = load i32, i32* %i, align 4, !dbg !106
  %9 = load i32, i32* %n, align 4, !dbg !108
  %cmp7 = icmp slt i32 %8, %9, !dbg !109
  br i1 %cmp7, label %for.body, label %for.end, !dbg !110

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %intVariable, align 4, !dbg !111
  %inc = add nsw i32 %10, 1, !dbg !111
  store i32 %inc, i32* %intVariable, align 4, !dbg !111
  br label %for.inc, !dbg !113

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !114
  %inc8 = add nsw i32 %11, 1, !dbg !114
  store i32 %inc8, i32* %i, align 4, !dbg !114
  br label %for.cond, !dbg !115, !llvm.loop !116

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !119
  call void @printIntLine(i32 %12), !dbg !120
  br label %if.end9, !dbg !121

if.end9:                                          ; preds = %for.end, %if.end
  ret void, !dbg !122
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

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !123 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !126, metadata !DIExpression()), !dbg !127
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !127
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !127
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !128
  store i8* %arraydecay, i8** %data, align 8, !dbg !129
  %1 = load i8*, i8** %data, align 8, !dbg !130
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %i, metadata !132, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %n, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !137, metadata !DIExpression()), !dbg !138
  %2 = load i8*, i8** %data, align 8, !dbg !139
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !141
  %cmp = icmp eq i32 %call1, 1, !dbg !142
  br i1 %cmp, label %if.then, label %if.end, !dbg !143

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !144
  store i32 0, i32* %i, align 4, !dbg !146
  br label %for.cond, !dbg !148

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !149
  %4 = load i32, i32* %n, align 4, !dbg !151
  %cmp2 = icmp slt i32 %3, %4, !dbg !152
  br i1 %cmp2, label %for.body, label %for.end, !dbg !153

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !154
  %inc = add nsw i32 %5, 1, !dbg !154
  store i32 %inc, i32* %intVariable, align 4, !dbg !154
  br label %for.inc, !dbg !156

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !157
  %inc3 = add nsw i32 %6, 1, !dbg !157
  store i32 %inc3, i32* %i, align 4, !dbg !157
  br label %for.cond, !dbg !158, !llvm.loop !159

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !161
  call void @printIntLine(i32 %7), !dbg !162
  br label %if.end, !dbg !163

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !164
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !165 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !168, metadata !DIExpression()), !dbg !169
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !169
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !169
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !170
  store i8* %arraydecay, i8** %data, align 8, !dbg !171
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !172, metadata !DIExpression()), !dbg !174
  %1 = load i8*, i8** %data, align 8, !dbg !175
  %call = call i64 @strlen(i8* %1) #7, !dbg !176
  store i64 %call, i64* %dataLen, align 8, !dbg !174
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !177, metadata !DIExpression()), !dbg !178
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !179
  store i8* %call1, i8** %environment, align 8, !dbg !178
  %2 = load i8*, i8** %environment, align 8, !dbg !180
  %cmp = icmp ne i8* %2, null, !dbg !182
  br i1 %cmp, label %if.then, label %if.end, !dbg !183

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !184
  %4 = load i64, i64* %dataLen, align 8, !dbg !186
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !187
  %5 = load i8*, i8** %environment, align 8, !dbg !188
  %6 = load i64, i64* %dataLen, align 8, !dbg !189
  %sub = sub i64 100, %6, !dbg !190
  %sub2 = sub i64 %sub, 1, !dbg !191
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !192
  br label %if.end, !dbg !193

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !194, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %n, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !199, metadata !DIExpression()), !dbg !200
  %7 = load i8*, i8** %data, align 8, !dbg !201
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !203
  %cmp5 = icmp eq i32 %call4, 1, !dbg !204
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !205

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %n, align 4, !dbg !206
  %cmp7 = icmp slt i32 %8, 10000, !dbg !209
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !210

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %intVariable, align 4, !dbg !211
  store i32 0, i32* %i, align 4, !dbg !213
  br label %for.cond, !dbg !215

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %i, align 4, !dbg !216
  %10 = load i32, i32* %n, align 4, !dbg !218
  %cmp9 = icmp slt i32 %9, %10, !dbg !219
  br i1 %cmp9, label %for.body, label %for.end, !dbg !220

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !221
  %inc = add nsw i32 %11, 1, !dbg !221
  store i32 %inc, i32* %intVariable, align 4, !dbg !221
  br label %for.inc, !dbg !223

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !224
  %inc10 = add nsw i32 %12, 1, !dbg !224
  store i32 %inc10, i32* %i, align 4, !dbg !224
  br label %for.cond, !dbg !225, !llvm.loop !226

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !228
  call void @printIntLine(i32 %13), !dbg !229
  br label %if.end11, !dbg !230

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !231

if.end12:                                         ; preds = %if.end11, %if.end
  ret void, !dbg !232
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_01_good() #0 !dbg !233 {
entry:
  call void @goodG2B(), !dbg !234
  call void @goodB2G(), !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !237 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !240, metadata !DIExpression()), !dbg !241
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !242
  %0 = load i8*, i8** %line.addr, align 8, !dbg !243
  %cmp = icmp ne i8* %0, null, !dbg !245
  br i1 %cmp, label %if.then, label %if.end, !dbg !246

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !247
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !249
  br label %if.end, !dbg !250

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !251
  ret void, !dbg !252
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !253 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !254, metadata !DIExpression()), !dbg !255
  %0 = load i8*, i8** %line.addr, align 8, !dbg !256
  %cmp = icmp ne i8* %0, null, !dbg !258
  br i1 %cmp, label %if.then, label %if.end, !dbg !259

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !260
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !262
  br label %if.end, !dbg !263

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !265 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = load i32*, i32** %line.addr, align 8, !dbg !272
  %cmp = icmp ne i32* %0, null, !dbg !274
  br i1 %cmp, label %if.then, label %if.end, !dbg !275

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !276
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !278
  br label %if.end, !dbg !279

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !280
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !281 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !286
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !287
  ret void, !dbg !288
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !289 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !293, metadata !DIExpression()), !dbg !294
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !295
  %conv = sext i16 %0 to i32, !dbg !295
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !296
  ret void, !dbg !297
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !298 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !304
  %conv = fpext float %0 to double, !dbg !304
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !307 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !313
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !316 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !325
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !328 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !333
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !336 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !341
  %conv = sext i8 %0 to i32, !dbg !341
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !344 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !349, metadata !DIExpression()), !dbg !353
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !354
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !355
  store i32 %0, i32* %arrayidx, align 4, !dbg !356
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !357
  store i32 0, i32* %arrayidx1, align 4, !dbg !358
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !359
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !362 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !365, metadata !DIExpression()), !dbg !366
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !367
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !368
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !370 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !373, metadata !DIExpression()), !dbg !374
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !375
  %conv = zext i8 %0 to i32, !dbg !375
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !376
  ret void, !dbg !377
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !378 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !384
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !385
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !387 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !399
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !400
  %1 = load i32, i32* %intOne, align 4, !dbg !400
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !401
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !402
  %3 = load i32, i32* %intTwo, align 4, !dbg !402
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !403
  ret void, !dbg !404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !405 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !409, metadata !DIExpression()), !dbg !410
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata i64* %i, metadata !413, metadata !DIExpression()), !dbg !414
  store i64 0, i64* %i, align 8, !dbg !415
  br label %for.cond, !dbg !417

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !418
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !420
  %cmp = icmp ult i64 %0, %1, !dbg !421
  br i1 %cmp, label %for.body, label %for.end, !dbg !422

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !423
  %3 = load i64, i64* %i, align 8, !dbg !425
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !423
  %4 = load i8, i8* %arrayidx, align 1, !dbg !423
  %conv = zext i8 %4 to i32, !dbg !423
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !426
  br label %for.inc, !dbg !427

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !428
  %inc = add i64 %5, 1, !dbg !428
  store i64 %inc, i64* %i, align 8, !dbg !428
  br label %for.cond, !dbg !429, !llvm.loop !430

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !432
  ret void, !dbg !433
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !434 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !437, metadata !DIExpression()), !dbg !438
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !439, metadata !DIExpression()), !dbg !440
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !443, metadata !DIExpression()), !dbg !444
  store i64 0, i64* %numWritten, align 8, !dbg !444
  br label %while.cond, !dbg !445

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !446
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !447
  %cmp = icmp ult i64 %0, %1, !dbg !448
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !449

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !450
  %2 = load i16*, i16** %call, align 8, !dbg !450
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !450
  %4 = load i64, i64* %numWritten, align 8, !dbg !450
  %mul = mul i64 2, %4, !dbg !450
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !450
  %5 = load i8, i8* %arrayidx, align 1, !dbg !450
  %conv = sext i8 %5 to i32, !dbg !450
  %idxprom = sext i32 %conv to i64, !dbg !450
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !450
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !450
  %conv2 = zext i16 %6 to i32, !dbg !450
  %and = and i32 %conv2, 4096, !dbg !450
  %tobool = icmp ne i32 %and, 0, !dbg !450
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !451

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !452
  %7 = load i16*, i16** %call3, align 8, !dbg !452
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !452
  %9 = load i64, i64* %numWritten, align 8, !dbg !452
  %mul4 = mul i64 2, %9, !dbg !452
  %add = add i64 %mul4, 1, !dbg !452
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !452
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !452
  %conv6 = sext i8 %10 to i32, !dbg !452
  %idxprom7 = sext i32 %conv6 to i64, !dbg !452
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !452
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !452
  %conv9 = zext i16 %11 to i32, !dbg !452
  %and10 = and i32 %conv9, 4096, !dbg !452
  %tobool11 = icmp ne i32 %and10, 0, !dbg !451
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !453
  br i1 %12, label %while.body, label %while.end, !dbg !445

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !454, metadata !DIExpression()), !dbg !456
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !457
  %14 = load i64, i64* %numWritten, align 8, !dbg !458
  %mul12 = mul i64 2, %14, !dbg !459
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !457
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !460
  %15 = load i32, i32* %byte, align 4, !dbg !461
  %conv15 = trunc i32 %15 to i8, !dbg !462
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !463
  %17 = load i64, i64* %numWritten, align 8, !dbg !464
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !463
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !465
  %18 = load i64, i64* %numWritten, align 8, !dbg !466
  %inc = add i64 %18, 1, !dbg !466
  store i64 %inc, i64* %numWritten, align 8, !dbg !466
  br label %while.cond, !dbg !445, !llvm.loop !467

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !469
  ret i64 %19, !dbg !470
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !471 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !474, metadata !DIExpression()), !dbg !475
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !476, metadata !DIExpression()), !dbg !477
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !480, metadata !DIExpression()), !dbg !481
  store i64 0, i64* %numWritten, align 8, !dbg !481
  br label %while.cond, !dbg !482

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !483
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !484
  %cmp = icmp ult i64 %0, %1, !dbg !485
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !486

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !487
  %3 = load i64, i64* %numWritten, align 8, !dbg !488
  %mul = mul i64 2, %3, !dbg !489
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !487
  %4 = load i32, i32* %arrayidx, align 4, !dbg !487
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !490
  %tobool = icmp ne i32 %call, 0, !dbg !490
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !491

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !492
  %6 = load i64, i64* %numWritten, align 8, !dbg !493
  %mul1 = mul i64 2, %6, !dbg !494
  %add = add i64 %mul1, 1, !dbg !495
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !492
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !492
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !496
  %tobool4 = icmp ne i32 %call3, 0, !dbg !491
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !497
  br i1 %8, label %while.body, label %while.end, !dbg !482

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !498, metadata !DIExpression()), !dbg !500
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !501
  %10 = load i64, i64* %numWritten, align 8, !dbg !502
  %mul5 = mul i64 2, %10, !dbg !503
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !501
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !504
  %11 = load i32, i32* %byte, align 4, !dbg !505
  %conv = trunc i32 %11 to i8, !dbg !506
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !507
  %13 = load i64, i64* %numWritten, align 8, !dbg !508
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !507
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !509
  %14 = load i64, i64* %numWritten, align 8, !dbg !510
  %inc = add i64 %14, 1, !dbg !510
  store i64 %inc, i64* %numWritten, align 8, !dbg !510
  br label %while.cond, !dbg !482, !llvm.loop !511

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !513
  ret i64 %15, !dbg !514
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !515 {
entry:
  ret i32 1, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !519 {
entry:
  ret i32 0, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !521 {
entry:
  %call = call i32 @rand() #8, !dbg !522
  %rem = srem i32 %call, 2, !dbg !523
  ret i32 %rem, !dbg !524
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !525 {
entry:
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !527 {
entry:
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !529 {
entry:
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !531 {
entry:
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !533 {
entry:
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !535 {
entry:
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !537 {
entry:
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !539 {
entry:
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !541 {
entry:
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !559 {
entry:
  ret void, !dbg !560
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

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_026/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_026/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_01_bad", scope: !45, file: !45, line: 37, type: !53, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 39, type: !42)
!56 = !DILocation(line: 39, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 40, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 100)
!61 = !DILocation(line: 40, column: 10, scope: !52)
!62 = !DILocation(line: 41, column: 12, scope: !52)
!63 = !DILocation(line: 41, column: 10, scope: !52)
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 44, type: !66)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 42, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 44, column: 16, scope: !65)
!70 = !DILocation(line: 44, column: 33, scope: !65)
!71 = !DILocation(line: 44, column: 26, scope: !65)
!72 = !DILocalVariable(name: "environment", scope: !65, file: !45, line: 45, type: !42)
!73 = !DILocation(line: 45, column: 16, scope: !65)
!74 = !DILocation(line: 45, column: 30, scope: !65)
!75 = !DILocation(line: 47, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !45, line: 47, column: 13)
!77 = !DILocation(line: 47, column: 25, scope: !76)
!78 = !DILocation(line: 47, column: 13, scope: !65)
!79 = !DILocation(line: 50, column: 21, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !45, line: 48, column: 9)
!81 = !DILocation(line: 50, column: 26, scope: !80)
!82 = !DILocation(line: 50, column: 25, scope: !80)
!83 = !DILocation(line: 50, column: 35, scope: !80)
!84 = !DILocation(line: 50, column: 52, scope: !80)
!85 = !DILocation(line: 50, column: 51, scope: !80)
!86 = !DILocation(line: 50, column: 59, scope: !80)
!87 = !DILocation(line: 50, column: 13, scope: !80)
!88 = !DILocation(line: 51, column: 9, scope: !80)
!89 = !DILocalVariable(name: "i", scope: !90, file: !45, line: 54, type: !23)
!90 = distinct !DILexicalBlock(scope: !52, file: !45, line: 53, column: 5)
!91 = !DILocation(line: 54, column: 13, scope: !90)
!92 = !DILocalVariable(name: "n", scope: !90, file: !45, line: 54, type: !23)
!93 = !DILocation(line: 54, column: 16, scope: !90)
!94 = !DILocalVariable(name: "intVariable", scope: !90, file: !45, line: 54, type: !23)
!95 = !DILocation(line: 54, column: 19, scope: !90)
!96 = !DILocation(line: 55, column: 20, scope: !97)
!97 = distinct !DILexicalBlock(scope: !90, file: !45, line: 55, column: 13)
!98 = !DILocation(line: 55, column: 13, scope: !97)
!99 = !DILocation(line: 55, column: 36, scope: !97)
!100 = !DILocation(line: 55, column: 13, scope: !90)
!101 = !DILocation(line: 58, column: 25, scope: !102)
!102 = distinct !DILexicalBlock(scope: !97, file: !45, line: 56, column: 9)
!103 = !DILocation(line: 59, column: 20, scope: !104)
!104 = distinct !DILexicalBlock(scope: !102, file: !45, line: 59, column: 13)
!105 = !DILocation(line: 59, column: 18, scope: !104)
!106 = !DILocation(line: 59, column: 25, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !45, line: 59, column: 13)
!108 = !DILocation(line: 59, column: 29, scope: !107)
!109 = !DILocation(line: 59, column: 27, scope: !107)
!110 = !DILocation(line: 59, column: 13, scope: !104)
!111 = !DILocation(line: 62, column: 28, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !45, line: 60, column: 13)
!113 = !DILocation(line: 63, column: 13, scope: !112)
!114 = !DILocation(line: 59, column: 33, scope: !107)
!115 = !DILocation(line: 59, column: 13, scope: !107)
!116 = distinct !{!116, !110, !117, !118}
!117 = !DILocation(line: 63, column: 13, scope: !104)
!118 = !{!"llvm.loop.mustprogress"}
!119 = !DILocation(line: 64, column: 26, scope: !102)
!120 = !DILocation(line: 64, column: 13, scope: !102)
!121 = !DILocation(line: 65, column: 9, scope: !102)
!122 = !DILocation(line: 67, column: 1, scope: !52)
!123 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 74, type: !53, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!124 = !DILocalVariable(name: "data", scope: !123, file: !45, line: 76, type: !42)
!125 = !DILocation(line: 76, column: 12, scope: !123)
!126 = !DILocalVariable(name: "dataBuffer", scope: !123, file: !45, line: 77, type: !58)
!127 = !DILocation(line: 77, column: 10, scope: !123)
!128 = !DILocation(line: 78, column: 12, scope: !123)
!129 = !DILocation(line: 78, column: 10, scope: !123)
!130 = !DILocation(line: 80, column: 12, scope: !123)
!131 = !DILocation(line: 80, column: 5, scope: !123)
!132 = !DILocalVariable(name: "i", scope: !133, file: !45, line: 82, type: !23)
!133 = distinct !DILexicalBlock(scope: !123, file: !45, line: 81, column: 5)
!134 = !DILocation(line: 82, column: 13, scope: !133)
!135 = !DILocalVariable(name: "n", scope: !133, file: !45, line: 82, type: !23)
!136 = !DILocation(line: 82, column: 16, scope: !133)
!137 = !DILocalVariable(name: "intVariable", scope: !133, file: !45, line: 82, type: !23)
!138 = !DILocation(line: 82, column: 19, scope: !133)
!139 = !DILocation(line: 83, column: 20, scope: !140)
!140 = distinct !DILexicalBlock(scope: !133, file: !45, line: 83, column: 13)
!141 = !DILocation(line: 83, column: 13, scope: !140)
!142 = !DILocation(line: 83, column: 36, scope: !140)
!143 = !DILocation(line: 83, column: 13, scope: !133)
!144 = !DILocation(line: 86, column: 25, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !45, line: 84, column: 9)
!146 = !DILocation(line: 87, column: 20, scope: !147)
!147 = distinct !DILexicalBlock(scope: !145, file: !45, line: 87, column: 13)
!148 = !DILocation(line: 87, column: 18, scope: !147)
!149 = !DILocation(line: 87, column: 25, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !45, line: 87, column: 13)
!151 = !DILocation(line: 87, column: 29, scope: !150)
!152 = !DILocation(line: 87, column: 27, scope: !150)
!153 = !DILocation(line: 87, column: 13, scope: !147)
!154 = !DILocation(line: 90, column: 28, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !45, line: 88, column: 13)
!156 = !DILocation(line: 91, column: 13, scope: !155)
!157 = !DILocation(line: 87, column: 33, scope: !150)
!158 = !DILocation(line: 87, column: 13, scope: !150)
!159 = distinct !{!159, !153, !160, !118}
!160 = !DILocation(line: 91, column: 13, scope: !147)
!161 = !DILocation(line: 92, column: 26, scope: !145)
!162 = !DILocation(line: 92, column: 13, scope: !145)
!163 = !DILocation(line: 93, column: 9, scope: !145)
!164 = !DILocation(line: 95, column: 1, scope: !123)
!165 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 98, type: !53, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!166 = !DILocalVariable(name: "data", scope: !165, file: !45, line: 100, type: !42)
!167 = !DILocation(line: 100, column: 12, scope: !165)
!168 = !DILocalVariable(name: "dataBuffer", scope: !165, file: !45, line: 101, type: !58)
!169 = !DILocation(line: 101, column: 10, scope: !165)
!170 = !DILocation(line: 102, column: 12, scope: !165)
!171 = !DILocation(line: 102, column: 10, scope: !165)
!172 = !DILocalVariable(name: "dataLen", scope: !173, file: !45, line: 105, type: !66)
!173 = distinct !DILexicalBlock(scope: !165, file: !45, line: 103, column: 5)
!174 = !DILocation(line: 105, column: 16, scope: !173)
!175 = !DILocation(line: 105, column: 33, scope: !173)
!176 = !DILocation(line: 105, column: 26, scope: !173)
!177 = !DILocalVariable(name: "environment", scope: !173, file: !45, line: 106, type: !42)
!178 = !DILocation(line: 106, column: 16, scope: !173)
!179 = !DILocation(line: 106, column: 30, scope: !173)
!180 = !DILocation(line: 108, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !173, file: !45, line: 108, column: 13)
!182 = !DILocation(line: 108, column: 25, scope: !181)
!183 = !DILocation(line: 108, column: 13, scope: !173)
!184 = !DILocation(line: 111, column: 21, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !45, line: 109, column: 9)
!186 = !DILocation(line: 111, column: 26, scope: !185)
!187 = !DILocation(line: 111, column: 25, scope: !185)
!188 = !DILocation(line: 111, column: 35, scope: !185)
!189 = !DILocation(line: 111, column: 52, scope: !185)
!190 = !DILocation(line: 111, column: 51, scope: !185)
!191 = !DILocation(line: 111, column: 59, scope: !185)
!192 = !DILocation(line: 111, column: 13, scope: !185)
!193 = !DILocation(line: 112, column: 9, scope: !185)
!194 = !DILocalVariable(name: "i", scope: !195, file: !45, line: 115, type: !23)
!195 = distinct !DILexicalBlock(scope: !165, file: !45, line: 114, column: 5)
!196 = !DILocation(line: 115, column: 13, scope: !195)
!197 = !DILocalVariable(name: "n", scope: !195, file: !45, line: 115, type: !23)
!198 = !DILocation(line: 115, column: 16, scope: !195)
!199 = !DILocalVariable(name: "intVariable", scope: !195, file: !45, line: 115, type: !23)
!200 = !DILocation(line: 115, column: 19, scope: !195)
!201 = !DILocation(line: 116, column: 20, scope: !202)
!202 = distinct !DILexicalBlock(scope: !195, file: !45, line: 116, column: 13)
!203 = !DILocation(line: 116, column: 13, scope: !202)
!204 = !DILocation(line: 116, column: 36, scope: !202)
!205 = !DILocation(line: 116, column: 13, scope: !195)
!206 = !DILocation(line: 119, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !45, line: 119, column: 17)
!208 = distinct !DILexicalBlock(scope: !202, file: !45, line: 117, column: 9)
!209 = !DILocation(line: 119, column: 19, scope: !207)
!210 = !DILocation(line: 119, column: 17, scope: !208)
!211 = !DILocation(line: 121, column: 29, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !45, line: 120, column: 13)
!213 = !DILocation(line: 122, column: 24, scope: !214)
!214 = distinct !DILexicalBlock(scope: !212, file: !45, line: 122, column: 17)
!215 = !DILocation(line: 122, column: 22, scope: !214)
!216 = !DILocation(line: 122, column: 29, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !45, line: 122, column: 17)
!218 = !DILocation(line: 122, column: 33, scope: !217)
!219 = !DILocation(line: 122, column: 31, scope: !217)
!220 = !DILocation(line: 122, column: 17, scope: !214)
!221 = !DILocation(line: 125, column: 32, scope: !222)
!222 = distinct !DILexicalBlock(scope: !217, file: !45, line: 123, column: 17)
!223 = !DILocation(line: 126, column: 17, scope: !222)
!224 = !DILocation(line: 122, column: 37, scope: !217)
!225 = !DILocation(line: 122, column: 17, scope: !217)
!226 = distinct !{!226, !220, !227, !118}
!227 = !DILocation(line: 126, column: 17, scope: !214)
!228 = !DILocation(line: 127, column: 30, scope: !212)
!229 = !DILocation(line: 127, column: 17, scope: !212)
!230 = !DILocation(line: 128, column: 13, scope: !212)
!231 = !DILocation(line: 129, column: 9, scope: !208)
!232 = !DILocation(line: 131, column: 1, scope: !165)
!233 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_01_good", scope: !45, file: !45, line: 133, type: !53, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!234 = !DILocation(line: 135, column: 5, scope: !233)
!235 = !DILocation(line: 136, column: 5, scope: !233)
!236 = !DILocation(line: 137, column: 1, scope: !233)
!237 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !238, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !42}
!240 = !DILocalVariable(name: "line", arg: 1, scope: !237, file: !3, line: 11, type: !42)
!241 = !DILocation(line: 11, column: 25, scope: !237)
!242 = !DILocation(line: 13, column: 1, scope: !237)
!243 = !DILocation(line: 14, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !237, file: !3, line: 14, column: 8)
!245 = !DILocation(line: 14, column: 13, scope: !244)
!246 = !DILocation(line: 14, column: 8, scope: !237)
!247 = !DILocation(line: 16, column: 24, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !3, line: 15, column: 5)
!249 = !DILocation(line: 16, column: 9, scope: !248)
!250 = !DILocation(line: 17, column: 5, scope: !248)
!251 = !DILocation(line: 18, column: 5, scope: !237)
!252 = !DILocation(line: 19, column: 1, scope: !237)
!253 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !238, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!254 = !DILocalVariable(name: "line", arg: 1, scope: !253, file: !3, line: 20, type: !42)
!255 = !DILocation(line: 20, column: 29, scope: !253)
!256 = !DILocation(line: 22, column: 8, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 22, column: 8)
!258 = !DILocation(line: 22, column: 13, scope: !257)
!259 = !DILocation(line: 22, column: 8, scope: !253)
!260 = !DILocation(line: 24, column: 24, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !3, line: 23, column: 5)
!262 = !DILocation(line: 24, column: 9, scope: !261)
!263 = !DILocation(line: 25, column: 5, scope: !261)
!264 = !DILocation(line: 26, column: 1, scope: !253)
!265 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !266, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !67, line: 74, baseType: !23)
!270 = !DILocalVariable(name: "line", arg: 1, scope: !265, file: !3, line: 27, type: !268)
!271 = !DILocation(line: 27, column: 29, scope: !265)
!272 = !DILocation(line: 29, column: 8, scope: !273)
!273 = distinct !DILexicalBlock(scope: !265, file: !3, line: 29, column: 8)
!274 = !DILocation(line: 29, column: 13, scope: !273)
!275 = !DILocation(line: 29, column: 8, scope: !265)
!276 = !DILocation(line: 31, column: 27, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !3, line: 30, column: 5)
!278 = !DILocation(line: 31, column: 9, scope: !277)
!279 = !DILocation(line: 32, column: 5, scope: !277)
!280 = !DILocation(line: 33, column: 1, scope: !265)
!281 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !282, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !23}
!284 = !DILocalVariable(name: "intNumber", arg: 1, scope: !281, file: !3, line: 35, type: !23)
!285 = !DILocation(line: 35, column: 24, scope: !281)
!286 = !DILocation(line: 37, column: 20, scope: !281)
!287 = !DILocation(line: 37, column: 5, scope: !281)
!288 = !DILocation(line: 38, column: 1, scope: !281)
!289 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !290, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !292}
!292 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!293 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !289, file: !3, line: 40, type: !292)
!294 = !DILocation(line: 40, column: 28, scope: !289)
!295 = !DILocation(line: 42, column: 21, scope: !289)
!296 = !DILocation(line: 42, column: 5, scope: !289)
!297 = !DILocation(line: 43, column: 1, scope: !289)
!298 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !299, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !301}
!301 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!302 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !298, file: !3, line: 45, type: !301)
!303 = !DILocation(line: 45, column: 28, scope: !298)
!304 = !DILocation(line: 47, column: 20, scope: !298)
!305 = !DILocation(line: 47, column: 5, scope: !298)
!306 = !DILocation(line: 48, column: 1, scope: !298)
!307 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !308, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310}
!310 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!311 = !DILocalVariable(name: "longNumber", arg: 1, scope: !307, file: !3, line: 50, type: !310)
!312 = !DILocation(line: 50, column: 26, scope: !307)
!313 = !DILocation(line: 52, column: 21, scope: !307)
!314 = !DILocation(line: 52, column: 5, scope: !307)
!315 = !DILocation(line: 53, column: 1, scope: !307)
!316 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !317, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319}
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !320, line: 27, baseType: !321)
!320 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !322, line: 44, baseType: !310)
!322 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!323 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !316, file: !3, line: 55, type: !319)
!324 = !DILocation(line: 55, column: 33, scope: !316)
!325 = !DILocation(line: 57, column: 29, scope: !316)
!326 = !DILocation(line: 57, column: 5, scope: !316)
!327 = !DILocation(line: 58, column: 1, scope: !316)
!328 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !329, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !66}
!331 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !328, file: !3, line: 60, type: !66)
!332 = !DILocation(line: 60, column: 29, scope: !328)
!333 = !DILocation(line: 62, column: 21, scope: !328)
!334 = !DILocation(line: 62, column: 5, scope: !328)
!335 = !DILocation(line: 63, column: 1, scope: !328)
!336 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !337, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !43}
!339 = !DILocalVariable(name: "charHex", arg: 1, scope: !336, file: !3, line: 65, type: !43)
!340 = !DILocation(line: 65, column: 29, scope: !336)
!341 = !DILocation(line: 67, column: 22, scope: !336)
!342 = !DILocation(line: 67, column: 5, scope: !336)
!343 = !DILocation(line: 68, column: 1, scope: !336)
!344 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !345, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !269}
!347 = !DILocalVariable(name: "wideChar", arg: 1, scope: !344, file: !3, line: 70, type: !269)
!348 = !DILocation(line: 70, column: 29, scope: !344)
!349 = !DILocalVariable(name: "s", scope: !344, file: !3, line: 74, type: !350)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 64, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 2)
!353 = !DILocation(line: 74, column: 13, scope: !344)
!354 = !DILocation(line: 75, column: 16, scope: !344)
!355 = !DILocation(line: 75, column: 9, scope: !344)
!356 = !DILocation(line: 75, column: 14, scope: !344)
!357 = !DILocation(line: 76, column: 9, scope: !344)
!358 = !DILocation(line: 76, column: 14, scope: !344)
!359 = !DILocation(line: 77, column: 21, scope: !344)
!360 = !DILocation(line: 77, column: 5, scope: !344)
!361 = !DILocation(line: 78, column: 1, scope: !344)
!362 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !363, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !7}
!365 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !362, file: !3, line: 80, type: !7)
!366 = !DILocation(line: 80, column: 33, scope: !362)
!367 = !DILocation(line: 82, column: 20, scope: !362)
!368 = !DILocation(line: 82, column: 5, scope: !362)
!369 = !DILocation(line: 83, column: 1, scope: !362)
!370 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !371, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !25}
!373 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !370, file: !3, line: 85, type: !25)
!374 = !DILocation(line: 85, column: 45, scope: !370)
!375 = !DILocation(line: 87, column: 22, scope: !370)
!376 = !DILocation(line: 87, column: 5, scope: !370)
!377 = !DILocation(line: 88, column: 1, scope: !370)
!378 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !379, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381}
!381 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!382 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !378, file: !3, line: 90, type: !381)
!383 = !DILocation(line: 90, column: 29, scope: !378)
!384 = !DILocation(line: 92, column: 20, scope: !378)
!385 = !DILocation(line: 92, column: 5, scope: !378)
!386 = !DILocation(line: 93, column: 1, scope: !378)
!387 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !388, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !392, line: 100, baseType: !393)
!392 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_026/source_code")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !392, line: 96, size: 64, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !393, file: !392, line: 98, baseType: !23, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !393, file: !392, line: 99, baseType: !23, size: 32, offset: 32)
!397 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !387, file: !3, line: 95, type: !390)
!398 = !DILocation(line: 95, column: 40, scope: !387)
!399 = !DILocation(line: 97, column: 26, scope: !387)
!400 = !DILocation(line: 97, column: 47, scope: !387)
!401 = !DILocation(line: 97, column: 55, scope: !387)
!402 = !DILocation(line: 97, column: 76, scope: !387)
!403 = !DILocation(line: 97, column: 5, scope: !387)
!404 = !DILocation(line: 98, column: 1, scope: !387)
!405 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !406, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !408, !66}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!409 = !DILocalVariable(name: "bytes", arg: 1, scope: !405, file: !3, line: 100, type: !408)
!410 = !DILocation(line: 100, column: 38, scope: !405)
!411 = !DILocalVariable(name: "numBytes", arg: 2, scope: !405, file: !3, line: 100, type: !66)
!412 = !DILocation(line: 100, column: 52, scope: !405)
!413 = !DILocalVariable(name: "i", scope: !405, file: !3, line: 102, type: !66)
!414 = !DILocation(line: 102, column: 12, scope: !405)
!415 = !DILocation(line: 103, column: 12, scope: !416)
!416 = distinct !DILexicalBlock(scope: !405, file: !3, line: 103, column: 5)
!417 = !DILocation(line: 103, column: 10, scope: !416)
!418 = !DILocation(line: 103, column: 17, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !3, line: 103, column: 5)
!420 = !DILocation(line: 103, column: 21, scope: !419)
!421 = !DILocation(line: 103, column: 19, scope: !419)
!422 = !DILocation(line: 103, column: 5, scope: !416)
!423 = !DILocation(line: 105, column: 24, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !3, line: 104, column: 5)
!425 = !DILocation(line: 105, column: 30, scope: !424)
!426 = !DILocation(line: 105, column: 9, scope: !424)
!427 = !DILocation(line: 106, column: 5, scope: !424)
!428 = !DILocation(line: 103, column: 31, scope: !419)
!429 = !DILocation(line: 103, column: 5, scope: !419)
!430 = distinct !{!430, !422, !431, !118}
!431 = !DILocation(line: 106, column: 5, scope: !416)
!432 = !DILocation(line: 107, column: 5, scope: !405)
!433 = !DILocation(line: 108, column: 1, scope: !405)
!434 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !435, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!435 = !DISubroutineType(types: !436)
!436 = !{!66, !408, !66, !42}
!437 = !DILocalVariable(name: "bytes", arg: 1, scope: !434, file: !3, line: 113, type: !408)
!438 = !DILocation(line: 113, column: 39, scope: !434)
!439 = !DILocalVariable(name: "numBytes", arg: 2, scope: !434, file: !3, line: 113, type: !66)
!440 = !DILocation(line: 113, column: 53, scope: !434)
!441 = !DILocalVariable(name: "hex", arg: 3, scope: !434, file: !3, line: 113, type: !42)
!442 = !DILocation(line: 113, column: 71, scope: !434)
!443 = !DILocalVariable(name: "numWritten", scope: !434, file: !3, line: 115, type: !66)
!444 = !DILocation(line: 115, column: 12, scope: !434)
!445 = !DILocation(line: 121, column: 5, scope: !434)
!446 = !DILocation(line: 121, column: 12, scope: !434)
!447 = !DILocation(line: 121, column: 25, scope: !434)
!448 = !DILocation(line: 121, column: 23, scope: !434)
!449 = !DILocation(line: 121, column: 34, scope: !434)
!450 = !DILocation(line: 121, column: 37, scope: !434)
!451 = !DILocation(line: 121, column: 67, scope: !434)
!452 = !DILocation(line: 121, column: 70, scope: !434)
!453 = !DILocation(line: 0, scope: !434)
!454 = !DILocalVariable(name: "byte", scope: !455, file: !3, line: 123, type: !23)
!455 = distinct !DILexicalBlock(scope: !434, file: !3, line: 122, column: 5)
!456 = !DILocation(line: 123, column: 13, scope: !455)
!457 = !DILocation(line: 124, column: 17, scope: !455)
!458 = !DILocation(line: 124, column: 25, scope: !455)
!459 = !DILocation(line: 124, column: 23, scope: !455)
!460 = !DILocation(line: 124, column: 9, scope: !455)
!461 = !DILocation(line: 125, column: 45, scope: !455)
!462 = !DILocation(line: 125, column: 29, scope: !455)
!463 = !DILocation(line: 125, column: 9, scope: !455)
!464 = !DILocation(line: 125, column: 15, scope: !455)
!465 = !DILocation(line: 125, column: 27, scope: !455)
!466 = !DILocation(line: 126, column: 9, scope: !455)
!467 = distinct !{!467, !445, !468, !118}
!468 = !DILocation(line: 127, column: 5, scope: !434)
!469 = !DILocation(line: 129, column: 12, scope: !434)
!470 = !DILocation(line: 129, column: 5, scope: !434)
!471 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !472, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!472 = !DISubroutineType(types: !473)
!473 = !{!66, !408, !66, !268}
!474 = !DILocalVariable(name: "bytes", arg: 1, scope: !471, file: !3, line: 135, type: !408)
!475 = !DILocation(line: 135, column: 41, scope: !471)
!476 = !DILocalVariable(name: "numBytes", arg: 2, scope: !471, file: !3, line: 135, type: !66)
!477 = !DILocation(line: 135, column: 55, scope: !471)
!478 = !DILocalVariable(name: "hex", arg: 3, scope: !471, file: !3, line: 135, type: !268)
!479 = !DILocation(line: 135, column: 76, scope: !471)
!480 = !DILocalVariable(name: "numWritten", scope: !471, file: !3, line: 137, type: !66)
!481 = !DILocation(line: 137, column: 12, scope: !471)
!482 = !DILocation(line: 143, column: 5, scope: !471)
!483 = !DILocation(line: 143, column: 12, scope: !471)
!484 = !DILocation(line: 143, column: 25, scope: !471)
!485 = !DILocation(line: 143, column: 23, scope: !471)
!486 = !DILocation(line: 143, column: 34, scope: !471)
!487 = !DILocation(line: 143, column: 47, scope: !471)
!488 = !DILocation(line: 143, column: 55, scope: !471)
!489 = !DILocation(line: 143, column: 53, scope: !471)
!490 = !DILocation(line: 143, column: 37, scope: !471)
!491 = !DILocation(line: 143, column: 68, scope: !471)
!492 = !DILocation(line: 143, column: 81, scope: !471)
!493 = !DILocation(line: 143, column: 89, scope: !471)
!494 = !DILocation(line: 143, column: 87, scope: !471)
!495 = !DILocation(line: 143, column: 100, scope: !471)
!496 = !DILocation(line: 143, column: 71, scope: !471)
!497 = !DILocation(line: 0, scope: !471)
!498 = !DILocalVariable(name: "byte", scope: !499, file: !3, line: 145, type: !23)
!499 = distinct !DILexicalBlock(scope: !471, file: !3, line: 144, column: 5)
!500 = !DILocation(line: 145, column: 13, scope: !499)
!501 = !DILocation(line: 146, column: 18, scope: !499)
!502 = !DILocation(line: 146, column: 26, scope: !499)
!503 = !DILocation(line: 146, column: 24, scope: !499)
!504 = !DILocation(line: 146, column: 9, scope: !499)
!505 = !DILocation(line: 147, column: 45, scope: !499)
!506 = !DILocation(line: 147, column: 29, scope: !499)
!507 = !DILocation(line: 147, column: 9, scope: !499)
!508 = !DILocation(line: 147, column: 15, scope: !499)
!509 = !DILocation(line: 147, column: 27, scope: !499)
!510 = !DILocation(line: 148, column: 9, scope: !499)
!511 = distinct !{!511, !482, !512, !118}
!512 = !DILocation(line: 149, column: 5, scope: !471)
!513 = !DILocation(line: 151, column: 12, scope: !471)
!514 = !DILocation(line: 151, column: 5, scope: !471)
!515 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !516, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DISubroutineType(types: !517)
!517 = !{!23}
!518 = !DILocation(line: 158, column: 5, scope: !515)
!519 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !516, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DILocation(line: 163, column: 5, scope: !519)
!521 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !516, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DILocation(line: 168, column: 13, scope: !521)
!523 = !DILocation(line: 168, column: 20, scope: !521)
!524 = !DILocation(line: 168, column: 5, scope: !521)
!525 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DILocation(line: 187, column: 16, scope: !525)
!527 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DILocation(line: 188, column: 16, scope: !527)
!529 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DILocation(line: 189, column: 16, scope: !529)
!531 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DILocation(line: 190, column: 16, scope: !531)
!533 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DILocation(line: 191, column: 16, scope: !533)
!535 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocation(line: 192, column: 16, scope: !535)
!537 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 193, column: 16, scope: !537)
!539 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 194, column: 16, scope: !539)
!541 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 195, column: 16, scope: !541)
!543 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 198, column: 15, scope: !543)
!545 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 199, column: 15, scope: !545)
!547 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 200, column: 15, scope: !547)
!549 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 201, column: 15, scope: !549)
!551 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 202, column: 15, scope: !551)
!553 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 203, column: 15, scope: !553)
!555 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 204, column: 15, scope: !555)
!557 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 205, column: 15, scope: !557)
!559 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 206, column: 15, scope: !559)
