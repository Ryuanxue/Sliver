; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@staticFive = dso_local global i32 5, align 4, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !9
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !34
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !36
@globalTrue = dso_local global i32 1, align 4, !dbg !38
@globalFalse = dso_local global i32 0, align 4, !dbg !40
@globalFive = dso_local global i32 5, align 4, !dbg !42
@globalArgc = dso_local global i32 0, align 4, !dbg !44
@globalArgv = dso_local global i8** null, align 8, !dbg !46
@.str.4 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_07_bad() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !65
  store i8* %arraydecay, i8** %data, align 8, !dbg !66
  %1 = load i32, i32* @staticFive, align 4, !dbg !67
  %cmp = icmp eq i32 %1, 5, !dbg !69
  br i1 %cmp, label %if.then, label %if.end6, !dbg !70

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !71, metadata !DIExpression()), !dbg !77
  %2 = load i8*, i8** %data, align 8, !dbg !78
  %call = call i64 @strlen(i8* %2) #7, !dbg !79
  store i64 %call, i64* %dataLen, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !80, metadata !DIExpression()), !dbg !81
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !82
  store i8* %call1, i8** %environment, align 8, !dbg !81
  %3 = load i8*, i8** %environment, align 8, !dbg !83
  %cmp2 = icmp ne i8* %3, null, !dbg !85
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !86

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !87
  %5 = load i64, i64* %dataLen, align 8, !dbg !89
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !90
  %6 = load i8*, i8** %environment, align 8, !dbg !91
  %7 = load i64, i64* %dataLen, align 8, !dbg !92
  %sub = sub i64 100, %7, !dbg !93
  %sub4 = sub i64 %sub, 1, !dbg !94
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #8, !dbg !95
  br label %if.end, !dbg !96

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !97

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @staticFive, align 4, !dbg !98
  %cmp7 = icmp eq i32 %8, 5, !dbg !100
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !101

if.then8:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !102, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %n, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !108, metadata !DIExpression()), !dbg !109
  %9 = load i8*, i8** %data, align 8, !dbg !110
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !112
  %cmp10 = icmp eq i32 %call9, 1, !dbg !113
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !114

if.then11:                                        ; preds = %if.then8
  store i32 0, i32* %intVariable, align 4, !dbg !115
  store i32 0, i32* %i, align 4, !dbg !117
  br label %for.cond, !dbg !119

for.cond:                                         ; preds = %for.inc, %if.then11
  %10 = load i32, i32* %i, align 4, !dbg !120
  %11 = load i32, i32* %n, align 4, !dbg !122
  %cmp12 = icmp slt i32 %10, %11, !dbg !123
  br i1 %cmp12, label %for.body, label %for.end, !dbg !124

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !125
  %inc = add nsw i32 %12, 1, !dbg !125
  store i32 %inc, i32* %intVariable, align 4, !dbg !125
  br label %for.inc, !dbg !127

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !128
  %inc13 = add nsw i32 %13, 1, !dbg !128
  store i32 %inc13, i32* %i, align 4, !dbg !128
  br label %for.cond, !dbg !129, !llvm.loop !130

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !133
  call void @printIntLine(i32 %14), !dbg !134
  br label %if.end14, !dbg !135

if.end14:                                         ; preds = %for.end, %if.then8
  br label %if.end15, !dbg !136

if.end15:                                         ; preds = %if.end14, %if.end6
  ret void, !dbg !137
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
define dso_local void @goodB2G1() #0 !dbg !138 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !142
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !142
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !143
  store i8* %arraydecay, i8** %data, align 8, !dbg !144
  %1 = load i32, i32* @staticFive, align 4, !dbg !145
  %cmp = icmp eq i32 %1, 5, !dbg !147
  br i1 %cmp, label %if.then, label %if.end6, !dbg !148

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !149, metadata !DIExpression()), !dbg !152
  %2 = load i8*, i8** %data, align 8, !dbg !153
  %call = call i64 @strlen(i8* %2) #7, !dbg !154
  store i64 %call, i64* %dataLen, align 8, !dbg !152
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !155, metadata !DIExpression()), !dbg !156
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !157
  store i8* %call1, i8** %environment, align 8, !dbg !156
  %3 = load i8*, i8** %environment, align 8, !dbg !158
  %cmp2 = icmp ne i8* %3, null, !dbg !160
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !161

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !162
  %5 = load i64, i64* %dataLen, align 8, !dbg !164
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !165
  %6 = load i8*, i8** %environment, align 8, !dbg !166
  %7 = load i64, i64* %dataLen, align 8, !dbg !167
  %sub = sub i64 100, %7, !dbg !168
  %sub4 = sub i64 %sub, 1, !dbg !169
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #8, !dbg !170
  br label %if.end, !dbg !171

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !172

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @staticFive, align 4, !dbg !173
  %cmp7 = icmp ne i32 %8, 5, !dbg !175
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !176

if.then8:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !177
  br label %if.end18, !dbg !179

if.else:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !180, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %n, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !186, metadata !DIExpression()), !dbg !187
  %9 = load i8*, i8** %data, align 8, !dbg !188
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !190
  %cmp10 = icmp eq i32 %call9, 1, !dbg !191
  br i1 %cmp10, label %if.then11, label %if.end17, !dbg !192

if.then11:                                        ; preds = %if.else
  %10 = load i32, i32* %n, align 4, !dbg !193
  %cmp12 = icmp slt i32 %10, 10000, !dbg !196
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !197

if.then13:                                        ; preds = %if.then11
  store i32 0, i32* %intVariable, align 4, !dbg !198
  store i32 0, i32* %i, align 4, !dbg !200
  br label %for.cond, !dbg !202

for.cond:                                         ; preds = %for.inc, %if.then13
  %11 = load i32, i32* %i, align 4, !dbg !203
  %12 = load i32, i32* %n, align 4, !dbg !205
  %cmp14 = icmp slt i32 %11, %12, !dbg !206
  br i1 %cmp14, label %for.body, label %for.end, !dbg !207

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !208
  %inc = add nsw i32 %13, 1, !dbg !208
  store i32 %inc, i32* %intVariable, align 4, !dbg !208
  br label %for.inc, !dbg !210

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !211
  %inc15 = add nsw i32 %14, 1, !dbg !211
  store i32 %inc15, i32* %i, align 4, !dbg !211
  br label %for.cond, !dbg !212, !llvm.loop !213

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !215
  call void @printIntLine(i32 %15), !dbg !216
  br label %if.end16, !dbg !217

if.end16:                                         ; preds = %for.end, %if.then11
  br label %if.end17, !dbg !218

if.end17:                                         ; preds = %if.end16, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  ret void, !dbg !219
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !220 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !223, metadata !DIExpression()), !dbg !224
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !224
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !224
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !225
  store i8* %arraydecay, i8** %data, align 8, !dbg !226
  %1 = load i32, i32* @staticFive, align 4, !dbg !227
  %cmp = icmp eq i32 %1, 5, !dbg !229
  br i1 %cmp, label %if.then, label %if.end6, !dbg !230

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !231, metadata !DIExpression()), !dbg !234
  %2 = load i8*, i8** %data, align 8, !dbg !235
  %call = call i64 @strlen(i8* %2) #7, !dbg !236
  store i64 %call, i64* %dataLen, align 8, !dbg !234
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !237, metadata !DIExpression()), !dbg !238
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !239
  store i8* %call1, i8** %environment, align 8, !dbg !238
  %3 = load i8*, i8** %environment, align 8, !dbg !240
  %cmp2 = icmp ne i8* %3, null, !dbg !242
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !243

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !244
  %5 = load i64, i64* %dataLen, align 8, !dbg !246
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !247
  %6 = load i8*, i8** %environment, align 8, !dbg !248
  %7 = load i64, i64* %dataLen, align 8, !dbg !249
  %sub = sub i64 100, %7, !dbg !250
  %sub4 = sub i64 %sub, 1, !dbg !251
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #8, !dbg !252
  br label %if.end, !dbg !253

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !254

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @staticFive, align 4, !dbg !255
  %cmp7 = icmp eq i32 %8, 5, !dbg !257
  br i1 %cmp7, label %if.then8, label %if.end18, !dbg !258

if.then8:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !259, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %n, metadata !263, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !265, metadata !DIExpression()), !dbg !266
  %9 = load i8*, i8** %data, align 8, !dbg !267
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !269
  %cmp10 = icmp eq i32 %call9, 1, !dbg !270
  br i1 %cmp10, label %if.then11, label %if.end17, !dbg !271

