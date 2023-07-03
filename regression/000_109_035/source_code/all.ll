; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.7 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.9 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.10 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7.13 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_10_bad() #0 !dbg !52 {
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
  %1 = load i32, i32* @globalTrue, align 4, !dbg !64
  %tobool = icmp ne i32 %1, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.end5, !dbg !66

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !73
  %2 = load i8*, i8** %data, align 8, !dbg !74
  %call = call i64 @strlen(i8* %2) #7, !dbg !75
  store i64 %call, i64* %dataLen, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !76, metadata !DIExpression()), !dbg !77
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !78
  store i8* %call1, i8** %environment, align 8, !dbg !77
  %3 = load i8*, i8** %environment, align 8, !dbg !79
  %cmp = icmp ne i8* %3, null, !dbg !81
  br i1 %cmp, label %if.then2, label %if.end, !dbg !82

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !83
  %5 = load i64, i64* %dataLen, align 8, !dbg !85
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !86
  %6 = load i8*, i8** %environment, align 8, !dbg !87
  %7 = load i64, i64* %dataLen, align 8, !dbg !88
  %sub = sub i64 100, %7, !dbg !89
  %sub3 = sub i64 %sub, 1, !dbg !90
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #8, !dbg !91
  br label %if.end, !dbg !92

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !93

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @globalTrue, align 4, !dbg !94
  %tobool6 = icmp ne i32 %8, 0, !dbg !94
  br i1 %tobool6, label %if.then7, label %if.end14, !dbg !96

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !97, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %n, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !103, metadata !DIExpression()), !dbg !104
  %9 = load i8*, i8** %data, align 8, !dbg !105
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !107
  %cmp9 = icmp eq i32 %call8, 1, !dbg !108
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !109

if.then10:                                        ; preds = %if.then7
  store i32 0, i32* %intVariable, align 4, !dbg !110
  store i32 0, i32* %i, align 4, !dbg !112
  br label %for.cond, !dbg !114

for.cond:                                         ; preds = %for.inc, %if.then10
  %10 = load i32, i32* %i, align 4, !dbg !115
  %11 = load i32, i32* %n, align 4, !dbg !117
  %cmp11 = icmp slt i32 %10, %11, !dbg !118
  br i1 %cmp11, label %for.body, label %for.end, !dbg !119

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !120
  %inc = add nsw i32 %12, 1, !dbg !120
  store i32 %inc, i32* %intVariable, align 4, !dbg !120
  br label %for.inc, !dbg !122

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !123
  %inc12 = add nsw i32 %13, 1, !dbg !123
  store i32 %inc12, i32* %i, align 4, !dbg !123
  br label %for.cond, !dbg !124, !llvm.loop !125

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !128
  call void @printIntLine(i32 %14), !dbg !129
  br label %if.end13, !dbg !130

if.end13:                                         ; preds = %for.end, %if.then7
  br label %if.end14, !dbg !131

if.end14:                                         ; preds = %if.end13, %if.end5
  ret void, !dbg !132
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
define dso_local void @goodB2G1() #0 !dbg !133 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !137
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !137
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !138
  store i8* %arraydecay, i8** %data, align 8, !dbg !139
  %1 = load i32, i32* @globalTrue, align 4, !dbg !140
  %tobool = icmp ne i32 %1, 0, !dbg !140
  br i1 %tobool, label %if.then, label %if.end5, !dbg !142

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !143, metadata !DIExpression()), !dbg !146
  %2 = load i8*, i8** %data, align 8, !dbg !147
  %call = call i64 @strlen(i8* %2) #7, !dbg !148
  store i64 %call, i64* %dataLen, align 8, !dbg !146
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !149, metadata !DIExpression()), !dbg !150
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !151
  store i8* %call1, i8** %environment, align 8, !dbg !150
  %3 = load i8*, i8** %environment, align 8, !dbg !152
  %cmp = icmp ne i8* %3, null, !dbg !154
  br i1 %cmp, label %if.then2, label %if.end, !dbg !155

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !156
  %5 = load i64, i64* %dataLen, align 8, !dbg !158
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !159
  %6 = load i8*, i8** %environment, align 8, !dbg !160
  %7 = load i64, i64* %dataLen, align 8, !dbg !161
  %sub = sub i64 100, %7, !dbg !162
  %sub3 = sub i64 %sub, 1, !dbg !163
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #8, !dbg !164
  br label %if.end, !dbg !165

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !166

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @globalFalse, align 4, !dbg !167
  %tobool6 = icmp ne i32 %8, 0, !dbg !167
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !169

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !170
  br label %if.end17, !dbg !172

if.else:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !173, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i32* %n, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !179, metadata !DIExpression()), !dbg !180
  %9 = load i8*, i8** %data, align 8, !dbg !181
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !183
  %cmp9 = icmp eq i32 %call8, 1, !dbg !184
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !185

if.then10:                                        ; preds = %if.else
  %10 = load i32, i32* %n, align 4, !dbg !186
  %cmp11 = icmp slt i32 %10, 10000, !dbg !189
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !190

if.then12:                                        ; preds = %if.then10
  store i32 0, i32* %intVariable, align 4, !dbg !191
  store i32 0, i32* %i, align 4, !dbg !193
  br label %for.cond, !dbg !195

for.cond:                                         ; preds = %for.inc, %if.then12
  %11 = load i32, i32* %i, align 4, !dbg !196
  %12 = load i32, i32* %n, align 4, !dbg !198
  %cmp13 = icmp slt i32 %11, %12, !dbg !199
  br i1 %cmp13, label %for.body, label %for.end, !dbg !200

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !201
  %inc = add nsw i32 %13, 1, !dbg !201
  store i32 %inc, i32* %intVariable, align 4, !dbg !201
  br label %for.inc, !dbg !203

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !204
  %inc14 = add nsw i32 %14, 1, !dbg !204
  store i32 %inc14, i32* %i, align 4, !dbg !204
  br label %for.cond, !dbg !205, !llvm.loop !206

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !208
  call void @printIntLine(i32 %15), !dbg !209
  br label %if.end15, !dbg !210

if.end15:                                         ; preds = %for.end, %if.then10
  br label %if.end16, !dbg !211

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  ret void, !dbg !212
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !213 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !216, metadata !DIExpression()), !dbg !217
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !217
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !217
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !218
  store i8* %arraydecay, i8** %data, align 8, !dbg !219
  %1 = load i32, i32* @globalTrue, align 4, !dbg !220
  %tobool = icmp ne i32 %1, 0, !dbg !220
  br i1 %tobool, label %if.then, label %if.end5, !dbg !222

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !223, metadata !DIExpression()), !dbg !226
  %2 = load i8*, i8** %data, align 8, !dbg !227
  %call = call i64 @strlen(i8* %2) #7, !dbg !228
  store i64 %call, i64* %dataLen, align 8, !dbg !226
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !229, metadata !DIExpression()), !dbg !230
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !231
  store i8* %call1, i8** %environment, align 8, !dbg !230
  %3 = load i8*, i8** %environment, align 8, !dbg !232
  %cmp = icmp ne i8* %3, null, !dbg !234
  br i1 %cmp, label %if.then2, label %if.end, !dbg !235

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !236
  %5 = load i64, i64* %dataLen, align 8, !dbg !238
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !239
  %6 = load i8*, i8** %environment, align 8, !dbg !240
  %7 = load i64, i64* %dataLen, align 8, !dbg !241
  %sub = sub i64 100, %7, !dbg !242
  %sub3 = sub i64 %sub, 1, !dbg !243
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #8, !dbg !244
  br label %if.end, !dbg !245

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !246

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @globalTrue, align 4, !dbg !247
  %tobool6 = icmp ne i32 %8, 0, !dbg !247
  br i1 %tobool6, label %if.then7, label %if.end17, !dbg !249

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %i, metadata !250, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %n, metadata !254, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !256, metadata !DIExpression()), !dbg !257
  %9 = load i8*, i8** %data, align 8, !dbg !258
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !260
  %cmp9 = icmp eq i32 %call8, 1, !dbg !261
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !262

