; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_12.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_12_bad() #0 !dbg !9 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !12, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !16, metadata !DIExpression()), !dbg !20
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !20
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !20
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !21
  store i8* %arraydecay, i8** %data, align 8, !dbg !22
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !23
  %tobool = icmp ne i32 %call, 0, !dbg !23
  br i1 %tobool, label %if.then, label %if.else, !dbg !25

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !26, metadata !DIExpression()), !dbg !32
  %1 = load i8*, i8** %data, align 8, !dbg !33
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !34
  store i64 %call1, i64* %dataLen, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !35, metadata !DIExpression()), !dbg !36
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !37
  store i8* %call2, i8** %environment, align 8, !dbg !36
  %2 = load i8*, i8** %environment, align 8, !dbg !38
  %cmp = icmp ne i8* %2, null, !dbg !40
  br i1 %cmp, label %if.then3, label %if.end, !dbg !41

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !42
  %4 = load i64, i64* %dataLen, align 8, !dbg !44
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !45
  %5 = load i8*, i8** %environment, align 8, !dbg !46
  %6 = load i64, i64* %dataLen, align 8, !dbg !47
  %sub = sub i64 100, %6, !dbg !48
  %sub4 = sub i64 %sub, 1, !dbg !49
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !50
  br label %if.end, !dbg !51

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end7, !dbg !52

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %data, align 8, !dbg !53
  %call6 = call i8* @strcpy(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !55
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %call8 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !56
  %tobool9 = icmp ne i32 %call8, 0, !dbg !56
  br i1 %tobool9, label %if.then10, label %if.else17, !dbg !58

if.then10:                                        ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i32* %i, metadata !59, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %n, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !66, metadata !DIExpression()), !dbg !67
  %8 = load i8*, i8** %data, align 8, !dbg !68
  %call11 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #7, !dbg !70
  %cmp12 = icmp eq i32 %call11, 1, !dbg !71
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !72

if.then13:                                        ; preds = %if.then10
  store i32 0, i32* %intVariable, align 4, !dbg !73
  store i32 0, i32* %i, align 4, !dbg !75
  br label %for.cond, !dbg !77

for.cond:                                         ; preds = %for.inc, %if.then13
  %9 = load i32, i32* %i, align 4, !dbg !78
  %10 = load i32, i32* %n, align 4, !dbg !80
  %cmp14 = icmp slt i32 %9, %10, !dbg !81
  br i1 %cmp14, label %for.body, label %for.end, !dbg !82

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !83
  %inc = add nsw i32 %11, 1, !dbg !83
  store i32 %inc, i32* %intVariable, align 4, !dbg !83
  br label %for.inc, !dbg !85

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !86
  %inc15 = add nsw i32 %12, 1, !dbg !86
  store i32 %inc15, i32* %i, align 4, !dbg !86
  br label %for.cond, !dbg !87, !llvm.loop !88

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !91
  call void @printIntLine(i32 %13), !dbg !92
  br label %if.end16, !dbg !93

if.end16:                                         ; preds = %for.end, %if.then10
  br label %if.end35, !dbg !94

if.else17:                                        ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i32* %i18, metadata !95, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %n19, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %intVariable20, metadata !101, metadata !DIExpression()), !dbg !102
  %14 = load i8*, i8** %data, align 8, !dbg !103
  %call21 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n19) #7, !dbg !105
  %cmp22 = icmp eq i32 %call21, 1, !dbg !106
  br i1 %cmp22, label %if.then23, label %if.end34, !dbg !107

if.then23:                                        ; preds = %if.else17
  %15 = load i32, i32* %n19, align 4, !dbg !108
  %cmp24 = icmp slt i32 %15, 10000, !dbg !111
  br i1 %cmp24, label %if.then25, label %if.end33, !dbg !112

if.then25:                                        ; preds = %if.then23
  store i32 0, i32* %intVariable20, align 4, !dbg !113
  store i32 0, i32* %i18, align 4, !dbg !115
  br label %for.cond26, !dbg !117

for.cond26:                                       ; preds = %for.inc30, %if.then25
  %16 = load i32, i32* %i18, align 4, !dbg !118
  %17 = load i32, i32* %n19, align 4, !dbg !120
  %cmp27 = icmp slt i32 %16, %17, !dbg !121
  br i1 %cmp27, label %for.body28, label %for.end32, !dbg !122

for.body28:                                       ; preds = %for.cond26
  %18 = load i32, i32* %intVariable20, align 4, !dbg !123
  %inc29 = add nsw i32 %18, 1, !dbg !123
  store i32 %inc29, i32* %intVariable20, align 4, !dbg !123
  br label %for.inc30, !dbg !125

for.inc30:                                        ; preds = %for.body28
  %19 = load i32, i32* %i18, align 4, !dbg !126
  %inc31 = add nsw i32 %19, 1, !dbg !126
  store i32 %inc31, i32* %i18, align 4, !dbg !126
  br label %for.cond26, !dbg !127, !llvm.loop !128