if.then11:                                        ; preds = %if.then8
  %10 = load i32, i32* %n, align 4, !dbg !272
  %cmp12 = icmp slt i32 %10, 10000, !dbg !275
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !276

if.then13:                                        ; preds = %if.then11
  store i32 0, i32* %intVariable, align 4, !dbg !277
  store i32 0, i32* %i, align 4, !dbg !279
  br label %for.cond, !dbg !281

for.cond:                                         ; preds = %for.inc, %if.then13
  %11 = load i32, i32* %i, align 4, !dbg !282
  %12 = load i32, i32* %n, align 4, !dbg !284
  %cmp14 = icmp slt i32 %11, %12, !dbg !285
  br i1 %cmp14, label %for.body, label %for.end, !dbg !286

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !287
  %inc = add nsw i32 %13, 1, !dbg !287
  store i32 %inc, i32* %intVariable, align 4, !dbg !287
  br label %for.inc, !dbg !289

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !290
  %inc15 = add nsw i32 %14, 1, !dbg !290
  store i32 %inc15, i32* %i, align 4, !dbg !290
  br label %for.cond, !dbg !291, !llvm.loop !292

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !294
  call void @printIntLine(i32 %15), !dbg !295
  br label %if.end16, !dbg !296

if.end16:                                         ; preds = %for.end, %if.then11
  br label %if.end17, !dbg !297

if.end17:                                         ; preds = %if.end16, %if.then8
  br label %if.end18, !dbg !298

