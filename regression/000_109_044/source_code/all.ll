; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@badStatic = dso_local global i32 0, align 4, !dbg !0
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !8
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !11
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !13
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
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
define dso_local void @badSink(i8* %data) #0 !dbg !61 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load i32, i32* @badStatic, align 4, !dbg !66
  %tobool = icmp ne i32 %0, 0, !dbg !66
  br i1 %tobool, label %if.then, label %if.end4, !dbg !68

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !69, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %n, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !75, metadata !DIExpression()), !dbg !76
  %1 = load i8*, i8** %data.addr, align 8, !dbg !77
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !79
  %cmp = icmp eq i32 %call, 1, !dbg !80
  br i1 %cmp, label %if.then1, label %if.end, !dbg !81

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !82
  store i32 0, i32* %i, align 4, !dbg !84
  br label %for.cond, !dbg !86

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !87
  %3 = load i32, i32* %n, align 4, !dbg !89
  %cmp2 = icmp slt i32 %2, %3, !dbg !90
  br i1 %cmp2, label %for.body, label %for.end, !dbg !91

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !92
  %inc = add nsw i32 %4, 1, !dbg !92
  store i32 %inc, i32* %intVariable, align 4, !dbg !92
  br label %for.inc, !dbg !94

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !95
  %inc3 = add nsw i32 %5, 1, !dbg !95
  store i32 %inc3, i32* %i, align 4, !dbg !95
  br label %for.cond, !dbg !96, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !100
  call void @printIntLine(i32 %6), !dbg !101
  br label %if.end, !dbg !102

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !103

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !104
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_21_bad() #0 !dbg !105 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !110, metadata !DIExpression()), !dbg !114
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !114
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !114
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !115
  store i8* %arraydecay, i8** %data, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !117, metadata !DIExpression()), !dbg !122
  %1 = load i8*, i8** %data, align 8, !dbg !123
  %call = call i64 @strlen(i8* %1) #8, !dbg !124
  store i64 %call, i64* %dataLen, align 8, !dbg !122
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !125, metadata !DIExpression()), !dbg !126
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !127
  store i8* %call1, i8** %environment, align 8, !dbg !126
  %2 = load i8*, i8** %environment, align 8, !dbg !128
  %cmp = icmp ne i8* %2, null, !dbg !130
  br i1 %cmp, label %if.then, label %if.end, !dbg !131

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !132
  %4 = load i64, i64* %dataLen, align 8, !dbg !134
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !135
  %5 = load i8*, i8** %environment, align 8, !dbg !136
  %6 = load i64, i64* %dataLen, align 8, !dbg !137
  %sub = sub i64 100, %6, !dbg !138
  %sub2 = sub i64 %sub, 1, !dbg !139
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !140
  br label %if.end, !dbg !141

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @badStatic, align 4, !dbg !142
  %7 = load i8*, i8** %data, align 8, !dbg !143
  call void @badSink(i8* %7), !dbg !144
  ret void, !dbg !145
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
define dso_local void @goodB2G1Sink(i8* %data) #0 !dbg !146 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !147, metadata !DIExpression()), !dbg !148
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !149
  %tobool = icmp ne i32 %0, 0, !dbg !149
  br i1 %tobool, label %if.then, label %if.else, !dbg !151

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !152
  br label %if.end7, !dbg !154

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !155, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %n, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !161, metadata !DIExpression()), !dbg !162
  %1 = load i8*, i8** %data.addr, align 8, !dbg !163
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !165
  %cmp = icmp eq i32 %call, 1, !dbg !166
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !167

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %n, align 4, !dbg !168
  %cmp2 = icmp slt i32 %2, 10000, !dbg !171
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !172

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !173
  store i32 0, i32* %i, align 4, !dbg !175
  br label %for.cond, !dbg !177

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !178
  %4 = load i32, i32* %n, align 4, !dbg !180
  %cmp4 = icmp slt i32 %3, %4, !dbg !181
  br i1 %cmp4, label %for.body, label %for.end, !dbg !182

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !183
  %inc = add nsw i32 %5, 1, !dbg !183
  store i32 %inc, i32* %intVariable, align 4, !dbg !183
  br label %for.inc, !dbg !185

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !186
  %inc5 = add nsw i32 %6, 1, !dbg !186
  store i32 %inc5, i32* %i, align 4, !dbg !186
  br label %for.cond, !dbg !187, !llvm.loop !188

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !190
  call void @printIntLine(i32 %7), !dbg !191
  br label %if.end, !dbg !192

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !193