for.end32:                                        ; preds = %for.cond26
  %20 = load i32, i32* %intVariable20, align 4, !dbg !130
  call void @printIntLine(i32 %20), !dbg !131
  br label %if.end33, !dbg !132

if.end33:                                         ; preds = %for.end32, %if.then23
  br label %if.end34, !dbg !133

if.end34:                                         ; preds = %if.end33, %if.else17
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end16
  ret void, !dbg !134
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @globalReturnsTrueOrFalse(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !135 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !139
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !139
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !140
  store i8* %arraydecay, i8** %data, align 8, !dbg !141
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !142
  %tobool = icmp ne i32 %call, 0, !dbg !142
  br i1 %tobool, label %if.then, label %if.else, !dbg !144

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !145, metadata !DIExpression()), !dbg !148
  %1 = load i8*, i8** %data, align 8, !dbg !149
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !150
  store i64 %call1, i64* %dataLen, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !151, metadata !DIExpression()), !dbg !152
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !153
  store i8* %call2, i8** %environment, align 8, !dbg !152
  %2 = load i8*, i8** %environment, align 8, !dbg !154
  %cmp = icmp ne i8* %2, null, !dbg !156
  br i1 %cmp, label %if.then3, label %if.end, !dbg !157

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data, align 8, !dbg !158
  %4 = load i64, i64* %dataLen, align 8, !dbg !160
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !161
  %5 = load i8*, i8** %environment, align 8, !dbg !162
  %6 = load i64, i64* %dataLen, align 8, !dbg !163
  %sub = sub i64 100, %6, !dbg !164
  %sub4 = sub i64 %sub, 1, !dbg !165
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !166
  br label %if.end, !dbg !167

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end17, !dbg !168

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen6, metadata !169, metadata !DIExpression()), !dbg !172
  %7 = load i8*, i8** %data, align 8, !dbg !173
  %call7 = call i64 @strlen(i8* %7) #6, !dbg !174
  store i64 %call7, i64* %dataLen6, align 8, !dbg !172
  call void @llvm.dbg.declare(metadata i8** %environment8, metadata !175, metadata !DIExpression()), !dbg !176
  %call9 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !177
  store i8* %call9, i8** %environment8, align 8, !dbg !176
  %8 = load i8*, i8** %environment8, align 8, !dbg !178
  %cmp10 = icmp ne i8* %8, null, !dbg !180
  br i1 %cmp10, label %if.then11, label %if.end16, !dbg !181

if.then11:                                        ; preds = %if.else
  %9 = load i8*, i8** %data, align 8, !dbg !182
  %10 = load i64, i64* %dataLen6, align 8, !dbg !184
  %add.ptr12 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !185
  %11 = load i8*, i8** %environment8, align 8, !dbg !186
  %12 = load i64, i64* %dataLen6, align 8, !dbg !187
  %sub13 = sub i64 100, %12, !dbg !188
  %sub14 = sub i64 %sub13, 1, !dbg !189
  %call15 = call i8* @strncat(i8* %add.ptr12, i8* %11, i64 %sub14) #7, !dbg !190
  br label %if.end16, !dbg !191

if.end16:                                         ; preds = %if.then11, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %call18 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !192
  %tobool19 = icmp ne i32 %call18, 0, !dbg !192
  br i1 %tobool19, label %if.then20, label %if.else30, !dbg !194

if.then20:                                        ; preds = %if.end17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !195, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %n, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !201, metadata !DIExpression()), !dbg !202
  %13 = load i8*, i8** %data, align 8, !dbg !203
  %call21 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #7, !dbg !205
  %cmp22 = icmp eq i32 %call21, 1, !dbg !206
  br i1 %cmp22, label %if.then23, label %if.end29, !dbg !207

if.then23:                                        ; preds = %if.then20
  %14 = load i32, i32* %n, align 4, !dbg !208
  %cmp24 = icmp slt i32 %14, 10000, !dbg !211
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !212

if.then25:                                        ; preds = %if.then23
  store i32 0, i32* %intVariable, align 4, !dbg !213
  store i32 0, i32* %i, align 4, !dbg !215
  br label %for.cond, !dbg !217

for.cond:                                         ; preds = %for.inc, %if.then25
  %15 = load i32, i32* %i, align 4, !dbg !218
  %16 = load i32, i32* %n, align 4, !dbg !220
  %cmp26 = icmp slt i32 %15, %16, !dbg !221
  br i1 %cmp26, label %for.body, label %for.end, !dbg !222

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !223
  %inc = add nsw i32 %17, 1, !dbg !223
  store i32 %inc, i32* %intVariable, align 4, !dbg !223
  br label %for.inc, !dbg !225

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !226
  %inc27 = add nsw i32 %18, 1, !dbg !226
  store i32 %inc27, i32* %i, align 4, !dbg !226
  br label %for.cond, !dbg !227, !llvm.loop !228

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !230
  call void @printIntLine(i32 %19), !dbg !231
  br label %if.end28, !dbg !232

if.end28:                                         ; preds = %for.end, %if.then23
  br label %if.end29, !dbg !233

