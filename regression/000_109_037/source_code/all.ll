; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_12_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i18 = alloca i32, align 4
  %n19 = alloca i32, align 4
  %intVariable20 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !64
  %tobool = icmp ne i32 %call, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.else, !dbg !66

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !73
  %1 = load i8*, i8** %data, align 8, !dbg !74
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !75
  store i64 %call1, i64* %dataLen, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !76, metadata !DIExpression()), !dbg !77
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !78
  store i8* %call2, i8** %environment, align 8, !dbg !77
  %2 = load i8*, i8** %environment, align 8, !dbg !79
  %cmp = icmp ne i8* %2, null, !dbg !81
  br i1 %cmp, label %if.then3, label %if.end, !dbg !82

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !83
  %4 = load i64, i64* %dataLen, align 8, !dbg !85
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !86
  %5 = load i8*, i8** %environment, align 8, !dbg !87
  %6 = load i64, i64* %dataLen, align 8, !dbg !88
  %sub = sub i64 100, %6, !dbg !89
  %sub4 = sub i64 %sub, 1, !dbg !90
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #8, !dbg !91
  br label %if.end, !dbg !92

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end7, !dbg !93

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %data, align 8, !dbg !94
  %call6 = call i8* @strcpy(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !96
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %call8 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !97
  %tobool9 = icmp ne i32 %call8, 0, !dbg !97
  br i1 %tobool9, label %if.then10, label %if.else17, !dbg !99

if.then10:                                        ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i32* %i, metadata !100, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %n, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !106, metadata !DIExpression()), !dbg !107
  %8 = load i8*, i8** %data, align 8, !dbg !108
  %call11 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #8, !dbg !110
  %cmp12 = icmp eq i32 %call11, 1, !dbg !111
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !112

if.then13:                                        ; preds = %if.then10
  store i32 0, i32* %intVariable, align 4, !dbg !113
  store i32 0, i32* %i, align 4, !dbg !115
  br label %for.cond, !dbg !117

for.cond:                                         ; preds = %for.inc, %if.then13
  %9 = load i32, i32* %i, align 4, !dbg !118
  %10 = load i32, i32* %n, align 4, !dbg !120
  %cmp14 = icmp slt i32 %9, %10, !dbg !121
  br i1 %cmp14, label %for.body, label %for.end, !dbg !122

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !123
  %inc = add nsw i32 %11, 1, !dbg !123
  store i32 %inc, i32* %intVariable, align 4, !dbg !123
  br label %for.inc, !dbg !125

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !126
  %inc15 = add nsw i32 %12, 1, !dbg !126
  store i32 %inc15, i32* %i, align 4, !dbg !126
  br label %for.cond, !dbg !127, !llvm.loop !128

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !131
  call void @printIntLine(i32 %13), !dbg !132
  br label %if.end16, !dbg !133

if.end16:                                         ; preds = %for.end, %if.then10
  br label %if.end35, !dbg !134

if.else17:                                        ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i32* %i18, metadata !135, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %n19, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %intVariable20, metadata !141, metadata !DIExpression()), !dbg !142
  %14 = load i8*, i8** %data, align 8, !dbg !143
  %call21 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n19) #8, !dbg !145
  %cmp22 = icmp eq i32 %call21, 1, !dbg !146
  br i1 %cmp22, label %if.then23, label %if.end34, !dbg !147

if.then23:                                        ; preds = %if.else17
  %15 = load i32, i32* %n19, align 4, !dbg !148
  %cmp24 = icmp slt i32 %15, 10000, !dbg !151
  br i1 %cmp24, label %if.then25, label %if.end33, !dbg !152

if.then25:                                        ; preds = %if.then23
  store i32 0, i32* %intVariable20, align 4, !dbg !153
  store i32 0, i32* %i18, align 4, !dbg !155
  br label %for.cond26, !dbg !157

for.cond26:                                       ; preds = %for.inc30, %if.then25
  %16 = load i32, i32* %i18, align 4, !dbg !158
  %17 = load i32, i32* %n19, align 4, !dbg !160
  %cmp27 = icmp slt i32 %16, %17, !dbg !161
  br i1 %cmp27, label %for.body28, label %for.end32, !dbg !162

for.body28:                                       ; preds = %for.cond26
  %18 = load i32, i32* %intVariable20, align 4, !dbg !163
  %inc29 = add nsw i32 %18, 1, !dbg !163
  store i32 %inc29, i32* %intVariable20, align 4, !dbg !163
  br label %for.inc30, !dbg !165

for.inc30:                                        ; preds = %for.body28
  %19 = load i32, i32* %i18, align 4, !dbg !166
  %inc31 = add nsw i32 %19, 1, !dbg !166
  store i32 %inc31, i32* %i18, align 4, !dbg !166
  br label %for.cond26, !dbg !167, !llvm.loop !168

for.end32:                                        ; preds = %for.cond26
  %20 = load i32, i32* %intVariable20, align 4, !dbg !170
  call void @printIntLine(i32 %20), !dbg !171
  br label %if.end33, !dbg !172

if.end33:                                         ; preds = %for.end32, %if.then23
  br label %if.end34, !dbg !173

if.end34:                                         ; preds = %if.end33, %if.else17
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end16
  ret void, !dbg !174
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
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !175 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %dataLen6 = alloca i64, align 8
  %environment8 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i31 = alloca i32, align 4
  %n32 = alloca i32, align 4
  %intVariable33 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !179
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !179
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !180
  store i8* %arraydecay, i8** %data, align 8, !dbg !181
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !182
  %tobool = icmp ne i32 %call, 0, !dbg !182
  br i1 %tobool, label %if.then, label %if.else, !dbg !184

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !185, metadata !DIExpression()), !dbg !188
  %1 = load i8*, i8** %data, align 8, !dbg !189
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !190
  store i64 %call1, i64* %dataLen, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !191, metadata !DIExpression()), !dbg !192
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !193
  store i8* %call2, i8** %environment, align 8, !dbg !192
  %2 = load i8*, i8** %environment, align 8, !dbg !194
  %cmp = icmp ne i8* %2, null, !dbg !196
  br i1 %cmp, label %if.then3, label %if.end, !dbg !197

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !198
  %4 = load i64, i64* %dataLen, align 8, !dbg !200
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !201
  %5 = load i8*, i8** %environment, align 8, !dbg !202
  %6 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub = sub i64 100, %6, !dbg !204
  %sub4 = sub i64 %sub, 1, !dbg !205
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #8, !dbg !206
  br label %if.end, !dbg !207

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end17, !dbg !208

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen6, metadata !209, metadata !DIExpression()), !dbg !212
  %7 = load i8*, i8** %data, align 8, !dbg !213
  %call7 = call i64 @strlen(i8* %7) #7, !dbg !214
  store i64 %call7, i64* %dataLen6, align 8, !dbg !212
  call void @llvm.dbg.declare(metadata i8** %environment8, metadata !215, metadata !DIExpression()), !dbg !216
  %call9 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !217
  store i8* %call9, i8** %environment8, align 8, !dbg !216
  %8 = load i8*, i8** %environment8, align 8, !dbg !218
  %cmp10 = icmp ne i8* %8, null, !dbg !220
  br i1 %cmp10, label %if.then11, label %if.end16, !dbg !221

if.then11:                                        ; preds = %if.else
  %9 = load i8*, i8** %data, align 8, !dbg !222
  %10 = load i64, i64* %dataLen6, align 8, !dbg !224
  %add.ptr12 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !225
  %11 = load i8*, i8** %environment8, align 8, !dbg !226
  %12 = load i64, i64* %dataLen6, align 8, !dbg !227
  %sub13 = sub i64 100, %12, !dbg !228
  %sub14 = sub i64 %sub13, 1, !dbg !229
  %call15 = call i8* @strncat(i8* %add.ptr12, i8* %11, i64 %sub14) #8, !dbg !230
  br label %if.end16, !dbg !231

if.end16:                                         ; preds = %if.then11, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %call18 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !232
  %tobool19 = icmp ne i32 %call18, 0, !dbg !232
  br i1 %tobool19, label %if.then20, label %if.else30, !dbg !234