if.end6:                                          ; preds = %if.end, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !194
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !195 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !198, metadata !DIExpression()), !dbg !199
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !199
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !199
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !200
  store i8* %arraydecay, i8** %data, align 8, !dbg !201
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !202, metadata !DIExpression()), !dbg !204
  %1 = load i8*, i8** %data, align 8, !dbg !205
  %call = call i64 @strlen(i8* %1) #8, !dbg !206
  store i64 %call, i64* %dataLen, align 8, !dbg !204
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !207, metadata !DIExpression()), !dbg !208
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !209
  store i8* %call1, i8** %environment, align 8, !dbg !208
  %2 = load i8*, i8** %environment, align 8, !dbg !210
  %cmp = icmp ne i8* %2, null, !dbg !212
  br i1 %cmp, label %if.then, label %if.end, !dbg !213

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !214
  %4 = load i64, i64* %dataLen, align 8, !dbg !216
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !217
  %5 = load i8*, i8** %environment, align 8, !dbg !218
  %6 = load i64, i64* %dataLen, align 8, !dbg !219
  %sub = sub i64 100, %6, !dbg !220
  %sub2 = sub i64 %sub, 1, !dbg !221
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !222
  br label %if.end, !dbg !223

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !224
  %7 = load i8*, i8** %data, align 8, !dbg !225
  call void @goodB2G1Sink(i8* %7), !dbg !226
  ret void, !dbg !227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2Sink(i8* %data) #0 !dbg !228 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !229, metadata !DIExpression()), !dbg !230
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !231
  %tobool = icmp ne i32 %0, 0, !dbg !231
  br i1 %tobool, label %if.then, label %if.end7, !dbg !233

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !234, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32* %n, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !240, metadata !DIExpression()), !dbg !241
  %1 = load i8*, i8** %data.addr, align 8, !dbg !242
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !244
  %cmp = icmp eq i32 %call, 1, !dbg !245
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !246

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4, !dbg !247
  %cmp2 = icmp slt i32 %2, 10000, !dbg !250
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !251

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !252
  store i32 0, i32* %i, align 4, !dbg !254
  br label %for.cond, !dbg !256

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !257
  %4 = load i32, i32* %n, align 4, !dbg !259
  %cmp4 = icmp slt i32 %3, %4, !dbg !260
  br i1 %cmp4, label %for.body, label %for.end, !dbg !261

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !262
  %inc = add nsw i32 %5, 1, !dbg !262
  store i32 %inc, i32* %intVariable, align 4, !dbg !262
  br label %for.inc, !dbg !264

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !265
  %inc5 = add nsw i32 %6, 1, !dbg !265
  store i32 %inc5, i32* %i, align 4, !dbg !265
  br label %for.cond, !dbg !266, !llvm.loop !267

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !269
  call void @printIntLine(i32 %7), !dbg !270
  br label %if.end, !dbg !271

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !272

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7, !dbg !273

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !275 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !279
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !279
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !280
  store i8* %arraydecay, i8** %data, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !282, metadata !DIExpression()), !dbg !284
  %1 = load i8*, i8** %data, align 8, !dbg !285
  %call = call i64 @strlen(i8* %1) #8, !dbg !286
  store i64 %call, i64* %dataLen, align 8, !dbg !284
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !287, metadata !DIExpression()), !dbg !288
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !289
  store i8* %call1, i8** %environment, align 8, !dbg !288
  %2 = load i8*, i8** %environment, align 8, !dbg !290
  %cmp = icmp ne i8* %2, null, !dbg !292
  br i1 %cmp, label %if.then, label %if.end, !dbg !293

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !294
  %4 = load i64, i64* %dataLen, align 8, !dbg !296
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !297
  %5 = load i8*, i8** %environment, align 8, !dbg !298
  %6 = load i64, i64* %dataLen, align 8, !dbg !299
  %sub = sub i64 100, %6, !dbg !300
  %sub2 = sub i64 %sub, 1, !dbg !301
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !302
  br label %if.end, !dbg !303

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !304
  %7 = load i8*, i8** %data, align 8, !dbg !305
  call void @goodB2G2Sink(i8* %7), !dbg !306
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !308 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !311
  %tobool = icmp ne i32 %0, 0, !dbg !311
  br i1 %tobool, label %if.then, label %if.end4, !dbg !313

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !314, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.declare(metadata i32* %n, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !320, metadata !DIExpression()), !dbg !321
  %1 = load i8*, i8** %data.addr, align 8, !dbg !322
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !324
  %cmp = icmp eq i32 %call, 1, !dbg !325
  br i1 %cmp, label %if.then1, label %if.end, !dbg !326

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !327
  store i32 0, i32* %i, align 4, !dbg !329
  br label %for.cond, !dbg !331

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !332
  %3 = load i32, i32* %n, align 4, !dbg !334
  %cmp2 = icmp slt i32 %2, %3, !dbg !335
  br i1 %cmp2, label %for.body, label %for.end, !dbg !336

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !337
  %inc = add nsw i32 %4, 1, !dbg !337
  store i32 %inc, i32* %intVariable, align 4, !dbg !337
  br label %for.inc, !dbg !339

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !340
  %inc3 = add nsw i32 %5, 1, !dbg !340
  store i32 %inc3, i32* %i, align 4, !dbg !340
  br label %for.cond, !dbg !341, !llvm.loop !342

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !344
  call void @printIntLine(i32 %6), !dbg !345
  br label %if.end, !dbg !346

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !347

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !349 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !352, metadata !DIExpression()), !dbg !353
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !353
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !353
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !354
  store i8* %arraydecay, i8** %data, align 8, !dbg !355
  %1 = load i8*, i8** %data, align 8, !dbg !356
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !357
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !358
  %2 = load i8*, i8** %data, align 8, !dbg !359
  call void @goodG2BSink(i8* %2), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_21_good() #0 !dbg !362 {