if.end29:                                         ; preds = %if.end28, %if.then20
  br label %if.end48, !dbg !234

if.else30:                                        ; preds = %if.end17
  call void @llvm.dbg.declare(metadata i32* %i31, metadata !235, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata i32* %n32, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata i32* %intVariable33, metadata !241, metadata !DIExpression()), !dbg !242
  %20 = load i8*, i8** %data, align 8, !dbg !243
  %call34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n32) #7, !dbg !245
  %cmp35 = icmp eq i32 %call34, 1, !dbg !246
  br i1 %cmp35, label %if.then36, label %if.end47, !dbg !247

if.then36:                                        ; preds = %if.else30
  %21 = load i32, i32* %n32, align 4, !dbg !248
  %cmp37 = icmp slt i32 %21, 10000, !dbg !251
  br i1 %cmp37, label %if.then38, label %if.end46, !dbg !252

if.then38:                                        ; preds = %if.then36
  store i32 0, i32* %intVariable33, align 4, !dbg !253
  store i32 0, i32* %i31, align 4, !dbg !255
  br label %for.cond39, !dbg !257

for.cond39:                                       ; preds = %for.inc43, %if.then38
  %22 = load i32, i32* %i31, align 4, !dbg !258
  %23 = load i32, i32* %n32, align 4, !dbg !260
  %cmp40 = icmp slt i32 %22, %23, !dbg !261
  br i1 %cmp40, label %for.body41, label %for.end45, !dbg !262

for.body41:                                       ; preds = %for.cond39
  %24 = load i32, i32* %intVariable33, align 4, !dbg !263
  %inc42 = add nsw i32 %24, 1, !dbg !263
  store i32 %inc42, i32* %intVariable33, align 4, !dbg !263
  br label %for.inc43, !dbg !265

for.inc43:                                        ; preds = %for.body41
  %25 = load i32, i32* %i31, align 4, !dbg !266
  %inc44 = add nsw i32 %25, 1, !dbg !266
  store i32 %inc44, i32* %i31, align 4, !dbg !266
  br label %for.cond39, !dbg !267, !llvm.loop !268

for.end45:                                        ; preds = %for.cond39
  %26 = load i32, i32* %intVariable33, align 4, !dbg !270
  call void @printIntLine(i32 %26), !dbg !271
  br label %if.end46, !dbg !272

if.end46:                                         ; preds = %for.end45, %if.then36
  br label %if.end47, !dbg !273

if.end47:                                         ; preds = %if.end46, %if.else30
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end29
  ret void, !dbg !274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !275 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i12 = alloca i32, align 4
  %n13 = alloca i32, align 4
  %intVariable14 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !279
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !279
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !280
  store i8* %arraydecay, i8** %data, align 8, !dbg !281
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !282
  %tobool = icmp ne i32 %call, 0, !dbg !282
  br i1 %tobool, label %if.then, label %if.else, !dbg !284

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !285
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !287
  br label %if.end, !dbg !288

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !289
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !291
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !292
  %tobool4 = icmp ne i32 %call3, 0, !dbg !292
  br i1 %tobool4, label %if.then5, label %if.else11, !dbg !294

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !295, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata i32* %n, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !301, metadata !DIExpression()), !dbg !302
  %3 = load i8*, i8** %data, align 8, !dbg !303
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n) #7, !dbg !305
  %cmp = icmp eq i32 %call6, 1, !dbg !306
  br i1 %cmp, label %if.then7, label %if.end10, !dbg !307

if.then7:                                         ; preds = %if.then5
  store i32 0, i32* %intVariable, align 4, !dbg !308
  store i32 0, i32* %i, align 4, !dbg !310
  br label %for.cond, !dbg !312

for.cond:                                         ; preds = %for.inc, %if.then7
  %4 = load i32, i32* %i, align 4, !dbg !313
  %5 = load i32, i32* %n, align 4, !dbg !315
  %cmp8 = icmp slt i32 %4, %5, !dbg !316
  br i1 %cmp8, label %for.body, label %for.end, !dbg !317

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !318
  %inc = add nsw i32 %6, 1, !dbg !318
  store i32 %inc, i32* %intVariable, align 4, !dbg !318
  br label %for.inc, !dbg !320

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !321
  %inc9 = add nsw i32 %7, 1, !dbg !321
  store i32 %inc9, i32* %i, align 4, !dbg !321
  br label %for.cond, !dbg !322, !llvm.loop !323

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !325
  call void @printIntLine(i32 %8), !dbg !326
  br label %if.end10, !dbg !327

if.end10:                                         ; preds = %for.end, %if.then5
  br label %if.end26, !dbg !328

if.else11:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i12, metadata !329, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %n13, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata i32* %intVariable14, metadata !335, metadata !DIExpression()), !dbg !336
  %9 = load i8*, i8** %data, align 8, !dbg !337
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n13) #7, !dbg !339
  %cmp16 = icmp eq i32 %call15, 1, !dbg !340
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !341

