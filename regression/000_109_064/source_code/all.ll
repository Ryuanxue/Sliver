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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_66_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !59, metadata !DIExpression()), !dbg !63
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
  %7 = load i8*, i8** %data, align 8, !dbg !96
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !97
  store i8* %7, i8** %arrayidx, align 16, !dbg !98
  %arraydecay4 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !99
  call void @CWE606_Unchecked_Loop_Condition__char_environment_66b_badSink(i8** %arraydecay4), !dbg !100
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
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !107, metadata !DIExpression()), !dbg !108
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !108
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !108
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !109
  store i8* %arraydecay, i8** %data, align 8, !dbg !110
  %1 = load i8*, i8** %data, align 8, !dbg !111
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !112
  %2 = load i8*, i8** %data, align 8, !dbg !113
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !114
  store i8* %2, i8** %arrayidx, align 16, !dbg !115
  %arraydecay1 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !116
  call void @CWE606_Unchecked_Loop_Condition__char_environment_66b_goodG2BSink(i8** %arraydecay1), !dbg !117
  ret void, !dbg !118
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !119 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !122, metadata !DIExpression()), !dbg !123
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
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !151
  store i8* %7, i8** %arrayidx, align 16, !dbg !152
  %arraydecay4 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !153
  call void @CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink(i8** %arraydecay4), !dbg !154
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_66_good() #0 !dbg !156 {
entry:
  call void @goodG2B(), !dbg !157
  call void @goodB2G(), !dbg !158
  ret void, !dbg !159
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_66b_badSink(i8** %dataArray) #0 !dbg !160 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata i8** %data, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !167
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !167
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !167
  store i8* %1, i8** %data, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %i, metadata !168, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata i32* %n, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !173, metadata !DIExpression()), !dbg !174
  %2 = load i8*, i8** %data, align 8, !dbg !175
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !177
  %cmp = icmp eq i32 %call, 1, !dbg !178
  br i1 %cmp, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !180
  store i32 0, i32* %i, align 4, !dbg !182
  br label %for.cond, !dbg !184

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !185
  %4 = load i32, i32* %n, align 4, !dbg !187
  %cmp1 = icmp slt i32 %3, %4, !dbg !188
  br i1 %cmp1, label %for.body, label %for.end, !dbg !189

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !190
  %inc = add nsw i32 %5, 1, !dbg !190
  store i32 %inc, i32* %intVariable, align 4, !dbg !190
  br label %for.inc, !dbg !192

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !193
  %inc2 = add nsw i32 %6, 1, !dbg !193
  store i32 %inc2, i32* %i, align 4, !dbg !193
  br label %for.cond, !dbg !194, !llvm.loop !195

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !198
  call void @printIntLine(i32 %7), !dbg !199
  br label %if.end, !dbg !200

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !201
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_66b_goodG2BSink(i8** %dataArray) #0 !dbg !202 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata i8** %data, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !207
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !207
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !207
  store i8* %1, i8** %data, align 8, !dbg !206
  call void @llvm.dbg.declare(metadata i32* %i, metadata !208, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %n, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !213, metadata !DIExpression()), !dbg !214
  %2 = load i8*, i8** %data, align 8, !dbg !215
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !217
  %cmp = icmp eq i32 %call, 1, !dbg !218
  br i1 %cmp, label %if.then, label %if.end, !dbg !219

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !220
  store i32 0, i32* %i, align 4, !dbg !222
  br label %for.cond, !dbg !224

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !225
  %4 = load i32, i32* %n, align 4, !dbg !227
  %cmp1 = icmp slt i32 %3, %4, !dbg !228
  br i1 %cmp1, label %for.body, label %for.end, !dbg !229

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !230
  %inc = add nsw i32 %5, 1, !dbg !230
  store i32 %inc, i32* %intVariable, align 4, !dbg !230
  br label %for.inc, !dbg !232

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !233
  %inc2 = add nsw i32 %6, 1, !dbg !233
  store i32 %inc2, i32* %i, align 4, !dbg !233
  br label %for.cond, !dbg !234, !llvm.loop !235

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !237
  call void @printIntLine(i32 %7), !dbg !238
  br label %if.end, !dbg !239

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink(i8** %dataArray) #0 !dbg !241 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata i8** %data, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !246
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !246
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !246
  store i8* %1, i8** %data, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata i32* %i, metadata !247, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %n, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !252, metadata !DIExpression()), !dbg !253
  %2 = load i8*, i8** %data, align 8, !dbg !254
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !256
  %cmp = icmp eq i32 %call, 1, !dbg !257
  br i1 %cmp, label %if.then, label %if.end5, !dbg !258

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !259
  %cmp1 = icmp slt i32 %3, 10000, !dbg !262
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !263

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !264
  store i32 0, i32* %i, align 4, !dbg !266
  br label %for.cond, !dbg !268

