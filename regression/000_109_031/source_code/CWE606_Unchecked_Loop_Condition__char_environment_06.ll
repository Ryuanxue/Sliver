; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_06.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_06.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATIC_CONST_FIVE = dso_local global i32 5, align 4, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_06_bad() #0 !dbg !13 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !20, metadata !DIExpression()), !dbg !24
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !24
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !24
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !25
  store i8* %arraydecay, i8** %data, align 8, !dbg !26
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !27
  %cmp = icmp eq i32 %1, 5, !dbg !29
  br i1 %cmp, label %if.then, label %if.end6, !dbg !30

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !31, metadata !DIExpression()), !dbg !37
  %2 = load i8*, i8** %data, align 8, !dbg !38
  %call = call i64 @strlen(i8* %2) #6, !dbg !39
  store i64 %call, i64* %dataLen, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !40, metadata !DIExpression()), !dbg !41
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !42
  store i8* %call1, i8** %environment, align 8, !dbg !41
  %3 = load i8*, i8** %environment, align 8, !dbg !43
  %cmp2 = icmp ne i8* %3, null, !dbg !45
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !46

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !47
  %5 = load i64, i64* %dataLen, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !50
  %6 = load i8*, i8** %environment, align 8, !dbg !51
  %7 = load i64, i64* %dataLen, align 8, !dbg !52
  %sub = sub i64 100, %7, !dbg !53
  %sub4 = sub i64 %sub, 1, !dbg !54
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !55
  br label %if.end, !dbg !56

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !57

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !58
  %cmp7 = icmp eq i32 %8, 5, !dbg !60
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !61

if.then8:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %n, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !68, metadata !DIExpression()), !dbg !69
  %9 = load i8*, i8** %data, align 8, !dbg !70
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !72
  %cmp10 = icmp eq i32 %call9, 1, !dbg !73
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !74

if.then11:                                        ; preds = %if.then8
  store i32 0, i32* %intVariable, align 4, !dbg !75
  store i32 0, i32* %i, align 4, !dbg !77
  br label %for.cond, !dbg !79

for.cond:                                         ; preds = %for.inc, %if.then11
  %10 = load i32, i32* %i, align 4, !dbg !80
  %11 = load i32, i32* %n, align 4, !dbg !82
  %cmp12 = icmp slt i32 %10, %11, !dbg !83
  br i1 %cmp12, label %for.body, label %for.end, !dbg !84

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !85
  %inc = add nsw i32 %12, 1, !dbg !85
  store i32 %inc, i32* %intVariable, align 4, !dbg !85
  br label %for.inc, !dbg !87

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !88
  %inc13 = add nsw i32 %13, 1, !dbg !88
  store i32 %inc13, i32* %i, align 4, !dbg !88
  br label %for.cond, !dbg !89, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !93
  call void @printIntLine(i32 %14), !dbg !94
  br label %if.end14, !dbg !95

if.end14:                                         ; preds = %for.end, %if.then8
  br label %if.end15, !dbg !96

if.end15:                                         ; preds = %if.end14, %if.end6
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

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !98 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !102
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !102
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !103
  store i8* %arraydecay, i8** %data, align 8, !dbg !104
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !105
  %cmp = icmp eq i32 %1, 5, !dbg !107
  br i1 %cmp, label %if.then, label %if.end6, !dbg !108

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !109, metadata !DIExpression()), !dbg !112
  %2 = load i8*, i8** %data, align 8, !dbg !113
  %call = call i64 @strlen(i8* %2) #6, !dbg !114
  store i64 %call, i64* %dataLen, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !115, metadata !DIExpression()), !dbg !116
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !117
  store i8* %call1, i8** %environment, align 8, !dbg !116
  %3 = load i8*, i8** %environment, align 8, !dbg !118
  %cmp2 = icmp ne i8* %3, null, !dbg !120
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !121

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !122
  %5 = load i64, i64* %dataLen, align 8, !dbg !124
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !125
  %6 = load i8*, i8** %environment, align 8, !dbg !126
  %7 = load i64, i64* %dataLen, align 8, !dbg !127
  %sub = sub i64 100, %7, !dbg !128
  %sub4 = sub i64 %sub, 1, !dbg !129
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !130
  br label %if.end, !dbg !131

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !132

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !133
  %cmp7 = icmp ne i32 %8, 5, !dbg !135
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !136

if.then8:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !137
  br label %if.end18, !dbg !139

if.else:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !140, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %n, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !146, metadata !DIExpression()), !dbg !147
  %9 = load i8*, i8** %data, align 8, !dbg !148
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !150
  %cmp10 = icmp eq i32 %call9, 1, !dbg !151
  br i1 %cmp10, label %if.then11, label %if.end17, !dbg !152