entry:
  call void @goodB2G1(), !dbg !363
  call void @goodB2G2(), !dbg !364
  call void @goodG2B(), !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !367 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !370
  %0 = load i8*, i8** %line.addr, align 8, !dbg !371
  %cmp = icmp ne i8* %0, null, !dbg !373
  br i1 %cmp, label %if.then, label %if.end, !dbg !374

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !375
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !377
  br label %if.end, !dbg !378

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !379
  ret void, !dbg !380
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !381 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load i8*, i8** %line.addr, align 8, !dbg !384
  %cmp = icmp ne i8* %0, null, !dbg !386
  br i1 %cmp, label %if.then, label %if.end, !dbg !387

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !388
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !390
  br label %if.end, !dbg !391

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !393 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i32*, i32** %line.addr, align 8, !dbg !400
  %cmp = icmp ne i32* %0, null, !dbg !402
  br i1 %cmp, label %if.then, label %if.end, !dbg !403

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !404
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !406
  br label %if.end, !dbg !407

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !408
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !409 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !417 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !421, metadata !DIExpression()), !dbg !422
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !423
  %conv = sext i16 %0 to i32, !dbg !423
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !424
  ret void, !dbg !425
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !426 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !432
  %conv = fpext float %0 to double, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !435 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !439, metadata !DIExpression()), !dbg !440
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !441
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !442
  ret void, !dbg !443
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !444 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !451, metadata !DIExpression()), !dbg !452
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !453
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !454
  ret void, !dbg !455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !456 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !464 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !469
  %conv = sext i8 %0 to i32, !dbg !469
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !472 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !477, metadata !DIExpression()), !dbg !481
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !482
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !483
  store i32 %0, i32* %arrayidx, align 4, !dbg !484
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !485
  store i32 0, i32* %arrayidx1, align 4, !dbg !486
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !487
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !488
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !490 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !493, metadata !DIExpression()), !dbg !494
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !495
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !496
  ret void, !dbg !497
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !498 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !501, metadata !DIExpression()), !dbg !502
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !503
  %conv = zext i8 %0 to i32, !dbg !503
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !504
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !506 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !512
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !515 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !525, metadata !DIExpression()), !dbg !526
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !527
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !528
  %1 = load i32, i32* %intOne, align 4, !dbg !528
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !529
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !530
  %3 = load i32, i32* %intTwo, align 4, !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !533 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !537, metadata !DIExpression()), !dbg !538
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata i64* %i, metadata !541, metadata !DIExpression()), !dbg !542
  store i64 0, i64* %i, align 8, !dbg !543
  br label %for.cond, !dbg !545

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !546
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !548
  %cmp = icmp ult i64 %0, %1, !dbg !549
  br i1 %cmp, label %for.body, label %for.end, !dbg !550

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !551
  %3 = load i64, i64* %i, align 8, !dbg !553
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !551
  %4 = load i8, i8* %arrayidx, align 1, !dbg !551
  %conv = zext i8 %4 to i32, !dbg !551
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !554
  br label %for.inc, !dbg !555

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !556
  %inc = add i64 %5, 1, !dbg !556
  store i64 %inc, i64* %i, align 8, !dbg !556
  br label %for.cond, !dbg !557, !llvm.loop !558

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !560
  ret void, !dbg !561
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !562 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !565, metadata !DIExpression()), !dbg !566
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !567, metadata !DIExpression()), !dbg !568
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !569, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !571, metadata !DIExpression()), !dbg !572
  store i64 0, i64* %numWritten, align 8, !dbg !572
  br label %while.cond, !dbg !573

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !574
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !575
  %cmp = icmp ult i64 %0, %1, !dbg !576
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !577

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !578
  %2 = load i16*, i16** %call, align 8, !dbg !578
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !578
  %4 = load i64, i64* %numWritten, align 8, !dbg !578
  %mul = mul i64 2, %4, !dbg !578
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !578
  %5 = load i8, i8* %arrayidx, align 1, !dbg !578
  %conv = sext i8 %5 to i32, !dbg !578
  %idxprom = sext i32 %conv to i64, !dbg !578
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !578
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !578
  %conv2 = zext i16 %6 to i32, !dbg !578
  %and = and i32 %conv2, 4096, !dbg !578
  %tobool = icmp ne i32 %and, 0, !dbg !578
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !579

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !580
  %7 = load i16*, i16** %call3, align 8, !dbg !580
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !580
  %9 = load i64, i64* %numWritten, align 8, !dbg !580
  %mul4 = mul i64 2, %9, !dbg !580
  %add = add i64 %mul4, 1, !dbg !580
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !580
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !580
  %conv6 = sext i8 %10 to i32, !dbg !580
  %idxprom7 = sext i32 %conv6 to i64, !dbg !580
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !580
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !580
  %conv9 = zext i16 %11 to i32, !dbg !580
  %and10 = and i32 %conv9, 4096, !dbg !580
  %tobool11 = icmp ne i32 %and10, 0, !dbg !579
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !581
  br i1 %12, label %while.body, label %while.end, !dbg !573

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !582, metadata !DIExpression()), !dbg !584
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !585
  %14 = load i64, i64* %numWritten, align 8, !dbg !586
  %mul12 = mul i64 2, %14, !dbg !587
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !585
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !588
  %15 = load i32, i32* %byte, align 4, !dbg !589
  %conv15 = trunc i32 %15 to i8, !dbg !590
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !591
  %17 = load i64, i64* %numWritten, align 8, !dbg !592
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !591
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !593
  %18 = load i64, i64* %numWritten, align 8, !dbg !594
  %inc = add i64 %18, 1, !dbg !594
  store i64 %inc, i64* %numWritten, align 8, !dbg !594
  br label %while.cond, !dbg !573, !llvm.loop !595

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !597
  ret i64 %19, !dbg !598
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !599 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !602, metadata !DIExpression()), !dbg !603
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !604, metadata !DIExpression()), !dbg !605
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !606, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !608, metadata !DIExpression()), !dbg !609
  store i64 0, i64* %numWritten, align 8, !dbg !609
  br label %while.cond, !dbg !610

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !611
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !612
  %cmp = icmp ult i64 %0, %1, !dbg !613
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !614

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !615
  %3 = load i64, i64* %numWritten, align 8, !dbg !616
  %mul = mul i64 2, %3, !dbg !617
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !615
  %4 = load i32, i32* %arrayidx, align 4, !dbg !615
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !618
  %tobool = icmp ne i32 %call, 0, !dbg !618
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !619

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !620
  %6 = load i64, i64* %numWritten, align 8, !dbg !621
  %mul1 = mul i64 2, %6, !dbg !622
  %add = add i64 %mul1, 1, !dbg !623
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !620
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !620
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !624
  %tobool4 = icmp ne i32 %call3, 0, !dbg !619
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !625
  br i1 %8, label %while.body, label %while.end, !dbg !610

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !626, metadata !DIExpression()), !dbg !628
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !629
  %10 = load i64, i64* %numWritten, align 8, !dbg !630
  %mul5 = mul i64 2, %10, !dbg !631
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !629
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !632
  %11 = load i32, i32* %byte, align 4, !dbg !633
  %conv = trunc i32 %11 to i8, !dbg !634
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !635
  %13 = load i64, i64* %numWritten, align 8, !dbg !636
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !635
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !637
  %14 = load i64, i64* %numWritten, align 8, !dbg !638
  %inc = add i64 %14, 1, !dbg !638
  store i64 %inc, i64* %numWritten, align 8, !dbg !638
  br label %while.cond, !dbg !610, !llvm.loop !639

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !641
  ret i64 %15, !dbg !642
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !643 {
entry:
  ret i32 1, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !647 {
entry:
  ret i32 0, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !649 {
entry:
  %call = call i32 @rand() #7, !dbg !650
  %rem = srem i32 %call, 2, !dbg !651
  ret i32 %rem, !dbg !652
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !683 {
entry:
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !685 {
entry:
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !687 {
entry:
  ret void, !dbg !688
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

!llvm.dbg.cu = !{!2, !17}
!llvm.ident = !{!57, !57}
!llvm.module.flags = !{!58, !59, !60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 38, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_044/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !11, !13}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 86, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 87, type: !10, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 88, type: !10, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !10, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_044/source_code")
!19 = !{!20}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!24 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!36 = !{!6, !10, !37, !38}
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!15, !40, !42, !44, !46, !48, !50, !52}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !17, file: !18, line: 175, type: !10, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !17, file: !18, line: 176, type: !10, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalTrue", scope: !17, file: !18, line: 181, type: !10, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalFalse", scope: !17, file: !18, line: 182, type: !10, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalFive", scope: !17, file: !18, line: 183, type: !10, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "globalArgc", scope: !17, file: !18, line: 214, type: !10, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "globalArgv", scope: !17, file: !18, line: 215, type: !54, isLocal: false, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{!"clang version 12.0.0"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 40, type: !62, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !55}
!64 = !DILocalVariable(name: "data", arg: 1, scope: !61, file: !3, line: 40, type: !55)
!65 = !DILocation(line: 40, column: 21, scope: !61)
!66 = !DILocation(line: 42, column: 8, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !3, line: 42, column: 8)
!68 = !DILocation(line: 42, column: 8, scope: !61)
!69 = !DILocalVariable(name: "i", scope: !70, file: !3, line: 45, type: !10)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 44, column: 9)
!71 = distinct !DILexicalBlock(scope: !67, file: !3, line: 43, column: 5)
!72 = !DILocation(line: 45, column: 17, scope: !70)
!73 = !DILocalVariable(name: "n", scope: !70, file: !3, line: 45, type: !10)
!74 = !DILocation(line: 45, column: 20, scope: !70)
!75 = !DILocalVariable(name: "intVariable", scope: !70, file: !3, line: 45, type: !10)
!76 = !DILocation(line: 45, column: 23, scope: !70)
!77 = !DILocation(line: 46, column: 24, scope: !78)
!78 = distinct !DILexicalBlock(scope: !70, file: !3, line: 46, column: 17)
!79 = !DILocation(line: 46, column: 17, scope: !78)
!80 = !DILocation(line: 46, column: 40, scope: !78)
!81 = !DILocation(line: 46, column: 17, scope: !70)
!82 = !DILocation(line: 49, column: 29, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !3, line: 47, column: 13)
!84 = !DILocation(line: 50, column: 24, scope: !85)
!85 = distinct !DILexicalBlock(scope: !83, file: !3, line: 50, column: 17)
!86 = !DILocation(line: 50, column: 22, scope: !85)
!87 = !DILocation(line: 50, column: 29, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !3, line: 50, column: 17)
!89 = !DILocation(line: 50, column: 33, scope: !88)
!90 = !DILocation(line: 50, column: 31, scope: !88)
!91 = !DILocation(line: 50, column: 17, scope: !85)
!92 = !DILocation(line: 53, column: 32, scope: !93)
!93 = distinct !DILexicalBlock(scope: !88, file: !3, line: 51, column: 17)
!94 = !DILocation(line: 54, column: 17, scope: !93)
!95 = !DILocation(line: 50, column: 37, scope: !88)
!96 = !DILocation(line: 50, column: 17, scope: !88)
!97 = distinct !{!97, !91, !98, !99}
!98 = !DILocation(line: 54, column: 17, scope: !85)
!99 = !{!"llvm.loop.mustprogress"}
!100 = !DILocation(line: 55, column: 30, scope: !83)
!101 = !DILocation(line: 55, column: 17, scope: !83)
!102 = !DILocation(line: 56, column: 13, scope: !83)
!103 = !DILocation(line: 58, column: 5, scope: !71)
!104 = !DILocation(line: 59, column: 1, scope: !61)
!105 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_21_bad", scope: !3, file: !3, line: 61, type: !106, scopeLine: 62, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!106 = !DISubroutineType(types: !107)
!107 = !{null}
!108 = !DILocalVariable(name: "data", scope: !105, file: !3, line: 63, type: !55)
!109 = !DILocation(line: 63, column: 12, scope: !105)
!110 = !DILocalVariable(name: "dataBuffer", scope: !105, file: !3, line: 64, type: !111)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 100)
!114 = !DILocation(line: 64, column: 10, scope: !105)
!115 = !DILocation(line: 65, column: 12, scope: !105)
!116 = !DILocation(line: 65, column: 10, scope: !105)
!117 = !DILocalVariable(name: "dataLen", scope: !118, file: !3, line: 68, type: !119)
!118 = distinct !DILexicalBlock(scope: !105, file: !3, line: 66, column: 5)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocation(line: 68, column: 16, scope: !118)
!123 = !DILocation(line: 68, column: 33, scope: !118)
!124 = !DILocation(line: 68, column: 26, scope: !118)
!125 = !DILocalVariable(name: "environment", scope: !118, file: !3, line: 69, type: !55)
!126 = !DILocation(line: 69, column: 16, scope: !118)
!127 = !DILocation(line: 69, column: 30, scope: !118)
!128 = !DILocation(line: 71, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !118, file: !3, line: 71, column: 13)
!130 = !DILocation(line: 71, column: 25, scope: !129)
!131 = !DILocation(line: 71, column: 13, scope: !118)
!132 = !DILocation(line: 74, column: 21, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !3, line: 72, column: 9)
!134 = !DILocation(line: 74, column: 26, scope: !133)
!135 = !DILocation(line: 74, column: 25, scope: !133)
!136 = !DILocation(line: 74, column: 35, scope: !133)
!137 = !DILocation(line: 74, column: 52, scope: !133)
!138 = !DILocation(line: 74, column: 51, scope: !133)
!139 = !DILocation(line: 74, column: 59, scope: !133)
!140 = !DILocation(line: 74, column: 13, scope: !133)
!141 = !DILocation(line: 75, column: 9, scope: !133)
!142 = !DILocation(line: 77, column: 15, scope: !105)
!143 = !DILocation(line: 78, column: 13, scope: !105)
!144 = !DILocation(line: 78, column: 5, scope: !105)
!145 = !DILocation(line: 79, column: 1, scope: !105)
!146 = distinct !DISubprogram(name: "goodB2G1Sink", scope: !3, file: !3, line: 91, type: !62, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!147 = !DILocalVariable(name: "data", arg: 1, scope: !146, file: !3, line: 91, type: !55)
!148 = !DILocation(line: 91, column: 26, scope: !146)
!149 = !DILocation(line: 93, column: 8, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !3, line: 93, column: 8)
!151 = !DILocation(line: 93, column: 8, scope: !146)
!152 = !DILocation(line: 96, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !3, line: 94, column: 5)
!154 = !DILocation(line: 97, column: 5, scope: !153)
!155 = !DILocalVariable(name: "i", scope: !156, file: !3, line: 101, type: !10)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 100, column: 9)
!157 = distinct !DILexicalBlock(scope: !150, file: !3, line: 99, column: 5)
!158 = !DILocation(line: 101, column: 17, scope: !156)
!159 = !DILocalVariable(name: "n", scope: !156, file: !3, line: 101, type: !10)
!160 = !DILocation(line: 101, column: 20, scope: !156)
!161 = !DILocalVariable(name: "intVariable", scope: !156, file: !3, line: 101, type: !10)
!162 = !DILocation(line: 101, column: 23, scope: !156)
!163 = !DILocation(line: 102, column: 24, scope: !164)
!164 = distinct !DILexicalBlock(scope: !156, file: !3, line: 102, column: 17)
!165 = !DILocation(line: 102, column: 17, scope: !164)
!166 = !DILocation(line: 102, column: 40, scope: !164)
!167 = !DILocation(line: 102, column: 17, scope: !156)
!168 = !DILocation(line: 105, column: 21, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 105, column: 21)
!170 = distinct !DILexicalBlock(scope: !164, file: !3, line: 103, column: 13)
!171 = !DILocation(line: 105, column: 23, scope: !169)
!172 = !DILocation(line: 105, column: 21, scope: !170)
!173 = !DILocation(line: 107, column: 33, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !3, line: 106, column: 17)
!175 = !DILocation(line: 108, column: 28, scope: !176)
!176 = distinct !DILexicalBlock(scope: !174, file: !3, line: 108, column: 21)
!177 = !DILocation(line: 108, column: 26, scope: !176)
!178 = !DILocation(line: 108, column: 33, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 108, column: 21)
!180 = !DILocation(line: 108, column: 37, scope: !179)
!181 = !DILocation(line: 108, column: 35, scope: !179)
!182 = !DILocation(line: 108, column: 21, scope: !176)
!183 = !DILocation(line: 111, column: 36, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !3, line: 109, column: 21)
!185 = !DILocation(line: 112, column: 21, scope: !184)
!186 = !DILocation(line: 108, column: 41, scope: !179)
!187 = !DILocation(line: 108, column: 21, scope: !179)
!188 = distinct !{!188, !182, !189, !99}
!189 = !DILocation(line: 112, column: 21, scope: !176)
!190 = !DILocation(line: 113, column: 34, scope: !174)
!191 = !DILocation(line: 113, column: 21, scope: !174)
!192 = !DILocation(line: 114, column: 17, scope: !174)
!193 = !DILocation(line: 115, column: 13, scope: !170)
!194 = !DILocation(line: 118, column: 1, scope: !146)
!195 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 120, type: !106, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!196 = !DILocalVariable(name: "data", scope: !195, file: !3, line: 122, type: !55)
!197 = !DILocation(line: 122, column: 12, scope: !195)
!198 = !DILocalVariable(name: "dataBuffer", scope: !195, file: !3, line: 123, type: !111)
!199 = !DILocation(line: 123, column: 10, scope: !195)
!200 = !DILocation(line: 124, column: 12, scope: !195)
!201 = !DILocation(line: 124, column: 10, scope: !195)
!202 = !DILocalVariable(name: "dataLen", scope: !203, file: !3, line: 127, type: !119)
!203 = distinct !DILexicalBlock(scope: !195, file: !3, line: 125, column: 5)
!204 = !DILocation(line: 127, column: 16, scope: !203)
!205 = !DILocation(line: 127, column: 33, scope: !203)
!206 = !DILocation(line: 127, column: 26, scope: !203)
!207 = !DILocalVariable(name: "environment", scope: !203, file: !3, line: 128, type: !55)
!208 = !DILocation(line: 128, column: 16, scope: !203)
!209 = !DILocation(line: 128, column: 30, scope: !203)
!210 = !DILocation(line: 130, column: 13, scope: !211)
!211 = distinct !DILexicalBlock(scope: !203, file: !3, line: 130, column: 13)
!212 = !DILocation(line: 130, column: 25, scope: !211)
!213 = !DILocation(line: 130, column: 13, scope: !203)
!214 = !DILocation(line: 133, column: 21, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !3, line: 131, column: 9)
!216 = !DILocation(line: 133, column: 26, scope: !215)
!217 = !DILocation(line: 133, column: 25, scope: !215)
!218 = !DILocation(line: 133, column: 35, scope: !215)
!219 = !DILocation(line: 133, column: 52, scope: !215)
!220 = !DILocation(line: 133, column: 51, scope: !215)
!221 = !DILocation(line: 133, column: 59, scope: !215)
!222 = !DILocation(line: 133, column: 13, scope: !215)
!223 = !DILocation(line: 134, column: 9, scope: !215)
!224 = !DILocation(line: 136, column: 20, scope: !195)
!225 = !DILocation(line: 137, column: 18, scope: !195)
!226 = !DILocation(line: 137, column: 5, scope: !195)
!227 = !DILocation(line: 138, column: 1, scope: !195)
!228 = distinct !DISubprogram(name: "goodB2G2Sink", scope: !3, file: !3, line: 141, type: !62, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!229 = !DILocalVariable(name: "data", arg: 1, scope: !228, file: !3, line: 141, type: !55)
!230 = !DILocation(line: 141, column: 26, scope: !228)
!231 = !DILocation(line: 143, column: 8, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !3, line: 143, column: 8)
!233 = !DILocation(line: 143, column: 8, scope: !228)
!234 = !DILocalVariable(name: "i", scope: !235, file: !3, line: 146, type: !10)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 145, column: 9)
!236 = distinct !DILexicalBlock(scope: !232, file: !3, line: 144, column: 5)
!237 = !DILocation(line: 146, column: 17, scope: !235)
!238 = !DILocalVariable(name: "n", scope: !235, file: !3, line: 146, type: !10)
!239 = !DILocation(line: 146, column: 20, scope: !235)
!240 = !DILocalVariable(name: "intVariable", scope: !235, file: !3, line: 146, type: !10)
!241 = !DILocation(line: 146, column: 23, scope: !235)
!242 = !DILocation(line: 147, column: 24, scope: !243)
!243 = distinct !DILexicalBlock(scope: !235, file: !3, line: 147, column: 17)
!244 = !DILocation(line: 147, column: 17, scope: !243)
!245 = !DILocation(line: 147, column: 40, scope: !243)
!246 = !DILocation(line: 147, column: 17, scope: !235)
!247 = !DILocation(line: 150, column: 21, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 150, column: 21)
!249 = distinct !DILexicalBlock(scope: !243, file: !3, line: 148, column: 13)
!250 = !DILocation(line: 150, column: 23, scope: !248)
!251 = !DILocation(line: 150, column: 21, scope: !249)
!252 = !DILocation(line: 152, column: 33, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !3, line: 151, column: 17)
!254 = !DILocation(line: 153, column: 28, scope: !255)
!255 = distinct !DILexicalBlock(scope: !253, file: !3, line: 153, column: 21)
!256 = !DILocation(line: 153, column: 26, scope: !255)
!257 = !DILocation(line: 153, column: 33, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !3, line: 153, column: 21)
!259 = !DILocation(line: 153, column: 37, scope: !258)
!260 = !DILocation(line: 153, column: 35, scope: !258)
!261 = !DILocation(line: 153, column: 21, scope: !255)
!262 = !DILocation(line: 156, column: 36, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !3, line: 154, column: 21)
!264 = !DILocation(line: 157, column: 21, scope: !263)
!265 = !DILocation(line: 153, column: 41, scope: !258)
!266 = !DILocation(line: 153, column: 21, scope: !258)
!267 = distinct !{!267, !261, !268, !99}
!268 = !DILocation(line: 157, column: 21, scope: !255)
!269 = !DILocation(line: 158, column: 34, scope: !253)
!270 = !DILocation(line: 158, column: 21, scope: !253)
!271 = !DILocation(line: 159, column: 17, scope: !253)
!272 = !DILocation(line: 160, column: 13, scope: !249)
!273 = !DILocation(line: 162, column: 5, scope: !236)
!274 = !DILocation(line: 163, column: 1, scope: !228)
!275 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 165, type: !106, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!276 = !DILocalVariable(name: "data", scope: !275, file: !3, line: 167, type: !55)
!277 = !DILocation(line: 167, column: 12, scope: !275)
!278 = !DILocalVariable(name: "dataBuffer", scope: !275, file: !3, line: 168, type: !111)
!279 = !DILocation(line: 168, column: 10, scope: !275)
!280 = !DILocation(line: 169, column: 12, scope: !275)
!281 = !DILocation(line: 169, column: 10, scope: !275)
!282 = !DILocalVariable(name: "dataLen", scope: !283, file: !3, line: 172, type: !119)
!283 = distinct !DILexicalBlock(scope: !275, file: !3, line: 170, column: 5)
!284 = !DILocation(line: 172, column: 16, scope: !283)
!285 = !DILocation(line: 172, column: 33, scope: !283)
!286 = !DILocation(line: 172, column: 26, scope: !283)
!287 = !DILocalVariable(name: "environment", scope: !283, file: !3, line: 173, type: !55)
!288 = !DILocation(line: 173, column: 16, scope: !283)
!289 = !DILocation(line: 173, column: 30, scope: !283)
!290 = !DILocation(line: 175, column: 13, scope: !291)
!291 = distinct !DILexicalBlock(scope: !283, file: !3, line: 175, column: 13)
!292 = !DILocation(line: 175, column: 25, scope: !291)
!293 = !DILocation(line: 175, column: 13, scope: !283)
!294 = !DILocation(line: 178, column: 21, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !3, line: 176, column: 9)
!296 = !DILocation(line: 178, column: 26, scope: !295)
!297 = !DILocation(line: 178, column: 25, scope: !295)
!298 = !DILocation(line: 178, column: 35, scope: !295)
!299 = !DILocation(line: 178, column: 52, scope: !295)
!300 = !DILocation(line: 178, column: 51, scope: !295)
!301 = !DILocation(line: 178, column: 59, scope: !295)
!302 = !DILocation(line: 178, column: 13, scope: !295)
!303 = !DILocation(line: 179, column: 9, scope: !295)
!304 = !DILocation(line: 181, column: 20, scope: !275)
!305 = !DILocation(line: 182, column: 18, scope: !275)
!306 = !DILocation(line: 182, column: 5, scope: !275)
!307 = !DILocation(line: 183, column: 1, scope: !275)
!308 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 186, type: !62, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!309 = !DILocalVariable(name: "data", arg: 1, scope: !308, file: !3, line: 186, type: !55)
!310 = !DILocation(line: 186, column: 25, scope: !308)
!311 = !DILocation(line: 188, column: 8, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !3, line: 188, column: 8)
!313 = !DILocation(line: 188, column: 8, scope: !308)
!314 = !DILocalVariable(name: "i", scope: !315, file: !3, line: 191, type: !10)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 190, column: 9)
!316 = distinct !DILexicalBlock(scope: !312, file: !3, line: 189, column: 5)
!317 = !DILocation(line: 191, column: 17, scope: !315)
!318 = !DILocalVariable(name: "n", scope: !315, file: !3, line: 191, type: !10)
!319 = !DILocation(line: 191, column: 20, scope: !315)
!320 = !DILocalVariable(name: "intVariable", scope: !315, file: !3, line: 191, type: !10)
!321 = !DILocation(line: 191, column: 23, scope: !315)
!322 = !DILocation(line: 192, column: 24, scope: !323)
!323 = distinct !DILexicalBlock(scope: !315, file: !3, line: 192, column: 17)
!324 = !DILocation(line: 192, column: 17, scope: !323)
!325 = !DILocation(line: 192, column: 40, scope: !323)
!326 = !DILocation(line: 192, column: 17, scope: !315)
!327 = !DILocation(line: 195, column: 29, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !3, line: 193, column: 13)
!329 = !DILocation(line: 196, column: 24, scope: !330)
!330 = distinct !DILexicalBlock(scope: !328, file: !3, line: 196, column: 17)
!331 = !DILocation(line: 196, column: 22, scope: !330)
!332 = !DILocation(line: 196, column: 29, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !3, line: 196, column: 17)
!334 = !DILocation(line: 196, column: 33, scope: !333)
!335 = !DILocation(line: 196, column: 31, scope: !333)
!336 = !DILocation(line: 196, column: 17, scope: !330)
!337 = !DILocation(line: 199, column: 32, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !3, line: 197, column: 17)
!339 = !DILocation(line: 200, column: 17, scope: !338)
!340 = !DILocation(line: 196, column: 37, scope: !333)
!341 = !DILocation(line: 196, column: 17, scope: !333)
!342 = distinct !{!342, !336, !343, !99}
!343 = !DILocation(line: 200, column: 17, scope: !330)
!344 = !DILocation(line: 201, column: 30, scope: !328)
!345 = !DILocation(line: 201, column: 17, scope: !328)
!346 = !DILocation(line: 202, column: 13, scope: !328)
!347 = !DILocation(line: 204, column: 5, scope: !316)
!348 = !DILocation(line: 205, column: 1, scope: !308)
!349 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 207, type: !106, scopeLine: 208, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!350 = !DILocalVariable(name: "data", scope: !349, file: !3, line: 209, type: !55)
!351 = !DILocation(line: 209, column: 12, scope: !349)
!352 = !DILocalVariable(name: "dataBuffer", scope: !349, file: !3, line: 210, type: !111)
!353 = !DILocation(line: 210, column: 10, scope: !349)
!354 = !DILocation(line: 211, column: 12, scope: !349)
!355 = !DILocation(line: 211, column: 10, scope: !349)
!356 = !DILocation(line: 213, column: 12, scope: !349)
!357 = !DILocation(line: 213, column: 5, scope: !349)
!358 = !DILocation(line: 214, column: 19, scope: !349)
!359 = !DILocation(line: 215, column: 17, scope: !349)
!360 = !DILocation(line: 215, column: 5, scope: !349)
!361 = !DILocation(line: 216, column: 1, scope: !349)
!362 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_21_good", scope: !3, file: !3, line: 218, type: !106, scopeLine: 219, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!363 = !DILocation(line: 220, column: 5, scope: !362)
!364 = !DILocation(line: 221, column: 5, scope: !362)
!365 = !DILocation(line: 222, column: 5, scope: !362)
!366 = !DILocation(line: 223, column: 1, scope: !362)
!367 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !62, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!368 = !DILocalVariable(name: "line", arg: 1, scope: !367, file: !18, line: 11, type: !55)
!369 = !DILocation(line: 11, column: 25, scope: !367)
!370 = !DILocation(line: 13, column: 1, scope: !367)
!371 = !DILocation(line: 14, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !367, file: !18, line: 14, column: 8)
!373 = !DILocation(line: 14, column: 13, scope: !372)
!374 = !DILocation(line: 14, column: 8, scope: !367)
!375 = !DILocation(line: 16, column: 24, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !18, line: 15, column: 5)
!377 = !DILocation(line: 16, column: 9, scope: !376)
!378 = !DILocation(line: 17, column: 5, scope: !376)
!379 = !DILocation(line: 18, column: 5, scope: !367)
!380 = !DILocation(line: 19, column: 1, scope: !367)
!381 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !62, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!382 = !DILocalVariable(name: "line", arg: 1, scope: !381, file: !18, line: 20, type: !55)
!383 = !DILocation(line: 20, column: 29, scope: !381)
!384 = !DILocation(line: 22, column: 8, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !18, line: 22, column: 8)
!386 = !DILocation(line: 22, column: 13, scope: !385)
!387 = !DILocation(line: 22, column: 8, scope: !381)
!388 = !DILocation(line: 24, column: 24, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !18, line: 23, column: 5)
!390 = !DILocation(line: 24, column: 9, scope: !389)
!391 = !DILocation(line: 25, column: 5, scope: !389)
!392 = !DILocation(line: 26, column: 1, scope: !381)
!393 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !394, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !120, line: 74, baseType: !10)
!398 = !DILocalVariable(name: "line", arg: 1, scope: !393, file: !18, line: 27, type: !396)
!399 = !DILocation(line: 27, column: 29, scope: !393)
!400 = !DILocation(line: 29, column: 8, scope: !401)
!401 = distinct !DILexicalBlock(scope: !393, file: !18, line: 29, column: 8)
!402 = !DILocation(line: 29, column: 13, scope: !401)
!403 = !DILocation(line: 29, column: 8, scope: !393)
!404 = !DILocation(line: 31, column: 27, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !18, line: 30, column: 5)
!406 = !DILocation(line: 31, column: 9, scope: !405)
!407 = !DILocation(line: 32, column: 5, scope: !405)
!408 = !DILocation(line: 33, column: 1, scope: !393)
!409 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !410, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !10}
!412 = !DILocalVariable(name: "intNumber", arg: 1, scope: !409, file: !18, line: 35, type: !10)
!413 = !DILocation(line: 35, column: 24, scope: !409)
!414 = !DILocation(line: 37, column: 20, scope: !409)
!415 = !DILocation(line: 37, column: 5, scope: !409)
!416 = !DILocation(line: 38, column: 1, scope: !409)
!417 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !418, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !420}
!420 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!421 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !417, file: !18, line: 40, type: !420)
!422 = !DILocation(line: 40, column: 28, scope: !417)
!423 = !DILocation(line: 42, column: 21, scope: !417)
!424 = !DILocation(line: 42, column: 5, scope: !417)
!425 = !DILocation(line: 43, column: 1, scope: !417)
!426 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !427, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !429}
!429 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!430 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !426, file: !18, line: 45, type: !429)
!431 = !DILocation(line: 45, column: 28, scope: !426)
!432 = !DILocation(line: 47, column: 20, scope: !426)
!433 = !DILocation(line: 47, column: 5, scope: !426)
!434 = !DILocation(line: 48, column: 1, scope: !426)
!435 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !436, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !438}
!438 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!439 = !DILocalVariable(name: "longNumber", arg: 1, scope: !435, file: !18, line: 50, type: !438)
!440 = !DILocation(line: 50, column: 26, scope: !435)
!441 = !DILocation(line: 52, column: 21, scope: !435)
!442 = !DILocation(line: 52, column: 5, scope: !435)
!443 = !DILocation(line: 53, column: 1, scope: !435)
!444 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !445, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !447}
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !448, line: 27, baseType: !449)
!448 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !450, line: 44, baseType: !438)
!450 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!451 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !444, file: !18, line: 55, type: !447)
!452 = !DILocation(line: 55, column: 33, scope: !444)
!453 = !DILocation(line: 57, column: 29, scope: !444)
!454 = !DILocation(line: 57, column: 5, scope: !444)
!455 = !DILocation(line: 58, column: 1, scope: !444)
!456 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !457, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !119}
!459 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !456, file: !18, line: 60, type: !119)
!460 = !DILocation(line: 60, column: 29, scope: !456)
!461 = !DILocation(line: 62, column: 21, scope: !456)
!462 = !DILocation(line: 62, column: 5, scope: !456)
!463 = !DILocation(line: 63, column: 1, scope: !456)
!464 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !465, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !56}
!467 = !DILocalVariable(name: "charHex", arg: 1, scope: !464, file: !18, line: 65, type: !56)
!468 = !DILocation(line: 65, column: 29, scope: !464)
!469 = !DILocation(line: 67, column: 22, scope: !464)
!470 = !DILocation(line: 67, column: 5, scope: !464)
!471 = !DILocation(line: 68, column: 1, scope: !464)
!472 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !473, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !397}
!475 = !DILocalVariable(name: "wideChar", arg: 1, scope: !472, file: !18, line: 70, type: !397)
!476 = !DILocation(line: 70, column: 29, scope: !472)
!477 = !DILocalVariable(name: "s", scope: !472, file: !18, line: 74, type: !478)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 64, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 2)
!481 = !DILocation(line: 74, column: 13, scope: !472)
!482 = !DILocation(line: 75, column: 16, scope: !472)
!483 = !DILocation(line: 75, column: 9, scope: !472)
!484 = !DILocation(line: 75, column: 14, scope: !472)
!485 = !DILocation(line: 76, column: 9, scope: !472)
!486 = !DILocation(line: 76, column: 14, scope: !472)
!487 = !DILocation(line: 77, column: 21, scope: !472)
!488 = !DILocation(line: 77, column: 5, scope: !472)
!489 = !DILocation(line: 78, column: 1, scope: !472)
!490 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !491, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !22}
!493 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !490, file: !18, line: 80, type: !22)
!494 = !DILocation(line: 80, column: 33, scope: !490)
!495 = !DILocation(line: 82, column: 20, scope: !490)
!496 = !DILocation(line: 82, column: 5, scope: !490)
!497 = !DILocation(line: 83, column: 1, scope: !490)
!498 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !499, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !38}
!501 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !498, file: !18, line: 85, type: !38)
!502 = !DILocation(line: 85, column: 45, scope: !498)
!503 = !DILocation(line: 87, column: 22, scope: !498)
!504 = !DILocation(line: 87, column: 5, scope: !498)
!505 = !DILocation(line: 88, column: 1, scope: !498)
!506 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !507, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509}
!509 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!510 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !506, file: !18, line: 90, type: !509)
!511 = !DILocation(line: 90, column: 29, scope: !506)
!512 = !DILocation(line: 92, column: 20, scope: !506)
!513 = !DILocation(line: 92, column: 5, scope: !506)
!514 = !DILocation(line: 93, column: 1, scope: !506)
!515 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !516, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !520, line: 100, baseType: !521)
!520 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_044/source_code")
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !520, line: 96, size: 64, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !521, file: !520, line: 98, baseType: !10, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !521, file: !520, line: 99, baseType: !10, size: 32, offset: 32)
!525 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !515, file: !18, line: 95, type: !518)
!526 = !DILocation(line: 95, column: 40, scope: !515)
!527 = !DILocation(line: 97, column: 26, scope: !515)
!528 = !DILocation(line: 97, column: 47, scope: !515)
!529 = !DILocation(line: 97, column: 55, scope: !515)
!530 = !DILocation(line: 97, column: 76, scope: !515)
!531 = !DILocation(line: 97, column: 5, scope: !515)
!532 = !DILocation(line: 98, column: 1, scope: !515)
!533 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !534, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !536, !119}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!537 = !DILocalVariable(name: "bytes", arg: 1, scope: !533, file: !18, line: 100, type: !536)
!538 = !DILocation(line: 100, column: 38, scope: !533)
!539 = !DILocalVariable(name: "numBytes", arg: 2, scope: !533, file: !18, line: 100, type: !119)
!540 = !DILocation(line: 100, column: 52, scope: !533)
!541 = !DILocalVariable(name: "i", scope: !533, file: !18, line: 102, type: !119)
!542 = !DILocation(line: 102, column: 12, scope: !533)
!543 = !DILocation(line: 103, column: 12, scope: !544)
!544 = distinct !DILexicalBlock(scope: !533, file: !18, line: 103, column: 5)
!545 = !DILocation(line: 103, column: 10, scope: !544)
!546 = !DILocation(line: 103, column: 17, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !18, line: 103, column: 5)
!548 = !DILocation(line: 103, column: 21, scope: !547)
!549 = !DILocation(line: 103, column: 19, scope: !547)
!550 = !DILocation(line: 103, column: 5, scope: !544)
!551 = !DILocation(line: 105, column: 24, scope: !552)
!552 = distinct !DILexicalBlock(scope: !547, file: !18, line: 104, column: 5)
!553 = !DILocation(line: 105, column: 30, scope: !552)
!554 = !DILocation(line: 105, column: 9, scope: !552)
!555 = !DILocation(line: 106, column: 5, scope: !552)
!556 = !DILocation(line: 103, column: 31, scope: !547)
!557 = !DILocation(line: 103, column: 5, scope: !547)
!558 = distinct !{!558, !550, !559, !99}
!559 = !DILocation(line: 106, column: 5, scope: !544)
!560 = !DILocation(line: 107, column: 5, scope: !533)
!561 = !DILocation(line: 108, column: 1, scope: !533)
!562 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !563, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!563 = !DISubroutineType(types: !564)
!564 = !{!119, !536, !119, !55}
!565 = !DILocalVariable(name: "bytes", arg: 1, scope: !562, file: !18, line: 113, type: !536)
!566 = !DILocation(line: 113, column: 39, scope: !562)
!567 = !DILocalVariable(name: "numBytes", arg: 2, scope: !562, file: !18, line: 113, type: !119)
!568 = !DILocation(line: 113, column: 53, scope: !562)
!569 = !DILocalVariable(name: "hex", arg: 3, scope: !562, file: !18, line: 113, type: !55)
!570 = !DILocation(line: 113, column: 71, scope: !562)
!571 = !DILocalVariable(name: "numWritten", scope: !562, file: !18, line: 115, type: !119)
!572 = !DILocation(line: 115, column: 12, scope: !562)
!573 = !DILocation(line: 121, column: 5, scope: !562)
!574 = !DILocation(line: 121, column: 12, scope: !562)
!575 = !DILocation(line: 121, column: 25, scope: !562)
!576 = !DILocation(line: 121, column: 23, scope: !562)
!577 = !DILocation(line: 121, column: 34, scope: !562)
!578 = !DILocation(line: 121, column: 37, scope: !562)
!579 = !DILocation(line: 121, column: 67, scope: !562)
!580 = !DILocation(line: 121, column: 70, scope: !562)
!581 = !DILocation(line: 0, scope: !562)
!582 = !DILocalVariable(name: "byte", scope: !583, file: !18, line: 123, type: !10)
!583 = distinct !DILexicalBlock(scope: !562, file: !18, line: 122, column: 5)
!584 = !DILocation(line: 123, column: 13, scope: !583)
!585 = !DILocation(line: 124, column: 17, scope: !583)
!586 = !DILocation(line: 124, column: 25, scope: !583)
!587 = !DILocation(line: 124, column: 23, scope: !583)
!588 = !DILocation(line: 124, column: 9, scope: !583)
!589 = !DILocation(line: 125, column: 45, scope: !583)
!590 = !DILocation(line: 125, column: 29, scope: !583)
!591 = !DILocation(line: 125, column: 9, scope: !583)
!592 = !DILocation(line: 125, column: 15, scope: !583)
!593 = !DILocation(line: 125, column: 27, scope: !583)
!594 = !DILocation(line: 126, column: 9, scope: !583)
!595 = distinct !{!595, !573, !596, !99}
!596 = !DILocation(line: 127, column: 5, scope: !562)
!597 = !DILocation(line: 129, column: 12, scope: !562)
!598 = !DILocation(line: 129, column: 5, scope: !562)
!599 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !600, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!600 = !DISubroutineType(types: !601)
!601 = !{!119, !536, !119, !396}
!602 = !DILocalVariable(name: "bytes", arg: 1, scope: !599, file: !18, line: 135, type: !536)
!603 = !DILocation(line: 135, column: 41, scope: !599)
!604 = !DILocalVariable(name: "numBytes", arg: 2, scope: !599, file: !18, line: 135, type: !119)
!605 = !DILocation(line: 135, column: 55, scope: !599)
!606 = !DILocalVariable(name: "hex", arg: 3, scope: !599, file: !18, line: 135, type: !396)
!607 = !DILocation(line: 135, column: 76, scope: !599)
!608 = !DILocalVariable(name: "numWritten", scope: !599, file: !18, line: 137, type: !119)
!609 = !DILocation(line: 137, column: 12, scope: !599)
!610 = !DILocation(line: 143, column: 5, scope: !599)
!611 = !DILocation(line: 143, column: 12, scope: !599)
!612 = !DILocation(line: 143, column: 25, scope: !599)
!613 = !DILocation(line: 143, column: 23, scope: !599)
!614 = !DILocation(line: 143, column: 34, scope: !599)
!615 = !DILocation(line: 143, column: 47, scope: !599)
!616 = !DILocation(line: 143, column: 55, scope: !599)
!617 = !DILocation(line: 143, column: 53, scope: !599)
!618 = !DILocation(line: 143, column: 37, scope: !599)
!619 = !DILocation(line: 143, column: 68, scope: !599)
!620 = !DILocation(line: 143, column: 81, scope: !599)
!621 = !DILocation(line: 143, column: 89, scope: !599)
!622 = !DILocation(line: 143, column: 87, scope: !599)
!623 = !DILocation(line: 143, column: 100, scope: !599)
!624 = !DILocation(line: 143, column: 71, scope: !599)
!625 = !DILocation(line: 0, scope: !599)
!626 = !DILocalVariable(name: "byte", scope: !627, file: !18, line: 145, type: !10)
!627 = distinct !DILexicalBlock(scope: !599, file: !18, line: 144, column: 5)
!628 = !DILocation(line: 145, column: 13, scope: !627)
!629 = !DILocation(line: 146, column: 18, scope: !627)
!630 = !DILocation(line: 146, column: 26, scope: !627)
!631 = !DILocation(line: 146, column: 24, scope: !627)
!632 = !DILocation(line: 146, column: 9, scope: !627)
!633 = !DILocation(line: 147, column: 45, scope: !627)
!634 = !DILocation(line: 147, column: 29, scope: !627)
!635 = !DILocation(line: 147, column: 9, scope: !627)
!636 = !DILocation(line: 147, column: 15, scope: !627)
!637 = !DILocation(line: 147, column: 27, scope: !627)
!638 = !DILocation(line: 148, column: 9, scope: !627)
!639 = distinct !{!639, !610, !640, !99}
!640 = !DILocation(line: 149, column: 5, scope: !599)
!641 = !DILocation(line: 151, column: 12, scope: !599)
!642 = !DILocation(line: 151, column: 5, scope: !599)
!643 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !644, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!644 = !DISubroutineType(types: !645)
!645 = !{!10}
!646 = !DILocation(line: 158, column: 5, scope: !643)
!647 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !644, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!648 = !DILocation(line: 163, column: 5, scope: !647)
!649 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !644, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!650 = !DILocation(line: 168, column: 13, scope: !649)
!651 = !DILocation(line: 168, column: 20, scope: !649)
!652 = !DILocation(line: 168, column: 5, scope: !649)
!653 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !106, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!654 = !DILocation(line: 187, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !106, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!656 = !DILocation(line: 188, column: 16, scope: !655)
!657 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !106, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!658 = !DILocation(line: 189, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !106, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!660 = !DILocation(line: 190, column: 16, scope: !659)
!661 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !106, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!662 = !DILocation(line: 191, column: 16, scope: !661)
!663 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !106, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!664 = !DILocation(line: 192, column: 16, scope: !663)
!665 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !106, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!666 = !DILocation(line: 193, column: 16, scope: !665)
!667 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !106, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!668 = !DILocation(line: 194, column: 16, scope: !667)
!669 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !106, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!670 = !DILocation(line: 195, column: 16, scope: !669)
!671 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !106, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!672 = !DILocation(line: 198, column: 15, scope: !671)
!673 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !106, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!674 = !DILocation(line: 199, column: 15, scope: !673)
!675 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !106, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!676 = !DILocation(line: 200, column: 15, scope: !675)
!677 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !106, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!678 = !DILocation(line: 201, column: 15, scope: !677)
!679 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !106, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!680 = !DILocation(line: 202, column: 15, scope: !679)
!681 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !106, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!682 = !DILocation(line: 203, column: 15, scope: !681)
!683 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !106, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!684 = !DILocation(line: 204, column: 15, scope: !683)
!685 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !106, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!686 = !DILocation(line: 205, column: 15, scope: !685)
!687 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !106, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!688 = !DILocation(line: 206, column: 15, scope: !687)