if.then17:                                        ; preds = %if.else11
  store i32 0, i32* %intVariable14, align 4, !dbg !342
  store i32 0, i32* %i12, align 4, !dbg !344
  br label %for.cond18, !dbg !346

for.cond18:                                       ; preds = %for.inc22, %if.then17
  %10 = load i32, i32* %i12, align 4, !dbg !347
  %11 = load i32, i32* %n13, align 4, !dbg !349
  %cmp19 = icmp slt i32 %10, %11, !dbg !350
  br i1 %cmp19, label %for.body20, label %for.end24, !dbg !351

for.body20:                                       ; preds = %for.cond18
  %12 = load i32, i32* %intVariable14, align 4, !dbg !352
  %inc21 = add nsw i32 %12, 1, !dbg !352
  store i32 %inc21, i32* %intVariable14, align 4, !dbg !352
  br label %for.inc22, !dbg !354

for.inc22:                                        ; preds = %for.body20
  %13 = load i32, i32* %i12, align 4, !dbg !355
  %inc23 = add nsw i32 %13, 1, !dbg !355
  store i32 %inc23, i32* %i12, align 4, !dbg !355
  br label %for.cond18, !dbg !356, !llvm.loop !357

for.end24:                                        ; preds = %for.cond18
  %14 = load i32, i32* %intVariable14, align 4, !dbg !359
  call void @printIntLine(i32 %14), !dbg !360
  br label %if.end25, !dbg !361