if.end18:                                         ; preds = %if.end17, %if.end6
  ret void, !dbg !299
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !300 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !304
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !304
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !305
  store i8* %arraydecay, i8** %data, align 8, !dbg !306
  %1 = load i32, i32* @staticFive, align 4, !dbg !307
  %cmp = icmp ne i32 %1, 5, !dbg !309
  br i1 %cmp, label %if.then, label %if.else, !dbg !310

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !311
  br label %if.end, !dbg !313

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !314
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !316
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticFive, align 4, !dbg !317
  %cmp1 = icmp eq i32 %3, 5, !dbg !319
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !320

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !321, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata i32* %n, metadata !325, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !327, metadata !DIExpression()), !dbg !328
  %4 = load i8*, i8** %data, align 8, !dbg !329
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !331
  %cmp4 = icmp eq i32 %call3, 1, !dbg !332
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !333

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !334
  store i32 0, i32* %i, align 4, !dbg !336
  br label %for.cond, !dbg !338

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !339
  %6 = load i32, i32* %n, align 4, !dbg !341
  %cmp6 = icmp slt i32 %5, %6, !dbg !342
  br i1 %cmp6, label %for.body, label %for.end, !dbg !343

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !344
  %inc = add nsw i32 %7, 1, !dbg !344
  store i32 %inc, i32* %intVariable, align 4, !dbg !344
  br label %for.inc, !dbg !346

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !347
  %inc7 = add nsw i32 %8, 1, !dbg !347
  store i32 %inc7, i32* %i, align 4, !dbg !347
  br label %for.cond, !dbg !348, !llvm.loop !349

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !351
  call void @printIntLine(i32 %9), !dbg !352
  br label %if.end8, !dbg !353

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !354

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !355
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !356 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !360
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !360
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !361
  store i8* %arraydecay, i8** %data, align 8, !dbg !362
  %1 = load i32, i32* @staticFive, align 4, !dbg !363
  %cmp = icmp eq i32 %1, 5, !dbg !365
  br i1 %cmp, label %if.then, label %if.end, !dbg !366

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !367
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !369
  br label %if.end, !dbg !370

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticFive, align 4, !dbg !371
  %cmp1 = icmp eq i32 %3, 5, !dbg !373
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !374

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !375, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata i32* %n, metadata !379, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !381, metadata !DIExpression()), !dbg !382
  %4 = load i8*, i8** %data, align 8, !dbg !383
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !385
  %cmp4 = icmp eq i32 %call3, 1, !dbg !386
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !387

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !388
  store i32 0, i32* %i, align 4, !dbg !390
  br label %for.cond, !dbg !392

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !393
  %6 = load i32, i32* %n, align 4, !dbg !395
  %cmp6 = icmp slt i32 %5, %6, !dbg !396
  br i1 %cmp6, label %for.body, label %for.end, !dbg !397

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !398
  %inc = add nsw i32 %7, 1, !dbg !398
  store i32 %inc, i32* %intVariable, align 4, !dbg !398
  br label %for.inc, !dbg !400

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !401
  %inc7 = add nsw i32 %8, 1, !dbg !401
  store i32 %inc7, i32* %i, align 4, !dbg !401
  br label %for.cond, !dbg !402, !llvm.loop !403

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !405
  call void @printIntLine(i32 %9), !dbg !406
  br label %if.end8, !dbg !407

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !408

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_07_good() #0 !dbg !410 {
entry:
  call void @goodB2G1(), !dbg !411
  call void @goodB2G2(), !dbg !412
  call void @goodG2B1(), !dbg !413
  call void @goodG2B2(), !dbg !414
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !416 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !419, metadata !DIExpression()), !dbg !420
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !421
  %0 = load i8*, i8** %line.addr, align 8, !dbg !422
  %cmp = icmp ne i8* %0, null, !dbg !424
  br i1 %cmp, label %if.then, label %if.end, !dbg !425

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !426
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !428
  br label %if.end, !dbg !429

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !430
  ret void, !dbg !431
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !432 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !433, metadata !DIExpression()), !dbg !434
  %0 = load i8*, i8** %line.addr, align 8, !dbg !435
  %cmp = icmp ne i8* %0, null, !dbg !437
  br i1 %cmp, label %if.then, label %if.end, !dbg !438

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !439
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !441
  br label %if.end, !dbg !442

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !443
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !444 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load i32*, i32** %line.addr, align 8, !dbg !451
  %cmp = icmp ne i32* %0, null, !dbg !453
  br i1 %cmp, label %if.then, label %if.end, !dbg !454

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !455
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !457
  br label %if.end, !dbg !458

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !459
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !460 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !465
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !466
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !468 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !472, metadata !DIExpression()), !dbg !473
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !474
  %conv = sext i16 %0 to i32, !dbg !474
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !475
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !477 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !481, metadata !DIExpression()), !dbg !482
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !483
  %conv = fpext float %0 to double, !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !486 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !490, metadata !DIExpression()), !dbg !491
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !492
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !493
  ret void, !dbg !494
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !495 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !502, metadata !DIExpression()), !dbg !503
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !504
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !505
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !507 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !512
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !515 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !518, metadata !DIExpression()), !dbg !519
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !520
  %conv = sext i8 %0 to i32, !dbg !520
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !521
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !523 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !528, metadata !DIExpression()), !dbg !532
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !533
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !534
  store i32 %0, i32* %arrayidx, align 4, !dbg !535
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !536
  store i32 0, i32* %arrayidx1, align 4, !dbg !537
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !538
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !539
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !541 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !544, metadata !DIExpression()), !dbg !545
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !546
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !547
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !549 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !552, metadata !DIExpression()), !dbg !553
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !554
  %conv = zext i8 %0 to i32, !dbg !554
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !555
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !557 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !561, metadata !DIExpression()), !dbg !562
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !563
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !564
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !566 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !576, metadata !DIExpression()), !dbg !577
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !578
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !579
  %1 = load i32, i32* %intOne, align 4, !dbg !579
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !580
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !581
  %3 = load i32, i32* %intTwo, align 4, !dbg !581
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !582
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !584 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !588, metadata !DIExpression()), !dbg !589
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata i64* %i, metadata !592, metadata !DIExpression()), !dbg !593
  store i64 0, i64* %i, align 8, !dbg !594
  br label %for.cond, !dbg !596

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !597
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !599
  %cmp = icmp ult i64 %0, %1, !dbg !600
  br i1 %cmp, label %for.body, label %for.end, !dbg !601

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !602
  %3 = load i64, i64* %i, align 8, !dbg !604
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !602
  %4 = load i8, i8* %arrayidx, align 1, !dbg !602
  %conv = zext i8 %4 to i32, !dbg !602
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !605
  br label %for.inc, !dbg !606

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !607
  %inc = add i64 %5, 1, !dbg !607
  store i64 %inc, i64* %i, align 8, !dbg !607
  br label %for.cond, !dbg !608, !llvm.loop !609

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !611
  ret void, !dbg !612
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !613 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !616, metadata !DIExpression()), !dbg !617
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !618, metadata !DIExpression()), !dbg !619
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !620, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !622, metadata !DIExpression()), !dbg !623
  store i64 0, i64* %numWritten, align 8, !dbg !623
  br label %while.cond, !dbg !624

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !625
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !626
  %cmp = icmp ult i64 %0, %1, !dbg !627
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !628

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !629
  %2 = load i16*, i16** %call, align 8, !dbg !629
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !629
  %4 = load i64, i64* %numWritten, align 8, !dbg !629
  %mul = mul i64 2, %4, !dbg !629
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !629
  %5 = load i8, i8* %arrayidx, align 1, !dbg !629
  %conv = sext i8 %5 to i32, !dbg !629
  %idxprom = sext i32 %conv to i64, !dbg !629
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !629
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !629
  %conv2 = zext i16 %6 to i32, !dbg !629
  %and = and i32 %conv2, 4096, !dbg !629
  %tobool = icmp ne i32 %and, 0, !dbg !629
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !630

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !631
  %7 = load i16*, i16** %call3, align 8, !dbg !631
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !631
  %9 = load i64, i64* %numWritten, align 8, !dbg !631
  %mul4 = mul i64 2, %9, !dbg !631
  %add = add i64 %mul4, 1, !dbg !631
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !631
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !631
  %conv6 = sext i8 %10 to i32, !dbg !631
  %idxprom7 = sext i32 %conv6 to i64, !dbg !631
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !631
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !631
  %conv9 = zext i16 %11 to i32, !dbg !631
  %and10 = and i32 %conv9, 4096, !dbg !631
  %tobool11 = icmp ne i32 %and10, 0, !dbg !630
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !632
  br i1 %12, label %while.body, label %while.end, !dbg !624

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !633, metadata !DIExpression()), !dbg !635
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !636
  %14 = load i64, i64* %numWritten, align 8, !dbg !637
  %mul12 = mul i64 2, %14, !dbg !638
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !636
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !639
  %15 = load i32, i32* %byte, align 4, !dbg !640
  %conv15 = trunc i32 %15 to i8, !dbg !641
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !642
  %17 = load i64, i64* %numWritten, align 8, !dbg !643
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !642
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !644
  %18 = load i64, i64* %numWritten, align 8, !dbg !645
  %inc = add i64 %18, 1, !dbg !645
  store i64 %inc, i64* %numWritten, align 8, !dbg !645
  br label %while.cond, !dbg !624, !llvm.loop !646

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !648
  ret i64 %19, !dbg !649
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !650 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !653, metadata !DIExpression()), !dbg !654
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !655, metadata !DIExpression()), !dbg !656
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !657, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !659, metadata !DIExpression()), !dbg !660
  store i64 0, i64* %numWritten, align 8, !dbg !660
  br label %while.cond, !dbg !661

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !662
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !663
  %cmp = icmp ult i64 %0, %1, !dbg !664
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !665

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !666
  %3 = load i64, i64* %numWritten, align 8, !dbg !667
  %mul = mul i64 2, %3, !dbg !668
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !666
  %4 = load i32, i32* %arrayidx, align 4, !dbg !666
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !669
  %tobool = icmp ne i32 %call, 0, !dbg !669
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !670

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !671
  %6 = load i64, i64* %numWritten, align 8, !dbg !672
  %mul1 = mul i64 2, %6, !dbg !673
  %add = add i64 %mul1, 1, !dbg !674
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !671
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !671
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !675
  %tobool4 = icmp ne i32 %call3, 0, !dbg !670
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !676
  br i1 %8, label %while.body, label %while.end, !dbg !661

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !677, metadata !DIExpression()), !dbg !679
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !680
  %10 = load i64, i64* %numWritten, align 8, !dbg !681
  %mul5 = mul i64 2, %10, !dbg !682
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !680
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !683
  %11 = load i32, i32* %byte, align 4, !dbg !684
  %conv = trunc i32 %11 to i8, !dbg !685
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !686
  %13 = load i64, i64* %numWritten, align 8, !dbg !687
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !686
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !688
  %14 = load i64, i64* %numWritten, align 8, !dbg !689
  %inc = add i64 %14, 1, !dbg !689
  store i64 %inc, i64* %numWritten, align 8, !dbg !689
  br label %while.cond, !dbg !661, !llvm.loop !690

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !692
  ret i64 %15, !dbg !693
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !694 {
entry:
  ret i32 1, !dbg !697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !698 {
entry:
  ret i32 0, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !700 {
entry:
  %call = call i32 @rand() #8, !dbg !701
  %rem = srem i32 %call, 2, !dbg !702
  ret i32 %rem, !dbg !703
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !704 {
entry:
  ret void, !dbg !705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !706 {
entry:
  ret void, !dbg !707
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !708 {
entry:
  ret void, !dbg !709
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !710 {
entry:
  ret void, !dbg !711
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !712 {
entry:
  ret void, !dbg !713
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !714 {
entry:
  ret void, !dbg !715
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !716 {
entry:
  ret void, !dbg !717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !718 {
entry:
  ret void, !dbg !719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !720 {
entry:
  ret void, !dbg !721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !722 {
entry:
  ret void, !dbg !723
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !724 {
entry:
  ret void, !dbg !725
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !726 {
entry:
  ret void, !dbg !727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !728 {
entry:
  ret void, !dbg !729
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !730 {
entry:
  ret void, !dbg !731
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !732 {
entry:
  ret void, !dbg !733
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !734 {
entry:
  ret void, !dbg !735
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !736 {
entry:
  ret void, !dbg !737
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !738 {
entry:
  ret void, !dbg !739
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

!llvm.dbg.cu = !{!2, !11}
!llvm.ident = !{!51, !51}
!llvm.module.flags = !{!52, !53, !54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticFive", scope: !2, file: !3, line: 38, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_07.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_032/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !11, file: !12, line: 174, type: !8, isLocal: false, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !30, globals: !33, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_032/source_code")
!13 = !{!14}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 46, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!18 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!30 = !{!6, !8, !31, !32}
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!9, !34, !36, !38, !40, !42, !44, !46}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !11, file: !12, line: 175, type: !8, isLocal: false, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !11, file: !12, line: 176, type: !8, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "globalTrue", scope: !11, file: !12, line: 181, type: !8, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "globalFalse", scope: !11, file: !12, line: 182, type: !8, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "globalFive", scope: !11, file: !12, line: 183, type: !8, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalArgc", scope: !11, file: !12, line: 214, type: !8, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalArgv", scope: !11, file: !12, line: 215, type: !48, isLocal: false, isDefinition: true)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !{!"clang version 12.0.0"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_07_bad", scope: !3, file: !3, line: 42, type: !56, scopeLine: 43, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !3, line: 44, type: !49)
!59 = !DILocation(line: 44, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !3, line: 45, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 45, column: 10, scope: !55)
!65 = !DILocation(line: 46, column: 12, scope: !55)
!66 = !DILocation(line: 46, column: 10, scope: !55)
!67 = !DILocation(line: 47, column: 8, scope: !68)
!68 = distinct !DILexicalBlock(scope: !55, file: !3, line: 47, column: 8)
!69 = !DILocation(line: 47, column: 18, scope: !68)
!70 = !DILocation(line: 47, column: 8, scope: !55)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !3, line: 51, type: !74)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 49, column: 9)
!73 = distinct !DILexicalBlock(scope: !68, file: !3, line: 48, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 51, column: 20, scope: !72)
!78 = !DILocation(line: 51, column: 37, scope: !72)
!79 = !DILocation(line: 51, column: 30, scope: !72)
!80 = !DILocalVariable(name: "environment", scope: !72, file: !3, line: 52, type: !49)
!81 = !DILocation(line: 52, column: 20, scope: !72)
!82 = !DILocation(line: 52, column: 34, scope: !72)
!83 = !DILocation(line: 54, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !72, file: !3, line: 54, column: 17)
!85 = !DILocation(line: 54, column: 29, scope: !84)
!86 = !DILocation(line: 54, column: 17, scope: !72)
!87 = !DILocation(line: 57, column: 25, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !3, line: 55, column: 13)
!89 = !DILocation(line: 57, column: 30, scope: !88)
!90 = !DILocation(line: 57, column: 29, scope: !88)
!91 = !DILocation(line: 57, column: 39, scope: !88)
!92 = !DILocation(line: 57, column: 56, scope: !88)
!93 = !DILocation(line: 57, column: 55, scope: !88)
!94 = !DILocation(line: 57, column: 63, scope: !88)
!95 = !DILocation(line: 57, column: 17, scope: !88)
!96 = !DILocation(line: 58, column: 13, scope: !88)
!97 = !DILocation(line: 60, column: 5, scope: !73)
!98 = !DILocation(line: 61, column: 8, scope: !99)
!99 = distinct !DILexicalBlock(scope: !55, file: !3, line: 61, column: 8)
!100 = !DILocation(line: 61, column: 18, scope: !99)
!101 = !DILocation(line: 61, column: 8, scope: !55)
!102 = !DILocalVariable(name: "i", scope: !103, file: !3, line: 64, type: !8)
!103 = distinct !DILexicalBlock(scope: !104, file: !3, line: 63, column: 9)
!104 = distinct !DILexicalBlock(scope: !99, file: !3, line: 62, column: 5)
!105 = !DILocation(line: 64, column: 17, scope: !103)
!106 = !DILocalVariable(name: "n", scope: !103, file: !3, line: 64, type: !8)
!107 = !DILocation(line: 64, column: 20, scope: !103)
!108 = !DILocalVariable(name: "intVariable", scope: !103, file: !3, line: 64, type: !8)
!109 = !DILocation(line: 64, column: 23, scope: !103)
!110 = !DILocation(line: 65, column: 24, scope: !111)
!111 = distinct !DILexicalBlock(scope: !103, file: !3, line: 65, column: 17)
!112 = !DILocation(line: 65, column: 17, scope: !111)
!113 = !DILocation(line: 65, column: 40, scope: !111)
!114 = !DILocation(line: 65, column: 17, scope: !103)
!115 = !DILocation(line: 68, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !3, line: 66, column: 13)
!117 = !DILocation(line: 69, column: 24, scope: !118)
!118 = distinct !DILexicalBlock(scope: !116, file: !3, line: 69, column: 17)
!119 = !DILocation(line: 69, column: 22, scope: !118)
!120 = !DILocation(line: 69, column: 29, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !3, line: 69, column: 17)
!122 = !DILocation(line: 69, column: 33, scope: !121)
!123 = !DILocation(line: 69, column: 31, scope: !121)
!124 = !DILocation(line: 69, column: 17, scope: !118)
!125 = !DILocation(line: 72, column: 32, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !3, line: 70, column: 17)
!127 = !DILocation(line: 73, column: 17, scope: !126)
!128 = !DILocation(line: 69, column: 37, scope: !121)
!129 = !DILocation(line: 69, column: 17, scope: !121)
!130 = distinct !{!130, !124, !131, !132}
!131 = !DILocation(line: 73, column: 17, scope: !118)
!132 = !{!"llvm.loop.mustprogress"}
!133 = !DILocation(line: 74, column: 30, scope: !116)
!134 = !DILocation(line: 74, column: 17, scope: !116)
!135 = !DILocation(line: 75, column: 13, scope: !116)
!136 = !DILocation(line: 77, column: 5, scope: !104)
!137 = !DILocation(line: 78, column: 1, scope: !55)
!138 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 85, type: !56, scopeLine: 86, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!139 = !DILocalVariable(name: "data", scope: !138, file: !3, line: 87, type: !49)
!140 = !DILocation(line: 87, column: 12, scope: !138)
!141 = !DILocalVariable(name: "dataBuffer", scope: !138, file: !3, line: 88, type: !61)
!142 = !DILocation(line: 88, column: 10, scope: !138)
!143 = !DILocation(line: 89, column: 12, scope: !138)
!144 = !DILocation(line: 89, column: 10, scope: !138)
!145 = !DILocation(line: 90, column: 8, scope: !146)
!146 = distinct !DILexicalBlock(scope: !138, file: !3, line: 90, column: 8)
!147 = !DILocation(line: 90, column: 18, scope: !146)
!148 = !DILocation(line: 90, column: 8, scope: !138)
!149 = !DILocalVariable(name: "dataLen", scope: !150, file: !3, line: 94, type: !74)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 92, column: 9)
!151 = distinct !DILexicalBlock(scope: !146, file: !3, line: 91, column: 5)
!152 = !DILocation(line: 94, column: 20, scope: !150)
!153 = !DILocation(line: 94, column: 37, scope: !150)
!154 = !DILocation(line: 94, column: 30, scope: !150)
!155 = !DILocalVariable(name: "environment", scope: !150, file: !3, line: 95, type: !49)
!156 = !DILocation(line: 95, column: 20, scope: !150)
!157 = !DILocation(line: 95, column: 34, scope: !150)
!158 = !DILocation(line: 97, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !150, file: !3, line: 97, column: 17)
!160 = !DILocation(line: 97, column: 29, scope: !159)
!161 = !DILocation(line: 97, column: 17, scope: !150)
!162 = !DILocation(line: 100, column: 25, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !3, line: 98, column: 13)
!164 = !DILocation(line: 100, column: 30, scope: !163)
!165 = !DILocation(line: 100, column: 29, scope: !163)
!166 = !DILocation(line: 100, column: 39, scope: !163)
!167 = !DILocation(line: 100, column: 56, scope: !163)
!168 = !DILocation(line: 100, column: 55, scope: !163)
!169 = !DILocation(line: 100, column: 63, scope: !163)
!170 = !DILocation(line: 100, column: 17, scope: !163)
!171 = !DILocation(line: 101, column: 13, scope: !163)
!172 = !DILocation(line: 103, column: 5, scope: !151)
!173 = !DILocation(line: 104, column: 8, scope: !174)
!174 = distinct !DILexicalBlock(scope: !138, file: !3, line: 104, column: 8)
!175 = !DILocation(line: 104, column: 18, scope: !174)
!176 = !DILocation(line: 104, column: 8, scope: !138)
!177 = !DILocation(line: 107, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !3, line: 105, column: 5)
!179 = !DILocation(line: 108, column: 5, scope: !178)
!180 = !DILocalVariable(name: "i", scope: !181, file: !3, line: 112, type: !8)
!181 = distinct !DILexicalBlock(scope: !182, file: !3, line: 111, column: 9)
!182 = distinct !DILexicalBlock(scope: !174, file: !3, line: 110, column: 5)
!183 = !DILocation(line: 112, column: 17, scope: !181)
!184 = !DILocalVariable(name: "n", scope: !181, file: !3, line: 112, type: !8)
!185 = !DILocation(line: 112, column: 20, scope: !181)
!186 = !DILocalVariable(name: "intVariable", scope: !181, file: !3, line: 112, type: !8)
!187 = !DILocation(line: 112, column: 23, scope: !181)
!188 = !DILocation(line: 113, column: 24, scope: !189)
!189 = distinct !DILexicalBlock(scope: !181, file: !3, line: 113, column: 17)
!190 = !DILocation(line: 113, column: 17, scope: !189)
!191 = !DILocation(line: 113, column: 40, scope: !189)
!192 = !DILocation(line: 113, column: 17, scope: !181)
!193 = !DILocation(line: 116, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !3, line: 116, column: 21)
!195 = distinct !DILexicalBlock(scope: !189, file: !3, line: 114, column: 13)
!196 = !DILocation(line: 116, column: 23, scope: !194)
!197 = !DILocation(line: 116, column: 21, scope: !195)
!198 = !DILocation(line: 118, column: 33, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !3, line: 117, column: 17)
!200 = !DILocation(line: 119, column: 28, scope: !201)
!201 = distinct !DILexicalBlock(scope: !199, file: !3, line: 119, column: 21)
!202 = !DILocation(line: 119, column: 26, scope: !201)
!203 = !DILocation(line: 119, column: 33, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !3, line: 119, column: 21)
!205 = !DILocation(line: 119, column: 37, scope: !204)
!206 = !DILocation(line: 119, column: 35, scope: !204)
!207 = !DILocation(line: 119, column: 21, scope: !201)
!208 = !DILocation(line: 122, column: 36, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !3, line: 120, column: 21)
!210 = !DILocation(line: 123, column: 21, scope: !209)
!211 = !DILocation(line: 119, column: 41, scope: !204)
!212 = !DILocation(line: 119, column: 21, scope: !204)
!213 = distinct !{!213, !207, !214, !132}
!214 = !DILocation(line: 123, column: 21, scope: !201)
!215 = !DILocation(line: 124, column: 34, scope: !199)
!216 = !DILocation(line: 124, column: 21, scope: !199)
!217 = !DILocation(line: 125, column: 17, scope: !199)
!218 = !DILocation(line: 126, column: 13, scope: !195)
!219 = !DILocation(line: 129, column: 1, scope: !138)
!220 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 132, type: !56, scopeLine: 133, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!221 = !DILocalVariable(name: "data", scope: !220, file: !3, line: 134, type: !49)
!222 = !DILocation(line: 134, column: 12, scope: !220)
!223 = !DILocalVariable(name: "dataBuffer", scope: !220, file: !3, line: 135, type: !61)
!224 = !DILocation(line: 135, column: 10, scope: !220)
!225 = !DILocation(line: 136, column: 12, scope: !220)
!226 = !DILocation(line: 136, column: 10, scope: !220)
!227 = !DILocation(line: 137, column: 8, scope: !228)
!228 = distinct !DILexicalBlock(scope: !220, file: !3, line: 137, column: 8)
!229 = !DILocation(line: 137, column: 18, scope: !228)
!230 = !DILocation(line: 137, column: 8, scope: !220)
!231 = !DILocalVariable(name: "dataLen", scope: !232, file: !3, line: 141, type: !74)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 139, column: 9)
!233 = distinct !DILexicalBlock(scope: !228, file: !3, line: 138, column: 5)
!234 = !DILocation(line: 141, column: 20, scope: !232)
!235 = !DILocation(line: 141, column: 37, scope: !232)
!236 = !DILocation(line: 141, column: 30, scope: !232)
!237 = !DILocalVariable(name: "environment", scope: !232, file: !3, line: 142, type: !49)
!238 = !DILocation(line: 142, column: 20, scope: !232)
!239 = !DILocation(line: 142, column: 34, scope: !232)
!240 = !DILocation(line: 144, column: 17, scope: !241)
!241 = distinct !DILexicalBlock(scope: !232, file: !3, line: 144, column: 17)
!242 = !DILocation(line: 144, column: 29, scope: !241)
!243 = !DILocation(line: 144, column: 17, scope: !232)
!244 = !DILocation(line: 147, column: 25, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !3, line: 145, column: 13)
!246 = !DILocation(line: 147, column: 30, scope: !245)
!247 = !DILocation(line: 147, column: 29, scope: !245)
!248 = !DILocation(line: 147, column: 39, scope: !245)
!249 = !DILocation(line: 147, column: 56, scope: !245)
!250 = !DILocation(line: 147, column: 55, scope: !245)
!251 = !DILocation(line: 147, column: 63, scope: !245)
!252 = !DILocation(line: 147, column: 17, scope: !245)
!253 = !DILocation(line: 148, column: 13, scope: !245)
!254 = !DILocation(line: 150, column: 5, scope: !233)
!255 = !DILocation(line: 151, column: 8, scope: !256)
!256 = distinct !DILexicalBlock(scope: !220, file: !3, line: 151, column: 8)
!257 = !DILocation(line: 151, column: 18, scope: !256)
!258 = !DILocation(line: 151, column: 8, scope: !220)
!259 = !DILocalVariable(name: "i", scope: !260, file: !3, line: 154, type: !8)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 153, column: 9)
!261 = distinct !DILexicalBlock(scope: !256, file: !3, line: 152, column: 5)
!262 = !DILocation(line: 154, column: 17, scope: !260)
!263 = !DILocalVariable(name: "n", scope: !260, file: !3, line: 154, type: !8)
!264 = !DILocation(line: 154, column: 20, scope: !260)
!265 = !DILocalVariable(name: "intVariable", scope: !260, file: !3, line: 154, type: !8)
!266 = !DILocation(line: 154, column: 23, scope: !260)
!267 = !DILocation(line: 155, column: 24, scope: !268)
!268 = distinct !DILexicalBlock(scope: !260, file: !3, line: 155, column: 17)
!269 = !DILocation(line: 155, column: 17, scope: !268)
!270 = !DILocation(line: 155, column: 40, scope: !268)
!271 = !DILocation(line: 155, column: 17, scope: !260)
!272 = !DILocation(line: 158, column: 21, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 158, column: 21)
!274 = distinct !DILexicalBlock(scope: !268, file: !3, line: 156, column: 13)
!275 = !DILocation(line: 158, column: 23, scope: !273)
!276 = !DILocation(line: 158, column: 21, scope: !274)
!277 = !DILocation(line: 160, column: 33, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !3, line: 159, column: 17)
!279 = !DILocation(line: 161, column: 28, scope: !280)
!280 = distinct !DILexicalBlock(scope: !278, file: !3, line: 161, column: 21)
!281 = !DILocation(line: 161, column: 26, scope: !280)
!282 = !DILocation(line: 161, column: 33, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 161, column: 21)
!284 = !DILocation(line: 161, column: 37, scope: !283)
!285 = !DILocation(line: 161, column: 35, scope: !283)
!286 = !DILocation(line: 161, column: 21, scope: !280)
!287 = !DILocation(line: 164, column: 36, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !3, line: 162, column: 21)
!289 = !DILocation(line: 165, column: 21, scope: !288)
!290 = !DILocation(line: 161, column: 41, scope: !283)
!291 = !DILocation(line: 161, column: 21, scope: !283)
!292 = distinct !{!292, !286, !293, !132}
!293 = !DILocation(line: 165, column: 21, scope: !280)
!294 = !DILocation(line: 166, column: 34, scope: !278)
!295 = !DILocation(line: 166, column: 21, scope: !278)
!296 = !DILocation(line: 167, column: 17, scope: !278)
!297 = !DILocation(line: 168, column: 13, scope: !274)
!298 = !DILocation(line: 170, column: 5, scope: !261)
!299 = !DILocation(line: 171, column: 1, scope: !220)
!300 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 174, type: !56, scopeLine: 175, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!301 = !DILocalVariable(name: "data", scope: !300, file: !3, line: 176, type: !49)
!302 = !DILocation(line: 176, column: 12, scope: !300)
!303 = !DILocalVariable(name: "dataBuffer", scope: !300, file: !3, line: 177, type: !61)
!304 = !DILocation(line: 177, column: 10, scope: !300)
!305 = !DILocation(line: 178, column: 12, scope: !300)
!306 = !DILocation(line: 178, column: 10, scope: !300)
!307 = !DILocation(line: 179, column: 8, scope: !308)
!308 = distinct !DILexicalBlock(scope: !300, file: !3, line: 179, column: 8)
!309 = !DILocation(line: 179, column: 18, scope: !308)
!310 = !DILocation(line: 179, column: 8, scope: !300)
!311 = !DILocation(line: 182, column: 9, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !3, line: 180, column: 5)
!313 = !DILocation(line: 183, column: 5, scope: !312)
!314 = !DILocation(line: 187, column: 16, scope: !315)
!315 = distinct !DILexicalBlock(scope: !308, file: !3, line: 185, column: 5)
!316 = !DILocation(line: 187, column: 9, scope: !315)
!317 = !DILocation(line: 189, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !300, file: !3, line: 189, column: 8)
!319 = !DILocation(line: 189, column: 18, scope: !318)
!320 = !DILocation(line: 189, column: 8, scope: !300)
!321 = !DILocalVariable(name: "i", scope: !322, file: !3, line: 192, type: !8)
!322 = distinct !DILexicalBlock(scope: !323, file: !3, line: 191, column: 9)
!323 = distinct !DILexicalBlock(scope: !318, file: !3, line: 190, column: 5)
!324 = !DILocation(line: 192, column: 17, scope: !322)
!325 = !DILocalVariable(name: "n", scope: !322, file: !3, line: 192, type: !8)
!326 = !DILocation(line: 192, column: 20, scope: !322)
!327 = !DILocalVariable(name: "intVariable", scope: !322, file: !3, line: 192, type: !8)
!328 = !DILocation(line: 192, column: 23, scope: !322)
!329 = !DILocation(line: 193, column: 24, scope: !330)
!330 = distinct !DILexicalBlock(scope: !322, file: !3, line: 193, column: 17)
!331 = !DILocation(line: 193, column: 17, scope: !330)
!332 = !DILocation(line: 193, column: 40, scope: !330)
!333 = !DILocation(line: 193, column: 17, scope: !322)
!334 = !DILocation(line: 196, column: 29, scope: !335)
!335 = distinct !DILexicalBlock(scope: !330, file: !3, line: 194, column: 13)
!336 = !DILocation(line: 197, column: 24, scope: !337)
!337 = distinct !DILexicalBlock(scope: !335, file: !3, line: 197, column: 17)
!338 = !DILocation(line: 197, column: 22, scope: !337)
!339 = !DILocation(line: 197, column: 29, scope: !340)
!340 = distinct !DILexicalBlock(scope: !337, file: !3, line: 197, column: 17)
!341 = !DILocation(line: 197, column: 33, scope: !340)
!342 = !DILocation(line: 197, column: 31, scope: !340)
!343 = !DILocation(line: 197, column: 17, scope: !337)
!344 = !DILocation(line: 200, column: 32, scope: !345)
!345 = distinct !DILexicalBlock(scope: !340, file: !3, line: 198, column: 17)
!346 = !DILocation(line: 201, column: 17, scope: !345)
!347 = !DILocation(line: 197, column: 37, scope: !340)
!348 = !DILocation(line: 197, column: 17, scope: !340)
!349 = distinct !{!349, !343, !350, !132}
!350 = !DILocation(line: 201, column: 17, scope: !337)
!351 = !DILocation(line: 202, column: 30, scope: !335)
!352 = !DILocation(line: 202, column: 17, scope: !335)
!353 = !DILocation(line: 203, column: 13, scope: !335)
!354 = !DILocation(line: 205, column: 5, scope: !323)
!355 = !DILocation(line: 206, column: 1, scope: !300)
!356 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 209, type: !56, scopeLine: 210, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!357 = !DILocalVariable(name: "data", scope: !356, file: !3, line: 211, type: !49)
!358 = !DILocation(line: 211, column: 12, scope: !356)
!359 = !DILocalVariable(name: "dataBuffer", scope: !356, file: !3, line: 212, type: !61)
!360 = !DILocation(line: 212, column: 10, scope: !356)
!361 = !DILocation(line: 213, column: 12, scope: !356)
!362 = !DILocation(line: 213, column: 10, scope: !356)
!363 = !DILocation(line: 214, column: 8, scope: !364)
!364 = distinct !DILexicalBlock(scope: !356, file: !3, line: 214, column: 8)
!365 = !DILocation(line: 214, column: 18, scope: !364)
!366 = !DILocation(line: 214, column: 8, scope: !356)
!367 = !DILocation(line: 217, column: 16, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !3, line: 215, column: 5)
!369 = !DILocation(line: 217, column: 9, scope: !368)
!370 = !DILocation(line: 218, column: 5, scope: !368)
!371 = !DILocation(line: 219, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !356, file: !3, line: 219, column: 8)
!373 = !DILocation(line: 219, column: 18, scope: !372)
!374 = !DILocation(line: 219, column: 8, scope: !356)
!375 = !DILocalVariable(name: "i", scope: !376, file: !3, line: 222, type: !8)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 221, column: 9)
!377 = distinct !DILexicalBlock(scope: !372, file: !3, line: 220, column: 5)
!378 = !DILocation(line: 222, column: 17, scope: !376)
!379 = !DILocalVariable(name: "n", scope: !376, file: !3, line: 222, type: !8)
!380 = !DILocation(line: 222, column: 20, scope: !376)
!381 = !DILocalVariable(name: "intVariable", scope: !376, file: !3, line: 222, type: !8)
!382 = !DILocation(line: 222, column: 23, scope: !376)
!383 = !DILocation(line: 223, column: 24, scope: !384)
!384 = distinct !DILexicalBlock(scope: !376, file: !3, line: 223, column: 17)
!385 = !DILocation(line: 223, column: 17, scope: !384)
!386 = !DILocation(line: 223, column: 40, scope: !384)
!387 = !DILocation(line: 223, column: 17, scope: !376)
!388 = !DILocation(line: 226, column: 29, scope: !389)
!389 = distinct !DILexicalBlock(scope: !384, file: !3, line: 224, column: 13)
!390 = !DILocation(line: 227, column: 24, scope: !391)
!391 = distinct !DILexicalBlock(scope: !389, file: !3, line: 227, column: 17)
!392 = !DILocation(line: 227, column: 22, scope: !391)
!393 = !DILocation(line: 227, column: 29, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !3, line: 227, column: 17)
!395 = !DILocation(line: 227, column: 33, scope: !394)
!396 = !DILocation(line: 227, column: 31, scope: !394)
!397 = !DILocation(line: 227, column: 17, scope: !391)
!398 = !DILocation(line: 230, column: 32, scope: !399)
!399 = distinct !DILexicalBlock(scope: !394, file: !3, line: 228, column: 17)
!400 = !DILocation(line: 231, column: 17, scope: !399)
!401 = !DILocation(line: 227, column: 37, scope: !394)
!402 = !DILocation(line: 227, column: 17, scope: !394)
!403 = distinct !{!403, !397, !404, !132}
!404 = !DILocation(line: 231, column: 17, scope: !391)
!405 = !DILocation(line: 232, column: 30, scope: !389)
!406 = !DILocation(line: 232, column: 17, scope: !389)
!407 = !DILocation(line: 233, column: 13, scope: !389)
!408 = !DILocation(line: 235, column: 5, scope: !377)
!409 = !DILocation(line: 236, column: 1, scope: !356)
!410 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_07_good", scope: !3, file: !3, line: 238, type: !56, scopeLine: 239, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!411 = !DILocation(line: 240, column: 5, scope: !410)
!412 = !DILocation(line: 241, column: 5, scope: !410)
!413 = !DILocation(line: 242, column: 5, scope: !410)
!414 = !DILocation(line: 243, column: 5, scope: !410)
!415 = !DILocation(line: 244, column: 1, scope: !410)
!416 = distinct !DISubprogram(name: "printLine", scope: !12, file: !12, line: 11, type: !417, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !49}
!419 = !DILocalVariable(name: "line", arg: 1, scope: !416, file: !12, line: 11, type: !49)
!420 = !DILocation(line: 11, column: 25, scope: !416)
!421 = !DILocation(line: 13, column: 1, scope: !416)
!422 = !DILocation(line: 14, column: 8, scope: !423)
!423 = distinct !DILexicalBlock(scope: !416, file: !12, line: 14, column: 8)
!424 = !DILocation(line: 14, column: 13, scope: !423)
!425 = !DILocation(line: 14, column: 8, scope: !416)
!426 = !DILocation(line: 16, column: 24, scope: !427)
!427 = distinct !DILexicalBlock(scope: !423, file: !12, line: 15, column: 5)
!428 = !DILocation(line: 16, column: 9, scope: !427)
!429 = !DILocation(line: 17, column: 5, scope: !427)
!430 = !DILocation(line: 18, column: 5, scope: !416)
!431 = !DILocation(line: 19, column: 1, scope: !416)
!432 = distinct !DISubprogram(name: "printSinkLine", scope: !12, file: !12, line: 20, type: !417, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!433 = !DILocalVariable(name: "line", arg: 1, scope: !432, file: !12, line: 20, type: !49)
!434 = !DILocation(line: 20, column: 29, scope: !432)
!435 = !DILocation(line: 22, column: 8, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !12, line: 22, column: 8)
!437 = !DILocation(line: 22, column: 13, scope: !436)
!438 = !DILocation(line: 22, column: 8, scope: !432)
!439 = !DILocation(line: 24, column: 24, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !12, line: 23, column: 5)
!441 = !DILocation(line: 24, column: 9, scope: !440)
!442 = !DILocation(line: 25, column: 5, scope: !440)
!443 = !DILocation(line: 26, column: 1, scope: !432)
!444 = distinct !DISubprogram(name: "printWLine", scope: !12, file: !12, line: 27, type: !445, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !8)
!449 = !DILocalVariable(name: "line", arg: 1, scope: !444, file: !12, line: 27, type: !447)
!450 = !DILocation(line: 27, column: 29, scope: !444)
!451 = !DILocation(line: 29, column: 8, scope: !452)
!452 = distinct !DILexicalBlock(scope: !444, file: !12, line: 29, column: 8)
!453 = !DILocation(line: 29, column: 13, scope: !452)
!454 = !DILocation(line: 29, column: 8, scope: !444)
!455 = !DILocation(line: 31, column: 27, scope: !456)
!456 = distinct !DILexicalBlock(scope: !452, file: !12, line: 30, column: 5)
!457 = !DILocation(line: 31, column: 9, scope: !456)
!458 = !DILocation(line: 32, column: 5, scope: !456)
!459 = !DILocation(line: 33, column: 1, scope: !444)
!460 = distinct !DISubprogram(name: "printIntLine", scope: !12, file: !12, line: 35, type: !461, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !8}
!463 = !DILocalVariable(name: "intNumber", arg: 1, scope: !460, file: !12, line: 35, type: !8)
!464 = !DILocation(line: 35, column: 24, scope: !460)
!465 = !DILocation(line: 37, column: 20, scope: !460)
!466 = !DILocation(line: 37, column: 5, scope: !460)
!467 = !DILocation(line: 38, column: 1, scope: !460)
!468 = distinct !DISubprogram(name: "printShortLine", scope: !12, file: !12, line: 40, type: !469, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !471}
!471 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!472 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !468, file: !12, line: 40, type: !471)
!473 = !DILocation(line: 40, column: 28, scope: !468)
!474 = !DILocation(line: 42, column: 21, scope: !468)
!475 = !DILocation(line: 42, column: 5, scope: !468)
!476 = !DILocation(line: 43, column: 1, scope: !468)
!477 = distinct !DISubprogram(name: "printFloatLine", scope: !12, file: !12, line: 45, type: !478, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !480}
!480 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!481 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !477, file: !12, line: 45, type: !480)
!482 = !DILocation(line: 45, column: 28, scope: !477)
!483 = !DILocation(line: 47, column: 20, scope: !477)
!484 = !DILocation(line: 47, column: 5, scope: !477)
!485 = !DILocation(line: 48, column: 1, scope: !477)
!486 = distinct !DISubprogram(name: "printLongLine", scope: !12, file: !12, line: 50, type: !487, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !489}
!489 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!490 = !DILocalVariable(name: "longNumber", arg: 1, scope: !486, file: !12, line: 50, type: !489)
!491 = !DILocation(line: 50, column: 26, scope: !486)
!492 = !DILocation(line: 52, column: 21, scope: !486)
!493 = !DILocation(line: 52, column: 5, scope: !486)
!494 = !DILocation(line: 53, column: 1, scope: !486)
!495 = distinct !DISubprogram(name: "printLongLongLine", scope: !12, file: !12, line: 55, type: !496, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !498}
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !499, line: 27, baseType: !500)
!499 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !501, line: 44, baseType: !489)
!501 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!502 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !495, file: !12, line: 55, type: !498)
!503 = !DILocation(line: 55, column: 33, scope: !495)
!504 = !DILocation(line: 57, column: 29, scope: !495)
!505 = !DILocation(line: 57, column: 5, scope: !495)
!506 = !DILocation(line: 58, column: 1, scope: !495)
!507 = distinct !DISubprogram(name: "printSizeTLine", scope: !12, file: !12, line: 60, type: !508, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !74}
!510 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !507, file: !12, line: 60, type: !74)
!511 = !DILocation(line: 60, column: 29, scope: !507)
!512 = !DILocation(line: 62, column: 21, scope: !507)
!513 = !DILocation(line: 62, column: 5, scope: !507)
!514 = !DILocation(line: 63, column: 1, scope: !507)
!515 = distinct !DISubprogram(name: "printHexCharLine", scope: !12, file: !12, line: 65, type: !516, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !50}
!518 = !DILocalVariable(name: "charHex", arg: 1, scope: !515, file: !12, line: 65, type: !50)
!519 = !DILocation(line: 65, column: 29, scope: !515)
!520 = !DILocation(line: 67, column: 22, scope: !515)
!521 = !DILocation(line: 67, column: 5, scope: !515)
!522 = !DILocation(line: 68, column: 1, scope: !515)
!523 = distinct !DISubprogram(name: "printWcharLine", scope: !12, file: !12, line: 70, type: !524, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !448}
!526 = !DILocalVariable(name: "wideChar", arg: 1, scope: !523, file: !12, line: 70, type: !448)
!527 = !DILocation(line: 70, column: 29, scope: !523)
!528 = !DILocalVariable(name: "s", scope: !523, file: !12, line: 74, type: !529)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 64, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 2)
!532 = !DILocation(line: 74, column: 13, scope: !523)
!533 = !DILocation(line: 75, column: 16, scope: !523)
!534 = !DILocation(line: 75, column: 9, scope: !523)
!535 = !DILocation(line: 75, column: 14, scope: !523)
!536 = !DILocation(line: 76, column: 9, scope: !523)
!537 = !DILocation(line: 76, column: 14, scope: !523)
!538 = !DILocation(line: 77, column: 21, scope: !523)
!539 = !DILocation(line: 77, column: 5, scope: !523)
!540 = !DILocation(line: 78, column: 1, scope: !523)
!541 = distinct !DISubprogram(name: "printUnsignedLine", scope: !12, file: !12, line: 80, type: !542, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !16}
!544 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !541, file: !12, line: 80, type: !16)
!545 = !DILocation(line: 80, column: 33, scope: !541)
!546 = !DILocation(line: 82, column: 20, scope: !541)
!547 = !DILocation(line: 82, column: 5, scope: !541)
!548 = !DILocation(line: 83, column: 1, scope: !541)
!549 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !12, file: !12, line: 85, type: !550, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !32}
!552 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !549, file: !12, line: 85, type: !32)
!553 = !DILocation(line: 85, column: 45, scope: !549)
!554 = !DILocation(line: 87, column: 22, scope: !549)
!555 = !DILocation(line: 87, column: 5, scope: !549)
!556 = !DILocation(line: 88, column: 1, scope: !549)
!557 = distinct !DISubprogram(name: "printDoubleLine", scope: !12, file: !12, line: 90, type: !558, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !560}
!560 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!561 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !557, file: !12, line: 90, type: !560)
!562 = !DILocation(line: 90, column: 29, scope: !557)
!563 = !DILocation(line: 92, column: 20, scope: !557)
!564 = !DILocation(line: 92, column: 5, scope: !557)
!565 = !DILocation(line: 93, column: 1, scope: !557)
!566 = distinct !DISubprogram(name: "printStructLine", scope: !12, file: !12, line: 95, type: !567, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !569}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !571, line: 100, baseType: !572)
!571 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_032/source_code")
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !571, line: 96, size: 64, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !572, file: !571, line: 98, baseType: !8, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !572, file: !571, line: 99, baseType: !8, size: 32, offset: 32)
!576 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !566, file: !12, line: 95, type: !569)
!577 = !DILocation(line: 95, column: 40, scope: !566)
!578 = !DILocation(line: 97, column: 26, scope: !566)
!579 = !DILocation(line: 97, column: 47, scope: !566)
!580 = !DILocation(line: 97, column: 55, scope: !566)
!581 = !DILocation(line: 97, column: 76, scope: !566)
!582 = !DILocation(line: 97, column: 5, scope: !566)
!583 = !DILocation(line: 98, column: 1, scope: !566)
!584 = distinct !DISubprogram(name: "printBytesLine", scope: !12, file: !12, line: 100, type: !585, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !587, !74}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!588 = !DILocalVariable(name: "bytes", arg: 1, scope: !584, file: !12, line: 100, type: !587)
!589 = !DILocation(line: 100, column: 38, scope: !584)
!590 = !DILocalVariable(name: "numBytes", arg: 2, scope: !584, file: !12, line: 100, type: !74)
!591 = !DILocation(line: 100, column: 52, scope: !584)
!592 = !DILocalVariable(name: "i", scope: !584, file: !12, line: 102, type: !74)
!593 = !DILocation(line: 102, column: 12, scope: !584)
!594 = !DILocation(line: 103, column: 12, scope: !595)
!595 = distinct !DILexicalBlock(scope: !584, file: !12, line: 103, column: 5)
!596 = !DILocation(line: 103, column: 10, scope: !595)
!597 = !DILocation(line: 103, column: 17, scope: !598)
!598 = distinct !DILexicalBlock(scope: !595, file: !12, line: 103, column: 5)
!599 = !DILocation(line: 103, column: 21, scope: !598)
!600 = !DILocation(line: 103, column: 19, scope: !598)
!601 = !DILocation(line: 103, column: 5, scope: !595)
!602 = !DILocation(line: 105, column: 24, scope: !603)
!603 = distinct !DILexicalBlock(scope: !598, file: !12, line: 104, column: 5)
!604 = !DILocation(line: 105, column: 30, scope: !603)
!605 = !DILocation(line: 105, column: 9, scope: !603)
!606 = !DILocation(line: 106, column: 5, scope: !603)
!607 = !DILocation(line: 103, column: 31, scope: !598)
!608 = !DILocation(line: 103, column: 5, scope: !598)
!609 = distinct !{!609, !601, !610, !132}
!610 = !DILocation(line: 106, column: 5, scope: !595)
!611 = !DILocation(line: 107, column: 5, scope: !584)
!612 = !DILocation(line: 108, column: 1, scope: !584)
!613 = distinct !DISubprogram(name: "decodeHexChars", scope: !12, file: !12, line: 113, type: !614, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!614 = !DISubroutineType(types: !615)
!615 = !{!74, !587, !74, !49}
!616 = !DILocalVariable(name: "bytes", arg: 1, scope: !613, file: !12, line: 113, type: !587)
!617 = !DILocation(line: 113, column: 39, scope: !613)
!618 = !DILocalVariable(name: "numBytes", arg: 2, scope: !613, file: !12, line: 113, type: !74)
!619 = !DILocation(line: 113, column: 53, scope: !613)
!620 = !DILocalVariable(name: "hex", arg: 3, scope: !613, file: !12, line: 113, type: !49)
!621 = !DILocation(line: 113, column: 71, scope: !613)
!622 = !DILocalVariable(name: "numWritten", scope: !613, file: !12, line: 115, type: !74)
!623 = !DILocation(line: 115, column: 12, scope: !613)
!624 = !DILocation(line: 121, column: 5, scope: !613)
!625 = !DILocation(line: 121, column: 12, scope: !613)
!626 = !DILocation(line: 121, column: 25, scope: !613)
!627 = !DILocation(line: 121, column: 23, scope: !613)
!628 = !DILocation(line: 121, column: 34, scope: !613)
!629 = !DILocation(line: 121, column: 37, scope: !613)
!630 = !DILocation(line: 121, column: 67, scope: !613)
!631 = !DILocation(line: 121, column: 70, scope: !613)
!632 = !DILocation(line: 0, scope: !613)
!633 = !DILocalVariable(name: "byte", scope: !634, file: !12, line: 123, type: !8)
!634 = distinct !DILexicalBlock(scope: !613, file: !12, line: 122, column: 5)
!635 = !DILocation(line: 123, column: 13, scope: !634)
!636 = !DILocation(line: 124, column: 17, scope: !634)
!637 = !DILocation(line: 124, column: 25, scope: !634)
!638 = !DILocation(line: 124, column: 23, scope: !634)
!639 = !DILocation(line: 124, column: 9, scope: !634)
!640 = !DILocation(line: 125, column: 45, scope: !634)
!641 = !DILocation(line: 125, column: 29, scope: !634)
!642 = !DILocation(line: 125, column: 9, scope: !634)
!643 = !DILocation(line: 125, column: 15, scope: !634)
!644 = !DILocation(line: 125, column: 27, scope: !634)
!645 = !DILocation(line: 126, column: 9, scope: !634)
!646 = distinct !{!646, !624, !647, !132}
!647 = !DILocation(line: 127, column: 5, scope: !613)
!648 = !DILocation(line: 129, column: 12, scope: !613)
!649 = !DILocation(line: 129, column: 5, scope: !613)
!650 = distinct !DISubprogram(name: "decodeHexWChars", scope: !12, file: !12, line: 135, type: !651, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!651 = !DISubroutineType(types: !652)
!652 = !{!74, !587, !74, !447}
!653 = !DILocalVariable(name: "bytes", arg: 1, scope: !650, file: !12, line: 135, type: !587)
!654 = !DILocation(line: 135, column: 41, scope: !650)
!655 = !DILocalVariable(name: "numBytes", arg: 2, scope: !650, file: !12, line: 135, type: !74)
!656 = !DILocation(line: 135, column: 55, scope: !650)
!657 = !DILocalVariable(name: "hex", arg: 3, scope: !650, file: !12, line: 135, type: !447)
!658 = !DILocation(line: 135, column: 76, scope: !650)
!659 = !DILocalVariable(name: "numWritten", scope: !650, file: !12, line: 137, type: !74)
!660 = !DILocation(line: 137, column: 12, scope: !650)
!661 = !DILocation(line: 143, column: 5, scope: !650)
!662 = !DILocation(line: 143, column: 12, scope: !650)
!663 = !DILocation(line: 143, column: 25, scope: !650)
!664 = !DILocation(line: 143, column: 23, scope: !650)
!665 = !DILocation(line: 143, column: 34, scope: !650)
!666 = !DILocation(line: 143, column: 47, scope: !650)
!667 = !DILocation(line: 143, column: 55, scope: !650)
!668 = !DILocation(line: 143, column: 53, scope: !650)
!669 = !DILocation(line: 143, column: 37, scope: !650)
!670 = !DILocation(line: 143, column: 68, scope: !650)
!671 = !DILocation(line: 143, column: 81, scope: !650)
!672 = !DILocation(line: 143, column: 89, scope: !650)
!673 = !DILocation(line: 143, column: 87, scope: !650)
!674 = !DILocation(line: 143, column: 100, scope: !650)
!675 = !DILocation(line: 143, column: 71, scope: !650)
!676 = !DILocation(line: 0, scope: !650)
!677 = !DILocalVariable(name: "byte", scope: !678, file: !12, line: 145, type: !8)
!678 = distinct !DILexicalBlock(scope: !650, file: !12, line: 144, column: 5)
!679 = !DILocation(line: 145, column: 13, scope: !678)
!680 = !DILocation(line: 146, column: 18, scope: !678)
!681 = !DILocation(line: 146, column: 26, scope: !678)
!682 = !DILocation(line: 146, column: 24, scope: !678)
!683 = !DILocation(line: 146, column: 9, scope: !678)
!684 = !DILocation(line: 147, column: 45, scope: !678)
!685 = !DILocation(line: 147, column: 29, scope: !678)
!686 = !DILocation(line: 147, column: 9, scope: !678)
!687 = !DILocation(line: 147, column: 15, scope: !678)
!688 = !DILocation(line: 147, column: 27, scope: !678)
!689 = !DILocation(line: 148, column: 9, scope: !678)
!690 = distinct !{!690, !661, !691, !132}
!691 = !DILocation(line: 149, column: 5, scope: !650)
!692 = !DILocation(line: 151, column: 12, scope: !650)
!693 = !DILocation(line: 151, column: 5, scope: !650)
!694 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !12, file: !12, line: 156, type: !695, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!695 = !DISubroutineType(types: !696)
!696 = !{!8}
!697 = !DILocation(line: 158, column: 5, scope: !694)
!698 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !12, file: !12, line: 161, type: !695, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!699 = !DILocation(line: 163, column: 5, scope: !698)
!700 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !12, file: !12, line: 166, type: !695, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!701 = !DILocation(line: 168, column: 13, scope: !700)
!702 = !DILocation(line: 168, column: 20, scope: !700)
!703 = !DILocation(line: 168, column: 5, scope: !700)
!704 = distinct !DISubprogram(name: "good1", scope: !12, file: !12, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!705 = !DILocation(line: 187, column: 16, scope: !704)
!706 = distinct !DISubprogram(name: "good2", scope: !12, file: !12, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!707 = !DILocation(line: 188, column: 16, scope: !706)
!708 = distinct !DISubprogram(name: "good3", scope: !12, file: !12, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!709 = !DILocation(line: 189, column: 16, scope: !708)
!710 = distinct !DISubprogram(name: "good4", scope: !12, file: !12, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!711 = !DILocation(line: 190, column: 16, scope: !710)
!712 = distinct !DISubprogram(name: "good5", scope: !12, file: !12, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!713 = !DILocation(line: 191, column: 16, scope: !712)
!714 = distinct !DISubprogram(name: "good6", scope: !12, file: !12, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!715 = !DILocation(line: 192, column: 16, scope: !714)
!716 = distinct !DISubprogram(name: "good7", scope: !12, file: !12, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!717 = !DILocation(line: 193, column: 16, scope: !716)
!718 = distinct !DISubprogram(name: "good8", scope: !12, file: !12, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!719 = !DILocation(line: 194, column: 16, scope: !718)
!720 = distinct !DISubprogram(name: "good9", scope: !12, file: !12, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!721 = !DILocation(line: 195, column: 16, scope: !720)
!722 = distinct !DISubprogram(name: "bad1", scope: !12, file: !12, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!723 = !DILocation(line: 198, column: 15, scope: !722)
!724 = distinct !DISubprogram(name: "bad2", scope: !12, file: !12, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!725 = !DILocation(line: 199, column: 15, scope: !724)
!726 = distinct !DISubprogram(name: "bad3", scope: !12, file: !12, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!727 = !DILocation(line: 200, column: 15, scope: !726)
!728 = distinct !DISubprogram(name: "bad4", scope: !12, file: !12, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!729 = !DILocation(line: 201, column: 15, scope: !728)
!730 = distinct !DISubprogram(name: "bad5", scope: !12, file: !12, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!731 = !DILocation(line: 202, column: 15, scope: !730)
!732 = distinct !DISubprogram(name: "bad6", scope: !12, file: !12, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!733 = !DILocation(line: 203, column: 15, scope: !732)
!734 = distinct !DISubprogram(name: "bad7", scope: !12, file: !12, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!735 = !DILocation(line: 204, column: 15, scope: !734)
!736 = distinct !DISubprogram(name: "bad8", scope: !12, file: !12, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!737 = !DILocation(line: 205, column: 15, scope: !736)
!738 = distinct !DISubprogram(name: "bad9", scope: !12, file: !12, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!739 = !DILocation(line: 206, column: 15, scope: !738)
