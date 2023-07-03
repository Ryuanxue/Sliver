; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@staticTrue = dso_local global i32 1, align 4, !dbg !0
@staticFalse = dso_local global i32 0, align 4, !dbg !8
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !11
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !36
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !38
@globalTrue = dso_local global i32 1, align 4, !dbg !40
@globalFalse = dso_local global i32 0, align 4, !dbg !42
@globalFive = dso_local global i32 5, align 4, !dbg !44
@globalArgc = dso_local global i32 0, align 4, !dbg !46
@globalArgv = dso_local global i8** null, align 8, !dbg !48
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_05_bad() #0 !dbg !57 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !62, metadata !DIExpression()), !dbg !66
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !66
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !66
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !67
  store i8* %arraydecay, i8** %data, align 8, !dbg !68
  %1 = load i32, i32* @staticTrue, align 4, !dbg !69
  %tobool = icmp ne i32 %1, 0, !dbg !69
  br i1 %tobool, label %if.then, label %if.end5, !dbg !71

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !72, metadata !DIExpression()), !dbg !78
  %2 = load i8*, i8** %data, align 8, !dbg !79
  %call = call i64 @strlen(i8* %2) #7, !dbg !80
  store i64 %call, i64* %dataLen, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !81, metadata !DIExpression()), !dbg !82
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !83
  store i8* %call1, i8** %environment, align 8, !dbg !82
  %3 = load i8*, i8** %environment, align 8, !dbg !84
  %cmp = icmp ne i8* %3, null, !dbg !86
  br i1 %cmp, label %if.then2, label %if.end, !dbg !87

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !88
  %5 = load i64, i64* %dataLen, align 8, !dbg !90
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !91
  %6 = load i8*, i8** %environment, align 8, !dbg !92
  %7 = load i64, i64* %dataLen, align 8, !dbg !93
  %sub = sub i64 100, %7, !dbg !94
  %sub3 = sub i64 %sub, 1, !dbg !95
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #8, !dbg !96
  br label %if.end, !dbg !97

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !98

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @staticTrue, align 4, !dbg !99
  %tobool6 = icmp ne i32 %8, 0, !dbg !99
  br i1 %tobool6, label %if.then7, label %if.end14, !dbg !101

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !102, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %n, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !108, metadata !DIExpression()), !dbg !109
  %9 = load i8*, i8** %data, align 8, !dbg !110
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !112
  %cmp9 = icmp eq i32 %call8, 1, !dbg !113
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !114

if.then10:                                        ; preds = %if.then7
  store i32 0, i32* %intVariable, align 4, !dbg !115
  store i32 0, i32* %i, align 4, !dbg !117
  br label %for.cond, !dbg !119

for.cond:                                         ; preds = %for.inc, %if.then10
  %10 = load i32, i32* %i, align 4, !dbg !120
  %11 = load i32, i32* %n, align 4, !dbg !122
  %cmp11 = icmp slt i32 %10, %11, !dbg !123
  br i1 %cmp11, label %for.body, label %for.end, !dbg !124

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !125
  %inc = add nsw i32 %12, 1, !dbg !125
  store i32 %inc, i32* %intVariable, align 4, !dbg !125
  br label %for.inc, !dbg !127

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !128
  %inc12 = add nsw i32 %13, 1, !dbg !128
  store i32 %inc12, i32* %i, align 4, !dbg !128
  br label %for.cond, !dbg !129, !llvm.loop !130

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !133
  call void @printIntLine(i32 %14), !dbg !134
  br label %if.end13, !dbg !135

if.end13:                                         ; preds = %for.end, %if.then7
  br label %if.end14, !dbg !136

if.end14:                                         ; preds = %if.end13, %if.end5
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
  %1 = load i32, i32* @staticTrue, align 4, !dbg !145
  %tobool = icmp ne i32 %1, 0, !dbg !145
  br i1 %tobool, label %if.then, label %if.end5, !dbg !147

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !148, metadata !DIExpression()), !dbg !151
  %2 = load i8*, i8** %data, align 8, !dbg !152
  %call = call i64 @strlen(i8* %2) #7, !dbg !153
  store i64 %call, i64* %dataLen, align 8, !dbg !151
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !154, metadata !DIExpression()), !dbg !155
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !156
  store i8* %call1, i8** %environment, align 8, !dbg !155
  %3 = load i8*, i8** %environment, align 8, !dbg !157
  %cmp = icmp ne i8* %3, null, !dbg !159
  br i1 %cmp, label %if.then2, label %if.end, !dbg !160

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !161
  %5 = load i64, i64* %dataLen, align 8, !dbg !163
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !164
  %6 = load i8*, i8** %environment, align 8, !dbg !165
  %7 = load i64, i64* %dataLen, align 8, !dbg !166
  %sub = sub i64 100, %7, !dbg !167
  %sub3 = sub i64 %sub, 1, !dbg !168
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #8, !dbg !169
  br label %if.end, !dbg !170

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !171

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @staticFalse, align 4, !dbg !172
  %tobool6 = icmp ne i32 %8, 0, !dbg !172
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !174

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !175
  br label %if.end17, !dbg !177

if.else:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !178, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %n, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !184, metadata !DIExpression()), !dbg !185
  %9 = load i8*, i8** %data, align 8, !dbg !186
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !188
  %cmp9 = icmp eq i32 %call8, 1, !dbg !189
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !190

if.then10:                                        ; preds = %if.else
  %10 = load i32, i32* %n, align 4, !dbg !191
  %cmp11 = icmp slt i32 %10, 10000, !dbg !194
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !195

if.then12:                                        ; preds = %if.then10
  store i32 0, i32* %intVariable, align 4, !dbg !196
  store i32 0, i32* %i, align 4, !dbg !198
  br label %for.cond, !dbg !200

for.cond:                                         ; preds = %for.inc, %if.then12
  %11 = load i32, i32* %i, align 4, !dbg !201
  %12 = load i32, i32* %n, align 4, !dbg !203
  %cmp13 = icmp slt i32 %11, %12, !dbg !204
  br i1 %cmp13, label %for.body, label %for.end, !dbg !205

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !206
  %inc = add nsw i32 %13, 1, !dbg !206
  store i32 %inc, i32* %intVariable, align 4, !dbg !206
  br label %for.inc, !dbg !208

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !209
  %inc14 = add nsw i32 %14, 1, !dbg !209
  store i32 %inc14, i32* %i, align 4, !dbg !209
  br label %for.cond, !dbg !210, !llvm.loop !211

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !213
  call void @printIntLine(i32 %15), !dbg !214
  br label %if.end15, !dbg !215

if.end15:                                         ; preds = %for.end, %if.then10
  br label %if.end16, !dbg !216

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  ret void, !dbg !217
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !218 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !222
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !222
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !223
  store i8* %arraydecay, i8** %data, align 8, !dbg !224
  %1 = load i32, i32* @staticTrue, align 4, !dbg !225
  %tobool = icmp ne i32 %1, 0, !dbg !225
  br i1 %tobool, label %if.then, label %if.end5, !dbg !227

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !228, metadata !DIExpression()), !dbg !231
  %2 = load i8*, i8** %data, align 8, !dbg !232
  %call = call i64 @strlen(i8* %2) #7, !dbg !233
  store i64 %call, i64* %dataLen, align 8, !dbg !231
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !234, metadata !DIExpression()), !dbg !235
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !236
  store i8* %call1, i8** %environment, align 8, !dbg !235
  %3 = load i8*, i8** %environment, align 8, !dbg !237
  %cmp = icmp ne i8* %3, null, !dbg !239
  br i1 %cmp, label %if.then2, label %if.end, !dbg !240

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !241
  %5 = load i64, i64* %dataLen, align 8, !dbg !243
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !244
  %6 = load i8*, i8** %environment, align 8, !dbg !245
  %7 = load i64, i64* %dataLen, align 8, !dbg !246
  %sub = sub i64 100, %7, !dbg !247
  %sub3 = sub i64 %sub, 1, !dbg !248
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #8, !dbg !249
  br label %if.end, !dbg !250

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !251

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @staticTrue, align 4, !dbg !252
  %tobool6 = icmp ne i32 %8, 0, !dbg !252
  br i1 %tobool6, label %if.then7, label %if.end17, !dbg !254

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !255, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata i32* %n, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !261, metadata !DIExpression()), !dbg !262
  %9 = load i8*, i8** %data, align 8, !dbg !263
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !265
  %cmp9 = icmp eq i32 %call8, 1, !dbg !266
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !267