for.cond:                                         ; preds = %for.inc, %if.then2
  %4 = load i32, i32* %i, align 4, !dbg !269
  %5 = load i32, i32* %n, align 4, !dbg !271
  %cmp3 = icmp slt i32 %4, %5, !dbg !272
  br i1 %cmp3, label %for.body, label %for.end, !dbg !273

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !274
  %inc = add nsw i32 %6, 1, !dbg !274
  store i32 %inc, i32* %intVariable, align 4, !dbg !274
  br label %for.inc, !dbg !276

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !277
  %inc4 = add nsw i32 %7, 1, !dbg !277
  store i32 %inc4, i32* %i, align 4, !dbg !277
  br label %for.cond, !dbg !278, !llvm.loop !279

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !281
  call void @printIntLine(i32 %8), !dbg !282
  br label %if.end, !dbg !283

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !284

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !285
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !286 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !291
  %0 = load i8*, i8** %line.addr, align 8, !dbg !292
  %cmp = icmp ne i8* %0, null, !dbg !294
  br i1 %cmp, label %if.then, label %if.end, !dbg !295

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !296
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !298
  br label %if.end, !dbg !299

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !300
  ret void, !dbg !301
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !302 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load i8*, i8** %line.addr, align 8, !dbg !305
  %cmp = icmp ne i8* %0, null, !dbg !307
  br i1 %cmp, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !309
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !311
  br label %if.end, !dbg !312

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !314 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load i32*, i32** %line.addr, align 8, !dbg !321
  %cmp = icmp ne i32* %0, null, !dbg !323
  br i1 %cmp, label %if.then, label %if.end, !dbg !324

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !325
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !327
  br label %if.end, !dbg !328

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !329
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !330 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !335
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !338 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !344
  %conv = sext i16 %0 to i32, !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !347 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !353
  %conv = fpext float %0 to double, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !356 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !360, metadata !DIExpression()), !dbg !361
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !362
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !363
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !365 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !377 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !382
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.13, i64 0, i64 0), i64 %0), !dbg !383
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !385 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !390
  %conv = sext i8 %0 to i32, !dbg !390
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !393 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !398, metadata !DIExpression()), !dbg !402
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !403
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !404
  store i32 %0, i32* %arrayidx, align 4, !dbg !405
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !406
  store i32 0, i32* %arrayidx1, align 4, !dbg !407
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !408
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !411 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !416
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !417
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !419 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !424
  %conv = zext i8 %0 to i32, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !427 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !431, metadata !DIExpression()), !dbg !432
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !433
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !434
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !436 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !448
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !449
  %1 = load i32, i32* %intOne, align 4, !dbg !449
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !450
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !451
  %3 = load i32, i32* %intTwo, align 4, !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !454 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !458, metadata !DIExpression()), !dbg !459
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !460, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.declare(metadata i64* %i, metadata !462, metadata !DIExpression()), !dbg !463
  store i64 0, i64* %i, align 8, !dbg !464
  br label %for.cond, !dbg !466

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !467
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !469
  %cmp = icmp ult i64 %0, %1, !dbg !470
  br i1 %cmp, label %for.body, label %for.end, !dbg !471

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !472
  %3 = load i64, i64* %i, align 8, !dbg !474
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !472
  %4 = load i8, i8* %arrayidx, align 1, !dbg !472
  %conv = zext i8 %4 to i32, !dbg !472
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !475
  br label %for.inc, !dbg !476

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !477
  %inc = add i64 %5, 1, !dbg !477
  store i64 %inc, i64* %i, align 8, !dbg !477
  br label %for.cond, !dbg !478, !llvm.loop !479

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !481
  ret void, !dbg !482
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !483 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !486, metadata !DIExpression()), !dbg !487
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !488, metadata !DIExpression()), !dbg !489
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !492, metadata !DIExpression()), !dbg !493
  store i64 0, i64* %numWritten, align 8, !dbg !493
  br label %while.cond, !dbg !494

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !495
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !496
  %cmp = icmp ult i64 %0, %1, !dbg !497
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !498

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !499
  %2 = load i16*, i16** %call, align 8, !dbg !499
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !499
  %4 = load i64, i64* %numWritten, align 8, !dbg !499
  %mul = mul i64 2, %4, !dbg !499
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !499
  %5 = load i8, i8* %arrayidx, align 1, !dbg !499
  %conv = sext i8 %5 to i32, !dbg !499
  %idxprom = sext i32 %conv to i64, !dbg !499
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !499
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !499
  %conv2 = zext i16 %6 to i32, !dbg !499
  %and = and i32 %conv2, 4096, !dbg !499
  %tobool = icmp ne i32 %and, 0, !dbg !499
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !500

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !501
  %7 = load i16*, i16** %call3, align 8, !dbg !501
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !501
  %9 = load i64, i64* %numWritten, align 8, !dbg !501
  %mul4 = mul i64 2, %9, !dbg !501
  %add = add i64 %mul4, 1, !dbg !501
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !501
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !501
  %conv6 = sext i8 %10 to i32, !dbg !501
  %idxprom7 = sext i32 %conv6 to i64, !dbg !501
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !501
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !501
  %conv9 = zext i16 %11 to i32, !dbg !501
  %and10 = and i32 %conv9, 4096, !dbg !501
  %tobool11 = icmp ne i32 %and10, 0, !dbg !500
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !502
  br i1 %12, label %while.body, label %while.end, !dbg !494

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !503, metadata !DIExpression()), !dbg !505
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !506
  %14 = load i64, i64* %numWritten, align 8, !dbg !507
  %mul12 = mul i64 2, %14, !dbg !508
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !506
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !509
  %15 = load i32, i32* %byte, align 4, !dbg !510
  %conv15 = trunc i32 %15 to i8, !dbg !511
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !512
  %17 = load i64, i64* %numWritten, align 8, !dbg !513
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !512
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !514
  %18 = load i64, i64* %numWritten, align 8, !dbg !515
  %inc = add i64 %18, 1, !dbg !515
  store i64 %inc, i64* %numWritten, align 8, !dbg !515
  br label %while.cond, !dbg !494, !llvm.loop !516

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !518
  ret i64 %19, !dbg !519
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !520 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !523, metadata !DIExpression()), !dbg !524
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !525, metadata !DIExpression()), !dbg !526
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !527, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !529, metadata !DIExpression()), !dbg !530
  store i64 0, i64* %numWritten, align 8, !dbg !530
  br label %while.cond, !dbg !531

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !532
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !533
  %cmp = icmp ult i64 %0, %1, !dbg !534
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !535

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !536
  %3 = load i64, i64* %numWritten, align 8, !dbg !537
  %mul = mul i64 2, %3, !dbg !538
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !536
  %4 = load i32, i32* %arrayidx, align 4, !dbg !536
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !539
  %tobool = icmp ne i32 %call, 0, !dbg !539
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !540

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !541
  %6 = load i64, i64* %numWritten, align 8, !dbg !542
  %mul1 = mul i64 2, %6, !dbg !543
  %add = add i64 %mul1, 1, !dbg !544
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !541
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !541
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !545
  %tobool4 = icmp ne i32 %call3, 0, !dbg !540
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !546
  br i1 %8, label %while.body, label %while.end, !dbg !531

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !547, metadata !DIExpression()), !dbg !549
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !550
  %10 = load i64, i64* %numWritten, align 8, !dbg !551
  %mul5 = mul i64 2, %10, !dbg !552
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !550
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !553
  %11 = load i32, i32* %byte, align 4, !dbg !554
  %conv = trunc i32 %11 to i8, !dbg !555
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !556
  %13 = load i64, i64* %numWritten, align 8, !dbg !557
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !556
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !558
  %14 = load i64, i64* %numWritten, align 8, !dbg !559
  %inc = add i64 %14, 1, !dbg !559
  store i64 %inc, i64* %numWritten, align 8, !dbg !559
  br label %while.cond, !dbg !531, !llvm.loop !560

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !562
  ret i64 %15, !dbg !563
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !564 {
entry:
  ret i32 1, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !568 {
entry:
  ret i32 0, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !570 {
entry:
  %call = call i32 @rand() #8, !dbg !571
  %rem = srem i32 %call, 2, !dbg !572
  ret i32 %rem, !dbg !573
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !588 {
entry:
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !590 {
entry:
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !592 {
entry:
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !594 {
entry:
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !596 {
entry:
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !598 {
entry:
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !600 {
entry:
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !602 {
entry:
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !604 {
entry:
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !606 {
entry:
  ret void, !dbg !607
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !608 {
entry:
  ret void, !dbg !609
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_064/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_66a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_064/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_66b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_064/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_66_bad", scope: !45, file: !45, line: 39, type: !55, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 41, type: !42)
!58 = !DILocation(line: 41, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataArray", scope: !54, file: !45, line: 42, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 320, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 5)
!63 = !DILocation(line: 42, column: 12, scope: !54)
!64 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 43, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 100)
!68 = !DILocation(line: 43, column: 10, scope: !54)
!69 = !DILocation(line: 44, column: 12, scope: !54)
!70 = !DILocation(line: 44, column: 10, scope: !54)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !45, line: 47, type: !73)
!72 = distinct !DILexicalBlock(scope: !54, file: !45, line: 45, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DILocation(line: 47, column: 16, scope: !72)
!77 = !DILocation(line: 47, column: 33, scope: !72)
!78 = !DILocation(line: 47, column: 26, scope: !72)
!79 = !DILocalVariable(name: "environment", scope: !72, file: !45, line: 48, type: !42)
!80 = !DILocation(line: 48, column: 16, scope: !72)
!81 = !DILocation(line: 48, column: 30, scope: !72)
!82 = !DILocation(line: 50, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !72, file: !45, line: 50, column: 13)
!84 = !DILocation(line: 50, column: 25, scope: !83)
!85 = !DILocation(line: 50, column: 13, scope: !72)
!86 = !DILocation(line: 53, column: 21, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !45, line: 51, column: 9)
!88 = !DILocation(line: 53, column: 26, scope: !87)
!89 = !DILocation(line: 53, column: 25, scope: !87)
!90 = !DILocation(line: 53, column: 35, scope: !87)
!91 = !DILocation(line: 53, column: 52, scope: !87)
!92 = !DILocation(line: 53, column: 51, scope: !87)
!93 = !DILocation(line: 53, column: 59, scope: !87)
!94 = !DILocation(line: 53, column: 13, scope: !87)
!95 = !DILocation(line: 54, column: 9, scope: !87)
!96 = !DILocation(line: 57, column: 20, scope: !54)
!97 = !DILocation(line: 57, column: 5, scope: !54)
!98 = !DILocation(line: 57, column: 18, scope: !54)
!99 = !DILocation(line: 58, column: 67, scope: !54)
!100 = !DILocation(line: 58, column: 5, scope: !54)
!101 = !DILocation(line: 59, column: 1, scope: !54)
!102 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 67, type: !55, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!103 = !DILocalVariable(name: "data", scope: !102, file: !45, line: 69, type: !42)
!104 = !DILocation(line: 69, column: 12, scope: !102)
!105 = !DILocalVariable(name: "dataArray", scope: !102, file: !45, line: 70, type: !60)
!106 = !DILocation(line: 70, column: 12, scope: !102)
!107 = !DILocalVariable(name: "dataBuffer", scope: !102, file: !45, line: 71, type: !65)
!108 = !DILocation(line: 71, column: 10, scope: !102)
!109 = !DILocation(line: 72, column: 12, scope: !102)
!110 = !DILocation(line: 72, column: 10, scope: !102)
!111 = !DILocation(line: 74, column: 12, scope: !102)
!112 = !DILocation(line: 74, column: 5, scope: !102)
!113 = !DILocation(line: 75, column: 20, scope: !102)
!114 = !DILocation(line: 75, column: 5, scope: !102)
!115 = !DILocation(line: 75, column: 18, scope: !102)
!116 = !DILocation(line: 76, column: 71, scope: !102)
!117 = !DILocation(line: 76, column: 5, scope: !102)
!118 = !DILocation(line: 77, column: 1, scope: !102)
!119 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 81, type: !55, scopeLine: 82, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!120 = !DILocalVariable(name: "data", scope: !119, file: !45, line: 83, type: !42)
!121 = !DILocation(line: 83, column: 12, scope: !119)
!122 = !DILocalVariable(name: "dataArray", scope: !119, file: !45, line: 84, type: !60)
!123 = !DILocation(line: 84, column: 12, scope: !119)
!124 = !DILocalVariable(name: "dataBuffer", scope: !119, file: !45, line: 85, type: !65)
!125 = !DILocation(line: 85, column: 10, scope: !119)
!126 = !DILocation(line: 86, column: 12, scope: !119)
!127 = !DILocation(line: 86, column: 10, scope: !119)
!128 = !DILocalVariable(name: "dataLen", scope: !129, file: !45, line: 89, type: !73)
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
!150 = !DILocation(line: 98, column: 20, scope: !119)
!151 = !DILocation(line: 98, column: 5, scope: !119)
!152 = !DILocation(line: 98, column: 18, scope: !119)
!153 = !DILocation(line: 99, column: 71, scope: !119)
!154 = !DILocation(line: 99, column: 5, scope: !119)
!155 = !DILocation(line: 100, column: 1, scope: !119)
!156 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_66_good", scope: !45, file: !45, line: 102, type: !55, scopeLine: 103, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!157 = !DILocation(line: 104, column: 5, scope: !156)
!158 = !DILocation(line: 105, column: 5, scope: !156)
!159 = !DILocation(line: 106, column: 1, scope: !156)
!160 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_66b_badSink", scope: !49, file: !49, line: 36, type: !161, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !41}
!163 = !DILocalVariable(name: "dataArray", arg: 1, scope: !160, file: !49, line: 36, type: !41)
!164 = !DILocation(line: 36, column: 75, scope: !160)
!165 = !DILocalVariable(name: "data", scope: !160, file: !49, line: 39, type: !42)
!166 = !DILocation(line: 39, column: 12, scope: !160)
!167 = !DILocation(line: 39, column: 19, scope: !160)
!168 = !DILocalVariable(name: "i", scope: !169, file: !49, line: 41, type: !23)
!169 = distinct !DILexicalBlock(scope: !160, file: !49, line: 40, column: 5)
!170 = !DILocation(line: 41, column: 13, scope: !169)
!171 = !DILocalVariable(name: "n", scope: !169, file: !49, line: 41, type: !23)
!172 = !DILocation(line: 41, column: 16, scope: !169)
!173 = !DILocalVariable(name: "intVariable", scope: !169, file: !49, line: 41, type: !23)
!174 = !DILocation(line: 41, column: 19, scope: !169)
!175 = !DILocation(line: 42, column: 20, scope: !176)
!176 = distinct !DILexicalBlock(scope: !169, file: !49, line: 42, column: 13)
!177 = !DILocation(line: 42, column: 13, scope: !176)
!178 = !DILocation(line: 42, column: 36, scope: !176)
!179 = !DILocation(line: 42, column: 13, scope: !169)
!180 = !DILocation(line: 45, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !176, file: !49, line: 43, column: 9)
!182 = !DILocation(line: 46, column: 20, scope: !183)
!183 = distinct !DILexicalBlock(scope: !181, file: !49, line: 46, column: 13)
!184 = !DILocation(line: 46, column: 18, scope: !183)
!185 = !DILocation(line: 46, column: 25, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !49, line: 46, column: 13)
!187 = !DILocation(line: 46, column: 29, scope: !186)
!188 = !DILocation(line: 46, column: 27, scope: !186)
!189 = !DILocation(line: 46, column: 13, scope: !183)
!190 = !DILocation(line: 49, column: 28, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !49, line: 47, column: 13)
!192 = !DILocation(line: 50, column: 13, scope: !191)
!193 = !DILocation(line: 46, column: 33, scope: !186)
!194 = !DILocation(line: 46, column: 13, scope: !186)
!195 = distinct !{!195, !189, !196, !197}
!196 = !DILocation(line: 50, column: 13, scope: !183)
!197 = !{!"llvm.loop.mustprogress"}
!198 = !DILocation(line: 51, column: 26, scope: !181)
!199 = !DILocation(line: 51, column: 13, scope: !181)
!200 = !DILocation(line: 52, column: 9, scope: !181)
!201 = !DILocation(line: 54, column: 1, scope: !160)
!202 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_66b_goodG2BSink", scope: !49, file: !49, line: 61, type: !161, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!203 = !DILocalVariable(name: "dataArray", arg: 1, scope: !202, file: !49, line: 61, type: !41)
!204 = !DILocation(line: 61, column: 79, scope: !202)
!205 = !DILocalVariable(name: "data", scope: !202, file: !49, line: 63, type: !42)
!206 = !DILocation(line: 63, column: 12, scope: !202)
!207 = !DILocation(line: 63, column: 19, scope: !202)
!208 = !DILocalVariable(name: "i", scope: !209, file: !49, line: 65, type: !23)
!209 = distinct !DILexicalBlock(scope: !202, file: !49, line: 64, column: 5)
!210 = !DILocation(line: 65, column: 13, scope: !209)
!211 = !DILocalVariable(name: "n", scope: !209, file: !49, line: 65, type: !23)
!212 = !DILocation(line: 65, column: 16, scope: !209)
!213 = !DILocalVariable(name: "intVariable", scope: !209, file: !49, line: 65, type: !23)
!214 = !DILocation(line: 65, column: 19, scope: !209)
!215 = !DILocation(line: 66, column: 20, scope: !216)
!216 = distinct !DILexicalBlock(scope: !209, file: !49, line: 66, column: 13)
!217 = !DILocation(line: 66, column: 13, scope: !216)
!218 = !DILocation(line: 66, column: 36, scope: !216)
!219 = !DILocation(line: 66, column: 13, scope: !209)
!220 = !DILocation(line: 69, column: 25, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !49, line: 67, column: 9)
!222 = !DILocation(line: 70, column: 20, scope: !223)
!223 = distinct !DILexicalBlock(scope: !221, file: !49, line: 70, column: 13)
!224 = !DILocation(line: 70, column: 18, scope: !223)
!225 = !DILocation(line: 70, column: 25, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !49, line: 70, column: 13)
!227 = !DILocation(line: 70, column: 29, scope: !226)
!228 = !DILocation(line: 70, column: 27, scope: !226)
!229 = !DILocation(line: 70, column: 13, scope: !223)
!230 = !DILocation(line: 73, column: 28, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !49, line: 71, column: 13)
!232 = !DILocation(line: 74, column: 13, scope: !231)
!233 = !DILocation(line: 70, column: 33, scope: !226)
!234 = !DILocation(line: 70, column: 13, scope: !226)
!235 = distinct !{!235, !229, !236, !197}
!236 = !DILocation(line: 74, column: 13, scope: !223)
!237 = !DILocation(line: 75, column: 26, scope: !221)
!238 = !DILocation(line: 75, column: 13, scope: !221)
!239 = !DILocation(line: 76, column: 9, scope: !221)
!240 = !DILocation(line: 78, column: 1, scope: !202)
!241 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink", scope: !49, file: !49, line: 81, type: !161, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!242 = !DILocalVariable(name: "dataArray", arg: 1, scope: !241, file: !49, line: 81, type: !41)
!243 = !DILocation(line: 81, column: 79, scope: !241)
!244 = !DILocalVariable(name: "data", scope: !241, file: !49, line: 83, type: !42)
!245 = !DILocation(line: 83, column: 12, scope: !241)
!246 = !DILocation(line: 83, column: 19, scope: !241)
!247 = !DILocalVariable(name: "i", scope: !248, file: !49, line: 85, type: !23)
!248 = distinct !DILexicalBlock(scope: !241, file: !49, line: 84, column: 5)
!249 = !DILocation(line: 85, column: 13, scope: !248)
!250 = !DILocalVariable(name: "n", scope: !248, file: !49, line: 85, type: !23)
!251 = !DILocation(line: 85, column: 16, scope: !248)
!252 = !DILocalVariable(name: "intVariable", scope: !248, file: !49, line: 85, type: !23)
!253 = !DILocation(line: 85, column: 19, scope: !248)
!254 = !DILocation(line: 86, column: 20, scope: !255)
!255 = distinct !DILexicalBlock(scope: !248, file: !49, line: 86, column: 13)
!256 = !DILocation(line: 86, column: 13, scope: !255)
!257 = !DILocation(line: 86, column: 36, scope: !255)
!258 = !DILocation(line: 86, column: 13, scope: !248)
!259 = !DILocation(line: 89, column: 17, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !49, line: 89, column: 17)
!261 = distinct !DILexicalBlock(scope: !255, file: !49, line: 87, column: 9)
!262 = !DILocation(line: 89, column: 19, scope: !260)
!263 = !DILocation(line: 89, column: 17, scope: !261)
!264 = !DILocation(line: 91, column: 29, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !49, line: 90, column: 13)
!266 = !DILocation(line: 92, column: 24, scope: !267)
!267 = distinct !DILexicalBlock(scope: !265, file: !49, line: 92, column: 17)
!268 = !DILocation(line: 92, column: 22, scope: !267)
!269 = !DILocation(line: 92, column: 29, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !49, line: 92, column: 17)
!271 = !DILocation(line: 92, column: 33, scope: !270)
!272 = !DILocation(line: 92, column: 31, scope: !270)
!273 = !DILocation(line: 92, column: 17, scope: !267)
!274 = !DILocation(line: 95, column: 32, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !49, line: 93, column: 17)
!276 = !DILocation(line: 96, column: 17, scope: !275)
!277 = !DILocation(line: 92, column: 37, scope: !270)
!278 = !DILocation(line: 92, column: 17, scope: !270)
!279 = distinct !{!279, !273, !280, !197}
!280 = !DILocation(line: 96, column: 17, scope: !267)
!281 = !DILocation(line: 97, column: 30, scope: !265)
!282 = !DILocation(line: 97, column: 17, scope: !265)
!283 = !DILocation(line: 98, column: 13, scope: !265)
!284 = !DILocation(line: 99, column: 9, scope: !261)
!285 = !DILocation(line: 101, column: 1, scope: !241)
!286 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !287, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !42}
!289 = !DILocalVariable(name: "line", arg: 1, scope: !286, file: !3, line: 11, type: !42)
!290 = !DILocation(line: 11, column: 25, scope: !286)
!291 = !DILocation(line: 13, column: 1, scope: !286)
!292 = !DILocation(line: 14, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !286, file: !3, line: 14, column: 8)
!294 = !DILocation(line: 14, column: 13, scope: !293)
!295 = !DILocation(line: 14, column: 8, scope: !286)
!296 = !DILocation(line: 16, column: 24, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !3, line: 15, column: 5)
!298 = !DILocation(line: 16, column: 9, scope: !297)
!299 = !DILocation(line: 17, column: 5, scope: !297)
!300 = !DILocation(line: 18, column: 5, scope: !286)
!301 = !DILocation(line: 19, column: 1, scope: !286)
!302 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!303 = !DILocalVariable(name: "line", arg: 1, scope: !302, file: !3, line: 20, type: !42)
!304 = !DILocation(line: 20, column: 29, scope: !302)
!305 = !DILocation(line: 22, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !3, line: 22, column: 8)
!307 = !DILocation(line: 22, column: 13, scope: !306)
!308 = !DILocation(line: 22, column: 8, scope: !302)
!309 = !DILocation(line: 24, column: 24, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !3, line: 23, column: 5)
!311 = !DILocation(line: 24, column: 9, scope: !310)
!312 = !DILocation(line: 25, column: 5, scope: !310)
!313 = !DILocation(line: 26, column: 1, scope: !302)
!314 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !315, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 74, baseType: !23)
!319 = !DILocalVariable(name: "line", arg: 1, scope: !314, file: !3, line: 27, type: !317)
!320 = !DILocation(line: 27, column: 29, scope: !314)
!321 = !DILocation(line: 29, column: 8, scope: !322)
!322 = distinct !DILexicalBlock(scope: !314, file: !3, line: 29, column: 8)
!323 = !DILocation(line: 29, column: 13, scope: !322)
!324 = !DILocation(line: 29, column: 8, scope: !314)
!325 = !DILocation(line: 31, column: 27, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !3, line: 30, column: 5)
!327 = !DILocation(line: 31, column: 9, scope: !326)
!328 = !DILocation(line: 32, column: 5, scope: !326)
!329 = !DILocation(line: 33, column: 1, scope: !314)
!330 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !331, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !23}
!333 = !DILocalVariable(name: "intNumber", arg: 1, scope: !330, file: !3, line: 35, type: !23)
!334 = !DILocation(line: 35, column: 24, scope: !330)
!335 = !DILocation(line: 37, column: 20, scope: !330)
!336 = !DILocation(line: 37, column: 5, scope: !330)
!337 = !DILocation(line: 38, column: 1, scope: !330)
!338 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !339, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341}
!341 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!342 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !338, file: !3, line: 40, type: !341)
!343 = !DILocation(line: 40, column: 28, scope: !338)
!344 = !DILocation(line: 42, column: 21, scope: !338)
!345 = !DILocation(line: 42, column: 5, scope: !338)
!346 = !DILocation(line: 43, column: 1, scope: !338)
!347 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !348, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !350}
!350 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!351 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !347, file: !3, line: 45, type: !350)
!352 = !DILocation(line: 45, column: 28, scope: !347)
!353 = !DILocation(line: 47, column: 20, scope: !347)
!354 = !DILocation(line: 47, column: 5, scope: !347)
!355 = !DILocation(line: 48, column: 1, scope: !347)
!356 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !357, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359}
!359 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!360 = !DILocalVariable(name: "longNumber", arg: 1, scope: !356, file: !3, line: 50, type: !359)
!361 = !DILocation(line: 50, column: 26, scope: !356)
!362 = !DILocation(line: 52, column: 21, scope: !356)
!363 = !DILocation(line: 52, column: 5, scope: !356)
!364 = !DILocation(line: 53, column: 1, scope: !356)
!365 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !366, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !368}
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !369, line: 27, baseType: !370)
!369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !371, line: 44, baseType: !359)
!371 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!372 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !365, file: !3, line: 55, type: !368)
!373 = !DILocation(line: 55, column: 33, scope: !365)
!374 = !DILocation(line: 57, column: 29, scope: !365)
!375 = !DILocation(line: 57, column: 5, scope: !365)
!376 = !DILocation(line: 58, column: 1, scope: !365)
!377 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !378, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !73}
!380 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !377, file: !3, line: 60, type: !73)
!381 = !DILocation(line: 60, column: 29, scope: !377)
!382 = !DILocation(line: 62, column: 21, scope: !377)
!383 = !DILocation(line: 62, column: 5, scope: !377)
!384 = !DILocation(line: 63, column: 1, scope: !377)
!385 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !386, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !43}
!388 = !DILocalVariable(name: "charHex", arg: 1, scope: !385, file: !3, line: 65, type: !43)
!389 = !DILocation(line: 65, column: 29, scope: !385)
!390 = !DILocation(line: 67, column: 22, scope: !385)
!391 = !DILocation(line: 67, column: 5, scope: !385)
!392 = !DILocation(line: 68, column: 1, scope: !385)
!393 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !394, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !318}
!396 = !DILocalVariable(name: "wideChar", arg: 1, scope: !393, file: !3, line: 70, type: !318)
!397 = !DILocation(line: 70, column: 29, scope: !393)
!398 = !DILocalVariable(name: "s", scope: !393, file: !3, line: 74, type: !399)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 64, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 2)
!402 = !DILocation(line: 74, column: 13, scope: !393)
!403 = !DILocation(line: 75, column: 16, scope: !393)
!404 = !DILocation(line: 75, column: 9, scope: !393)
!405 = !DILocation(line: 75, column: 14, scope: !393)
!406 = !DILocation(line: 76, column: 9, scope: !393)
!407 = !DILocation(line: 76, column: 14, scope: !393)
!408 = !DILocation(line: 77, column: 21, scope: !393)
!409 = !DILocation(line: 77, column: 5, scope: !393)
!410 = !DILocation(line: 78, column: 1, scope: !393)
!411 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !412, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !7}
!414 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !411, file: !3, line: 80, type: !7)
!415 = !DILocation(line: 80, column: 33, scope: !411)
!416 = !DILocation(line: 82, column: 20, scope: !411)
!417 = !DILocation(line: 82, column: 5, scope: !411)
!418 = !DILocation(line: 83, column: 1, scope: !411)
!419 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !420, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !25}
!422 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !419, file: !3, line: 85, type: !25)
!423 = !DILocation(line: 85, column: 45, scope: !419)
!424 = !DILocation(line: 87, column: 22, scope: !419)
!425 = !DILocation(line: 87, column: 5, scope: !419)
!426 = !DILocation(line: 88, column: 1, scope: !419)
!427 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !428, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !430}
!430 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!431 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !427, file: !3, line: 90, type: !430)
!432 = !DILocation(line: 90, column: 29, scope: !427)
!433 = !DILocation(line: 92, column: 20, scope: !427)
!434 = !DILocation(line: 92, column: 5, scope: !427)
!435 = !DILocation(line: 93, column: 1, scope: !427)
!436 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !437, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !441, line: 100, baseType: !442)
!441 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_064/source_code")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !441, line: 96, size: 64, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !442, file: !441, line: 98, baseType: !23, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !442, file: !441, line: 99, baseType: !23, size: 32, offset: 32)
!446 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !436, file: !3, line: 95, type: !439)
!447 = !DILocation(line: 95, column: 40, scope: !436)
!448 = !DILocation(line: 97, column: 26, scope: !436)
!449 = !DILocation(line: 97, column: 47, scope: !436)
!450 = !DILocation(line: 97, column: 55, scope: !436)
!451 = !DILocation(line: 97, column: 76, scope: !436)
!452 = !DILocation(line: 97, column: 5, scope: !436)
!453 = !DILocation(line: 98, column: 1, scope: !436)
!454 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !455, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !457, !73}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!458 = !DILocalVariable(name: "bytes", arg: 1, scope: !454, file: !3, line: 100, type: !457)
!459 = !DILocation(line: 100, column: 38, scope: !454)
!460 = !DILocalVariable(name: "numBytes", arg: 2, scope: !454, file: !3, line: 100, type: !73)
!461 = !DILocation(line: 100, column: 52, scope: !454)
!462 = !DILocalVariable(name: "i", scope: !454, file: !3, line: 102, type: !73)
!463 = !DILocation(line: 102, column: 12, scope: !454)
!464 = !DILocation(line: 103, column: 12, scope: !465)
!465 = distinct !DILexicalBlock(scope: !454, file: !3, line: 103, column: 5)
!466 = !DILocation(line: 103, column: 10, scope: !465)
!467 = !DILocation(line: 103, column: 17, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !3, line: 103, column: 5)
!469 = !DILocation(line: 103, column: 21, scope: !468)
!470 = !DILocation(line: 103, column: 19, scope: !468)
!471 = !DILocation(line: 103, column: 5, scope: !465)
!472 = !DILocation(line: 105, column: 24, scope: !473)
!473 = distinct !DILexicalBlock(scope: !468, file: !3, line: 104, column: 5)
!474 = !DILocation(line: 105, column: 30, scope: !473)
!475 = !DILocation(line: 105, column: 9, scope: !473)
!476 = !DILocation(line: 106, column: 5, scope: !473)
!477 = !DILocation(line: 103, column: 31, scope: !468)
!478 = !DILocation(line: 103, column: 5, scope: !468)
!479 = distinct !{!479, !471, !480, !197}
!480 = !DILocation(line: 106, column: 5, scope: !465)
!481 = !DILocation(line: 107, column: 5, scope: !454)
!482 = !DILocation(line: 108, column: 1, scope: !454)
!483 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !484, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!484 = !DISubroutineType(types: !485)
!485 = !{!73, !457, !73, !42}
!486 = !DILocalVariable(name: "bytes", arg: 1, scope: !483, file: !3, line: 113, type: !457)
!487 = !DILocation(line: 113, column: 39, scope: !483)
!488 = !DILocalVariable(name: "numBytes", arg: 2, scope: !483, file: !3, line: 113, type: !73)
!489 = !DILocation(line: 113, column: 53, scope: !483)
!490 = !DILocalVariable(name: "hex", arg: 3, scope: !483, file: !3, line: 113, type: !42)
!491 = !DILocation(line: 113, column: 71, scope: !483)
!492 = !DILocalVariable(name: "numWritten", scope: !483, file: !3, line: 115, type: !73)
!493 = !DILocation(line: 115, column: 12, scope: !483)
!494 = !DILocation(line: 121, column: 5, scope: !483)
!495 = !DILocation(line: 121, column: 12, scope: !483)
!496 = !DILocation(line: 121, column: 25, scope: !483)
!497 = !DILocation(line: 121, column: 23, scope: !483)
!498 = !DILocation(line: 121, column: 34, scope: !483)
!499 = !DILocation(line: 121, column: 37, scope: !483)
!500 = !DILocation(line: 121, column: 67, scope: !483)
!501 = !DILocation(line: 121, column: 70, scope: !483)
!502 = !DILocation(line: 0, scope: !483)
!503 = !DILocalVariable(name: "byte", scope: !504, file: !3, line: 123, type: !23)
!504 = distinct !DILexicalBlock(scope: !483, file: !3, line: 122, column: 5)
!505 = !DILocation(line: 123, column: 13, scope: !504)
!506 = !DILocation(line: 124, column: 17, scope: !504)
!507 = !DILocation(line: 124, column: 25, scope: !504)
!508 = !DILocation(line: 124, column: 23, scope: !504)
!509 = !DILocation(line: 124, column: 9, scope: !504)
!510 = !DILocation(line: 125, column: 45, scope: !504)
!511 = !DILocation(line: 125, column: 29, scope: !504)
!512 = !DILocation(line: 125, column: 9, scope: !504)
!513 = !DILocation(line: 125, column: 15, scope: !504)
!514 = !DILocation(line: 125, column: 27, scope: !504)
!515 = !DILocation(line: 126, column: 9, scope: !504)
!516 = distinct !{!516, !494, !517, !197}
!517 = !DILocation(line: 127, column: 5, scope: !483)
!518 = !DILocation(line: 129, column: 12, scope: !483)
!519 = !DILocation(line: 129, column: 5, scope: !483)
!520 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !521, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DISubroutineType(types: !522)
!522 = !{!73, !457, !73, !317}
!523 = !DILocalVariable(name: "bytes", arg: 1, scope: !520, file: !3, line: 135, type: !457)
!524 = !DILocation(line: 135, column: 41, scope: !520)
!525 = !DILocalVariable(name: "numBytes", arg: 2, scope: !520, file: !3, line: 135, type: !73)
!526 = !DILocation(line: 135, column: 55, scope: !520)
!527 = !DILocalVariable(name: "hex", arg: 3, scope: !520, file: !3, line: 135, type: !317)
!528 = !DILocation(line: 135, column: 76, scope: !520)
!529 = !DILocalVariable(name: "numWritten", scope: !520, file: !3, line: 137, type: !73)
!530 = !DILocation(line: 137, column: 12, scope: !520)
!531 = !DILocation(line: 143, column: 5, scope: !520)
!532 = !DILocation(line: 143, column: 12, scope: !520)
!533 = !DILocation(line: 143, column: 25, scope: !520)
!534 = !DILocation(line: 143, column: 23, scope: !520)
!535 = !DILocation(line: 143, column: 34, scope: !520)
!536 = !DILocation(line: 143, column: 47, scope: !520)
!537 = !DILocation(line: 143, column: 55, scope: !520)
!538 = !DILocation(line: 143, column: 53, scope: !520)
!539 = !DILocation(line: 143, column: 37, scope: !520)
!540 = !DILocation(line: 143, column: 68, scope: !520)
!541 = !DILocation(line: 143, column: 81, scope: !520)
!542 = !DILocation(line: 143, column: 89, scope: !520)
!543 = !DILocation(line: 143, column: 87, scope: !520)
!544 = !DILocation(line: 143, column: 100, scope: !520)
!545 = !DILocation(line: 143, column: 71, scope: !520)
!546 = !DILocation(line: 0, scope: !520)
!547 = !DILocalVariable(name: "byte", scope: !548, file: !3, line: 145, type: !23)
!548 = distinct !DILexicalBlock(scope: !520, file: !3, line: 144, column: 5)
!549 = !DILocation(line: 145, column: 13, scope: !548)
!550 = !DILocation(line: 146, column: 18, scope: !548)
!551 = !DILocation(line: 146, column: 26, scope: !548)
!552 = !DILocation(line: 146, column: 24, scope: !548)
!553 = !DILocation(line: 146, column: 9, scope: !548)
!554 = !DILocation(line: 147, column: 45, scope: !548)
!555 = !DILocation(line: 147, column: 29, scope: !548)
!556 = !DILocation(line: 147, column: 9, scope: !548)
!557 = !DILocation(line: 147, column: 15, scope: !548)
!558 = !DILocation(line: 147, column: 27, scope: !548)
!559 = !DILocation(line: 148, column: 9, scope: !548)
!560 = distinct !{!560, !531, !561, !197}
!561 = !DILocation(line: 149, column: 5, scope: !520)
!562 = !DILocation(line: 151, column: 12, scope: !520)
!563 = !DILocation(line: 151, column: 5, scope: !520)
!564 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !565, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DISubroutineType(types: !566)
!566 = !{!23}
!567 = !DILocation(line: 158, column: 5, scope: !564)
!568 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !565, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 163, column: 5, scope: !568)
!570 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !565, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 168, column: 13, scope: !570)
!572 = !DILocation(line: 168, column: 20, scope: !570)
!573 = !DILocation(line: 168, column: 5, scope: !570)
!574 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DILocation(line: 187, column: 16, scope: !574)
!576 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 188, column: 16, scope: !576)
!578 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 189, column: 16, scope: !578)
!580 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 190, column: 16, scope: !580)
!582 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DILocation(line: 191, column: 16, scope: !582)
!584 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DILocation(line: 192, column: 16, scope: !584)
!586 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DILocation(line: 193, column: 16, scope: !586)
!588 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DILocation(line: 194, column: 16, scope: !588)
!590 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!591 = !DILocation(line: 195, column: 16, scope: !590)
!592 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DILocation(line: 198, column: 15, scope: !592)
!594 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!595 = !DILocation(line: 199, column: 15, scope: !594)
!596 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!597 = !DILocation(line: 200, column: 15, scope: !596)
!598 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DILocation(line: 201, column: 15, scope: !598)
!600 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DILocation(line: 202, column: 15, scope: !600)
!602 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!603 = !DILocation(line: 203, column: 15, scope: !602)
!604 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 204, column: 15, scope: !604)
!606 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DILocation(line: 205, column: 15, scope: !606)
!608 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!609 = !DILocation(line: 206, column: 15, scope: !608)