if.then20:                                        ; preds = %if.end17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !235, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata i32* %n, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !241, metadata !DIExpression()), !dbg !242
  %13 = load i8*, i8** %data, align 8, !dbg !243
  %call21 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #8, !dbg !245
  %cmp22 = icmp eq i32 %call21, 1, !dbg !246
  br i1 %cmp22, label %if.then23, label %if.end29, !dbg !247

if.then23:                                        ; preds = %if.then20
  %14 = load i32, i32* %n, align 4, !dbg !248
  %cmp24 = icmp slt i32 %14, 10000, !dbg !251
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !252

if.then25:                                        ; preds = %if.then23
  store i32 0, i32* %intVariable, align 4, !dbg !253
  store i32 0, i32* %i, align 4, !dbg !255
  br label %for.cond, !dbg !257

for.cond:                                         ; preds = %for.inc, %if.then25
  %15 = load i32, i32* %i, align 4, !dbg !258
  %16 = load i32, i32* %n, align 4, !dbg !260
  %cmp26 = icmp slt i32 %15, %16, !dbg !261
  br i1 %cmp26, label %for.body, label %for.end, !dbg !262

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !263
  %inc = add nsw i32 %17, 1, !dbg !263
  store i32 %inc, i32* %intVariable, align 4, !dbg !263
  br label %for.inc, !dbg !265

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !266
  %inc27 = add nsw i32 %18, 1, !dbg !266
  store i32 %inc27, i32* %i, align 4, !dbg !266
  br label %for.cond, !dbg !267, !llvm.loop !268

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !270
  call void @printIntLine(i32 %19), !dbg !271
  br label %if.end28, !dbg !272

if.end28:                                         ; preds = %for.end, %if.then23
  br label %if.end29, !dbg !273

if.end29:                                         ; preds = %if.end28, %if.then20
  br label %if.end48, !dbg !274

if.else30:                                        ; preds = %if.end17
  call void @llvm.dbg.declare(metadata i32* %i31, metadata !275, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i32* %n32, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata i32* %intVariable33, metadata !281, metadata !DIExpression()), !dbg !282
  %20 = load i8*, i8** %data, align 8, !dbg !283
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n32) #8, !dbg !285
  %cmp35 = icmp eq i32 %call34, 1, !dbg !286
  br i1 %cmp35, label %if.then36, label %if.end47, !dbg !287

if.then36:                                        ; preds = %if.else30
  %21 = load i32, i32* %n32, align 4, !dbg !288
  %cmp37 = icmp slt i32 %21, 10000, !dbg !291
  br i1 %cmp37, label %if.then38, label %if.end46, !dbg !292

if.then38:                                        ; preds = %if.then36
  store i32 0, i32* %intVariable33, align 4, !dbg !293
  store i32 0, i32* %i31, align 4, !dbg !295
  br label %for.cond39, !dbg !297

for.cond39:                                       ; preds = %for.inc43, %if.then38
  %22 = load i32, i32* %i31, align 4, !dbg !298
  %23 = load i32, i32* %n32, align 4, !dbg !300
  %cmp40 = icmp slt i32 %22, %23, !dbg !301
  br i1 %cmp40, label %for.body41, label %for.end45, !dbg !302

for.body41:                                       ; preds = %for.cond39
  %24 = load i32, i32* %intVariable33, align 4, !dbg !303
  %inc42 = add nsw i32 %24, 1, !dbg !303
  store i32 %inc42, i32* %intVariable33, align 4, !dbg !303
  br label %for.inc43, !dbg !305

for.inc43:                                        ; preds = %for.body41
  %25 = load i32, i32* %i31, align 4, !dbg !306
  %inc44 = add nsw i32 %25, 1, !dbg !306
  store i32 %inc44, i32* %i31, align 4, !dbg !306
  br label %for.cond39, !dbg !307, !llvm.loop !308

for.end45:                                        ; preds = %for.cond39
  %26 = load i32, i32* %intVariable33, align 4, !dbg !310
  call void @printIntLine(i32 %26), !dbg !311
  br label %if.end46, !dbg !312

if.end46:                                         ; preds = %for.end45, %if.then36
  br label %if.end47, !dbg !313

if.end47:                                         ; preds = %if.end46, %if.else30
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end29
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !315 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i12 = alloca i32, align 4
  %n13 = alloca i32, align 4
  %intVariable14 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !316, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !318, metadata !DIExpression()), !dbg !319
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !319
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !319
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !320
  store i8* %arraydecay, i8** %data, align 8, !dbg !321
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !322
  %tobool = icmp ne i32 %call, 0, !dbg !322
  br i1 %tobool, label %if.then, label %if.else, !dbg !324

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !325
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !327
  br label %if.end, !dbg !328

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !329
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !331
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !332
  %tobool4 = icmp ne i32 %call3, 0, !dbg !332
  br i1 %tobool4, label %if.then5, label %if.else11, !dbg !334

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !335, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata i32* %n, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !341, metadata !DIExpression()), !dbg !342
  %3 = load i8*, i8** %data, align 8, !dbg !343
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #8, !dbg !345
  %cmp = icmp eq i32 %call6, 1, !dbg !346
  br i1 %cmp, label %if.then7, label %if.end10, !dbg !347

if.then7:                                         ; preds = %if.then5
  store i32 0, i32* %intVariable, align 4, !dbg !348
  store i32 0, i32* %i, align 4, !dbg !350
  br label %for.cond, !dbg !352

for.cond:                                         ; preds = %for.inc, %if.then7
  %4 = load i32, i32* %i, align 4, !dbg !353
  %5 = load i32, i32* %n, align 4, !dbg !355
  %cmp8 = icmp slt i32 %4, %5, !dbg !356
  br i1 %cmp8, label %for.body, label %for.end, !dbg !357

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !358
  %inc = add nsw i32 %6, 1, !dbg !358
  store i32 %inc, i32* %intVariable, align 4, !dbg !358
  br label %for.inc, !dbg !360

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !361
  %inc9 = add nsw i32 %7, 1, !dbg !361
  store i32 %inc9, i32* %i, align 4, !dbg !361
  br label %for.cond, !dbg !362, !llvm.loop !363

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !365
  call void @printIntLine(i32 %8), !dbg !366
  br label %if.end10, !dbg !367

if.end10:                                         ; preds = %for.end, %if.then5
  br label %if.end26, !dbg !368

if.else11:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i12, metadata !369, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata i32* %n13, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata i32* %intVariable14, metadata !375, metadata !DIExpression()), !dbg !376
  %9 = load i8*, i8** %data, align 8, !dbg !377
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n13) #8, !dbg !379
  %cmp16 = icmp eq i32 %call15, 1, !dbg !380
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !381

if.then17:                                        ; preds = %if.else11
  store i32 0, i32* %intVariable14, align 4, !dbg !382
  store i32 0, i32* %i12, align 4, !dbg !384
  br label %for.cond18, !dbg !386

for.cond18:                                       ; preds = %for.inc22, %if.then17
  %10 = load i32, i32* %i12, align 4, !dbg !387
  %11 = load i32, i32* %n13, align 4, !dbg !389
  %cmp19 = icmp slt i32 %10, %11, !dbg !390
  br i1 %cmp19, label %for.body20, label %for.end24, !dbg !391

for.body20:                                       ; preds = %for.cond18
  %12 = load i32, i32* %intVariable14, align 4, !dbg !392
  %inc21 = add nsw i32 %12, 1, !dbg !392
  store i32 %inc21, i32* %intVariable14, align 4, !dbg !392
  br label %for.inc22, !dbg !394

for.inc22:                                        ; preds = %for.body20
  %13 = load i32, i32* %i12, align 4, !dbg !395
  %inc23 = add nsw i32 %13, 1, !dbg !395
  store i32 %inc23, i32* %i12, align 4, !dbg !395
  br label %for.cond18, !dbg !396, !llvm.loop !397

for.end24:                                        ; preds = %for.cond18
  %14 = load i32, i32* %intVariable14, align 4, !dbg !399
  call void @printIntLine(i32 %14), !dbg !400
  br label %if.end25, !dbg !401