if.end25:                                         ; preds = %for.end24, %if.else11
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end10
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_12_good() #0 !dbg !363 {
entry:
  call void @goodB2G(), !dbg !364
  call void @goodG2B(), !dbg !365
  ret void, !dbg !366
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_037/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_12_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 39, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocation(line: 39, column: 12, scope: !9)
!16 = !DILocalVariable(name: "dataBuffer", scope: !9, file: !1, line: 40, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 100)
!20 = !DILocation(line: 40, column: 10, scope: !9)
!21 = !DILocation(line: 41, column: 12, scope: !9)
!22 = !DILocation(line: 41, column: 10, scope: !9)
!23 = !DILocation(line: 42, column: 8, scope: !24)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 42, column: 8)
!25 = !DILocation(line: 42, column: 8, scope: !9)
!26 = !DILocalVariable(name: "dataLen", scope: !27, file: !1, line: 46, type: !29)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 44, column: 9)
!28 = distinct !DILexicalBlock(scope: !24, file: !1, line: 43, column: 5)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DILocation(line: 46, column: 20, scope: !27)
!33 = !DILocation(line: 46, column: 37, scope: !27)
!34 = !DILocation(line: 46, column: 30, scope: !27)
!35 = !DILocalVariable(name: "environment", scope: !27, file: !1, line: 47, type: !13)
!36 = !DILocation(line: 47, column: 20, scope: !27)
!37 = !DILocation(line: 47, column: 34, scope: !27)
!38 = !DILocation(line: 49, column: 17, scope: !39)
!39 = distinct !DILexicalBlock(scope: !27, file: !1, line: 49, column: 17)
!40 = !DILocation(line: 49, column: 29, scope: !39)
!41 = !DILocation(line: 49, column: 17, scope: !27)
!42 = !DILocation(line: 52, column: 25, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 50, column: 13)
!44 = !DILocation(line: 52, column: 30, scope: !43)
!45 = !DILocation(line: 52, column: 29, scope: !43)
!46 = !DILocation(line: 52, column: 39, scope: !43)
!47 = !DILocation(line: 52, column: 56, scope: !43)
!48 = !DILocation(line: 52, column: 55, scope: !43)
!49 = !DILocation(line: 52, column: 63, scope: !43)
!50 = !DILocation(line: 52, column: 17, scope: !43)
!51 = !DILocation(line: 53, column: 13, scope: !43)
!52 = !DILocation(line: 55, column: 5, scope: !28)
!53 = !DILocation(line: 59, column: 16, scope: !54)
!54 = distinct !DILexicalBlock(scope: !24, file: !1, line: 57, column: 5)
!55 = !DILocation(line: 59, column: 9, scope: !54)
!56 = !DILocation(line: 61, column: 8, scope: !57)
!57 = distinct !DILexicalBlock(scope: !9, file: !1, line: 61, column: 8)
!58 = !DILocation(line: 61, column: 8, scope: !9)
!59 = !DILocalVariable(name: "i", scope: !60, file: !1, line: 64, type: !62)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 63, column: 9)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 62, column: 5)
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DILocation(line: 64, column: 17, scope: !60)
!64 = !DILocalVariable(name: "n", scope: !60, file: !1, line: 64, type: !62)
!65 = !DILocation(line: 64, column: 20, scope: !60)
!66 = !DILocalVariable(name: "intVariable", scope: !60, file: !1, line: 64, type: !62)
!67 = !DILocation(line: 64, column: 23, scope: !60)
!68 = !DILocation(line: 65, column: 24, scope: !69)
!69 = distinct !DILexicalBlock(scope: !60, file: !1, line: 65, column: 17)
!70 = !DILocation(line: 65, column: 17, scope: !69)
!71 = !DILocation(line: 65, column: 40, scope: !69)
!72 = !DILocation(line: 65, column: 17, scope: !60)
!73 = !DILocation(line: 68, column: 29, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 66, column: 13)
!75 = !DILocation(line: 69, column: 24, scope: !76)
!76 = distinct !DILexicalBlock(scope: !74, file: !1, line: 69, column: 17)
!77 = !DILocation(line: 69, column: 22, scope: !76)
!78 = !DILocation(line: 69, column: 29, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !1, line: 69, column: 17)
!80 = !DILocation(line: 69, column: 33, scope: !79)
!81 = !DILocation(line: 69, column: 31, scope: !79)
!82 = !DILocation(line: 69, column: 17, scope: !76)
!83 = !DILocation(line: 72, column: 32, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 70, column: 17)
!85 = !DILocation(line: 73, column: 17, scope: !84)
!86 = !DILocation(line: 69, column: 37, scope: !79)
!87 = !DILocation(line: 69, column: 17, scope: !79)
!88 = distinct !{!88, !82, !89, !90}
!89 = !DILocation(line: 73, column: 17, scope: !76)
!90 = !{!"llvm.loop.mustprogress"}
!91 = !DILocation(line: 74, column: 30, scope: !74)
!92 = !DILocation(line: 74, column: 17, scope: !74)
!93 = !DILocation(line: 75, column: 13, scope: !74)
!94 = !DILocation(line: 77, column: 5, scope: !61)
!95 = !DILocalVariable(name: "i", scope: !96, file: !1, line: 81, type: !62)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 80, column: 9)
!97 = distinct !DILexicalBlock(scope: !57, file: !1, line: 79, column: 5)
!98 = !DILocation(line: 81, column: 17, scope: !96)
!99 = !DILocalVariable(name: "n", scope: !96, file: !1, line: 81, type: !62)
!100 = !DILocation(line: 81, column: 20, scope: !96)
!101 = !DILocalVariable(name: "intVariable", scope: !96, file: !1, line: 81, type: !62)
!102 = !DILocation(line: 81, column: 23, scope: !96)
!103 = !DILocation(line: 82, column: 24, scope: !104)
!104 = distinct !DILexicalBlock(scope: !96, file: !1, line: 82, column: 17)
!105 = !DILocation(line: 82, column: 17, scope: !104)
!106 = !DILocation(line: 82, column: 40, scope: !104)
!107 = !DILocation(line: 82, column: 17, scope: !96)
!108 = !DILocation(line: 85, column: 21, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 85, column: 21)
!110 = distinct !DILexicalBlock(scope: !104, file: !1, line: 83, column: 13)
!111 = !DILocation(line: 85, column: 23, scope: !109)
!112 = !DILocation(line: 85, column: 21, scope: !110)
!113 = !DILocation(line: 87, column: 33, scope: !114)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 86, column: 17)
!115 = !DILocation(line: 88, column: 28, scope: !116)
!116 = distinct !DILexicalBlock(scope: !114, file: !1, line: 88, column: 21)
!117 = !DILocation(line: 88, column: 26, scope: !116)
!118 = !DILocation(line: 88, column: 33, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 88, column: 21)
!120 = !DILocation(line: 88, column: 37, scope: !119)
!121 = !DILocation(line: 88, column: 35, scope: !119)
!122 = !DILocation(line: 88, column: 21, scope: !116)
!123 = !DILocation(line: 91, column: 36, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !1, line: 89, column: 21)
!125 = !DILocation(line: 92, column: 21, scope: !124)
!126 = !DILocation(line: 88, column: 41, scope: !119)
!127 = !DILocation(line: 88, column: 21, scope: !119)
!128 = distinct !{!128, !122, !129, !90}
!129 = !DILocation(line: 92, column: 21, scope: !116)
!130 = !DILocation(line: 93, column: 34, scope: !114)
!131 = !DILocation(line: 93, column: 21, scope: !114)
!132 = !DILocation(line: 94, column: 17, scope: !114)
!133 = !DILocation(line: 95, column: 13, scope: !110)
!134 = !DILocation(line: 98, column: 1, scope: !9)
!135 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 107, type: !10, scopeLine: 108, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!136 = !DILocalVariable(name: "data", scope: !135, file: !1, line: 109, type: !13)
!137 = !DILocation(line: 109, column: 12, scope: !135)
!138 = !DILocalVariable(name: "dataBuffer", scope: !135, file: !1, line: 110, type: !17)
!139 = !DILocation(line: 110, column: 10, scope: !135)
!140 = !DILocation(line: 111, column: 12, scope: !135)
!141 = !DILocation(line: 111, column: 10, scope: !135)
!142 = !DILocation(line: 112, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !135, file: !1, line: 112, column: 8)
!144 = !DILocation(line: 112, column: 8, scope: !135)
!145 = !DILocalVariable(name: "dataLen", scope: !146, file: !1, line: 116, type: !29)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 114, column: 9)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 113, column: 5)
!148 = !DILocation(line: 116, column: 20, scope: !146)
!149 = !DILocation(line: 116, column: 37, scope: !146)
!150 = !DILocation(line: 116, column: 30, scope: !146)
!151 = !DILocalVariable(name: "environment", scope: !146, file: !1, line: 117, type: !13)
!152 = !DILocation(line: 117, column: 20, scope: !146)
!153 = !DILocation(line: 117, column: 34, scope: !146)
!154 = !DILocation(line: 119, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !146, file: !1, line: 119, column: 17)
!156 = !DILocation(line: 119, column: 29, scope: !155)
!157 = !DILocation(line: 119, column: 17, scope: !146)
!158 = !DILocation(line: 122, column: 25, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !1, line: 120, column: 13)
!160 = !DILocation(line: 122, column: 30, scope: !159)
!161 = !DILocation(line: 122, column: 29, scope: !159)
!162 = !DILocation(line: 122, column: 39, scope: !159)
!163 = !DILocation(line: 122, column: 56, scope: !159)
!164 = !DILocation(line: 122, column: 55, scope: !159)
!165 = !DILocation(line: 122, column: 63, scope: !159)
!166 = !DILocation(line: 122, column: 17, scope: !159)
!167 = !DILocation(line: 123, column: 13, scope: !159)
!168 = !DILocation(line: 125, column: 5, scope: !147)
!169 = !DILocalVariable(name: "dataLen", scope: !170, file: !1, line: 130, type: !29)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 128, column: 9)
!171 = distinct !DILexicalBlock(scope: !143, file: !1, line: 127, column: 5)
!172 = !DILocation(line: 130, column: 20, scope: !170)
!173 = !DILocation(line: 130, column: 37, scope: !170)
!174 = !DILocation(line: 130, column: 30, scope: !170)
!175 = !DILocalVariable(name: "environment", scope: !170, file: !1, line: 131, type: !13)
!176 = !DILocation(line: 131, column: 20, scope: !170)
!177 = !DILocation(line: 131, column: 34, scope: !170)
!178 = !DILocation(line: 133, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !170, file: !1, line: 133, column: 17)
!180 = !DILocation(line: 133, column: 29, scope: !179)
!181 = !DILocation(line: 133, column: 17, scope: !170)
!182 = !DILocation(line: 136, column: 25, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !1, line: 134, column: 13)
!184 = !DILocation(line: 136, column: 30, scope: !183)
!185 = !DILocation(line: 136, column: 29, scope: !183)
!186 = !DILocation(line: 136, column: 39, scope: !183)
!187 = !DILocation(line: 136, column: 56, scope: !183)
!188 = !DILocation(line: 136, column: 55, scope: !183)
!189 = !DILocation(line: 136, column: 63, scope: !183)
!190 = !DILocation(line: 136, column: 17, scope: !183)
!191 = !DILocation(line: 137, column: 13, scope: !183)
!192 = !DILocation(line: 140, column: 8, scope: !193)
!193 = distinct !DILexicalBlock(scope: !135, file: !1, line: 140, column: 8)
!194 = !DILocation(line: 140, column: 8, scope: !135)
!195 = !DILocalVariable(name: "i", scope: !196, file: !1, line: 143, type: !62)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 142, column: 9)
!197 = distinct !DILexicalBlock(scope: !193, file: !1, line: 141, column: 5)
!198 = !DILocation(line: 143, column: 17, scope: !196)
!199 = !DILocalVariable(name: "n", scope: !196, file: !1, line: 143, type: !62)
!200 = !DILocation(line: 143, column: 20, scope: !196)
!201 = !DILocalVariable(name: "intVariable", scope: !196, file: !1, line: 143, type: !62)
!202 = !DILocation(line: 143, column: 23, scope: !196)
!203 = !DILocation(line: 144, column: 24, scope: !204)
!204 = distinct !DILexicalBlock(scope: !196, file: !1, line: 144, column: 17)
!205 = !DILocation(line: 144, column: 17, scope: !204)
!206 = !DILocation(line: 144, column: 40, scope: !204)
!207 = !DILocation(line: 144, column: 17, scope: !196)
!208 = !DILocation(line: 147, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 147, column: 21)
!210 = distinct !DILexicalBlock(scope: !204, file: !1, line: 145, column: 13)
!211 = !DILocation(line: 147, column: 23, scope: !209)
!212 = !DILocation(line: 147, column: 21, scope: !210)
!213 = !DILocation(line: 149, column: 33, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !1, line: 148, column: 17)
!215 = !DILocation(line: 150, column: 28, scope: !216)
!216 = distinct !DILexicalBlock(scope: !214, file: !1, line: 150, column: 21)
!217 = !DILocation(line: 150, column: 26, scope: !216)
!218 = !DILocation(line: 150, column: 33, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !1, line: 150, column: 21)
!220 = !DILocation(line: 150, column: 37, scope: !219)
!221 = !DILocation(line: 150, column: 35, scope: !219)
!222 = !DILocation(line: 150, column: 21, scope: !216)
!223 = !DILocation(line: 153, column: 36, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 151, column: 21)
!225 = !DILocation(line: 154, column: 21, scope: !224)
!226 = !DILocation(line: 150, column: 41, scope: !219)
!227 = !DILocation(line: 150, column: 21, scope: !219)
!228 = distinct !{!228, !222, !229, !90}
!229 = !DILocation(line: 154, column: 21, scope: !216)
!230 = !DILocation(line: 155, column: 34, scope: !214)
!231 = !DILocation(line: 155, column: 21, scope: !214)
!232 = !DILocation(line: 156, column: 17, scope: !214)
!233 = !DILocation(line: 157, column: 13, scope: !210)
!234 = !DILocation(line: 159, column: 5, scope: !197)
!235 = !DILocalVariable(name: "i", scope: !236, file: !1, line: 163, type: !62)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 162, column: 9)
!237 = distinct !DILexicalBlock(scope: !193, file: !1, line: 161, column: 5)
!238 = !DILocation(line: 163, column: 17, scope: !236)
!239 = !DILocalVariable(name: "n", scope: !236, file: !1, line: 163, type: !62)
!240 = !DILocation(line: 163, column: 20, scope: !236)
!241 = !DILocalVariable(name: "intVariable", scope: !236, file: !1, line: 163, type: !62)
!242 = !DILocation(line: 163, column: 23, scope: !236)
!243 = !DILocation(line: 164, column: 24, scope: !244)
!244 = distinct !DILexicalBlock(scope: !236, file: !1, line: 164, column: 17)
!245 = !DILocation(line: 164, column: 17, scope: !244)
!246 = !DILocation(line: 164, column: 40, scope: !244)
!247 = !DILocation(line: 164, column: 17, scope: !236)
!248 = !DILocation(line: 167, column: 21, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 167, column: 21)
!250 = distinct !DILexicalBlock(scope: !244, file: !1, line: 165, column: 13)
!251 = !DILocation(line: 167, column: 23, scope: !249)
!252 = !DILocation(line: 167, column: 21, scope: !250)
!253 = !DILocation(line: 169, column: 33, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !1, line: 168, column: 17)
!255 = !DILocation(line: 170, column: 28, scope: !256)
!256 = distinct !DILexicalBlock(scope: !254, file: !1, line: 170, column: 21)
!257 = !DILocation(line: 170, column: 26, scope: !256)
!258 = !DILocation(line: 170, column: 33, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !1, line: 170, column: 21)
!260 = !DILocation(line: 170, column: 37, scope: !259)
!261 = !DILocation(line: 170, column: 35, scope: !259)
!262 = !DILocation(line: 170, column: 21, scope: !256)
!263 = !DILocation(line: 173, column: 36, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !1, line: 171, column: 21)
!265 = !DILocation(line: 174, column: 21, scope: !264)
!266 = !DILocation(line: 170, column: 41, scope: !259)
!267 = !DILocation(line: 170, column: 21, scope: !259)
!268 = distinct !{!268, !262, !269, !90}
!269 = !DILocation(line: 174, column: 21, scope: !256)
!270 = !DILocation(line: 175, column: 34, scope: !254)
!271 = !DILocation(line: 175, column: 21, scope: !254)
!272 = !DILocation(line: 176, column: 17, scope: !254)
!273 = !DILocation(line: 177, column: 13, scope: !250)
!274 = !DILocation(line: 180, column: 1, scope: !135)
!275 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 185, type: !10, scopeLine: 186, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!276 = !DILocalVariable(name: "data", scope: !275, file: !1, line: 187, type: !13)
!277 = !DILocation(line: 187, column: 12, scope: !275)
!278 = !DILocalVariable(name: "dataBuffer", scope: !275, file: !1, line: 188, type: !17)
!279 = !DILocation(line: 188, column: 10, scope: !275)
!280 = !DILocation(line: 189, column: 12, scope: !275)
!281 = !DILocation(line: 189, column: 10, scope: !275)
!282 = !DILocation(line: 190, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !275, file: !1, line: 190, column: 8)
!284 = !DILocation(line: 190, column: 8, scope: !275)
!285 = !DILocation(line: 193, column: 16, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !1, line: 191, column: 5)
!287 = !DILocation(line: 193, column: 9, scope: !286)
!288 = !DILocation(line: 194, column: 5, scope: !286)
!289 = !DILocation(line: 198, column: 16, scope: !290)
!290 = distinct !DILexicalBlock(scope: !283, file: !1, line: 196, column: 5)
!291 = !DILocation(line: 198, column: 9, scope: !290)
!292 = !DILocation(line: 200, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !275, file: !1, line: 200, column: 8)
!294 = !DILocation(line: 200, column: 8, scope: !275)
!295 = !DILocalVariable(name: "i", scope: !296, file: !1, line: 203, type: !62)
!296 = distinct !DILexicalBlock(scope: !297, file: !1, line: 202, column: 9)
!297 = distinct !DILexicalBlock(scope: !293, file: !1, line: 201, column: 5)
!298 = !DILocation(line: 203, column: 17, scope: !296)
!299 = !DILocalVariable(name: "n", scope: !296, file: !1, line: 203, type: !62)
!300 = !DILocation(line: 203, column: 20, scope: !296)
!301 = !DILocalVariable(name: "intVariable", scope: !296, file: !1, line: 203, type: !62)
!302 = !DILocation(line: 203, column: 23, scope: !296)
!303 = !DILocation(line: 204, column: 24, scope: !304)
!304 = distinct !DILexicalBlock(scope: !296, file: !1, line: 204, column: 17)
!305 = !DILocation(line: 204, column: 17, scope: !304)
!306 = !DILocation(line: 204, column: 40, scope: !304)
!307 = !DILocation(line: 204, column: 17, scope: !296)
!308 = !DILocation(line: 207, column: 29, scope: !309)
!309 = distinct !DILexicalBlock(scope: !304, file: !1, line: 205, column: 13)
!310 = !DILocation(line: 208, column: 24, scope: !311)
!311 = distinct !DILexicalBlock(scope: !309, file: !1, line: 208, column: 17)
!312 = !DILocation(line: 208, column: 22, scope: !311)
!313 = !DILocation(line: 208, column: 29, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !1, line: 208, column: 17)
!315 = !DILocation(line: 208, column: 33, scope: !314)
!316 = !DILocation(line: 208, column: 31, scope: !314)
!317 = !DILocation(line: 208, column: 17, scope: !311)
!318 = !DILocation(line: 211, column: 32, scope: !319)
!319 = distinct !DILexicalBlock(scope: !314, file: !1, line: 209, column: 17)
!320 = !DILocation(line: 212, column: 17, scope: !319)
!321 = !DILocation(line: 208, column: 37, scope: !314)
!322 = !DILocation(line: 208, column: 17, scope: !314)
!323 = distinct !{!323, !317, !324, !90}
!324 = !DILocation(line: 212, column: 17, scope: !311)
!325 = !DILocation(line: 213, column: 30, scope: !309)
!326 = !DILocation(line: 213, column: 17, scope: !309)
!327 = !DILocation(line: 214, column: 13, scope: !309)
!328 = !DILocation(line: 216, column: 5, scope: !297)
!329 = !DILocalVariable(name: "i", scope: !330, file: !1, line: 220, type: !62)
!330 = distinct !DILexicalBlock(scope: !331, file: !1, line: 219, column: 9)
!331 = distinct !DILexicalBlock(scope: !293, file: !1, line: 218, column: 5)
!332 = !DILocation(line: 220, column: 17, scope: !330)
!333 = !DILocalVariable(name: "n", scope: !330, file: !1, line: 220, type: !62)
!334 = !DILocation(line: 220, column: 20, scope: !330)
!335 = !DILocalVariable(name: "intVariable", scope: !330, file: !1, line: 220, type: !62)
!336 = !DILocation(line: 220, column: 23, scope: !330)
!337 = !DILocation(line: 221, column: 24, scope: !338)
!338 = distinct !DILexicalBlock(scope: !330, file: !1, line: 221, column: 17)
!339 = !DILocation(line: 221, column: 17, scope: !338)
!340 = !DILocation(line: 221, column: 40, scope: !338)
!341 = !DILocation(line: 221, column: 17, scope: !330)
!342 = !DILocation(line: 224, column: 29, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !1, line: 222, column: 13)
!344 = !DILocation(line: 225, column: 24, scope: !345)
!345 = distinct !DILexicalBlock(scope: !343, file: !1, line: 225, column: 17)
!346 = !DILocation(line: 225, column: 22, scope: !345)
!347 = !DILocation(line: 225, column: 29, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !1, line: 225, column: 17)
!349 = !DILocation(line: 225, column: 33, scope: !348)
!350 = !DILocation(line: 225, column: 31, scope: !348)
!351 = !DILocation(line: 225, column: 17, scope: !345)
!352 = !DILocation(line: 228, column: 32, scope: !353)
!353 = distinct !DILexicalBlock(scope: !348, file: !1, line: 226, column: 17)
!354 = !DILocation(line: 229, column: 17, scope: !353)
!355 = !DILocation(line: 225, column: 37, scope: !348)
!356 = !DILocation(line: 225, column: 17, scope: !348)
!357 = distinct !{!357, !351, !358, !90}
!358 = !DILocation(line: 229, column: 17, scope: !345)
!359 = !DILocation(line: 230, column: 30, scope: !343)
!360 = !DILocation(line: 230, column: 17, scope: !343)
!361 = !DILocation(line: 231, column: 13, scope: !343)
!362 = !DILocation(line: 234, column: 1, scope: !275)
!363 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_12_good", scope: !1, file: !1, line: 236, type: !10, scopeLine: 237, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!364 = !DILocation(line: 238, column: 5, scope: !363)
!365 = !DILocation(line: 239, column: 5, scope: !363)
!366 = !DILocation(line: 240, column: 1, scope: !363)