if.then10:                                        ; preds = %if.then7
  %10 = load i32, i32* %n, align 4, !dbg !268
  %cmp11 = icmp slt i32 %10, 10000, !dbg !271
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !272

if.then12:                                        ; preds = %if.then10
  store i32 0, i32* %intVariable, align 4, !dbg !273
  store i32 0, i32* %i, align 4, !dbg !275
  br label %for.cond, !dbg !277

for.cond:                                         ; preds = %for.inc, %if.then12
  %11 = load i32, i32* %i, align 4, !dbg !278
  %12 = load i32, i32* %n, align 4, !dbg !280
  %cmp13 = icmp slt i32 %11, %12, !dbg !281
  br i1 %cmp13, label %for.body, label %for.end, !dbg !282

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !283
  %inc = add nsw i32 %13, 1, !dbg !283
  store i32 %inc, i32* %intVariable, align 4, !dbg !283
  br label %for.inc, !dbg !285

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !286
  %inc14 = add nsw i32 %14, 1, !dbg !286
  store i32 %inc14, i32* %i, align 4, !dbg !286
  br label %for.cond, !dbg !287, !llvm.loop !288

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !290
  call void @printIntLine(i32 %15), !dbg !291
  br label %if.end15, !dbg !292

if.end15:                                         ; preds = %for.end, %if.then10
  br label %if.end16, !dbg !293

if.end16:                                         ; preds = %if.end15, %if.then7
  br label %if.end17, !dbg !294

