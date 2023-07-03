; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_61_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !59, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  %1 = load i8*, i8** %data, align 8, !dbg !66
  %call = call i8* @CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource(i8* %1), !dbg !67
  store i8* %call, i8** %data, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %i, metadata !69, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %n, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !74, metadata !DIExpression()), !dbg !75
  %2 = load i8*, i8** %data, align 8, !dbg !76
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !78
  %cmp = icmp eq i32 %call1, 1, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !81
  store i32 0, i32* %i, align 4, !dbg !83
  br label %for.cond, !dbg !85

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !86
  %4 = load i32, i32* %n, align 4, !dbg !88
  %cmp2 = icmp slt i32 %3, %4, !dbg !89
  br i1 %cmp2, label %for.body, label %for.end, !dbg !90

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !91
  %inc = add nsw i32 %5, 1, !dbg !91
  store i32 %inc, i32* %intVariable, align 4, !dbg !91
  br label %for.inc, !dbg !93

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !94
  %inc3 = add nsw i32 %6, 1, !dbg !94
  store i32 %inc3, i32* %i, align 4, !dbg !94
  br label %for.cond, !dbg !95, !llvm.loop !96

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !99
  call void @printIntLine(i32 %7), !dbg !100
  br label %if.end, !dbg !101

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !102
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !103 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !106, metadata !DIExpression()), !dbg !107
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !107
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !107
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !108
  store i8* %arraydecay, i8** %data, align 8, !dbg !109
  %1 = load i8*, i8** %data, align 8, !dbg !110
  %call = call i8* @CWE606_Unchecked_Loop_Condition__char_environment_61b_goodG2BSource(i8* %1), !dbg !111
  store i8* %call, i8** %data, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %i, metadata !113, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %n, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !118, metadata !DIExpression()), !dbg !119
  %2 = load i8*, i8** %data, align 8, !dbg !120
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !122
  %cmp = icmp eq i32 %call1, 1, !dbg !123
  br i1 %cmp, label %if.then, label %if.end, !dbg !124

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !125
  store i32 0, i32* %i, align 4, !dbg !127
  br label %for.cond, !dbg !129

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !130
  %4 = load i32, i32* %n, align 4, !dbg !132
  %cmp2 = icmp slt i32 %3, %4, !dbg !133
  br i1 %cmp2, label %for.body, label %for.end, !dbg !134

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !135
  %inc = add nsw i32 %5, 1, !dbg !135
  store i32 %inc, i32* %intVariable, align 4, !dbg !135
  br label %for.inc, !dbg !137

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !138
  %inc3 = add nsw i32 %6, 1, !dbg !138
  store i32 %inc3, i32* %i, align 4, !dbg !138
  br label %for.cond, !dbg !139, !llvm.loop !140

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !142
  call void @printIntLine(i32 %7), !dbg !143
  br label %if.end, !dbg !144

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !145
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !146 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !150
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !150
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !151
  store i8* %arraydecay, i8** %data, align 8, !dbg !152
  %1 = load i8*, i8** %data, align 8, !dbg !153
  %call = call i8* @CWE606_Unchecked_Loop_Condition__char_environment_61b_goodB2GSource(i8* %1), !dbg !154
  store i8* %call, i8** %data, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata i32* %i, metadata !156, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %n, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !161, metadata !DIExpression()), !dbg !162
  %2 = load i8*, i8** %data, align 8, !dbg !163
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !165
  %cmp = icmp eq i32 %call1, 1, !dbg !166
  br i1 %cmp, label %if.then, label %if.end6, !dbg !167

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !168
  %cmp2 = icmp slt i32 %3, 10000, !dbg !171
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !172

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !173
  store i32 0, i32* %i, align 4, !dbg !175
  br label %for.cond, !dbg !177

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, i32* %i, align 4, !dbg !178
  %5 = load i32, i32* %n, align 4, !dbg !180
  %cmp4 = icmp slt i32 %4, %5, !dbg !181
  br i1 %cmp4, label %for.body, label %for.end, !dbg !182

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !183
  %inc = add nsw i32 %6, 1, !dbg !183
  store i32 %inc, i32* %intVariable, align 4, !dbg !183
  br label %for.inc, !dbg !185

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !186
  %inc5 = add nsw i32 %7, 1, !dbg !186
  store i32 %inc5, i32* %i, align 4, !dbg !186
  br label %for.cond, !dbg !187, !llvm.loop !188

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !190
  call void @printIntLine(i32 %8), !dbg !191
  br label %if.end, !dbg !192

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end6, !dbg !193

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !194
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_61_good() #0 !dbg !195 {
entry:
  call void @goodG2B(), !dbg !196
  call void @goodB2G(), !dbg !197
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource(i8* %data) #0 !dbg !199 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !204, metadata !DIExpression()), !dbg !209
  %0 = load i8*, i8** %data.addr, align 8, !dbg !210
  %call = call i64 @strlen(i8* %0) #8, !dbg !211
  store i64 %call, i64* %dataLen, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !212, metadata !DIExpression()), !dbg !213
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !214
  store i8* %call1, i8** %environment, align 8, !dbg !213
  %1 = load i8*, i8** %environment, align 8, !dbg !215
  %cmp = icmp ne i8* %1, null, !dbg !217
  br i1 %cmp, label %if.then, label %if.end, !dbg !218

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !219
  %3 = load i64, i64* %dataLen, align 8, !dbg !221
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !222
  %4 = load i8*, i8** %environment, align 8, !dbg !223
  %5 = load i64, i64* %dataLen, align 8, !dbg !224
  %sub = sub i64 100, %5, !dbg !225
  %sub2 = sub i64 %sub, 1, !dbg !226
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #7, !dbg !227
  br label %if.end, !dbg !228

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !229
  ret i8* %6, !dbg !230
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_environment_61b_goodG2BSource(i8* %data) #0 !dbg !231 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = load i8*, i8** %data.addr, align 8, !dbg !234
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !235
  %1 = load i8*, i8** %data.addr, align 8, !dbg !236
  ret i8* %1, !dbg !237
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_environment_61b_goodB2GSource(i8* %data) #0 !dbg !238 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !241, metadata !DIExpression()), !dbg !243
  %0 = load i8*, i8** %data.addr, align 8, !dbg !244
  %call = call i64 @strlen(i8* %0) #8, !dbg !245
  store i64 %call, i64* %dataLen, align 8, !dbg !243
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !246, metadata !DIExpression()), !dbg !247
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !248
  store i8* %call1, i8** %environment, align 8, !dbg !247
  %1 = load i8*, i8** %environment, align 8, !dbg !249
  %cmp = icmp ne i8* %1, null, !dbg !251
  br i1 %cmp, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !253
  %3 = load i64, i64* %dataLen, align 8, !dbg !255
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !256
  %4 = load i8*, i8** %environment, align 8, !dbg !257
  %5 = load i64, i64* %dataLen, align 8, !dbg !258
  %sub = sub i64 100, %5, !dbg !259
  %sub2 = sub i64 %sub, 1, !dbg !260
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %4, i64 %sub2) #7, !dbg !261
  br label %if.end, !dbg !262

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %data.addr, align 8, !dbg !263
  ret i8* %6, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !265 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !268, metadata !DIExpression()), !dbg !269
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !270
  %0 = load i8*, i8** %line.addr, align 8, !dbg !271
  %cmp = icmp ne i8* %0, null, !dbg !273
  br i1 %cmp, label %if.then, label %if.end, !dbg !274

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !275
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !277
  br label %if.end, !dbg !278

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !279
  ret void, !dbg !280
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !281 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !282, metadata !DIExpression()), !dbg !283
  %0 = load i8*, i8** %line.addr, align 8, !dbg !284
  %cmp = icmp ne i8* %0, null, !dbg !286
  br i1 %cmp, label %if.then, label %if.end, !dbg !287

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !288
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !290
  br label %if.end, !dbg !291

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !292
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !293 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = load i32*, i32** %line.addr, align 8, !dbg !300
  %cmp = icmp ne i32* %0, null, !dbg !302
  br i1 %cmp, label %if.then, label %if.end, !dbg !303

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !304
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !306
  br label %if.end, !dbg !307

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !308
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !309 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !314
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !317 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !323
  %conv = sext i16 %0 to i32, !dbg !323
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !324
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !326 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !332
  %conv = fpext float %0 to double, !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !333
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !335 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !341
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !344 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !356 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !361
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.13, i64 0, i64 0), i64 %0), !dbg !362
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !364 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !369
  %conv = sext i8 %0 to i32, !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !372 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !377, metadata !DIExpression()), !dbg !381
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !382
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !383
  store i32 %0, i32* %arrayidx, align 4, !dbg !384
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !385
  store i32 0, i32* %arrayidx1, align 4, !dbg !386
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !390 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !393, metadata !DIExpression()), !dbg !394
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !395
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !396
  ret void, !dbg !397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !398 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !403
  %conv = zext i8 %0 to i32, !dbg !403
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !404
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !406 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !415 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !427
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !428
  %1 = load i32, i32* %intOne, align 4, !dbg !428
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !429
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !430
  %3 = load i32, i32* %intTwo, align 4, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !431
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !433 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !437, metadata !DIExpression()), !dbg !438
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !439, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.declare(metadata i64* %i, metadata !441, metadata !DIExpression()), !dbg !442
  store i64 0, i64* %i, align 8, !dbg !443
  br label %for.cond, !dbg !445

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !446
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !448
  %cmp = icmp ult i64 %0, %1, !dbg !449
  br i1 %cmp, label %for.body, label %for.end, !dbg !450

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !451
  %3 = load i64, i64* %i, align 8, !dbg !453
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !451
  %4 = load i8, i8* %arrayidx, align 1, !dbg !451
  %conv = zext i8 %4 to i32, !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !454
  br label %for.inc, !dbg !455

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !456
  %inc = add i64 %5, 1, !dbg !456
  store i64 %inc, i64* %i, align 8, !dbg !456
  br label %for.cond, !dbg !457, !llvm.loop !458

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !460
  ret void, !dbg !461
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !462 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !465, metadata !DIExpression()), !dbg !466
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !467, metadata !DIExpression()), !dbg !468
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !471, metadata !DIExpression()), !dbg !472
  store i64 0, i64* %numWritten, align 8, !dbg !472
  br label %while.cond, !dbg !473

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !474
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !475
  %cmp = icmp ult i64 %0, %1, !dbg !476
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !477

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !478
  %2 = load i16*, i16** %call, align 8, !dbg !478
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !478
  %4 = load i64, i64* %numWritten, align 8, !dbg !478
  %mul = mul i64 2, %4, !dbg !478
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !478
  %5 = load i8, i8* %arrayidx, align 1, !dbg !478
  %conv = sext i8 %5 to i32, !dbg !478
  %idxprom = sext i32 %conv to i64, !dbg !478
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !478
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !478
  %conv2 = zext i16 %6 to i32, !dbg !478
  %and = and i32 %conv2, 4096, !dbg !478
  %tobool = icmp ne i32 %and, 0, !dbg !478
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !479

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !480
  %7 = load i16*, i16** %call3, align 8, !dbg !480
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !480
  %9 = load i64, i64* %numWritten, align 8, !dbg !480
  %mul4 = mul i64 2, %9, !dbg !480
  %add = add i64 %mul4, 1, !dbg !480
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !480
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !480
  %conv6 = sext i8 %10 to i32, !dbg !480
  %idxprom7 = sext i32 %conv6 to i64, !dbg !480
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !480
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !480
  %conv9 = zext i16 %11 to i32, !dbg !480
  %and10 = and i32 %conv9, 4096, !dbg !480
  %tobool11 = icmp ne i32 %and10, 0, !dbg !479
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !481
  br i1 %12, label %while.body, label %while.end, !dbg !473

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !482, metadata !DIExpression()), !dbg !484
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !485
  %14 = load i64, i64* %numWritten, align 8, !dbg !486
  %mul12 = mul i64 2, %14, !dbg !487
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !485
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !488
  %15 = load i32, i32* %byte, align 4, !dbg !489
  %conv15 = trunc i32 %15 to i8, !dbg !490
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !491
  %17 = load i64, i64* %numWritten, align 8, !dbg !492
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !491
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !493
  %18 = load i64, i64* %numWritten, align 8, !dbg !494
  %inc = add i64 %18, 1, !dbg !494
  store i64 %inc, i64* %numWritten, align 8, !dbg !494
  br label %while.cond, !dbg !473, !llvm.loop !495

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !497
  ret i64 %19, !dbg !498
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !499 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !502, metadata !DIExpression()), !dbg !503
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !504, metadata !DIExpression()), !dbg !505
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !506, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !508, metadata !DIExpression()), !dbg !509
  store i64 0, i64* %numWritten, align 8, !dbg !509
  br label %while.cond, !dbg !510

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !511
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !512
  %cmp = icmp ult i64 %0, %1, !dbg !513
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !514

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !515
  %3 = load i64, i64* %numWritten, align 8, !dbg !516
  %mul = mul i64 2, %3, !dbg !517
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !515
  %4 = load i32, i32* %arrayidx, align 4, !dbg !515
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !518
  %tobool = icmp ne i32 %call, 0, !dbg !518
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !519

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !520
  %6 = load i64, i64* %numWritten, align 8, !dbg !521
  %mul1 = mul i64 2, %6, !dbg !522
  %add = add i64 %mul1, 1, !dbg !523
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !520
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !520
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !524
  %tobool4 = icmp ne i32 %call3, 0, !dbg !519
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !525
  br i1 %8, label %while.body, label %while.end, !dbg !510

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !526, metadata !DIExpression()), !dbg !528
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !529
  %10 = load i64, i64* %numWritten, align 8, !dbg !530
  %mul5 = mul i64 2, %10, !dbg !531
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !529
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !532
  %11 = load i32, i32* %byte, align 4, !dbg !533
  %conv = trunc i32 %11 to i8, !dbg !534
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !535
  %13 = load i64, i64* %numWritten, align 8, !dbg !536
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !535
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !537
  %14 = load i64, i64* %numWritten, align 8, !dbg !538
  %inc = add i64 %14, 1, !dbg !538
  store i64 %inc, i64* %numWritten, align 8, !dbg !538
  br label %while.cond, !dbg !510, !llvm.loop !539

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !541
  ret i64 %15, !dbg !542
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !543 {
entry:
  ret i32 1, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !547 {
entry:
  ret i32 0, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !549 {
entry:
  %call = call i32 @rand() #7, !dbg !550
  %rem = srem i32 %call, 2, !dbg !551
  ret i32 %rem, !dbg !552
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !47, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_059/source_code")
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
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_61a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_059/source_code")
!46 = !{}
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !49, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_059/source_code")
!49 = !{!22}
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_61_bad", scope: !45, file: !45, line: 39, type: !55, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!66 = !DILocation(line: 44, column: 76, scope: !54)
!67 = !DILocation(line: 44, column: 12, scope: !54)
!68 = !DILocation(line: 44, column: 10, scope: !54)
!69 = !DILocalVariable(name: "i", scope: !70, file: !45, line: 46, type: !23)
!70 = distinct !DILexicalBlock(scope: !54, file: !45, line: 45, column: 5)
!71 = !DILocation(line: 46, column: 13, scope: !70)
!72 = !DILocalVariable(name: "n", scope: !70, file: !45, line: 46, type: !23)
!73 = !DILocation(line: 46, column: 16, scope: !70)
!74 = !DILocalVariable(name: "intVariable", scope: !70, file: !45, line: 46, type: !23)
!75 = !DILocation(line: 46, column: 19, scope: !70)
!76 = !DILocation(line: 47, column: 20, scope: !77)
!77 = distinct !DILexicalBlock(scope: !70, file: !45, line: 47, column: 13)
!78 = !DILocation(line: 47, column: 13, scope: !77)
!79 = !DILocation(line: 47, column: 36, scope: !77)
!80 = !DILocation(line: 47, column: 13, scope: !70)
!81 = !DILocation(line: 50, column: 25, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !45, line: 48, column: 9)
!83 = !DILocation(line: 51, column: 20, scope: !84)
!84 = distinct !DILexicalBlock(scope: !82, file: !45, line: 51, column: 13)
!85 = !DILocation(line: 51, column: 18, scope: !84)
!86 = !DILocation(line: 51, column: 25, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !45, line: 51, column: 13)
!88 = !DILocation(line: 51, column: 29, scope: !87)
!89 = !DILocation(line: 51, column: 27, scope: !87)
!90 = !DILocation(line: 51, column: 13, scope: !84)
!91 = !DILocation(line: 54, column: 28, scope: !92)
!92 = distinct !DILexicalBlock(scope: !87, file: !45, line: 52, column: 13)
!93 = !DILocation(line: 55, column: 13, scope: !92)
!94 = !DILocation(line: 51, column: 33, scope: !87)
!95 = !DILocation(line: 51, column: 13, scope: !87)
!96 = distinct !{!96, !90, !97, !98}
!97 = !DILocation(line: 55, column: 13, scope: !84)
!98 = !{!"llvm.loop.mustprogress"}
!99 = !DILocation(line: 56, column: 26, scope: !82)
!100 = !DILocation(line: 56, column: 13, scope: !82)
!101 = !DILocation(line: 57, column: 9, scope: !82)
!102 = !DILocation(line: 59, column: 1, scope: !54)
!103 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 67, type: !55, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!104 = !DILocalVariable(name: "data", scope: !103, file: !45, line: 69, type: !42)
!105 = !DILocation(line: 69, column: 12, scope: !103)
!106 = !DILocalVariable(name: "dataBuffer", scope: !103, file: !45, line: 70, type: !60)
!107 = !DILocation(line: 70, column: 10, scope: !103)
!108 = !DILocation(line: 71, column: 12, scope: !103)
!109 = !DILocation(line: 71, column: 10, scope: !103)
!110 = !DILocation(line: 72, column: 80, scope: !103)
!111 = !DILocation(line: 72, column: 12, scope: !103)
!112 = !DILocation(line: 72, column: 10, scope: !103)
!113 = !DILocalVariable(name: "i", scope: !114, file: !45, line: 74, type: !23)
!114 = distinct !DILexicalBlock(scope: !103, file: !45, line: 73, column: 5)
!115 = !DILocation(line: 74, column: 13, scope: !114)
!116 = !DILocalVariable(name: "n", scope: !114, file: !45, line: 74, type: !23)
!117 = !DILocation(line: 74, column: 16, scope: !114)
!118 = !DILocalVariable(name: "intVariable", scope: !114, file: !45, line: 74, type: !23)
!119 = !DILocation(line: 74, column: 19, scope: !114)
!120 = !DILocation(line: 75, column: 20, scope: !121)
!121 = distinct !DILexicalBlock(scope: !114, file: !45, line: 75, column: 13)
!122 = !DILocation(line: 75, column: 13, scope: !121)
!123 = !DILocation(line: 75, column: 36, scope: !121)
!124 = !DILocation(line: 75, column: 13, scope: !114)
!125 = !DILocation(line: 78, column: 25, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !45, line: 76, column: 9)
!127 = !DILocation(line: 79, column: 20, scope: !128)
!128 = distinct !DILexicalBlock(scope: !126, file: !45, line: 79, column: 13)
!129 = !DILocation(line: 79, column: 18, scope: !128)
!130 = !DILocation(line: 79, column: 25, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !45, line: 79, column: 13)
!132 = !DILocation(line: 79, column: 29, scope: !131)
!133 = !DILocation(line: 79, column: 27, scope: !131)
!134 = !DILocation(line: 79, column: 13, scope: !128)
!135 = !DILocation(line: 82, column: 28, scope: !136)
!136 = distinct !DILexicalBlock(scope: !131, file: !45, line: 80, column: 13)
!137 = !DILocation(line: 83, column: 13, scope: !136)
!138 = !DILocation(line: 79, column: 33, scope: !131)
!139 = !DILocation(line: 79, column: 13, scope: !131)
!140 = distinct !{!140, !134, !141, !98}
!141 = !DILocation(line: 83, column: 13, scope: !128)
!142 = !DILocation(line: 84, column: 26, scope: !126)
!143 = !DILocation(line: 84, column: 13, scope: !126)
!144 = !DILocation(line: 85, column: 9, scope: !126)
!145 = !DILocation(line: 87, column: 1, scope: !103)
!146 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 91, type: !55, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!147 = !DILocalVariable(name: "data", scope: !146, file: !45, line: 93, type: !42)
!148 = !DILocation(line: 93, column: 12, scope: !146)
!149 = !DILocalVariable(name: "dataBuffer", scope: !146, file: !45, line: 94, type: !60)
!150 = !DILocation(line: 94, column: 10, scope: !146)
!151 = !DILocation(line: 95, column: 12, scope: !146)
!152 = !DILocation(line: 95, column: 10, scope: !146)
!153 = !DILocation(line: 96, column: 80, scope: !146)
!154 = !DILocation(line: 96, column: 12, scope: !146)
!155 = !DILocation(line: 96, column: 10, scope: !146)
!156 = !DILocalVariable(name: "i", scope: !157, file: !45, line: 98, type: !23)
!157 = distinct !DILexicalBlock(scope: !146, file: !45, line: 97, column: 5)
!158 = !DILocation(line: 98, column: 13, scope: !157)
!159 = !DILocalVariable(name: "n", scope: !157, file: !45, line: 98, type: !23)
!160 = !DILocation(line: 98, column: 16, scope: !157)
!161 = !DILocalVariable(name: "intVariable", scope: !157, file: !45, line: 98, type: !23)
!162 = !DILocation(line: 98, column: 19, scope: !157)
!163 = !DILocation(line: 99, column: 20, scope: !164)
!164 = distinct !DILexicalBlock(scope: !157, file: !45, line: 99, column: 13)
!165 = !DILocation(line: 99, column: 13, scope: !164)
!166 = !DILocation(line: 99, column: 36, scope: !164)
!167 = !DILocation(line: 99, column: 13, scope: !157)
!168 = !DILocation(line: 102, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !45, line: 102, column: 17)
!170 = distinct !DILexicalBlock(scope: !164, file: !45, line: 100, column: 9)
!171 = !DILocation(line: 102, column: 19, scope: !169)
!172 = !DILocation(line: 102, column: 17, scope: !170)
!173 = !DILocation(line: 104, column: 29, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !45, line: 103, column: 13)
!175 = !DILocation(line: 105, column: 24, scope: !176)
!176 = distinct !DILexicalBlock(scope: !174, file: !45, line: 105, column: 17)
!177 = !DILocation(line: 105, column: 22, scope: !176)
!178 = !DILocation(line: 105, column: 29, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !45, line: 105, column: 17)
!180 = !DILocation(line: 105, column: 33, scope: !179)
!181 = !DILocation(line: 105, column: 31, scope: !179)
!182 = !DILocation(line: 105, column: 17, scope: !176)
!183 = !DILocation(line: 108, column: 32, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !45, line: 106, column: 17)
!185 = !DILocation(line: 109, column: 17, scope: !184)
!186 = !DILocation(line: 105, column: 37, scope: !179)
!187 = !DILocation(line: 105, column: 17, scope: !179)
!188 = distinct !{!188, !182, !189, !98}
!189 = !DILocation(line: 109, column: 17, scope: !176)
!190 = !DILocation(line: 110, column: 30, scope: !174)
!191 = !DILocation(line: 110, column: 17, scope: !174)
!192 = !DILocation(line: 111, column: 13, scope: !174)
!193 = !DILocation(line: 112, column: 9, scope: !170)
!194 = !DILocation(line: 114, column: 1, scope: !146)
!195 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_61_good", scope: !45, file: !45, line: 116, type: !55, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!196 = !DILocation(line: 118, column: 5, scope: !195)
!197 = !DILocation(line: 119, column: 5, scope: !195)
!198 = !DILocation(line: 120, column: 1, scope: !195)
!199 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource", scope: !48, file: !48, line: 36, type: !200, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!200 = !DISubroutineType(types: !201)
!201 = !{!42, !42}
!202 = !DILocalVariable(name: "data", arg: 1, scope: !199, file: !48, line: 36, type: !42)
!203 = !DILocation(line: 36, column: 79, scope: !199)
!204 = !DILocalVariable(name: "dataLen", scope: !205, file: !48, line: 40, type: !206)
!205 = distinct !DILexicalBlock(scope: !199, file: !48, line: 38, column: 5)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !207, line: 46, baseType: !208)
!207 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!208 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!209 = !DILocation(line: 40, column: 16, scope: !205)
!210 = !DILocation(line: 40, column: 33, scope: !205)
!211 = !DILocation(line: 40, column: 26, scope: !205)
!212 = !DILocalVariable(name: "environment", scope: !205, file: !48, line: 41, type: !42)
!213 = !DILocation(line: 41, column: 16, scope: !205)
!214 = !DILocation(line: 41, column: 30, scope: !205)
!215 = !DILocation(line: 43, column: 13, scope: !216)
!216 = distinct !DILexicalBlock(scope: !205, file: !48, line: 43, column: 13)
!217 = !DILocation(line: 43, column: 25, scope: !216)
!218 = !DILocation(line: 43, column: 13, scope: !205)
!219 = !DILocation(line: 46, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !48, line: 44, column: 9)
!221 = !DILocation(line: 46, column: 26, scope: !220)
!222 = !DILocation(line: 46, column: 25, scope: !220)
!223 = !DILocation(line: 46, column: 35, scope: !220)
!224 = !DILocation(line: 46, column: 52, scope: !220)
!225 = !DILocation(line: 46, column: 51, scope: !220)
!226 = !DILocation(line: 46, column: 59, scope: !220)
!227 = !DILocation(line: 46, column: 13, scope: !220)
!228 = !DILocation(line: 47, column: 9, scope: !220)
!229 = !DILocation(line: 49, column: 12, scope: !199)
!230 = !DILocation(line: 49, column: 5, scope: !199)
!231 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_61b_goodG2BSource", scope: !48, file: !48, line: 57, type: !200, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!232 = !DILocalVariable(name: "data", arg: 1, scope: !231, file: !48, line: 57, type: !42)
!233 = !DILocation(line: 57, column: 83, scope: !231)
!234 = !DILocation(line: 60, column: 12, scope: !231)
!235 = !DILocation(line: 60, column: 5, scope: !231)
!236 = !DILocation(line: 61, column: 12, scope: !231)
!237 = !DILocation(line: 61, column: 5, scope: !231)
!238 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_61b_goodB2GSource", scope: !48, file: !48, line: 65, type: !200, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!239 = !DILocalVariable(name: "data", arg: 1, scope: !238, file: !48, line: 65, type: !42)
!240 = !DILocation(line: 65, column: 83, scope: !238)
!241 = !DILocalVariable(name: "dataLen", scope: !242, file: !48, line: 69, type: !206)
!242 = distinct !DILexicalBlock(scope: !238, file: !48, line: 67, column: 5)
!243 = !DILocation(line: 69, column: 16, scope: !242)
!244 = !DILocation(line: 69, column: 33, scope: !242)
!245 = !DILocation(line: 69, column: 26, scope: !242)
!246 = !DILocalVariable(name: "environment", scope: !242, file: !48, line: 70, type: !42)
!247 = !DILocation(line: 70, column: 16, scope: !242)
!248 = !DILocation(line: 70, column: 30, scope: !242)
!249 = !DILocation(line: 72, column: 13, scope: !250)
!250 = distinct !DILexicalBlock(scope: !242, file: !48, line: 72, column: 13)
!251 = !DILocation(line: 72, column: 25, scope: !250)
!252 = !DILocation(line: 72, column: 13, scope: !242)
!253 = !DILocation(line: 75, column: 21, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !48, line: 73, column: 9)
!255 = !DILocation(line: 75, column: 26, scope: !254)
!256 = !DILocation(line: 75, column: 25, scope: !254)
!257 = !DILocation(line: 75, column: 35, scope: !254)
!258 = !DILocation(line: 75, column: 52, scope: !254)
!259 = !DILocation(line: 75, column: 51, scope: !254)
!260 = !DILocation(line: 75, column: 59, scope: !254)
!261 = !DILocation(line: 75, column: 13, scope: !254)
!262 = !DILocation(line: 76, column: 9, scope: !254)
!263 = !DILocation(line: 78, column: 12, scope: !238)
!264 = !DILocation(line: 78, column: 5, scope: !238)
!265 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !266, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !42}
!268 = !DILocalVariable(name: "line", arg: 1, scope: !265, file: !3, line: 11, type: !42)
!269 = !DILocation(line: 11, column: 25, scope: !265)
!270 = !DILocation(line: 13, column: 1, scope: !265)
!271 = !DILocation(line: 14, column: 8, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !3, line: 14, column: 8)
!273 = !DILocation(line: 14, column: 13, scope: !272)
!274 = !DILocation(line: 14, column: 8, scope: !265)
!275 = !DILocation(line: 16, column: 24, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !3, line: 15, column: 5)
!277 = !DILocation(line: 16, column: 9, scope: !276)
!278 = !DILocation(line: 17, column: 5, scope: !276)
!279 = !DILocation(line: 18, column: 5, scope: !265)
!280 = !DILocation(line: 19, column: 1, scope: !265)
!281 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !266, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!282 = !DILocalVariable(name: "line", arg: 1, scope: !281, file: !3, line: 20, type: !42)
!283 = !DILocation(line: 20, column: 29, scope: !281)
!284 = !DILocation(line: 22, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !3, line: 22, column: 8)
!286 = !DILocation(line: 22, column: 13, scope: !285)
!287 = !DILocation(line: 22, column: 8, scope: !281)
!288 = !DILocation(line: 24, column: 24, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !3, line: 23, column: 5)
!290 = !DILocation(line: 24, column: 9, scope: !289)
!291 = !DILocation(line: 25, column: 5, scope: !289)
!292 = !DILocation(line: 26, column: 1, scope: !281)
!293 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !294, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !207, line: 74, baseType: !23)
!298 = !DILocalVariable(name: "line", arg: 1, scope: !293, file: !3, line: 27, type: !296)
!299 = !DILocation(line: 27, column: 29, scope: !293)
!300 = !DILocation(line: 29, column: 8, scope: !301)
!301 = distinct !DILexicalBlock(scope: !293, file: !3, line: 29, column: 8)
!302 = !DILocation(line: 29, column: 13, scope: !301)
!303 = !DILocation(line: 29, column: 8, scope: !293)
!304 = !DILocation(line: 31, column: 27, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !3, line: 30, column: 5)
!306 = !DILocation(line: 31, column: 9, scope: !305)
!307 = !DILocation(line: 32, column: 5, scope: !305)
!308 = !DILocation(line: 33, column: 1, scope: !293)
!309 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !310, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !23}
!312 = !DILocalVariable(name: "intNumber", arg: 1, scope: !309, file: !3, line: 35, type: !23)
!313 = !DILocation(line: 35, column: 24, scope: !309)
!314 = !DILocation(line: 37, column: 20, scope: !309)
!315 = !DILocation(line: 37, column: 5, scope: !309)
!316 = !DILocation(line: 38, column: 1, scope: !309)
!317 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !318, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!321 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !317, file: !3, line: 40, type: !320)
!322 = !DILocation(line: 40, column: 28, scope: !317)
!323 = !DILocation(line: 42, column: 21, scope: !317)
!324 = !DILocation(line: 42, column: 5, scope: !317)
!325 = !DILocation(line: 43, column: 1, scope: !317)
!326 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !327, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329}
!329 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!330 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !326, file: !3, line: 45, type: !329)
!331 = !DILocation(line: 45, column: 28, scope: !326)
!332 = !DILocation(line: 47, column: 20, scope: !326)
!333 = !DILocation(line: 47, column: 5, scope: !326)
!334 = !DILocation(line: 48, column: 1, scope: !326)
!335 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !336, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338}
!338 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!339 = !DILocalVariable(name: "longNumber", arg: 1, scope: !335, file: !3, line: 50, type: !338)
!340 = !DILocation(line: 50, column: 26, scope: !335)
!341 = !DILocation(line: 52, column: 21, scope: !335)
!342 = !DILocation(line: 52, column: 5, scope: !335)
!343 = !DILocation(line: 53, column: 1, scope: !335)
!344 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !345, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347}
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !348, line: 27, baseType: !349)
!348 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !350, line: 44, baseType: !338)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!351 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !344, file: !3, line: 55, type: !347)
!352 = !DILocation(line: 55, column: 33, scope: !344)
!353 = !DILocation(line: 57, column: 29, scope: !344)
!354 = !DILocation(line: 57, column: 5, scope: !344)
!355 = !DILocation(line: 58, column: 1, scope: !344)
!356 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !357, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !206}
!359 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !356, file: !3, line: 60, type: !206)
!360 = !DILocation(line: 60, column: 29, scope: !356)
!361 = !DILocation(line: 62, column: 21, scope: !356)
!362 = !DILocation(line: 62, column: 5, scope: !356)
!363 = !DILocation(line: 63, column: 1, scope: !356)
!364 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !365, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !43}
!367 = !DILocalVariable(name: "charHex", arg: 1, scope: !364, file: !3, line: 65, type: !43)
!368 = !DILocation(line: 65, column: 29, scope: !364)
!369 = !DILocation(line: 67, column: 22, scope: !364)
!370 = !DILocation(line: 67, column: 5, scope: !364)
!371 = !DILocation(line: 68, column: 1, scope: !364)
!372 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !373, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !297}
!375 = !DILocalVariable(name: "wideChar", arg: 1, scope: !372, file: !3, line: 70, type: !297)
!376 = !DILocation(line: 70, column: 29, scope: !372)
!377 = !DILocalVariable(name: "s", scope: !372, file: !3, line: 74, type: !378)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 64, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 2)
!381 = !DILocation(line: 74, column: 13, scope: !372)
!382 = !DILocation(line: 75, column: 16, scope: !372)
!383 = !DILocation(line: 75, column: 9, scope: !372)
!384 = !DILocation(line: 75, column: 14, scope: !372)
!385 = !DILocation(line: 76, column: 9, scope: !372)
!386 = !DILocation(line: 76, column: 14, scope: !372)
!387 = !DILocation(line: 77, column: 21, scope: !372)
!388 = !DILocation(line: 77, column: 5, scope: !372)
!389 = !DILocation(line: 78, column: 1, scope: !372)
!390 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !391, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !7}
!393 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !390, file: !3, line: 80, type: !7)
!394 = !DILocation(line: 80, column: 33, scope: !390)
!395 = !DILocation(line: 82, column: 20, scope: !390)
!396 = !DILocation(line: 82, column: 5, scope: !390)
!397 = !DILocation(line: 83, column: 1, scope: !390)
!398 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !399, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !25}
!401 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !398, file: !3, line: 85, type: !25)
!402 = !DILocation(line: 85, column: 45, scope: !398)
!403 = !DILocation(line: 87, column: 22, scope: !398)
!404 = !DILocation(line: 87, column: 5, scope: !398)
!405 = !DILocation(line: 88, column: 1, scope: !398)
!406 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !407, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !409}
!409 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!410 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !406, file: !3, line: 90, type: !409)
!411 = !DILocation(line: 90, column: 29, scope: !406)
!412 = !DILocation(line: 92, column: 20, scope: !406)
!413 = !DILocation(line: 92, column: 5, scope: !406)
!414 = !DILocation(line: 93, column: 1, scope: !406)
!415 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !416, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !420, line: 100, baseType: !421)
!420 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_059/source_code")
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !420, line: 96, size: 64, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !421, file: !420, line: 98, baseType: !23, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !421, file: !420, line: 99, baseType: !23, size: 32, offset: 32)
!425 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !415, file: !3, line: 95, type: !418)
!426 = !DILocation(line: 95, column: 40, scope: !415)
!427 = !DILocation(line: 97, column: 26, scope: !415)
!428 = !DILocation(line: 97, column: 47, scope: !415)
!429 = !DILocation(line: 97, column: 55, scope: !415)
!430 = !DILocation(line: 97, column: 76, scope: !415)
!431 = !DILocation(line: 97, column: 5, scope: !415)
!432 = !DILocation(line: 98, column: 1, scope: !415)
!433 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !434, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436, !206}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!437 = !DILocalVariable(name: "bytes", arg: 1, scope: !433, file: !3, line: 100, type: !436)
!438 = !DILocation(line: 100, column: 38, scope: !433)
!439 = !DILocalVariable(name: "numBytes", arg: 2, scope: !433, file: !3, line: 100, type: !206)
!440 = !DILocation(line: 100, column: 52, scope: !433)
!441 = !DILocalVariable(name: "i", scope: !433, file: !3, line: 102, type: !206)
!442 = !DILocation(line: 102, column: 12, scope: !433)
!443 = !DILocation(line: 103, column: 12, scope: !444)
!444 = distinct !DILexicalBlock(scope: !433, file: !3, line: 103, column: 5)
!445 = !DILocation(line: 103, column: 10, scope: !444)
!446 = !DILocation(line: 103, column: 17, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !3, line: 103, column: 5)
!448 = !DILocation(line: 103, column: 21, scope: !447)
!449 = !DILocation(line: 103, column: 19, scope: !447)
!450 = !DILocation(line: 103, column: 5, scope: !444)
!451 = !DILocation(line: 105, column: 24, scope: !452)
!452 = distinct !DILexicalBlock(scope: !447, file: !3, line: 104, column: 5)
!453 = !DILocation(line: 105, column: 30, scope: !452)
!454 = !DILocation(line: 105, column: 9, scope: !452)
!455 = !DILocation(line: 106, column: 5, scope: !452)
!456 = !DILocation(line: 103, column: 31, scope: !447)
!457 = !DILocation(line: 103, column: 5, scope: !447)
!458 = distinct !{!458, !450, !459, !98}
!459 = !DILocation(line: 106, column: 5, scope: !444)
!460 = !DILocation(line: 107, column: 5, scope: !433)
!461 = !DILocation(line: 108, column: 1, scope: !433)
!462 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !463, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!463 = !DISubroutineType(types: !464)
!464 = !{!206, !436, !206, !42}
!465 = !DILocalVariable(name: "bytes", arg: 1, scope: !462, file: !3, line: 113, type: !436)
!466 = !DILocation(line: 113, column: 39, scope: !462)
!467 = !DILocalVariable(name: "numBytes", arg: 2, scope: !462, file: !3, line: 113, type: !206)
!468 = !DILocation(line: 113, column: 53, scope: !462)
!469 = !DILocalVariable(name: "hex", arg: 3, scope: !462, file: !3, line: 113, type: !42)
!470 = !DILocation(line: 113, column: 71, scope: !462)
!471 = !DILocalVariable(name: "numWritten", scope: !462, file: !3, line: 115, type: !206)
!472 = !DILocation(line: 115, column: 12, scope: !462)
!473 = !DILocation(line: 121, column: 5, scope: !462)
!474 = !DILocation(line: 121, column: 12, scope: !462)
!475 = !DILocation(line: 121, column: 25, scope: !462)
!476 = !DILocation(line: 121, column: 23, scope: !462)
!477 = !DILocation(line: 121, column: 34, scope: !462)
!478 = !DILocation(line: 121, column: 37, scope: !462)
!479 = !DILocation(line: 121, column: 67, scope: !462)
!480 = !DILocation(line: 121, column: 70, scope: !462)
!481 = !DILocation(line: 0, scope: !462)
!482 = !DILocalVariable(name: "byte", scope: !483, file: !3, line: 123, type: !23)
!483 = distinct !DILexicalBlock(scope: !462, file: !3, line: 122, column: 5)
!484 = !DILocation(line: 123, column: 13, scope: !483)
!485 = !DILocation(line: 124, column: 17, scope: !483)
!486 = !DILocation(line: 124, column: 25, scope: !483)
!487 = !DILocation(line: 124, column: 23, scope: !483)
!488 = !DILocation(line: 124, column: 9, scope: !483)
!489 = !DILocation(line: 125, column: 45, scope: !483)
!490 = !DILocation(line: 125, column: 29, scope: !483)
!491 = !DILocation(line: 125, column: 9, scope: !483)
!492 = !DILocation(line: 125, column: 15, scope: !483)
!493 = !DILocation(line: 125, column: 27, scope: !483)
!494 = !DILocation(line: 126, column: 9, scope: !483)
!495 = distinct !{!495, !473, !496, !98}
!496 = !DILocation(line: 127, column: 5, scope: !462)
!497 = !DILocation(line: 129, column: 12, scope: !462)
!498 = !DILocation(line: 129, column: 5, scope: !462)
!499 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !500, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DISubroutineType(types: !501)
!501 = !{!206, !436, !206, !296}
!502 = !DILocalVariable(name: "bytes", arg: 1, scope: !499, file: !3, line: 135, type: !436)
!503 = !DILocation(line: 135, column: 41, scope: !499)
!504 = !DILocalVariable(name: "numBytes", arg: 2, scope: !499, file: !3, line: 135, type: !206)
!505 = !DILocation(line: 135, column: 55, scope: !499)
!506 = !DILocalVariable(name: "hex", arg: 3, scope: !499, file: !3, line: 135, type: !296)
!507 = !DILocation(line: 135, column: 76, scope: !499)
!508 = !DILocalVariable(name: "numWritten", scope: !499, file: !3, line: 137, type: !206)
!509 = !DILocation(line: 137, column: 12, scope: !499)
!510 = !DILocation(line: 143, column: 5, scope: !499)
!511 = !DILocation(line: 143, column: 12, scope: !499)
!512 = !DILocation(line: 143, column: 25, scope: !499)
!513 = !DILocation(line: 143, column: 23, scope: !499)
!514 = !DILocation(line: 143, column: 34, scope: !499)
!515 = !DILocation(line: 143, column: 47, scope: !499)
!516 = !DILocation(line: 143, column: 55, scope: !499)
!517 = !DILocation(line: 143, column: 53, scope: !499)
!518 = !DILocation(line: 143, column: 37, scope: !499)
!519 = !DILocation(line: 143, column: 68, scope: !499)
!520 = !DILocation(line: 143, column: 81, scope: !499)
!521 = !DILocation(line: 143, column: 89, scope: !499)
!522 = !DILocation(line: 143, column: 87, scope: !499)
!523 = !DILocation(line: 143, column: 100, scope: !499)
!524 = !DILocation(line: 143, column: 71, scope: !499)
!525 = !DILocation(line: 0, scope: !499)
!526 = !DILocalVariable(name: "byte", scope: !527, file: !3, line: 145, type: !23)
!527 = distinct !DILexicalBlock(scope: !499, file: !3, line: 144, column: 5)
!528 = !DILocation(line: 145, column: 13, scope: !527)
!529 = !DILocation(line: 146, column: 18, scope: !527)
!530 = !DILocation(line: 146, column: 26, scope: !527)
!531 = !DILocation(line: 146, column: 24, scope: !527)
!532 = !DILocation(line: 146, column: 9, scope: !527)
!533 = !DILocation(line: 147, column: 45, scope: !527)
!534 = !DILocation(line: 147, column: 29, scope: !527)
!535 = !DILocation(line: 147, column: 9, scope: !527)
!536 = !DILocation(line: 147, column: 15, scope: !527)
!537 = !DILocation(line: 147, column: 27, scope: !527)
!538 = !DILocation(line: 148, column: 9, scope: !527)
!539 = distinct !{!539, !510, !540, !98}
!540 = !DILocation(line: 149, column: 5, scope: !499)
!541 = !DILocation(line: 151, column: 12, scope: !499)
!542 = !DILocation(line: 151, column: 5, scope: !499)
!543 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !544, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DISubroutineType(types: !545)
!545 = !{!23}
!546 = !DILocation(line: 158, column: 5, scope: !543)
!547 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !544, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 163, column: 5, scope: !547)
!549 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !544, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 168, column: 13, scope: !549)
!551 = !DILocation(line: 168, column: 20, scope: !549)
!552 = !DILocation(line: 168, column: 5, scope: !549)
!553 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 187, column: 16, scope: !553)
!555 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 188, column: 16, scope: !555)
!557 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 189, column: 16, scope: !557)
!559 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 190, column: 16, scope: !559)
!561 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 191, column: 16, scope: !561)
!563 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 192, column: 16, scope: !563)
!565 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 193, column: 16, scope: !565)
!567 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 194, column: 16, scope: !567)
!569 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 195, column: 16, scope: !569)
!571 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 198, column: 15, scope: !571)
!573 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 199, column: 15, scope: !573)
!575 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 200, column: 15, scope: !575)
!577 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 201, column: 15, scope: !577)
!579 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 202, column: 15, scope: !579)
!581 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 203, column: 15, scope: !581)
!583 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 204, column: 15, scope: !583)
!585 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 205, column: 15, scope: !585)
!587 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 206, column: 15, scope: !587)
