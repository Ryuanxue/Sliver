; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
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
define dso_local void @badSink(i8* %data) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %i, metadata !57, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %n, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load i8*, i8** %data.addr, align 8, !dbg !64
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !66
  %cmp = icmp eq i32 %call, 1, !dbg !67
  br i1 %cmp, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !69
  store i32 0, i32* %i, align 4, !dbg !71
  br label %for.cond, !dbg !73

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !74
  %2 = load i32, i32* %n, align 4, !dbg !76
  %cmp1 = icmp slt i32 %1, %2, !dbg !77
  br i1 %cmp1, label %for.body, label %for.end, !dbg !78

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !79
  %inc = add nsw i32 %3, 1, !dbg !79
  store i32 %inc, i32* %intVariable, align 4, !dbg !79
  br label %for.inc, !dbg !81

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !82
  %inc2 = add nsw i32 %4, 1, !dbg !82
  store i32 %inc2, i32* %i, align 4, !dbg !82
  br label %for.cond, !dbg !83, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !87
  call void @printIntLine(i32 %5), !dbg !88
  br label %if.end, !dbg !89

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !90
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_44_bad() #0 !dbg !91 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !96, metadata !DIExpression()), !dbg !98
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !98
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
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !116
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
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !129
  br label %if.end, !dbg !130

if.end:                                           ; preds = %if.then, %entry
  %7 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !131
  %8 = load i8*, i8** %data, align 8, !dbg !132
  call void %7(i8* %8), !dbg !131
  ret void, !dbg !133
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
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !134 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %i, metadata !137, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %n, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = load i8*, i8** %data.addr, align 8, !dbg !144
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !146
  %cmp = icmp eq i32 %call, 1, !dbg !147
  br i1 %cmp, label %if.then, label %if.end, !dbg !148

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !149
  store i32 0, i32* %i, align 4, !dbg !151
  br label %for.cond, !dbg !153

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !154
  %2 = load i32, i32* %n, align 4, !dbg !156
  %cmp1 = icmp slt i32 %1, %2, !dbg !157
  br i1 %cmp1, label %for.body, label %for.end, !dbg !158

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !159
  %inc = add nsw i32 %3, 1, !dbg !159
  store i32 %inc, i32* %intVariable, align 4, !dbg !159
  br label %for.inc, !dbg !161

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !162
  %inc2 = add nsw i32 %4, 1, !dbg !162
  store i32 %inc2, i32* %i, align 4, !dbg !162
  br label %for.cond, !dbg !163, !llvm.loop !164

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !166
  call void @printIntLine(i32 %5), !dbg !167
  br label %if.end, !dbg !168

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !169
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !170 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !173, metadata !DIExpression()), !dbg !174
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !174
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !176
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !176
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !177
  store i8* %arraydecay, i8** %data, align 8, !dbg !178
  %1 = load i8*, i8** %data, align 8, !dbg !179
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !180
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !181
  %3 = load i8*, i8** %data, align 8, !dbg !182
  call void %2(i8* %3), !dbg !181
  ret void, !dbg !183
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !184 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %i, metadata !187, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i32* %n, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !192, metadata !DIExpression()), !dbg !193
  %0 = load i8*, i8** %data.addr, align 8, !dbg !194
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !196
  %cmp = icmp eq i32 %call, 1, !dbg !197
  br i1 %cmp, label %if.then, label %if.end5, !dbg !198

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !199
  %cmp1 = icmp slt i32 %1, 10000, !dbg !202
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !203

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !204
  store i32 0, i32* %i, align 4, !dbg !206
  br label %for.cond, !dbg !208

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !209
  %3 = load i32, i32* %n, align 4, !dbg !211
  %cmp3 = icmp slt i32 %2, %3, !dbg !212
  br i1 %cmp3, label %for.body, label %for.end, !dbg !213

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !214
  %inc = add nsw i32 %4, 1, !dbg !214
  store i32 %inc, i32* %intVariable, align 4, !dbg !214
  br label %for.inc, !dbg !216

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !217
  %inc4 = add nsw i32 %5, 1, !dbg !217
  store i32 %inc4, i32* %i, align 4, !dbg !217
  br label %for.cond, !dbg !218, !llvm.loop !219

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !221
  call void @printIntLine(i32 %6), !dbg !222
  br label %if.end, !dbg !223

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !224

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !226 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !229, metadata !DIExpression()), !dbg !230
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !230
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !231, metadata !DIExpression()), !dbg !232
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !232
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !232
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !233
  store i8* %arraydecay, i8** %data, align 8, !dbg !234
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !235, metadata !DIExpression()), !dbg !237
  %1 = load i8*, i8** %data, align 8, !dbg !238
  %call = call i64 @strlen(i8* %1) #8, !dbg !239
  store i64 %call, i64* %dataLen, align 8, !dbg !237
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !240, metadata !DIExpression()), !dbg !241
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !242
  store i8* %call1, i8** %environment, align 8, !dbg !241
  %2 = load i8*, i8** %environment, align 8, !dbg !243
  %cmp = icmp ne i8* %2, null, !dbg !245
  br i1 %cmp, label %if.then, label %if.end, !dbg !246

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !247
  %4 = load i64, i64* %dataLen, align 8, !dbg !249
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !250
  %5 = load i8*, i8** %environment, align 8, !dbg !251
  %6 = load i64, i64* %dataLen, align 8, !dbg !252
  %sub = sub i64 100, %6, !dbg !253
  %sub2 = sub i64 %sub, 1, !dbg !254
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !255
  br label %if.end, !dbg !256