if.end17:                                         ; preds = %if.end16, %if.end5
  ret void, !dbg !295
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !296 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !300
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !300
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !301
  store i8* %arraydecay, i8** %data, align 8, !dbg !302
  %1 = load i32, i32* @staticFalse, align 4, !dbg !303
  %tobool = icmp ne i32 %1, 0, !dbg !303
  br i1 %tobool, label %if.then, label %if.else, !dbg !305

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !306
  br label %if.end, !dbg !308

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !309
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !311
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticTrue, align 4, !dbg !312
  %tobool1 = icmp ne i32 %3, 0, !dbg !312
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !314

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !315, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata i32* %n, metadata !319, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !321, metadata !DIExpression()), !dbg !322
  %4 = load i8*, i8** %data, align 8, !dbg !323
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !325
  %cmp = icmp eq i32 %call3, 1, !dbg !326
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !327

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !328
  store i32 0, i32* %i, align 4, !dbg !330
  br label %for.cond, !dbg !332

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !333
  %6 = load i32, i32* %n, align 4, !dbg !335
  %cmp5 = icmp slt i32 %5, %6, !dbg !336
  br i1 %cmp5, label %for.body, label %for.end, !dbg !337

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !338
  %inc = add nsw i32 %7, 1, !dbg !338
  store i32 %inc, i32* %intVariable, align 4, !dbg !338
  br label %for.inc, !dbg !340

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !341
  %inc6 = add nsw i32 %8, 1, !dbg !341
  store i32 %inc6, i32* %i, align 4, !dbg !341
  br label %for.cond, !dbg !342, !llvm.loop !343

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !345
  call void @printIntLine(i32 %9), !dbg !346
  br label %if.end7, !dbg !347

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !348

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !349
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !350 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !354
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !354
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !355
  store i8* %arraydecay, i8** %data, align 8, !dbg !356
  %1 = load i32, i32* @staticTrue, align 4, !dbg !357
  %tobool = icmp ne i32 %1, 0, !dbg !357
  br i1 %tobool, label %if.then, label %if.end, !dbg !359

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !360
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !362
  br label %if.end, !dbg !363

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticTrue, align 4, !dbg !364
  %tobool1 = icmp ne i32 %3, 0, !dbg !364
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !366

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !367, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata i32* %n, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !373, metadata !DIExpression()), !dbg !374
  %4 = load i8*, i8** %data, align 8, !dbg !375
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !377
  %cmp = icmp eq i32 %call3, 1, !dbg !378
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !379

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !380
  store i32 0, i32* %i, align 4, !dbg !382
  br label %for.cond, !dbg !384

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !385
  %6 = load i32, i32* %n, align 4, !dbg !387
  %cmp5 = icmp slt i32 %5, %6, !dbg !388
  br i1 %cmp5, label %for.body, label %for.end, !dbg !389

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !390
  %inc = add nsw i32 %7, 1, !dbg !390
  store i32 %inc, i32* %intVariable, align 4, !dbg !390
  br label %for.inc, !dbg !392

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !393
  %inc6 = add nsw i32 %8, 1, !dbg !393
  store i32 %inc6, i32* %i, align 4, !dbg !393
  br label %for.cond, !dbg !394, !llvm.loop !395

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !397
  call void @printIntLine(i32 %9), !dbg !398
  br label %if.end7, !dbg !399

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !400

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_05_good() #0 !dbg !402 {
entry:
  call void @goodB2G1(), !dbg !403
  call void @goodB2G2(), !dbg !404
  call void @goodG2B1(), !dbg !405
  call void @goodG2B2(), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !408 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !411, metadata !DIExpression()), !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !413
  %0 = load i8*, i8** %line.addr, align 8, !dbg !414
  %cmp = icmp ne i8* %0, null, !dbg !416
  br i1 %cmp, label %if.then, label %if.end, !dbg !417

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !418
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !420
  br label %if.end, !dbg !421

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !422
  ret void, !dbg !423
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !424 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load i8*, i8** %line.addr, align 8, !dbg !427
  %cmp = icmp ne i8* %0, null, !dbg !429
  br i1 %cmp, label %if.then, label %if.end, !dbg !430

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !431
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !433
  br label %if.end, !dbg !434

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !436 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load i32*, i32** %line.addr, align 8, !dbg !443
  %cmp = icmp ne i32* %0, null, !dbg !445
  br i1 %cmp, label %if.then, label %if.end, !dbg !446

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !447
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !449
  br label %if.end, !dbg !450

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !451
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !452 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !457
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !460 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !466
  %conv = sext i16 %0 to i32, !dbg !466
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !467
  ret void, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !469 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !475
  %conv = fpext float %0 to double, !dbg !475
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !476
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !478 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !482, metadata !DIExpression()), !dbg !483
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !484
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !485
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !487 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !496
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !497
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !499 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !502, metadata !DIExpression()), !dbg !503
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !504
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !505
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !507 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !512
  %conv = sext i8 %0 to i32, !dbg !512
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !515 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !520, metadata !DIExpression()), !dbg !524
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !525
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !526
  store i32 %0, i32* %arrayidx, align 4, !dbg !527
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !528
  store i32 0, i32* %arrayidx1, align 4, !dbg !529
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !533 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !538
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !539
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !541 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !544, metadata !DIExpression()), !dbg !545
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !546
  %conv = zext i8 %0 to i32, !dbg !546
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !547
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !549 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !553, metadata !DIExpression()), !dbg !554
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !555
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !556
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !558 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !568, metadata !DIExpression()), !dbg !569
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !570
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !571
  %1 = load i32, i32* %intOne, align 4, !dbg !571
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !572
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !573
  %3 = load i32, i32* %intTwo, align 4, !dbg !573
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !574
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !576 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !580, metadata !DIExpression()), !dbg !581
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata i64* %i, metadata !584, metadata !DIExpression()), !dbg !585
  store i64 0, i64* %i, align 8, !dbg !586
  br label %for.cond, !dbg !588

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !589
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !591
  %cmp = icmp ult i64 %0, %1, !dbg !592
  br i1 %cmp, label %for.body, label %for.end, !dbg !593

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !594
  %3 = load i64, i64* %i, align 8, !dbg !596
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !594
  %4 = load i8, i8* %arrayidx, align 1, !dbg !594
  %conv = zext i8 %4 to i32, !dbg !594
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !597
  br label %for.inc, !dbg !598

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !599
  %inc = add i64 %5, 1, !dbg !599
  store i64 %inc, i64* %i, align 8, !dbg !599
  br label %for.cond, !dbg !600, !llvm.loop !601

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !603
  ret void, !dbg !604
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !605 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !608, metadata !DIExpression()), !dbg !609
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !610, metadata !DIExpression()), !dbg !611
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !612, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !614, metadata !DIExpression()), !dbg !615
  store i64 0, i64* %numWritten, align 8, !dbg !615
  br label %while.cond, !dbg !616

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !617
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !618
  %cmp = icmp ult i64 %0, %1, !dbg !619
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !620

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !621
  %2 = load i16*, i16** %call, align 8, !dbg !621
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !621
  %4 = load i64, i64* %numWritten, align 8, !dbg !621
  %mul = mul i64 2, %4, !dbg !621
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !621
  %5 = load i8, i8* %arrayidx, align 1, !dbg !621
  %conv = sext i8 %5 to i32, !dbg !621
  %idxprom = sext i32 %conv to i64, !dbg !621
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !621
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !621
  %conv2 = zext i16 %6 to i32, !dbg !621
  %and = and i32 %conv2, 4096, !dbg !621
  %tobool = icmp ne i32 %and, 0, !dbg !621
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !622

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !623
  %7 = load i16*, i16** %call3, align 8, !dbg !623
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !623
  %9 = load i64, i64* %numWritten, align 8, !dbg !623
  %mul4 = mul i64 2, %9, !dbg !623
  %add = add i64 %mul4, 1, !dbg !623
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !623
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !623
  %conv6 = sext i8 %10 to i32, !dbg !623
  %idxprom7 = sext i32 %conv6 to i64, !dbg !623
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !623
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !623
  %conv9 = zext i16 %11 to i32, !dbg !623
  %and10 = and i32 %conv9, 4096, !dbg !623
  %tobool11 = icmp ne i32 %and10, 0, !dbg !622
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !624
  br i1 %12, label %while.body, label %while.end, !dbg !616

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !625, metadata !DIExpression()), !dbg !627
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !628
  %14 = load i64, i64* %numWritten, align 8, !dbg !629
  %mul12 = mul i64 2, %14, !dbg !630
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !628
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !631
  %15 = load i32, i32* %byte, align 4, !dbg !632
  %conv15 = trunc i32 %15 to i8, !dbg !633
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !634
  %17 = load i64, i64* %numWritten, align 8, !dbg !635
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !634
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !636
  %18 = load i64, i64* %numWritten, align 8, !dbg !637
  %inc = add i64 %18, 1, !dbg !637
  store i64 %inc, i64* %numWritten, align 8, !dbg !637
  br label %while.cond, !dbg !616, !llvm.loop !638

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !640
  ret i64 %19, !dbg !641
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !642 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !645, metadata !DIExpression()), !dbg !646
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !647, metadata !DIExpression()), !dbg !648
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !649, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !651, metadata !DIExpression()), !dbg !652
  store i64 0, i64* %numWritten, align 8, !dbg !652
  br label %while.cond, !dbg !653

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !654
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !655
  %cmp = icmp ult i64 %0, %1, !dbg !656
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !657

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !658
  %3 = load i64, i64* %numWritten, align 8, !dbg !659
  %mul = mul i64 2, %3, !dbg !660
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !658
  %4 = load i32, i32* %arrayidx, align 4, !dbg !658
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !661
  %tobool = icmp ne i32 %call, 0, !dbg !661
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !662

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !663
  %6 = load i64, i64* %numWritten, align 8, !dbg !664
  %mul1 = mul i64 2, %6, !dbg !665
  %add = add i64 %mul1, 1, !dbg !666
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !663
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !663
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !667
  %tobool4 = icmp ne i32 %call3, 0, !dbg !662
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !668
  br i1 %8, label %while.body, label %while.end, !dbg !653

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !669, metadata !DIExpression()), !dbg !671
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !672
  %10 = load i64, i64* %numWritten, align 8, !dbg !673
  %mul5 = mul i64 2, %10, !dbg !674
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !672
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !675
  %11 = load i32, i32* %byte, align 4, !dbg !676
  %conv = trunc i32 %11 to i8, !dbg !677
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !678
  %13 = load i64, i64* %numWritten, align 8, !dbg !679
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !678
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !680
  %14 = load i64, i64* %numWritten, align 8, !dbg !681
  %inc = add i64 %14, 1, !dbg !681
  store i64 %inc, i64* %numWritten, align 8, !dbg !681
  br label %while.cond, !dbg !653, !llvm.loop !682

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !684
  ret i64 %15, !dbg !685
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !686 {
entry:
  ret i32 1, !dbg !689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !690 {
entry:
  ret i32 0, !dbg !691
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !692 {
entry:
  %call = call i32 @rand() #8, !dbg !693
  %rem = srem i32 %call, 2, !dbg !694
  ret i32 %rem, !dbg !695
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !696 {
entry:
  ret void, !dbg !697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !698 {
entry:
  ret void, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !700 {
entry:
  ret void, !dbg !701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !702 {
entry:
  ret void, !dbg !703
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !704 {
entry:
  ret void, !dbg !705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !706 {
entry:
  ret void, !dbg !707
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !708 {
entry:
  ret void, !dbg !709
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !710 {
entry:
  ret void, !dbg !711
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !712 {
entry:
  ret void, !dbg !713
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !714 {
entry:
  ret void, !dbg !715
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !716 {
entry:
  ret void, !dbg !717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !718 {
entry:
  ret void, !dbg !719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !720 {
entry:
  ret void, !dbg !721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !722 {
entry:
  ret void, !dbg !723
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !724 {
entry:
  ret void, !dbg !725
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !726 {
entry:
  ret void, !dbg !727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !728 {
entry:
  ret void, !dbg !729
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !730 {
entry:
  ret void, !dbg !731
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

!llvm.dbg.cu = !{!2, !13}
!llvm.ident = !{!53, !53}
!llvm.module.flags = !{!54, !55, !56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticTrue", scope: !2, file: !3, line: 38, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_05.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_030/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "staticFalse", scope: !2, file: !3, line: 39, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !13, file: !14, line: 174, type: !10, isLocal: false, isDefinition: true)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !32, globals: !35, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_030/source_code")
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 46, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!20 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!32 = !{!6, !10, !33, !34}
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!11, !36, !38, !40, !42, !44, !46, !48}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !13, file: !14, line: 175, type: !10, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !13, file: !14, line: 176, type: !10, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "globalTrue", scope: !13, file: !14, line: 181, type: !10, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "globalFalse", scope: !13, file: !14, line: 182, type: !10, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalFive", scope: !13, file: !14, line: 183, type: !10, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalArgc", scope: !13, file: !14, line: 214, type: !10, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalArgv", scope: !13, file: !14, line: 215, type: !50, isLocal: false, isDefinition: true)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !{!"clang version 12.0.0"}
!54 = !{i32 7, !"Dwarf Version", i32 4}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_05_bad", scope: !3, file: !3, line: 43, type: !58, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!58 = !DISubroutineType(types: !59)
!59 = !{null}
!60 = !DILocalVariable(name: "data", scope: !57, file: !3, line: 45, type: !51)
!61 = !DILocation(line: 45, column: 12, scope: !57)
!62 = !DILocalVariable(name: "dataBuffer", scope: !57, file: !3, line: 46, type: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 800, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 100)
!66 = !DILocation(line: 46, column: 10, scope: !57)
!67 = !DILocation(line: 47, column: 12, scope: !57)
!68 = !DILocation(line: 47, column: 10, scope: !57)
!69 = !DILocation(line: 48, column: 8, scope: !70)
!70 = distinct !DILexicalBlock(scope: !57, file: !3, line: 48, column: 8)
!71 = !DILocation(line: 48, column: 8, scope: !57)
!72 = !DILocalVariable(name: "dataLen", scope: !73, file: !3, line: 52, type: !75)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 50, column: 9)
!74 = distinct !DILexicalBlock(scope: !70, file: !3, line: 49, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 52, column: 20, scope: !73)
!79 = !DILocation(line: 52, column: 37, scope: !73)
!80 = !DILocation(line: 52, column: 30, scope: !73)
!81 = !DILocalVariable(name: "environment", scope: !73, file: !3, line: 53, type: !51)
!82 = !DILocation(line: 53, column: 20, scope: !73)
!83 = !DILocation(line: 53, column: 34, scope: !73)
!84 = !DILocation(line: 55, column: 17, scope: !85)
!85 = distinct !DILexicalBlock(scope: !73, file: !3, line: 55, column: 17)
!86 = !DILocation(line: 55, column: 29, scope: !85)
!87 = !DILocation(line: 55, column: 17, scope: !73)
!88 = !DILocation(line: 58, column: 25, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !3, line: 56, column: 13)
!90 = !DILocation(line: 58, column: 30, scope: !89)
!91 = !DILocation(line: 58, column: 29, scope: !89)
!92 = !DILocation(line: 58, column: 39, scope: !89)
!93 = !DILocation(line: 58, column: 56, scope: !89)
!94 = !DILocation(line: 58, column: 55, scope: !89)
!95 = !DILocation(line: 58, column: 63, scope: !89)
!96 = !DILocation(line: 58, column: 17, scope: !89)
!97 = !DILocation(line: 59, column: 13, scope: !89)
!98 = !DILocation(line: 61, column: 5, scope: !74)
!99 = !DILocation(line: 62, column: 8, scope: !100)
!100 = distinct !DILexicalBlock(scope: !57, file: !3, line: 62, column: 8)
!101 = !DILocation(line: 62, column: 8, scope: !57)
!102 = !DILocalVariable(name: "i", scope: !103, file: !3, line: 65, type: !10)
!103 = distinct !DILexicalBlock(scope: !104, file: !3, line: 64, column: 9)
!104 = distinct !DILexicalBlock(scope: !100, file: !3, line: 63, column: 5)
!105 = !DILocation(line: 65, column: 17, scope: !103)
!106 = !DILocalVariable(name: "n", scope: !103, file: !3, line: 65, type: !10)
!107 = !DILocation(line: 65, column: 20, scope: !103)
!108 = !DILocalVariable(name: "intVariable", scope: !103, file: !3, line: 65, type: !10)
!109 = !DILocation(line: 65, column: 23, scope: !103)
!110 = !DILocation(line: 66, column: 24, scope: !111)
!111 = distinct !DILexicalBlock(scope: !103, file: !3, line: 66, column: 17)
!112 = !DILocation(line: 66, column: 17, scope: !111)
!113 = !DILocation(line: 66, column: 40, scope: !111)
!114 = !DILocation(line: 66, column: 17, scope: !103)
!115 = !DILocation(line: 69, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !3, line: 67, column: 13)
!117 = !DILocation(line: 70, column: 24, scope: !118)
!118 = distinct !DILexicalBlock(scope: !116, file: !3, line: 70, column: 17)
!119 = !DILocation(line: 70, column: 22, scope: !118)
!120 = !DILocation(line: 70, column: 29, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !3, line: 70, column: 17)
!122 = !DILocation(line: 70, column: 33, scope: !121)
!123 = !DILocation(line: 70, column: 31, scope: !121)
!124 = !DILocation(line: 70, column: 17, scope: !118)
!125 = !DILocation(line: 73, column: 32, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !3, line: 71, column: 17)
!127 = !DILocation(line: 74, column: 17, scope: !126)
!128 = !DILocation(line: 70, column: 37, scope: !121)
!129 = !DILocation(line: 70, column: 17, scope: !121)
!130 = distinct !{!130, !124, !131, !132}
!131 = !DILocation(line: 74, column: 17, scope: !118)
!132 = !{!"llvm.loop.mustprogress"}
!133 = !DILocation(line: 75, column: 30, scope: !116)
!134 = !DILocation(line: 75, column: 17, scope: !116)
!135 = !DILocation(line: 76, column: 13, scope: !116)
!136 = !DILocation(line: 78, column: 5, scope: !104)
!137 = !DILocation(line: 79, column: 1, scope: !57)
!138 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 86, type: !58, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!139 = !DILocalVariable(name: "data", scope: !138, file: !3, line: 88, type: !51)
!140 = !DILocation(line: 88, column: 12, scope: !138)
!141 = !DILocalVariable(name: "dataBuffer", scope: !138, file: !3, line: 89, type: !63)
!142 = !DILocation(line: 89, column: 10, scope: !138)
!143 = !DILocation(line: 90, column: 12, scope: !138)
!144 = !DILocation(line: 90, column: 10, scope: !138)
!145 = !DILocation(line: 91, column: 8, scope: !146)
!146 = distinct !DILexicalBlock(scope: !138, file: !3, line: 91, column: 8)
!147 = !DILocation(line: 91, column: 8, scope: !138)
!148 = !DILocalVariable(name: "dataLen", scope: !149, file: !3, line: 95, type: !75)
!149 = distinct !DILexicalBlock(scope: !150, file: !3, line: 93, column: 9)
!150 = distinct !DILexicalBlock(scope: !146, file: !3, line: 92, column: 5)
!151 = !DILocation(line: 95, column: 20, scope: !149)
!152 = !DILocation(line: 95, column: 37, scope: !149)
!153 = !DILocation(line: 95, column: 30, scope: !149)
!154 = !DILocalVariable(name: "environment", scope: !149, file: !3, line: 96, type: !51)
!155 = !DILocation(line: 96, column: 20, scope: !149)
!156 = !DILocation(line: 96, column: 34, scope: !149)
!157 = !DILocation(line: 98, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !149, file: !3, line: 98, column: 17)
!159 = !DILocation(line: 98, column: 29, scope: !158)
!160 = !DILocation(line: 98, column: 17, scope: !149)
!161 = !DILocation(line: 101, column: 25, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 99, column: 13)
!163 = !DILocation(line: 101, column: 30, scope: !162)
!164 = !DILocation(line: 101, column: 29, scope: !162)
!165 = !DILocation(line: 101, column: 39, scope: !162)
!166 = !DILocation(line: 101, column: 56, scope: !162)
!167 = !DILocation(line: 101, column: 55, scope: !162)
!168 = !DILocation(line: 101, column: 63, scope: !162)
!169 = !DILocation(line: 101, column: 17, scope: !162)
!170 = !DILocation(line: 102, column: 13, scope: !162)
!171 = !DILocation(line: 104, column: 5, scope: !150)
!172 = !DILocation(line: 105, column: 8, scope: !173)
!173 = distinct !DILexicalBlock(scope: !138, file: !3, line: 105, column: 8)
!174 = !DILocation(line: 105, column: 8, scope: !138)
!175 = !DILocation(line: 108, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !3, line: 106, column: 5)
!177 = !DILocation(line: 109, column: 5, scope: !176)
!178 = !DILocalVariable(name: "i", scope: !179, file: !3, line: 113, type: !10)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 112, column: 9)
!180 = distinct !DILexicalBlock(scope: !173, file: !3, line: 111, column: 5)
!181 = !DILocation(line: 113, column: 17, scope: !179)
!182 = !DILocalVariable(name: "n", scope: !179, file: !3, line: 113, type: !10)
!183 = !DILocation(line: 113, column: 20, scope: !179)
!184 = !DILocalVariable(name: "intVariable", scope: !179, file: !3, line: 113, type: !10)
!185 = !DILocation(line: 113, column: 23, scope: !179)
!186 = !DILocation(line: 114, column: 24, scope: !187)
!187 = distinct !DILexicalBlock(scope: !179, file: !3, line: 114, column: 17)
!188 = !DILocation(line: 114, column: 17, scope: !187)
!189 = !DILocation(line: 114, column: 40, scope: !187)
!190 = !DILocation(line: 114, column: 17, scope: !179)
!191 = !DILocation(line: 117, column: 21, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 117, column: 21)
!193 = distinct !DILexicalBlock(scope: !187, file: !3, line: 115, column: 13)
!194 = !DILocation(line: 117, column: 23, scope: !192)
!195 = !DILocation(line: 117, column: 21, scope: !193)
!196 = !DILocation(line: 119, column: 33, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !3, line: 118, column: 17)
!198 = !DILocation(line: 120, column: 28, scope: !199)
!199 = distinct !DILexicalBlock(scope: !197, file: !3, line: 120, column: 21)
!200 = !DILocation(line: 120, column: 26, scope: !199)
!201 = !DILocation(line: 120, column: 33, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !3, line: 120, column: 21)
!203 = !DILocation(line: 120, column: 37, scope: !202)
!204 = !DILocation(line: 120, column: 35, scope: !202)
!205 = !DILocation(line: 120, column: 21, scope: !199)
!206 = !DILocation(line: 123, column: 36, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !3, line: 121, column: 21)
!208 = !DILocation(line: 124, column: 21, scope: !207)
!209 = !DILocation(line: 120, column: 41, scope: !202)
!210 = !DILocation(line: 120, column: 21, scope: !202)
!211 = distinct !{!211, !205, !212, !132}
!212 = !DILocation(line: 124, column: 21, scope: !199)
!213 = !DILocation(line: 125, column: 34, scope: !197)
!214 = !DILocation(line: 125, column: 21, scope: !197)
!215 = !DILocation(line: 126, column: 17, scope: !197)
!216 = !DILocation(line: 127, column: 13, scope: !193)
!217 = !DILocation(line: 130, column: 1, scope: !138)
!218 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 133, type: !58, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!219 = !DILocalVariable(name: "data", scope: !218, file: !3, line: 135, type: !51)
!220 = !DILocation(line: 135, column: 12, scope: !218)
!221 = !DILocalVariable(name: "dataBuffer", scope: !218, file: !3, line: 136, type: !63)
!222 = !DILocation(line: 136, column: 10, scope: !218)
!223 = !DILocation(line: 137, column: 12, scope: !218)
!224 = !DILocation(line: 137, column: 10, scope: !218)
!225 = !DILocation(line: 138, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !218, file: !3, line: 138, column: 8)
!227 = !DILocation(line: 138, column: 8, scope: !218)
!228 = !DILocalVariable(name: "dataLen", scope: !229, file: !3, line: 142, type: !75)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 140, column: 9)
!230 = distinct !DILexicalBlock(scope: !226, file: !3, line: 139, column: 5)
!231 = !DILocation(line: 142, column: 20, scope: !229)
!232 = !DILocation(line: 142, column: 37, scope: !229)
!233 = !DILocation(line: 142, column: 30, scope: !229)
!234 = !DILocalVariable(name: "environment", scope: !229, file: !3, line: 143, type: !51)
!235 = !DILocation(line: 143, column: 20, scope: !229)
!236 = !DILocation(line: 143, column: 34, scope: !229)
!237 = !DILocation(line: 145, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !229, file: !3, line: 145, column: 17)
!239 = !DILocation(line: 145, column: 29, scope: !238)
!240 = !DILocation(line: 145, column: 17, scope: !229)
!241 = !DILocation(line: 148, column: 25, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !3, line: 146, column: 13)
!243 = !DILocation(line: 148, column: 30, scope: !242)
!244 = !DILocation(line: 148, column: 29, scope: !242)
!245 = !DILocation(line: 148, column: 39, scope: !242)
!246 = !DILocation(line: 148, column: 56, scope: !242)
!247 = !DILocation(line: 148, column: 55, scope: !242)
!248 = !DILocation(line: 148, column: 63, scope: !242)
!249 = !DILocation(line: 148, column: 17, scope: !242)
!250 = !DILocation(line: 149, column: 13, scope: !242)
!251 = !DILocation(line: 151, column: 5, scope: !230)
!252 = !DILocation(line: 152, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !218, file: !3, line: 152, column: 8)
!254 = !DILocation(line: 152, column: 8, scope: !218)
!255 = !DILocalVariable(name: "i", scope: !256, file: !3, line: 155, type: !10)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 154, column: 9)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 153, column: 5)
!258 = !DILocation(line: 155, column: 17, scope: !256)
!259 = !DILocalVariable(name: "n", scope: !256, file: !3, line: 155, type: !10)
!260 = !DILocation(line: 155, column: 20, scope: !256)
!261 = !DILocalVariable(name: "intVariable", scope: !256, file: !3, line: 155, type: !10)
!262 = !DILocation(line: 155, column: 23, scope: !256)
!263 = !DILocation(line: 156, column: 24, scope: !264)
!264 = distinct !DILexicalBlock(scope: !256, file: !3, line: 156, column: 17)
!265 = !DILocation(line: 156, column: 17, scope: !264)
!266 = !DILocation(line: 156, column: 40, scope: !264)
!267 = !DILocation(line: 156, column: 17, scope: !256)
!268 = !DILocation(line: 159, column: 21, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 159, column: 21)
!270 = distinct !DILexicalBlock(scope: !264, file: !3, line: 157, column: 13)
!271 = !DILocation(line: 159, column: 23, scope: !269)
!272 = !DILocation(line: 159, column: 21, scope: !270)
!273 = !DILocation(line: 161, column: 33, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !3, line: 160, column: 17)
!275 = !DILocation(line: 162, column: 28, scope: !276)
!276 = distinct !DILexicalBlock(scope: !274, file: !3, line: 162, column: 21)
!277 = !DILocation(line: 162, column: 26, scope: !276)
!278 = !DILocation(line: 162, column: 33, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !3, line: 162, column: 21)
!280 = !DILocation(line: 162, column: 37, scope: !279)
!281 = !DILocation(line: 162, column: 35, scope: !279)
!282 = !DILocation(line: 162, column: 21, scope: !276)
!283 = !DILocation(line: 165, column: 36, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !3, line: 163, column: 21)
!285 = !DILocation(line: 166, column: 21, scope: !284)
!286 = !DILocation(line: 162, column: 41, scope: !279)
!287 = !DILocation(line: 162, column: 21, scope: !279)
!288 = distinct !{!288, !282, !289, !132}
!289 = !DILocation(line: 166, column: 21, scope: !276)
!290 = !DILocation(line: 167, column: 34, scope: !274)
!291 = !DILocation(line: 167, column: 21, scope: !274)
!292 = !DILocation(line: 168, column: 17, scope: !274)
!293 = !DILocation(line: 169, column: 13, scope: !270)
!294 = !DILocation(line: 171, column: 5, scope: !257)
!295 = !DILocation(line: 172, column: 1, scope: !218)
!296 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 175, type: !58, scopeLine: 176, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!297 = !DILocalVariable(name: "data", scope: !296, file: !3, line: 177, type: !51)
!298 = !DILocation(line: 177, column: 12, scope: !296)
!299 = !DILocalVariable(name: "dataBuffer", scope: !296, file: !3, line: 178, type: !63)
!300 = !DILocation(line: 178, column: 10, scope: !296)
!301 = !DILocation(line: 179, column: 12, scope: !296)
!302 = !DILocation(line: 179, column: 10, scope: !296)
!303 = !DILocation(line: 180, column: 8, scope: !304)
!304 = distinct !DILexicalBlock(scope: !296, file: !3, line: 180, column: 8)
!305 = !DILocation(line: 180, column: 8, scope: !296)
!306 = !DILocation(line: 183, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !3, line: 181, column: 5)
!308 = !DILocation(line: 184, column: 5, scope: !307)
!309 = !DILocation(line: 188, column: 16, scope: !310)
!310 = distinct !DILexicalBlock(scope: !304, file: !3, line: 186, column: 5)
!311 = !DILocation(line: 188, column: 9, scope: !310)
!312 = !DILocation(line: 190, column: 8, scope: !313)
!313 = distinct !DILexicalBlock(scope: !296, file: !3, line: 190, column: 8)
!314 = !DILocation(line: 190, column: 8, scope: !296)
!315 = !DILocalVariable(name: "i", scope: !316, file: !3, line: 193, type: !10)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 192, column: 9)
!317 = distinct !DILexicalBlock(scope: !313, file: !3, line: 191, column: 5)
!318 = !DILocation(line: 193, column: 17, scope: !316)
!319 = !DILocalVariable(name: "n", scope: !316, file: !3, line: 193, type: !10)
!320 = !DILocation(line: 193, column: 20, scope: !316)
!321 = !DILocalVariable(name: "intVariable", scope: !316, file: !3, line: 193, type: !10)
!322 = !DILocation(line: 193, column: 23, scope: !316)
!323 = !DILocation(line: 194, column: 24, scope: !324)
!324 = distinct !DILexicalBlock(scope: !316, file: !3, line: 194, column: 17)
!325 = !DILocation(line: 194, column: 17, scope: !324)
!326 = !DILocation(line: 194, column: 40, scope: !324)
!327 = !DILocation(line: 194, column: 17, scope: !316)
!328 = !DILocation(line: 197, column: 29, scope: !329)
!329 = distinct !DILexicalBlock(scope: !324, file: !3, line: 195, column: 13)
!330 = !DILocation(line: 198, column: 24, scope: !331)
!331 = distinct !DILexicalBlock(scope: !329, file: !3, line: 198, column: 17)
!332 = !DILocation(line: 198, column: 22, scope: !331)
!333 = !DILocation(line: 198, column: 29, scope: !334)
!334 = distinct !DILexicalBlock(scope: !331, file: !3, line: 198, column: 17)
!335 = !DILocation(line: 198, column: 33, scope: !334)
!336 = !DILocation(line: 198, column: 31, scope: !334)
!337 = !DILocation(line: 198, column: 17, scope: !331)
!338 = !DILocation(line: 201, column: 32, scope: !339)
!339 = distinct !DILexicalBlock(scope: !334, file: !3, line: 199, column: 17)
!340 = !DILocation(line: 202, column: 17, scope: !339)
!341 = !DILocation(line: 198, column: 37, scope: !334)
!342 = !DILocation(line: 198, column: 17, scope: !334)
!343 = distinct !{!343, !337, !344, !132}
!344 = !DILocation(line: 202, column: 17, scope: !331)
!345 = !DILocation(line: 203, column: 30, scope: !329)
!346 = !DILocation(line: 203, column: 17, scope: !329)
!347 = !DILocation(line: 204, column: 13, scope: !329)
!348 = !DILocation(line: 206, column: 5, scope: !317)
!349 = !DILocation(line: 207, column: 1, scope: !296)
!350 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 210, type: !58, scopeLine: 211, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!351 = !DILocalVariable(name: "data", scope: !350, file: !3, line: 212, type: !51)
!352 = !DILocation(line: 212, column: 12, scope: !350)
!353 = !DILocalVariable(name: "dataBuffer", scope: !350, file: !3, line: 213, type: !63)
!354 = !DILocation(line: 213, column: 10, scope: !350)
!355 = !DILocation(line: 214, column: 12, scope: !350)
!356 = !DILocation(line: 214, column: 10, scope: !350)
!357 = !DILocation(line: 215, column: 8, scope: !358)
!358 = distinct !DILexicalBlock(scope: !350, file: !3, line: 215, column: 8)
!359 = !DILocation(line: 215, column: 8, scope: !350)
!360 = !DILocation(line: 218, column: 16, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !3, line: 216, column: 5)
!362 = !DILocation(line: 218, column: 9, scope: !361)
!363 = !DILocation(line: 219, column: 5, scope: !361)
!364 = !DILocation(line: 220, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !350, file: !3, line: 220, column: 8)
!366 = !DILocation(line: 220, column: 8, scope: !350)
!367 = !DILocalVariable(name: "i", scope: !368, file: !3, line: 223, type: !10)
!368 = distinct !DILexicalBlock(scope: !369, file: !3, line: 222, column: 9)
!369 = distinct !DILexicalBlock(scope: !365, file: !3, line: 221, column: 5)
!370 = !DILocation(line: 223, column: 17, scope: !368)
!371 = !DILocalVariable(name: "n", scope: !368, file: !3, line: 223, type: !10)
!372 = !DILocation(line: 223, column: 20, scope: !368)
!373 = !DILocalVariable(name: "intVariable", scope: !368, file: !3, line: 223, type: !10)
!374 = !DILocation(line: 223, column: 23, scope: !368)
!375 = !DILocation(line: 224, column: 24, scope: !376)
!376 = distinct !DILexicalBlock(scope: !368, file: !3, line: 224, column: 17)
!377 = !DILocation(line: 224, column: 17, scope: !376)
!378 = !DILocation(line: 224, column: 40, scope: !376)
!379 = !DILocation(line: 224, column: 17, scope: !368)
!380 = !DILocation(line: 227, column: 29, scope: !381)
!381 = distinct !DILexicalBlock(scope: !376, file: !3, line: 225, column: 13)
!382 = !DILocation(line: 228, column: 24, scope: !383)
!383 = distinct !DILexicalBlock(scope: !381, file: !3, line: 228, column: 17)
!384 = !DILocation(line: 228, column: 22, scope: !383)
!385 = !DILocation(line: 228, column: 29, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !3, line: 228, column: 17)
!387 = !DILocation(line: 228, column: 33, scope: !386)
!388 = !DILocation(line: 228, column: 31, scope: !386)
!389 = !DILocation(line: 228, column: 17, scope: !383)
!390 = !DILocation(line: 231, column: 32, scope: !391)
!391 = distinct !DILexicalBlock(scope: !386, file: !3, line: 229, column: 17)
!392 = !DILocation(line: 232, column: 17, scope: !391)
!393 = !DILocation(line: 228, column: 37, scope: !386)
!394 = !DILocation(line: 228, column: 17, scope: !386)
!395 = distinct !{!395, !389, !396, !132}
!396 = !DILocation(line: 232, column: 17, scope: !383)
!397 = !DILocation(line: 233, column: 30, scope: !381)
!398 = !DILocation(line: 233, column: 17, scope: !381)
!399 = !DILocation(line: 234, column: 13, scope: !381)
!400 = !DILocation(line: 236, column: 5, scope: !369)
!401 = !DILocation(line: 237, column: 1, scope: !350)
!402 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_05_good", scope: !3, file: !3, line: 239, type: !58, scopeLine: 240, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!403 = !DILocation(line: 241, column: 5, scope: !402)
!404 = !DILocation(line: 242, column: 5, scope: !402)
!405 = !DILocation(line: 243, column: 5, scope: !402)
!406 = !DILocation(line: 244, column: 5, scope: !402)
!407 = !DILocation(line: 245, column: 1, scope: !402)
!408 = distinct !DISubprogram(name: "printLine", scope: !14, file: !14, line: 11, type: !409, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !51}
!411 = !DILocalVariable(name: "line", arg: 1, scope: !408, file: !14, line: 11, type: !51)
!412 = !DILocation(line: 11, column: 25, scope: !408)
!413 = !DILocation(line: 13, column: 1, scope: !408)
!414 = !DILocation(line: 14, column: 8, scope: !415)
!415 = distinct !DILexicalBlock(scope: !408, file: !14, line: 14, column: 8)
!416 = !DILocation(line: 14, column: 13, scope: !415)
!417 = !DILocation(line: 14, column: 8, scope: !408)
!418 = !DILocation(line: 16, column: 24, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !14, line: 15, column: 5)
!420 = !DILocation(line: 16, column: 9, scope: !419)
!421 = !DILocation(line: 17, column: 5, scope: !419)
!422 = !DILocation(line: 18, column: 5, scope: !408)
!423 = !DILocation(line: 19, column: 1, scope: !408)
!424 = distinct !DISubprogram(name: "printSinkLine", scope: !14, file: !14, line: 20, type: !409, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!425 = !DILocalVariable(name: "line", arg: 1, scope: !424, file: !14, line: 20, type: !51)
!426 = !DILocation(line: 20, column: 29, scope: !424)
!427 = !DILocation(line: 22, column: 8, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !14, line: 22, column: 8)
!429 = !DILocation(line: 22, column: 13, scope: !428)
!430 = !DILocation(line: 22, column: 8, scope: !424)
!431 = !DILocation(line: 24, column: 24, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !14, line: 23, column: 5)
!433 = !DILocation(line: 24, column: 9, scope: !432)
!434 = !DILocation(line: 25, column: 5, scope: !432)
!435 = !DILocation(line: 26, column: 1, scope: !424)
!436 = distinct !DISubprogram(name: "printWLine", scope: !14, file: !14, line: 27, type: !437, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !10)
!441 = !DILocalVariable(name: "line", arg: 1, scope: !436, file: !14, line: 27, type: !439)
!442 = !DILocation(line: 27, column: 29, scope: !436)
!443 = !DILocation(line: 29, column: 8, scope: !444)
!444 = distinct !DILexicalBlock(scope: !436, file: !14, line: 29, column: 8)
!445 = !DILocation(line: 29, column: 13, scope: !444)
!446 = !DILocation(line: 29, column: 8, scope: !436)
!447 = !DILocation(line: 31, column: 27, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !14, line: 30, column: 5)
!449 = !DILocation(line: 31, column: 9, scope: !448)
!450 = !DILocation(line: 32, column: 5, scope: !448)
!451 = !DILocation(line: 33, column: 1, scope: !436)
!452 = distinct !DISubprogram(name: "printIntLine", scope: !14, file: !14, line: 35, type: !453, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !10}
!455 = !DILocalVariable(name: "intNumber", arg: 1, scope: !452, file: !14, line: 35, type: !10)
!456 = !DILocation(line: 35, column: 24, scope: !452)
!457 = !DILocation(line: 37, column: 20, scope: !452)
!458 = !DILocation(line: 37, column: 5, scope: !452)
!459 = !DILocation(line: 38, column: 1, scope: !452)
!460 = distinct !DISubprogram(name: "printShortLine", scope: !14, file: !14, line: 40, type: !461, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !463}
!463 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!464 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !460, file: !14, line: 40, type: !463)
!465 = !DILocation(line: 40, column: 28, scope: !460)
!466 = !DILocation(line: 42, column: 21, scope: !460)
!467 = !DILocation(line: 42, column: 5, scope: !460)
!468 = !DILocation(line: 43, column: 1, scope: !460)
!469 = distinct !DISubprogram(name: "printFloatLine", scope: !14, file: !14, line: 45, type: !470, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !472}
!472 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!473 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !469, file: !14, line: 45, type: !472)
!474 = !DILocation(line: 45, column: 28, scope: !469)
!475 = !DILocation(line: 47, column: 20, scope: !469)
!476 = !DILocation(line: 47, column: 5, scope: !469)
!477 = !DILocation(line: 48, column: 1, scope: !469)
!478 = distinct !DISubprogram(name: "printLongLine", scope: !14, file: !14, line: 50, type: !479, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !481}
!481 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!482 = !DILocalVariable(name: "longNumber", arg: 1, scope: !478, file: !14, line: 50, type: !481)
!483 = !DILocation(line: 50, column: 26, scope: !478)
!484 = !DILocation(line: 52, column: 21, scope: !478)
!485 = !DILocation(line: 52, column: 5, scope: !478)
!486 = !DILocation(line: 53, column: 1, scope: !478)
!487 = distinct !DISubprogram(name: "printLongLongLine", scope: !14, file: !14, line: 55, type: !488, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !490}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !491, line: 27, baseType: !492)
!491 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !493, line: 44, baseType: !481)
!493 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!494 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !487, file: !14, line: 55, type: !490)
!495 = !DILocation(line: 55, column: 33, scope: !487)
!496 = !DILocation(line: 57, column: 29, scope: !487)
!497 = !DILocation(line: 57, column: 5, scope: !487)
!498 = !DILocation(line: 58, column: 1, scope: !487)
!499 = distinct !DISubprogram(name: "printSizeTLine", scope: !14, file: !14, line: 60, type: !500, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !75}
!502 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !499, file: !14, line: 60, type: !75)
!503 = !DILocation(line: 60, column: 29, scope: !499)
!504 = !DILocation(line: 62, column: 21, scope: !499)
!505 = !DILocation(line: 62, column: 5, scope: !499)
!506 = !DILocation(line: 63, column: 1, scope: !499)
!507 = distinct !DISubprogram(name: "printHexCharLine", scope: !14, file: !14, line: 65, type: !508, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !52}
!510 = !DILocalVariable(name: "charHex", arg: 1, scope: !507, file: !14, line: 65, type: !52)
!511 = !DILocation(line: 65, column: 29, scope: !507)
!512 = !DILocation(line: 67, column: 22, scope: !507)
!513 = !DILocation(line: 67, column: 5, scope: !507)
!514 = !DILocation(line: 68, column: 1, scope: !507)
!515 = distinct !DISubprogram(name: "printWcharLine", scope: !14, file: !14, line: 70, type: !516, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !440}
!518 = !DILocalVariable(name: "wideChar", arg: 1, scope: !515, file: !14, line: 70, type: !440)
!519 = !DILocation(line: 70, column: 29, scope: !515)
!520 = !DILocalVariable(name: "s", scope: !515, file: !14, line: 74, type: !521)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 64, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 2)
!524 = !DILocation(line: 74, column: 13, scope: !515)
!525 = !DILocation(line: 75, column: 16, scope: !515)
!526 = !DILocation(line: 75, column: 9, scope: !515)
!527 = !DILocation(line: 75, column: 14, scope: !515)
!528 = !DILocation(line: 76, column: 9, scope: !515)
!529 = !DILocation(line: 76, column: 14, scope: !515)
!530 = !DILocation(line: 77, column: 21, scope: !515)
!531 = !DILocation(line: 77, column: 5, scope: !515)
!532 = !DILocation(line: 78, column: 1, scope: !515)
!533 = distinct !DISubprogram(name: "printUnsignedLine", scope: !14, file: !14, line: 80, type: !534, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !18}
!536 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !533, file: !14, line: 80, type: !18)
!537 = !DILocation(line: 80, column: 33, scope: !533)
!538 = !DILocation(line: 82, column: 20, scope: !533)
!539 = !DILocation(line: 82, column: 5, scope: !533)
!540 = !DILocation(line: 83, column: 1, scope: !533)
!541 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !14, file: !14, line: 85, type: !542, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !34}
!544 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !541, file: !14, line: 85, type: !34)
!545 = !DILocation(line: 85, column: 45, scope: !541)
!546 = !DILocation(line: 87, column: 22, scope: !541)
!547 = !DILocation(line: 87, column: 5, scope: !541)
!548 = !DILocation(line: 88, column: 1, scope: !541)
!549 = distinct !DISubprogram(name: "printDoubleLine", scope: !14, file: !14, line: 90, type: !550, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552}
!552 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!553 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !549, file: !14, line: 90, type: !552)
!554 = !DILocation(line: 90, column: 29, scope: !549)
!555 = !DILocation(line: 92, column: 20, scope: !549)
!556 = !DILocation(line: 92, column: 5, scope: !549)
!557 = !DILocation(line: 93, column: 1, scope: !549)
!558 = distinct !DISubprogram(name: "printStructLine", scope: !14, file: !14, line: 95, type: !559, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !561}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !563, line: 100, baseType: !564)
!563 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_030/source_code")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !563, line: 96, size: 64, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !564, file: !563, line: 98, baseType: !10, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !564, file: !563, line: 99, baseType: !10, size: 32, offset: 32)
!568 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !558, file: !14, line: 95, type: !561)
!569 = !DILocation(line: 95, column: 40, scope: !558)
!570 = !DILocation(line: 97, column: 26, scope: !558)
!571 = !DILocation(line: 97, column: 47, scope: !558)
!572 = !DILocation(line: 97, column: 55, scope: !558)
!573 = !DILocation(line: 97, column: 76, scope: !558)
!574 = !DILocation(line: 97, column: 5, scope: !558)
!575 = !DILocation(line: 98, column: 1, scope: !558)
!576 = distinct !DISubprogram(name: "printBytesLine", scope: !14, file: !14, line: 100, type: !577, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !579, !75}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!580 = !DILocalVariable(name: "bytes", arg: 1, scope: !576, file: !14, line: 100, type: !579)
!581 = !DILocation(line: 100, column: 38, scope: !576)
!582 = !DILocalVariable(name: "numBytes", arg: 2, scope: !576, file: !14, line: 100, type: !75)
!583 = !DILocation(line: 100, column: 52, scope: !576)
!584 = !DILocalVariable(name: "i", scope: !576, file: !14, line: 102, type: !75)
!585 = !DILocation(line: 102, column: 12, scope: !576)
!586 = !DILocation(line: 103, column: 12, scope: !587)
!587 = distinct !DILexicalBlock(scope: !576, file: !14, line: 103, column: 5)
!588 = !DILocation(line: 103, column: 10, scope: !587)
!589 = !DILocation(line: 103, column: 17, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !14, line: 103, column: 5)
!591 = !DILocation(line: 103, column: 21, scope: !590)
!592 = !DILocation(line: 103, column: 19, scope: !590)
!593 = !DILocation(line: 103, column: 5, scope: !587)
!594 = !DILocation(line: 105, column: 24, scope: !595)
!595 = distinct !DILexicalBlock(scope: !590, file: !14, line: 104, column: 5)
!596 = !DILocation(line: 105, column: 30, scope: !595)
!597 = !DILocation(line: 105, column: 9, scope: !595)
!598 = !DILocation(line: 106, column: 5, scope: !595)
!599 = !DILocation(line: 103, column: 31, scope: !590)
!600 = !DILocation(line: 103, column: 5, scope: !590)
!601 = distinct !{!601, !593, !602, !132}
!602 = !DILocation(line: 106, column: 5, scope: !587)
!603 = !DILocation(line: 107, column: 5, scope: !576)
!604 = !DILocation(line: 108, column: 1, scope: !576)
!605 = distinct !DISubprogram(name: "decodeHexChars", scope: !14, file: !14, line: 113, type: !606, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!606 = !DISubroutineType(types: !607)
!607 = !{!75, !579, !75, !51}
!608 = !DILocalVariable(name: "bytes", arg: 1, scope: !605, file: !14, line: 113, type: !579)
!609 = !DILocation(line: 113, column: 39, scope: !605)
!610 = !DILocalVariable(name: "numBytes", arg: 2, scope: !605, file: !14, line: 113, type: !75)
!611 = !DILocation(line: 113, column: 53, scope: !605)
!612 = !DILocalVariable(name: "hex", arg: 3, scope: !605, file: !14, line: 113, type: !51)
!613 = !DILocation(line: 113, column: 71, scope: !605)
!614 = !DILocalVariable(name: "numWritten", scope: !605, file: !14, line: 115, type: !75)
!615 = !DILocation(line: 115, column: 12, scope: !605)
!616 = !DILocation(line: 121, column: 5, scope: !605)
!617 = !DILocation(line: 121, column: 12, scope: !605)
!618 = !DILocation(line: 121, column: 25, scope: !605)
!619 = !DILocation(line: 121, column: 23, scope: !605)
!620 = !DILocation(line: 121, column: 34, scope: !605)
!621 = !DILocation(line: 121, column: 37, scope: !605)
!622 = !DILocation(line: 121, column: 67, scope: !605)
!623 = !DILocation(line: 121, column: 70, scope: !605)
!624 = !DILocation(line: 0, scope: !605)
!625 = !DILocalVariable(name: "byte", scope: !626, file: !14, line: 123, type: !10)
!626 = distinct !DILexicalBlock(scope: !605, file: !14, line: 122, column: 5)
!627 = !DILocation(line: 123, column: 13, scope: !626)
!628 = !DILocation(line: 124, column: 17, scope: !626)
!629 = !DILocation(line: 124, column: 25, scope: !626)
!630 = !DILocation(line: 124, column: 23, scope: !626)
!631 = !DILocation(line: 124, column: 9, scope: !626)
!632 = !DILocation(line: 125, column: 45, scope: !626)
!633 = !DILocation(line: 125, column: 29, scope: !626)
!634 = !DILocation(line: 125, column: 9, scope: !626)
!635 = !DILocation(line: 125, column: 15, scope: !626)
!636 = !DILocation(line: 125, column: 27, scope: !626)
!637 = !DILocation(line: 126, column: 9, scope: !626)
!638 = distinct !{!638, !616, !639, !132}
!639 = !DILocation(line: 127, column: 5, scope: !605)
!640 = !DILocation(line: 129, column: 12, scope: !605)
!641 = !DILocation(line: 129, column: 5, scope: !605)
!642 = distinct !DISubprogram(name: "decodeHexWChars", scope: !14, file: !14, line: 135, type: !643, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!643 = !DISubroutineType(types: !644)
!644 = !{!75, !579, !75, !439}
!645 = !DILocalVariable(name: "bytes", arg: 1, scope: !642, file: !14, line: 135, type: !579)
!646 = !DILocation(line: 135, column: 41, scope: !642)
!647 = !DILocalVariable(name: "numBytes", arg: 2, scope: !642, file: !14, line: 135, type: !75)
!648 = !DILocation(line: 135, column: 55, scope: !642)
!649 = !DILocalVariable(name: "hex", arg: 3, scope: !642, file: !14, line: 135, type: !439)
!650 = !DILocation(line: 135, column: 76, scope: !642)
!651 = !DILocalVariable(name: "numWritten", scope: !642, file: !14, line: 137, type: !75)
!652 = !DILocation(line: 137, column: 12, scope: !642)
!653 = !DILocation(line: 143, column: 5, scope: !642)
!654 = !DILocation(line: 143, column: 12, scope: !642)
!655 = !DILocation(line: 143, column: 25, scope: !642)
!656 = !DILocation(line: 143, column: 23, scope: !642)
!657 = !DILocation(line: 143, column: 34, scope: !642)
!658 = !DILocation(line: 143, column: 47, scope: !642)
!659 = !DILocation(line: 143, column: 55, scope: !642)
!660 = !DILocation(line: 143, column: 53, scope: !642)
!661 = !DILocation(line: 143, column: 37, scope: !642)
!662 = !DILocation(line: 143, column: 68, scope: !642)
!663 = !DILocation(line: 143, column: 81, scope: !642)
!664 = !DILocation(line: 143, column: 89, scope: !642)
!665 = !DILocation(line: 143, column: 87, scope: !642)
!666 = !DILocation(line: 143, column: 100, scope: !642)
!667 = !DILocation(line: 143, column: 71, scope: !642)
!668 = !DILocation(line: 0, scope: !642)
!669 = !DILocalVariable(name: "byte", scope: !670, file: !14, line: 145, type: !10)
!670 = distinct !DILexicalBlock(scope: !642, file: !14, line: 144, column: 5)
!671 = !DILocation(line: 145, column: 13, scope: !670)
!672 = !DILocation(line: 146, column: 18, scope: !670)
!673 = !DILocation(line: 146, column: 26, scope: !670)
!674 = !DILocation(line: 146, column: 24, scope: !670)
!675 = !DILocation(line: 146, column: 9, scope: !670)
!676 = !DILocation(line: 147, column: 45, scope: !670)
!677 = !DILocation(line: 147, column: 29, scope: !670)
!678 = !DILocation(line: 147, column: 9, scope: !670)
!679 = !DILocation(line: 147, column: 15, scope: !670)
!680 = !DILocation(line: 147, column: 27, scope: !670)
!681 = !DILocation(line: 148, column: 9, scope: !670)
!682 = distinct !{!682, !653, !683, !132}
!683 = !DILocation(line: 149, column: 5, scope: !642)
!684 = !DILocation(line: 151, column: 12, scope: !642)
!685 = !DILocation(line: 151, column: 5, scope: !642)
!686 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !14, file: !14, line: 156, type: !687, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!687 = !DISubroutineType(types: !688)
!688 = !{!10}
!689 = !DILocation(line: 158, column: 5, scope: !686)
!690 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !14, file: !14, line: 161, type: !687, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!691 = !DILocation(line: 163, column: 5, scope: !690)
!692 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !14, file: !14, line: 166, type: !687, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!693 = !DILocation(line: 168, column: 13, scope: !692)
!694 = !DILocation(line: 168, column: 20, scope: !692)
!695 = !DILocation(line: 168, column: 5, scope: !692)
!696 = distinct !DISubprogram(name: "good1", scope: !14, file: !14, line: 187, type: !58, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!697 = !DILocation(line: 187, column: 16, scope: !696)
!698 = distinct !DISubprogram(name: "good2", scope: !14, file: !14, line: 188, type: !58, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!699 = !DILocation(line: 188, column: 16, scope: !698)
!700 = distinct !DISubprogram(name: "good3", scope: !14, file: !14, line: 189, type: !58, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!701 = !DILocation(line: 189, column: 16, scope: !700)
!702 = distinct !DISubprogram(name: "good4", scope: !14, file: !14, line: 190, type: !58, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!703 = !DILocation(line: 190, column: 16, scope: !702)
!704 = distinct !DISubprogram(name: "good5", scope: !14, file: !14, line: 191, type: !58, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!705 = !DILocation(line: 191, column: 16, scope: !704)
!706 = distinct !DISubprogram(name: "good6", scope: !14, file: !14, line: 192, type: !58, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!707 = !DILocation(line: 192, column: 16, scope: !706)
!708 = distinct !DISubprogram(name: "good7", scope: !14, file: !14, line: 193, type: !58, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!709 = !DILocation(line: 193, column: 16, scope: !708)
!710 = distinct !DISubprogram(name: "good8", scope: !14, file: !14, line: 194, type: !58, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!711 = !DILocation(line: 194, column: 16, scope: !710)
!712 = distinct !DISubprogram(name: "good9", scope: !14, file: !14, line: 195, type: !58, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!713 = !DILocation(line: 195, column: 16, scope: !712)
!714 = distinct !DISubprogram(name: "bad1", scope: !14, file: !14, line: 198, type: !58, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!715 = !DILocation(line: 198, column: 15, scope: !714)
!716 = distinct !DISubprogram(name: "bad2", scope: !14, file: !14, line: 199, type: !58, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!717 = !DILocation(line: 199, column: 15, scope: !716)
!718 = distinct !DISubprogram(name: "bad3", scope: !14, file: !14, line: 200, type: !58, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!719 = !DILocation(line: 200, column: 15, scope: !718)
!720 = distinct !DISubprogram(name: "bad4", scope: !14, file: !14, line: 201, type: !58, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!721 = !DILocation(line: 201, column: 15, scope: !720)
!722 = distinct !DISubprogram(name: "bad5", scope: !14, file: !14, line: 202, type: !58, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!723 = !DILocation(line: 202, column: 15, scope: !722)
!724 = distinct !DISubprogram(name: "bad6", scope: !14, file: !14, line: 203, type: !58, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!725 = !DILocation(line: 203, column: 15, scope: !724)
!726 = distinct !DISubprogram(name: "bad7", scope: !14, file: !14, line: 204, type: !58, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!727 = !DILocation(line: 204, column: 15, scope: !726)
!728 = distinct !DISubprogram(name: "bad8", scope: !14, file: !14, line: 205, type: !58, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!729 = !DILocation(line: 205, column: 15, scope: !728)
!730 = distinct !DISubprogram(name: "bad9", scope: !14, file: !14, line: 206, type: !58, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!731 = !DILocation(line: 206, column: 15, scope: !730)