if.end25:                                         ; preds = %for.end24, %if.else11
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end10
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_12_good() #0 !dbg !403 {
entry:
  call void @goodB2G(), !dbg !404
  call void @goodG2B(), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !407 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !412
  %0 = load i8*, i8** %line.addr, align 8, !dbg !413
  %cmp = icmp ne i8* %0, null, !dbg !415
  br i1 %cmp, label %if.then, label %if.end, !dbg !416

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !417
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !419
  br label %if.end, !dbg !420

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !421
  ret void, !dbg !422
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !423 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i8*, i8** %line.addr, align 8, !dbg !426
  %cmp = icmp ne i8* %0, null, !dbg !428
  br i1 %cmp, label %if.then, label %if.end, !dbg !429

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !432
  br label %if.end, !dbg !433

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !435 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !440, metadata !DIExpression()), !dbg !441
  %0 = load i32*, i32** %line.addr, align 8, !dbg !442
  %cmp = icmp ne i32* %0, null, !dbg !444
  br i1 %cmp, label %if.then, label %if.end, !dbg !445

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !446
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !448
  br label %if.end, !dbg !449

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !450
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !451 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !457
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !459 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !465
  %conv = sext i16 %0 to i32, !dbg !465
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !466
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !468 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !472, metadata !DIExpression()), !dbg !473
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !474
  %conv = fpext float %0 to double, !dbg !474
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !475
  ret void, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !477 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !481, metadata !DIExpression()), !dbg !482
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !486 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !493, metadata !DIExpression()), !dbg !494
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !495
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !496
  ret void, !dbg !497
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !498 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !501, metadata !DIExpression()), !dbg !502
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !503
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !504
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !506 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !509, metadata !DIExpression()), !dbg !510
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !511
  %conv = sext i8 %0 to i32, !dbg !511
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !512
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !514 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !517, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !519, metadata !DIExpression()), !dbg !523
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !524
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !525
  store i32 %0, i32* %arrayidx, align 4, !dbg !526
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !527
  store i32 0, i32* %arrayidx1, align 4, !dbg !528
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !529
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !530
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !532 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !535, metadata !DIExpression()), !dbg !536
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !537
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !538
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !540 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !543, metadata !DIExpression()), !dbg !544
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !545
  %conv = zext i8 %0 to i32, !dbg !545
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !546
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !548 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !552, metadata !DIExpression()), !dbg !553
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !554
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !555
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !557 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !567, metadata !DIExpression()), !dbg !568
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !569
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !570
  %1 = load i32, i32* %intOne, align 4, !dbg !570
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !571
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !572
  %3 = load i32, i32* %intTwo, align 4, !dbg !572
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !573
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !575 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !579, metadata !DIExpression()), !dbg !580
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !581, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.declare(metadata i64* %i, metadata !583, metadata !DIExpression()), !dbg !584
  store i64 0, i64* %i, align 8, !dbg !585
  br label %for.cond, !dbg !587

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !588
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !590
  %cmp = icmp ult i64 %0, %1, !dbg !591
  br i1 %cmp, label %for.body, label %for.end, !dbg !592

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !593
  %3 = load i64, i64* %i, align 8, !dbg !595
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !593
  %4 = load i8, i8* %arrayidx, align 1, !dbg !593
  %conv = zext i8 %4 to i32, !dbg !593
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !596
  br label %for.inc, !dbg !597

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !598
  %inc = add i64 %5, 1, !dbg !598
  store i64 %inc, i64* %i, align 8, !dbg !598
  br label %for.cond, !dbg !599, !llvm.loop !600

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !602
  ret void, !dbg !603
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !604 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !607, metadata !DIExpression()), !dbg !608
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !609, metadata !DIExpression()), !dbg !610
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !611, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !613, metadata !DIExpression()), !dbg !614
  store i64 0, i64* %numWritten, align 8, !dbg !614
  br label %while.cond, !dbg !615

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !616
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !617
  %cmp = icmp ult i64 %0, %1, !dbg !618
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !619

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !620
  %2 = load i16*, i16** %call, align 8, !dbg !620
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !620
  %4 = load i64, i64* %numWritten, align 8, !dbg !620
  %mul = mul i64 2, %4, !dbg !620
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !620
  %5 = load i8, i8* %arrayidx, align 1, !dbg !620
  %conv = sext i8 %5 to i32, !dbg !620
  %idxprom = sext i32 %conv to i64, !dbg !620
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !620
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !620
  %conv2 = zext i16 %6 to i32, !dbg !620
  %and = and i32 %conv2, 4096, !dbg !620
  %tobool = icmp ne i32 %and, 0, !dbg !620
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !621

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !622
  %7 = load i16*, i16** %call3, align 8, !dbg !622
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !622
  %9 = load i64, i64* %numWritten, align 8, !dbg !622
  %mul4 = mul i64 2, %9, !dbg !622
  %add = add i64 %mul4, 1, !dbg !622
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !622
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !622
  %conv6 = sext i8 %10 to i32, !dbg !622
  %idxprom7 = sext i32 %conv6 to i64, !dbg !622
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !622
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !622
  %conv9 = zext i16 %11 to i32, !dbg !622
  %and10 = and i32 %conv9, 4096, !dbg !622
  %tobool11 = icmp ne i32 %and10, 0, !dbg !621
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !623
  br i1 %12, label %while.body, label %while.end, !dbg !615

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !624, metadata !DIExpression()), !dbg !626
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !627
  %14 = load i64, i64* %numWritten, align 8, !dbg !628
  %mul12 = mul i64 2, %14, !dbg !629
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !627
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !630
  %15 = load i32, i32* %byte, align 4, !dbg !631
  %conv15 = trunc i32 %15 to i8, !dbg !632
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !633
  %17 = load i64, i64* %numWritten, align 8, !dbg !634
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !633
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !635
  %18 = load i64, i64* %numWritten, align 8, !dbg !636
  %inc = add i64 %18, 1, !dbg !636
  store i64 %inc, i64* %numWritten, align 8, !dbg !636
  br label %while.cond, !dbg !615, !llvm.loop !637

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !639
  ret i64 %19, !dbg !640
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !641 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !644, metadata !DIExpression()), !dbg !645
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !646, metadata !DIExpression()), !dbg !647
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !648, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !650, metadata !DIExpression()), !dbg !651
  store i64 0, i64* %numWritten, align 8, !dbg !651
  br label %while.cond, !dbg !652

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !653
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !654
  %cmp = icmp ult i64 %0, %1, !dbg !655
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !656

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !657
  %3 = load i64, i64* %numWritten, align 8, !dbg !658
  %mul = mul i64 2, %3, !dbg !659
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !657
  %4 = load i32, i32* %arrayidx, align 4, !dbg !657
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !660
  %tobool = icmp ne i32 %call, 0, !dbg !660
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !661

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !662
  %6 = load i64, i64* %numWritten, align 8, !dbg !663
  %mul1 = mul i64 2, %6, !dbg !664
  %add = add i64 %mul1, 1, !dbg !665
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !662
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !662
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !666
  %tobool4 = icmp ne i32 %call3, 0, !dbg !661
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !667
  br i1 %8, label %while.body, label %while.end, !dbg !652

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !668, metadata !DIExpression()), !dbg !670
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !671
  %10 = load i64, i64* %numWritten, align 8, !dbg !672
  %mul5 = mul i64 2, %10, !dbg !673
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !671
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !674
  %11 = load i32, i32* %byte, align 4, !dbg !675
  %conv = trunc i32 %11 to i8, !dbg !676
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !677
  %13 = load i64, i64* %numWritten, align 8, !dbg !678
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !677
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !679
  %14 = load i64, i64* %numWritten, align 8, !dbg !680
  %inc = add i64 %14, 1, !dbg !680
  store i64 %inc, i64* %numWritten, align 8, !dbg !680
  br label %while.cond, !dbg !652, !llvm.loop !681

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !683
  ret i64 %15, !dbg !684
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !685 {
entry:
  ret i32 1, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !689 {
entry:
  ret i32 0, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !691 {
entry:
  %call = call i32 @rand() #8, !dbg !692
  %rem = srem i32 %call, 2, !dbg !693
  ret i32 %rem, !dbg !694
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !695 {
entry:
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !697 {
entry:
  ret void, !dbg !698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !699 {
entry:
  ret void, !dbg !700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !701 {
entry:
  ret void, !dbg !702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !703 {
entry:
  ret void, !dbg !704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !705 {
entry:
  ret void, !dbg !706
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !707 {
entry:
  ret void, !dbg !708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !709 {
entry:
  ret void, !dbg !710
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !711 {
entry:
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !713 {
entry:
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !715 {
entry:
  ret void, !dbg !716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !717 {
entry:
  ret void, !dbg !718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !719 {
entry:
  ret void, !dbg !720
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !721 {
entry:
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !723 {
entry:
  ret void, !dbg !724
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !725 {
entry:
  ret void, !dbg !726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !727 {
entry:
  ret void, !dbg !728
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !729 {
entry:
  ret void, !dbg !730
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_037/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_037/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_12_bad", scope: !45, file: !45, line: 37, type: !53, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!94 = !DILocation(line: 59, column: 16, scope: !95)
!95 = distinct !DILexicalBlock(scope: !65, file: !45, line: 57, column: 5)
!96 = !DILocation(line: 59, column: 9, scope: !95)
!97 = !DILocation(line: 61, column: 8, scope: !98)
!98 = distinct !DILexicalBlock(scope: !52, file: !45, line: 61, column: 8)
!99 = !DILocation(line: 61, column: 8, scope: !52)
!100 = !DILocalVariable(name: "i", scope: !101, file: !45, line: 64, type: !23)
!101 = distinct !DILexicalBlock(scope: !102, file: !45, line: 63, column: 9)
!102 = distinct !DILexicalBlock(scope: !98, file: !45, line: 62, column: 5)
!103 = !DILocation(line: 64, column: 17, scope: !101)
!104 = !DILocalVariable(name: "n", scope: !101, file: !45, line: 64, type: !23)
!105 = !DILocation(line: 64, column: 20, scope: !101)
!106 = !DILocalVariable(name: "intVariable", scope: !101, file: !45, line: 64, type: !23)
!107 = !DILocation(line: 64, column: 23, scope: !101)
!108 = !DILocation(line: 65, column: 24, scope: !109)
!109 = distinct !DILexicalBlock(scope: !101, file: !45, line: 65, column: 17)
!110 = !DILocation(line: 65, column: 17, scope: !109)
!111 = !DILocation(line: 65, column: 40, scope: !109)
!112 = !DILocation(line: 65, column: 17, scope: !101)
!113 = !DILocation(line: 68, column: 29, scope: !114)
!114 = distinct !DILexicalBlock(scope: !109, file: !45, line: 66, column: 13)
!115 = !DILocation(line: 69, column: 24, scope: !116)
!116 = distinct !DILexicalBlock(scope: !114, file: !45, line: 69, column: 17)
!117 = !DILocation(line: 69, column: 22, scope: !116)
!118 = !DILocation(line: 69, column: 29, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !45, line: 69, column: 17)
!120 = !DILocation(line: 69, column: 33, scope: !119)
!121 = !DILocation(line: 69, column: 31, scope: !119)
!122 = !DILocation(line: 69, column: 17, scope: !116)
!123 = !DILocation(line: 72, column: 32, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !45, line: 70, column: 17)
!125 = !DILocation(line: 73, column: 17, scope: !124)
!126 = !DILocation(line: 69, column: 37, scope: !119)
!127 = !DILocation(line: 69, column: 17, scope: !119)
!128 = distinct !{!128, !122, !129, !130}
!129 = !DILocation(line: 73, column: 17, scope: !116)
!130 = !{!"llvm.loop.mustprogress"}
!131 = !DILocation(line: 74, column: 30, scope: !114)
!132 = !DILocation(line: 74, column: 17, scope: !114)
!133 = !DILocation(line: 75, column: 13, scope: !114)
!134 = !DILocation(line: 77, column: 5, scope: !102)
!135 = !DILocalVariable(name: "i", scope: !136, file: !45, line: 81, type: !23)
!136 = distinct !DILexicalBlock(scope: !137, file: !45, line: 80, column: 9)
!137 = distinct !DILexicalBlock(scope: !98, file: !45, line: 79, column: 5)
!138 = !DILocation(line: 81, column: 17, scope: !136)
!139 = !DILocalVariable(name: "n", scope: !136, file: !45, line: 81, type: !23)
!140 = !DILocation(line: 81, column: 20, scope: !136)
!141 = !DILocalVariable(name: "intVariable", scope: !136, file: !45, line: 81, type: !23)
!142 = !DILocation(line: 81, column: 23, scope: !136)
!143 = !DILocation(line: 82, column: 24, scope: !144)
!144 = distinct !DILexicalBlock(scope: !136, file: !45, line: 82, column: 17)
!145 = !DILocation(line: 82, column: 17, scope: !144)
!146 = !DILocation(line: 82, column: 40, scope: !144)
!147 = !DILocation(line: 82, column: 17, scope: !136)
!148 = !DILocation(line: 85, column: 21, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !45, line: 85, column: 21)
!150 = distinct !DILexicalBlock(scope: !144, file: !45, line: 83, column: 13)
!151 = !DILocation(line: 85, column: 23, scope: !149)
!152 = !DILocation(line: 85, column: 21, scope: !150)
!153 = !DILocation(line: 87, column: 33, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !45, line: 86, column: 17)
!155 = !DILocation(line: 88, column: 28, scope: !156)
!156 = distinct !DILexicalBlock(scope: !154, file: !45, line: 88, column: 21)
!157 = !DILocation(line: 88, column: 26, scope: !156)
!158 = !DILocation(line: 88, column: 33, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !45, line: 88, column: 21)
!160 = !DILocation(line: 88, column: 37, scope: !159)
!161 = !DILocation(line: 88, column: 35, scope: !159)
!162 = !DILocation(line: 88, column: 21, scope: !156)
!163 = !DILocation(line: 91, column: 36, scope: !164)
!164 = distinct !DILexicalBlock(scope: !159, file: !45, line: 89, column: 21)
!165 = !DILocation(line: 92, column: 21, scope: !164)
!166 = !DILocation(line: 88, column: 41, scope: !159)
!167 = !DILocation(line: 88, column: 21, scope: !159)
!168 = distinct !{!168, !162, !169, !130}
!169 = !DILocation(line: 92, column: 21, scope: !156)
!170 = !DILocation(line: 93, column: 34, scope: !154)
!171 = !DILocation(line: 93, column: 21, scope: !154)
!172 = !DILocation(line: 94, column: 17, scope: !154)
!173 = !DILocation(line: 95, column: 13, scope: !150)
!174 = !DILocation(line: 98, column: 1, scope: !52)
!175 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 107, type: !53, scopeLine: 108, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!176 = !DILocalVariable(name: "data", scope: !175, file: !45, line: 109, type: !42)
!177 = !DILocation(line: 109, column: 12, scope: !175)
!178 = !DILocalVariable(name: "dataBuffer", scope: !175, file: !45, line: 110, type: !58)
!179 = !DILocation(line: 110, column: 10, scope: !175)
!180 = !DILocation(line: 111, column: 12, scope: !175)
!181 = !DILocation(line: 111, column: 10, scope: !175)
!182 = !DILocation(line: 112, column: 8, scope: !183)
!183 = distinct !DILexicalBlock(scope: !175, file: !45, line: 112, column: 8)
!184 = !DILocation(line: 112, column: 8, scope: !175)
!185 = !DILocalVariable(name: "dataLen", scope: !186, file: !45, line: 116, type: !70)
!186 = distinct !DILexicalBlock(scope: !187, file: !45, line: 114, column: 9)
!187 = distinct !DILexicalBlock(scope: !183, file: !45, line: 113, column: 5)
!188 = !DILocation(line: 116, column: 20, scope: !186)
!189 = !DILocation(line: 116, column: 37, scope: !186)
!190 = !DILocation(line: 116, column: 30, scope: !186)
!191 = !DILocalVariable(name: "environment", scope: !186, file: !45, line: 117, type: !42)
!192 = !DILocation(line: 117, column: 20, scope: !186)
!193 = !DILocation(line: 117, column: 34, scope: !186)
!194 = !DILocation(line: 119, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !186, file: !45, line: 119, column: 17)
!196 = !DILocation(line: 119, column: 29, scope: !195)
!197 = !DILocation(line: 119, column: 17, scope: !186)
!198 = !DILocation(line: 122, column: 25, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !45, line: 120, column: 13)
!200 = !DILocation(line: 122, column: 30, scope: !199)
!201 = !DILocation(line: 122, column: 29, scope: !199)
!202 = !DILocation(line: 122, column: 39, scope: !199)
!203 = !DILocation(line: 122, column: 56, scope: !199)
!204 = !DILocation(line: 122, column: 55, scope: !199)
!205 = !DILocation(line: 122, column: 63, scope: !199)
!206 = !DILocation(line: 122, column: 17, scope: !199)
!207 = !DILocation(line: 123, column: 13, scope: !199)
!208 = !DILocation(line: 125, column: 5, scope: !187)
!209 = !DILocalVariable(name: "dataLen", scope: !210, file: !45, line: 130, type: !70)
!210 = distinct !DILexicalBlock(scope: !211, file: !45, line: 128, column: 9)
!211 = distinct !DILexicalBlock(scope: !183, file: !45, line: 127, column: 5)
!212 = !DILocation(line: 130, column: 20, scope: !210)
!213 = !DILocation(line: 130, column: 37, scope: !210)
!214 = !DILocation(line: 130, column: 30, scope: !210)
!215 = !DILocalVariable(name: "environment", scope: !210, file: !45, line: 131, type: !42)
!216 = !DILocation(line: 131, column: 20, scope: !210)
!217 = !DILocation(line: 131, column: 34, scope: !210)
!218 = !DILocation(line: 133, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !210, file: !45, line: 133, column: 17)
!220 = !DILocation(line: 133, column: 29, scope: !219)
!221 = !DILocation(line: 133, column: 17, scope: !210)
!222 = !DILocation(line: 136, column: 25, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !45, line: 134, column: 13)
!224 = !DILocation(line: 136, column: 30, scope: !223)
!225 = !DILocation(line: 136, column: 29, scope: !223)
!226 = !DILocation(line: 136, column: 39, scope: !223)
!227 = !DILocation(line: 136, column: 56, scope: !223)
!228 = !DILocation(line: 136, column: 55, scope: !223)
!229 = !DILocation(line: 136, column: 63, scope: !223)
!230 = !DILocation(line: 136, column: 17, scope: !223)
!231 = !DILocation(line: 137, column: 13, scope: !223)
!232 = !DILocation(line: 140, column: 8, scope: !233)
!233 = distinct !DILexicalBlock(scope: !175, file: !45, line: 140, column: 8)
!234 = !DILocation(line: 140, column: 8, scope: !175)
!235 = !DILocalVariable(name: "i", scope: !236, file: !45, line: 143, type: !23)
!236 = distinct !DILexicalBlock(scope: !237, file: !45, line: 142, column: 9)
!237 = distinct !DILexicalBlock(scope: !233, file: !45, line: 141, column: 5)
!238 = !DILocation(line: 143, column: 17, scope: !236)
!239 = !DILocalVariable(name: "n", scope: !236, file: !45, line: 143, type: !23)
!240 = !DILocation(line: 143, column: 20, scope: !236)
!241 = !DILocalVariable(name: "intVariable", scope: !236, file: !45, line: 143, type: !23)
!242 = !DILocation(line: 143, column: 23, scope: !236)
!243 = !DILocation(line: 144, column: 24, scope: !244)
!244 = distinct !DILexicalBlock(scope: !236, file: !45, line: 144, column: 17)
!245 = !DILocation(line: 144, column: 17, scope: !244)
!246 = !DILocation(line: 144, column: 40, scope: !244)
!247 = !DILocation(line: 144, column: 17, scope: !236)
!248 = !DILocation(line: 147, column: 21, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !45, line: 147, column: 21)
!250 = distinct !DILexicalBlock(scope: !244, file: !45, line: 145, column: 13)
!251 = !DILocation(line: 147, column: 23, scope: !249)
!252 = !DILocation(line: 147, column: 21, scope: !250)
!253 = !DILocation(line: 149, column: 33, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !45, line: 148, column: 17)
!255 = !DILocation(line: 150, column: 28, scope: !256)
!256 = distinct !DILexicalBlock(scope: !254, file: !45, line: 150, column: 21)
!257 = !DILocation(line: 150, column: 26, scope: !256)
!258 = !DILocation(line: 150, column: 33, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !45, line: 150, column: 21)
!260 = !DILocation(line: 150, column: 37, scope: !259)
!261 = !DILocation(line: 150, column: 35, scope: !259)
!262 = !DILocation(line: 150, column: 21, scope: !256)
!263 = !DILocation(line: 153, column: 36, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !45, line: 151, column: 21)
!265 = !DILocation(line: 154, column: 21, scope: !264)
!266 = !DILocation(line: 150, column: 41, scope: !259)
!267 = !DILocation(line: 150, column: 21, scope: !259)
!268 = distinct !{!268, !262, !269, !130}
!269 = !DILocation(line: 154, column: 21, scope: !256)
!270 = !DILocation(line: 155, column: 34, scope: !254)
!271 = !DILocation(line: 155, column: 21, scope: !254)
!272 = !DILocation(line: 156, column: 17, scope: !254)
!273 = !DILocation(line: 157, column: 13, scope: !250)
!274 = !DILocation(line: 159, column: 5, scope: !237)
!275 = !DILocalVariable(name: "i", scope: !276, file: !45, line: 163, type: !23)
!276 = distinct !DILexicalBlock(scope: !277, file: !45, line: 162, column: 9)
!277 = distinct !DILexicalBlock(scope: !233, file: !45, line: 161, column: 5)
!278 = !DILocation(line: 163, column: 17, scope: !276)
!279 = !DILocalVariable(name: "n", scope: !276, file: !45, line: 163, type: !23)
!280 = !DILocation(line: 163, column: 20, scope: !276)
!281 = !DILocalVariable(name: "intVariable", scope: !276, file: !45, line: 163, type: !23)
!282 = !DILocation(line: 163, column: 23, scope: !276)
!283 = !DILocation(line: 164, column: 24, scope: !284)
!284 = distinct !DILexicalBlock(scope: !276, file: !45, line: 164, column: 17)
!285 = !DILocation(line: 164, column: 17, scope: !284)
!286 = !DILocation(line: 164, column: 40, scope: !284)
!287 = !DILocation(line: 164, column: 17, scope: !276)
!288 = !DILocation(line: 167, column: 21, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !45, line: 167, column: 21)
!290 = distinct !DILexicalBlock(scope: !284, file: !45, line: 165, column: 13)
!291 = !DILocation(line: 167, column: 23, scope: !289)
!292 = !DILocation(line: 167, column: 21, scope: !290)
!293 = !DILocation(line: 169, column: 33, scope: !294)
!294 = distinct !DILexicalBlock(scope: !289, file: !45, line: 168, column: 17)
!295 = !DILocation(line: 170, column: 28, scope: !296)
!296 = distinct !DILexicalBlock(scope: !294, file: !45, line: 170, column: 21)
!297 = !DILocation(line: 170, column: 26, scope: !296)
!298 = !DILocation(line: 170, column: 33, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !45, line: 170, column: 21)
!300 = !DILocation(line: 170, column: 37, scope: !299)
!301 = !DILocation(line: 170, column: 35, scope: !299)
!302 = !DILocation(line: 170, column: 21, scope: !296)
!303 = !DILocation(line: 173, column: 36, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !45, line: 171, column: 21)
!305 = !DILocation(line: 174, column: 21, scope: !304)
!306 = !DILocation(line: 170, column: 41, scope: !299)
!307 = !DILocation(line: 170, column: 21, scope: !299)
!308 = distinct !{!308, !302, !309, !130}
!309 = !DILocation(line: 174, column: 21, scope: !296)
!310 = !DILocation(line: 175, column: 34, scope: !294)
!311 = !DILocation(line: 175, column: 21, scope: !294)
!312 = !DILocation(line: 176, column: 17, scope: !294)
!313 = !DILocation(line: 177, column: 13, scope: !290)
!314 = !DILocation(line: 180, column: 1, scope: !175)
!315 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 185, type: !53, scopeLine: 186, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!316 = !DILocalVariable(name: "data", scope: !315, file: !45, line: 187, type: !42)
!317 = !DILocation(line: 187, column: 12, scope: !315)
!318 = !DILocalVariable(name: "dataBuffer", scope: !315, file: !45, line: 188, type: !58)
!319 = !DILocation(line: 188, column: 10, scope: !315)
!320 = !DILocation(line: 189, column: 12, scope: !315)
!321 = !DILocation(line: 189, column: 10, scope: !315)
!322 = !DILocation(line: 190, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !315, file: !45, line: 190, column: 8)
!324 = !DILocation(line: 190, column: 8, scope: !315)
!325 = !DILocation(line: 193, column: 16, scope: !326)
!326 = distinct !DILexicalBlock(scope: !323, file: !45, line: 191, column: 5)
!327 = !DILocation(line: 193, column: 9, scope: !326)
!328 = !DILocation(line: 194, column: 5, scope: !326)
!329 = !DILocation(line: 198, column: 16, scope: !330)
!330 = distinct !DILexicalBlock(scope: !323, file: !45, line: 196, column: 5)
!331 = !DILocation(line: 198, column: 9, scope: !330)
!332 = !DILocation(line: 200, column: 8, scope: !333)
!333 = distinct !DILexicalBlock(scope: !315, file: !45, line: 200, column: 8)
!334 = !DILocation(line: 200, column: 8, scope: !315)
!335 = !DILocalVariable(name: "i", scope: !336, file: !45, line: 203, type: !23)
!336 = distinct !DILexicalBlock(scope: !337, file: !45, line: 202, column: 9)
!337 = distinct !DILexicalBlock(scope: !333, file: !45, line: 201, column: 5)
!338 = !DILocation(line: 203, column: 17, scope: !336)
!339 = !DILocalVariable(name: "n", scope: !336, file: !45, line: 203, type: !23)
!340 = !DILocation(line: 203, column: 20, scope: !336)
!341 = !DILocalVariable(name: "intVariable", scope: !336, file: !45, line: 203, type: !23)
!342 = !DILocation(line: 203, column: 23, scope: !336)
!343 = !DILocation(line: 204, column: 24, scope: !344)
!344 = distinct !DILexicalBlock(scope: !336, file: !45, line: 204, column: 17)
!345 = !DILocation(line: 204, column: 17, scope: !344)
!346 = !DILocation(line: 204, column: 40, scope: !344)
!347 = !DILocation(line: 204, column: 17, scope: !336)
!348 = !DILocation(line: 207, column: 29, scope: !349)
!349 = distinct !DILexicalBlock(scope: !344, file: !45, line: 205, column: 13)
!350 = !DILocation(line: 208, column: 24, scope: !351)
!351 = distinct !DILexicalBlock(scope: !349, file: !45, line: 208, column: 17)
!352 = !DILocation(line: 208, column: 22, scope: !351)
!353 = !DILocation(line: 208, column: 29, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !45, line: 208, column: 17)
!355 = !DILocation(line: 208, column: 33, scope: !354)
!356 = !DILocation(line: 208, column: 31, scope: !354)
!357 = !DILocation(line: 208, column: 17, scope: !351)
!358 = !DILocation(line: 211, column: 32, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !45, line: 209, column: 17)
!360 = !DILocation(line: 212, column: 17, scope: !359)
!361 = !DILocation(line: 208, column: 37, scope: !354)
!362 = !DILocation(line: 208, column: 17, scope: !354)
!363 = distinct !{!363, !357, !364, !130}
!364 = !DILocation(line: 212, column: 17, scope: !351)
!365 = !DILocation(line: 213, column: 30, scope: !349)
!366 = !DILocation(line: 213, column: 17, scope: !349)
!367 = !DILocation(line: 214, column: 13, scope: !349)
!368 = !DILocation(line: 216, column: 5, scope: !337)
!369 = !DILocalVariable(name: "i", scope: !370, file: !45, line: 220, type: !23)
!370 = distinct !DILexicalBlock(scope: !371, file: !45, line: 219, column: 9)
!371 = distinct !DILexicalBlock(scope: !333, file: !45, line: 218, column: 5)
!372 = !DILocation(line: 220, column: 17, scope: !370)
!373 = !DILocalVariable(name: "n", scope: !370, file: !45, line: 220, type: !23)
!374 = !DILocation(line: 220, column: 20, scope: !370)
!375 = !DILocalVariable(name: "intVariable", scope: !370, file: !45, line: 220, type: !23)
!376 = !DILocation(line: 220, column: 23, scope: !370)
!377 = !DILocation(line: 221, column: 24, scope: !378)
!378 = distinct !DILexicalBlock(scope: !370, file: !45, line: 221, column: 17)
!379 = !DILocation(line: 221, column: 17, scope: !378)
!380 = !DILocation(line: 221, column: 40, scope: !378)
!381 = !DILocation(line: 221, column: 17, scope: !370)
!382 = !DILocation(line: 224, column: 29, scope: !383)
!383 = distinct !DILexicalBlock(scope: !378, file: !45, line: 222, column: 13)
!384 = !DILocation(line: 225, column: 24, scope: !385)
!385 = distinct !DILexicalBlock(scope: !383, file: !45, line: 225, column: 17)
!386 = !DILocation(line: 225, column: 22, scope: !385)
!387 = !DILocation(line: 225, column: 29, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !45, line: 225, column: 17)
!389 = !DILocation(line: 225, column: 33, scope: !388)
!390 = !DILocation(line: 225, column: 31, scope: !388)
!391 = !DILocation(line: 225, column: 17, scope: !385)
!392 = !DILocation(line: 228, column: 32, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !45, line: 226, column: 17)
!394 = !DILocation(line: 229, column: 17, scope: !393)
!395 = !DILocation(line: 225, column: 37, scope: !388)
!396 = !DILocation(line: 225, column: 17, scope: !388)
!397 = distinct !{!397, !391, !398, !130}
!398 = !DILocation(line: 229, column: 17, scope: !385)
!399 = !DILocation(line: 230, column: 30, scope: !383)
!400 = !DILocation(line: 230, column: 17, scope: !383)
!401 = !DILocation(line: 231, column: 13, scope: !383)
!402 = !DILocation(line: 234, column: 1, scope: !315)
!403 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_12_good", scope: !45, file: !45, line: 236, type: !53, scopeLine: 237, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!404 = !DILocation(line: 238, column: 5, scope: !403)
!405 = !DILocation(line: 239, column: 5, scope: !403)
!406 = !DILocation(line: 240, column: 1, scope: !403)
!407 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !408, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !42}
!410 = !DILocalVariable(name: "line", arg: 1, scope: !407, file: !3, line: 11, type: !42)
!411 = !DILocation(line: 11, column: 25, scope: !407)
!412 = !DILocation(line: 13, column: 1, scope: !407)
!413 = !DILocation(line: 14, column: 8, scope: !414)
!414 = distinct !DILexicalBlock(scope: !407, file: !3, line: 14, column: 8)
!415 = !DILocation(line: 14, column: 13, scope: !414)
!416 = !DILocation(line: 14, column: 8, scope: !407)
!417 = !DILocation(line: 16, column: 24, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !3, line: 15, column: 5)
!419 = !DILocation(line: 16, column: 9, scope: !418)
!420 = !DILocation(line: 17, column: 5, scope: !418)
!421 = !DILocation(line: 18, column: 5, scope: !407)
!422 = !DILocation(line: 19, column: 1, scope: !407)
!423 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !408, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!424 = !DILocalVariable(name: "line", arg: 1, scope: !423, file: !3, line: 20, type: !42)
!425 = !DILocation(line: 20, column: 29, scope: !423)
!426 = !DILocation(line: 22, column: 8, scope: !427)
!427 = distinct !DILexicalBlock(scope: !423, file: !3, line: 22, column: 8)
!428 = !DILocation(line: 22, column: 13, scope: !427)
!429 = !DILocation(line: 22, column: 8, scope: !423)
!430 = !DILocation(line: 24, column: 24, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !3, line: 23, column: 5)
!432 = !DILocation(line: 24, column: 9, scope: !431)
!433 = !DILocation(line: 25, column: 5, scope: !431)
!434 = !DILocation(line: 26, column: 1, scope: !423)
!435 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !436, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!440 = !DILocalVariable(name: "line", arg: 1, scope: !435, file: !3, line: 27, type: !438)
!441 = !DILocation(line: 27, column: 29, scope: !435)
!442 = !DILocation(line: 29, column: 8, scope: !443)
!443 = distinct !DILexicalBlock(scope: !435, file: !3, line: 29, column: 8)
!444 = !DILocation(line: 29, column: 13, scope: !443)
!445 = !DILocation(line: 29, column: 8, scope: !435)
!446 = !DILocation(line: 31, column: 27, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !3, line: 30, column: 5)
!448 = !DILocation(line: 31, column: 9, scope: !447)
!449 = !DILocation(line: 32, column: 5, scope: !447)
!450 = !DILocation(line: 33, column: 1, scope: !435)
!451 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !452, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !23}
!454 = !DILocalVariable(name: "intNumber", arg: 1, scope: !451, file: !3, line: 35, type: !23)
!455 = !DILocation(line: 35, column: 24, scope: !451)
!456 = !DILocation(line: 37, column: 20, scope: !451)
!457 = !DILocation(line: 37, column: 5, scope: !451)
!458 = !DILocation(line: 38, column: 1, scope: !451)
!459 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !460, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !462}
!462 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!463 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !459, file: !3, line: 40, type: !462)
!464 = !DILocation(line: 40, column: 28, scope: !459)
!465 = !DILocation(line: 42, column: 21, scope: !459)
!466 = !DILocation(line: 42, column: 5, scope: !459)
!467 = !DILocation(line: 43, column: 1, scope: !459)
!468 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !469, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !471}
!471 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!472 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !468, file: !3, line: 45, type: !471)
!473 = !DILocation(line: 45, column: 28, scope: !468)
!474 = !DILocation(line: 47, column: 20, scope: !468)
!475 = !DILocation(line: 47, column: 5, scope: !468)
!476 = !DILocation(line: 48, column: 1, scope: !468)
!477 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !478, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !480}
!480 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!481 = !DILocalVariable(name: "longNumber", arg: 1, scope: !477, file: !3, line: 50, type: !480)
!482 = !DILocation(line: 50, column: 26, scope: !477)
!483 = !DILocation(line: 52, column: 21, scope: !477)
!484 = !DILocation(line: 52, column: 5, scope: !477)
!485 = !DILocation(line: 53, column: 1, scope: !477)
!486 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !487, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !489}
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !490, line: 27, baseType: !491)
!490 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !492, line: 44, baseType: !480)
!492 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!493 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !486, file: !3, line: 55, type: !489)
!494 = !DILocation(line: 55, column: 33, scope: !486)
!495 = !DILocation(line: 57, column: 29, scope: !486)
!496 = !DILocation(line: 57, column: 5, scope: !486)
!497 = !DILocation(line: 58, column: 1, scope: !486)
!498 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !499, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !70}
!501 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !498, file: !3, line: 60, type: !70)
!502 = !DILocation(line: 60, column: 29, scope: !498)
!503 = !DILocation(line: 62, column: 21, scope: !498)
!504 = !DILocation(line: 62, column: 5, scope: !498)
!505 = !DILocation(line: 63, column: 1, scope: !498)
!506 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !507, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !43}
!509 = !DILocalVariable(name: "charHex", arg: 1, scope: !506, file: !3, line: 65, type: !43)
!510 = !DILocation(line: 65, column: 29, scope: !506)
!511 = !DILocation(line: 67, column: 22, scope: !506)
!512 = !DILocation(line: 67, column: 5, scope: !506)
!513 = !DILocation(line: 68, column: 1, scope: !506)
!514 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !515, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !439}
!517 = !DILocalVariable(name: "wideChar", arg: 1, scope: !514, file: !3, line: 70, type: !439)
!518 = !DILocation(line: 70, column: 29, scope: !514)
!519 = !DILocalVariable(name: "s", scope: !514, file: !3, line: 74, type: !520)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 64, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 2)
!523 = !DILocation(line: 74, column: 13, scope: !514)
!524 = !DILocation(line: 75, column: 16, scope: !514)
!525 = !DILocation(line: 75, column: 9, scope: !514)
!526 = !DILocation(line: 75, column: 14, scope: !514)
!527 = !DILocation(line: 76, column: 9, scope: !514)
!528 = !DILocation(line: 76, column: 14, scope: !514)
!529 = !DILocation(line: 77, column: 21, scope: !514)
!530 = !DILocation(line: 77, column: 5, scope: !514)
!531 = !DILocation(line: 78, column: 1, scope: !514)
!532 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !533, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !7}
!535 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !532, file: !3, line: 80, type: !7)
!536 = !DILocation(line: 80, column: 33, scope: !532)
!537 = !DILocation(line: 82, column: 20, scope: !532)
!538 = !DILocation(line: 82, column: 5, scope: !532)
!539 = !DILocation(line: 83, column: 1, scope: !532)
!540 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !541, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !25}
!543 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !540, file: !3, line: 85, type: !25)
!544 = !DILocation(line: 85, column: 45, scope: !540)
!545 = !DILocation(line: 87, column: 22, scope: !540)
!546 = !DILocation(line: 87, column: 5, scope: !540)
!547 = !DILocation(line: 88, column: 1, scope: !540)
!548 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !549, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !551}
!551 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!552 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !548, file: !3, line: 90, type: !551)
!553 = !DILocation(line: 90, column: 29, scope: !548)
!554 = !DILocation(line: 92, column: 20, scope: !548)
!555 = !DILocation(line: 92, column: 5, scope: !548)
!556 = !DILocation(line: 93, column: 1, scope: !548)
!557 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !558, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !562, line: 100, baseType: !563)
!562 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_037/source_code")
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !562, line: 96, size: 64, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !563, file: !562, line: 98, baseType: !23, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !563, file: !562, line: 99, baseType: !23, size: 32, offset: 32)
!567 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !557, file: !3, line: 95, type: !560)
!568 = !DILocation(line: 95, column: 40, scope: !557)
!569 = !DILocation(line: 97, column: 26, scope: !557)
!570 = !DILocation(line: 97, column: 47, scope: !557)
!571 = !DILocation(line: 97, column: 55, scope: !557)
!572 = !DILocation(line: 97, column: 76, scope: !557)
!573 = !DILocation(line: 97, column: 5, scope: !557)
!574 = !DILocation(line: 98, column: 1, scope: !557)
!575 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !576, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !578, !70}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!579 = !DILocalVariable(name: "bytes", arg: 1, scope: !575, file: !3, line: 100, type: !578)
!580 = !DILocation(line: 100, column: 38, scope: !575)
!581 = !DILocalVariable(name: "numBytes", arg: 2, scope: !575, file: !3, line: 100, type: !70)
!582 = !DILocation(line: 100, column: 52, scope: !575)
!583 = !DILocalVariable(name: "i", scope: !575, file: !3, line: 102, type: !70)
!584 = !DILocation(line: 102, column: 12, scope: !575)
!585 = !DILocation(line: 103, column: 12, scope: !586)
!586 = distinct !DILexicalBlock(scope: !575, file: !3, line: 103, column: 5)
!587 = !DILocation(line: 103, column: 10, scope: !586)
!588 = !DILocation(line: 103, column: 17, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !3, line: 103, column: 5)
!590 = !DILocation(line: 103, column: 21, scope: !589)
!591 = !DILocation(line: 103, column: 19, scope: !589)
!592 = !DILocation(line: 103, column: 5, scope: !586)
!593 = !DILocation(line: 105, column: 24, scope: !594)
!594 = distinct !DILexicalBlock(scope: !589, file: !3, line: 104, column: 5)
!595 = !DILocation(line: 105, column: 30, scope: !594)
!596 = !DILocation(line: 105, column: 9, scope: !594)
!597 = !DILocation(line: 106, column: 5, scope: !594)
!598 = !DILocation(line: 103, column: 31, scope: !589)
!599 = !DILocation(line: 103, column: 5, scope: !589)
!600 = distinct !{!600, !592, !601, !130}
!601 = !DILocation(line: 106, column: 5, scope: !586)
!602 = !DILocation(line: 107, column: 5, scope: !575)
!603 = !DILocation(line: 108, column: 1, scope: !575)
!604 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !605, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DISubroutineType(types: !606)
!606 = !{!70, !578, !70, !42}
!607 = !DILocalVariable(name: "bytes", arg: 1, scope: !604, file: !3, line: 113, type: !578)
!608 = !DILocation(line: 113, column: 39, scope: !604)
!609 = !DILocalVariable(name: "numBytes", arg: 2, scope: !604, file: !3, line: 113, type: !70)
!610 = !DILocation(line: 113, column: 53, scope: !604)
!611 = !DILocalVariable(name: "hex", arg: 3, scope: !604, file: !3, line: 113, type: !42)
!612 = !DILocation(line: 113, column: 71, scope: !604)
!613 = !DILocalVariable(name: "numWritten", scope: !604, file: !3, line: 115, type: !70)
!614 = !DILocation(line: 115, column: 12, scope: !604)
!615 = !DILocation(line: 121, column: 5, scope: !604)
!616 = !DILocation(line: 121, column: 12, scope: !604)
!617 = !DILocation(line: 121, column: 25, scope: !604)
!618 = !DILocation(line: 121, column: 23, scope: !604)
!619 = !DILocation(line: 121, column: 34, scope: !604)
!620 = !DILocation(line: 121, column: 37, scope: !604)
!621 = !DILocation(line: 121, column: 67, scope: !604)
!622 = !DILocation(line: 121, column: 70, scope: !604)
!623 = !DILocation(line: 0, scope: !604)
!624 = !DILocalVariable(name: "byte", scope: !625, file: !3, line: 123, type: !23)
!625 = distinct !DILexicalBlock(scope: !604, file: !3, line: 122, column: 5)
!626 = !DILocation(line: 123, column: 13, scope: !625)
!627 = !DILocation(line: 124, column: 17, scope: !625)
!628 = !DILocation(line: 124, column: 25, scope: !625)
!629 = !DILocation(line: 124, column: 23, scope: !625)
!630 = !DILocation(line: 124, column: 9, scope: !625)
!631 = !DILocation(line: 125, column: 45, scope: !625)
!632 = !DILocation(line: 125, column: 29, scope: !625)
!633 = !DILocation(line: 125, column: 9, scope: !625)
!634 = !DILocation(line: 125, column: 15, scope: !625)
!635 = !DILocation(line: 125, column: 27, scope: !625)
!636 = !DILocation(line: 126, column: 9, scope: !625)
!637 = distinct !{!637, !615, !638, !130}
!638 = !DILocation(line: 127, column: 5, scope: !604)
!639 = !DILocation(line: 129, column: 12, scope: !604)
!640 = !DILocation(line: 129, column: 5, scope: !604)
!641 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !642, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DISubroutineType(types: !643)
!643 = !{!70, !578, !70, !438}
!644 = !DILocalVariable(name: "bytes", arg: 1, scope: !641, file: !3, line: 135, type: !578)
!645 = !DILocation(line: 135, column: 41, scope: !641)
!646 = !DILocalVariable(name: "numBytes", arg: 2, scope: !641, file: !3, line: 135, type: !70)
!647 = !DILocation(line: 135, column: 55, scope: !641)
!648 = !DILocalVariable(name: "hex", arg: 3, scope: !641, file: !3, line: 135, type: !438)
!649 = !DILocation(line: 135, column: 76, scope: !641)
!650 = !DILocalVariable(name: "numWritten", scope: !641, file: !3, line: 137, type: !70)
!651 = !DILocation(line: 137, column: 12, scope: !641)
!652 = !DILocation(line: 143, column: 5, scope: !641)
!653 = !DILocation(line: 143, column: 12, scope: !641)
!654 = !DILocation(line: 143, column: 25, scope: !641)
!655 = !DILocation(line: 143, column: 23, scope: !641)
!656 = !DILocation(line: 143, column: 34, scope: !641)
!657 = !DILocation(line: 143, column: 47, scope: !641)
!658 = !DILocation(line: 143, column: 55, scope: !641)
!659 = !DILocation(line: 143, column: 53, scope: !641)
!660 = !DILocation(line: 143, column: 37, scope: !641)
!661 = !DILocation(line: 143, column: 68, scope: !641)
!662 = !DILocation(line: 143, column: 81, scope: !641)
!663 = !DILocation(line: 143, column: 89, scope: !641)
!664 = !DILocation(line: 143, column: 87, scope: !641)
!665 = !DILocation(line: 143, column: 100, scope: !641)
!666 = !DILocation(line: 143, column: 71, scope: !641)
!667 = !DILocation(line: 0, scope: !641)
!668 = !DILocalVariable(name: "byte", scope: !669, file: !3, line: 145, type: !23)
!669 = distinct !DILexicalBlock(scope: !641, file: !3, line: 144, column: 5)
!670 = !DILocation(line: 145, column: 13, scope: !669)
!671 = !DILocation(line: 146, column: 18, scope: !669)
!672 = !DILocation(line: 146, column: 26, scope: !669)
!673 = !DILocation(line: 146, column: 24, scope: !669)
!674 = !DILocation(line: 146, column: 9, scope: !669)
!675 = !DILocation(line: 147, column: 45, scope: !669)
!676 = !DILocation(line: 147, column: 29, scope: !669)
!677 = !DILocation(line: 147, column: 9, scope: !669)
!678 = !DILocation(line: 147, column: 15, scope: !669)
!679 = !DILocation(line: 147, column: 27, scope: !669)
!680 = !DILocation(line: 148, column: 9, scope: !669)
!681 = distinct !{!681, !652, !682, !130}
!682 = !DILocation(line: 149, column: 5, scope: !641)
!683 = !DILocation(line: 151, column: 12, scope: !641)
!684 = !DILocation(line: 151, column: 5, scope: !641)
!685 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !686, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!686 = !DISubroutineType(types: !687)
!687 = !{!23}
!688 = !DILocation(line: 158, column: 5, scope: !685)
!689 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !686, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!690 = !DILocation(line: 163, column: 5, scope: !689)
!691 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !686, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DILocation(line: 168, column: 13, scope: !691)
!693 = !DILocation(line: 168, column: 20, scope: !691)
!694 = !DILocation(line: 168, column: 5, scope: !691)
!695 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!696 = !DILocation(line: 187, column: 16, scope: !695)
!697 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!698 = !DILocation(line: 188, column: 16, scope: !697)
!699 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!700 = !DILocation(line: 189, column: 16, scope: !699)
!701 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!702 = !DILocation(line: 190, column: 16, scope: !701)
!703 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!704 = !DILocation(line: 191, column: 16, scope: !703)
!705 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!706 = !DILocation(line: 192, column: 16, scope: !705)
!707 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!708 = !DILocation(line: 193, column: 16, scope: !707)
!709 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!710 = !DILocation(line: 194, column: 16, scope: !709)
!711 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!712 = !DILocation(line: 195, column: 16, scope: !711)
!713 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!714 = !DILocation(line: 198, column: 15, scope: !713)
!715 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!716 = !DILocation(line: 199, column: 15, scope: !715)
!717 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!718 = !DILocation(line: 200, column: 15, scope: !717)
!719 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!720 = !DILocation(line: 201, column: 15, scope: !719)
!721 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!722 = !DILocation(line: 202, column: 15, scope: !721)
!723 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!724 = !DILocation(line: 203, column: 15, scope: !723)
!725 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!726 = !DILocation(line: 204, column: 15, scope: !725)
!727 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!728 = !DILocation(line: 205, column: 15, scope: !727)
!729 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!730 = !DILocation(line: 206, column: 15, scope: !729)