if.then11:                                        ; preds = %if.else
  %10 = load i32, i32* %n, align 4, !dbg !153
  %cmp12 = icmp slt i32 %10, 10000, !dbg !156
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !157

if.then13:                                        ; preds = %if.then11
  store i32 0, i32* %intVariable, align 4, !dbg !158
  store i32 0, i32* %i, align 4, !dbg !160
  br label %for.cond, !dbg !162

for.cond:                                         ; preds = %for.inc, %if.then13
  %11 = load i32, i32* %i, align 4, !dbg !163
  %12 = load i32, i32* %n, align 4, !dbg !165
  %cmp14 = icmp slt i32 %11, %12, !dbg !166
  br i1 %cmp14, label %for.body, label %for.end, !dbg !167

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !168
  %inc = add nsw i32 %13, 1, !dbg !168
  store i32 %inc, i32* %intVariable, align 4, !dbg !168
  br label %for.inc, !dbg !170

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !171
  %inc15 = add nsw i32 %14, 1, !dbg !171
  store i32 %inc15, i32* %i, align 4, !dbg !171
  br label %for.cond, !dbg !172, !llvm.loop !173

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !175
  call void @printIntLine(i32 %15), !dbg !176
  br label %if.end16, !dbg !177

if.end16:                                         ; preds = %for.end, %if.then11
  br label %if.end17, !dbg !178

if.end17:                                         ; preds = %if.end16, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  ret void, !dbg !179
}

declare dso_local void @printLine(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !180 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !183, metadata !DIExpression()), !dbg !184
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !184
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !184
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !185
  store i8* %arraydecay, i8** %data, align 8, !dbg !186
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !187
  %cmp = icmp eq i32 %1, 5, !dbg !189
  br i1 %cmp, label %if.then, label %if.end6, !dbg !190

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !191, metadata !DIExpression()), !dbg !194
  %2 = load i8*, i8** %data, align 8, !dbg !195
  %call = call i64 @strlen(i8* %2) #6, !dbg !196
  store i64 %call, i64* %dataLen, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !197, metadata !DIExpression()), !dbg !198
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !199
  store i8* %call1, i8** %environment, align 8, !dbg !198
  %3 = load i8*, i8** %environment, align 8, !dbg !200
  %cmp2 = icmp ne i8* %3, null, !dbg !202
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !203

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !204
  %5 = load i64, i64* %dataLen, align 8, !dbg !206
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !207
  %6 = load i8*, i8** %environment, align 8, !dbg !208
  %7 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub = sub i64 100, %7, !dbg !210
  %sub4 = sub i64 %sub, 1, !dbg !211
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !212
  br label %if.end, !dbg !213

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !214

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !215
  %cmp7 = icmp eq i32 %8, 5, !dbg !217
  br i1 %cmp7, label %if.then8, label %if.end18, !dbg !218

if.then8:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !219, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %n, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !225, metadata !DIExpression()), !dbg !226
  %9 = load i8*, i8** %data, align 8, !dbg !227
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !229
  %cmp10 = icmp eq i32 %call9, 1, !dbg !230
  br i1 %cmp10, label %if.then11, label %if.end17, !dbg !231

if.then11:                                        ; preds = %if.then8
  %10 = load i32, i32* %n, align 4, !dbg !232
  %cmp12 = icmp slt i32 %10, 10000, !dbg !235
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !236

if.then13:                                        ; preds = %if.then11
  store i32 0, i32* %intVariable, align 4, !dbg !237
  store i32 0, i32* %i, align 4, !dbg !239
  br label %for.cond, !dbg !241

for.cond:                                         ; preds = %for.inc, %if.then13
  %11 = load i32, i32* %i, align 4, !dbg !242
  %12 = load i32, i32* %n, align 4, !dbg !244
  %cmp14 = icmp slt i32 %11, %12, !dbg !245
  br i1 %cmp14, label %for.body, label %for.end, !dbg !246

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !247
  %inc = add nsw i32 %13, 1, !dbg !247
  store i32 %inc, i32* %intVariable, align 4, !dbg !247
  br label %for.inc, !dbg !249

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !250
  %inc15 = add nsw i32 %14, 1, !dbg !250
  store i32 %inc15, i32* %i, align 4, !dbg !250
  br label %for.cond, !dbg !251, !llvm.loop !252

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !254
  call void @printIntLine(i32 %15), !dbg !255
  br label %if.end16, !dbg !256

if.end16:                                         ; preds = %for.end, %if.then11
  br label %if.end17, !dbg !257

if.end17:                                         ; preds = %if.end16, %if.then8
  br label %if.end18, !dbg !258

