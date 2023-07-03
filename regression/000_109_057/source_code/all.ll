; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.20 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
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
@.str.15.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_53_bad() #0 !dbg !58 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !63, metadata !DIExpression()), !dbg !67
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !68
  store i8* %arraydecay, i8** %data, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !70, metadata !DIExpression()), !dbg !75
  %1 = load i8*, i8** %data, align 8, !dbg !76
  %call = call i64 @strlen(i8* %1) #7, !dbg !77
  store i64 %call, i64* %dataLen, align 8, !dbg !75
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !78, metadata !DIExpression()), !dbg !79
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !80
  store i8* %call1, i8** %environment, align 8, !dbg !79
  %2 = load i8*, i8** %environment, align 8, !dbg !81
  %cmp = icmp ne i8* %2, null, !dbg !83
  br i1 %cmp, label %if.then, label %if.end, !dbg !84

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !85
  %4 = load i64, i64* %dataLen, align 8, !dbg !87
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !88
  %5 = load i8*, i8** %environment, align 8, !dbg !89
  %6 = load i64, i64* %dataLen, align 8, !dbg !90
  %sub = sub i64 100, %6, !dbg !91
  %sub2 = sub i64 %sub, 1, !dbg !92
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !93
  br label %if.end, !dbg !94

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !95
  call void @CWE606_Unchecked_Loop_Condition__char_environment_53b_badSink(i8* %7), !dbg !96
  ret void, !dbg !97
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
define dso_local void @goodG2B() #0 !dbg !98 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !102
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !102
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !103
  store i8* %arraydecay, i8** %data, align 8, !dbg !104
  %1 = load i8*, i8** %data, align 8, !dbg !105
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !106
  %2 = load i8*, i8** %data, align 8, !dbg !107
  call void @CWE606_Unchecked_Loop_Condition__char_environment_53b_goodG2BSink(i8* %2), !dbg !108
  ret void, !dbg !109
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !110 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !114
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !114
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !115
  store i8* %arraydecay, i8** %data, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !117, metadata !DIExpression()), !dbg !119
  %1 = load i8*, i8** %data, align 8, !dbg !120
  %call = call i64 @strlen(i8* %1) #7, !dbg !121
  store i64 %call, i64* %dataLen, align 8, !dbg !119
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !122, metadata !DIExpression()), !dbg !123
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !124
  store i8* %call1, i8** %environment, align 8, !dbg !123
  %2 = load i8*, i8** %environment, align 8, !dbg !125
  %cmp = icmp ne i8* %2, null, !dbg !127
  br i1 %cmp, label %if.then, label %if.end, !dbg !128

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !129
  %4 = load i64, i64* %dataLen, align 8, !dbg !131
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !132
  %5 = load i8*, i8** %environment, align 8, !dbg !133
  %6 = load i64, i64* %dataLen, align 8, !dbg !134
  %sub = sub i64 100, %6, !dbg !135
  %sub2 = sub i64 %sub, 1, !dbg !136
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !137
  br label %if.end, !dbg !138

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !139
  call void @CWE606_Unchecked_Loop_Condition__char_environment_53b_goodB2GSink(i8* %7), !dbg !140
  ret void, !dbg !141
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_53_good() #0 !dbg !142 {
entry:
  call void @goodG2B(), !dbg !143
  call void @goodB2G(), !dbg !144
  ret void, !dbg !145
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_53b_badSink(i8* %data) #0 !dbg !146 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load i8*, i8** %data.addr, align 8, !dbg !151
  call void @CWE606_Unchecked_Loop_Condition__char_environment_53c_badSink(i8* %0), !dbg !152
  ret void, !dbg !153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_53b_goodG2BSink(i8* %data) #0 !dbg !154 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !155, metadata !DIExpression()), !dbg !156
  %0 = load i8*, i8** %data.addr, align 8, !dbg !157
  call void @CWE606_Unchecked_Loop_Condition__char_environment_53c_goodG2BSink(i8* %0), !dbg !158
  ret void, !dbg !159
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_53b_goodB2GSink(i8* %data) #0 !dbg !160 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = load i8*, i8** %data.addr, align 8, !dbg !163
  call void @CWE606_Unchecked_Loop_Condition__char_environment_53c_goodB2GSink(i8* %0), !dbg !164
  ret void, !dbg !165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_53c_badSink(i8* %data) #0 !dbg !166 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !167, metadata !DIExpression()), !dbg !168
  %0 = load i8*, i8** %data.addr, align 8, !dbg !169
  call void @CWE606_Unchecked_Loop_Condition__char_environment_53d_badSink(i8* %0), !dbg !170
  ret void, !dbg !171
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_53c_goodG2BSink(i8* %data) #0 !dbg !172 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = load i8*, i8** %data.addr, align 8, !dbg !175
  call void @CWE606_Unchecked_Loop_Condition__char_environment_53d_goodG2BSink(i8* %0), !dbg !176
  ret void, !dbg !177
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_53c_goodB2GSink(i8* %data) #0 !dbg !178 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = load i8*, i8** %data.addr, align 8, !dbg !181
  call void @CWE606_Unchecked_Loop_Condition__char_environment_53d_goodB2GSink(i8* %0), !dbg !182
  ret void, !dbg !183
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_53d_badSink(i8* %data) #0 !dbg !184 {
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
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %n) #8, !dbg !196
  %cmp = icmp eq i32 %call, 1, !dbg !197
  br i1 %cmp, label %if.then, label %if.end, !dbg !198

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !199
  store i32 0, i32* %i, align 4, !dbg !201
  br label %for.cond, !dbg !203

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !204
  %2 = load i32, i32* %n, align 4, !dbg !206
  %cmp1 = icmp slt i32 %1, %2, !dbg !207
  br i1 %cmp1, label %for.body, label %for.end, !dbg !208

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !209
  %inc = add nsw i32 %3, 1, !dbg !209
  store i32 %inc, i32* %intVariable, align 4, !dbg !209
  br label %for.inc, !dbg !211

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !212
  %inc2 = add nsw i32 %4, 1, !dbg !212
  store i32 %inc2, i32* %i, align 4, !dbg !212
  br label %for.cond, !dbg !213, !llvm.loop !214

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !217
  call void @printIntLine(i32 %5), !dbg !218
  br label %if.end, !dbg !219

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !220
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_53d_goodG2BSink(i8* %data) #0 !dbg !221 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata i32* %i, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i32* %n, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !229, metadata !DIExpression()), !dbg !230
  %0 = load i8*, i8** %data.addr, align 8, !dbg !231
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %n) #8, !dbg !233
  %cmp = icmp eq i32 %call, 1, !dbg !234
  br i1 %cmp, label %if.then, label %if.end, !dbg !235

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !236
  store i32 0, i32* %i, align 4, !dbg !238
  br label %for.cond, !dbg !240

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !241
  %2 = load i32, i32* %n, align 4, !dbg !243
  %cmp1 = icmp slt i32 %1, %2, !dbg !244
  br i1 %cmp1, label %for.body, label %for.end, !dbg !245

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !246
  %inc = add nsw i32 %3, 1, !dbg !246
  store i32 %inc, i32* %intVariable, align 4, !dbg !246
  br label %for.inc, !dbg !248

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !249
  %inc2 = add nsw i32 %4, 1, !dbg !249
  store i32 %inc2, i32* %i, align 4, !dbg !249
  br label %for.cond, !dbg !250, !llvm.loop !251

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !253
  call void @printIntLine(i32 %5), !dbg !254
  br label %if.end, !dbg !255

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_53d_goodB2GSink(i8* %data) #0 !dbg !257 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %i, metadata !260, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %n, metadata !263, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !265, metadata !DIExpression()), !dbg !266
  %0 = load i8*, i8** %data.addr, align 8, !dbg !267
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %n) #8, !dbg !269
  %cmp = icmp eq i32 %call, 1, !dbg !270
  br i1 %cmp, label %if.then, label %if.end5, !dbg !271

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !272
  %cmp1 = icmp slt i32 %1, 10000, !dbg !275
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !276

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !277
  store i32 0, i32* %i, align 4, !dbg !279
  br label %for.cond, !dbg !281

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !282
  %3 = load i32, i32* %n, align 4, !dbg !284
  %cmp3 = icmp slt i32 %2, %3, !dbg !285
  br i1 %cmp3, label %for.body, label %for.end, !dbg !286

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !287
  %inc = add nsw i32 %4, 1, !dbg !287
  store i32 %inc, i32* %intVariable, align 4, !dbg !287
  br label %for.inc, !dbg !289

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !290
  %inc4 = add nsw i32 %5, 1, !dbg !290
  store i32 %inc4, i32* %i, align 4, !dbg !290
  br label %for.cond, !dbg !291, !llvm.loop !292

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !294
  call void @printIntLine(i32 %6), !dbg !295
  br label %if.end, !dbg !296

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !297

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !299 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)), !dbg !302
  %0 = load i8*, i8** %line.addr, align 8, !dbg !303
  %cmp = icmp ne i8* %0, null, !dbg !305
  br i1 %cmp, label %if.then, label %if.end, !dbg !306

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !307
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.21, i64 0, i64 0), i8* %1), !dbg !309
  br label %if.end, !dbg !310

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !311
  ret void, !dbg !312
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !313 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = load i8*, i8** %line.addr, align 8, !dbg !316
  %cmp = icmp ne i8* %0, null, !dbg !318
  br i1 %cmp, label %if.then, label %if.end, !dbg !319

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !320
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.21, i64 0, i64 0), i8* %1), !dbg !322
  br label %if.end, !dbg !323

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !325 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i32*, i32** %line.addr, align 8, !dbg !332
  %cmp = icmp ne i32* %0, null, !dbg !334
  br i1 %cmp, label %if.then, label %if.end, !dbg !335

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !336
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3, i64 0, i64 0), i32* %1), !dbg !338
  br label %if.end, !dbg !339

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !340
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !341 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !346
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !349 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !355
  %conv = sext i16 %0 to i32, !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !358 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !364
  %conv = fpext float %0 to double, !dbg !364
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !367 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !374
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !376 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !388 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !393
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !396 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !401
  %conv = sext i8 %0 to i32, !dbg !401
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !402
  ret void, !dbg !403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !404 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !407, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !409, metadata !DIExpression()), !dbg !413
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !414
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !415
  store i32 %0, i32* %arrayidx, align 4, !dbg !416
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !417
  store i32 0, i32* %arrayidx1, align 4, !dbg !418
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !422 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !430 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !433, metadata !DIExpression()), !dbg !434
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !435
  %conv = zext i8 %0 to i32, !dbg !435
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !436
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !438 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !447 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !457, metadata !DIExpression()), !dbg !458
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !459
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !460
  %1 = load i32, i32* %intOne, align 4, !dbg !460
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !461
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !462
  %3 = load i32, i32* %intTwo, align 4, !dbg !462
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !463
  ret void, !dbg !464
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !465 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !469, metadata !DIExpression()), !dbg !470
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata i64* %i, metadata !473, metadata !DIExpression()), !dbg !474
  store i64 0, i64* %i, align 8, !dbg !475
  br label %for.cond, !dbg !477

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !478
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !480
  %cmp = icmp ult i64 %0, %1, !dbg !481
  br i1 %cmp, label %for.body, label %for.end, !dbg !482

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !483
  %3 = load i64, i64* %i, align 8, !dbg !485
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !483
  %4 = load i8, i8* %arrayidx, align 1, !dbg !483
  %conv = zext i8 %4 to i32, !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !486
  br label %for.inc, !dbg !487

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !488
  %inc = add i64 %5, 1, !dbg !488
  store i64 %inc, i64* %i, align 8, !dbg !488
  br label %for.cond, !dbg !489, !llvm.loop !490

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15.24, i64 0, i64 0)), !dbg !492
  ret void, !dbg !493
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !494 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !497, metadata !DIExpression()), !dbg !498
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !499, metadata !DIExpression()), !dbg !500
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !501, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !503, metadata !DIExpression()), !dbg !504
  store i64 0, i64* %numWritten, align 8, !dbg !504
  br label %while.cond, !dbg !505

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !506
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !507
  %cmp = icmp ult i64 %0, %1, !dbg !508
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !509

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !510
  %2 = load i16*, i16** %call, align 8, !dbg !510
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !510
  %4 = load i64, i64* %numWritten, align 8, !dbg !510
  %mul = mul i64 2, %4, !dbg !510
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !510
  %5 = load i8, i8* %arrayidx, align 1, !dbg !510
  %conv = sext i8 %5 to i32, !dbg !510
  %idxprom = sext i32 %conv to i64, !dbg !510
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !510
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !510
  %conv2 = zext i16 %6 to i32, !dbg !510
  %and = and i32 %conv2, 4096, !dbg !510
  %tobool = icmp ne i32 %and, 0, !dbg !510
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !511

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !512
  %7 = load i16*, i16** %call3, align 8, !dbg !512
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !512
  %9 = load i64, i64* %numWritten, align 8, !dbg !512
  %mul4 = mul i64 2, %9, !dbg !512
  %add = add i64 %mul4, 1, !dbg !512
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !512
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !512
  %conv6 = sext i8 %10 to i32, !dbg !512
  %idxprom7 = sext i32 %conv6 to i64, !dbg !512
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !512
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !512
  %conv9 = zext i16 %11 to i32, !dbg !512
  %and10 = and i32 %conv9, 4096, !dbg !512
  %tobool11 = icmp ne i32 %and10, 0, !dbg !511
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !513
  br i1 %12, label %while.body, label %while.end, !dbg !505

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !514, metadata !DIExpression()), !dbg !516
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !517
  %14 = load i64, i64* %numWritten, align 8, !dbg !518
  %mul12 = mul i64 2, %14, !dbg !519
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !517
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !520
  %15 = load i32, i32* %byte, align 4, !dbg !521
  %conv15 = trunc i32 %15 to i8, !dbg !522
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !523
  %17 = load i64, i64* %numWritten, align 8, !dbg !524
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !523
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !525
  %18 = load i64, i64* %numWritten, align 8, !dbg !526
  %inc = add i64 %18, 1, !dbg !526
  store i64 %inc, i64* %numWritten, align 8, !dbg !526
  br label %while.cond, !dbg !505, !llvm.loop !527

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !529
  ret i64 %19, !dbg !530
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !531 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !534, metadata !DIExpression()), !dbg !535
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !536, metadata !DIExpression()), !dbg !537
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !538, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !540, metadata !DIExpression()), !dbg !541
  store i64 0, i64* %numWritten, align 8, !dbg !541
  br label %while.cond, !dbg !542

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !543
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !544
  %cmp = icmp ult i64 %0, %1, !dbg !545
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !546

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !547
  %3 = load i64, i64* %numWritten, align 8, !dbg !548
  %mul = mul i64 2, %3, !dbg !549
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !547
  %4 = load i32, i32* %arrayidx, align 4, !dbg !547
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !550
  %tobool = icmp ne i32 %call, 0, !dbg !550
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !551

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !552
  %6 = load i64, i64* %numWritten, align 8, !dbg !553
  %mul1 = mul i64 2, %6, !dbg !554
  %add = add i64 %mul1, 1, !dbg !555
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !552
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !552
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !556
  %tobool4 = icmp ne i32 %call3, 0, !dbg !551
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !557
  br i1 %8, label %while.body, label %while.end, !dbg !542

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !558, metadata !DIExpression()), !dbg !560
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !561
  %10 = load i64, i64* %numWritten, align 8, !dbg !562
  %mul5 = mul i64 2, %10, !dbg !563
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !561
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !564
  %11 = load i32, i32* %byte, align 4, !dbg !565
  %conv = trunc i32 %11 to i8, !dbg !566
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !567
  %13 = load i64, i64* %numWritten, align 8, !dbg !568
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !567
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !569
  %14 = load i64, i64* %numWritten, align 8, !dbg !570
  %inc = add i64 %14, 1, !dbg !570
  store i64 %inc, i64* %numWritten, align 8, !dbg !570
  br label %while.cond, !dbg !542, !llvm.loop !571

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !573
  ret i64 %15, !dbg !574
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !575 {
entry:
  ret i32 1, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !579 {
entry:
  ret i32 0, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !581 {
entry:
  %call = call i32 @rand() #8, !dbg !582
  %rem = srem i32 %call, 2, !dbg !583
  ret i32 %rem, !dbg !584
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !619 {
entry:
  ret void, !dbg !620
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

!llvm.dbg.cu = !{!44, !48, !50, !52, !2}
!llvm.ident = !{!54, !54, !54, !54, !54}
!llvm.module.flags = !{!55, !56, !57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_057/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_53a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_057/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_53b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_057/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_53c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_057/source_code")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_53d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_057/source_code")
!54 = !{!"clang version 12.0.0"}
!55 = !{i32 7, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_53_bad", scope: !45, file: !45, line: 39, type: !59, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 41, type: !42)
!62 = !DILocation(line: 41, column: 12, scope: !58)
!63 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !45, line: 42, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 100)
!67 = !DILocation(line: 42, column: 10, scope: !58)
!68 = !DILocation(line: 43, column: 12, scope: !58)
!69 = !DILocation(line: 43, column: 10, scope: !58)
!70 = !DILocalVariable(name: "dataLen", scope: !71, file: !45, line: 46, type: !72)
!71 = distinct !DILexicalBlock(scope: !58, file: !45, line: 44, column: 5)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 46, baseType: !74)
!73 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!74 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!75 = !DILocation(line: 46, column: 16, scope: !71)
!76 = !DILocation(line: 46, column: 33, scope: !71)
!77 = !DILocation(line: 46, column: 26, scope: !71)
!78 = !DILocalVariable(name: "environment", scope: !71, file: !45, line: 47, type: !42)
!79 = !DILocation(line: 47, column: 16, scope: !71)
!80 = !DILocation(line: 47, column: 30, scope: !71)
!81 = !DILocation(line: 49, column: 13, scope: !82)
!82 = distinct !DILexicalBlock(scope: !71, file: !45, line: 49, column: 13)
!83 = !DILocation(line: 49, column: 25, scope: !82)
!84 = !DILocation(line: 49, column: 13, scope: !71)
!85 = !DILocation(line: 52, column: 21, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !45, line: 50, column: 9)
!87 = !DILocation(line: 52, column: 26, scope: !86)
!88 = !DILocation(line: 52, column: 25, scope: !86)
!89 = !DILocation(line: 52, column: 35, scope: !86)
!90 = !DILocation(line: 52, column: 52, scope: !86)
!91 = !DILocation(line: 52, column: 51, scope: !86)
!92 = !DILocation(line: 52, column: 59, scope: !86)
!93 = !DILocation(line: 52, column: 13, scope: !86)
!94 = !DILocation(line: 53, column: 9, scope: !86)
!95 = !DILocation(line: 55, column: 67, scope: !58)
!96 = !DILocation(line: 55, column: 5, scope: !58)
!97 = !DILocation(line: 56, column: 1, scope: !58)
!98 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 64, type: !59, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!99 = !DILocalVariable(name: "data", scope: !98, file: !45, line: 66, type: !42)
!100 = !DILocation(line: 66, column: 12, scope: !98)
!101 = !DILocalVariable(name: "dataBuffer", scope: !98, file: !45, line: 67, type: !64)
!102 = !DILocation(line: 67, column: 10, scope: !98)
!103 = !DILocation(line: 68, column: 12, scope: !98)
!104 = !DILocation(line: 68, column: 10, scope: !98)
!105 = !DILocation(line: 70, column: 12, scope: !98)
!106 = !DILocation(line: 70, column: 5, scope: !98)
!107 = !DILocation(line: 71, column: 71, scope: !98)
!108 = !DILocation(line: 71, column: 5, scope: !98)
!109 = !DILocation(line: 72, column: 1, scope: !98)
!110 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 76, type: !59, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!111 = !DILocalVariable(name: "data", scope: !110, file: !45, line: 78, type: !42)
!112 = !DILocation(line: 78, column: 12, scope: !110)
!113 = !DILocalVariable(name: "dataBuffer", scope: !110, file: !45, line: 79, type: !64)
!114 = !DILocation(line: 79, column: 10, scope: !110)
!115 = !DILocation(line: 80, column: 12, scope: !110)
!116 = !DILocation(line: 80, column: 10, scope: !110)
!117 = !DILocalVariable(name: "dataLen", scope: !118, file: !45, line: 83, type: !72)
!118 = distinct !DILexicalBlock(scope: !110, file: !45, line: 81, column: 5)
!119 = !DILocation(line: 83, column: 16, scope: !118)
!120 = !DILocation(line: 83, column: 33, scope: !118)
!121 = !DILocation(line: 83, column: 26, scope: !118)
!122 = !DILocalVariable(name: "environment", scope: !118, file: !45, line: 84, type: !42)
!123 = !DILocation(line: 84, column: 16, scope: !118)
!124 = !DILocation(line: 84, column: 30, scope: !118)
!125 = !DILocation(line: 86, column: 13, scope: !126)
!126 = distinct !DILexicalBlock(scope: !118, file: !45, line: 86, column: 13)
!127 = !DILocation(line: 86, column: 25, scope: !126)
!128 = !DILocation(line: 86, column: 13, scope: !118)
!129 = !DILocation(line: 89, column: 21, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !45, line: 87, column: 9)
!131 = !DILocation(line: 89, column: 26, scope: !130)
!132 = !DILocation(line: 89, column: 25, scope: !130)
!133 = !DILocation(line: 89, column: 35, scope: !130)
!134 = !DILocation(line: 89, column: 52, scope: !130)
!135 = !DILocation(line: 89, column: 51, scope: !130)
!136 = !DILocation(line: 89, column: 59, scope: !130)
!137 = !DILocation(line: 89, column: 13, scope: !130)
!138 = !DILocation(line: 90, column: 9, scope: !130)
!139 = !DILocation(line: 92, column: 71, scope: !110)
!140 = !DILocation(line: 92, column: 5, scope: !110)
!141 = !DILocation(line: 93, column: 1, scope: !110)
!142 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_53_good", scope: !45, file: !45, line: 95, type: !59, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!143 = !DILocation(line: 97, column: 5, scope: !142)
!144 = !DILocation(line: 98, column: 5, scope: !142)
!145 = !DILocation(line: 99, column: 1, scope: !142)
!146 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_53b_badSink", scope: !49, file: !49, line: 39, type: !147, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !42}
!149 = !DILocalVariable(name: "data", arg: 1, scope: !146, file: !49, line: 39, type: !42)
!150 = !DILocation(line: 39, column: 75, scope: !146)
!151 = !DILocation(line: 41, column: 67, scope: !146)
!152 = !DILocation(line: 41, column: 5, scope: !146)
!153 = !DILocation(line: 42, column: 1, scope: !146)
!154 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_53b_goodG2BSink", scope: !49, file: !49, line: 51, type: !147, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!155 = !DILocalVariable(name: "data", arg: 1, scope: !154, file: !49, line: 51, type: !42)
!156 = !DILocation(line: 51, column: 79, scope: !154)
!157 = !DILocation(line: 53, column: 71, scope: !154)
!158 = !DILocation(line: 53, column: 5, scope: !154)
!159 = !DILocation(line: 54, column: 1, scope: !154)
!160 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_53b_goodB2GSink", scope: !49, file: !49, line: 59, type: !147, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!161 = !DILocalVariable(name: "data", arg: 1, scope: !160, file: !49, line: 59, type: !42)
!162 = !DILocation(line: 59, column: 79, scope: !160)
!163 = !DILocation(line: 61, column: 71, scope: !160)
!164 = !DILocation(line: 61, column: 5, scope: !160)
!165 = !DILocation(line: 62, column: 1, scope: !160)
!166 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_53c_badSink", scope: !51, file: !51, line: 39, type: !147, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!167 = !DILocalVariable(name: "data", arg: 1, scope: !166, file: !51, line: 39, type: !42)
!168 = !DILocation(line: 39, column: 75, scope: !166)
!169 = !DILocation(line: 41, column: 67, scope: !166)
!170 = !DILocation(line: 41, column: 5, scope: !166)
!171 = !DILocation(line: 42, column: 1, scope: !166)
!172 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_53c_goodG2BSink", scope: !51, file: !51, line: 51, type: !147, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!173 = !DILocalVariable(name: "data", arg: 1, scope: !172, file: !51, line: 51, type: !42)
!174 = !DILocation(line: 51, column: 79, scope: !172)
!175 = !DILocation(line: 53, column: 71, scope: !172)
!176 = !DILocation(line: 53, column: 5, scope: !172)
!177 = !DILocation(line: 54, column: 1, scope: !172)
!178 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_53c_goodB2GSink", scope: !51, file: !51, line: 59, type: !147, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!179 = !DILocalVariable(name: "data", arg: 1, scope: !178, file: !51, line: 59, type: !42)
!180 = !DILocation(line: 59, column: 79, scope: !178)
!181 = !DILocation(line: 61, column: 71, scope: !178)
!182 = !DILocation(line: 61, column: 5, scope: !178)
!183 = !DILocation(line: 62, column: 1, scope: !178)
!184 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_53d_badSink", scope: !53, file: !53, line: 36, type: !147, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!185 = !DILocalVariable(name: "data", arg: 1, scope: !184, file: !53, line: 36, type: !42)
!186 = !DILocation(line: 36, column: 75, scope: !184)
!187 = !DILocalVariable(name: "i", scope: !188, file: !53, line: 39, type: !23)
!188 = distinct !DILexicalBlock(scope: !184, file: !53, line: 38, column: 5)
!189 = !DILocation(line: 39, column: 13, scope: !188)
!190 = !DILocalVariable(name: "n", scope: !188, file: !53, line: 39, type: !23)
!191 = !DILocation(line: 39, column: 16, scope: !188)
!192 = !DILocalVariable(name: "intVariable", scope: !188, file: !53, line: 39, type: !23)
!193 = !DILocation(line: 39, column: 19, scope: !188)
!194 = !DILocation(line: 40, column: 20, scope: !195)
!195 = distinct !DILexicalBlock(scope: !188, file: !53, line: 40, column: 13)
!196 = !DILocation(line: 40, column: 13, scope: !195)
!197 = !DILocation(line: 40, column: 36, scope: !195)
!198 = !DILocation(line: 40, column: 13, scope: !188)
!199 = !DILocation(line: 43, column: 25, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !53, line: 41, column: 9)
!201 = !DILocation(line: 44, column: 20, scope: !202)
!202 = distinct !DILexicalBlock(scope: !200, file: !53, line: 44, column: 13)
!203 = !DILocation(line: 44, column: 18, scope: !202)
!204 = !DILocation(line: 44, column: 25, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !53, line: 44, column: 13)
!206 = !DILocation(line: 44, column: 29, scope: !205)
!207 = !DILocation(line: 44, column: 27, scope: !205)
!208 = !DILocation(line: 44, column: 13, scope: !202)
!209 = !DILocation(line: 47, column: 28, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !53, line: 45, column: 13)
!211 = !DILocation(line: 48, column: 13, scope: !210)
!212 = !DILocation(line: 44, column: 33, scope: !205)
!213 = !DILocation(line: 44, column: 13, scope: !205)
!214 = distinct !{!214, !208, !215, !216}
!215 = !DILocation(line: 48, column: 13, scope: !202)
!216 = !{!"llvm.loop.mustprogress"}
!217 = !DILocation(line: 49, column: 26, scope: !200)
!218 = !DILocation(line: 49, column: 13, scope: !200)
!219 = !DILocation(line: 50, column: 9, scope: !200)
!220 = !DILocation(line: 52, column: 1, scope: !184)
!221 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_53d_goodG2BSink", scope: !53, file: !53, line: 59, type: !147, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!222 = !DILocalVariable(name: "data", arg: 1, scope: !221, file: !53, line: 59, type: !42)
!223 = !DILocation(line: 59, column: 79, scope: !221)
!224 = !DILocalVariable(name: "i", scope: !225, file: !53, line: 62, type: !23)
!225 = distinct !DILexicalBlock(scope: !221, file: !53, line: 61, column: 5)
!226 = !DILocation(line: 62, column: 13, scope: !225)
!227 = !DILocalVariable(name: "n", scope: !225, file: !53, line: 62, type: !23)
!228 = !DILocation(line: 62, column: 16, scope: !225)
!229 = !DILocalVariable(name: "intVariable", scope: !225, file: !53, line: 62, type: !23)
!230 = !DILocation(line: 62, column: 19, scope: !225)
!231 = !DILocation(line: 63, column: 20, scope: !232)
!232 = distinct !DILexicalBlock(scope: !225, file: !53, line: 63, column: 13)
!233 = !DILocation(line: 63, column: 13, scope: !232)
!234 = !DILocation(line: 63, column: 36, scope: !232)
!235 = !DILocation(line: 63, column: 13, scope: !225)
!236 = !DILocation(line: 66, column: 25, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !53, line: 64, column: 9)
!238 = !DILocation(line: 67, column: 20, scope: !239)
!239 = distinct !DILexicalBlock(scope: !237, file: !53, line: 67, column: 13)
!240 = !DILocation(line: 67, column: 18, scope: !239)
!241 = !DILocation(line: 67, column: 25, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !53, line: 67, column: 13)
!243 = !DILocation(line: 67, column: 29, scope: !242)
!244 = !DILocation(line: 67, column: 27, scope: !242)
!245 = !DILocation(line: 67, column: 13, scope: !239)
!246 = !DILocation(line: 70, column: 28, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !53, line: 68, column: 13)
!248 = !DILocation(line: 71, column: 13, scope: !247)
!249 = !DILocation(line: 67, column: 33, scope: !242)
!250 = !DILocation(line: 67, column: 13, scope: !242)
!251 = distinct !{!251, !245, !252, !216}
!252 = !DILocation(line: 71, column: 13, scope: !239)
!253 = !DILocation(line: 72, column: 26, scope: !237)
!254 = !DILocation(line: 72, column: 13, scope: !237)
!255 = !DILocation(line: 73, column: 9, scope: !237)
!256 = !DILocation(line: 75, column: 1, scope: !221)
!257 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_53d_goodB2GSink", scope: !53, file: !53, line: 78, type: !147, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!258 = !DILocalVariable(name: "data", arg: 1, scope: !257, file: !53, line: 78, type: !42)
!259 = !DILocation(line: 78, column: 79, scope: !257)
!260 = !DILocalVariable(name: "i", scope: !261, file: !53, line: 81, type: !23)
!261 = distinct !DILexicalBlock(scope: !257, file: !53, line: 80, column: 5)
!262 = !DILocation(line: 81, column: 13, scope: !261)
!263 = !DILocalVariable(name: "n", scope: !261, file: !53, line: 81, type: !23)
!264 = !DILocation(line: 81, column: 16, scope: !261)
!265 = !DILocalVariable(name: "intVariable", scope: !261, file: !53, line: 81, type: !23)
!266 = !DILocation(line: 81, column: 19, scope: !261)
!267 = !DILocation(line: 82, column: 20, scope: !268)
!268 = distinct !DILexicalBlock(scope: !261, file: !53, line: 82, column: 13)
!269 = !DILocation(line: 82, column: 13, scope: !268)
!270 = !DILocation(line: 82, column: 36, scope: !268)
!271 = !DILocation(line: 82, column: 13, scope: !261)
!272 = !DILocation(line: 85, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !53, line: 85, column: 17)
!274 = distinct !DILexicalBlock(scope: !268, file: !53, line: 83, column: 9)
!275 = !DILocation(line: 85, column: 19, scope: !273)
!276 = !DILocation(line: 85, column: 17, scope: !274)
!277 = !DILocation(line: 87, column: 29, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !53, line: 86, column: 13)
!279 = !DILocation(line: 88, column: 24, scope: !280)
!280 = distinct !DILexicalBlock(scope: !278, file: !53, line: 88, column: 17)
!281 = !DILocation(line: 88, column: 22, scope: !280)
!282 = !DILocation(line: 88, column: 29, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !53, line: 88, column: 17)
!284 = !DILocation(line: 88, column: 33, scope: !283)
!285 = !DILocation(line: 88, column: 31, scope: !283)
!286 = !DILocation(line: 88, column: 17, scope: !280)
!287 = !DILocation(line: 91, column: 32, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !53, line: 89, column: 17)
!289 = !DILocation(line: 92, column: 17, scope: !288)
!290 = !DILocation(line: 88, column: 37, scope: !283)
!291 = !DILocation(line: 88, column: 17, scope: !283)
!292 = distinct !{!292, !286, !293, !216}
!293 = !DILocation(line: 92, column: 17, scope: !280)
!294 = !DILocation(line: 93, column: 30, scope: !278)
!295 = !DILocation(line: 93, column: 17, scope: !278)
!296 = !DILocation(line: 94, column: 13, scope: !278)
!297 = !DILocation(line: 95, column: 9, scope: !274)
!298 = !DILocation(line: 97, column: 1, scope: !257)
!299 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !147, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DILocalVariable(name: "line", arg: 1, scope: !299, file: !3, line: 11, type: !42)
!301 = !DILocation(line: 11, column: 25, scope: !299)
!302 = !DILocation(line: 13, column: 1, scope: !299)
!303 = !DILocation(line: 14, column: 8, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !3, line: 14, column: 8)
!305 = !DILocation(line: 14, column: 13, scope: !304)
!306 = !DILocation(line: 14, column: 8, scope: !299)
!307 = !DILocation(line: 16, column: 24, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !3, line: 15, column: 5)
!309 = !DILocation(line: 16, column: 9, scope: !308)
!310 = !DILocation(line: 17, column: 5, scope: !308)
!311 = !DILocation(line: 18, column: 5, scope: !299)
!312 = !DILocation(line: 19, column: 1, scope: !299)
!313 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !147, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!314 = !DILocalVariable(name: "line", arg: 1, scope: !313, file: !3, line: 20, type: !42)
!315 = !DILocation(line: 20, column: 29, scope: !313)
!316 = !DILocation(line: 22, column: 8, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !3, line: 22, column: 8)
!318 = !DILocation(line: 22, column: 13, scope: !317)
!319 = !DILocation(line: 22, column: 8, scope: !313)
!320 = !DILocation(line: 24, column: 24, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !3, line: 23, column: 5)
!322 = !DILocation(line: 24, column: 9, scope: !321)
!323 = !DILocation(line: 25, column: 5, scope: !321)
!324 = !DILocation(line: 26, column: 1, scope: !313)
!325 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !326, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !73, line: 74, baseType: !23)
!330 = !DILocalVariable(name: "line", arg: 1, scope: !325, file: !3, line: 27, type: !328)
!331 = !DILocation(line: 27, column: 29, scope: !325)
!332 = !DILocation(line: 29, column: 8, scope: !333)
!333 = distinct !DILexicalBlock(scope: !325, file: !3, line: 29, column: 8)
!334 = !DILocation(line: 29, column: 13, scope: !333)
!335 = !DILocation(line: 29, column: 8, scope: !325)
!336 = !DILocation(line: 31, column: 27, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !3, line: 30, column: 5)
!338 = !DILocation(line: 31, column: 9, scope: !337)
!339 = !DILocation(line: 32, column: 5, scope: !337)
!340 = !DILocation(line: 33, column: 1, scope: !325)
!341 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !342, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !23}
!344 = !DILocalVariable(name: "intNumber", arg: 1, scope: !341, file: !3, line: 35, type: !23)
!345 = !DILocation(line: 35, column: 24, scope: !341)
!346 = !DILocation(line: 37, column: 20, scope: !341)
!347 = !DILocation(line: 37, column: 5, scope: !341)
!348 = !DILocation(line: 38, column: 1, scope: !341)
!349 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !350, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !352}
!352 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!353 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !349, file: !3, line: 40, type: !352)
!354 = !DILocation(line: 40, column: 28, scope: !349)
!355 = !DILocation(line: 42, column: 21, scope: !349)
!356 = !DILocation(line: 42, column: 5, scope: !349)
!357 = !DILocation(line: 43, column: 1, scope: !349)
!358 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !359, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!362 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !358, file: !3, line: 45, type: !361)
!363 = !DILocation(line: 45, column: 28, scope: !358)
!364 = !DILocation(line: 47, column: 20, scope: !358)
!365 = !DILocation(line: 47, column: 5, scope: !358)
!366 = !DILocation(line: 48, column: 1, scope: !358)
!367 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !368, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !370}
!370 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!371 = !DILocalVariable(name: "longNumber", arg: 1, scope: !367, file: !3, line: 50, type: !370)
!372 = !DILocation(line: 50, column: 26, scope: !367)
!373 = !DILocation(line: 52, column: 21, scope: !367)
!374 = !DILocation(line: 52, column: 5, scope: !367)
!375 = !DILocation(line: 53, column: 1, scope: !367)
!376 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !377, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !380, line: 27, baseType: !381)
!380 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !382, line: 44, baseType: !370)
!382 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!383 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !376, file: !3, line: 55, type: !379)
!384 = !DILocation(line: 55, column: 33, scope: !376)
!385 = !DILocation(line: 57, column: 29, scope: !376)
!386 = !DILocation(line: 57, column: 5, scope: !376)
!387 = !DILocation(line: 58, column: 1, scope: !376)
!388 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !389, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !72}
!391 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !388, file: !3, line: 60, type: !72)
!392 = !DILocation(line: 60, column: 29, scope: !388)
!393 = !DILocation(line: 62, column: 21, scope: !388)
!394 = !DILocation(line: 62, column: 5, scope: !388)
!395 = !DILocation(line: 63, column: 1, scope: !388)
!396 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !397, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !43}
!399 = !DILocalVariable(name: "charHex", arg: 1, scope: !396, file: !3, line: 65, type: !43)
!400 = !DILocation(line: 65, column: 29, scope: !396)
!401 = !DILocation(line: 67, column: 22, scope: !396)
!402 = !DILocation(line: 67, column: 5, scope: !396)
!403 = !DILocation(line: 68, column: 1, scope: !396)
!404 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !405, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !329}
!407 = !DILocalVariable(name: "wideChar", arg: 1, scope: !404, file: !3, line: 70, type: !329)
!408 = !DILocation(line: 70, column: 29, scope: !404)
!409 = !DILocalVariable(name: "s", scope: !404, file: !3, line: 74, type: !410)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 64, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 2)
!413 = !DILocation(line: 74, column: 13, scope: !404)
!414 = !DILocation(line: 75, column: 16, scope: !404)
!415 = !DILocation(line: 75, column: 9, scope: !404)
!416 = !DILocation(line: 75, column: 14, scope: !404)
!417 = !DILocation(line: 76, column: 9, scope: !404)
!418 = !DILocation(line: 76, column: 14, scope: !404)
!419 = !DILocation(line: 77, column: 21, scope: !404)
!420 = !DILocation(line: 77, column: 5, scope: !404)
!421 = !DILocation(line: 78, column: 1, scope: !404)
!422 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !423, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !7}
!425 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !422, file: !3, line: 80, type: !7)
!426 = !DILocation(line: 80, column: 33, scope: !422)
!427 = !DILocation(line: 82, column: 20, scope: !422)
!428 = !DILocation(line: 82, column: 5, scope: !422)
!429 = !DILocation(line: 83, column: 1, scope: !422)
!430 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !431, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !25}
!433 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !430, file: !3, line: 85, type: !25)
!434 = !DILocation(line: 85, column: 45, scope: !430)
!435 = !DILocation(line: 87, column: 22, scope: !430)
!436 = !DILocation(line: 87, column: 5, scope: !430)
!437 = !DILocation(line: 88, column: 1, scope: !430)
!438 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !439, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !441}
!441 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!442 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !438, file: !3, line: 90, type: !441)
!443 = !DILocation(line: 90, column: 29, scope: !438)
!444 = !DILocation(line: 92, column: 20, scope: !438)
!445 = !DILocation(line: 92, column: 5, scope: !438)
!446 = !DILocation(line: 93, column: 1, scope: !438)
!447 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !448, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !452, line: 100, baseType: !453)
!452 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_057/source_code")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !452, line: 96, size: 64, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !453, file: !452, line: 98, baseType: !23, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !453, file: !452, line: 99, baseType: !23, size: 32, offset: 32)
!457 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !447, file: !3, line: 95, type: !450)
!458 = !DILocation(line: 95, column: 40, scope: !447)
!459 = !DILocation(line: 97, column: 26, scope: !447)
!460 = !DILocation(line: 97, column: 47, scope: !447)
!461 = !DILocation(line: 97, column: 55, scope: !447)
!462 = !DILocation(line: 97, column: 76, scope: !447)
!463 = !DILocation(line: 97, column: 5, scope: !447)
!464 = !DILocation(line: 98, column: 1, scope: !447)
!465 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !466, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !468, !72}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!469 = !DILocalVariable(name: "bytes", arg: 1, scope: !465, file: !3, line: 100, type: !468)
!470 = !DILocation(line: 100, column: 38, scope: !465)
!471 = !DILocalVariable(name: "numBytes", arg: 2, scope: !465, file: !3, line: 100, type: !72)
!472 = !DILocation(line: 100, column: 52, scope: !465)
!473 = !DILocalVariable(name: "i", scope: !465, file: !3, line: 102, type: !72)
!474 = !DILocation(line: 102, column: 12, scope: !465)
!475 = !DILocation(line: 103, column: 12, scope: !476)
!476 = distinct !DILexicalBlock(scope: !465, file: !3, line: 103, column: 5)
!477 = !DILocation(line: 103, column: 10, scope: !476)
!478 = !DILocation(line: 103, column: 17, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !3, line: 103, column: 5)
!480 = !DILocation(line: 103, column: 21, scope: !479)
!481 = !DILocation(line: 103, column: 19, scope: !479)
!482 = !DILocation(line: 103, column: 5, scope: !476)
!483 = !DILocation(line: 105, column: 24, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !3, line: 104, column: 5)
!485 = !DILocation(line: 105, column: 30, scope: !484)
!486 = !DILocation(line: 105, column: 9, scope: !484)
!487 = !DILocation(line: 106, column: 5, scope: !484)
!488 = !DILocation(line: 103, column: 31, scope: !479)
!489 = !DILocation(line: 103, column: 5, scope: !479)
!490 = distinct !{!490, !482, !491, !216}
!491 = !DILocation(line: 106, column: 5, scope: !476)
!492 = !DILocation(line: 107, column: 5, scope: !465)
!493 = !DILocation(line: 108, column: 1, scope: !465)
!494 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !495, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!495 = !DISubroutineType(types: !496)
!496 = !{!72, !468, !72, !42}
!497 = !DILocalVariable(name: "bytes", arg: 1, scope: !494, file: !3, line: 113, type: !468)
!498 = !DILocation(line: 113, column: 39, scope: !494)
!499 = !DILocalVariable(name: "numBytes", arg: 2, scope: !494, file: !3, line: 113, type: !72)
!500 = !DILocation(line: 113, column: 53, scope: !494)
!501 = !DILocalVariable(name: "hex", arg: 3, scope: !494, file: !3, line: 113, type: !42)
!502 = !DILocation(line: 113, column: 71, scope: !494)
!503 = !DILocalVariable(name: "numWritten", scope: !494, file: !3, line: 115, type: !72)
!504 = !DILocation(line: 115, column: 12, scope: !494)
!505 = !DILocation(line: 121, column: 5, scope: !494)
!506 = !DILocation(line: 121, column: 12, scope: !494)
!507 = !DILocation(line: 121, column: 25, scope: !494)
!508 = !DILocation(line: 121, column: 23, scope: !494)
!509 = !DILocation(line: 121, column: 34, scope: !494)
!510 = !DILocation(line: 121, column: 37, scope: !494)
!511 = !DILocation(line: 121, column: 67, scope: !494)
!512 = !DILocation(line: 121, column: 70, scope: !494)
!513 = !DILocation(line: 0, scope: !494)
!514 = !DILocalVariable(name: "byte", scope: !515, file: !3, line: 123, type: !23)
!515 = distinct !DILexicalBlock(scope: !494, file: !3, line: 122, column: 5)
!516 = !DILocation(line: 123, column: 13, scope: !515)
!517 = !DILocation(line: 124, column: 17, scope: !515)
!518 = !DILocation(line: 124, column: 25, scope: !515)
!519 = !DILocation(line: 124, column: 23, scope: !515)
!520 = !DILocation(line: 124, column: 9, scope: !515)
!521 = !DILocation(line: 125, column: 45, scope: !515)
!522 = !DILocation(line: 125, column: 29, scope: !515)
!523 = !DILocation(line: 125, column: 9, scope: !515)
!524 = !DILocation(line: 125, column: 15, scope: !515)
!525 = !DILocation(line: 125, column: 27, scope: !515)
!526 = !DILocation(line: 126, column: 9, scope: !515)
!527 = distinct !{!527, !505, !528, !216}
!528 = !DILocation(line: 127, column: 5, scope: !494)
!529 = !DILocation(line: 129, column: 12, scope: !494)
!530 = !DILocation(line: 129, column: 5, scope: !494)
!531 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !532, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DISubroutineType(types: !533)
!533 = !{!72, !468, !72, !328}
!534 = !DILocalVariable(name: "bytes", arg: 1, scope: !531, file: !3, line: 135, type: !468)
!535 = !DILocation(line: 135, column: 41, scope: !531)
!536 = !DILocalVariable(name: "numBytes", arg: 2, scope: !531, file: !3, line: 135, type: !72)
!537 = !DILocation(line: 135, column: 55, scope: !531)
!538 = !DILocalVariable(name: "hex", arg: 3, scope: !531, file: !3, line: 135, type: !328)
!539 = !DILocation(line: 135, column: 76, scope: !531)
!540 = !DILocalVariable(name: "numWritten", scope: !531, file: !3, line: 137, type: !72)
!541 = !DILocation(line: 137, column: 12, scope: !531)
!542 = !DILocation(line: 143, column: 5, scope: !531)
!543 = !DILocation(line: 143, column: 12, scope: !531)
!544 = !DILocation(line: 143, column: 25, scope: !531)
!545 = !DILocation(line: 143, column: 23, scope: !531)
!546 = !DILocation(line: 143, column: 34, scope: !531)
!547 = !DILocation(line: 143, column: 47, scope: !531)
!548 = !DILocation(line: 143, column: 55, scope: !531)
!549 = !DILocation(line: 143, column: 53, scope: !531)
!550 = !DILocation(line: 143, column: 37, scope: !531)
!551 = !DILocation(line: 143, column: 68, scope: !531)
!552 = !DILocation(line: 143, column: 81, scope: !531)
!553 = !DILocation(line: 143, column: 89, scope: !531)
!554 = !DILocation(line: 143, column: 87, scope: !531)
!555 = !DILocation(line: 143, column: 100, scope: !531)
!556 = !DILocation(line: 143, column: 71, scope: !531)
!557 = !DILocation(line: 0, scope: !531)
!558 = !DILocalVariable(name: "byte", scope: !559, file: !3, line: 145, type: !23)
!559 = distinct !DILexicalBlock(scope: !531, file: !3, line: 144, column: 5)
!560 = !DILocation(line: 145, column: 13, scope: !559)
!561 = !DILocation(line: 146, column: 18, scope: !559)
!562 = !DILocation(line: 146, column: 26, scope: !559)
!563 = !DILocation(line: 146, column: 24, scope: !559)
!564 = !DILocation(line: 146, column: 9, scope: !559)
!565 = !DILocation(line: 147, column: 45, scope: !559)
!566 = !DILocation(line: 147, column: 29, scope: !559)
!567 = !DILocation(line: 147, column: 9, scope: !559)
!568 = !DILocation(line: 147, column: 15, scope: !559)
!569 = !DILocation(line: 147, column: 27, scope: !559)
!570 = !DILocation(line: 148, column: 9, scope: !559)
!571 = distinct !{!571, !542, !572, !216}
!572 = !DILocation(line: 149, column: 5, scope: !531)
!573 = !DILocation(line: 151, column: 12, scope: !531)
!574 = !DILocation(line: 151, column: 5, scope: !531)
!575 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !576, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DISubroutineType(types: !577)
!577 = !{!23}
!578 = !DILocation(line: 158, column: 5, scope: !575)
!579 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !576, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 163, column: 5, scope: !579)
!581 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !576, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 168, column: 13, scope: !581)
!583 = !DILocation(line: 168, column: 20, scope: !581)
!584 = !DILocation(line: 168, column: 5, scope: !581)
!585 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 187, column: 16, scope: !585)
!587 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 188, column: 16, scope: !587)
!589 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 189, column: 16, scope: !589)
!591 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 190, column: 16, scope: !591)
!593 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 191, column: 16, scope: !593)
!595 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 192, column: 16, scope: !595)
!597 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 193, column: 16, scope: !597)
!599 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 194, column: 16, scope: !599)
!601 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 195, column: 16, scope: !601)
!603 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 198, column: 15, scope: !603)
!605 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 199, column: 15, scope: !605)
!607 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 200, column: 15, scope: !607)
!609 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 201, column: 15, scope: !609)
!611 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 202, column: 15, scope: !611)
!613 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 203, column: 15, scope: !613)
!615 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 204, column: 15, scope: !615)
!617 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 205, column: 15, scope: !617)
!619 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 206, column: 15, scope: !619)
