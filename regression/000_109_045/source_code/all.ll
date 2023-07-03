; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@CWE606_Unchecked_Loop_Condition__char_environment_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !8
@CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !11
@CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !13
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1.6 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
@.str.13 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.15 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13.18 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22_bad() #0 !dbg !63 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !68, metadata !DIExpression()), !dbg !72
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !72
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !72
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !73
  store i8* %arraydecay, i8** %data, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !75, metadata !DIExpression()), !dbg !80
  %1 = load i8*, i8** %data, align 8, !dbg !81
  %call = call i64 @strlen(i8* %1) #7, !dbg !82
  store i64 %call, i64* %dataLen, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !83, metadata !DIExpression()), !dbg !84
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !85
  store i8* %call1, i8** %environment, align 8, !dbg !84
  %2 = load i8*, i8** %environment, align 8, !dbg !86
  %cmp = icmp ne i8* %2, null, !dbg !88
  br i1 %cmp, label %if.then, label %if.end, !dbg !89

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !90
  %4 = load i64, i64* %dataLen, align 8, !dbg !92
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !93
  %5 = load i8*, i8** %environment, align 8, !dbg !94
  %6 = load i64, i64* %dataLen, align 8, !dbg !95
  %sub = sub i64 100, %6, !dbg !96
  %sub2 = sub i64 %sub, 1, !dbg !97
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !98
  br label %if.end, !dbg !99

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_badGlobal, align 4, !dbg !100
  %7 = load i8*, i8** %data, align 8, !dbg !101
  call void @CWE606_Unchecked_Loop_Condition__char_environment_22_badSink(i8* %7), !dbg !102
  ret void, !dbg !103
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
define dso_local void @goodB2G1() #0 !dbg !104 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !107, metadata !DIExpression()), !dbg !108
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !108
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !108
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !109
  store i8* %arraydecay, i8** %data, align 8, !dbg !110
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !111, metadata !DIExpression()), !dbg !113
  %1 = load i8*, i8** %data, align 8, !dbg !114
  %call = call i64 @strlen(i8* %1) #7, !dbg !115
  store i64 %call, i64* %dataLen, align 8, !dbg !113
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !116, metadata !DIExpression()), !dbg !117
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !118
  store i8* %call1, i8** %environment, align 8, !dbg !117
  %2 = load i8*, i8** %environment, align 8, !dbg !119
  %cmp = icmp ne i8* %2, null, !dbg !121
  br i1 %cmp, label %if.then, label %if.end, !dbg !122

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !123
  %4 = load i64, i64* %dataLen, align 8, !dbg !125
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !126
  %5 = load i8*, i8** %environment, align 8, !dbg !127
  %6 = load i64, i64* %dataLen, align 8, !dbg !128
  %sub = sub i64 100, %6, !dbg !129
  %sub2 = sub i64 %sub, 1, !dbg !130
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !131
  br label %if.end, !dbg !132

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Global, align 4, !dbg !133
  %7 = load i8*, i8** %data, align 8, !dbg !134
  call void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Sink(i8* %7), !dbg !135
  ret void, !dbg !136
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !137 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !141
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !141
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !142
  store i8* %arraydecay, i8** %data, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !144, metadata !DIExpression()), !dbg !146
  %1 = load i8*, i8** %data, align 8, !dbg !147
  %call = call i64 @strlen(i8* %1) #7, !dbg !148
  store i64 %call, i64* %dataLen, align 8, !dbg !146
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !149, metadata !DIExpression()), !dbg !150
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !151
  store i8* %call1, i8** %environment, align 8, !dbg !150
  %2 = load i8*, i8** %environment, align 8, !dbg !152
  %cmp = icmp ne i8* %2, null, !dbg !154
  br i1 %cmp, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !156
  %4 = load i64, i64* %dataLen, align 8, !dbg !158
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !159
  %5 = load i8*, i8** %environment, align 8, !dbg !160
  %6 = load i64, i64* %dataLen, align 8, !dbg !161
  %sub = sub i64 100, %6, !dbg !162
  %sub2 = sub i64 %sub, 1, !dbg !163
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !164
  br label %if.end, !dbg !165

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Global, align 4, !dbg !166
  %7 = load i8*, i8** %data, align 8, !dbg !167
  call void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink(i8* %7), !dbg !168
  ret void, !dbg !169
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !170 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !174
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !174
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !175
  store i8* %arraydecay, i8** %data, align 8, !dbg !176
  %1 = load i8*, i8** %data, align 8, !dbg !177
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !178
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BGlobal, align 4, !dbg !179
  %2 = load i8*, i8** %data, align 8, !dbg !180
  call void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink(i8* %2), !dbg !181
  ret void, !dbg !182
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22_good() #0 !dbg !183 {
entry:
  call void @goodB2G1(), !dbg !184
  call void @goodB2G2(), !dbg !185
  call void @goodG2B(), !dbg !186
  ret void, !dbg !187
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22_badSink(i8* %data) #0 !dbg !188 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_badGlobal, align 4, !dbg !193
  %tobool = icmp ne i32 %0, 0, !dbg !193
  br i1 %tobool, label %if.then, label %if.end4, !dbg !195

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !196, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata i32* %n, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !202, metadata !DIExpression()), !dbg !203
  %1 = load i8*, i8** %data.addr, align 8, !dbg !204
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !206
  %cmp = icmp eq i32 %call, 1, !dbg !207
  br i1 %cmp, label %if.then1, label %if.end, !dbg !208

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !209
  store i32 0, i32* %i, align 4, !dbg !211
  br label %for.cond, !dbg !213

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !214
  %3 = load i32, i32* %n, align 4, !dbg !216
  %cmp2 = icmp slt i32 %2, %3, !dbg !217
  br i1 %cmp2, label %for.body, label %for.end, !dbg !218

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !219
  %inc = add nsw i32 %4, 1, !dbg !219
  store i32 %inc, i32* %intVariable, align 4, !dbg !219
  br label %for.inc, !dbg !221

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !222
  %inc3 = add nsw i32 %5, 1, !dbg !222
  store i32 %inc3, i32* %i, align 4, !dbg !222
  br label %for.cond, !dbg !223, !llvm.loop !224

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !227
  call void @printIntLine(i32 %6), !dbg !228
  br label %if.end, !dbg !229

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !230

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !231
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Sink(i8* %data) #0 !dbg !232 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Global, align 4, !dbg !235
  %tobool = icmp ne i32 %0, 0, !dbg !235
  br i1 %tobool, label %if.then, label %if.else, !dbg !237

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.6, i64 0, i64 0)), !dbg !238
  br label %if.end7, !dbg !240

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !241, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %n, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !247, metadata !DIExpression()), !dbg !248
  %1 = load i8*, i8** %data.addr, align 8, !dbg !249
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !251
  %cmp = icmp eq i32 %call, 1, !dbg !252
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !253

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %n, align 4, !dbg !254
  %cmp2 = icmp slt i32 %2, 10000, !dbg !257
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !258

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !259
  store i32 0, i32* %i, align 4, !dbg !261
  br label %for.cond, !dbg !263

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !264
  %4 = load i32, i32* %n, align 4, !dbg !266
  %cmp4 = icmp slt i32 %3, %4, !dbg !267
  br i1 %cmp4, label %for.body, label %for.end, !dbg !268

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !269
  %inc = add nsw i32 %5, 1, !dbg !269
  store i32 %inc, i32* %intVariable, align 4, !dbg !269
  br label %for.inc, !dbg !271

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !272
  %inc5 = add nsw i32 %6, 1, !dbg !272
  store i32 %inc5, i32* %i, align 4, !dbg !272
  br label %for.cond, !dbg !273, !llvm.loop !274

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !276
  call void @printIntLine(i32 %7), !dbg !277
  br label %if.end, !dbg !278

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !279