if.end:                                           ; preds = %if.then, %entry
  %7 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !257
  %8 = load i8*, i8** %data, align 8, !dbg !258
  call void %7(i8* %8), !dbg !257
  ret void, !dbg !259
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_44_good() #0 !dbg !260 {
entry:
  call void @goodG2B(), !dbg !261
  call void @goodB2G(), !dbg !262
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !264 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !265, metadata !DIExpression()), !dbg !266
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !267
  %0 = load i8*, i8** %line.addr, align 8, !dbg !268
  %cmp = icmp ne i8* %0, null, !dbg !270
  br i1 %cmp, label %if.then, label %if.end, !dbg !271

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !272
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !274
  br label %if.end, !dbg !275

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !276
  ret void, !dbg !277
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !278 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !279, metadata !DIExpression()), !dbg !280
  %0 = load i8*, i8** %line.addr, align 8, !dbg !281
  %cmp = icmp ne i8* %0, null, !dbg !283
  br i1 %cmp, label %if.then, label %if.end, !dbg !284

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !285
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !287
  br label %if.end, !dbg !288

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !290 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !295, metadata !DIExpression()), !dbg !296
  %0 = load i32*, i32** %line.addr, align 8, !dbg !297
  %cmp = icmp ne i32* %0, null, !dbg !299
  br i1 %cmp, label %if.then, label %if.end, !dbg !300

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !301
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !303
  br label %if.end, !dbg !304

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !305
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !306 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !311
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !314 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !318, metadata !DIExpression()), !dbg !319
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !320
  %conv = sext i16 %0 to i32, !dbg !320
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !321
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !323 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !327, metadata !DIExpression()), !dbg !328
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !329
  %conv = fpext float %0 to double, !dbg !329
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !330
  ret void, !dbg !331
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !332 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !338
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !341 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !350
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !353 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !358
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !359
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !361 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !366
  %conv = sext i8 %0 to i32, !dbg !366
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !367
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !369 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !374, metadata !DIExpression()), !dbg !378
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !379
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !380
  store i32 %0, i32* %arrayidx, align 4, !dbg !381
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !382
  store i32 0, i32* %arrayidx1, align 4, !dbg !383
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !384
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !385
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !387 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !393
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !395 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !400
  %conv = zext i8 %0 to i32, !dbg !400
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !401
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !403 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !407, metadata !DIExpression()), !dbg !408
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !409
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !410
  ret void, !dbg !411
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !412 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !424
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !425
  %1 = load i32, i32* %intOne, align 4, !dbg !425
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !426
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !427
  %3 = load i32, i32* %intTwo, align 4, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !430 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !434, metadata !DIExpression()), !dbg !435
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.declare(metadata i64* %i, metadata !438, metadata !DIExpression()), !dbg !439
  store i64 0, i64* %i, align 8, !dbg !440
  br label %for.cond, !dbg !442

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !443
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !445
  %cmp = icmp ult i64 %0, %1, !dbg !446
  br i1 %cmp, label %for.body, label %for.end, !dbg !447

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !448
  %3 = load i64, i64* %i, align 8, !dbg !450
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !448
  %4 = load i8, i8* %arrayidx, align 1, !dbg !448
  %conv = zext i8 %4 to i32, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !451
  br label %for.inc, !dbg !452

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !453
  %inc = add i64 %5, 1, !dbg !453
  store i64 %inc, i64* %i, align 8, !dbg !453
  br label %for.cond, !dbg !454, !llvm.loop !455

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !457
  ret void, !dbg !458
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !459 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !462, metadata !DIExpression()), !dbg !463
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !464, metadata !DIExpression()), !dbg !465
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !468, metadata !DIExpression()), !dbg !469
  store i64 0, i64* %numWritten, align 8, !dbg !469
  br label %while.cond, !dbg !470

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !471
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !472
  %cmp = icmp ult i64 %0, %1, !dbg !473
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !474

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !475
  %2 = load i16*, i16** %call, align 8, !dbg !475
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !475
  %4 = load i64, i64* %numWritten, align 8, !dbg !475
  %mul = mul i64 2, %4, !dbg !475
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !475
  %5 = load i8, i8* %arrayidx, align 1, !dbg !475
  %conv = sext i8 %5 to i32, !dbg !475
  %idxprom = sext i32 %conv to i64, !dbg !475
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !475
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !475
  %conv2 = zext i16 %6 to i32, !dbg !475
  %and = and i32 %conv2, 4096, !dbg !475
  %tobool = icmp ne i32 %and, 0, !dbg !475
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !476

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !477
  %7 = load i16*, i16** %call3, align 8, !dbg !477
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !477
  %9 = load i64, i64* %numWritten, align 8, !dbg !477
  %mul4 = mul i64 2, %9, !dbg !477
  %add = add i64 %mul4, 1, !dbg !477
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !477
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !477
  %conv6 = sext i8 %10 to i32, !dbg !477
  %idxprom7 = sext i32 %conv6 to i64, !dbg !477
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !477
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !477
  %conv9 = zext i16 %11 to i32, !dbg !477
  %and10 = and i32 %conv9, 4096, !dbg !477
  %tobool11 = icmp ne i32 %and10, 0, !dbg !476
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !478
  br i1 %12, label %while.body, label %while.end, !dbg !470

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !479, metadata !DIExpression()), !dbg !481
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !482
  %14 = load i64, i64* %numWritten, align 8, !dbg !483
  %mul12 = mul i64 2, %14, !dbg !484
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !482
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !485
  %15 = load i32, i32* %byte, align 4, !dbg !486
  %conv15 = trunc i32 %15 to i8, !dbg !487
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !488
  %17 = load i64, i64* %numWritten, align 8, !dbg !489
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !488
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !490
  %18 = load i64, i64* %numWritten, align 8, !dbg !491
  %inc = add i64 %18, 1, !dbg !491
  store i64 %inc, i64* %numWritten, align 8, !dbg !491
  br label %while.cond, !dbg !470, !llvm.loop !492

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !494
  ret i64 %19, !dbg !495
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !496 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !499, metadata !DIExpression()), !dbg !500
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !501, metadata !DIExpression()), !dbg !502
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !503, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !505, metadata !DIExpression()), !dbg !506
  store i64 0, i64* %numWritten, align 8, !dbg !506
  br label %while.cond, !dbg !507

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !508
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !509
  %cmp = icmp ult i64 %0, %1, !dbg !510
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !511

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !512
  %3 = load i64, i64* %numWritten, align 8, !dbg !513
  %mul = mul i64 2, %3, !dbg !514
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !512
  %4 = load i32, i32* %arrayidx, align 4, !dbg !512
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !515
  %tobool = icmp ne i32 %call, 0, !dbg !515
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !516

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !517
  %6 = load i64, i64* %numWritten, align 8, !dbg !518
  %mul1 = mul i64 2, %6, !dbg !519
  %add = add i64 %mul1, 1, !dbg !520
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !517
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !517
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !521
  %tobool4 = icmp ne i32 %call3, 0, !dbg !516
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !522
  br i1 %8, label %while.body, label %while.end, !dbg !507

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !523, metadata !DIExpression()), !dbg !525
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !526
  %10 = load i64, i64* %numWritten, align 8, !dbg !527
  %mul5 = mul i64 2, %10, !dbg !528
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !526
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !529
  %11 = load i32, i32* %byte, align 4, !dbg !530
  %conv = trunc i32 %11 to i8, !dbg !531
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !532
  %13 = load i64, i64* %numWritten, align 8, !dbg !533
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !532
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !534
  %14 = load i64, i64* %numWritten, align 8, !dbg !535
  %inc = add i64 %14, 1, !dbg !535
  store i64 %inc, i64* %numWritten, align 8, !dbg !535
  br label %while.cond, !dbg !507, !llvm.loop !536

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !538
  ret i64 %15, !dbg !539
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !540 {
entry:
  ret i32 1, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !544 {
entry:
  ret i32 0, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !546 {
entry:
  %call = call i32 @rand() #7, !dbg !547
  %rem = srem i32 %call, 2, !dbg !548
  ret i32 %rem, !dbg !549
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !584 {
entry:
  ret void, !dbg !585
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

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_053/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_053/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSink", scope: !45, file: !45, line: 37, type: !53, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !42}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 37, type: !42)
!56 = !DILocation(line: 37, column: 21, scope: !52)
!57 = !DILocalVariable(name: "i", scope: !58, file: !45, line: 40, type: !23)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 39, column: 5)
!59 = !DILocation(line: 40, column: 13, scope: !58)
!60 = !DILocalVariable(name: "n", scope: !58, file: !45, line: 40, type: !23)
!61 = !DILocation(line: 40, column: 16, scope: !58)
!62 = !DILocalVariable(name: "intVariable", scope: !58, file: !45, line: 40, type: !23)
!63 = !DILocation(line: 40, column: 19, scope: !58)
!64 = !DILocation(line: 41, column: 20, scope: !65)
!65 = distinct !DILexicalBlock(scope: !58, file: !45, line: 41, column: 13)
!66 = !DILocation(line: 41, column: 13, scope: !65)
!67 = !DILocation(line: 41, column: 36, scope: !65)
!68 = !DILocation(line: 41, column: 13, scope: !58)
!69 = !DILocation(line: 44, column: 25, scope: !70)
!70 = distinct !DILexicalBlock(scope: !65, file: !45, line: 42, column: 9)
!71 = !DILocation(line: 45, column: 20, scope: !72)
!72 = distinct !DILexicalBlock(scope: !70, file: !45, line: 45, column: 13)
!73 = !DILocation(line: 45, column: 18, scope: !72)
!74 = !DILocation(line: 45, column: 25, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !45, line: 45, column: 13)
!76 = !DILocation(line: 45, column: 29, scope: !75)
!77 = !DILocation(line: 45, column: 27, scope: !75)
!78 = !DILocation(line: 45, column: 13, scope: !72)
!79 = !DILocation(line: 48, column: 28, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !45, line: 46, column: 13)
!81 = !DILocation(line: 49, column: 13, scope: !80)
!82 = !DILocation(line: 45, column: 33, scope: !75)
!83 = !DILocation(line: 45, column: 13, scope: !75)
!84 = distinct !{!84, !78, !85, !86}
!85 = !DILocation(line: 49, column: 13, scope: !72)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !DILocation(line: 50, column: 26, scope: !70)
!88 = !DILocation(line: 50, column: 13, scope: !70)
!89 = !DILocation(line: 51, column: 9, scope: !70)
!90 = !DILocation(line: 53, column: 1, scope: !52)
!91 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_44_bad", scope: !45, file: !45, line: 55, type: !92, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!92 = !DISubroutineType(types: !93)
!93 = !{null}
!94 = !DILocalVariable(name: "data", scope: !91, file: !45, line: 57, type: !42)
!95 = !DILocation(line: 57, column: 12, scope: !91)
!96 = !DILocalVariable(name: "funcPtr", scope: !91, file: !45, line: 59, type: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!98 = !DILocation(line: 59, column: 12, scope: !91)
!99 = !DILocalVariable(name: "dataBuffer", scope: !91, file: !45, line: 60, type: !100)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 100)
!103 = !DILocation(line: 60, column: 10, scope: !91)
!104 = !DILocation(line: 61, column: 12, scope: !91)
!105 = !DILocation(line: 61, column: 10, scope: !91)
!106 = !DILocalVariable(name: "dataLen", scope: !107, file: !45, line: 64, type: !108)
!107 = distinct !DILexicalBlock(scope: !91, file: !45, line: 62, column: 5)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DILocation(line: 64, column: 16, scope: !107)
!112 = !DILocation(line: 64, column: 33, scope: !107)
!113 = !DILocation(line: 64, column: 26, scope: !107)
!114 = !DILocalVariable(name: "environment", scope: !107, file: !45, line: 65, type: !42)
!115 = !DILocation(line: 65, column: 16, scope: !107)
!116 = !DILocation(line: 65, column: 30, scope: !107)
!117 = !DILocation(line: 67, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !107, file: !45, line: 67, column: 13)
!119 = !DILocation(line: 67, column: 25, scope: !118)
!120 = !DILocation(line: 67, column: 13, scope: !107)
!121 = !DILocation(line: 70, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !45, line: 68, column: 9)
!123 = !DILocation(line: 70, column: 26, scope: !122)
!124 = !DILocation(line: 70, column: 25, scope: !122)
!125 = !DILocation(line: 70, column: 35, scope: !122)
!126 = !DILocation(line: 70, column: 52, scope: !122)
!127 = !DILocation(line: 70, column: 51, scope: !122)
!128 = !DILocation(line: 70, column: 59, scope: !122)
!129 = !DILocation(line: 70, column: 13, scope: !122)
!130 = !DILocation(line: 71, column: 9, scope: !122)
!131 = !DILocation(line: 74, column: 5, scope: !91)
!132 = !DILocation(line: 74, column: 13, scope: !91)
!133 = !DILocation(line: 75, column: 1, scope: !91)
!134 = distinct !DISubprogram(name: "goodG2BSink", scope: !45, file: !45, line: 82, type: !53, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!135 = !DILocalVariable(name: "data", arg: 1, scope: !134, file: !45, line: 82, type: !42)
!136 = !DILocation(line: 82, column: 25, scope: !134)
!137 = !DILocalVariable(name: "i", scope: !138, file: !45, line: 85, type: !23)
!138 = distinct !DILexicalBlock(scope: !134, file: !45, line: 84, column: 5)
!139 = !DILocation(line: 85, column: 13, scope: !138)
!140 = !DILocalVariable(name: "n", scope: !138, file: !45, line: 85, type: !23)
!141 = !DILocation(line: 85, column: 16, scope: !138)
!142 = !DILocalVariable(name: "intVariable", scope: !138, file: !45, line: 85, type: !23)
!143 = !DILocation(line: 85, column: 19, scope: !138)
!144 = !DILocation(line: 86, column: 20, scope: !145)
!145 = distinct !DILexicalBlock(scope: !138, file: !45, line: 86, column: 13)
!146 = !DILocation(line: 86, column: 13, scope: !145)
!147 = !DILocation(line: 86, column: 36, scope: !145)
!148 = !DILocation(line: 86, column: 13, scope: !138)
!149 = !DILocation(line: 89, column: 25, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !45, line: 87, column: 9)
!151 = !DILocation(line: 90, column: 20, scope: !152)
!152 = distinct !DILexicalBlock(scope: !150, file: !45, line: 90, column: 13)
!153 = !DILocation(line: 90, column: 18, scope: !152)
!154 = !DILocation(line: 90, column: 25, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !45, line: 90, column: 13)
!156 = !DILocation(line: 90, column: 29, scope: !155)
!157 = !DILocation(line: 90, column: 27, scope: !155)
!158 = !DILocation(line: 90, column: 13, scope: !152)
!159 = !DILocation(line: 93, column: 28, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !45, line: 91, column: 13)
!161 = !DILocation(line: 94, column: 13, scope: !160)
!162 = !DILocation(line: 90, column: 33, scope: !155)
!163 = !DILocation(line: 90, column: 13, scope: !155)
!164 = distinct !{!164, !158, !165, !86}
!165 = !DILocation(line: 94, column: 13, scope: !152)
!166 = !DILocation(line: 95, column: 26, scope: !150)
!167 = !DILocation(line: 95, column: 13, scope: !150)
!168 = !DILocation(line: 96, column: 9, scope: !150)
!169 = !DILocation(line: 98, column: 1, scope: !134)
!170 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 100, type: !92, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!171 = !DILocalVariable(name: "data", scope: !170, file: !45, line: 102, type: !42)
!172 = !DILocation(line: 102, column: 12, scope: !170)
!173 = !DILocalVariable(name: "funcPtr", scope: !170, file: !45, line: 103, type: !97)
!174 = !DILocation(line: 103, column: 12, scope: !170)
!175 = !DILocalVariable(name: "dataBuffer", scope: !170, file: !45, line: 104, type: !100)
!176 = !DILocation(line: 104, column: 10, scope: !170)
!177 = !DILocation(line: 105, column: 12, scope: !170)
!178 = !DILocation(line: 105, column: 10, scope: !170)
!179 = !DILocation(line: 107, column: 12, scope: !170)
!180 = !DILocation(line: 107, column: 5, scope: !170)
!181 = !DILocation(line: 108, column: 5, scope: !170)
!182 = !DILocation(line: 108, column: 13, scope: !170)
!183 = !DILocation(line: 109, column: 1, scope: !170)
!184 = distinct !DISubprogram(name: "goodB2GSink", scope: !45, file: !45, line: 112, type: !53, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!185 = !DILocalVariable(name: "data", arg: 1, scope: !184, file: !45, line: 112, type: !42)
!186 = !DILocation(line: 112, column: 25, scope: !184)
!187 = !DILocalVariable(name: "i", scope: !188, file: !45, line: 115, type: !23)
!188 = distinct !DILexicalBlock(scope: !184, file: !45, line: 114, column: 5)
!189 = !DILocation(line: 115, column: 13, scope: !188)
!190 = !DILocalVariable(name: "n", scope: !188, file: !45, line: 115, type: !23)
!191 = !DILocation(line: 115, column: 16, scope: !188)
!192 = !DILocalVariable(name: "intVariable", scope: !188, file: !45, line: 115, type: !23)
!193 = !DILocation(line: 115, column: 19, scope: !188)
!194 = !DILocation(line: 116, column: 20, scope: !195)
!195 = distinct !DILexicalBlock(scope: !188, file: !45, line: 116, column: 13)
!196 = !DILocation(line: 116, column: 13, scope: !195)
!197 = !DILocation(line: 116, column: 36, scope: !195)
!198 = !DILocation(line: 116, column: 13, scope: !188)
!199 = !DILocation(line: 119, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !45, line: 119, column: 17)
!201 = distinct !DILexicalBlock(scope: !195, file: !45, line: 117, column: 9)
!202 = !DILocation(line: 119, column: 19, scope: !200)
!203 = !DILocation(line: 119, column: 17, scope: !201)
!204 = !DILocation(line: 121, column: 29, scope: !205)
!205 = distinct !DILexicalBlock(scope: !200, file: !45, line: 120, column: 13)
!206 = !DILocation(line: 122, column: 24, scope: !207)
!207 = distinct !DILexicalBlock(scope: !205, file: !45, line: 122, column: 17)
!208 = !DILocation(line: 122, column: 22, scope: !207)
!209 = !DILocation(line: 122, column: 29, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !45, line: 122, column: 17)
!211 = !DILocation(line: 122, column: 33, scope: !210)
!212 = !DILocation(line: 122, column: 31, scope: !210)
!213 = !DILocation(line: 122, column: 17, scope: !207)
!214 = !DILocation(line: 125, column: 32, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !45, line: 123, column: 17)
!216 = !DILocation(line: 126, column: 17, scope: !215)
!217 = !DILocation(line: 122, column: 37, scope: !210)
!218 = !DILocation(line: 122, column: 17, scope: !210)
!219 = distinct !{!219, !213, !220, !86}
!220 = !DILocation(line: 126, column: 17, scope: !207)
!221 = !DILocation(line: 127, column: 30, scope: !205)
!222 = !DILocation(line: 127, column: 17, scope: !205)
!223 = !DILocation(line: 128, column: 13, scope: !205)
!224 = !DILocation(line: 129, column: 9, scope: !201)
!225 = !DILocation(line: 131, column: 1, scope: !184)
!226 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 133, type: !92, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!227 = !DILocalVariable(name: "data", scope: !226, file: !45, line: 135, type: !42)
!228 = !DILocation(line: 135, column: 12, scope: !226)
!229 = !DILocalVariable(name: "funcPtr", scope: !226, file: !45, line: 136, type: !97)
!230 = !DILocation(line: 136, column: 12, scope: !226)
!231 = !DILocalVariable(name: "dataBuffer", scope: !226, file: !45, line: 137, type: !100)
!232 = !DILocation(line: 137, column: 10, scope: !226)
!233 = !DILocation(line: 138, column: 12, scope: !226)
!234 = !DILocation(line: 138, column: 10, scope: !226)
!235 = !DILocalVariable(name: "dataLen", scope: !236, file: !45, line: 141, type: !108)
!236 = distinct !DILexicalBlock(scope: !226, file: !45, line: 139, column: 5)
!237 = !DILocation(line: 141, column: 16, scope: !236)
!238 = !DILocation(line: 141, column: 33, scope: !236)
!239 = !DILocation(line: 141, column: 26, scope: !236)
!240 = !DILocalVariable(name: "environment", scope: !236, file: !45, line: 142, type: !42)
!241 = !DILocation(line: 142, column: 16, scope: !236)
!242 = !DILocation(line: 142, column: 30, scope: !236)
!243 = !DILocation(line: 144, column: 13, scope: !244)
!244 = distinct !DILexicalBlock(scope: !236, file: !45, line: 144, column: 13)
!245 = !DILocation(line: 144, column: 25, scope: !244)
!246 = !DILocation(line: 144, column: 13, scope: !236)
!247 = !DILocation(line: 147, column: 21, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !45, line: 145, column: 9)
!249 = !DILocation(line: 147, column: 26, scope: !248)
!250 = !DILocation(line: 147, column: 25, scope: !248)
!251 = !DILocation(line: 147, column: 35, scope: !248)
!252 = !DILocation(line: 147, column: 52, scope: !248)
!253 = !DILocation(line: 147, column: 51, scope: !248)
!254 = !DILocation(line: 147, column: 59, scope: !248)
!255 = !DILocation(line: 147, column: 13, scope: !248)
!256 = !DILocation(line: 148, column: 9, scope: !248)
!257 = !DILocation(line: 150, column: 5, scope: !226)
!258 = !DILocation(line: 150, column: 13, scope: !226)
!259 = !DILocation(line: 151, column: 1, scope: !226)
!260 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_44_good", scope: !45, file: !45, line: 153, type: !92, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!261 = !DILocation(line: 155, column: 5, scope: !260)
!262 = !DILocation(line: 156, column: 5, scope: !260)
!263 = !DILocation(line: 157, column: 1, scope: !260)
!264 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !53, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!265 = !DILocalVariable(name: "line", arg: 1, scope: !264, file: !3, line: 11, type: !42)
!266 = !DILocation(line: 11, column: 25, scope: !264)
!267 = !DILocation(line: 13, column: 1, scope: !264)
!268 = !DILocation(line: 14, column: 8, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !3, line: 14, column: 8)
!270 = !DILocation(line: 14, column: 13, scope: !269)
!271 = !DILocation(line: 14, column: 8, scope: !264)
!272 = !DILocation(line: 16, column: 24, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !3, line: 15, column: 5)
!274 = !DILocation(line: 16, column: 9, scope: !273)
!275 = !DILocation(line: 17, column: 5, scope: !273)
!276 = !DILocation(line: 18, column: 5, scope: !264)
!277 = !DILocation(line: 19, column: 1, scope: !264)
!278 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !53, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!279 = !DILocalVariable(name: "line", arg: 1, scope: !278, file: !3, line: 20, type: !42)
!280 = !DILocation(line: 20, column: 29, scope: !278)
!281 = !DILocation(line: 22, column: 8, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !3, line: 22, column: 8)
!283 = !DILocation(line: 22, column: 13, scope: !282)
!284 = !DILocation(line: 22, column: 8, scope: !278)
!285 = !DILocation(line: 24, column: 24, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !3, line: 23, column: 5)
!287 = !DILocation(line: 24, column: 9, scope: !286)
!288 = !DILocation(line: 25, column: 5, scope: !286)
!289 = !DILocation(line: 26, column: 1, scope: !278)
!290 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !291, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !109, line: 74, baseType: !23)
!295 = !DILocalVariable(name: "line", arg: 1, scope: !290, file: !3, line: 27, type: !293)
!296 = !DILocation(line: 27, column: 29, scope: !290)
!297 = !DILocation(line: 29, column: 8, scope: !298)
!298 = distinct !DILexicalBlock(scope: !290, file: !3, line: 29, column: 8)
!299 = !DILocation(line: 29, column: 13, scope: !298)
!300 = !DILocation(line: 29, column: 8, scope: !290)
!301 = !DILocation(line: 31, column: 27, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !3, line: 30, column: 5)
!303 = !DILocation(line: 31, column: 9, scope: !302)
!304 = !DILocation(line: 32, column: 5, scope: !302)
!305 = !DILocation(line: 33, column: 1, scope: !290)
!306 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !307, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !23}
!309 = !DILocalVariable(name: "intNumber", arg: 1, scope: !306, file: !3, line: 35, type: !23)
!310 = !DILocation(line: 35, column: 24, scope: !306)
!311 = !DILocation(line: 37, column: 20, scope: !306)
!312 = !DILocation(line: 37, column: 5, scope: !306)
!313 = !DILocation(line: 38, column: 1, scope: !306)
!314 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !315, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317}
!317 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!318 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !314, file: !3, line: 40, type: !317)
!319 = !DILocation(line: 40, column: 28, scope: !314)
!320 = !DILocation(line: 42, column: 21, scope: !314)
!321 = !DILocation(line: 42, column: 5, scope: !314)
!322 = !DILocation(line: 43, column: 1, scope: !314)
!323 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !324, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !326}
!326 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!327 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !323, file: !3, line: 45, type: !326)
!328 = !DILocation(line: 45, column: 28, scope: !323)
!329 = !DILocation(line: 47, column: 20, scope: !323)
!330 = !DILocation(line: 47, column: 5, scope: !323)
!331 = !DILocation(line: 48, column: 1, scope: !323)
!332 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !333, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !335}
!335 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!336 = !DILocalVariable(name: "longNumber", arg: 1, scope: !332, file: !3, line: 50, type: !335)
!337 = !DILocation(line: 50, column: 26, scope: !332)
!338 = !DILocation(line: 52, column: 21, scope: !332)
!339 = !DILocation(line: 52, column: 5, scope: !332)
!340 = !DILocation(line: 53, column: 1, scope: !332)
!341 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !342, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !344}
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !345, line: 27, baseType: !346)
!345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !347, line: 44, baseType: !335)
!347 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!348 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !341, file: !3, line: 55, type: !344)
!349 = !DILocation(line: 55, column: 33, scope: !341)
!350 = !DILocation(line: 57, column: 29, scope: !341)
!351 = !DILocation(line: 57, column: 5, scope: !341)
!352 = !DILocation(line: 58, column: 1, scope: !341)
!353 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !354, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !108}
!356 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !353, file: !3, line: 60, type: !108)
!357 = !DILocation(line: 60, column: 29, scope: !353)
!358 = !DILocation(line: 62, column: 21, scope: !353)
!359 = !DILocation(line: 62, column: 5, scope: !353)
!360 = !DILocation(line: 63, column: 1, scope: !353)
!361 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !362, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !43}
!364 = !DILocalVariable(name: "charHex", arg: 1, scope: !361, file: !3, line: 65, type: !43)
!365 = !DILocation(line: 65, column: 29, scope: !361)
!366 = !DILocation(line: 67, column: 22, scope: !361)
!367 = !DILocation(line: 67, column: 5, scope: !361)
!368 = !DILocation(line: 68, column: 1, scope: !361)
!369 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !370, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !294}
!372 = !DILocalVariable(name: "wideChar", arg: 1, scope: !369, file: !3, line: 70, type: !294)
!373 = !DILocation(line: 70, column: 29, scope: !369)
!374 = !DILocalVariable(name: "s", scope: !369, file: !3, line: 74, type: !375)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 64, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 2)
!378 = !DILocation(line: 74, column: 13, scope: !369)
!379 = !DILocation(line: 75, column: 16, scope: !369)
!380 = !DILocation(line: 75, column: 9, scope: !369)
!381 = !DILocation(line: 75, column: 14, scope: !369)
!382 = !DILocation(line: 76, column: 9, scope: !369)
!383 = !DILocation(line: 76, column: 14, scope: !369)
!384 = !DILocation(line: 77, column: 21, scope: !369)
!385 = !DILocation(line: 77, column: 5, scope: !369)
!386 = !DILocation(line: 78, column: 1, scope: !369)
!387 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !388, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !7}
!390 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !387, file: !3, line: 80, type: !7)
!391 = !DILocation(line: 80, column: 33, scope: !387)
!392 = !DILocation(line: 82, column: 20, scope: !387)
!393 = !DILocation(line: 82, column: 5, scope: !387)
!394 = !DILocation(line: 83, column: 1, scope: !387)
!395 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !396, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !25}
!398 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !395, file: !3, line: 85, type: !25)
!399 = !DILocation(line: 85, column: 45, scope: !395)
!400 = !DILocation(line: 87, column: 22, scope: !395)
!401 = !DILocation(line: 87, column: 5, scope: !395)
!402 = !DILocation(line: 88, column: 1, scope: !395)
!403 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !404, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !406}
!406 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!407 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !403, file: !3, line: 90, type: !406)
!408 = !DILocation(line: 90, column: 29, scope: !403)
!409 = !DILocation(line: 92, column: 20, scope: !403)
!410 = !DILocation(line: 92, column: 5, scope: !403)
!411 = !DILocation(line: 93, column: 1, scope: !403)
!412 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !413, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !417, line: 100, baseType: !418)
!417 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_053/source_code")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !417, line: 96, size: 64, elements: !419)
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !418, file: !417, line: 98, baseType: !23, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !418, file: !417, line: 99, baseType: !23, size: 32, offset: 32)
!422 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !412, file: !3, line: 95, type: !415)
!423 = !DILocation(line: 95, column: 40, scope: !412)
!424 = !DILocation(line: 97, column: 26, scope: !412)
!425 = !DILocation(line: 97, column: 47, scope: !412)
!426 = !DILocation(line: 97, column: 55, scope: !412)
!427 = !DILocation(line: 97, column: 76, scope: !412)
!428 = !DILocation(line: 97, column: 5, scope: !412)
!429 = !DILocation(line: 98, column: 1, scope: !412)
!430 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !431, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433, !108}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!434 = !DILocalVariable(name: "bytes", arg: 1, scope: !430, file: !3, line: 100, type: !433)
!435 = !DILocation(line: 100, column: 38, scope: !430)
!436 = !DILocalVariable(name: "numBytes", arg: 2, scope: !430, file: !3, line: 100, type: !108)
!437 = !DILocation(line: 100, column: 52, scope: !430)
!438 = !DILocalVariable(name: "i", scope: !430, file: !3, line: 102, type: !108)
!439 = !DILocation(line: 102, column: 12, scope: !430)
!440 = !DILocation(line: 103, column: 12, scope: !441)
!441 = distinct !DILexicalBlock(scope: !430, file: !3, line: 103, column: 5)
!442 = !DILocation(line: 103, column: 10, scope: !441)
!443 = !DILocation(line: 103, column: 17, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !3, line: 103, column: 5)
!445 = !DILocation(line: 103, column: 21, scope: !444)
!446 = !DILocation(line: 103, column: 19, scope: !444)
!447 = !DILocation(line: 103, column: 5, scope: !441)
!448 = !DILocation(line: 105, column: 24, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !3, line: 104, column: 5)
!450 = !DILocation(line: 105, column: 30, scope: !449)
!451 = !DILocation(line: 105, column: 9, scope: !449)
!452 = !DILocation(line: 106, column: 5, scope: !449)
!453 = !DILocation(line: 103, column: 31, scope: !444)
!454 = !DILocation(line: 103, column: 5, scope: !444)
!455 = distinct !{!455, !447, !456, !86}
!456 = !DILocation(line: 106, column: 5, scope: !441)
!457 = !DILocation(line: 107, column: 5, scope: !430)
!458 = !DILocation(line: 108, column: 1, scope: !430)
!459 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !460, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DISubroutineType(types: !461)
!461 = !{!108, !433, !108, !42}
!462 = !DILocalVariable(name: "bytes", arg: 1, scope: !459, file: !3, line: 113, type: !433)
!463 = !DILocation(line: 113, column: 39, scope: !459)
!464 = !DILocalVariable(name: "numBytes", arg: 2, scope: !459, file: !3, line: 113, type: !108)
!465 = !DILocation(line: 113, column: 53, scope: !459)
!466 = !DILocalVariable(name: "hex", arg: 3, scope: !459, file: !3, line: 113, type: !42)
!467 = !DILocation(line: 113, column: 71, scope: !459)
!468 = !DILocalVariable(name: "numWritten", scope: !459, file: !3, line: 115, type: !108)
!469 = !DILocation(line: 115, column: 12, scope: !459)
!470 = !DILocation(line: 121, column: 5, scope: !459)
!471 = !DILocation(line: 121, column: 12, scope: !459)
!472 = !DILocation(line: 121, column: 25, scope: !459)
!473 = !DILocation(line: 121, column: 23, scope: !459)
!474 = !DILocation(line: 121, column: 34, scope: !459)
!475 = !DILocation(line: 121, column: 37, scope: !459)
!476 = !DILocation(line: 121, column: 67, scope: !459)
!477 = !DILocation(line: 121, column: 70, scope: !459)
!478 = !DILocation(line: 0, scope: !459)
!479 = !DILocalVariable(name: "byte", scope: !480, file: !3, line: 123, type: !23)
!480 = distinct !DILexicalBlock(scope: !459, file: !3, line: 122, column: 5)
!481 = !DILocation(line: 123, column: 13, scope: !480)
!482 = !DILocation(line: 124, column: 17, scope: !480)
!483 = !DILocation(line: 124, column: 25, scope: !480)
!484 = !DILocation(line: 124, column: 23, scope: !480)
!485 = !DILocation(line: 124, column: 9, scope: !480)
!486 = !DILocation(line: 125, column: 45, scope: !480)
!487 = !DILocation(line: 125, column: 29, scope: !480)
!488 = !DILocation(line: 125, column: 9, scope: !480)
!489 = !DILocation(line: 125, column: 15, scope: !480)
!490 = !DILocation(line: 125, column: 27, scope: !480)
!491 = !DILocation(line: 126, column: 9, scope: !480)
!492 = distinct !{!492, !470, !493, !86}
!493 = !DILocation(line: 127, column: 5, scope: !459)
!494 = !DILocation(line: 129, column: 12, scope: !459)
!495 = !DILocation(line: 129, column: 5, scope: !459)
!496 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !497, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!497 = !DISubroutineType(types: !498)
!498 = !{!108, !433, !108, !293}
!499 = !DILocalVariable(name: "bytes", arg: 1, scope: !496, file: !3, line: 135, type: !433)
!500 = !DILocation(line: 135, column: 41, scope: !496)
!501 = !DILocalVariable(name: "numBytes", arg: 2, scope: !496, file: !3, line: 135, type: !108)
!502 = !DILocation(line: 135, column: 55, scope: !496)
!503 = !DILocalVariable(name: "hex", arg: 3, scope: !496, file: !3, line: 135, type: !293)
!504 = !DILocation(line: 135, column: 76, scope: !496)
!505 = !DILocalVariable(name: "numWritten", scope: !496, file: !3, line: 137, type: !108)
!506 = !DILocation(line: 137, column: 12, scope: !496)
!507 = !DILocation(line: 143, column: 5, scope: !496)
!508 = !DILocation(line: 143, column: 12, scope: !496)
!509 = !DILocation(line: 143, column: 25, scope: !496)
!510 = !DILocation(line: 143, column: 23, scope: !496)
!511 = !DILocation(line: 143, column: 34, scope: !496)
!512 = !DILocation(line: 143, column: 47, scope: !496)
!513 = !DILocation(line: 143, column: 55, scope: !496)
!514 = !DILocation(line: 143, column: 53, scope: !496)
!515 = !DILocation(line: 143, column: 37, scope: !496)
!516 = !DILocation(line: 143, column: 68, scope: !496)
!517 = !DILocation(line: 143, column: 81, scope: !496)
!518 = !DILocation(line: 143, column: 89, scope: !496)
!519 = !DILocation(line: 143, column: 87, scope: !496)
!520 = !DILocation(line: 143, column: 100, scope: !496)
!521 = !DILocation(line: 143, column: 71, scope: !496)
!522 = !DILocation(line: 0, scope: !496)
!523 = !DILocalVariable(name: "byte", scope: !524, file: !3, line: 145, type: !23)
!524 = distinct !DILexicalBlock(scope: !496, file: !3, line: 144, column: 5)
!525 = !DILocation(line: 145, column: 13, scope: !524)
!526 = !DILocation(line: 146, column: 18, scope: !524)
!527 = !DILocation(line: 146, column: 26, scope: !524)
!528 = !DILocation(line: 146, column: 24, scope: !524)
!529 = !DILocation(line: 146, column: 9, scope: !524)
!530 = !DILocation(line: 147, column: 45, scope: !524)
!531 = !DILocation(line: 147, column: 29, scope: !524)
!532 = !DILocation(line: 147, column: 9, scope: !524)
!533 = !DILocation(line: 147, column: 15, scope: !524)
!534 = !DILocation(line: 147, column: 27, scope: !524)
!535 = !DILocation(line: 148, column: 9, scope: !524)
!536 = distinct !{!536, !507, !537, !86}
!537 = !DILocation(line: 149, column: 5, scope: !496)
!538 = !DILocation(line: 151, column: 12, scope: !496)
!539 = !DILocation(line: 151, column: 5, scope: !496)
!540 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !541, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DISubroutineType(types: !542)
!542 = !{!23}
!543 = !DILocation(line: 158, column: 5, scope: !540)
!544 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !541, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DILocation(line: 163, column: 5, scope: !544)
!546 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !541, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 168, column: 13, scope: !546)
!548 = !DILocation(line: 168, column: 20, scope: !546)
!549 = !DILocation(line: 168, column: 5, scope: !546)
!550 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !92, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 187, column: 16, scope: !550)
!552 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !92, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 188, column: 16, scope: !552)
!554 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !92, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 189, column: 16, scope: !554)
!556 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !92, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 190, column: 16, scope: !556)
!558 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !92, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 191, column: 16, scope: !558)
!560 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !92, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 192, column: 16, scope: !560)
!562 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !92, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DILocation(line: 193, column: 16, scope: !562)
!564 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !92, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 194, column: 16, scope: !564)
!566 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !92, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 195, column: 16, scope: !566)
!568 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !92, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 198, column: 15, scope: !568)
!570 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !92, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 199, column: 15, scope: !570)
!572 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !92, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 200, column: 15, scope: !572)
!574 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !92, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DILocation(line: 201, column: 15, scope: !574)
!576 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !92, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 202, column: 15, scope: !576)
!578 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !92, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 203, column: 15, scope: !578)
!580 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !92, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 204, column: 15, scope: !580)
!582 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !92, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DILocation(line: 205, column: 15, scope: !582)
!584 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !92, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DILocation(line: 206, column: 15, scope: !584)