if.end18:                                         ; preds = %if.end17, %if.end6
  ret void, !dbg !259
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !260 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !261, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !263, metadata !DIExpression()), !dbg !264
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !264
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !264
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !265
  store i8* %arraydecay, i8** %data, align 8, !dbg !266
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !267
  %cmp = icmp ne i32 %1, 5, !dbg !269
  br i1 %cmp, label %if.then, label %if.else, !dbg !270

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !271
  br label %if.end, !dbg !273

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !274
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !276
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !277
  %cmp1 = icmp eq i32 %3, 5, !dbg !279
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !280

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !281, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata i32* %n, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !287, metadata !DIExpression()), !dbg !288
  %4 = load i8*, i8** %data, align 8, !dbg !289
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !291
  %cmp4 = icmp eq i32 %call3, 1, !dbg !292
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !293

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !294
  store i32 0, i32* %i, align 4, !dbg !296
  br label %for.cond, !dbg !298

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !299
  %6 = load i32, i32* %n, align 4, !dbg !301
  %cmp6 = icmp slt i32 %5, %6, !dbg !302
  br i1 %cmp6, label %for.body, label %for.end, !dbg !303

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !304
  %inc = add nsw i32 %7, 1, !dbg !304
  store i32 %inc, i32* %intVariable, align 4, !dbg !304
  br label %for.inc, !dbg !306

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !307
  %inc7 = add nsw i32 %8, 1, !dbg !307
  store i32 %inc7, i32* %i, align 4, !dbg !307
  br label %for.cond, !dbg !308, !llvm.loop !309

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !311
  call void @printIntLine(i32 %9), !dbg !312
  br label %if.end8, !dbg !313

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !314

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !315
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !316 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !317, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !320
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !320
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !321
  store i8* %arraydecay, i8** %data, align 8, !dbg !322
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !323
  %cmp = icmp eq i32 %1, 5, !dbg !325
  br i1 %cmp, label %if.then, label %if.end, !dbg !326

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !327
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !329
  br label %if.end, !dbg !330

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !331
  %cmp1 = icmp eq i32 %3, 5, !dbg !333
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !334

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !335, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata i32* %n, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !341, metadata !DIExpression()), !dbg !342
  %4 = load i8*, i8** %data, align 8, !dbg !343
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !345
  %cmp4 = icmp eq i32 %call3, 1, !dbg !346
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !347

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !348
  store i32 0, i32* %i, align 4, !dbg !350
  br label %for.cond, !dbg !352

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !353
  %6 = load i32, i32* %n, align 4, !dbg !355
  %cmp6 = icmp slt i32 %5, %6, !dbg !356
  br i1 %cmp6, label %for.body, label %for.end, !dbg !357

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !358
  %inc = add nsw i32 %7, 1, !dbg !358
  store i32 %inc, i32* %intVariable, align 4, !dbg !358
  br label %for.inc, !dbg !360

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !361
  %inc7 = add nsw i32 %8, 1, !dbg !361
  store i32 %inc7, i32* %i, align 4, !dbg !361
  br label %for.cond, !dbg !362, !llvm.loop !363

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !365
  call void @printIntLine(i32 %9), !dbg !366
  br label %if.end8, !dbg !367

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !368

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_06_good() #0 !dbg !370 {
entry:
  call void @goodB2G1(), !dbg !371
  call void @goodB2G2(), !dbg !372
  call void @goodG2B1(), !dbg !373
  call void @goodG2B2(), !dbg !374
  ret void, !dbg !375
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_FIVE", scope: !2, file: !3, line: 38, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_06.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_031/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 12.0.0"}
!13 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_06_bad", scope: !3, file: !3, line: 42, type: !14, scopeLine: 43, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{null}
!16 = !DILocalVariable(name: "data", scope: !13, file: !3, line: 44, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DILocation(line: 44, column: 12, scope: !13)
!20 = !DILocalVariable(name: "dataBuffer", scope: !13, file: !3, line: 45, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 800, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 100)
!24 = !DILocation(line: 45, column: 10, scope: !13)
!25 = !DILocation(line: 46, column: 12, scope: !13)
!26 = !DILocation(line: 46, column: 10, scope: !13)
!27 = !DILocation(line: 47, column: 8, scope: !28)
!28 = distinct !DILexicalBlock(scope: !13, file: !3, line: 47, column: 8)
!29 = !DILocation(line: 47, column: 25, scope: !28)
!30 = !DILocation(line: 47, column: 8, scope: !13)
!31 = !DILocalVariable(name: "dataLen", scope: !32, file: !3, line: 51, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !3, line: 49, column: 9)
!33 = distinct !DILexicalBlock(scope: !28, file: !3, line: 48, column: 5)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 51, column: 20, scope: !32)
!38 = !DILocation(line: 51, column: 37, scope: !32)
!39 = !DILocation(line: 51, column: 30, scope: !32)
!40 = !DILocalVariable(name: "environment", scope: !32, file: !3, line: 52, type: !17)
!41 = !DILocation(line: 52, column: 20, scope: !32)
!42 = !DILocation(line: 52, column: 34, scope: !32)
!43 = !DILocation(line: 54, column: 17, scope: !44)
!44 = distinct !DILexicalBlock(scope: !32, file: !3, line: 54, column: 17)
!45 = !DILocation(line: 54, column: 29, scope: !44)
!46 = !DILocation(line: 54, column: 17, scope: !32)
!47 = !DILocation(line: 57, column: 25, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !3, line: 55, column: 13)
!49 = !DILocation(line: 57, column: 30, scope: !48)
!50 = !DILocation(line: 57, column: 29, scope: !48)
!51 = !DILocation(line: 57, column: 39, scope: !48)
!52 = !DILocation(line: 57, column: 56, scope: !48)
!53 = !DILocation(line: 57, column: 55, scope: !48)
!54 = !DILocation(line: 57, column: 63, scope: !48)
!55 = !DILocation(line: 57, column: 17, scope: !48)
!56 = !DILocation(line: 58, column: 13, scope: !48)
!57 = !DILocation(line: 60, column: 5, scope: !33)
!58 = !DILocation(line: 61, column: 8, scope: !59)
!59 = distinct !DILexicalBlock(scope: !13, file: !3, line: 61, column: 8)
!60 = !DILocation(line: 61, column: 25, scope: !59)
!61 = !DILocation(line: 61, column: 8, scope: !13)
!62 = !DILocalVariable(name: "i", scope: !63, file: !3, line: 64, type: !8)
!63 = distinct !DILexicalBlock(scope: !64, file: !3, line: 63, column: 9)
!64 = distinct !DILexicalBlock(scope: !59, file: !3, line: 62, column: 5)
!65 = !DILocation(line: 64, column: 17, scope: !63)
!66 = !DILocalVariable(name: "n", scope: !63, file: !3, line: 64, type: !8)
!67 = !DILocation(line: 64, column: 20, scope: !63)
!68 = !DILocalVariable(name: "intVariable", scope: !63, file: !3, line: 64, type: !8)
!69 = !DILocation(line: 64, column: 23, scope: !63)
!70 = !DILocation(line: 65, column: 24, scope: !71)
!71 = distinct !DILexicalBlock(scope: !63, file: !3, line: 65, column: 17)
!72 = !DILocation(line: 65, column: 17, scope: !71)
!73 = !DILocation(line: 65, column: 40, scope: !71)
!74 = !DILocation(line: 65, column: 17, scope: !63)
!75 = !DILocation(line: 68, column: 29, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !3, line: 66, column: 13)
!77 = !DILocation(line: 69, column: 24, scope: !78)
!78 = distinct !DILexicalBlock(scope: !76, file: !3, line: 69, column: 17)
!79 = !DILocation(line: 69, column: 22, scope: !78)
!80 = !DILocation(line: 69, column: 29, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !3, line: 69, column: 17)
!82 = !DILocation(line: 69, column: 33, scope: !81)
!83 = !DILocation(line: 69, column: 31, scope: !81)
!84 = !DILocation(line: 69, column: 17, scope: !78)
!85 = !DILocation(line: 72, column: 32, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !3, line: 70, column: 17)
!87 = !DILocation(line: 73, column: 17, scope: !86)
!88 = !DILocation(line: 69, column: 37, scope: !81)
!89 = !DILocation(line: 69, column: 17, scope: !81)
!90 = distinct !{!90, !84, !91, !92}
!91 = !DILocation(line: 73, column: 17, scope: !78)
!92 = !{!"llvm.loop.mustprogress"}
!93 = !DILocation(line: 74, column: 30, scope: !76)
!94 = !DILocation(line: 74, column: 17, scope: !76)
!95 = !DILocation(line: 75, column: 13, scope: !76)
!96 = !DILocation(line: 77, column: 5, scope: !64)
!97 = !DILocation(line: 78, column: 1, scope: !13)
!98 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 85, type: !14, scopeLine: 86, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!99 = !DILocalVariable(name: "data", scope: !98, file: !3, line: 87, type: !17)
!100 = !DILocation(line: 87, column: 12, scope: !98)
!101 = !DILocalVariable(name: "dataBuffer", scope: !98, file: !3, line: 88, type: !21)
!102 = !DILocation(line: 88, column: 10, scope: !98)
!103 = !DILocation(line: 89, column: 12, scope: !98)
!104 = !DILocation(line: 89, column: 10, scope: !98)
!105 = !DILocation(line: 90, column: 8, scope: !106)
!106 = distinct !DILexicalBlock(scope: !98, file: !3, line: 90, column: 8)
!107 = !DILocation(line: 90, column: 25, scope: !106)
!108 = !DILocation(line: 90, column: 8, scope: !98)
!109 = !DILocalVariable(name: "dataLen", scope: !110, file: !3, line: 94, type: !34)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 92, column: 9)
!111 = distinct !DILexicalBlock(scope: !106, file: !3, line: 91, column: 5)
!112 = !DILocation(line: 94, column: 20, scope: !110)
!113 = !DILocation(line: 94, column: 37, scope: !110)
!114 = !DILocation(line: 94, column: 30, scope: !110)
!115 = !DILocalVariable(name: "environment", scope: !110, file: !3, line: 95, type: !17)
!116 = !DILocation(line: 95, column: 20, scope: !110)
!117 = !DILocation(line: 95, column: 34, scope: !110)
!118 = !DILocation(line: 97, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !110, file: !3, line: 97, column: 17)
!120 = !DILocation(line: 97, column: 29, scope: !119)
!121 = !DILocation(line: 97, column: 17, scope: !110)
!122 = !DILocation(line: 100, column: 25, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !3, line: 98, column: 13)
!124 = !DILocation(line: 100, column: 30, scope: !123)
!125 = !DILocation(line: 100, column: 29, scope: !123)
!126 = !DILocation(line: 100, column: 39, scope: !123)
!127 = !DILocation(line: 100, column: 56, scope: !123)
!128 = !DILocation(line: 100, column: 55, scope: !123)
!129 = !DILocation(line: 100, column: 63, scope: !123)
!130 = !DILocation(line: 100, column: 17, scope: !123)
!131 = !DILocation(line: 101, column: 13, scope: !123)
!132 = !DILocation(line: 103, column: 5, scope: !111)
!133 = !DILocation(line: 104, column: 8, scope: !134)
!134 = distinct !DILexicalBlock(scope: !98, file: !3, line: 104, column: 8)
!135 = !DILocation(line: 104, column: 25, scope: !134)
!136 = !DILocation(line: 104, column: 8, scope: !98)
!137 = !DILocation(line: 107, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !3, line: 105, column: 5)
!139 = !DILocation(line: 108, column: 5, scope: !138)
!140 = !DILocalVariable(name: "i", scope: !141, file: !3, line: 112, type: !8)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 111, column: 9)
!142 = distinct !DILexicalBlock(scope: !134, file: !3, line: 110, column: 5)
!143 = !DILocation(line: 112, column: 17, scope: !141)
!144 = !DILocalVariable(name: "n", scope: !141, file: !3, line: 112, type: !8)
!145 = !DILocation(line: 112, column: 20, scope: !141)
!146 = !DILocalVariable(name: "intVariable", scope: !141, file: !3, line: 112, type: !8)
!147 = !DILocation(line: 112, column: 23, scope: !141)
!148 = !DILocation(line: 113, column: 24, scope: !149)
!149 = distinct !DILexicalBlock(scope: !141, file: !3, line: 113, column: 17)
!150 = !DILocation(line: 113, column: 17, scope: !149)
!151 = !DILocation(line: 113, column: 40, scope: !149)
!152 = !DILocation(line: 113, column: 17, scope: !141)
!153 = !DILocation(line: 116, column: 21, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 116, column: 21)
!155 = distinct !DILexicalBlock(scope: !149, file: !3, line: 114, column: 13)
!156 = !DILocation(line: 116, column: 23, scope: !154)
!157 = !DILocation(line: 116, column: 21, scope: !155)
!158 = !DILocation(line: 118, column: 33, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !3, line: 117, column: 17)
!160 = !DILocation(line: 119, column: 28, scope: !161)
!161 = distinct !DILexicalBlock(scope: !159, file: !3, line: 119, column: 21)
!162 = !DILocation(line: 119, column: 26, scope: !161)
!163 = !DILocation(line: 119, column: 33, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !3, line: 119, column: 21)
!165 = !DILocation(line: 119, column: 37, scope: !164)
!166 = !DILocation(line: 119, column: 35, scope: !164)
!167 = !DILocation(line: 119, column: 21, scope: !161)
!168 = !DILocation(line: 122, column: 36, scope: !169)
!169 = distinct !DILexicalBlock(scope: !164, file: !3, line: 120, column: 21)
!170 = !DILocation(line: 123, column: 21, scope: !169)
!171 = !DILocation(line: 119, column: 41, scope: !164)
!172 = !DILocation(line: 119, column: 21, scope: !164)
!173 = distinct !{!173, !167, !174, !92}
!174 = !DILocation(line: 123, column: 21, scope: !161)
!175 = !DILocation(line: 124, column: 34, scope: !159)
!176 = !DILocation(line: 124, column: 21, scope: !159)
!177 = !DILocation(line: 125, column: 17, scope: !159)
!178 = !DILocation(line: 126, column: 13, scope: !155)
!179 = !DILocation(line: 129, column: 1, scope: !98)
!180 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 132, type: !14, scopeLine: 133, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!181 = !DILocalVariable(name: "data", scope: !180, file: !3, line: 134, type: !17)
!182 = !DILocation(line: 134, column: 12, scope: !180)
!183 = !DILocalVariable(name: "dataBuffer", scope: !180, file: !3, line: 135, type: !21)
!184 = !DILocation(line: 135, column: 10, scope: !180)
!185 = !DILocation(line: 136, column: 12, scope: !180)
!186 = !DILocation(line: 136, column: 10, scope: !180)
!187 = !DILocation(line: 137, column: 8, scope: !188)
!188 = distinct !DILexicalBlock(scope: !180, file: !3, line: 137, column: 8)
!189 = !DILocation(line: 137, column: 25, scope: !188)
!190 = !DILocation(line: 137, column: 8, scope: !180)
!191 = !DILocalVariable(name: "dataLen", scope: !192, file: !3, line: 141, type: !34)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 139, column: 9)
!193 = distinct !DILexicalBlock(scope: !188, file: !3, line: 138, column: 5)
!194 = !DILocation(line: 141, column: 20, scope: !192)
!195 = !DILocation(line: 141, column: 37, scope: !192)
!196 = !DILocation(line: 141, column: 30, scope: !192)
!197 = !DILocalVariable(name: "environment", scope: !192, file: !3, line: 142, type: !17)
!198 = !DILocation(line: 142, column: 20, scope: !192)
!199 = !DILocation(line: 142, column: 34, scope: !192)
!200 = !DILocation(line: 144, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !192, file: !3, line: 144, column: 17)
!202 = !DILocation(line: 144, column: 29, scope: !201)
!203 = !DILocation(line: 144, column: 17, scope: !192)
!204 = !DILocation(line: 147, column: 25, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !3, line: 145, column: 13)
!206 = !DILocation(line: 147, column: 30, scope: !205)
!207 = !DILocation(line: 147, column: 29, scope: !205)
!208 = !DILocation(line: 147, column: 39, scope: !205)
!209 = !DILocation(line: 147, column: 56, scope: !205)
!210 = !DILocation(line: 147, column: 55, scope: !205)
!211 = !DILocation(line: 147, column: 63, scope: !205)
!212 = !DILocation(line: 147, column: 17, scope: !205)
!213 = !DILocation(line: 148, column: 13, scope: !205)
!214 = !DILocation(line: 150, column: 5, scope: !193)
!215 = !DILocation(line: 151, column: 8, scope: !216)
!216 = distinct !DILexicalBlock(scope: !180, file: !3, line: 151, column: 8)
!217 = !DILocation(line: 151, column: 25, scope: !216)
!218 = !DILocation(line: 151, column: 8, scope: !180)
!219 = !DILocalVariable(name: "i", scope: !220, file: !3, line: 154, type: !8)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 153, column: 9)
!221 = distinct !DILexicalBlock(scope: !216, file: !3, line: 152, column: 5)
!222 = !DILocation(line: 154, column: 17, scope: !220)
!223 = !DILocalVariable(name: "n", scope: !220, file: !3, line: 154, type: !8)
!224 = !DILocation(line: 154, column: 20, scope: !220)
!225 = !DILocalVariable(name: "intVariable", scope: !220, file: !3, line: 154, type: !8)
!226 = !DILocation(line: 154, column: 23, scope: !220)
!227 = !DILocation(line: 155, column: 24, scope: !228)
!228 = distinct !DILexicalBlock(scope: !220, file: !3, line: 155, column: 17)
!229 = !DILocation(line: 155, column: 17, scope: !228)
!230 = !DILocation(line: 155, column: 40, scope: !228)
!231 = !DILocation(line: 155, column: 17, scope: !220)
!232 = !DILocation(line: 158, column: 21, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 158, column: 21)
!234 = distinct !DILexicalBlock(scope: !228, file: !3, line: 156, column: 13)
!235 = !DILocation(line: 158, column: 23, scope: !233)
!236 = !DILocation(line: 158, column: 21, scope: !234)
!237 = !DILocation(line: 160, column: 33, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !3, line: 159, column: 17)
!239 = !DILocation(line: 161, column: 28, scope: !240)
!240 = distinct !DILexicalBlock(scope: !238, file: !3, line: 161, column: 21)
!241 = !DILocation(line: 161, column: 26, scope: !240)
!242 = !DILocation(line: 161, column: 33, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !3, line: 161, column: 21)
!244 = !DILocation(line: 161, column: 37, scope: !243)
!245 = !DILocation(line: 161, column: 35, scope: !243)
!246 = !DILocation(line: 161, column: 21, scope: !240)
!247 = !DILocation(line: 164, column: 36, scope: !248)
!248 = distinct !DILexicalBlock(scope: !243, file: !3, line: 162, column: 21)
!249 = !DILocation(line: 165, column: 21, scope: !248)
!250 = !DILocation(line: 161, column: 41, scope: !243)
!251 = !DILocation(line: 161, column: 21, scope: !243)
!252 = distinct !{!252, !246, !253, !92}
!253 = !DILocation(line: 165, column: 21, scope: !240)
!254 = !DILocation(line: 166, column: 34, scope: !238)
!255 = !DILocation(line: 166, column: 21, scope: !238)
!256 = !DILocation(line: 167, column: 17, scope: !238)
!257 = !DILocation(line: 168, column: 13, scope: !234)
!258 = !DILocation(line: 170, column: 5, scope: !221)
!259 = !DILocation(line: 171, column: 1, scope: !180)
!260 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 174, type: !14, scopeLine: 175, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!261 = !DILocalVariable(name: "data", scope: !260, file: !3, line: 176, type: !17)
!262 = !DILocation(line: 176, column: 12, scope: !260)
!263 = !DILocalVariable(name: "dataBuffer", scope: !260, file: !3, line: 177, type: !21)
!264 = !DILocation(line: 177, column: 10, scope: !260)
!265 = !DILocation(line: 178, column: 12, scope: !260)
!266 = !DILocation(line: 178, column: 10, scope: !260)
!267 = !DILocation(line: 179, column: 8, scope: !268)
!268 = distinct !DILexicalBlock(scope: !260, file: !3, line: 179, column: 8)
!269 = !DILocation(line: 179, column: 25, scope: !268)
!270 = !DILocation(line: 179, column: 8, scope: !260)
!271 = !DILocation(line: 182, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !3, line: 180, column: 5)
!273 = !DILocation(line: 183, column: 5, scope: !272)
!274 = !DILocation(line: 187, column: 16, scope: !275)
!275 = distinct !DILexicalBlock(scope: !268, file: !3, line: 185, column: 5)
!276 = !DILocation(line: 187, column: 9, scope: !275)
!277 = !DILocation(line: 189, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !260, file: !3, line: 189, column: 8)
!279 = !DILocation(line: 189, column: 25, scope: !278)
!280 = !DILocation(line: 189, column: 8, scope: !260)
!281 = !DILocalVariable(name: "i", scope: !282, file: !3, line: 192, type: !8)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 191, column: 9)
!283 = distinct !DILexicalBlock(scope: !278, file: !3, line: 190, column: 5)
!284 = !DILocation(line: 192, column: 17, scope: !282)
!285 = !DILocalVariable(name: "n", scope: !282, file: !3, line: 192, type: !8)
!286 = !DILocation(line: 192, column: 20, scope: !282)
!287 = !DILocalVariable(name: "intVariable", scope: !282, file: !3, line: 192, type: !8)
!288 = !DILocation(line: 192, column: 23, scope: !282)
!289 = !DILocation(line: 193, column: 24, scope: !290)
!290 = distinct !DILexicalBlock(scope: !282, file: !3, line: 193, column: 17)
!291 = !DILocation(line: 193, column: 17, scope: !290)
!292 = !DILocation(line: 193, column: 40, scope: !290)
!293 = !DILocation(line: 193, column: 17, scope: !282)
!294 = !DILocation(line: 196, column: 29, scope: !295)
!295 = distinct !DILexicalBlock(scope: !290, file: !3, line: 194, column: 13)
!296 = !DILocation(line: 197, column: 24, scope: !297)
!297 = distinct !DILexicalBlock(scope: !295, file: !3, line: 197, column: 17)
!298 = !DILocation(line: 197, column: 22, scope: !297)
!299 = !DILocation(line: 197, column: 29, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !3, line: 197, column: 17)
!301 = !DILocation(line: 197, column: 33, scope: !300)
!302 = !DILocation(line: 197, column: 31, scope: !300)
!303 = !DILocation(line: 197, column: 17, scope: !297)
!304 = !DILocation(line: 200, column: 32, scope: !305)
!305 = distinct !DILexicalBlock(scope: !300, file: !3, line: 198, column: 17)
!306 = !DILocation(line: 201, column: 17, scope: !305)
!307 = !DILocation(line: 197, column: 37, scope: !300)
!308 = !DILocation(line: 197, column: 17, scope: !300)
!309 = distinct !{!309, !303, !310, !92}
!310 = !DILocation(line: 201, column: 17, scope: !297)
!311 = !DILocation(line: 202, column: 30, scope: !295)
!312 = !DILocation(line: 202, column: 17, scope: !295)
!313 = !DILocation(line: 203, column: 13, scope: !295)
!314 = !DILocation(line: 205, column: 5, scope: !283)
!315 = !DILocation(line: 206, column: 1, scope: !260)
!316 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 209, type: !14, scopeLine: 210, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!317 = !DILocalVariable(name: "data", scope: !316, file: !3, line: 211, type: !17)
!318 = !DILocation(line: 211, column: 12, scope: !316)
!319 = !DILocalVariable(name: "dataBuffer", scope: !316, file: !3, line: 212, type: !21)
!320 = !DILocation(line: 212, column: 10, scope: !316)
!321 = !DILocation(line: 213, column: 12, scope: !316)
!322 = !DILocation(line: 213, column: 10, scope: !316)
!323 = !DILocation(line: 214, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !316, file: !3, line: 214, column: 8)
!325 = !DILocation(line: 214, column: 25, scope: !324)
!326 = !DILocation(line: 214, column: 8, scope: !316)
!327 = !DILocation(line: 217, column: 16, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !3, line: 215, column: 5)
!329 = !DILocation(line: 217, column: 9, scope: !328)
!330 = !DILocation(line: 218, column: 5, scope: !328)
!331 = !DILocation(line: 219, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !316, file: !3, line: 219, column: 8)
!333 = !DILocation(line: 219, column: 25, scope: !332)
!334 = !DILocation(line: 219, column: 8, scope: !316)
!335 = !DILocalVariable(name: "i", scope: !336, file: !3, line: 222, type: !8)
!336 = distinct !DILexicalBlock(scope: !337, file: !3, line: 221, column: 9)
!337 = distinct !DILexicalBlock(scope: !332, file: !3, line: 220, column: 5)
!338 = !DILocation(line: 222, column: 17, scope: !336)
!339 = !DILocalVariable(name: "n", scope: !336, file: !3, line: 222, type: !8)
!340 = !DILocation(line: 222, column: 20, scope: !336)
!341 = !DILocalVariable(name: "intVariable", scope: !336, file: !3, line: 222, type: !8)
!342 = !DILocation(line: 222, column: 23, scope: !336)
!343 = !DILocation(line: 223, column: 24, scope: !344)
!344 = distinct !DILexicalBlock(scope: !336, file: !3, line: 223, column: 17)
!345 = !DILocation(line: 223, column: 17, scope: !344)
!346 = !DILocation(line: 223, column: 40, scope: !344)
!347 = !DILocation(line: 223, column: 17, scope: !336)
!348 = !DILocation(line: 226, column: 29, scope: !349)
!349 = distinct !DILexicalBlock(scope: !344, file: !3, line: 224, column: 13)
!350 = !DILocation(line: 227, column: 24, scope: !351)
!351 = distinct !DILexicalBlock(scope: !349, file: !3, line: 227, column: 17)
!352 = !DILocation(line: 227, column: 22, scope: !351)
!353 = !DILocation(line: 227, column: 29, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !3, line: 227, column: 17)
!355 = !DILocation(line: 227, column: 33, scope: !354)
!356 = !DILocation(line: 227, column: 31, scope: !354)
!357 = !DILocation(line: 227, column: 17, scope: !351)
!358 = !DILocation(line: 230, column: 32, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !3, line: 228, column: 17)
!360 = !DILocation(line: 231, column: 17, scope: !359)
!361 = !DILocation(line: 227, column: 37, scope: !354)
!362 = !DILocation(line: 227, column: 17, scope: !354)
!363 = distinct !{!363, !357, !364, !92}
!364 = !DILocation(line: 231, column: 17, scope: !351)
!365 = !DILocation(line: 232, column: 30, scope: !349)
!366 = !DILocation(line: 232, column: 17, scope: !349)
!367 = !DILocation(line: 233, column: 13, scope: !349)
!368 = !DILocation(line: 235, column: 5, scope: !337)
!369 = !DILocation(line: 236, column: 1, scope: !316)
!370 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_06_good", scope: !3, file: !3, line: 238, type: !14, scopeLine: 239, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!371 = !DILocation(line: 240, column: 5, scope: !370)
!372 = !DILocation(line: 241, column: 5, scope: !370)
!373 = !DILocation(line: 242, column: 5, scope: !370)
!374 = !DILocation(line: 243, column: 5, scope: !370)
!375 = !DILocation(line: 244, column: 1, scope: !370)