if.then10:                                        ; preds = %if.then7
  %10 = load i32, i32* %n, align 4, !dbg !263
  %cmp11 = icmp slt i32 %10, 10000, !dbg !266
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !267

if.then12:                                        ; preds = %if.then10
  store i32 0, i32* %intVariable, align 4, !dbg !268
  store i32 0, i32* %i, align 4, !dbg !270
  br label %for.cond, !dbg !272

for.cond:                                         ; preds = %for.inc, %if.then12
  %11 = load i32, i32* %i, align 4, !dbg !273
  %12 = load i32, i32* %n, align 4, !dbg !275
  %cmp13 = icmp slt i32 %11, %12, !dbg !276
  br i1 %cmp13, label %for.body, label %for.end, !dbg !277

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !278
  %inc = add nsw i32 %13, 1, !dbg !278
  store i32 %inc, i32* %intVariable, align 4, !dbg !278
  br label %for.inc, !dbg !280

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !281
  %inc14 = add nsw i32 %14, 1, !dbg !281
  store i32 %inc14, i32* %i, align 4, !dbg !281
  br label %for.cond, !dbg !282, !llvm.loop !283

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !285
  call void @printIntLine(i32 %15), !dbg !286
  br label %if.end15, !dbg !287

if.end15:                                         ; preds = %for.end, %if.then10
  br label %if.end16, !dbg !288

if.end16:                                         ; preds = %if.end15, %if.then7
  br label %if.end17, !dbg !289

