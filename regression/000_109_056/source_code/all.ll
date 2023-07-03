; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.14 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9.18 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14.19 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_52_bad() #0 !dbg !56 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !61, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !68, metadata !DIExpression()), !dbg !73
  %1 = load i8*, i8** %data, align 8, !dbg !74
  %call = call i64 @strlen(i8* %1) #7, !dbg !75
  store i64 %call, i64* %dataLen, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !76, metadata !DIExpression()), !dbg !77
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !78
  store i8* %call1, i8** %environment, align 8, !dbg !77
  %2 = load i8*, i8** %environment, align 8, !dbg !79
  %cmp = icmp ne i8* %2, null, !dbg !81
  br i1 %cmp, label %if.then, label %if.end, !dbg !82

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !83
  %4 = load i64, i64* %dataLen, align 8, !dbg !85
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !86
  %5 = load i8*, i8** %environment, align 8, !dbg !87
  %6 = load i64, i64* %dataLen, align 8, !dbg !88
  %sub = sub i64 100, %6, !dbg !89
  %sub2 = sub i64 %sub, 1, !dbg !90
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !91
  br label %if.end, !dbg !92

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !93
  call void @CWE606_Unchecked_Loop_Condition__char_environment_52b_badSink(i8* %7), !dbg !94
  ret void, !dbg !95
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
define dso_local void @goodG2B() #0 !dbg !96 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !100
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !100
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !101
  store i8* %arraydecay, i8** %data, align 8, !dbg !102
  %1 = load i8*, i8** %data, align 8, !dbg !103
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !104
  %2 = load i8*, i8** %data, align 8, !dbg !105
  call void @CWE606_Unchecked_Loop_Condition__char_environment_52b_goodG2BSink(i8* %2), !dbg !106
  ret void, !dbg !107
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !108 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !111, metadata !DIExpression()), !dbg !112
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !112
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !112
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !113
  store i8* %arraydecay, i8** %data, align 8, !dbg !114
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !115, metadata !DIExpression()), !dbg !117
  %1 = load i8*, i8** %data, align 8, !dbg !118
  %call = call i64 @strlen(i8* %1) #7, !dbg !119
  store i64 %call, i64* %dataLen, align 8, !dbg !117
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !120, metadata !DIExpression()), !dbg !121
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !122
  store i8* %call1, i8** %environment, align 8, !dbg !121
  %2 = load i8*, i8** %environment, align 8, !dbg !123
  %cmp = icmp ne i8* %2, null, !dbg !125
  br i1 %cmp, label %if.then, label %if.end, !dbg !126

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !127
  %4 = load i64, i64* %dataLen, align 8, !dbg !129
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !130
  %5 = load i8*, i8** %environment, align 8, !dbg !131
  %6 = load i64, i64* %dataLen, align 8, !dbg !132
  %sub = sub i64 100, %6, !dbg !133
  %sub2 = sub i64 %sub, 1, !dbg !134
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !135
  br label %if.end, !dbg !136

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !137
  call void @CWE606_Unchecked_Loop_Condition__char_environment_52b_goodB2GSink(i8* %7), !dbg !138
  ret void, !dbg !139
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_52_good() #0 !dbg !140 {
entry:
  call void @goodG2B(), !dbg !141
  call void @goodB2G(), !dbg !142
  ret void, !dbg !143
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_52b_badSink(i8* %data) #0 !dbg !144 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !147, metadata !DIExpression()), !dbg !148
  %0 = load i8*, i8** %data.addr, align 8, !dbg !149
  call void @CWE606_Unchecked_Loop_Condition__char_environment_52c_badSink(i8* %0), !dbg !150
  ret void, !dbg !151
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_52b_goodG2BSink(i8* %data) #0 !dbg !152 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load i8*, i8** %data.addr, align 8, !dbg !155
  call void @CWE606_Unchecked_Loop_Condition__char_environment_52c_goodG2BSink(i8* %0), !dbg !156
  ret void, !dbg !157
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_52b_goodB2GSink(i8* %data) #0 !dbg !158 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = load i8*, i8** %data.addr, align 8, !dbg !161
  call void @CWE606_Unchecked_Loop_Condition__char_environment_52c_goodB2GSink(i8* %0), !dbg !162
  ret void, !dbg !163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_52c_badSink(i8* %data) #0 !dbg !164 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i32* %i, metadata !167, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i32* %n, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !172, metadata !DIExpression()), !dbg !173
  %0 = load i8*, i8** %data.addr, align 8, !dbg !174
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %n) #8, !dbg !176
  %cmp = icmp eq i32 %call, 1, !dbg !177
  br i1 %cmp, label %if.then, label %if.end, !dbg !178

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !179
  store i32 0, i32* %i, align 4, !dbg !181
  br label %for.cond, !dbg !183

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !184
  %2 = load i32, i32* %n, align 4, !dbg !186
  %cmp1 = icmp slt i32 %1, %2, !dbg !187
  br i1 %cmp1, label %for.body, label %for.end, !dbg !188

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !189
  %inc = add nsw i32 %3, 1, !dbg !189
  store i32 %inc, i32* %intVariable, align 4, !dbg !189
  br label %for.inc, !dbg !191

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !192
  %inc2 = add nsw i32 %4, 1, !dbg !192
  store i32 %inc2, i32* %i, align 4, !dbg !192
  br label %for.cond, !dbg !193, !llvm.loop !194

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !197
  call void @printIntLine(i32 %5), !dbg !198
  br label %if.end, !dbg !199

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !200
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_52c_goodG2BSink(i8* %data) #0 !dbg !201 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i32* %i, metadata !204, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %n, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = load i8*, i8** %data.addr, align 8, !dbg !211
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %n) #8, !dbg !213
  %cmp = icmp eq i32 %call, 1, !dbg !214
  br i1 %cmp, label %if.then, label %if.end, !dbg !215

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !216
  store i32 0, i32* %i, align 4, !dbg !218
  br label %for.cond, !dbg !220

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !221
  %2 = load i32, i32* %n, align 4, !dbg !223
  %cmp1 = icmp slt i32 %1, %2, !dbg !224
  br i1 %cmp1, label %for.body, label %for.end, !dbg !225

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !226
  %inc = add nsw i32 %3, 1, !dbg !226
  store i32 %inc, i32* %intVariable, align 4, !dbg !226
  br label %for.inc, !dbg !228

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !229
  %inc2 = add nsw i32 %4, 1, !dbg !229
  store i32 %inc2, i32* %i, align 4, !dbg !229
  br label %for.cond, !dbg !230, !llvm.loop !231

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !233
  call void @printIntLine(i32 %5), !dbg !234
  br label %if.end, !dbg !235

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_52c_goodB2GSink(i8* %data) #0 !dbg !237 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %i, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i32* %n, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i8*, i8** %data.addr, align 8, !dbg !247
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %n) #8, !dbg !249
  %cmp = icmp eq i32 %call, 1, !dbg !250
  br i1 %cmp, label %if.then, label %if.end5, !dbg !251

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !252
  %cmp1 = icmp slt i32 %1, 10000, !dbg !255
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !256

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !257
  store i32 0, i32* %i, align 4, !dbg !259
  br label %for.cond, !dbg !261

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !262
  %3 = load i32, i32* %n, align 4, !dbg !264
  %cmp3 = icmp slt i32 %2, %3, !dbg !265
  br i1 %cmp3, label %for.body, label %for.end, !dbg !266

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !267
  %inc = add nsw i32 %4, 1, !dbg !267
  store i32 %inc, i32* %intVariable, align 4, !dbg !267
  br label %for.inc, !dbg !269

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !270
  %inc4 = add nsw i32 %5, 1, !dbg !270
  store i32 %inc4, i32* %i, align 4, !dbg !270
  br label %for.cond, !dbg !271, !llvm.loop !272

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !274
  call void @printIntLine(i32 %6), !dbg !275
  br label %if.end, !dbg !276

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !277

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !278
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !279 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0)), !dbg !282
  %0 = load i8*, i8** %line.addr, align 8, !dbg !283
  %cmp = icmp ne i8* %0, null, !dbg !285
  br i1 %cmp, label %if.then, label %if.end, !dbg !286

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !287
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.15, i64 0, i64 0), i8* %1), !dbg !289
  br label %if.end, !dbg !290

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !291
  ret void, !dbg !292
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !293 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = load i8*, i8** %line.addr, align 8, !dbg !296
  %cmp = icmp ne i8* %0, null, !dbg !298
  br i1 %cmp, label %if.then, label %if.end, !dbg !299

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !300
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.15, i64 0, i64 0), i8* %1), !dbg !302
  br label %if.end, !dbg !303

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !305 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !310, metadata !DIExpression()), !dbg !311
  %0 = load i32*, i32** %line.addr, align 8, !dbg !312
  %cmp = icmp ne i32* %0, null, !dbg !314
  br i1 %cmp, label %if.then, label %if.end, !dbg !315

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !316
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !318
  br label %if.end, !dbg !319

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !320
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !321 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !326
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !327
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !329 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !335
  %conv = sext i16 %0 to i32, !dbg !335
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !338 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !344
  %conv = fpext float %0 to double, !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !347 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !356 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !368 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !374
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !376 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !379, metadata !DIExpression()), !dbg !380
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !381
  %conv = sext i8 %0 to i32, !dbg !381
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.18, i64 0, i64 0), i32 %conv), !dbg !382
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !384 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !387, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !389, metadata !DIExpression()), !dbg !393
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !394
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !395
  store i32 %0, i32* %arrayidx, align 4, !dbg !396
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !397
  store i32 0, i32* %arrayidx1, align 4, !dbg !398
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !399
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !400
  ret void, !dbg !401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !402 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !405, metadata !DIExpression()), !dbg !406
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !407
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !408
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !410 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !413, metadata !DIExpression()), !dbg !414
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !415
  %conv = zext i8 %0 to i32, !dbg !415
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.18, i64 0, i64 0), i32 %conv), !dbg !416
  ret void, !dbg !417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !418 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !427 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !437, metadata !DIExpression()), !dbg !438
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !439
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !440
  %1 = load i32, i32* %intOne, align 4, !dbg !440
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !441
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !442
  %3 = load i32, i32* %intTwo, align 4, !dbg !442
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !443
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !445 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !449, metadata !DIExpression()), !dbg !450
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata i64* %i, metadata !453, metadata !DIExpression()), !dbg !454
  store i64 0, i64* %i, align 8, !dbg !455
  br label %for.cond, !dbg !457

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !458
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !460
  %cmp = icmp ult i64 %0, %1, !dbg !461
  br i1 %cmp, label %for.body, label %for.end, !dbg !462

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !463
  %3 = load i64, i64* %i, align 8, !dbg !465
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !463
  %4 = load i8, i8* %arrayidx, align 1, !dbg !463
  %conv = zext i8 %4 to i32, !dbg !463
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14.19, i64 0, i64 0), i32 %conv), !dbg !466
  br label %for.inc, !dbg !467

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !468
  %inc = add i64 %5, 1, !dbg !468
  store i64 %inc, i64* %i, align 8, !dbg !468
  br label %for.cond, !dbg !469, !llvm.loop !470

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !472
  ret void, !dbg !473
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !474 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !477, metadata !DIExpression()), !dbg !478
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !479, metadata !DIExpression()), !dbg !480
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !481, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !483, metadata !DIExpression()), !dbg !484
  store i64 0, i64* %numWritten, align 8, !dbg !484
  br label %while.cond, !dbg !485

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !486
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !487
  %cmp = icmp ult i64 %0, %1, !dbg !488
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !489

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !490
  %2 = load i16*, i16** %call, align 8, !dbg !490
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !490
  %4 = load i64, i64* %numWritten, align 8, !dbg !490
  %mul = mul i64 2, %4, !dbg !490
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !490
  %5 = load i8, i8* %arrayidx, align 1, !dbg !490
  %conv = sext i8 %5 to i32, !dbg !490
  %idxprom = sext i32 %conv to i64, !dbg !490
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !490
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !490
  %conv2 = zext i16 %6 to i32, !dbg !490
  %and = and i32 %conv2, 4096, !dbg !490
  %tobool = icmp ne i32 %and, 0, !dbg !490
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !491

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !492
  %7 = load i16*, i16** %call3, align 8, !dbg !492
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !492
  %9 = load i64, i64* %numWritten, align 8, !dbg !492
  %mul4 = mul i64 2, %9, !dbg !492
  %add = add i64 %mul4, 1, !dbg !492
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !492
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !492
  %conv6 = sext i8 %10 to i32, !dbg !492
  %idxprom7 = sext i32 %conv6 to i64, !dbg !492
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !492
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !492
  %conv9 = zext i16 %11 to i32, !dbg !492
  %and10 = and i32 %conv9, 4096, !dbg !492
  %tobool11 = icmp ne i32 %and10, 0, !dbg !491
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !493
  br i1 %12, label %while.body, label %while.end, !dbg !485

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !494, metadata !DIExpression()), !dbg !496
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !497
  %14 = load i64, i64* %numWritten, align 8, !dbg !498
  %mul12 = mul i64 2, %14, !dbg !499
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !497
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14.19, i64 0, i64 0), i32* %byte) #8, !dbg !500
  %15 = load i32, i32* %byte, align 4, !dbg !501
  %conv15 = trunc i32 %15 to i8, !dbg !502
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !503
  %17 = load i64, i64* %numWritten, align 8, !dbg !504
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !503
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !505
  %18 = load i64, i64* %numWritten, align 8, !dbg !506
  %inc = add i64 %18, 1, !dbg !506
  store i64 %inc, i64* %numWritten, align 8, !dbg !506
  br label %while.cond, !dbg !485, !llvm.loop !507

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !509
  ret i64 %19, !dbg !510
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !511 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !514, metadata !DIExpression()), !dbg !515
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !516, metadata !DIExpression()), !dbg !517
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !520, metadata !DIExpression()), !dbg !521
  store i64 0, i64* %numWritten, align 8, !dbg !521
  br label %while.cond, !dbg !522

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !523
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !524
  %cmp = icmp ult i64 %0, %1, !dbg !525
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !526

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !527
  %3 = load i64, i64* %numWritten, align 8, !dbg !528
  %mul = mul i64 2, %3, !dbg !529
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !527
  %4 = load i32, i32* %arrayidx, align 4, !dbg !527
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !530
  %tobool = icmp ne i32 %call, 0, !dbg !530
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !531

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !532
  %6 = load i64, i64* %numWritten, align 8, !dbg !533
  %mul1 = mul i64 2, %6, !dbg !534
  %add = add i64 %mul1, 1, !dbg !535
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !532
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !532
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !536
  %tobool4 = icmp ne i32 %call3, 0, !dbg !531
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !537
  br i1 %8, label %while.body, label %while.end, !dbg !522

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !538, metadata !DIExpression()), !dbg !540
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !541
  %10 = load i64, i64* %numWritten, align 8, !dbg !542
  %mul5 = mul i64 2, %10, !dbg !543
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !541
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !544
  %11 = load i32, i32* %byte, align 4, !dbg !545
  %conv = trunc i32 %11 to i8, !dbg !546
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !547
  %13 = load i64, i64* %numWritten, align 8, !dbg !548
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !547
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !549
  %14 = load i64, i64* %numWritten, align 8, !dbg !550
  %inc = add i64 %14, 1, !dbg !550
  store i64 %inc, i64* %numWritten, align 8, !dbg !550
  br label %while.cond, !dbg !522, !llvm.loop !551

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !553
  ret i64 %15, !dbg !554
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !555 {
entry:
  ret i32 1, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !559 {
entry:
  ret i32 0, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !561 {
entry:
  %call = call i32 @rand() #8, !dbg !562
  %rem = srem i32 %call, 2, !dbg !563
  ret i32 %rem, !dbg !564
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !599 {
entry:
  ret void, !dbg !600
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

!llvm.dbg.cu = !{!44, !48, !50, !2}
!llvm.ident = !{!52, !52, !52, !52}
!llvm.module.flags = !{!53, !54, !55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_056/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_52a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_056/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_52b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_056/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_52c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_056/source_code")
!52 = !{!"clang version 12.0.0"}
!53 = !{i32 7, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_52_bad", scope: !45, file: !45, line: 39, type: !57, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!57 = !DISubroutineType(types: !58)
!58 = !{null}
!59 = !DILocalVariable(name: "data", scope: !56, file: !45, line: 41, type: !42)
!60 = !DILocation(line: 41, column: 12, scope: !56)
!61 = !DILocalVariable(name: "dataBuffer", scope: !56, file: !45, line: 42, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 42, column: 10, scope: !56)
!66 = !DILocation(line: 43, column: 12, scope: !56)
!67 = !DILocation(line: 43, column: 10, scope: !56)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !45, line: 46, type: !70)
!69 = distinct !DILexicalBlock(scope: !56, file: !45, line: 44, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 46, column: 16, scope: !69)
!74 = !DILocation(line: 46, column: 33, scope: !69)
!75 = !DILocation(line: 46, column: 26, scope: !69)
!76 = !DILocalVariable(name: "environment", scope: !69, file: !45, line: 47, type: !42)
!77 = !DILocation(line: 47, column: 16, scope: !69)
!78 = !DILocation(line: 47, column: 30, scope: !69)
!79 = !DILocation(line: 49, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !69, file: !45, line: 49, column: 13)
!81 = !DILocation(line: 49, column: 25, scope: !80)
!82 = !DILocation(line: 49, column: 13, scope: !69)
!83 = !DILocation(line: 52, column: 21, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !45, line: 50, column: 9)
!85 = !DILocation(line: 52, column: 26, scope: !84)
!86 = !DILocation(line: 52, column: 25, scope: !84)
!87 = !DILocation(line: 52, column: 35, scope: !84)
!88 = !DILocation(line: 52, column: 52, scope: !84)
!89 = !DILocation(line: 52, column: 51, scope: !84)
!90 = !DILocation(line: 52, column: 59, scope: !84)
!91 = !DILocation(line: 52, column: 13, scope: !84)
!92 = !DILocation(line: 53, column: 9, scope: !84)
!93 = !DILocation(line: 55, column: 67, scope: !56)
!94 = !DILocation(line: 55, column: 5, scope: !56)
!95 = !DILocation(line: 56, column: 1, scope: !56)
!96 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 64, type: !57, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!97 = !DILocalVariable(name: "data", scope: !96, file: !45, line: 66, type: !42)
!98 = !DILocation(line: 66, column: 12, scope: !96)
!99 = !DILocalVariable(name: "dataBuffer", scope: !96, file: !45, line: 67, type: !62)
!100 = !DILocation(line: 67, column: 10, scope: !96)
!101 = !DILocation(line: 68, column: 12, scope: !96)
!102 = !DILocation(line: 68, column: 10, scope: !96)
!103 = !DILocation(line: 70, column: 12, scope: !96)
!104 = !DILocation(line: 70, column: 5, scope: !96)
!105 = !DILocation(line: 71, column: 71, scope: !96)
!106 = !DILocation(line: 71, column: 5, scope: !96)
!107 = !DILocation(line: 72, column: 1, scope: !96)
!108 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 76, type: !57, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!109 = !DILocalVariable(name: "data", scope: !108, file: !45, line: 78, type: !42)
!110 = !DILocation(line: 78, column: 12, scope: !108)
!111 = !DILocalVariable(name: "dataBuffer", scope: !108, file: !45, line: 79, type: !62)
!112 = !DILocation(line: 79, column: 10, scope: !108)
!113 = !DILocation(line: 80, column: 12, scope: !108)
!114 = !DILocation(line: 80, column: 10, scope: !108)
!115 = !DILocalVariable(name: "dataLen", scope: !116, file: !45, line: 83, type: !70)
!116 = distinct !DILexicalBlock(scope: !108, file: !45, line: 81, column: 5)
!117 = !DILocation(line: 83, column: 16, scope: !116)
!118 = !DILocation(line: 83, column: 33, scope: !116)
!119 = !DILocation(line: 83, column: 26, scope: !116)
!120 = !DILocalVariable(name: "environment", scope: !116, file: !45, line: 84, type: !42)
!121 = !DILocation(line: 84, column: 16, scope: !116)
!122 = !DILocation(line: 84, column: 30, scope: !116)
!123 = !DILocation(line: 86, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !45, line: 86, column: 13)
!125 = !DILocation(line: 86, column: 25, scope: !124)
!126 = !DILocation(line: 86, column: 13, scope: !116)
!127 = !DILocation(line: 89, column: 21, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !45, line: 87, column: 9)
!129 = !DILocation(line: 89, column: 26, scope: !128)
!130 = !DILocation(line: 89, column: 25, scope: !128)
!131 = !DILocation(line: 89, column: 35, scope: !128)
!132 = !DILocation(line: 89, column: 52, scope: !128)
!133 = !DILocation(line: 89, column: 51, scope: !128)
!134 = !DILocation(line: 89, column: 59, scope: !128)
!135 = !DILocation(line: 89, column: 13, scope: !128)
!136 = !DILocation(line: 90, column: 9, scope: !128)
!137 = !DILocation(line: 92, column: 71, scope: !108)
!138 = !DILocation(line: 92, column: 5, scope: !108)
!139 = !DILocation(line: 93, column: 1, scope: !108)
!140 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_52_good", scope: !45, file: !45, line: 95, type: !57, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!141 = !DILocation(line: 97, column: 5, scope: !140)
!142 = !DILocation(line: 98, column: 5, scope: !140)
!143 = !DILocation(line: 99, column: 1, scope: !140)
!144 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_52b_badSink", scope: !49, file: !49, line: 39, type: !145, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !42}
!147 = !DILocalVariable(name: "data", arg: 1, scope: !144, file: !49, line: 39, type: !42)
!148 = !DILocation(line: 39, column: 75, scope: !144)
!149 = !DILocation(line: 41, column: 67, scope: !144)
!150 = !DILocation(line: 41, column: 5, scope: !144)
!151 = !DILocation(line: 42, column: 1, scope: !144)
!152 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_52b_goodG2BSink", scope: !49, file: !49, line: 51, type: !145, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!153 = !DILocalVariable(name: "data", arg: 1, scope: !152, file: !49, line: 51, type: !42)
!154 = !DILocation(line: 51, column: 79, scope: !152)
!155 = !DILocation(line: 53, column: 71, scope: !152)
!156 = !DILocation(line: 53, column: 5, scope: !152)
!157 = !DILocation(line: 54, column: 1, scope: !152)
!158 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_52b_goodB2GSink", scope: !49, file: !49, line: 59, type: !145, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!159 = !DILocalVariable(name: "data", arg: 1, scope: !158, file: !49, line: 59, type: !42)
!160 = !DILocation(line: 59, column: 79, scope: !158)
!161 = !DILocation(line: 61, column: 71, scope: !158)
!162 = !DILocation(line: 61, column: 5, scope: !158)
!163 = !DILocation(line: 62, column: 1, scope: !158)
!164 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_52c_badSink", scope: !51, file: !51, line: 36, type: !145, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!165 = !DILocalVariable(name: "data", arg: 1, scope: !164, file: !51, line: 36, type: !42)
!166 = !DILocation(line: 36, column: 75, scope: !164)
!167 = !DILocalVariable(name: "i", scope: !168, file: !51, line: 39, type: !23)
!168 = distinct !DILexicalBlock(scope: !164, file: !51, line: 38, column: 5)
!169 = !DILocation(line: 39, column: 13, scope: !168)
!170 = !DILocalVariable(name: "n", scope: !168, file: !51, line: 39, type: !23)
!171 = !DILocation(line: 39, column: 16, scope: !168)
!172 = !DILocalVariable(name: "intVariable", scope: !168, file: !51, line: 39, type: !23)
!173 = !DILocation(line: 39, column: 19, scope: !168)
!174 = !DILocation(line: 40, column: 20, scope: !175)
!175 = distinct !DILexicalBlock(scope: !168, file: !51, line: 40, column: 13)
!176 = !DILocation(line: 40, column: 13, scope: !175)
!177 = !DILocation(line: 40, column: 36, scope: !175)
!178 = !DILocation(line: 40, column: 13, scope: !168)
!179 = !DILocation(line: 43, column: 25, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !51, line: 41, column: 9)
!181 = !DILocation(line: 44, column: 20, scope: !182)
!182 = distinct !DILexicalBlock(scope: !180, file: !51, line: 44, column: 13)
!183 = !DILocation(line: 44, column: 18, scope: !182)
!184 = !DILocation(line: 44, column: 25, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !51, line: 44, column: 13)
!186 = !DILocation(line: 44, column: 29, scope: !185)
!187 = !DILocation(line: 44, column: 27, scope: !185)
!188 = !DILocation(line: 44, column: 13, scope: !182)
!189 = !DILocation(line: 47, column: 28, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !51, line: 45, column: 13)
!191 = !DILocation(line: 48, column: 13, scope: !190)
!192 = !DILocation(line: 44, column: 33, scope: !185)
!193 = !DILocation(line: 44, column: 13, scope: !185)
!194 = distinct !{!194, !188, !195, !196}
!195 = !DILocation(line: 48, column: 13, scope: !182)
!196 = !{!"llvm.loop.mustprogress"}
!197 = !DILocation(line: 49, column: 26, scope: !180)
!198 = !DILocation(line: 49, column: 13, scope: !180)
!199 = !DILocation(line: 50, column: 9, scope: !180)
!200 = !DILocation(line: 52, column: 1, scope: !164)
!201 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_52c_goodG2BSink", scope: !51, file: !51, line: 59, type: !145, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!202 = !DILocalVariable(name: "data", arg: 1, scope: !201, file: !51, line: 59, type: !42)
!203 = !DILocation(line: 59, column: 79, scope: !201)
!204 = !DILocalVariable(name: "i", scope: !205, file: !51, line: 62, type: !23)
!205 = distinct !DILexicalBlock(scope: !201, file: !51, line: 61, column: 5)
!206 = !DILocation(line: 62, column: 13, scope: !205)
!207 = !DILocalVariable(name: "n", scope: !205, file: !51, line: 62, type: !23)
!208 = !DILocation(line: 62, column: 16, scope: !205)
!209 = !DILocalVariable(name: "intVariable", scope: !205, file: !51, line: 62, type: !23)
!210 = !DILocation(line: 62, column: 19, scope: !205)
!211 = !DILocation(line: 63, column: 20, scope: !212)
!212 = distinct !DILexicalBlock(scope: !205, file: !51, line: 63, column: 13)
!213 = !DILocation(line: 63, column: 13, scope: !212)
!214 = !DILocation(line: 63, column: 36, scope: !212)
!215 = !DILocation(line: 63, column: 13, scope: !205)
!216 = !DILocation(line: 66, column: 25, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !51, line: 64, column: 9)
!218 = !DILocation(line: 67, column: 20, scope: !219)
!219 = distinct !DILexicalBlock(scope: !217, file: !51, line: 67, column: 13)
!220 = !DILocation(line: 67, column: 18, scope: !219)
!221 = !DILocation(line: 67, column: 25, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !51, line: 67, column: 13)
!223 = !DILocation(line: 67, column: 29, scope: !222)
!224 = !DILocation(line: 67, column: 27, scope: !222)
!225 = !DILocation(line: 67, column: 13, scope: !219)
!226 = !DILocation(line: 70, column: 28, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !51, line: 68, column: 13)
!228 = !DILocation(line: 71, column: 13, scope: !227)
!229 = !DILocation(line: 67, column: 33, scope: !222)
!230 = !DILocation(line: 67, column: 13, scope: !222)
!231 = distinct !{!231, !225, !232, !196}
!232 = !DILocation(line: 71, column: 13, scope: !219)
!233 = !DILocation(line: 72, column: 26, scope: !217)
!234 = !DILocation(line: 72, column: 13, scope: !217)
!235 = !DILocation(line: 73, column: 9, scope: !217)
!236 = !DILocation(line: 75, column: 1, scope: !201)
!237 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_52c_goodB2GSink", scope: !51, file: !51, line: 78, type: !145, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!238 = !DILocalVariable(name: "data", arg: 1, scope: !237, file: !51, line: 78, type: !42)
!239 = !DILocation(line: 78, column: 79, scope: !237)
!240 = !DILocalVariable(name: "i", scope: !241, file: !51, line: 81, type: !23)
!241 = distinct !DILexicalBlock(scope: !237, file: !51, line: 80, column: 5)
!242 = !DILocation(line: 81, column: 13, scope: !241)
!243 = !DILocalVariable(name: "n", scope: !241, file: !51, line: 81, type: !23)
!244 = !DILocation(line: 81, column: 16, scope: !241)
!245 = !DILocalVariable(name: "intVariable", scope: !241, file: !51, line: 81, type: !23)
!246 = !DILocation(line: 81, column: 19, scope: !241)
!247 = !DILocation(line: 82, column: 20, scope: !248)
!248 = distinct !DILexicalBlock(scope: !241, file: !51, line: 82, column: 13)
!249 = !DILocation(line: 82, column: 13, scope: !248)
!250 = !DILocation(line: 82, column: 36, scope: !248)
!251 = !DILocation(line: 82, column: 13, scope: !241)
!252 = !DILocation(line: 85, column: 17, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !51, line: 85, column: 17)
!254 = distinct !DILexicalBlock(scope: !248, file: !51, line: 83, column: 9)
!255 = !DILocation(line: 85, column: 19, scope: !253)
!256 = !DILocation(line: 85, column: 17, scope: !254)
!257 = !DILocation(line: 87, column: 29, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !51, line: 86, column: 13)
!259 = !DILocation(line: 88, column: 24, scope: !260)
!260 = distinct !DILexicalBlock(scope: !258, file: !51, line: 88, column: 17)
!261 = !DILocation(line: 88, column: 22, scope: !260)
!262 = !DILocation(line: 88, column: 29, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !51, line: 88, column: 17)
!264 = !DILocation(line: 88, column: 33, scope: !263)
!265 = !DILocation(line: 88, column: 31, scope: !263)
!266 = !DILocation(line: 88, column: 17, scope: !260)
!267 = !DILocation(line: 91, column: 32, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !51, line: 89, column: 17)
!269 = !DILocation(line: 92, column: 17, scope: !268)
!270 = !DILocation(line: 88, column: 37, scope: !263)
!271 = !DILocation(line: 88, column: 17, scope: !263)
!272 = distinct !{!272, !266, !273, !196}
!273 = !DILocation(line: 92, column: 17, scope: !260)
!274 = !DILocation(line: 93, column: 30, scope: !258)
!275 = !DILocation(line: 93, column: 17, scope: !258)
!276 = !DILocation(line: 94, column: 13, scope: !258)
!277 = !DILocation(line: 95, column: 9, scope: !254)
!278 = !DILocation(line: 97, column: 1, scope: !237)
!279 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !145, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!280 = !DILocalVariable(name: "line", arg: 1, scope: !279, file: !3, line: 11, type: !42)
!281 = !DILocation(line: 11, column: 25, scope: !279)
!282 = !DILocation(line: 13, column: 1, scope: !279)
!283 = !DILocation(line: 14, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !3, line: 14, column: 8)
!285 = !DILocation(line: 14, column: 13, scope: !284)
!286 = !DILocation(line: 14, column: 8, scope: !279)
!287 = !DILocation(line: 16, column: 24, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !3, line: 15, column: 5)
!289 = !DILocation(line: 16, column: 9, scope: !288)
!290 = !DILocation(line: 17, column: 5, scope: !288)
!291 = !DILocation(line: 18, column: 5, scope: !279)
!292 = !DILocation(line: 19, column: 1, scope: !279)
!293 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!294 = !DILocalVariable(name: "line", arg: 1, scope: !293, file: !3, line: 20, type: !42)
!295 = !DILocation(line: 20, column: 29, scope: !293)
!296 = !DILocation(line: 22, column: 8, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !3, line: 22, column: 8)
!298 = !DILocation(line: 22, column: 13, scope: !297)
!299 = !DILocation(line: 22, column: 8, scope: !293)
!300 = !DILocation(line: 24, column: 24, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !3, line: 23, column: 5)
!302 = !DILocation(line: 24, column: 9, scope: !301)
!303 = !DILocation(line: 25, column: 5, scope: !301)
!304 = !DILocation(line: 26, column: 1, scope: !293)
!305 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !306, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!310 = !DILocalVariable(name: "line", arg: 1, scope: !305, file: !3, line: 27, type: !308)
!311 = !DILocation(line: 27, column: 29, scope: !305)
!312 = !DILocation(line: 29, column: 8, scope: !313)
!313 = distinct !DILexicalBlock(scope: !305, file: !3, line: 29, column: 8)
!314 = !DILocation(line: 29, column: 13, scope: !313)
!315 = !DILocation(line: 29, column: 8, scope: !305)
!316 = !DILocation(line: 31, column: 27, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !3, line: 30, column: 5)
!318 = !DILocation(line: 31, column: 9, scope: !317)
!319 = !DILocation(line: 32, column: 5, scope: !317)
!320 = !DILocation(line: 33, column: 1, scope: !305)
!321 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !322, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !23}
!324 = !DILocalVariable(name: "intNumber", arg: 1, scope: !321, file: !3, line: 35, type: !23)
!325 = !DILocation(line: 35, column: 24, scope: !321)
!326 = !DILocation(line: 37, column: 20, scope: !321)
!327 = !DILocation(line: 37, column: 5, scope: !321)
!328 = !DILocation(line: 38, column: 1, scope: !321)
!329 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !330, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !332}
!332 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!333 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !329, file: !3, line: 40, type: !332)
!334 = !DILocation(line: 40, column: 28, scope: !329)
!335 = !DILocation(line: 42, column: 21, scope: !329)
!336 = !DILocation(line: 42, column: 5, scope: !329)
!337 = !DILocation(line: 43, column: 1, scope: !329)
!338 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !339, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341}
!341 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!342 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !338, file: !3, line: 45, type: !341)
!343 = !DILocation(line: 45, column: 28, scope: !338)
!344 = !DILocation(line: 47, column: 20, scope: !338)
!345 = !DILocation(line: 47, column: 5, scope: !338)
!346 = !DILocation(line: 48, column: 1, scope: !338)
!347 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !348, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !350}
!350 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!351 = !DILocalVariable(name: "longNumber", arg: 1, scope: !347, file: !3, line: 50, type: !350)
!352 = !DILocation(line: 50, column: 26, scope: !347)
!353 = !DILocation(line: 52, column: 21, scope: !347)
!354 = !DILocation(line: 52, column: 5, scope: !347)
!355 = !DILocation(line: 53, column: 1, scope: !347)
!356 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !357, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359}
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !360, line: 27, baseType: !361)
!360 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !362, line: 44, baseType: !350)
!362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!363 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !356, file: !3, line: 55, type: !359)
!364 = !DILocation(line: 55, column: 33, scope: !356)
!365 = !DILocation(line: 57, column: 29, scope: !356)
!366 = !DILocation(line: 57, column: 5, scope: !356)
!367 = !DILocation(line: 58, column: 1, scope: !356)
!368 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !369, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !70}
!371 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !368, file: !3, line: 60, type: !70)
!372 = !DILocation(line: 60, column: 29, scope: !368)
!373 = !DILocation(line: 62, column: 21, scope: !368)
!374 = !DILocation(line: 62, column: 5, scope: !368)
!375 = !DILocation(line: 63, column: 1, scope: !368)
!376 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !377, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !43}
!379 = !DILocalVariable(name: "charHex", arg: 1, scope: !376, file: !3, line: 65, type: !43)
!380 = !DILocation(line: 65, column: 29, scope: !376)
!381 = !DILocation(line: 67, column: 22, scope: !376)
!382 = !DILocation(line: 67, column: 5, scope: !376)
!383 = !DILocation(line: 68, column: 1, scope: !376)
!384 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !385, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !309}
!387 = !DILocalVariable(name: "wideChar", arg: 1, scope: !384, file: !3, line: 70, type: !309)
!388 = !DILocation(line: 70, column: 29, scope: !384)
!389 = !DILocalVariable(name: "s", scope: !384, file: !3, line: 74, type: !390)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 64, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 2)
!393 = !DILocation(line: 74, column: 13, scope: !384)
!394 = !DILocation(line: 75, column: 16, scope: !384)
!395 = !DILocation(line: 75, column: 9, scope: !384)
!396 = !DILocation(line: 75, column: 14, scope: !384)
!397 = !DILocation(line: 76, column: 9, scope: !384)
!398 = !DILocation(line: 76, column: 14, scope: !384)
!399 = !DILocation(line: 77, column: 21, scope: !384)
!400 = !DILocation(line: 77, column: 5, scope: !384)
!401 = !DILocation(line: 78, column: 1, scope: !384)
!402 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !403, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !7}
!405 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !402, file: !3, line: 80, type: !7)
!406 = !DILocation(line: 80, column: 33, scope: !402)
!407 = !DILocation(line: 82, column: 20, scope: !402)
!408 = !DILocation(line: 82, column: 5, scope: !402)
!409 = !DILocation(line: 83, column: 1, scope: !402)
!410 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !411, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !25}
!413 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !410, file: !3, line: 85, type: !25)
!414 = !DILocation(line: 85, column: 45, scope: !410)
!415 = !DILocation(line: 87, column: 22, scope: !410)
!416 = !DILocation(line: 87, column: 5, scope: !410)
!417 = !DILocation(line: 88, column: 1, scope: !410)
!418 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !419, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !421}
!421 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!422 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !418, file: !3, line: 90, type: !421)
!423 = !DILocation(line: 90, column: 29, scope: !418)
!424 = !DILocation(line: 92, column: 20, scope: !418)
!425 = !DILocation(line: 92, column: 5, scope: !418)
!426 = !DILocation(line: 93, column: 1, scope: !418)
!427 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !428, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !432, line: 100, baseType: !433)
!432 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_056/source_code")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !432, line: 96, size: 64, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !433, file: !432, line: 98, baseType: !23, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !433, file: !432, line: 99, baseType: !23, size: 32, offset: 32)
!437 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !427, file: !3, line: 95, type: !430)
!438 = !DILocation(line: 95, column: 40, scope: !427)
!439 = !DILocation(line: 97, column: 26, scope: !427)
!440 = !DILocation(line: 97, column: 47, scope: !427)
!441 = !DILocation(line: 97, column: 55, scope: !427)
!442 = !DILocation(line: 97, column: 76, scope: !427)
!443 = !DILocation(line: 97, column: 5, scope: !427)
!444 = !DILocation(line: 98, column: 1, scope: !427)
!445 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !446, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !448, !70}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!449 = !DILocalVariable(name: "bytes", arg: 1, scope: !445, file: !3, line: 100, type: !448)
!450 = !DILocation(line: 100, column: 38, scope: !445)
!451 = !DILocalVariable(name: "numBytes", arg: 2, scope: !445, file: !3, line: 100, type: !70)
!452 = !DILocation(line: 100, column: 52, scope: !445)
!453 = !DILocalVariable(name: "i", scope: !445, file: !3, line: 102, type: !70)
!454 = !DILocation(line: 102, column: 12, scope: !445)
!455 = !DILocation(line: 103, column: 12, scope: !456)
!456 = distinct !DILexicalBlock(scope: !445, file: !3, line: 103, column: 5)
!457 = !DILocation(line: 103, column: 10, scope: !456)
!458 = !DILocation(line: 103, column: 17, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !3, line: 103, column: 5)
!460 = !DILocation(line: 103, column: 21, scope: !459)
!461 = !DILocation(line: 103, column: 19, scope: !459)
!462 = !DILocation(line: 103, column: 5, scope: !456)
!463 = !DILocation(line: 105, column: 24, scope: !464)
!464 = distinct !DILexicalBlock(scope: !459, file: !3, line: 104, column: 5)
!465 = !DILocation(line: 105, column: 30, scope: !464)
!466 = !DILocation(line: 105, column: 9, scope: !464)
!467 = !DILocation(line: 106, column: 5, scope: !464)
!468 = !DILocation(line: 103, column: 31, scope: !459)
!469 = !DILocation(line: 103, column: 5, scope: !459)
!470 = distinct !{!470, !462, !471, !196}
!471 = !DILocation(line: 106, column: 5, scope: !456)
!472 = !DILocation(line: 107, column: 5, scope: !445)
!473 = !DILocation(line: 108, column: 1, scope: !445)
!474 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !475, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DISubroutineType(types: !476)
!476 = !{!70, !448, !70, !42}
!477 = !DILocalVariable(name: "bytes", arg: 1, scope: !474, file: !3, line: 113, type: !448)
!478 = !DILocation(line: 113, column: 39, scope: !474)
!479 = !DILocalVariable(name: "numBytes", arg: 2, scope: !474, file: !3, line: 113, type: !70)
!480 = !DILocation(line: 113, column: 53, scope: !474)
!481 = !DILocalVariable(name: "hex", arg: 3, scope: !474, file: !3, line: 113, type: !42)
!482 = !DILocation(line: 113, column: 71, scope: !474)
!483 = !DILocalVariable(name: "numWritten", scope: !474, file: !3, line: 115, type: !70)
!484 = !DILocation(line: 115, column: 12, scope: !474)
!485 = !DILocation(line: 121, column: 5, scope: !474)
!486 = !DILocation(line: 121, column: 12, scope: !474)
!487 = !DILocation(line: 121, column: 25, scope: !474)
!488 = !DILocation(line: 121, column: 23, scope: !474)
!489 = !DILocation(line: 121, column: 34, scope: !474)
!490 = !DILocation(line: 121, column: 37, scope: !474)
!491 = !DILocation(line: 121, column: 67, scope: !474)
!492 = !DILocation(line: 121, column: 70, scope: !474)
!493 = !DILocation(line: 0, scope: !474)
!494 = !DILocalVariable(name: "byte", scope: !495, file: !3, line: 123, type: !23)
!495 = distinct !DILexicalBlock(scope: !474, file: !3, line: 122, column: 5)
!496 = !DILocation(line: 123, column: 13, scope: !495)
!497 = !DILocation(line: 124, column: 17, scope: !495)
!498 = !DILocation(line: 124, column: 25, scope: !495)
!499 = !DILocation(line: 124, column: 23, scope: !495)
!500 = !DILocation(line: 124, column: 9, scope: !495)
!501 = !DILocation(line: 125, column: 45, scope: !495)
!502 = !DILocation(line: 125, column: 29, scope: !495)
!503 = !DILocation(line: 125, column: 9, scope: !495)
!504 = !DILocation(line: 125, column: 15, scope: !495)
!505 = !DILocation(line: 125, column: 27, scope: !495)
!506 = !DILocation(line: 126, column: 9, scope: !495)
!507 = distinct !{!507, !485, !508, !196}
!508 = !DILocation(line: 127, column: 5, scope: !474)
!509 = !DILocation(line: 129, column: 12, scope: !474)
!510 = !DILocation(line: 129, column: 5, scope: !474)
!511 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !512, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DISubroutineType(types: !513)
!513 = !{!70, !448, !70, !308}
!514 = !DILocalVariable(name: "bytes", arg: 1, scope: !511, file: !3, line: 135, type: !448)
!515 = !DILocation(line: 135, column: 41, scope: !511)
!516 = !DILocalVariable(name: "numBytes", arg: 2, scope: !511, file: !3, line: 135, type: !70)
!517 = !DILocation(line: 135, column: 55, scope: !511)
!518 = !DILocalVariable(name: "hex", arg: 3, scope: !511, file: !3, line: 135, type: !308)
!519 = !DILocation(line: 135, column: 76, scope: !511)
!520 = !DILocalVariable(name: "numWritten", scope: !511, file: !3, line: 137, type: !70)
!521 = !DILocation(line: 137, column: 12, scope: !511)
!522 = !DILocation(line: 143, column: 5, scope: !511)
!523 = !DILocation(line: 143, column: 12, scope: !511)
!524 = !DILocation(line: 143, column: 25, scope: !511)
!525 = !DILocation(line: 143, column: 23, scope: !511)
!526 = !DILocation(line: 143, column: 34, scope: !511)
!527 = !DILocation(line: 143, column: 47, scope: !511)
!528 = !DILocation(line: 143, column: 55, scope: !511)
!529 = !DILocation(line: 143, column: 53, scope: !511)
!530 = !DILocation(line: 143, column: 37, scope: !511)
!531 = !DILocation(line: 143, column: 68, scope: !511)
!532 = !DILocation(line: 143, column: 81, scope: !511)
!533 = !DILocation(line: 143, column: 89, scope: !511)
!534 = !DILocation(line: 143, column: 87, scope: !511)
!535 = !DILocation(line: 143, column: 100, scope: !511)
!536 = !DILocation(line: 143, column: 71, scope: !511)
!537 = !DILocation(line: 0, scope: !511)
!538 = !DILocalVariable(name: "byte", scope: !539, file: !3, line: 145, type: !23)
!539 = distinct !DILexicalBlock(scope: !511, file: !3, line: 144, column: 5)
!540 = !DILocation(line: 145, column: 13, scope: !539)
!541 = !DILocation(line: 146, column: 18, scope: !539)
!542 = !DILocation(line: 146, column: 26, scope: !539)
!543 = !DILocation(line: 146, column: 24, scope: !539)
!544 = !DILocation(line: 146, column: 9, scope: !539)
!545 = !DILocation(line: 147, column: 45, scope: !539)
!546 = !DILocation(line: 147, column: 29, scope: !539)
!547 = !DILocation(line: 147, column: 9, scope: !539)
!548 = !DILocation(line: 147, column: 15, scope: !539)
!549 = !DILocation(line: 147, column: 27, scope: !539)
!550 = !DILocation(line: 148, column: 9, scope: !539)
!551 = distinct !{!551, !522, !552, !196}
!552 = !DILocation(line: 149, column: 5, scope: !511)
!553 = !DILocation(line: 151, column: 12, scope: !511)
!554 = !DILocation(line: 151, column: 5, scope: !511)
!555 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !556, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DISubroutineType(types: !557)
!557 = !{!23}
!558 = !DILocation(line: 158, column: 5, scope: !555)
!559 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !556, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 163, column: 5, scope: !559)
!561 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !556, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 168, column: 13, scope: !561)
!563 = !DILocation(line: 168, column: 20, scope: !561)
!564 = !DILocation(line: 168, column: 5, scope: !561)
!565 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !57, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 187, column: 16, scope: !565)
!567 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !57, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 188, column: 16, scope: !567)
!569 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !57, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 189, column: 16, scope: !569)
!571 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !57, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 190, column: 16, scope: !571)
!573 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !57, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 191, column: 16, scope: !573)
!575 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !57, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 192, column: 16, scope: !575)
!577 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !57, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 193, column: 16, scope: !577)
!579 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !57, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 194, column: 16, scope: !579)
!581 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !57, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 195, column: 16, scope: !581)
!583 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !57, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 198, column: 15, scope: !583)
!585 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !57, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 199, column: 15, scope: !585)
!587 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !57, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 200, column: 15, scope: !587)
!589 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !57, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 201, column: 15, scope: !589)
!591 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !57, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 202, column: 15, scope: !591)
!593 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !57, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 203, column: 15, scope: !593)
!595 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !57, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 204, column: 15, scope: !595)
!597 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !57, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 205, column: 15, scope: !597)
!599 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !57, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 206, column: 15, scope: !599)