if.end6:                                          ; preds = %if.end, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !280
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink(i8* %data) #0 !dbg !281 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !282, metadata !DIExpression()), !dbg !283
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Global, align 4, !dbg !284
  %tobool = icmp ne i32 %0, 0, !dbg !284
  br i1 %tobool, label %if.then, label %if.end7, !dbg !286

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !287, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata i32* %n, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !293, metadata !DIExpression()), !dbg !294
  %1 = load i8*, i8** %data.addr, align 8, !dbg !295
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !297
  %cmp = icmp eq i32 %call, 1, !dbg !298
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !299

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4, !dbg !300
  %cmp2 = icmp slt i32 %2, 10000, !dbg !303
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !304

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !305
  store i32 0, i32* %i, align 4, !dbg !307
  br label %for.cond, !dbg !309

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !310
  %4 = load i32, i32* %n, align 4, !dbg !312
  %cmp4 = icmp slt i32 %3, %4, !dbg !313
  br i1 %cmp4, label %for.body, label %for.end, !dbg !314

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !315
  %inc = add nsw i32 %5, 1, !dbg !315
  store i32 %inc, i32* %intVariable, align 4, !dbg !315
  br label %for.inc, !dbg !317

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !318
  %inc5 = add nsw i32 %6, 1, !dbg !318
  store i32 %inc5, i32* %i, align 4, !dbg !318
  br label %for.cond, !dbg !319, !llvm.loop !320

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !322
  call void @printIntLine(i32 %7), !dbg !323
  br label %if.end, !dbg !324

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !325

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7, !dbg !326

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink(i8* %data) #0 !dbg !328 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BGlobal, align 4, !dbg !331
  %tobool = icmp ne i32 %0, 0, !dbg !331
  br i1 %tobool, label %if.then, label %if.end4, !dbg !333

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !334, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata i32* %n, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !340, metadata !DIExpression()), !dbg !341
  %1 = load i8*, i8** %data.addr, align 8, !dbg !342
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !344
  %cmp = icmp eq i32 %call, 1, !dbg !345
  br i1 %cmp, label %if.then1, label %if.end, !dbg !346

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !347
  store i32 0, i32* %i, align 4, !dbg !349
  br label %for.cond, !dbg !351

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !352
  %3 = load i32, i32* %n, align 4, !dbg !354
  %cmp2 = icmp slt i32 %2, %3, !dbg !355
  br i1 %cmp2, label %for.body, label %for.end, !dbg !356

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !357
  %inc = add nsw i32 %4, 1, !dbg !357
  store i32 %inc, i32* %intVariable, align 4, !dbg !357
  br label %for.inc, !dbg !359

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !360
  %inc3 = add nsw i32 %5, 1, !dbg !360
  store i32 %inc3, i32* %i, align 4, !dbg !360
  br label %for.cond, !dbg !361, !llvm.loop !362

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !364
  call void @printIntLine(i32 %6), !dbg !365
  br label %if.end, !dbg !366

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !367

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !369 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)), !dbg !372
  %0 = load i8*, i8** %line.addr, align 8, !dbg !373
  %cmp = icmp ne i8* %0, null, !dbg !375
  br i1 %cmp, label %if.then, label %if.end, !dbg !376

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !377
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.14, i64 0, i64 0), i8* %1), !dbg !379
  br label %if.end, !dbg !380

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !381
  ret void, !dbg !382
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !383 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !384, metadata !DIExpression()), !dbg !385
  %0 = load i8*, i8** %line.addr, align 8, !dbg !386
  %cmp = icmp ne i8* %0, null, !dbg !388
  br i1 %cmp, label %if.then, label %if.end, !dbg !389

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !390
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.14, i64 0, i64 0), i8* %1), !dbg !392
  br label %if.end, !dbg !393

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !395 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load i32*, i32** %line.addr, align 8, !dbg !402
  %cmp = icmp ne i32* %0, null, !dbg !404
  br i1 %cmp, label %if.then, label %if.end, !dbg !405

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !406
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.15, i64 0, i64 0), i32* %1), !dbg !408
  br label %if.end, !dbg !409

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !410
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !411 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !416
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !417
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !419 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !425
  %conv = sext i16 %0 to i32, !dbg !425
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !426
  ret void, !dbg !427
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !428 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !432, metadata !DIExpression()), !dbg !433
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !434
  %conv = fpext float %0 to double, !dbg !434
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !435
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !437 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !443
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !444
  ret void, !dbg !445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !446 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !453, metadata !DIExpression()), !dbg !454
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !455
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !456
  ret void, !dbg !457
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !458 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !463
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !464
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !466 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !471
  %conv = sext i8 %0 to i32, !dbg !471
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !472
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !474 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !479, metadata !DIExpression()), !dbg !483
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !484
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !485
  store i32 %0, i32* %arrayidx, align 4, !dbg !486
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !487
  store i32 0, i32* %arrayidx1, align 4, !dbg !488
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !489
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !490
  ret void, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !492 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !495, metadata !DIExpression()), !dbg !496
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !497
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !498
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !500 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !503, metadata !DIExpression()), !dbg !504
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !505
  %conv = zext i8 %0 to i32, !dbg !505
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !506
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !508 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !512, metadata !DIExpression()), !dbg !513
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !514
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !515
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !517 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !527, metadata !DIExpression()), !dbg !528
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !529
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !530
  %1 = load i32, i32* %intOne, align 4, !dbg !530
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !531
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !532
  %3 = load i32, i32* %intTwo, align 4, !dbg !532
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13.18, i64 0, i64 0), i32 %1, i32 %3), !dbg !533
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !535 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !539, metadata !DIExpression()), !dbg !540
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata i64* %i, metadata !543, metadata !DIExpression()), !dbg !544
  store i64 0, i64* %i, align 8, !dbg !545
  br label %for.cond, !dbg !547

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !548
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !550
  %cmp = icmp ult i64 %0, %1, !dbg !551
  br i1 %cmp, label %for.body, label %for.end, !dbg !552

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !553
  %3 = load i64, i64* %i, align 8, !dbg !555
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !553
  %4 = load i8, i8* %arrayidx, align 1, !dbg !553
  %conv = zext i8 %4 to i32, !dbg !553
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !556
  br label %for.inc, !dbg !557

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !558
  %inc = add i64 %5, 1, !dbg !558
  store i64 %inc, i64* %i, align 8, !dbg !558
  br label %for.cond, !dbg !559, !llvm.loop !560

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !562
  ret void, !dbg !563
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !564 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !567, metadata !DIExpression()), !dbg !568
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !569, metadata !DIExpression()), !dbg !570
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !571, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !573, metadata !DIExpression()), !dbg !574
  store i64 0, i64* %numWritten, align 8, !dbg !574
  br label %while.cond, !dbg !575

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !576
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !577
  %cmp = icmp ult i64 %0, %1, !dbg !578
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !579

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !580
  %2 = load i16*, i16** %call, align 8, !dbg !580
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !580
  %4 = load i64, i64* %numWritten, align 8, !dbg !580
  %mul = mul i64 2, %4, !dbg !580
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !580
  %5 = load i8, i8* %arrayidx, align 1, !dbg !580
  %conv = sext i8 %5 to i32, !dbg !580
  %idxprom = sext i32 %conv to i64, !dbg !580
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !580
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !580
  %conv2 = zext i16 %6 to i32, !dbg !580
  %and = and i32 %conv2, 4096, !dbg !580
  %tobool = icmp ne i32 %and, 0, !dbg !580
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !581

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !582
  %7 = load i16*, i16** %call3, align 8, !dbg !582
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !582
  %9 = load i64, i64* %numWritten, align 8, !dbg !582
  %mul4 = mul i64 2, %9, !dbg !582
  %add = add i64 %mul4, 1, !dbg !582
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !582
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !582
  %conv6 = sext i8 %10 to i32, !dbg !582
  %idxprom7 = sext i32 %conv6 to i64, !dbg !582
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !582
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !582
  %conv9 = zext i16 %11 to i32, !dbg !582
  %and10 = and i32 %conv9, 4096, !dbg !582
  %tobool11 = icmp ne i32 %and10, 0, !dbg !581
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !583
  br i1 %12, label %while.body, label %while.end, !dbg !575

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !584, metadata !DIExpression()), !dbg !586
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !587
  %14 = load i64, i64* %numWritten, align 8, !dbg !588
  %mul12 = mul i64 2, %14, !dbg !589
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !587
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !590
  %15 = load i32, i32* %byte, align 4, !dbg !591
  %conv15 = trunc i32 %15 to i8, !dbg !592
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !593
  %17 = load i64, i64* %numWritten, align 8, !dbg !594
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !593
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !595
  %18 = load i64, i64* %numWritten, align 8, !dbg !596
  %inc = add i64 %18, 1, !dbg !596
  store i64 %inc, i64* %numWritten, align 8, !dbg !596
  br label %while.cond, !dbg !575, !llvm.loop !597

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !599
  ret i64 %19, !dbg !600
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !601 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !604, metadata !DIExpression()), !dbg !605
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !606, metadata !DIExpression()), !dbg !607
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !608, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !610, metadata !DIExpression()), !dbg !611
  store i64 0, i64* %numWritten, align 8, !dbg !611
  br label %while.cond, !dbg !612

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !613
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !614
  %cmp = icmp ult i64 %0, %1, !dbg !615
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !616

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !617
  %3 = load i64, i64* %numWritten, align 8, !dbg !618
  %mul = mul i64 2, %3, !dbg !619
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !617
  %4 = load i32, i32* %arrayidx, align 4, !dbg !617
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !620
  %tobool = icmp ne i32 %call, 0, !dbg !620
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !621

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !622
  %6 = load i64, i64* %numWritten, align 8, !dbg !623
  %mul1 = mul i64 2, %6, !dbg !624
  %add = add i64 %mul1, 1, !dbg !625
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !622
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !622
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !626
  %tobool4 = icmp ne i32 %call3, 0, !dbg !621
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !627
  br i1 %8, label %while.body, label %while.end, !dbg !612

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !628, metadata !DIExpression()), !dbg !630
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !631
  %10 = load i64, i64* %numWritten, align 8, !dbg !632
  %mul5 = mul i64 2, %10, !dbg !633
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !631
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !634
  %11 = load i32, i32* %byte, align 4, !dbg !635
  %conv = trunc i32 %11 to i8, !dbg !636
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !637
  %13 = load i64, i64* %numWritten, align 8, !dbg !638
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !637
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !639
  %14 = load i64, i64* %numWritten, align 8, !dbg !640
  %inc = add i64 %14, 1, !dbg !640
  store i64 %inc, i64* %numWritten, align 8, !dbg !640
  br label %while.cond, !dbg !612, !llvm.loop !641

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !643
  ret i64 %15, !dbg !644
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !645 {
entry:
  ret i32 1, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !649 {
entry:
  ret i32 0, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !651 {
entry:
  %call = call i32 @rand() #8, !dbg !652
  %rem = srem i32 %call, 2, !dbg !653
  ret i32 %rem, !dbg !654
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !683 {
entry:
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !685 {
entry:
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !687 {
entry:
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !689 {
entry:
  ret void, !dbg !690
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

!llvm.dbg.cu = !{!2, !57, !17}
!llvm.ident = !{!59, !59, !59}
!llvm.module.flags = !{!60, !61, !62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_badGlobal", scope: !2, file: !3, line: 38, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_045/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !11, !13}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Global", scope: !2, file: !3, line: 66, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Global", scope: !2, file: !3, line: 67, type: !10, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BGlobal", scope: !2, file: !3, line: 68, type: !10, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !10, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_045/source_code")
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
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_22b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_045/source_code")
!59 = !{!"clang version 12.0.0"}
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_bad", scope: !3, file: !3, line: 41, type: !64, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !DILocalVariable(name: "data", scope: !63, file: !3, line: 43, type: !55)
!67 = !DILocation(line: 43, column: 12, scope: !63)
!68 = !DILocalVariable(name: "dataBuffer", scope: !63, file: !3, line: 44, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 100)
!72 = !DILocation(line: 44, column: 10, scope: !63)
!73 = !DILocation(line: 45, column: 12, scope: !63)
!74 = !DILocation(line: 45, column: 10, scope: !63)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !3, line: 48, type: !77)
!76 = distinct !DILexicalBlock(scope: !63, file: !3, line: 46, column: 5)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocation(line: 48, column: 16, scope: !76)
!81 = !DILocation(line: 48, column: 33, scope: !76)
!82 = !DILocation(line: 48, column: 26, scope: !76)
!83 = !DILocalVariable(name: "environment", scope: !76, file: !3, line: 49, type: !55)
!84 = !DILocation(line: 49, column: 16, scope: !76)
!85 = !DILocation(line: 49, column: 30, scope: !76)
!86 = !DILocation(line: 51, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !76, file: !3, line: 51, column: 13)
!88 = !DILocation(line: 51, column: 25, scope: !87)
!89 = !DILocation(line: 51, column: 13, scope: !76)
!90 = !DILocation(line: 54, column: 21, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 52, column: 9)
!92 = !DILocation(line: 54, column: 26, scope: !91)
!93 = !DILocation(line: 54, column: 25, scope: !91)
!94 = !DILocation(line: 54, column: 35, scope: !91)
!95 = !DILocation(line: 54, column: 52, scope: !91)
!96 = !DILocation(line: 54, column: 51, scope: !91)
!97 = !DILocation(line: 54, column: 59, scope: !91)
!98 = !DILocation(line: 54, column: 13, scope: !91)
!99 = !DILocation(line: 55, column: 9, scope: !91)
!100 = !DILocation(line: 57, column: 68, scope: !63)
!101 = !DILocation(line: 58, column: 66, scope: !63)
!102 = !DILocation(line: 58, column: 5, scope: !63)
!103 = !DILocation(line: 59, column: 1, scope: !63)
!104 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 72, type: !64, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!105 = !DILocalVariable(name: "data", scope: !104, file: !3, line: 74, type: !55)
!106 = !DILocation(line: 74, column: 12, scope: !104)
!107 = !DILocalVariable(name: "dataBuffer", scope: !104, file: !3, line: 75, type: !69)
!108 = !DILocation(line: 75, column: 10, scope: !104)
!109 = !DILocation(line: 76, column: 12, scope: !104)
!110 = !DILocation(line: 76, column: 10, scope: !104)
!111 = !DILocalVariable(name: "dataLen", scope: !112, file: !3, line: 79, type: !77)
!112 = distinct !DILexicalBlock(scope: !104, file: !3, line: 77, column: 5)
!113 = !DILocation(line: 79, column: 16, scope: !112)
!114 = !DILocation(line: 79, column: 33, scope: !112)
!115 = !DILocation(line: 79, column: 26, scope: !112)
!116 = !DILocalVariable(name: "environment", scope: !112, file: !3, line: 80, type: !55)
!117 = !DILocation(line: 80, column: 16, scope: !112)
!118 = !DILocation(line: 80, column: 30, scope: !112)
!119 = !DILocation(line: 82, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !112, file: !3, line: 82, column: 13)
!121 = !DILocation(line: 82, column: 25, scope: !120)
!122 = !DILocation(line: 82, column: 13, scope: !112)
!123 = !DILocation(line: 85, column: 21, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !3, line: 83, column: 9)
!125 = !DILocation(line: 85, column: 26, scope: !124)
!126 = !DILocation(line: 85, column: 25, scope: !124)
!127 = !DILocation(line: 85, column: 35, scope: !124)
!128 = !DILocation(line: 85, column: 52, scope: !124)
!129 = !DILocation(line: 85, column: 51, scope: !124)
!130 = !DILocation(line: 85, column: 59, scope: !124)
!131 = !DILocation(line: 85, column: 13, scope: !124)
!132 = !DILocation(line: 86, column: 9, scope: !124)
!133 = !DILocation(line: 88, column: 73, scope: !104)
!134 = !DILocation(line: 89, column: 71, scope: !104)
!135 = !DILocation(line: 89, column: 5, scope: !104)
!136 = !DILocation(line: 90, column: 1, scope: !104)
!137 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 94, type: !64, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!138 = !DILocalVariable(name: "data", scope: !137, file: !3, line: 96, type: !55)
!139 = !DILocation(line: 96, column: 12, scope: !137)
!140 = !DILocalVariable(name: "dataBuffer", scope: !137, file: !3, line: 97, type: !69)
!141 = !DILocation(line: 97, column: 10, scope: !137)
!142 = !DILocation(line: 98, column: 12, scope: !137)
!143 = !DILocation(line: 98, column: 10, scope: !137)
!144 = !DILocalVariable(name: "dataLen", scope: !145, file: !3, line: 101, type: !77)
!145 = distinct !DILexicalBlock(scope: !137, file: !3, line: 99, column: 5)
!146 = !DILocation(line: 101, column: 16, scope: !145)
!147 = !DILocation(line: 101, column: 33, scope: !145)
!148 = !DILocation(line: 101, column: 26, scope: !145)
!149 = !DILocalVariable(name: "environment", scope: !145, file: !3, line: 102, type: !55)
!150 = !DILocation(line: 102, column: 16, scope: !145)
!151 = !DILocation(line: 102, column: 30, scope: !145)
!152 = !DILocation(line: 104, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !145, file: !3, line: 104, column: 13)
!154 = !DILocation(line: 104, column: 25, scope: !153)
!155 = !DILocation(line: 104, column: 13, scope: !145)
!156 = !DILocation(line: 107, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !3, line: 105, column: 9)
!158 = !DILocation(line: 107, column: 26, scope: !157)
!159 = !DILocation(line: 107, column: 25, scope: !157)
!160 = !DILocation(line: 107, column: 35, scope: !157)
!161 = !DILocation(line: 107, column: 52, scope: !157)
!162 = !DILocation(line: 107, column: 51, scope: !157)
!163 = !DILocation(line: 107, column: 59, scope: !157)
!164 = !DILocation(line: 107, column: 13, scope: !157)
!165 = !DILocation(line: 108, column: 9, scope: !157)
!166 = !DILocation(line: 110, column: 73, scope: !137)
!167 = !DILocation(line: 111, column: 71, scope: !137)
!168 = !DILocation(line: 111, column: 5, scope: !137)
!169 = !DILocation(line: 112, column: 1, scope: !137)
!170 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 116, type: !64, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!171 = !DILocalVariable(name: "data", scope: !170, file: !3, line: 118, type: !55)
!172 = !DILocation(line: 118, column: 12, scope: !170)
!173 = !DILocalVariable(name: "dataBuffer", scope: !170, file: !3, line: 119, type: !69)
!174 = !DILocation(line: 119, column: 10, scope: !170)
!175 = !DILocation(line: 120, column: 12, scope: !170)
!176 = !DILocation(line: 120, column: 10, scope: !170)
!177 = !DILocation(line: 122, column: 12, scope: !170)
!178 = !DILocation(line: 122, column: 5, scope: !170)
!179 = !DILocation(line: 123, column: 72, scope: !170)
!180 = !DILocation(line: 124, column: 70, scope: !170)
!181 = !DILocation(line: 124, column: 5, scope: !170)
!182 = !DILocation(line: 125, column: 1, scope: !170)
!183 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_good", scope: !3, file: !3, line: 127, type: !64, scopeLine: 128, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!184 = !DILocation(line: 129, column: 5, scope: !183)
!185 = !DILocation(line: 130, column: 5, scope: !183)
!186 = !DILocation(line: 131, column: 5, scope: !183)
!187 = !DILocation(line: 132, column: 1, scope: !183)
!188 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_badSink", scope: !58, file: !58, line: 31, type: !189, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !55}
!191 = !DILocalVariable(name: "data", arg: 1, scope: !188, file: !58, line: 31, type: !55)
!192 = !DILocation(line: 31, column: 74, scope: !188)
!193 = !DILocation(line: 33, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !188, file: !58, line: 33, column: 8)
!195 = !DILocation(line: 33, column: 8, scope: !188)
!196 = !DILocalVariable(name: "i", scope: !197, file: !58, line: 36, type: !10)
!197 = distinct !DILexicalBlock(scope: !198, file: !58, line: 35, column: 9)
!198 = distinct !DILexicalBlock(scope: !194, file: !58, line: 34, column: 5)
!199 = !DILocation(line: 36, column: 17, scope: !197)
!200 = !DILocalVariable(name: "n", scope: !197, file: !58, line: 36, type: !10)
!201 = !DILocation(line: 36, column: 20, scope: !197)
!202 = !DILocalVariable(name: "intVariable", scope: !197, file: !58, line: 36, type: !10)
!203 = !DILocation(line: 36, column: 23, scope: !197)
!204 = !DILocation(line: 37, column: 24, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !58, line: 37, column: 17)
!206 = !DILocation(line: 37, column: 17, scope: !205)
!207 = !DILocation(line: 37, column: 40, scope: !205)
!208 = !DILocation(line: 37, column: 17, scope: !197)
!209 = !DILocation(line: 40, column: 29, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !58, line: 38, column: 13)
!211 = !DILocation(line: 41, column: 24, scope: !212)
!212 = distinct !DILexicalBlock(scope: !210, file: !58, line: 41, column: 17)
!213 = !DILocation(line: 41, column: 22, scope: !212)
!214 = !DILocation(line: 41, column: 29, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !58, line: 41, column: 17)
!216 = !DILocation(line: 41, column: 33, scope: !215)
!217 = !DILocation(line: 41, column: 31, scope: !215)
!218 = !DILocation(line: 41, column: 17, scope: !212)
!219 = !DILocation(line: 44, column: 32, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !58, line: 42, column: 17)
!221 = !DILocation(line: 45, column: 17, scope: !220)
!222 = !DILocation(line: 41, column: 37, scope: !215)
!223 = !DILocation(line: 41, column: 17, scope: !215)
!224 = distinct !{!224, !218, !225, !226}
!225 = !DILocation(line: 45, column: 17, scope: !212)
!226 = !{!"llvm.loop.mustprogress"}
!227 = !DILocation(line: 46, column: 30, scope: !210)
!228 = !DILocation(line: 46, column: 17, scope: !210)
!229 = !DILocation(line: 47, column: 13, scope: !210)
!230 = !DILocation(line: 49, column: 5, scope: !198)
!231 = !DILocation(line: 50, column: 1, scope: !188)
!232 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Sink", scope: !58, file: !58, line: 62, type: !189, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!233 = !DILocalVariable(name: "data", arg: 1, scope: !232, file: !58, line: 62, type: !55)
!234 = !DILocation(line: 62, column: 79, scope: !232)
!235 = !DILocation(line: 64, column: 8, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !58, line: 64, column: 8)
!237 = !DILocation(line: 64, column: 8, scope: !232)
!238 = !DILocation(line: 67, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !58, line: 65, column: 5)
!240 = !DILocation(line: 68, column: 5, scope: !239)
!241 = !DILocalVariable(name: "i", scope: !242, file: !58, line: 72, type: !10)
!242 = distinct !DILexicalBlock(scope: !243, file: !58, line: 71, column: 9)
!243 = distinct !DILexicalBlock(scope: !236, file: !58, line: 70, column: 5)
!244 = !DILocation(line: 72, column: 17, scope: !242)
!245 = !DILocalVariable(name: "n", scope: !242, file: !58, line: 72, type: !10)
!246 = !DILocation(line: 72, column: 20, scope: !242)
!247 = !DILocalVariable(name: "intVariable", scope: !242, file: !58, line: 72, type: !10)
!248 = !DILocation(line: 72, column: 23, scope: !242)
!249 = !DILocation(line: 73, column: 24, scope: !250)
!250 = distinct !DILexicalBlock(scope: !242, file: !58, line: 73, column: 17)
!251 = !DILocation(line: 73, column: 17, scope: !250)
!252 = !DILocation(line: 73, column: 40, scope: !250)
!253 = !DILocation(line: 73, column: 17, scope: !242)
!254 = !DILocation(line: 76, column: 21, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !58, line: 76, column: 21)
!256 = distinct !DILexicalBlock(scope: !250, file: !58, line: 74, column: 13)
!257 = !DILocation(line: 76, column: 23, scope: !255)
!258 = !DILocation(line: 76, column: 21, scope: !256)
!259 = !DILocation(line: 78, column: 33, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !58, line: 77, column: 17)
!261 = !DILocation(line: 79, column: 28, scope: !262)
!262 = distinct !DILexicalBlock(scope: !260, file: !58, line: 79, column: 21)
!263 = !DILocation(line: 79, column: 26, scope: !262)
!264 = !DILocation(line: 79, column: 33, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !58, line: 79, column: 21)
!266 = !DILocation(line: 79, column: 37, scope: !265)
!267 = !DILocation(line: 79, column: 35, scope: !265)
!268 = !DILocation(line: 79, column: 21, scope: !262)
!269 = !DILocation(line: 82, column: 36, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !58, line: 80, column: 21)
!271 = !DILocation(line: 83, column: 21, scope: !270)
!272 = !DILocation(line: 79, column: 41, scope: !265)
!273 = !DILocation(line: 79, column: 21, scope: !265)
!274 = distinct !{!274, !268, !275, !226}
!275 = !DILocation(line: 83, column: 21, scope: !262)
!276 = !DILocation(line: 84, column: 34, scope: !260)
!277 = !DILocation(line: 84, column: 21, scope: !260)
!278 = !DILocation(line: 85, column: 17, scope: !260)
!279 = !DILocation(line: 86, column: 13, scope: !256)
!280 = !DILocation(line: 89, column: 1, scope: !232)
!281 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink", scope: !58, file: !58, line: 92, type: !189, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!282 = !DILocalVariable(name: "data", arg: 1, scope: !281, file: !58, line: 92, type: !55)
!283 = !DILocation(line: 92, column: 79, scope: !281)
!284 = !DILocation(line: 94, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !58, line: 94, column: 8)
!286 = !DILocation(line: 94, column: 8, scope: !281)
!287 = !DILocalVariable(name: "i", scope: !288, file: !58, line: 97, type: !10)
!288 = distinct !DILexicalBlock(scope: !289, file: !58, line: 96, column: 9)
!289 = distinct !DILexicalBlock(scope: !285, file: !58, line: 95, column: 5)
!290 = !DILocation(line: 97, column: 17, scope: !288)
!291 = !DILocalVariable(name: "n", scope: !288, file: !58, line: 97, type: !10)
!292 = !DILocation(line: 97, column: 20, scope: !288)
!293 = !DILocalVariable(name: "intVariable", scope: !288, file: !58, line: 97, type: !10)
!294 = !DILocation(line: 97, column: 23, scope: !288)
!295 = !DILocation(line: 98, column: 24, scope: !296)
!296 = distinct !DILexicalBlock(scope: !288, file: !58, line: 98, column: 17)
!297 = !DILocation(line: 98, column: 17, scope: !296)
!298 = !DILocation(line: 98, column: 40, scope: !296)
!299 = !DILocation(line: 98, column: 17, scope: !288)
!300 = !DILocation(line: 101, column: 21, scope: !301)
!301 = distinct !DILexicalBlock(scope: !302, file: !58, line: 101, column: 21)
!302 = distinct !DILexicalBlock(scope: !296, file: !58, line: 99, column: 13)
!303 = !DILocation(line: 101, column: 23, scope: !301)
!304 = !DILocation(line: 101, column: 21, scope: !302)
!305 = !DILocation(line: 103, column: 33, scope: !306)
!306 = distinct !DILexicalBlock(scope: !301, file: !58, line: 102, column: 17)
!307 = !DILocation(line: 104, column: 28, scope: !308)
!308 = distinct !DILexicalBlock(scope: !306, file: !58, line: 104, column: 21)
!309 = !DILocation(line: 104, column: 26, scope: !308)
!310 = !DILocation(line: 104, column: 33, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !58, line: 104, column: 21)
!312 = !DILocation(line: 104, column: 37, scope: !311)
!313 = !DILocation(line: 104, column: 35, scope: !311)
!314 = !DILocation(line: 104, column: 21, scope: !308)
!315 = !DILocation(line: 107, column: 36, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !58, line: 105, column: 21)
!317 = !DILocation(line: 108, column: 21, scope: !316)
!318 = !DILocation(line: 104, column: 41, scope: !311)
!319 = !DILocation(line: 104, column: 21, scope: !311)
!320 = distinct !{!320, !314, !321, !226}
!321 = !DILocation(line: 108, column: 21, scope: !308)
!322 = !DILocation(line: 109, column: 34, scope: !306)
!323 = !DILocation(line: 109, column: 21, scope: !306)
!324 = !DILocation(line: 110, column: 17, scope: !306)
!325 = !DILocation(line: 111, column: 13, scope: !302)
!326 = !DILocation(line: 113, column: 5, scope: !289)
!327 = !DILocation(line: 114, column: 1, scope: !281)
!328 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink", scope: !58, file: !58, line: 117, type: !189, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!329 = !DILocalVariable(name: "data", arg: 1, scope: !328, file: !58, line: 117, type: !55)
!330 = !DILocation(line: 117, column: 78, scope: !328)
!331 = !DILocation(line: 119, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !58, line: 119, column: 8)
!333 = !DILocation(line: 119, column: 8, scope: !328)
!334 = !DILocalVariable(name: "i", scope: !335, file: !58, line: 122, type: !10)
!335 = distinct !DILexicalBlock(scope: !336, file: !58, line: 121, column: 9)
!336 = distinct !DILexicalBlock(scope: !332, file: !58, line: 120, column: 5)
!337 = !DILocation(line: 122, column: 17, scope: !335)
!338 = !DILocalVariable(name: "n", scope: !335, file: !58, line: 122, type: !10)
!339 = !DILocation(line: 122, column: 20, scope: !335)
!340 = !DILocalVariable(name: "intVariable", scope: !335, file: !58, line: 122, type: !10)
!341 = !DILocation(line: 122, column: 23, scope: !335)
!342 = !DILocation(line: 123, column: 24, scope: !343)
!343 = distinct !DILexicalBlock(scope: !335, file: !58, line: 123, column: 17)
!344 = !DILocation(line: 123, column: 17, scope: !343)
!345 = !DILocation(line: 123, column: 40, scope: !343)
!346 = !DILocation(line: 123, column: 17, scope: !335)
!347 = !DILocation(line: 126, column: 29, scope: !348)
!348 = distinct !DILexicalBlock(scope: !343, file: !58, line: 124, column: 13)
!349 = !DILocation(line: 127, column: 24, scope: !350)
!350 = distinct !DILexicalBlock(scope: !348, file: !58, line: 127, column: 17)
!351 = !DILocation(line: 127, column: 22, scope: !350)
!352 = !DILocation(line: 127, column: 29, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !58, line: 127, column: 17)
!354 = !DILocation(line: 127, column: 33, scope: !353)
!355 = !DILocation(line: 127, column: 31, scope: !353)
!356 = !DILocation(line: 127, column: 17, scope: !350)
!357 = !DILocation(line: 130, column: 32, scope: !358)
!358 = distinct !DILexicalBlock(scope: !353, file: !58, line: 128, column: 17)
!359 = !DILocation(line: 131, column: 17, scope: !358)
!360 = !DILocation(line: 127, column: 37, scope: !353)
!361 = !DILocation(line: 127, column: 17, scope: !353)
!362 = distinct !{!362, !356, !363, !226}
!363 = !DILocation(line: 131, column: 17, scope: !350)
!364 = !DILocation(line: 132, column: 30, scope: !348)
!365 = !DILocation(line: 132, column: 17, scope: !348)
!366 = !DILocation(line: 133, column: 13, scope: !348)
!367 = !DILocation(line: 135, column: 5, scope: !336)
!368 = !DILocation(line: 136, column: 1, scope: !328)
!369 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !189, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!370 = !DILocalVariable(name: "line", arg: 1, scope: !369, file: !18, line: 11, type: !55)
!371 = !DILocation(line: 11, column: 25, scope: !369)
!372 = !DILocation(line: 13, column: 1, scope: !369)
!373 = !DILocation(line: 14, column: 8, scope: !374)
!374 = distinct !DILexicalBlock(scope: !369, file: !18, line: 14, column: 8)
!375 = !DILocation(line: 14, column: 13, scope: !374)
!376 = !DILocation(line: 14, column: 8, scope: !369)
!377 = !DILocation(line: 16, column: 24, scope: !378)
!378 = distinct !DILexicalBlock(scope: !374, file: !18, line: 15, column: 5)
!379 = !DILocation(line: 16, column: 9, scope: !378)
!380 = !DILocation(line: 17, column: 5, scope: !378)
!381 = !DILocation(line: 18, column: 5, scope: !369)
!382 = !DILocation(line: 19, column: 1, scope: !369)
!383 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !189, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!384 = !DILocalVariable(name: "line", arg: 1, scope: !383, file: !18, line: 20, type: !55)
!385 = !DILocation(line: 20, column: 29, scope: !383)
!386 = !DILocation(line: 22, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !18, line: 22, column: 8)
!388 = !DILocation(line: 22, column: 13, scope: !387)
!389 = !DILocation(line: 22, column: 8, scope: !383)
!390 = !DILocation(line: 24, column: 24, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !18, line: 23, column: 5)
!392 = !DILocation(line: 24, column: 9, scope: !391)
!393 = !DILocation(line: 25, column: 5, scope: !391)
!394 = !DILocation(line: 26, column: 1, scope: !383)
!395 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !396, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !78, line: 74, baseType: !10)
!400 = !DILocalVariable(name: "line", arg: 1, scope: !395, file: !18, line: 27, type: !398)
!401 = !DILocation(line: 27, column: 29, scope: !395)
!402 = !DILocation(line: 29, column: 8, scope: !403)
!403 = distinct !DILexicalBlock(scope: !395, file: !18, line: 29, column: 8)
!404 = !DILocation(line: 29, column: 13, scope: !403)
!405 = !DILocation(line: 29, column: 8, scope: !395)
!406 = !DILocation(line: 31, column: 27, scope: !407)
!407 = distinct !DILexicalBlock(scope: !403, file: !18, line: 30, column: 5)
!408 = !DILocation(line: 31, column: 9, scope: !407)
!409 = !DILocation(line: 32, column: 5, scope: !407)
!410 = !DILocation(line: 33, column: 1, scope: !395)
!411 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !412, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !10}
!414 = !DILocalVariable(name: "intNumber", arg: 1, scope: !411, file: !18, line: 35, type: !10)
!415 = !DILocation(line: 35, column: 24, scope: !411)
!416 = !DILocation(line: 37, column: 20, scope: !411)
!417 = !DILocation(line: 37, column: 5, scope: !411)
!418 = !DILocation(line: 38, column: 1, scope: !411)
!419 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !420, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !422}
!422 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!423 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !419, file: !18, line: 40, type: !422)
!424 = !DILocation(line: 40, column: 28, scope: !419)
!425 = !DILocation(line: 42, column: 21, scope: !419)
!426 = !DILocation(line: 42, column: 5, scope: !419)
!427 = !DILocation(line: 43, column: 1, scope: !419)
!428 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !429, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !431}
!431 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!432 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !428, file: !18, line: 45, type: !431)
!433 = !DILocation(line: 45, column: 28, scope: !428)
!434 = !DILocation(line: 47, column: 20, scope: !428)
!435 = !DILocation(line: 47, column: 5, scope: !428)
!436 = !DILocation(line: 48, column: 1, scope: !428)
!437 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !438, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !440}
!440 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!441 = !DILocalVariable(name: "longNumber", arg: 1, scope: !437, file: !18, line: 50, type: !440)
!442 = !DILocation(line: 50, column: 26, scope: !437)
!443 = !DILocation(line: 52, column: 21, scope: !437)
!444 = !DILocation(line: 52, column: 5, scope: !437)
!445 = !DILocation(line: 53, column: 1, scope: !437)
!446 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !447, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !449}
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !450, line: 27, baseType: !451)
!450 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !452, line: 44, baseType: !440)
!452 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!453 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !446, file: !18, line: 55, type: !449)
!454 = !DILocation(line: 55, column: 33, scope: !446)
!455 = !DILocation(line: 57, column: 29, scope: !446)
!456 = !DILocation(line: 57, column: 5, scope: !446)
!457 = !DILocation(line: 58, column: 1, scope: !446)
!458 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !459, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !77}
!461 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !458, file: !18, line: 60, type: !77)
!462 = !DILocation(line: 60, column: 29, scope: !458)
!463 = !DILocation(line: 62, column: 21, scope: !458)
!464 = !DILocation(line: 62, column: 5, scope: !458)
!465 = !DILocation(line: 63, column: 1, scope: !458)
!466 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !467, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !56}
!469 = !DILocalVariable(name: "charHex", arg: 1, scope: !466, file: !18, line: 65, type: !56)
!470 = !DILocation(line: 65, column: 29, scope: !466)
!471 = !DILocation(line: 67, column: 22, scope: !466)
!472 = !DILocation(line: 67, column: 5, scope: !466)
!473 = !DILocation(line: 68, column: 1, scope: !466)
!474 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !475, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !399}
!477 = !DILocalVariable(name: "wideChar", arg: 1, scope: !474, file: !18, line: 70, type: !399)
!478 = !DILocation(line: 70, column: 29, scope: !474)
!479 = !DILocalVariable(name: "s", scope: !474, file: !18, line: 74, type: !480)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 64, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 2)
!483 = !DILocation(line: 74, column: 13, scope: !474)
!484 = !DILocation(line: 75, column: 16, scope: !474)
!485 = !DILocation(line: 75, column: 9, scope: !474)
!486 = !DILocation(line: 75, column: 14, scope: !474)
!487 = !DILocation(line: 76, column: 9, scope: !474)
!488 = !DILocation(line: 76, column: 14, scope: !474)
!489 = !DILocation(line: 77, column: 21, scope: !474)
!490 = !DILocation(line: 77, column: 5, scope: !474)
!491 = !DILocation(line: 78, column: 1, scope: !474)
!492 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !493, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !22}
!495 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !492, file: !18, line: 80, type: !22)
!496 = !DILocation(line: 80, column: 33, scope: !492)
!497 = !DILocation(line: 82, column: 20, scope: !492)
!498 = !DILocation(line: 82, column: 5, scope: !492)
!499 = !DILocation(line: 83, column: 1, scope: !492)
!500 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !501, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !38}
!503 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !500, file: !18, line: 85, type: !38)
!504 = !DILocation(line: 85, column: 45, scope: !500)
!505 = !DILocation(line: 87, column: 22, scope: !500)
!506 = !DILocation(line: 87, column: 5, scope: !500)
!507 = !DILocation(line: 88, column: 1, scope: !500)
!508 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !509, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !511}
!511 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!512 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !508, file: !18, line: 90, type: !511)
!513 = !DILocation(line: 90, column: 29, scope: !508)
!514 = !DILocation(line: 92, column: 20, scope: !508)
!515 = !DILocation(line: 92, column: 5, scope: !508)
!516 = !DILocation(line: 93, column: 1, scope: !508)
!517 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !518, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !522, line: 100, baseType: !523)
!522 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_045/source_code")
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !522, line: 96, size: 64, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !523, file: !522, line: 98, baseType: !10, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !523, file: !522, line: 99, baseType: !10, size: 32, offset: 32)
!527 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !517, file: !18, line: 95, type: !520)
!528 = !DILocation(line: 95, column: 40, scope: !517)
!529 = !DILocation(line: 97, column: 26, scope: !517)
!530 = !DILocation(line: 97, column: 47, scope: !517)
!531 = !DILocation(line: 97, column: 55, scope: !517)
!532 = !DILocation(line: 97, column: 76, scope: !517)
!533 = !DILocation(line: 97, column: 5, scope: !517)
!534 = !DILocation(line: 98, column: 1, scope: !517)
!535 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !536, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !538, !77}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!539 = !DILocalVariable(name: "bytes", arg: 1, scope: !535, file: !18, line: 100, type: !538)
!540 = !DILocation(line: 100, column: 38, scope: !535)
!541 = !DILocalVariable(name: "numBytes", arg: 2, scope: !535, file: !18, line: 100, type: !77)
!542 = !DILocation(line: 100, column: 52, scope: !535)
!543 = !DILocalVariable(name: "i", scope: !535, file: !18, line: 102, type: !77)
!544 = !DILocation(line: 102, column: 12, scope: !535)
!545 = !DILocation(line: 103, column: 12, scope: !546)
!546 = distinct !DILexicalBlock(scope: !535, file: !18, line: 103, column: 5)
!547 = !DILocation(line: 103, column: 10, scope: !546)
!548 = !DILocation(line: 103, column: 17, scope: !549)
!549 = distinct !DILexicalBlock(scope: !546, file: !18, line: 103, column: 5)
!550 = !DILocation(line: 103, column: 21, scope: !549)
!551 = !DILocation(line: 103, column: 19, scope: !549)
!552 = !DILocation(line: 103, column: 5, scope: !546)
!553 = !DILocation(line: 105, column: 24, scope: !554)
!554 = distinct !DILexicalBlock(scope: !549, file: !18, line: 104, column: 5)
!555 = !DILocation(line: 105, column: 30, scope: !554)
!556 = !DILocation(line: 105, column: 9, scope: !554)
!557 = !DILocation(line: 106, column: 5, scope: !554)
!558 = !DILocation(line: 103, column: 31, scope: !549)
!559 = !DILocation(line: 103, column: 5, scope: !549)
!560 = distinct !{!560, !552, !561, !226}
!561 = !DILocation(line: 106, column: 5, scope: !546)
!562 = !DILocation(line: 107, column: 5, scope: !535)
!563 = !DILocation(line: 108, column: 1, scope: !535)
!564 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !565, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!565 = !DISubroutineType(types: !566)
!566 = !{!77, !538, !77, !55}
!567 = !DILocalVariable(name: "bytes", arg: 1, scope: !564, file: !18, line: 113, type: !538)
!568 = !DILocation(line: 113, column: 39, scope: !564)
!569 = !DILocalVariable(name: "numBytes", arg: 2, scope: !564, file: !18, line: 113, type: !77)
!570 = !DILocation(line: 113, column: 53, scope: !564)
!571 = !DILocalVariable(name: "hex", arg: 3, scope: !564, file: !18, line: 113, type: !55)
!572 = !DILocation(line: 113, column: 71, scope: !564)
!573 = !DILocalVariable(name: "numWritten", scope: !564, file: !18, line: 115, type: !77)
!574 = !DILocation(line: 115, column: 12, scope: !564)
!575 = !DILocation(line: 121, column: 5, scope: !564)
!576 = !DILocation(line: 121, column: 12, scope: !564)
!577 = !DILocation(line: 121, column: 25, scope: !564)
!578 = !DILocation(line: 121, column: 23, scope: !564)
!579 = !DILocation(line: 121, column: 34, scope: !564)
!580 = !DILocation(line: 121, column: 37, scope: !564)
!581 = !DILocation(line: 121, column: 67, scope: !564)
!582 = !DILocation(line: 121, column: 70, scope: !564)
!583 = !DILocation(line: 0, scope: !564)
!584 = !DILocalVariable(name: "byte", scope: !585, file: !18, line: 123, type: !10)
!585 = distinct !DILexicalBlock(scope: !564, file: !18, line: 122, column: 5)
!586 = !DILocation(line: 123, column: 13, scope: !585)
!587 = !DILocation(line: 124, column: 17, scope: !585)
!588 = !DILocation(line: 124, column: 25, scope: !585)
!589 = !DILocation(line: 124, column: 23, scope: !585)
!590 = !DILocation(line: 124, column: 9, scope: !585)
!591 = !DILocation(line: 125, column: 45, scope: !585)
!592 = !DILocation(line: 125, column: 29, scope: !585)
!593 = !DILocation(line: 125, column: 9, scope: !585)
!594 = !DILocation(line: 125, column: 15, scope: !585)
!595 = !DILocation(line: 125, column: 27, scope: !585)
!596 = !DILocation(line: 126, column: 9, scope: !585)
!597 = distinct !{!597, !575, !598, !226}
!598 = !DILocation(line: 127, column: 5, scope: !564)
!599 = !DILocation(line: 129, column: 12, scope: !564)
!600 = !DILocation(line: 129, column: 5, scope: !564)
!601 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !602, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!602 = !DISubroutineType(types: !603)
!603 = !{!77, !538, !77, !398}
!604 = !DILocalVariable(name: "bytes", arg: 1, scope: !601, file: !18, line: 135, type: !538)
!605 = !DILocation(line: 135, column: 41, scope: !601)
!606 = !DILocalVariable(name: "numBytes", arg: 2, scope: !601, file: !18, line: 135, type: !77)
!607 = !DILocation(line: 135, column: 55, scope: !601)
!608 = !DILocalVariable(name: "hex", arg: 3, scope: !601, file: !18, line: 135, type: !398)
!609 = !DILocation(line: 135, column: 76, scope: !601)
!610 = !DILocalVariable(name: "numWritten", scope: !601, file: !18, line: 137, type: !77)
!611 = !DILocation(line: 137, column: 12, scope: !601)
!612 = !DILocation(line: 143, column: 5, scope: !601)
!613 = !DILocation(line: 143, column: 12, scope: !601)
!614 = !DILocation(line: 143, column: 25, scope: !601)
!615 = !DILocation(line: 143, column: 23, scope: !601)
!616 = !DILocation(line: 143, column: 34, scope: !601)
!617 = !DILocation(line: 143, column: 47, scope: !601)
!618 = !DILocation(line: 143, column: 55, scope: !601)
!619 = !DILocation(line: 143, column: 53, scope: !601)
!620 = !DILocation(line: 143, column: 37, scope: !601)
!621 = !DILocation(line: 143, column: 68, scope: !601)
!622 = !DILocation(line: 143, column: 81, scope: !601)
!623 = !DILocation(line: 143, column: 89, scope: !601)
!624 = !DILocation(line: 143, column: 87, scope: !601)
!625 = !DILocation(line: 143, column: 100, scope: !601)
!626 = !DILocation(line: 143, column: 71, scope: !601)
!627 = !DILocation(line: 0, scope: !601)
!628 = !DILocalVariable(name: "byte", scope: !629, file: !18, line: 145, type: !10)
!629 = distinct !DILexicalBlock(scope: !601, file: !18, line: 144, column: 5)
!630 = !DILocation(line: 145, column: 13, scope: !629)
!631 = !DILocation(line: 146, column: 18, scope: !629)
!632 = !DILocation(line: 146, column: 26, scope: !629)
!633 = !DILocation(line: 146, column: 24, scope: !629)
!634 = !DILocation(line: 146, column: 9, scope: !629)
!635 = !DILocation(line: 147, column: 45, scope: !629)
!636 = !DILocation(line: 147, column: 29, scope: !629)
!637 = !DILocation(line: 147, column: 9, scope: !629)
!638 = !DILocation(line: 147, column: 15, scope: !629)
!639 = !DILocation(line: 147, column: 27, scope: !629)
!640 = !DILocation(line: 148, column: 9, scope: !629)
!641 = distinct !{!641, !612, !642, !226}
!642 = !DILocation(line: 149, column: 5, scope: !601)
!643 = !DILocation(line: 151, column: 12, scope: !601)
!644 = !DILocation(line: 151, column: 5, scope: !601)
!645 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !646, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!646 = !DISubroutineType(types: !647)
!647 = !{!10}
!648 = !DILocation(line: 158, column: 5, scope: !645)
!649 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !646, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!650 = !DILocation(line: 163, column: 5, scope: !649)
!651 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !646, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!652 = !DILocation(line: 168, column: 13, scope: !651)
!653 = !DILocation(line: 168, column: 20, scope: !651)
!654 = !DILocation(line: 168, column: 5, scope: !651)
!655 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !64, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!656 = !DILocation(line: 187, column: 16, scope: !655)
!657 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !64, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!658 = !DILocation(line: 188, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !64, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!660 = !DILocation(line: 189, column: 16, scope: !659)
!661 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !64, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!662 = !DILocation(line: 190, column: 16, scope: !661)
!663 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !64, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!664 = !DILocation(line: 191, column: 16, scope: !663)
!665 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !64, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!666 = !DILocation(line: 192, column: 16, scope: !665)
!667 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !64, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!668 = !DILocation(line: 193, column: 16, scope: !667)
!669 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !64, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!670 = !DILocation(line: 194, column: 16, scope: !669)
!671 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !64, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!672 = !DILocation(line: 195, column: 16, scope: !671)
!673 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !64, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!674 = !DILocation(line: 198, column: 15, scope: !673)
!675 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !64, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!676 = !DILocation(line: 199, column: 15, scope: !675)
!677 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !64, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!678 = !DILocation(line: 200, column: 15, scope: !677)
!679 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !64, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!680 = !DILocation(line: 201, column: 15, scope: !679)
!681 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !64, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!682 = !DILocation(line: 202, column: 15, scope: !681)
!683 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !64, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!684 = !DILocation(line: 203, column: 15, scope: !683)
!685 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !64, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!686 = !DILocation(line: 204, column: 15, scope: !685)
!687 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !64, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!688 = !DILocation(line: 205, column: 15, scope: !687)
!689 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !64, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!690 = !DILocation(line: 206, column: 15, scope: !689)