if.end17:                                         ; preds = %if.end16, %if.end5
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !291 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !294, metadata !DIExpression()), !dbg !295
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !295
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !295
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !296
  store i8* %arraydecay, i8** %data, align 8, !dbg !297
  %1 = load i32, i32* @globalFalse, align 4, !dbg !298
  %tobool = icmp ne i32 %1, 0, !dbg !298
  br i1 %tobool, label %if.then, label %if.else, !dbg !300

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !301
  br label %if.end, !dbg !303

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !304
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !306
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalTrue, align 4, !dbg !307
  %tobool1 = icmp ne i32 %3, 0, !dbg !307
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !309

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !310, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.declare(metadata i32* %n, metadata !314, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !316, metadata !DIExpression()), !dbg !317
  %4 = load i8*, i8** %data, align 8, !dbg !318
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !320
  %cmp = icmp eq i32 %call3, 1, !dbg !321
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !322

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !323
  store i32 0, i32* %i, align 4, !dbg !325
  br label %for.cond, !dbg !327

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !328
  %6 = load i32, i32* %n, align 4, !dbg !330
  %cmp5 = icmp slt i32 %5, %6, !dbg !331
  br i1 %cmp5, label %for.body, label %for.end, !dbg !332

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !333
  %inc = add nsw i32 %7, 1, !dbg !333
  store i32 %inc, i32* %intVariable, align 4, !dbg !333
  br label %for.inc, !dbg !335

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !336
  %inc6 = add nsw i32 %8, 1, !dbg !336
  store i32 %inc6, i32* %i, align 4, !dbg !336
  br label %for.cond, !dbg !337, !llvm.loop !338

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !340
  call void @printIntLine(i32 %9), !dbg !341
  br label %if.end7, !dbg !342

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !343

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !344
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !345 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !346, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !349
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !349
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !350
  store i8* %arraydecay, i8** %data, align 8, !dbg !351
  %1 = load i32, i32* @globalTrue, align 4, !dbg !352
  %tobool = icmp ne i32 %1, 0, !dbg !352
  br i1 %tobool, label %if.then, label %if.end, !dbg !354

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !355
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !357
  br label %if.end, !dbg !358

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalTrue, align 4, !dbg !359
  %tobool1 = icmp ne i32 %3, 0, !dbg !359
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !361

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !362, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.declare(metadata i32* %n, metadata !366, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !368, metadata !DIExpression()), !dbg !369
  %4 = load i8*, i8** %data, align 8, !dbg !370
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !372
  %cmp = icmp eq i32 %call3, 1, !dbg !373
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !374

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !375
  store i32 0, i32* %i, align 4, !dbg !377
  br label %for.cond, !dbg !379

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !380
  %6 = load i32, i32* %n, align 4, !dbg !382
  %cmp5 = icmp slt i32 %5, %6, !dbg !383
  br i1 %cmp5, label %for.body, label %for.end, !dbg !384

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !385
  %inc = add nsw i32 %7, 1, !dbg !385
  store i32 %inc, i32* %intVariable, align 4, !dbg !385
  br label %for.inc, !dbg !387

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !388
  %inc6 = add nsw i32 %8, 1, !dbg !388
  store i32 %inc6, i32* %i, align 4, !dbg !388
  br label %for.cond, !dbg !389, !llvm.loop !390

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !392
  call void @printIntLine(i32 %9), !dbg !393
  br label %if.end7, !dbg !394

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !395

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_10_good() #0 !dbg !397 {
entry:
  call void @goodB2G1(), !dbg !398
  call void @goodB2G2(), !dbg !399
  call void @goodG2B1(), !dbg !400
  call void @goodG2B2(), !dbg !401
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !403 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)), !dbg !408
  %0 = load i8*, i8** %line.addr, align 8, !dbg !409
  %cmp = icmp ne i8* %0, null, !dbg !411
  br i1 %cmp, label %if.then, label %if.end, !dbg !412

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !413
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !415
  br label %if.end, !dbg !416

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.9, i64 0, i64 0)), !dbg !417
  ret void, !dbg !418
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !419 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !420, metadata !DIExpression()), !dbg !421
  %0 = load i8*, i8** %line.addr, align 8, !dbg !422
  %cmp = icmp ne i8* %0, null, !dbg !424
  br i1 %cmp, label %if.then, label %if.end, !dbg !425

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !428
  br label %if.end, !dbg !429

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !431 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !436, metadata !DIExpression()), !dbg !437
  %0 = load i32*, i32** %line.addr, align 8, !dbg !438
  %cmp = icmp ne i32* %0, null, !dbg !440
  br i1 %cmp, label %if.then, label %if.end, !dbg !441

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !442
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !444
  br label %if.end, !dbg !445

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !446
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !447 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !452
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !455 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !461
  %conv = sext i16 %0 to i32, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !464 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !468, metadata !DIExpression()), !dbg !469
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !470
  %conv = fpext float %0 to double, !dbg !470
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !471
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !473 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !477, metadata !DIExpression()), !dbg !478
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !479
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.13, i64 0, i64 0), i64 %0), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !482 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !489, metadata !DIExpression()), !dbg !490
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !491
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.13, i64 0, i64 0), i64 %0), !dbg !492
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !494 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !499
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !500
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !502 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !505, metadata !DIExpression()), !dbg !506
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !507
  %conv = sext i8 %0 to i32, !dbg !507
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !508
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !510 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !515, metadata !DIExpression()), !dbg !519
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !520
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !521
  store i32 %0, i32* %arrayidx, align 4, !dbg !522
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !523
  store i32 0, i32* %arrayidx1, align 4, !dbg !524
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !525
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !526
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !528 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !531, metadata !DIExpression()), !dbg !532
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !533
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !534
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !536 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !539, metadata !DIExpression()), !dbg !540
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !541
  %conv = zext i8 %0 to i32, !dbg !541
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !542
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !544 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !550
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !551
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !553 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !563, metadata !DIExpression()), !dbg !564
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !565
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !566
  %1 = load i32, i32* %intOne, align 4, !dbg !566
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !567
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !568
  %3 = load i32, i32* %intTwo, align 4, !dbg !568
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !569
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !571 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !575, metadata !DIExpression()), !dbg !576
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !577, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.declare(metadata i64* %i, metadata !579, metadata !DIExpression()), !dbg !580
  store i64 0, i64* %i, align 8, !dbg !581
  br label %for.cond, !dbg !583

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !584
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !586
  %cmp = icmp ult i64 %0, %1, !dbg !587
  br i1 %cmp, label %for.body, label %for.end, !dbg !588

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !589
  %3 = load i64, i64* %i, align 8, !dbg !591
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !589
  %4 = load i8, i8* %arrayidx, align 1, !dbg !589
  %conv = zext i8 %4 to i32, !dbg !589
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !592
  br label %for.inc, !dbg !593

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !594
  %inc = add i64 %5, 1, !dbg !594
  store i64 %inc, i64* %i, align 8, !dbg !594
  br label %for.cond, !dbg !595, !llvm.loop !596

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !598
  ret void, !dbg !599
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !600 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !603, metadata !DIExpression()), !dbg !604
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !605, metadata !DIExpression()), !dbg !606
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !607, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !609, metadata !DIExpression()), !dbg !610
  store i64 0, i64* %numWritten, align 8, !dbg !610
  br label %while.cond, !dbg !611

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !612
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !613
  %cmp = icmp ult i64 %0, %1, !dbg !614
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !615

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !616
  %2 = load i16*, i16** %call, align 8, !dbg !616
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !616
  %4 = load i64, i64* %numWritten, align 8, !dbg !616
  %mul = mul i64 2, %4, !dbg !616
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !616
  %5 = load i8, i8* %arrayidx, align 1, !dbg !616
  %conv = sext i8 %5 to i32, !dbg !616
  %idxprom = sext i32 %conv to i64, !dbg !616
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !616
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !616
  %conv2 = zext i16 %6 to i32, !dbg !616
  %and = and i32 %conv2, 4096, !dbg !616
  %tobool = icmp ne i32 %and, 0, !dbg !616
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !617

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !618
  %7 = load i16*, i16** %call3, align 8, !dbg !618
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !618
  %9 = load i64, i64* %numWritten, align 8, !dbg !618
  %mul4 = mul i64 2, %9, !dbg !618
  %add = add i64 %mul4, 1, !dbg !618
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !618
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !618
  %conv6 = sext i8 %10 to i32, !dbg !618
  %idxprom7 = sext i32 %conv6 to i64, !dbg !618
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !618
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !618
  %conv9 = zext i16 %11 to i32, !dbg !618
  %and10 = and i32 %conv9, 4096, !dbg !618
  %tobool11 = icmp ne i32 %and10, 0, !dbg !617
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !619
  br i1 %12, label %while.body, label %while.end, !dbg !611

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !620, metadata !DIExpression()), !dbg !622
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !623
  %14 = load i64, i64* %numWritten, align 8, !dbg !624
  %mul12 = mul i64 2, %14, !dbg !625
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !623
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !626
  %15 = load i32, i32* %byte, align 4, !dbg !627
  %conv15 = trunc i32 %15 to i8, !dbg !628
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !629
  %17 = load i64, i64* %numWritten, align 8, !dbg !630
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !629
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !631
  %18 = load i64, i64* %numWritten, align 8, !dbg !632
  %inc = add i64 %18, 1, !dbg !632
  store i64 %inc, i64* %numWritten, align 8, !dbg !632
  br label %while.cond, !dbg !611, !llvm.loop !633

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !635
  ret i64 %19, !dbg !636
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !637 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !640, metadata !DIExpression()), !dbg !641
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !642, metadata !DIExpression()), !dbg !643
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !644, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !646, metadata !DIExpression()), !dbg !647
  store i64 0, i64* %numWritten, align 8, !dbg !647
  br label %while.cond, !dbg !648

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !649
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !650
  %cmp = icmp ult i64 %0, %1, !dbg !651
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !652

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !653
  %3 = load i64, i64* %numWritten, align 8, !dbg !654
  %mul = mul i64 2, %3, !dbg !655
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !653
  %4 = load i32, i32* %arrayidx, align 4, !dbg !653
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !656
  %tobool = icmp ne i32 %call, 0, !dbg !656
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !657

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !658
  %6 = load i64, i64* %numWritten, align 8, !dbg !659
  %mul1 = mul i64 2, %6, !dbg !660
  %add = add i64 %mul1, 1, !dbg !661
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !658
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !658
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !662
  %tobool4 = icmp ne i32 %call3, 0, !dbg !657
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !663
  br i1 %8, label %while.body, label %while.end, !dbg !648

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !664, metadata !DIExpression()), !dbg !666
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !667
  %10 = load i64, i64* %numWritten, align 8, !dbg !668
  %mul5 = mul i64 2, %10, !dbg !669
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !667
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !670
  %11 = load i32, i32* %byte, align 4, !dbg !671
  %conv = trunc i32 %11 to i8, !dbg !672
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !673
  %13 = load i64, i64* %numWritten, align 8, !dbg !674
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !673
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !675
  %14 = load i64, i64* %numWritten, align 8, !dbg !676
  %inc = add i64 %14, 1, !dbg !676
  store i64 %inc, i64* %numWritten, align 8, !dbg !676
  br label %while.cond, !dbg !648, !llvm.loop !677

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !679
  ret i64 %15, !dbg !680
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !681 {
entry:
  ret i32 1, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !685 {
entry:
  ret i32 0, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !687 {
entry:
  %call = call i32 @rand() #8, !dbg !688
  %rem = srem i32 %call, 2, !dbg !689
  ret i32 %rem, !dbg !690
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !691 {
entry:
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !693 {
entry:
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !695 {
entry:
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !697 {
entry:
  ret void, !dbg !698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !699 {
entry:
  ret void, !dbg !700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !701 {
entry:
  ret void, !dbg !702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !703 {
entry:
  ret void, !dbg !704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !705 {
entry:
  ret void, !dbg !706
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !707 {
entry:
  ret void, !dbg !708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !709 {
entry:
  ret void, !dbg !710
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !711 {
entry:
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !713 {
entry:
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !715 {
entry:
  ret void, !dbg !716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !717 {
entry:
  ret void, !dbg !718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !719 {
entry:
  ret void, !dbg !720
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !721 {
entry:
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !723 {
entry:
  ret void, !dbg !724
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !725 {
entry:
  ret void, !dbg !726
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_035/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_10.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_035/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_10_bad", scope: !45, file: !45, line: 37, type: !53, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocation(line: 42, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 42, column: 8)
!66 = !DILocation(line: 42, column: 8, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 46, type: !70)
!68 = distinct !DILexicalBlock(scope: !69, file: !45, line: 44, column: 9)
!69 = distinct !DILexicalBlock(scope: !65, file: !45, line: 43, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 46, column: 20, scope: !68)
!74 = !DILocation(line: 46, column: 37, scope: !68)
!75 = !DILocation(line: 46, column: 30, scope: !68)
!76 = !DILocalVariable(name: "environment", scope: !68, file: !45, line: 47, type: !42)
!77 = !DILocation(line: 47, column: 20, scope: !68)
!78 = !DILocation(line: 47, column: 34, scope: !68)
!79 = !DILocation(line: 49, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !68, file: !45, line: 49, column: 17)
!81 = !DILocation(line: 49, column: 29, scope: !80)
!82 = !DILocation(line: 49, column: 17, scope: !68)
!83 = !DILocation(line: 52, column: 25, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !45, line: 50, column: 13)
!85 = !DILocation(line: 52, column: 30, scope: !84)
!86 = !DILocation(line: 52, column: 29, scope: !84)
!87 = !DILocation(line: 52, column: 39, scope: !84)
!88 = !DILocation(line: 52, column: 56, scope: !84)
!89 = !DILocation(line: 52, column: 55, scope: !84)
!90 = !DILocation(line: 52, column: 63, scope: !84)
!91 = !DILocation(line: 52, column: 17, scope: !84)
!92 = !DILocation(line: 53, column: 13, scope: !84)
!93 = !DILocation(line: 55, column: 5, scope: !69)
!94 = !DILocation(line: 56, column: 8, scope: !95)
!95 = distinct !DILexicalBlock(scope: !52, file: !45, line: 56, column: 8)
!96 = !DILocation(line: 56, column: 8, scope: !52)
!97 = !DILocalVariable(name: "i", scope: !98, file: !45, line: 59, type: !23)
!98 = distinct !DILexicalBlock(scope: !99, file: !45, line: 58, column: 9)
!99 = distinct !DILexicalBlock(scope: !95, file: !45, line: 57, column: 5)
!100 = !DILocation(line: 59, column: 17, scope: !98)
!101 = !DILocalVariable(name: "n", scope: !98, file: !45, line: 59, type: !23)
!102 = !DILocation(line: 59, column: 20, scope: !98)
!103 = !DILocalVariable(name: "intVariable", scope: !98, file: !45, line: 59, type: !23)
!104 = !DILocation(line: 59, column: 23, scope: !98)
!105 = !DILocation(line: 60, column: 24, scope: !106)
!106 = distinct !DILexicalBlock(scope: !98, file: !45, line: 60, column: 17)
!107 = !DILocation(line: 60, column: 17, scope: !106)
!108 = !DILocation(line: 60, column: 40, scope: !106)
!109 = !DILocation(line: 60, column: 17, scope: !98)
!110 = !DILocation(line: 63, column: 29, scope: !111)
!111 = distinct !DILexicalBlock(scope: !106, file: !45, line: 61, column: 13)
!112 = !DILocation(line: 64, column: 24, scope: !113)
!113 = distinct !DILexicalBlock(scope: !111, file: !45, line: 64, column: 17)
!114 = !DILocation(line: 64, column: 22, scope: !113)
!115 = !DILocation(line: 64, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !45, line: 64, column: 17)
!117 = !DILocation(line: 64, column: 33, scope: !116)
!118 = !DILocation(line: 64, column: 31, scope: !116)
!119 = !DILocation(line: 64, column: 17, scope: !113)
!120 = !DILocation(line: 67, column: 32, scope: !121)
!121 = distinct !DILexicalBlock(scope: !116, file: !45, line: 65, column: 17)
!122 = !DILocation(line: 68, column: 17, scope: !121)
!123 = !DILocation(line: 64, column: 37, scope: !116)
!124 = !DILocation(line: 64, column: 17, scope: !116)
!125 = distinct !{!125, !119, !126, !127}
!126 = !DILocation(line: 68, column: 17, scope: !113)
!127 = !{!"llvm.loop.mustprogress"}
!128 = !DILocation(line: 69, column: 30, scope: !111)
!129 = !DILocation(line: 69, column: 17, scope: !111)
!130 = !DILocation(line: 70, column: 13, scope: !111)
!131 = !DILocation(line: 72, column: 5, scope: !99)
!132 = !DILocation(line: 73, column: 1, scope: !52)
!133 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 80, type: !53, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!134 = !DILocalVariable(name: "data", scope: !133, file: !45, line: 82, type: !42)
!135 = !DILocation(line: 82, column: 12, scope: !133)
!136 = !DILocalVariable(name: "dataBuffer", scope: !133, file: !45, line: 83, type: !58)
!137 = !DILocation(line: 83, column: 10, scope: !133)
!138 = !DILocation(line: 84, column: 12, scope: !133)
!139 = !DILocation(line: 84, column: 10, scope: !133)
!140 = !DILocation(line: 85, column: 8, scope: !141)
!141 = distinct !DILexicalBlock(scope: !133, file: !45, line: 85, column: 8)
!142 = !DILocation(line: 85, column: 8, scope: !133)
!143 = !DILocalVariable(name: "dataLen", scope: !144, file: !45, line: 89, type: !70)
!144 = distinct !DILexicalBlock(scope: !145, file: !45, line: 87, column: 9)
!145 = distinct !DILexicalBlock(scope: !141, file: !45, line: 86, column: 5)
!146 = !DILocation(line: 89, column: 20, scope: !144)
!147 = !DILocation(line: 89, column: 37, scope: !144)
!148 = !DILocation(line: 89, column: 30, scope: !144)
!149 = !DILocalVariable(name: "environment", scope: !144, file: !45, line: 90, type: !42)
!150 = !DILocation(line: 90, column: 20, scope: !144)
!151 = !DILocation(line: 90, column: 34, scope: !144)
!152 = !DILocation(line: 92, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !144, file: !45, line: 92, column: 17)
!154 = !DILocation(line: 92, column: 29, scope: !153)
!155 = !DILocation(line: 92, column: 17, scope: !144)
!156 = !DILocation(line: 95, column: 25, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !45, line: 93, column: 13)
!158 = !DILocation(line: 95, column: 30, scope: !157)
!159 = !DILocation(line: 95, column: 29, scope: !157)
!160 = !DILocation(line: 95, column: 39, scope: !157)
!161 = !DILocation(line: 95, column: 56, scope: !157)
!162 = !DILocation(line: 95, column: 55, scope: !157)
!163 = !DILocation(line: 95, column: 63, scope: !157)
!164 = !DILocation(line: 95, column: 17, scope: !157)
!165 = !DILocation(line: 96, column: 13, scope: !157)
!166 = !DILocation(line: 98, column: 5, scope: !145)
!167 = !DILocation(line: 99, column: 8, scope: !168)
!168 = distinct !DILexicalBlock(scope: !133, file: !45, line: 99, column: 8)
!169 = !DILocation(line: 99, column: 8, scope: !133)
!170 = !DILocation(line: 102, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !45, line: 100, column: 5)
!172 = !DILocation(line: 103, column: 5, scope: !171)
!173 = !DILocalVariable(name: "i", scope: !174, file: !45, line: 107, type: !23)
!174 = distinct !DILexicalBlock(scope: !175, file: !45, line: 106, column: 9)
!175 = distinct !DILexicalBlock(scope: !168, file: !45, line: 105, column: 5)
!176 = !DILocation(line: 107, column: 17, scope: !174)
!177 = !DILocalVariable(name: "n", scope: !174, file: !45, line: 107, type: !23)
!178 = !DILocation(line: 107, column: 20, scope: !174)
!179 = !DILocalVariable(name: "intVariable", scope: !174, file: !45, line: 107, type: !23)
!180 = !DILocation(line: 107, column: 23, scope: !174)
!181 = !DILocation(line: 108, column: 24, scope: !182)
!182 = distinct !DILexicalBlock(scope: !174, file: !45, line: 108, column: 17)
!183 = !DILocation(line: 108, column: 17, scope: !182)
!184 = !DILocation(line: 108, column: 40, scope: !182)
!185 = !DILocation(line: 108, column: 17, scope: !174)
!186 = !DILocation(line: 111, column: 21, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !45, line: 111, column: 21)
!188 = distinct !DILexicalBlock(scope: !182, file: !45, line: 109, column: 13)
!189 = !DILocation(line: 111, column: 23, scope: !187)
!190 = !DILocation(line: 111, column: 21, scope: !188)
!191 = !DILocation(line: 113, column: 33, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !45, line: 112, column: 17)
!193 = !DILocation(line: 114, column: 28, scope: !194)
!194 = distinct !DILexicalBlock(scope: !192, file: !45, line: 114, column: 21)
!195 = !DILocation(line: 114, column: 26, scope: !194)
!196 = !DILocation(line: 114, column: 33, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !45, line: 114, column: 21)
!198 = !DILocation(line: 114, column: 37, scope: !197)
!199 = !DILocation(line: 114, column: 35, scope: !197)
!200 = !DILocation(line: 114, column: 21, scope: !194)
!201 = !DILocation(line: 117, column: 36, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !45, line: 115, column: 21)
!203 = !DILocation(line: 118, column: 21, scope: !202)
!204 = !DILocation(line: 114, column: 41, scope: !197)
!205 = !DILocation(line: 114, column: 21, scope: !197)
!206 = distinct !{!206, !200, !207, !127}
!207 = !DILocation(line: 118, column: 21, scope: !194)
!208 = !DILocation(line: 119, column: 34, scope: !192)
!209 = !DILocation(line: 119, column: 21, scope: !192)
!210 = !DILocation(line: 120, column: 17, scope: !192)
!211 = !DILocation(line: 121, column: 13, scope: !188)
!212 = !DILocation(line: 124, column: 1, scope: !133)
!213 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 127, type: !53, scopeLine: 128, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!214 = !DILocalVariable(name: "data", scope: !213, file: !45, line: 129, type: !42)
!215 = !DILocation(line: 129, column: 12, scope: !213)
!216 = !DILocalVariable(name: "dataBuffer", scope: !213, file: !45, line: 130, type: !58)
!217 = !DILocation(line: 130, column: 10, scope: !213)
!218 = !DILocation(line: 131, column: 12, scope: !213)
!219 = !DILocation(line: 131, column: 10, scope: !213)
!220 = !DILocation(line: 132, column: 8, scope: !221)
!221 = distinct !DILexicalBlock(scope: !213, file: !45, line: 132, column: 8)
!222 = !DILocation(line: 132, column: 8, scope: !213)
!223 = !DILocalVariable(name: "dataLen", scope: !224, file: !45, line: 136, type: !70)
!224 = distinct !DILexicalBlock(scope: !225, file: !45, line: 134, column: 9)
!225 = distinct !DILexicalBlock(scope: !221, file: !45, line: 133, column: 5)
!226 = !DILocation(line: 136, column: 20, scope: !224)
!227 = !DILocation(line: 136, column: 37, scope: !224)
!228 = !DILocation(line: 136, column: 30, scope: !224)
!229 = !DILocalVariable(name: "environment", scope: !224, file: !45, line: 137, type: !42)
!230 = !DILocation(line: 137, column: 20, scope: !224)
!231 = !DILocation(line: 137, column: 34, scope: !224)
!232 = !DILocation(line: 139, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !224, file: !45, line: 139, column: 17)
!234 = !DILocation(line: 139, column: 29, scope: !233)
!235 = !DILocation(line: 139, column: 17, scope: !224)
!236 = !DILocation(line: 142, column: 25, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !45, line: 140, column: 13)
!238 = !DILocation(line: 142, column: 30, scope: !237)
!239 = !DILocation(line: 142, column: 29, scope: !237)
!240 = !DILocation(line: 142, column: 39, scope: !237)
!241 = !DILocation(line: 142, column: 56, scope: !237)
!242 = !DILocation(line: 142, column: 55, scope: !237)
!243 = !DILocation(line: 142, column: 63, scope: !237)
!244 = !DILocation(line: 142, column: 17, scope: !237)
!245 = !DILocation(line: 143, column: 13, scope: !237)
!246 = !DILocation(line: 145, column: 5, scope: !225)
!247 = !DILocation(line: 146, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !213, file: !45, line: 146, column: 8)
!249 = !DILocation(line: 146, column: 8, scope: !213)
!250 = !DILocalVariable(name: "i", scope: !251, file: !45, line: 149, type: !23)
!251 = distinct !DILexicalBlock(scope: !252, file: !45, line: 148, column: 9)
!252 = distinct !DILexicalBlock(scope: !248, file: !45, line: 147, column: 5)
!253 = !DILocation(line: 149, column: 17, scope: !251)
!254 = !DILocalVariable(name: "n", scope: !251, file: !45, line: 149, type: !23)
!255 = !DILocation(line: 149, column: 20, scope: !251)
!256 = !DILocalVariable(name: "intVariable", scope: !251, file: !45, line: 149, type: !23)
!257 = !DILocation(line: 149, column: 23, scope: !251)
!258 = !DILocation(line: 150, column: 24, scope: !259)
!259 = distinct !DILexicalBlock(scope: !251, file: !45, line: 150, column: 17)
!260 = !DILocation(line: 150, column: 17, scope: !259)
!261 = !DILocation(line: 150, column: 40, scope: !259)
!262 = !DILocation(line: 150, column: 17, scope: !251)
!263 = !DILocation(line: 153, column: 21, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !45, line: 153, column: 21)
!265 = distinct !DILexicalBlock(scope: !259, file: !45, line: 151, column: 13)
!266 = !DILocation(line: 153, column: 23, scope: !264)
!267 = !DILocation(line: 153, column: 21, scope: !265)
!268 = !DILocation(line: 155, column: 33, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !45, line: 154, column: 17)
!270 = !DILocation(line: 156, column: 28, scope: !271)
!271 = distinct !DILexicalBlock(scope: !269, file: !45, line: 156, column: 21)
!272 = !DILocation(line: 156, column: 26, scope: !271)
!273 = !DILocation(line: 156, column: 33, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !45, line: 156, column: 21)
!275 = !DILocation(line: 156, column: 37, scope: !274)
!276 = !DILocation(line: 156, column: 35, scope: !274)
!277 = !DILocation(line: 156, column: 21, scope: !271)
!278 = !DILocation(line: 159, column: 36, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !45, line: 157, column: 21)
!280 = !DILocation(line: 160, column: 21, scope: !279)
!281 = !DILocation(line: 156, column: 41, scope: !274)
!282 = !DILocation(line: 156, column: 21, scope: !274)
!283 = distinct !{!283, !277, !284, !127}
!284 = !DILocation(line: 160, column: 21, scope: !271)
!285 = !DILocation(line: 161, column: 34, scope: !269)
!286 = !DILocation(line: 161, column: 21, scope: !269)
!287 = !DILocation(line: 162, column: 17, scope: !269)
!288 = !DILocation(line: 163, column: 13, scope: !265)
!289 = !DILocation(line: 165, column: 5, scope: !252)
!290 = !DILocation(line: 166, column: 1, scope: !213)
!291 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 169, type: !53, scopeLine: 170, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!292 = !DILocalVariable(name: "data", scope: !291, file: !45, line: 171, type: !42)
!293 = !DILocation(line: 171, column: 12, scope: !291)
!294 = !DILocalVariable(name: "dataBuffer", scope: !291, file: !45, line: 172, type: !58)
!295 = !DILocation(line: 172, column: 10, scope: !291)
!296 = !DILocation(line: 173, column: 12, scope: !291)
!297 = !DILocation(line: 173, column: 10, scope: !291)
!298 = !DILocation(line: 174, column: 8, scope: !299)
!299 = distinct !DILexicalBlock(scope: !291, file: !45, line: 174, column: 8)
!300 = !DILocation(line: 174, column: 8, scope: !291)
!301 = !DILocation(line: 177, column: 9, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !45, line: 175, column: 5)
!303 = !DILocation(line: 178, column: 5, scope: !302)
!304 = !DILocation(line: 182, column: 16, scope: !305)
!305 = distinct !DILexicalBlock(scope: !299, file: !45, line: 180, column: 5)
!306 = !DILocation(line: 182, column: 9, scope: !305)
!307 = !DILocation(line: 184, column: 8, scope: !308)
!308 = distinct !DILexicalBlock(scope: !291, file: !45, line: 184, column: 8)
!309 = !DILocation(line: 184, column: 8, scope: !291)
!310 = !DILocalVariable(name: "i", scope: !311, file: !45, line: 187, type: !23)
!311 = distinct !DILexicalBlock(scope: !312, file: !45, line: 186, column: 9)
!312 = distinct !DILexicalBlock(scope: !308, file: !45, line: 185, column: 5)
!313 = !DILocation(line: 187, column: 17, scope: !311)
!314 = !DILocalVariable(name: "n", scope: !311, file: !45, line: 187, type: !23)
!315 = !DILocation(line: 187, column: 20, scope: !311)
!316 = !DILocalVariable(name: "intVariable", scope: !311, file: !45, line: 187, type: !23)
!317 = !DILocation(line: 187, column: 23, scope: !311)
!318 = !DILocation(line: 188, column: 24, scope: !319)
!319 = distinct !DILexicalBlock(scope: !311, file: !45, line: 188, column: 17)
!320 = !DILocation(line: 188, column: 17, scope: !319)
!321 = !DILocation(line: 188, column: 40, scope: !319)
!322 = !DILocation(line: 188, column: 17, scope: !311)
!323 = !DILocation(line: 191, column: 29, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !45, line: 189, column: 13)
!325 = !DILocation(line: 192, column: 24, scope: !326)
!326 = distinct !DILexicalBlock(scope: !324, file: !45, line: 192, column: 17)
!327 = !DILocation(line: 192, column: 22, scope: !326)
!328 = !DILocation(line: 192, column: 29, scope: !329)
!329 = distinct !DILexicalBlock(scope: !326, file: !45, line: 192, column: 17)
!330 = !DILocation(line: 192, column: 33, scope: !329)
!331 = !DILocation(line: 192, column: 31, scope: !329)
!332 = !DILocation(line: 192, column: 17, scope: !326)
!333 = !DILocation(line: 195, column: 32, scope: !334)
!334 = distinct !DILexicalBlock(scope: !329, file: !45, line: 193, column: 17)
!335 = !DILocation(line: 196, column: 17, scope: !334)
!336 = !DILocation(line: 192, column: 37, scope: !329)
!337 = !DILocation(line: 192, column: 17, scope: !329)
!338 = distinct !{!338, !332, !339, !127}
!339 = !DILocation(line: 196, column: 17, scope: !326)
!340 = !DILocation(line: 197, column: 30, scope: !324)
!341 = !DILocation(line: 197, column: 17, scope: !324)
!342 = !DILocation(line: 198, column: 13, scope: !324)
!343 = !DILocation(line: 200, column: 5, scope: !312)
!344 = !DILocation(line: 201, column: 1, scope: !291)
!345 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 204, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!346 = !DILocalVariable(name: "data", scope: !345, file: !45, line: 206, type: !42)
!347 = !DILocation(line: 206, column: 12, scope: !345)
!348 = !DILocalVariable(name: "dataBuffer", scope: !345, file: !45, line: 207, type: !58)
!349 = !DILocation(line: 207, column: 10, scope: !345)
!350 = !DILocation(line: 208, column: 12, scope: !345)
!351 = !DILocation(line: 208, column: 10, scope: !345)
!352 = !DILocation(line: 209, column: 8, scope: !353)
!353 = distinct !DILexicalBlock(scope: !345, file: !45, line: 209, column: 8)
!354 = !DILocation(line: 209, column: 8, scope: !345)
!355 = !DILocation(line: 212, column: 16, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !45, line: 210, column: 5)
!357 = !DILocation(line: 212, column: 9, scope: !356)
!358 = !DILocation(line: 213, column: 5, scope: !356)
!359 = !DILocation(line: 214, column: 8, scope: !360)
!360 = distinct !DILexicalBlock(scope: !345, file: !45, line: 214, column: 8)
!361 = !DILocation(line: 214, column: 8, scope: !345)
!362 = !DILocalVariable(name: "i", scope: !363, file: !45, line: 217, type: !23)
!363 = distinct !DILexicalBlock(scope: !364, file: !45, line: 216, column: 9)
!364 = distinct !DILexicalBlock(scope: !360, file: !45, line: 215, column: 5)
!365 = !DILocation(line: 217, column: 17, scope: !363)
!366 = !DILocalVariable(name: "n", scope: !363, file: !45, line: 217, type: !23)
!367 = !DILocation(line: 217, column: 20, scope: !363)
!368 = !DILocalVariable(name: "intVariable", scope: !363, file: !45, line: 217, type: !23)
!369 = !DILocation(line: 217, column: 23, scope: !363)
!370 = !DILocation(line: 218, column: 24, scope: !371)
!371 = distinct !DILexicalBlock(scope: !363, file: !45, line: 218, column: 17)
!372 = !DILocation(line: 218, column: 17, scope: !371)
!373 = !DILocation(line: 218, column: 40, scope: !371)
!374 = !DILocation(line: 218, column: 17, scope: !363)
!375 = !DILocation(line: 221, column: 29, scope: !376)
!376 = distinct !DILexicalBlock(scope: !371, file: !45, line: 219, column: 13)
!377 = !DILocation(line: 222, column: 24, scope: !378)
!378 = distinct !DILexicalBlock(scope: !376, file: !45, line: 222, column: 17)
!379 = !DILocation(line: 222, column: 22, scope: !378)
!380 = !DILocation(line: 222, column: 29, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !45, line: 222, column: 17)
!382 = !DILocation(line: 222, column: 33, scope: !381)
!383 = !DILocation(line: 222, column: 31, scope: !381)
!384 = !DILocation(line: 222, column: 17, scope: !378)
!385 = !DILocation(line: 225, column: 32, scope: !386)
!386 = distinct !DILexicalBlock(scope: !381, file: !45, line: 223, column: 17)
!387 = !DILocation(line: 226, column: 17, scope: !386)
!388 = !DILocation(line: 222, column: 37, scope: !381)
!389 = !DILocation(line: 222, column: 17, scope: !381)
!390 = distinct !{!390, !384, !391, !127}
!391 = !DILocation(line: 226, column: 17, scope: !378)
!392 = !DILocation(line: 227, column: 30, scope: !376)
!393 = !DILocation(line: 227, column: 17, scope: !376)
!394 = !DILocation(line: 228, column: 13, scope: !376)
!395 = !DILocation(line: 230, column: 5, scope: !364)
!396 = !DILocation(line: 231, column: 1, scope: !345)
!397 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_10_good", scope: !45, file: !45, line: 233, type: !53, scopeLine: 234, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!398 = !DILocation(line: 235, column: 5, scope: !397)
!399 = !DILocation(line: 236, column: 5, scope: !397)
!400 = !DILocation(line: 237, column: 5, scope: !397)
!401 = !DILocation(line: 238, column: 5, scope: !397)
!402 = !DILocation(line: 239, column: 1, scope: !397)
!403 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !404, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !42}
!406 = !DILocalVariable(name: "line", arg: 1, scope: !403, file: !3, line: 11, type: !42)
!407 = !DILocation(line: 11, column: 25, scope: !403)
!408 = !DILocation(line: 13, column: 1, scope: !403)
!409 = !DILocation(line: 14, column: 8, scope: !410)
!410 = distinct !DILexicalBlock(scope: !403, file: !3, line: 14, column: 8)
!411 = !DILocation(line: 14, column: 13, scope: !410)
!412 = !DILocation(line: 14, column: 8, scope: !403)
!413 = !DILocation(line: 16, column: 24, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !3, line: 15, column: 5)
!415 = !DILocation(line: 16, column: 9, scope: !414)
!416 = !DILocation(line: 17, column: 5, scope: !414)
!417 = !DILocation(line: 18, column: 5, scope: !403)
!418 = !DILocation(line: 19, column: 1, scope: !403)
!419 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !404, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!420 = !DILocalVariable(name: "line", arg: 1, scope: !419, file: !3, line: 20, type: !42)
!421 = !DILocation(line: 20, column: 29, scope: !419)
!422 = !DILocation(line: 22, column: 8, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !3, line: 22, column: 8)
!424 = !DILocation(line: 22, column: 13, scope: !423)
!425 = !DILocation(line: 22, column: 8, scope: !419)
!426 = !DILocation(line: 24, column: 24, scope: !427)
!427 = distinct !DILexicalBlock(scope: !423, file: !3, line: 23, column: 5)
!428 = !DILocation(line: 24, column: 9, scope: !427)
!429 = !DILocation(line: 25, column: 5, scope: !427)
!430 = !DILocation(line: 26, column: 1, scope: !419)
!431 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !432, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!436 = !DILocalVariable(name: "line", arg: 1, scope: !431, file: !3, line: 27, type: !434)
!437 = !DILocation(line: 27, column: 29, scope: !431)
!438 = !DILocation(line: 29, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !431, file: !3, line: 29, column: 8)
!440 = !DILocation(line: 29, column: 13, scope: !439)
!441 = !DILocation(line: 29, column: 8, scope: !431)
!442 = !DILocation(line: 31, column: 27, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !3, line: 30, column: 5)
!444 = !DILocation(line: 31, column: 9, scope: !443)
!445 = !DILocation(line: 32, column: 5, scope: !443)
!446 = !DILocation(line: 33, column: 1, scope: !431)
!447 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !448, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !23}
!450 = !DILocalVariable(name: "intNumber", arg: 1, scope: !447, file: !3, line: 35, type: !23)
!451 = !DILocation(line: 35, column: 24, scope: !447)
!452 = !DILocation(line: 37, column: 20, scope: !447)
!453 = !DILocation(line: 37, column: 5, scope: !447)
!454 = !DILocation(line: 38, column: 1, scope: !447)
!455 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !456, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458}
!458 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!459 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !455, file: !3, line: 40, type: !458)
!460 = !DILocation(line: 40, column: 28, scope: !455)
!461 = !DILocation(line: 42, column: 21, scope: !455)
!462 = !DILocation(line: 42, column: 5, scope: !455)
!463 = !DILocation(line: 43, column: 1, scope: !455)
!464 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !465, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467}
!467 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!468 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !464, file: !3, line: 45, type: !467)
!469 = !DILocation(line: 45, column: 28, scope: !464)
!470 = !DILocation(line: 47, column: 20, scope: !464)
!471 = !DILocation(line: 47, column: 5, scope: !464)
!472 = !DILocation(line: 48, column: 1, scope: !464)
!473 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !474, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !476}
!476 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!477 = !DILocalVariable(name: "longNumber", arg: 1, scope: !473, file: !3, line: 50, type: !476)
!478 = !DILocation(line: 50, column: 26, scope: !473)
!479 = !DILocation(line: 52, column: 21, scope: !473)
!480 = !DILocation(line: 52, column: 5, scope: !473)
!481 = !DILocation(line: 53, column: 1, scope: !473)
!482 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !483, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !485}
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !486, line: 27, baseType: !487)
!486 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !488, line: 44, baseType: !476)
!488 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!489 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !482, file: !3, line: 55, type: !485)
!490 = !DILocation(line: 55, column: 33, scope: !482)
!491 = !DILocation(line: 57, column: 29, scope: !482)
!492 = !DILocation(line: 57, column: 5, scope: !482)
!493 = !DILocation(line: 58, column: 1, scope: !482)
!494 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !495, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !70}
!497 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !494, file: !3, line: 60, type: !70)
!498 = !DILocation(line: 60, column: 29, scope: !494)
!499 = !DILocation(line: 62, column: 21, scope: !494)
!500 = !DILocation(line: 62, column: 5, scope: !494)
!501 = !DILocation(line: 63, column: 1, scope: !494)
!502 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !503, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !43}
!505 = !DILocalVariable(name: "charHex", arg: 1, scope: !502, file: !3, line: 65, type: !43)
!506 = !DILocation(line: 65, column: 29, scope: !502)
!507 = !DILocation(line: 67, column: 22, scope: !502)
!508 = !DILocation(line: 67, column: 5, scope: !502)
!509 = !DILocation(line: 68, column: 1, scope: !502)
!510 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !511, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !435}
!513 = !DILocalVariable(name: "wideChar", arg: 1, scope: !510, file: !3, line: 70, type: !435)
!514 = !DILocation(line: 70, column: 29, scope: !510)
!515 = !DILocalVariable(name: "s", scope: !510, file: !3, line: 74, type: !516)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 64, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 2)
!519 = !DILocation(line: 74, column: 13, scope: !510)
!520 = !DILocation(line: 75, column: 16, scope: !510)
!521 = !DILocation(line: 75, column: 9, scope: !510)
!522 = !DILocation(line: 75, column: 14, scope: !510)
!523 = !DILocation(line: 76, column: 9, scope: !510)
!524 = !DILocation(line: 76, column: 14, scope: !510)
!525 = !DILocation(line: 77, column: 21, scope: !510)
!526 = !DILocation(line: 77, column: 5, scope: !510)
!527 = !DILocation(line: 78, column: 1, scope: !510)
!528 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !529, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !7}
!531 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !528, file: !3, line: 80, type: !7)
!532 = !DILocation(line: 80, column: 33, scope: !528)
!533 = !DILocation(line: 82, column: 20, scope: !528)
!534 = !DILocation(line: 82, column: 5, scope: !528)
!535 = !DILocation(line: 83, column: 1, scope: !528)
!536 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !537, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !25}
!539 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !536, file: !3, line: 85, type: !25)
!540 = !DILocation(line: 85, column: 45, scope: !536)
!541 = !DILocation(line: 87, column: 22, scope: !536)
!542 = !DILocation(line: 87, column: 5, scope: !536)
!543 = !DILocation(line: 88, column: 1, scope: !536)
!544 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !545, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !547}
!547 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!548 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !544, file: !3, line: 90, type: !547)
!549 = !DILocation(line: 90, column: 29, scope: !544)
!550 = !DILocation(line: 92, column: 20, scope: !544)
!551 = !DILocation(line: 92, column: 5, scope: !544)
!552 = !DILocation(line: 93, column: 1, scope: !544)
!553 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !554, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !558, line: 100, baseType: !559)
!558 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_035/source_code")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !558, line: 96, size: 64, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !559, file: !558, line: 98, baseType: !23, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !559, file: !558, line: 99, baseType: !23, size: 32, offset: 32)
!563 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !553, file: !3, line: 95, type: !556)
!564 = !DILocation(line: 95, column: 40, scope: !553)
!565 = !DILocation(line: 97, column: 26, scope: !553)
!566 = !DILocation(line: 97, column: 47, scope: !553)
!567 = !DILocation(line: 97, column: 55, scope: !553)
!568 = !DILocation(line: 97, column: 76, scope: !553)
!569 = !DILocation(line: 97, column: 5, scope: !553)
!570 = !DILocation(line: 98, column: 1, scope: !553)
!571 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !572, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !574, !70}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!575 = !DILocalVariable(name: "bytes", arg: 1, scope: !571, file: !3, line: 100, type: !574)
!576 = !DILocation(line: 100, column: 38, scope: !571)
!577 = !DILocalVariable(name: "numBytes", arg: 2, scope: !571, file: !3, line: 100, type: !70)
!578 = !DILocation(line: 100, column: 52, scope: !571)
!579 = !DILocalVariable(name: "i", scope: !571, file: !3, line: 102, type: !70)
!580 = !DILocation(line: 102, column: 12, scope: !571)
!581 = !DILocation(line: 103, column: 12, scope: !582)
!582 = distinct !DILexicalBlock(scope: !571, file: !3, line: 103, column: 5)
!583 = !DILocation(line: 103, column: 10, scope: !582)
!584 = !DILocation(line: 103, column: 17, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !3, line: 103, column: 5)
!586 = !DILocation(line: 103, column: 21, scope: !585)
!587 = !DILocation(line: 103, column: 19, scope: !585)
!588 = !DILocation(line: 103, column: 5, scope: !582)
!589 = !DILocation(line: 105, column: 24, scope: !590)
!590 = distinct !DILexicalBlock(scope: !585, file: !3, line: 104, column: 5)
!591 = !DILocation(line: 105, column: 30, scope: !590)
!592 = !DILocation(line: 105, column: 9, scope: !590)
!593 = !DILocation(line: 106, column: 5, scope: !590)
!594 = !DILocation(line: 103, column: 31, scope: !585)
!595 = !DILocation(line: 103, column: 5, scope: !585)
!596 = distinct !{!596, !588, !597, !127}
!597 = !DILocation(line: 106, column: 5, scope: !582)
!598 = !DILocation(line: 107, column: 5, scope: !571)
!599 = !DILocation(line: 108, column: 1, scope: !571)
!600 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !601, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DISubroutineType(types: !602)
!602 = !{!70, !574, !70, !42}
!603 = !DILocalVariable(name: "bytes", arg: 1, scope: !600, file: !3, line: 113, type: !574)
!604 = !DILocation(line: 113, column: 39, scope: !600)
!605 = !DILocalVariable(name: "numBytes", arg: 2, scope: !600, file: !3, line: 113, type: !70)
!606 = !DILocation(line: 113, column: 53, scope: !600)
!607 = !DILocalVariable(name: "hex", arg: 3, scope: !600, file: !3, line: 113, type: !42)
!608 = !DILocation(line: 113, column: 71, scope: !600)
!609 = !DILocalVariable(name: "numWritten", scope: !600, file: !3, line: 115, type: !70)
!610 = !DILocation(line: 115, column: 12, scope: !600)
!611 = !DILocation(line: 121, column: 5, scope: !600)
!612 = !DILocation(line: 121, column: 12, scope: !600)
!613 = !DILocation(line: 121, column: 25, scope: !600)
!614 = !DILocation(line: 121, column: 23, scope: !600)
!615 = !DILocation(line: 121, column: 34, scope: !600)
!616 = !DILocation(line: 121, column: 37, scope: !600)
!617 = !DILocation(line: 121, column: 67, scope: !600)
!618 = !DILocation(line: 121, column: 70, scope: !600)
!619 = !DILocation(line: 0, scope: !600)
!620 = !DILocalVariable(name: "byte", scope: !621, file: !3, line: 123, type: !23)
!621 = distinct !DILexicalBlock(scope: !600, file: !3, line: 122, column: 5)
!622 = !DILocation(line: 123, column: 13, scope: !621)
!623 = !DILocation(line: 124, column: 17, scope: !621)
!624 = !DILocation(line: 124, column: 25, scope: !621)
!625 = !DILocation(line: 124, column: 23, scope: !621)
!626 = !DILocation(line: 124, column: 9, scope: !621)
!627 = !DILocation(line: 125, column: 45, scope: !621)
!628 = !DILocation(line: 125, column: 29, scope: !621)
!629 = !DILocation(line: 125, column: 9, scope: !621)
!630 = !DILocation(line: 125, column: 15, scope: !621)
!631 = !DILocation(line: 125, column: 27, scope: !621)
!632 = !DILocation(line: 126, column: 9, scope: !621)
!633 = distinct !{!633, !611, !634, !127}
!634 = !DILocation(line: 127, column: 5, scope: !600)
!635 = !DILocation(line: 129, column: 12, scope: !600)
!636 = !DILocation(line: 129, column: 5, scope: !600)
!637 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !638, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DISubroutineType(types: !639)
!639 = !{!70, !574, !70, !434}
!640 = !DILocalVariable(name: "bytes", arg: 1, scope: !637, file: !3, line: 135, type: !574)
!641 = !DILocation(line: 135, column: 41, scope: !637)
!642 = !DILocalVariable(name: "numBytes", arg: 2, scope: !637, file: !3, line: 135, type: !70)
!643 = !DILocation(line: 135, column: 55, scope: !637)
!644 = !DILocalVariable(name: "hex", arg: 3, scope: !637, file: !3, line: 135, type: !434)
!645 = !DILocation(line: 135, column: 76, scope: !637)
!646 = !DILocalVariable(name: "numWritten", scope: !637, file: !3, line: 137, type: !70)
!647 = !DILocation(line: 137, column: 12, scope: !637)
!648 = !DILocation(line: 143, column: 5, scope: !637)
!649 = !DILocation(line: 143, column: 12, scope: !637)
!650 = !DILocation(line: 143, column: 25, scope: !637)
!651 = !DILocation(line: 143, column: 23, scope: !637)
!652 = !DILocation(line: 143, column: 34, scope: !637)
!653 = !DILocation(line: 143, column: 47, scope: !637)
!654 = !DILocation(line: 143, column: 55, scope: !637)
!655 = !DILocation(line: 143, column: 53, scope: !637)
!656 = !DILocation(line: 143, column: 37, scope: !637)
!657 = !DILocation(line: 143, column: 68, scope: !637)
!658 = !DILocation(line: 143, column: 81, scope: !637)
!659 = !DILocation(line: 143, column: 89, scope: !637)
!660 = !DILocation(line: 143, column: 87, scope: !637)
!661 = !DILocation(line: 143, column: 100, scope: !637)
!662 = !DILocation(line: 143, column: 71, scope: !637)
!663 = !DILocation(line: 0, scope: !637)
!664 = !DILocalVariable(name: "byte", scope: !665, file: !3, line: 145, type: !23)
!665 = distinct !DILexicalBlock(scope: !637, file: !3, line: 144, column: 5)
!666 = !DILocation(line: 145, column: 13, scope: !665)
!667 = !DILocation(line: 146, column: 18, scope: !665)
!668 = !DILocation(line: 146, column: 26, scope: !665)
!669 = !DILocation(line: 146, column: 24, scope: !665)
!670 = !DILocation(line: 146, column: 9, scope: !665)
!671 = !DILocation(line: 147, column: 45, scope: !665)
!672 = !DILocation(line: 147, column: 29, scope: !665)
!673 = !DILocation(line: 147, column: 9, scope: !665)
!674 = !DILocation(line: 147, column: 15, scope: !665)
!675 = !DILocation(line: 147, column: 27, scope: !665)
!676 = !DILocation(line: 148, column: 9, scope: !665)
!677 = distinct !{!677, !648, !678, !127}
!678 = !DILocation(line: 149, column: 5, scope: !637)
!679 = !DILocation(line: 151, column: 12, scope: !637)
!680 = !DILocation(line: 151, column: 5, scope: !637)
!681 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !682, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DISubroutineType(types: !683)
!683 = !{!23}
!684 = !DILocation(line: 158, column: 5, scope: !681)
!685 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !682, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!686 = !DILocation(line: 163, column: 5, scope: !685)
!687 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !682, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!688 = !DILocation(line: 168, column: 13, scope: !687)
!689 = !DILocation(line: 168, column: 20, scope: !687)
!690 = !DILocation(line: 168, column: 5, scope: !687)
!691 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DILocation(line: 187, column: 16, scope: !691)
!693 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!694 = !DILocation(line: 188, column: 16, scope: !693)
!695 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!696 = !DILocation(line: 189, column: 16, scope: !695)
!697 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!698 = !DILocation(line: 190, column: 16, scope: !697)
!699 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!700 = !DILocation(line: 191, column: 16, scope: !699)
!701 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!702 = !DILocation(line: 192, column: 16, scope: !701)
!703 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!704 = !DILocation(line: 193, column: 16, scope: !703)
!705 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!706 = !DILocation(line: 194, column: 16, scope: !705)
!707 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!708 = !DILocation(line: 195, column: 16, scope: !707)
!709 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!710 = !DILocation(line: 198, column: 15, scope: !709)
!711 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!712 = !DILocation(line: 199, column: 15, scope: !711)
!713 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!714 = !DILocation(line: 200, column: 15, scope: !713)
!715 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!716 = !DILocation(line: 201, column: 15, scope: !715)
!717 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!718 = !DILocation(line: 202, column: 15, scope: !717)
!719 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!720 = !DILocation(line: 203, column: 15, scope: !719)
!721 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!722 = !DILocation(line: 204, column: 15, scope: !721)
!723 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!724 = !DILocation(line: 205, column: 15, scope: !723)
!725 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!726 = !DILocation(line: 206, column: 15, scope: !725)
