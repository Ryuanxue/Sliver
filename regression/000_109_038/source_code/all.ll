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
@.str.5 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.8 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.11 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_13_bad() #0 !dbg !52 {
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
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !64
  %cmp = icmp eq i32 %1, 5, !dbg !66
  br i1 %cmp, label %if.then, label %if.end6, !dbg !67

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !68, metadata !DIExpression()), !dbg !74
  %2 = load i8*, i8** %data, align 8, !dbg !75
  %call = call i64 @strlen(i8* %2) #7, !dbg !76
  store i64 %call, i64* %dataLen, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !77, metadata !DIExpression()), !dbg !78
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !79
  store i8* %call1, i8** %environment, align 8, !dbg !78
  %3 = load i8*, i8** %environment, align 8, !dbg !80
  %cmp2 = icmp ne i8* %3, null, !dbg !82
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !83

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !84
  %5 = load i64, i64* %dataLen, align 8, !dbg !86
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !87
  %6 = load i8*, i8** %environment, align 8, !dbg !88
  %7 = load i64, i64* %dataLen, align 8, !dbg !89
  %sub = sub i64 100, %7, !dbg !90
  %sub4 = sub i64 %sub, 1, !dbg !91
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #8, !dbg !92
  br label %if.end, !dbg !93

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !94

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !95
  %cmp7 = icmp eq i32 %8, 5, !dbg !97
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !98

if.then8:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !99, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %n, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !105, metadata !DIExpression()), !dbg !106
  %9 = load i8*, i8** %data, align 8, !dbg !107
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !109
  %cmp10 = icmp eq i32 %call9, 1, !dbg !110
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !111

if.then11:                                        ; preds = %if.then8
  store i32 0, i32* %intVariable, align 4, !dbg !112
  store i32 0, i32* %i, align 4, !dbg !114
  br label %for.cond, !dbg !116

for.cond:                                         ; preds = %for.inc, %if.then11
  %10 = load i32, i32* %i, align 4, !dbg !117
  %11 = load i32, i32* %n, align 4, !dbg !119
  %cmp12 = icmp slt i32 %10, %11, !dbg !120
  br i1 %cmp12, label %for.body, label %for.end, !dbg !121

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !122
  %inc = add nsw i32 %12, 1, !dbg !122
  store i32 %inc, i32* %intVariable, align 4, !dbg !122
  br label %for.inc, !dbg !124

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !125
  %inc13 = add nsw i32 %13, 1, !dbg !125
  store i32 %inc13, i32* %i, align 4, !dbg !125
  br label %for.cond, !dbg !126, !llvm.loop !127

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !130
  call void @printIntLine(i32 %14), !dbg !131
  br label %if.end14, !dbg !132

if.end14:                                         ; preds = %for.end, %if.then8
  br label %if.end15, !dbg !133

if.end15:                                         ; preds = %if.end14, %if.end6
  ret void, !dbg !134
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
define dso_local void @goodB2G1() #0 !dbg !135 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !139
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !139
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !140
  store i8* %arraydecay, i8** %data, align 8, !dbg !141
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !142
  %cmp = icmp eq i32 %1, 5, !dbg !144
  br i1 %cmp, label %if.then, label %if.end6, !dbg !145

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !146, metadata !DIExpression()), !dbg !149
  %2 = load i8*, i8** %data, align 8, !dbg !150
  %call = call i64 @strlen(i8* %2) #7, !dbg !151
  store i64 %call, i64* %dataLen, align 8, !dbg !149
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !152, metadata !DIExpression()), !dbg !153
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !154
  store i8* %call1, i8** %environment, align 8, !dbg !153
  %3 = load i8*, i8** %environment, align 8, !dbg !155
  %cmp2 = icmp ne i8* %3, null, !dbg !157
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !158

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !159
  %5 = load i64, i64* %dataLen, align 8, !dbg !161
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !162
  %6 = load i8*, i8** %environment, align 8, !dbg !163
  %7 = load i64, i64* %dataLen, align 8, !dbg !164
  %sub = sub i64 100, %7, !dbg !165
  %sub4 = sub i64 %sub, 1, !dbg !166
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #8, !dbg !167
  br label %if.end, !dbg !168

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !169

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !170
  %cmp7 = icmp ne i32 %8, 5, !dbg !172
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !173

if.then8:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !174
  br label %if.end18, !dbg !176

if.else:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !177, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %n, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !183, metadata !DIExpression()), !dbg !184
  %9 = load i8*, i8** %data, align 8, !dbg !185
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !187
  %cmp10 = icmp eq i32 %call9, 1, !dbg !188
  br i1 %cmp10, label %if.then11, label %if.end17, !dbg !189

if.then11:                                        ; preds = %if.else
  %10 = load i32, i32* %n, align 4, !dbg !190
  %cmp12 = icmp slt i32 %10, 10000, !dbg !193
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !194

if.then13:                                        ; preds = %if.then11
  store i32 0, i32* %intVariable, align 4, !dbg !195
  store i32 0, i32* %i, align 4, !dbg !197
  br label %for.cond, !dbg !199

for.cond:                                         ; preds = %for.inc, %if.then13
  %11 = load i32, i32* %i, align 4, !dbg !200
  %12 = load i32, i32* %n, align 4, !dbg !202
  %cmp14 = icmp slt i32 %11, %12, !dbg !203
  br i1 %cmp14, label %for.body, label %for.end, !dbg !204

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !205
  %inc = add nsw i32 %13, 1, !dbg !205
  store i32 %inc, i32* %intVariable, align 4, !dbg !205
  br label %for.inc, !dbg !207

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !208
  %inc15 = add nsw i32 %14, 1, !dbg !208
  store i32 %inc15, i32* %i, align 4, !dbg !208
  br label %for.cond, !dbg !209, !llvm.loop !210

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !212
  call void @printIntLine(i32 %15), !dbg !213
  br label %if.end16, !dbg !214

if.end16:                                         ; preds = %for.end, %if.then11
  br label %if.end17, !dbg !215

if.end17:                                         ; preds = %if.end16, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !217 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !220, metadata !DIExpression()), !dbg !221
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !221
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !221
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !222
  store i8* %arraydecay, i8** %data, align 8, !dbg !223
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !224
  %cmp = icmp eq i32 %1, 5, !dbg !226
  br i1 %cmp, label %if.then, label %if.end6, !dbg !227

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !228, metadata !DIExpression()), !dbg !231
  %2 = load i8*, i8** %data, align 8, !dbg !232
  %call = call i64 @strlen(i8* %2) #7, !dbg !233
  store i64 %call, i64* %dataLen, align 8, !dbg !231
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !234, metadata !DIExpression()), !dbg !235
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !236
  store i8* %call1, i8** %environment, align 8, !dbg !235
  %3 = load i8*, i8** %environment, align 8, !dbg !237
  %cmp2 = icmp ne i8* %3, null, !dbg !239
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !240

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !241
  %5 = load i64, i64* %dataLen, align 8, !dbg !243
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !244
  %6 = load i8*, i8** %environment, align 8, !dbg !245
  %7 = load i64, i64* %dataLen, align 8, !dbg !246
  %sub = sub i64 100, %7, !dbg !247
  %sub4 = sub i64 %sub, 1, !dbg !248
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #8, !dbg !249
  br label %if.end, !dbg !250

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !251

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !252
  %cmp7 = icmp eq i32 %8, 5, !dbg !254
  br i1 %cmp7, label %if.then8, label %if.end18, !dbg !255

if.then8:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %i, metadata !256, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %n, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !262, metadata !DIExpression()), !dbg !263
  %9 = load i8*, i8** %data, align 8, !dbg !264
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !266
  %cmp10 = icmp eq i32 %call9, 1, !dbg !267
  br i1 %cmp10, label %if.then11, label %if.end17, !dbg !268

if.then11:                                        ; preds = %if.then8
  %10 = load i32, i32* %n, align 4, !dbg !269
  %cmp12 = icmp slt i32 %10, 10000, !dbg !272
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !273

if.then13:                                        ; preds = %if.then11
  store i32 0, i32* %intVariable, align 4, !dbg !274
  store i32 0, i32* %i, align 4, !dbg !276
  br label %for.cond, !dbg !278

for.cond:                                         ; preds = %for.inc, %if.then13
  %11 = load i32, i32* %i, align 4, !dbg !279
  %12 = load i32, i32* %n, align 4, !dbg !281
  %cmp14 = icmp slt i32 %11, %12, !dbg !282
  br i1 %cmp14, label %for.body, label %for.end, !dbg !283

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !284
  %inc = add nsw i32 %13, 1, !dbg !284
  store i32 %inc, i32* %intVariable, align 4, !dbg !284
  br label %for.inc, !dbg !286

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !287
  %inc15 = add nsw i32 %14, 1, !dbg !287
  store i32 %inc15, i32* %i, align 4, !dbg !287
  br label %for.cond, !dbg !288, !llvm.loop !289

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !291
  call void @printIntLine(i32 %15), !dbg !292
  br label %if.end16, !dbg !293

if.end16:                                         ; preds = %for.end, %if.then11
  br label %if.end17, !dbg !294

if.end17:                                         ; preds = %if.end16, %if.then8
  br label %if.end18, !dbg !295

if.end18:                                         ; preds = %if.end17, %if.end6
  ret void, !dbg !296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !297 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !301
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !301
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !302
  store i8* %arraydecay, i8** %data, align 8, !dbg !303
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !304
  %cmp = icmp ne i32 %1, 5, !dbg !306
  br i1 %cmp, label %if.then, label %if.else, !dbg !307

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !308
  br label %if.end, !dbg !310

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !311
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !313
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !314
  %cmp1 = icmp eq i32 %3, 5, !dbg !316
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !317

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !318, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.declare(metadata i32* %n, metadata !322, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !324, metadata !DIExpression()), !dbg !325
  %4 = load i8*, i8** %data, align 8, !dbg !326
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !328
  %cmp4 = icmp eq i32 %call3, 1, !dbg !329
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !330

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !331
  store i32 0, i32* %i, align 4, !dbg !333
  br label %for.cond, !dbg !335

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !336
  %6 = load i32, i32* %n, align 4, !dbg !338
  %cmp6 = icmp slt i32 %5, %6, !dbg !339
  br i1 %cmp6, label %for.body, label %for.end, !dbg !340

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !341
  %inc = add nsw i32 %7, 1, !dbg !341
  store i32 %inc, i32* %intVariable, align 4, !dbg !341
  br label %for.inc, !dbg !343

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !344
  %inc7 = add nsw i32 %8, 1, !dbg !344
  store i32 %inc7, i32* %i, align 4, !dbg !344
  br label %for.cond, !dbg !345, !llvm.loop !346

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !348
  call void @printIntLine(i32 %9), !dbg !349
  br label %if.end8, !dbg !350

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !351

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !352
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !353 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !354, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !357
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !357
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !358
  store i8* %arraydecay, i8** %data, align 8, !dbg !359
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !360
  %cmp = icmp eq i32 %1, 5, !dbg !362
  br i1 %cmp, label %if.then, label %if.end, !dbg !363

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !364
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !366
  br label %if.end, !dbg !367

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !368
  %cmp1 = icmp eq i32 %3, 5, !dbg !370
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !371

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !372, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata i32* %n, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !378, metadata !DIExpression()), !dbg !379
  %4 = load i8*, i8** %data, align 8, !dbg !380
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !382
  %cmp4 = icmp eq i32 %call3, 1, !dbg !383
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !384

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !385
  store i32 0, i32* %i, align 4, !dbg !387
  br label %for.cond, !dbg !389

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !390
  %6 = load i32, i32* %n, align 4, !dbg !392
  %cmp6 = icmp slt i32 %5, %6, !dbg !393
  br i1 %cmp6, label %for.body, label %for.end, !dbg !394

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !395
  %inc = add nsw i32 %7, 1, !dbg !395
  store i32 %inc, i32* %intVariable, align 4, !dbg !395
  br label %for.inc, !dbg !397

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !398
  %inc7 = add nsw i32 %8, 1, !dbg !398
  store i32 %inc7, i32* %i, align 4, !dbg !398
  br label %for.cond, !dbg !399, !llvm.loop !400

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !402
  call void @printIntLine(i32 %9), !dbg !403
  br label %if.end8, !dbg !404

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !405

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_13_good() #0 !dbg !407 {
entry:
  call void @goodB2G1(), !dbg !408
  call void @goodB2G2(), !dbg !409
  call void @goodG2B1(), !dbg !410
  call void @goodG2B2(), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !413 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !418
  %0 = load i8*, i8** %line.addr, align 8, !dbg !419
  %cmp = icmp ne i8* %0, null, !dbg !421
  br i1 %cmp, label %if.then, label %if.end, !dbg !422

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !423
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !425
  br label %if.end, !dbg !426

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !427
  ret void, !dbg !428
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !429 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load i8*, i8** %line.addr, align 8, !dbg !432
  %cmp = icmp ne i8* %0, null, !dbg !434
  br i1 %cmp, label %if.then, label %if.end, !dbg !435

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !438
  br label %if.end, !dbg !439

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !441 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load i32*, i32** %line.addr, align 8, !dbg !448
  %cmp = icmp ne i32* %0, null, !dbg !450
  br i1 %cmp, label %if.then, label %if.end, !dbg !451

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !452
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !454
  br label %if.end, !dbg !455

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !456
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !457 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !460, metadata !DIExpression()), !dbg !461
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !462
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !463
  ret void, !dbg !464
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !465 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !471
  %conv = sext i16 %0 to i32, !dbg !471
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.11, i64 0, i64 0), i32 %conv), !dbg !472
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !474 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !478, metadata !DIExpression()), !dbg !479
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !480
  %conv = fpext float %0 to double, !dbg !480
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !481
  ret void, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !483 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !487, metadata !DIExpression()), !dbg !488
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !489
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !490
  ret void, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !492 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !501
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !502
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !504 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !507, metadata !DIExpression()), !dbg !508
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !509
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !510
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !512 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !515, metadata !DIExpression()), !dbg !516
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !517
  %conv = sext i8 %0 to i32, !dbg !517
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !518
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !520 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !525, metadata !DIExpression()), !dbg !529
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !530
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !531
  store i32 %0, i32* %arrayidx, align 4, !dbg !532
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !533
  store i32 0, i32* %arrayidx1, align 4, !dbg !534
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !535
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !536
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !538 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !541, metadata !DIExpression()), !dbg !542
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !543
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !544
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !546 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !549, metadata !DIExpression()), !dbg !550
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !551
  %conv = zext i8 %0 to i32, !dbg !551
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !552
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !554 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !558, metadata !DIExpression()), !dbg !559
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !560
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !561
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !563 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !573, metadata !DIExpression()), !dbg !574
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !575
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !576
  %1 = load i32, i32* %intOne, align 4, !dbg !576
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !577
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !578
  %3 = load i32, i32* %intTwo, align 4, !dbg !578
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !579
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !581 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !585, metadata !DIExpression()), !dbg !586
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !587, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.declare(metadata i64* %i, metadata !589, metadata !DIExpression()), !dbg !590
  store i64 0, i64* %i, align 8, !dbg !591
  br label %for.cond, !dbg !593

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !594
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !596
  %cmp = icmp ult i64 %0, %1, !dbg !597
  br i1 %cmp, label %for.body, label %for.end, !dbg !598

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !599
  %3 = load i64, i64* %i, align 8, !dbg !601
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !599
  %4 = load i8, i8* %arrayidx, align 1, !dbg !599
  %conv = zext i8 %4 to i32, !dbg !599
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !602
  br label %for.inc, !dbg !603

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !604
  %inc = add i64 %5, 1, !dbg !604
  store i64 %inc, i64* %i, align 8, !dbg !604
  br label %for.cond, !dbg !605, !llvm.loop !606

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !608
  ret void, !dbg !609
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !610 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !613, metadata !DIExpression()), !dbg !614
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !615, metadata !DIExpression()), !dbg !616
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !617, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !619, metadata !DIExpression()), !dbg !620
  store i64 0, i64* %numWritten, align 8, !dbg !620
  br label %while.cond, !dbg !621

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !622
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !623
  %cmp = icmp ult i64 %0, %1, !dbg !624
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !625

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !626
  %2 = load i16*, i16** %call, align 8, !dbg !626
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !626
  %4 = load i64, i64* %numWritten, align 8, !dbg !626
  %mul = mul i64 2, %4, !dbg !626
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !626
  %5 = load i8, i8* %arrayidx, align 1, !dbg !626
  %conv = sext i8 %5 to i32, !dbg !626
  %idxprom = sext i32 %conv to i64, !dbg !626
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !626
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !626
  %conv2 = zext i16 %6 to i32, !dbg !626
  %and = and i32 %conv2, 4096, !dbg !626
  %tobool = icmp ne i32 %and, 0, !dbg !626
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !627

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !628
  %7 = load i16*, i16** %call3, align 8, !dbg !628
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !628
  %9 = load i64, i64* %numWritten, align 8, !dbg !628
  %mul4 = mul i64 2, %9, !dbg !628
  %add = add i64 %mul4, 1, !dbg !628
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !628
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !628
  %conv6 = sext i8 %10 to i32, !dbg !628
  %idxprom7 = sext i32 %conv6 to i64, !dbg !628
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !628
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !628
  %conv9 = zext i16 %11 to i32, !dbg !628
  %and10 = and i32 %conv9, 4096, !dbg !628
  %tobool11 = icmp ne i32 %and10, 0, !dbg !627
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !629
  br i1 %12, label %while.body, label %while.end, !dbg !621

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !630, metadata !DIExpression()), !dbg !632
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !633
  %14 = load i64, i64* %numWritten, align 8, !dbg !634
  %mul12 = mul i64 2, %14, !dbg !635
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !633
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !636
  %15 = load i32, i32* %byte, align 4, !dbg !637
  %conv15 = trunc i32 %15 to i8, !dbg !638
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !639
  %17 = load i64, i64* %numWritten, align 8, !dbg !640
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !639
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !641
  %18 = load i64, i64* %numWritten, align 8, !dbg !642
  %inc = add i64 %18, 1, !dbg !642
  store i64 %inc, i64* %numWritten, align 8, !dbg !642
  br label %while.cond, !dbg !621, !llvm.loop !643

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !645
  ret i64 %19, !dbg !646
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !647 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !650, metadata !DIExpression()), !dbg !651
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !652, metadata !DIExpression()), !dbg !653
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !654, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !656, metadata !DIExpression()), !dbg !657
  store i64 0, i64* %numWritten, align 8, !dbg !657
  br label %while.cond, !dbg !658

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !659
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !660
  %cmp = icmp ult i64 %0, %1, !dbg !661
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !662

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !663
  %3 = load i64, i64* %numWritten, align 8, !dbg !664
  %mul = mul i64 2, %3, !dbg !665
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !663
  %4 = load i32, i32* %arrayidx, align 4, !dbg !663
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !666
  %tobool = icmp ne i32 %call, 0, !dbg !666
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !667

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !668
  %6 = load i64, i64* %numWritten, align 8, !dbg !669
  %mul1 = mul i64 2, %6, !dbg !670
  %add = add i64 %mul1, 1, !dbg !671
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !668
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !668
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !672
  %tobool4 = icmp ne i32 %call3, 0, !dbg !667
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !673
  br i1 %8, label %while.body, label %while.end, !dbg !658

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !674, metadata !DIExpression()), !dbg !676
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !677
  %10 = load i64, i64* %numWritten, align 8, !dbg !678
  %mul5 = mul i64 2, %10, !dbg !679
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !677
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !680
  %11 = load i32, i32* %byte, align 4, !dbg !681
  %conv = trunc i32 %11 to i8, !dbg !682
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !683
  %13 = load i64, i64* %numWritten, align 8, !dbg !684
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !683
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !685
  %14 = load i64, i64* %numWritten, align 8, !dbg !686
  %inc = add i64 %14, 1, !dbg !686
  store i64 %inc, i64* %numWritten, align 8, !dbg !686
  br label %while.cond, !dbg !658, !llvm.loop !687

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !689
  ret i64 %15, !dbg !690
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !691 {
entry:
  ret i32 1, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !695 {
entry:
  ret i32 0, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !697 {
entry:
  %call = call i32 @rand() #8, !dbg !698
  %rem = srem i32 %call, 2, !dbg !699
  ret i32 %rem, !dbg !700
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !701 {
entry:
  ret void, !dbg !702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !703 {
entry:
  ret void, !dbg !704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !705 {
entry:
  ret void, !dbg !706
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !707 {
entry:
  ret void, !dbg !708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !709 {
entry:
  ret void, !dbg !710
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !711 {
entry:
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !713 {
entry:
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !715 {
entry:
  ret void, !dbg !716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !717 {
entry:
  ret void, !dbg !718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !719 {
entry:
  ret void, !dbg !720
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !721 {
entry:
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !723 {
entry:
  ret void, !dbg !724
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !725 {
entry:
  ret void, !dbg !726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !727 {
entry:
  ret void, !dbg !728
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !729 {
entry:
  ret void, !dbg !730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !731 {
entry:
  ret void, !dbg !732
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !733 {
entry:
  ret void, !dbg !734
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !735 {
entry:
  ret void, !dbg !736
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_038/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_13.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_038/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_13_bad", scope: !45, file: !45, line: 37, type: !53, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!66 = !DILocation(line: 42, column: 25, scope: !65)
!67 = !DILocation(line: 42, column: 8, scope: !52)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !45, line: 46, type: !71)
!69 = distinct !DILexicalBlock(scope: !70, file: !45, line: 44, column: 9)
!70 = distinct !DILexicalBlock(scope: !65, file: !45, line: 43, column: 5)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DILocation(line: 46, column: 20, scope: !69)
!75 = !DILocation(line: 46, column: 37, scope: !69)
!76 = !DILocation(line: 46, column: 30, scope: !69)
!77 = !DILocalVariable(name: "environment", scope: !69, file: !45, line: 47, type: !42)
!78 = !DILocation(line: 47, column: 20, scope: !69)
!79 = !DILocation(line: 47, column: 34, scope: !69)
!80 = !DILocation(line: 49, column: 17, scope: !81)
!81 = distinct !DILexicalBlock(scope: !69, file: !45, line: 49, column: 17)
!82 = !DILocation(line: 49, column: 29, scope: !81)
!83 = !DILocation(line: 49, column: 17, scope: !69)
!84 = !DILocation(line: 52, column: 25, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !45, line: 50, column: 13)
!86 = !DILocation(line: 52, column: 30, scope: !85)
!87 = !DILocation(line: 52, column: 29, scope: !85)
!88 = !DILocation(line: 52, column: 39, scope: !85)
!89 = !DILocation(line: 52, column: 56, scope: !85)
!90 = !DILocation(line: 52, column: 55, scope: !85)
!91 = !DILocation(line: 52, column: 63, scope: !85)
!92 = !DILocation(line: 52, column: 17, scope: !85)
!93 = !DILocation(line: 53, column: 13, scope: !85)
!94 = !DILocation(line: 55, column: 5, scope: !70)
!95 = !DILocation(line: 56, column: 8, scope: !96)
!96 = distinct !DILexicalBlock(scope: !52, file: !45, line: 56, column: 8)
!97 = !DILocation(line: 56, column: 25, scope: !96)
!98 = !DILocation(line: 56, column: 8, scope: !52)
!99 = !DILocalVariable(name: "i", scope: !100, file: !45, line: 59, type: !23)
!100 = distinct !DILexicalBlock(scope: !101, file: !45, line: 58, column: 9)
!101 = distinct !DILexicalBlock(scope: !96, file: !45, line: 57, column: 5)
!102 = !DILocation(line: 59, column: 17, scope: !100)
!103 = !DILocalVariable(name: "n", scope: !100, file: !45, line: 59, type: !23)
!104 = !DILocation(line: 59, column: 20, scope: !100)
!105 = !DILocalVariable(name: "intVariable", scope: !100, file: !45, line: 59, type: !23)
!106 = !DILocation(line: 59, column: 23, scope: !100)
!107 = !DILocation(line: 60, column: 24, scope: !108)
!108 = distinct !DILexicalBlock(scope: !100, file: !45, line: 60, column: 17)
!109 = !DILocation(line: 60, column: 17, scope: !108)
!110 = !DILocation(line: 60, column: 40, scope: !108)
!111 = !DILocation(line: 60, column: 17, scope: !100)
!112 = !DILocation(line: 63, column: 29, scope: !113)
!113 = distinct !DILexicalBlock(scope: !108, file: !45, line: 61, column: 13)
!114 = !DILocation(line: 64, column: 24, scope: !115)
!115 = distinct !DILexicalBlock(scope: !113, file: !45, line: 64, column: 17)
!116 = !DILocation(line: 64, column: 22, scope: !115)
!117 = !DILocation(line: 64, column: 29, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !45, line: 64, column: 17)
!119 = !DILocation(line: 64, column: 33, scope: !118)
!120 = !DILocation(line: 64, column: 31, scope: !118)
!121 = !DILocation(line: 64, column: 17, scope: !115)
!122 = !DILocation(line: 67, column: 32, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !45, line: 65, column: 17)
!124 = !DILocation(line: 68, column: 17, scope: !123)
!125 = !DILocation(line: 64, column: 37, scope: !118)
!126 = !DILocation(line: 64, column: 17, scope: !118)
!127 = distinct !{!127, !121, !128, !129}
!128 = !DILocation(line: 68, column: 17, scope: !115)
!129 = !{!"llvm.loop.mustprogress"}
!130 = !DILocation(line: 69, column: 30, scope: !113)
!131 = !DILocation(line: 69, column: 17, scope: !113)
!132 = !DILocation(line: 70, column: 13, scope: !113)
!133 = !DILocation(line: 72, column: 5, scope: !101)
!134 = !DILocation(line: 73, column: 1, scope: !52)
!135 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 80, type: !53, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!136 = !DILocalVariable(name: "data", scope: !135, file: !45, line: 82, type: !42)
!137 = !DILocation(line: 82, column: 12, scope: !135)
!138 = !DILocalVariable(name: "dataBuffer", scope: !135, file: !45, line: 83, type: !58)
!139 = !DILocation(line: 83, column: 10, scope: !135)
!140 = !DILocation(line: 84, column: 12, scope: !135)
!141 = !DILocation(line: 84, column: 10, scope: !135)
!142 = !DILocation(line: 85, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !135, file: !45, line: 85, column: 8)
!144 = !DILocation(line: 85, column: 25, scope: !143)
!145 = !DILocation(line: 85, column: 8, scope: !135)
!146 = !DILocalVariable(name: "dataLen", scope: !147, file: !45, line: 89, type: !71)
!147 = distinct !DILexicalBlock(scope: !148, file: !45, line: 87, column: 9)
!148 = distinct !DILexicalBlock(scope: !143, file: !45, line: 86, column: 5)
!149 = !DILocation(line: 89, column: 20, scope: !147)
!150 = !DILocation(line: 89, column: 37, scope: !147)
!151 = !DILocation(line: 89, column: 30, scope: !147)
!152 = !DILocalVariable(name: "environment", scope: !147, file: !45, line: 90, type: !42)
!153 = !DILocation(line: 90, column: 20, scope: !147)
!154 = !DILocation(line: 90, column: 34, scope: !147)
!155 = !DILocation(line: 92, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !147, file: !45, line: 92, column: 17)
!157 = !DILocation(line: 92, column: 29, scope: !156)
!158 = !DILocation(line: 92, column: 17, scope: !147)
!159 = !DILocation(line: 95, column: 25, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !45, line: 93, column: 13)
!161 = !DILocation(line: 95, column: 30, scope: !160)
!162 = !DILocation(line: 95, column: 29, scope: !160)
!163 = !DILocation(line: 95, column: 39, scope: !160)
!164 = !DILocation(line: 95, column: 56, scope: !160)
!165 = !DILocation(line: 95, column: 55, scope: !160)
!166 = !DILocation(line: 95, column: 63, scope: !160)
!167 = !DILocation(line: 95, column: 17, scope: !160)
!168 = !DILocation(line: 96, column: 13, scope: !160)
!169 = !DILocation(line: 98, column: 5, scope: !148)
!170 = !DILocation(line: 99, column: 8, scope: !171)
!171 = distinct !DILexicalBlock(scope: !135, file: !45, line: 99, column: 8)
!172 = !DILocation(line: 99, column: 25, scope: !171)
!173 = !DILocation(line: 99, column: 8, scope: !135)
!174 = !DILocation(line: 102, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !45, line: 100, column: 5)
!176 = !DILocation(line: 103, column: 5, scope: !175)
!177 = !DILocalVariable(name: "i", scope: !178, file: !45, line: 107, type: !23)
!178 = distinct !DILexicalBlock(scope: !179, file: !45, line: 106, column: 9)
!179 = distinct !DILexicalBlock(scope: !171, file: !45, line: 105, column: 5)
!180 = !DILocation(line: 107, column: 17, scope: !178)
!181 = !DILocalVariable(name: "n", scope: !178, file: !45, line: 107, type: !23)
!182 = !DILocation(line: 107, column: 20, scope: !178)
!183 = !DILocalVariable(name: "intVariable", scope: !178, file: !45, line: 107, type: !23)
!184 = !DILocation(line: 107, column: 23, scope: !178)
!185 = !DILocation(line: 108, column: 24, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !45, line: 108, column: 17)
!187 = !DILocation(line: 108, column: 17, scope: !186)
!188 = !DILocation(line: 108, column: 40, scope: !186)
!189 = !DILocation(line: 108, column: 17, scope: !178)
!190 = !DILocation(line: 111, column: 21, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !45, line: 111, column: 21)
!192 = distinct !DILexicalBlock(scope: !186, file: !45, line: 109, column: 13)
!193 = !DILocation(line: 111, column: 23, scope: !191)
!194 = !DILocation(line: 111, column: 21, scope: !192)
!195 = !DILocation(line: 113, column: 33, scope: !196)
!196 = distinct !DILexicalBlock(scope: !191, file: !45, line: 112, column: 17)
!197 = !DILocation(line: 114, column: 28, scope: !198)
!198 = distinct !DILexicalBlock(scope: !196, file: !45, line: 114, column: 21)
!199 = !DILocation(line: 114, column: 26, scope: !198)
!200 = !DILocation(line: 114, column: 33, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !45, line: 114, column: 21)
!202 = !DILocation(line: 114, column: 37, scope: !201)
!203 = !DILocation(line: 114, column: 35, scope: !201)
!204 = !DILocation(line: 114, column: 21, scope: !198)
!205 = !DILocation(line: 117, column: 36, scope: !206)
!206 = distinct !DILexicalBlock(scope: !201, file: !45, line: 115, column: 21)
!207 = !DILocation(line: 118, column: 21, scope: !206)
!208 = !DILocation(line: 114, column: 41, scope: !201)
!209 = !DILocation(line: 114, column: 21, scope: !201)
!210 = distinct !{!210, !204, !211, !129}
!211 = !DILocation(line: 118, column: 21, scope: !198)
!212 = !DILocation(line: 119, column: 34, scope: !196)
!213 = !DILocation(line: 119, column: 21, scope: !196)
!214 = !DILocation(line: 120, column: 17, scope: !196)
!215 = !DILocation(line: 121, column: 13, scope: !192)
!216 = !DILocation(line: 124, column: 1, scope: !135)
!217 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 127, type: !53, scopeLine: 128, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!218 = !DILocalVariable(name: "data", scope: !217, file: !45, line: 129, type: !42)
!219 = !DILocation(line: 129, column: 12, scope: !217)
!220 = !DILocalVariable(name: "dataBuffer", scope: !217, file: !45, line: 130, type: !58)
!221 = !DILocation(line: 130, column: 10, scope: !217)
!222 = !DILocation(line: 131, column: 12, scope: !217)
!223 = !DILocation(line: 131, column: 10, scope: !217)
!224 = !DILocation(line: 132, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !217, file: !45, line: 132, column: 8)
!226 = !DILocation(line: 132, column: 25, scope: !225)
!227 = !DILocation(line: 132, column: 8, scope: !217)
!228 = !DILocalVariable(name: "dataLen", scope: !229, file: !45, line: 136, type: !71)
!229 = distinct !DILexicalBlock(scope: !230, file: !45, line: 134, column: 9)
!230 = distinct !DILexicalBlock(scope: !225, file: !45, line: 133, column: 5)
!231 = !DILocation(line: 136, column: 20, scope: !229)
!232 = !DILocation(line: 136, column: 37, scope: !229)
!233 = !DILocation(line: 136, column: 30, scope: !229)
!234 = !DILocalVariable(name: "environment", scope: !229, file: !45, line: 137, type: !42)
!235 = !DILocation(line: 137, column: 20, scope: !229)
!236 = !DILocation(line: 137, column: 34, scope: !229)
!237 = !DILocation(line: 139, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !229, file: !45, line: 139, column: 17)
!239 = !DILocation(line: 139, column: 29, scope: !238)
!240 = !DILocation(line: 139, column: 17, scope: !229)
!241 = !DILocation(line: 142, column: 25, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !45, line: 140, column: 13)
!243 = !DILocation(line: 142, column: 30, scope: !242)
!244 = !DILocation(line: 142, column: 29, scope: !242)
!245 = !DILocation(line: 142, column: 39, scope: !242)
!246 = !DILocation(line: 142, column: 56, scope: !242)
!247 = !DILocation(line: 142, column: 55, scope: !242)
!248 = !DILocation(line: 142, column: 63, scope: !242)
!249 = !DILocation(line: 142, column: 17, scope: !242)
!250 = !DILocation(line: 143, column: 13, scope: !242)
!251 = !DILocation(line: 145, column: 5, scope: !230)
!252 = !DILocation(line: 146, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !217, file: !45, line: 146, column: 8)
!254 = !DILocation(line: 146, column: 25, scope: !253)
!255 = !DILocation(line: 146, column: 8, scope: !217)
!256 = !DILocalVariable(name: "i", scope: !257, file: !45, line: 149, type: !23)
!257 = distinct !DILexicalBlock(scope: !258, file: !45, line: 148, column: 9)
!258 = distinct !DILexicalBlock(scope: !253, file: !45, line: 147, column: 5)
!259 = !DILocation(line: 149, column: 17, scope: !257)
!260 = !DILocalVariable(name: "n", scope: !257, file: !45, line: 149, type: !23)
!261 = !DILocation(line: 149, column: 20, scope: !257)
!262 = !DILocalVariable(name: "intVariable", scope: !257, file: !45, line: 149, type: !23)
!263 = !DILocation(line: 149, column: 23, scope: !257)
!264 = !DILocation(line: 150, column: 24, scope: !265)
!265 = distinct !DILexicalBlock(scope: !257, file: !45, line: 150, column: 17)
!266 = !DILocation(line: 150, column: 17, scope: !265)
!267 = !DILocation(line: 150, column: 40, scope: !265)
!268 = !DILocation(line: 150, column: 17, scope: !257)
!269 = !DILocation(line: 153, column: 21, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !45, line: 153, column: 21)
!271 = distinct !DILexicalBlock(scope: !265, file: !45, line: 151, column: 13)
!272 = !DILocation(line: 153, column: 23, scope: !270)
!273 = !DILocation(line: 153, column: 21, scope: !271)
!274 = !DILocation(line: 155, column: 33, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !45, line: 154, column: 17)
!276 = !DILocation(line: 156, column: 28, scope: !277)
!277 = distinct !DILexicalBlock(scope: !275, file: !45, line: 156, column: 21)
!278 = !DILocation(line: 156, column: 26, scope: !277)
!279 = !DILocation(line: 156, column: 33, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !45, line: 156, column: 21)
!281 = !DILocation(line: 156, column: 37, scope: !280)
!282 = !DILocation(line: 156, column: 35, scope: !280)
!283 = !DILocation(line: 156, column: 21, scope: !277)
!284 = !DILocation(line: 159, column: 36, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !45, line: 157, column: 21)
!286 = !DILocation(line: 160, column: 21, scope: !285)
!287 = !DILocation(line: 156, column: 41, scope: !280)
!288 = !DILocation(line: 156, column: 21, scope: !280)
!289 = distinct !{!289, !283, !290, !129}
!290 = !DILocation(line: 160, column: 21, scope: !277)
!291 = !DILocation(line: 161, column: 34, scope: !275)
!292 = !DILocation(line: 161, column: 21, scope: !275)
!293 = !DILocation(line: 162, column: 17, scope: !275)
!294 = !DILocation(line: 163, column: 13, scope: !271)
!295 = !DILocation(line: 165, column: 5, scope: !258)
!296 = !DILocation(line: 166, column: 1, scope: !217)
!297 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 169, type: !53, scopeLine: 170, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!298 = !DILocalVariable(name: "data", scope: !297, file: !45, line: 171, type: !42)
!299 = !DILocation(line: 171, column: 12, scope: !297)
!300 = !DILocalVariable(name: "dataBuffer", scope: !297, file: !45, line: 172, type: !58)
!301 = !DILocation(line: 172, column: 10, scope: !297)
!302 = !DILocation(line: 173, column: 12, scope: !297)
!303 = !DILocation(line: 173, column: 10, scope: !297)
!304 = !DILocation(line: 174, column: 8, scope: !305)
!305 = distinct !DILexicalBlock(scope: !297, file: !45, line: 174, column: 8)
!306 = !DILocation(line: 174, column: 25, scope: !305)
!307 = !DILocation(line: 174, column: 8, scope: !297)
!308 = !DILocation(line: 177, column: 9, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !45, line: 175, column: 5)
!310 = !DILocation(line: 178, column: 5, scope: !309)
!311 = !DILocation(line: 182, column: 16, scope: !312)
!312 = distinct !DILexicalBlock(scope: !305, file: !45, line: 180, column: 5)
!313 = !DILocation(line: 182, column: 9, scope: !312)
!314 = !DILocation(line: 184, column: 8, scope: !315)
!315 = distinct !DILexicalBlock(scope: !297, file: !45, line: 184, column: 8)
!316 = !DILocation(line: 184, column: 25, scope: !315)
!317 = !DILocation(line: 184, column: 8, scope: !297)
!318 = !DILocalVariable(name: "i", scope: !319, file: !45, line: 187, type: !23)
!319 = distinct !DILexicalBlock(scope: !320, file: !45, line: 186, column: 9)
!320 = distinct !DILexicalBlock(scope: !315, file: !45, line: 185, column: 5)
!321 = !DILocation(line: 187, column: 17, scope: !319)
!322 = !DILocalVariable(name: "n", scope: !319, file: !45, line: 187, type: !23)
!323 = !DILocation(line: 187, column: 20, scope: !319)
!324 = !DILocalVariable(name: "intVariable", scope: !319, file: !45, line: 187, type: !23)
!325 = !DILocation(line: 187, column: 23, scope: !319)
!326 = !DILocation(line: 188, column: 24, scope: !327)
!327 = distinct !DILexicalBlock(scope: !319, file: !45, line: 188, column: 17)
!328 = !DILocation(line: 188, column: 17, scope: !327)
!329 = !DILocation(line: 188, column: 40, scope: !327)
!330 = !DILocation(line: 188, column: 17, scope: !319)
!331 = !DILocation(line: 191, column: 29, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !45, line: 189, column: 13)
!333 = !DILocation(line: 192, column: 24, scope: !334)
!334 = distinct !DILexicalBlock(scope: !332, file: !45, line: 192, column: 17)
!335 = !DILocation(line: 192, column: 22, scope: !334)
!336 = !DILocation(line: 192, column: 29, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !45, line: 192, column: 17)
!338 = !DILocation(line: 192, column: 33, scope: !337)
!339 = !DILocation(line: 192, column: 31, scope: !337)
!340 = !DILocation(line: 192, column: 17, scope: !334)
!341 = !DILocation(line: 195, column: 32, scope: !342)
!342 = distinct !DILexicalBlock(scope: !337, file: !45, line: 193, column: 17)
!343 = !DILocation(line: 196, column: 17, scope: !342)
!344 = !DILocation(line: 192, column: 37, scope: !337)
!345 = !DILocation(line: 192, column: 17, scope: !337)
!346 = distinct !{!346, !340, !347, !129}
!347 = !DILocation(line: 196, column: 17, scope: !334)
!348 = !DILocation(line: 197, column: 30, scope: !332)
!349 = !DILocation(line: 197, column: 17, scope: !332)
!350 = !DILocation(line: 198, column: 13, scope: !332)
!351 = !DILocation(line: 200, column: 5, scope: !320)
!352 = !DILocation(line: 201, column: 1, scope: !297)
!353 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 204, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!354 = !DILocalVariable(name: "data", scope: !353, file: !45, line: 206, type: !42)
!355 = !DILocation(line: 206, column: 12, scope: !353)
!356 = !DILocalVariable(name: "dataBuffer", scope: !353, file: !45, line: 207, type: !58)
!357 = !DILocation(line: 207, column: 10, scope: !353)
!358 = !DILocation(line: 208, column: 12, scope: !353)
!359 = !DILocation(line: 208, column: 10, scope: !353)
!360 = !DILocation(line: 209, column: 8, scope: !361)
!361 = distinct !DILexicalBlock(scope: !353, file: !45, line: 209, column: 8)
!362 = !DILocation(line: 209, column: 25, scope: !361)
!363 = !DILocation(line: 209, column: 8, scope: !353)
!364 = !DILocation(line: 212, column: 16, scope: !365)
!365 = distinct !DILexicalBlock(scope: !361, file: !45, line: 210, column: 5)
!366 = !DILocation(line: 212, column: 9, scope: !365)
!367 = !DILocation(line: 213, column: 5, scope: !365)
!368 = !DILocation(line: 214, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !353, file: !45, line: 214, column: 8)
!370 = !DILocation(line: 214, column: 25, scope: !369)
!371 = !DILocation(line: 214, column: 8, scope: !353)
!372 = !DILocalVariable(name: "i", scope: !373, file: !45, line: 217, type: !23)
!373 = distinct !DILexicalBlock(scope: !374, file: !45, line: 216, column: 9)
!374 = distinct !DILexicalBlock(scope: !369, file: !45, line: 215, column: 5)
!375 = !DILocation(line: 217, column: 17, scope: !373)
!376 = !DILocalVariable(name: "n", scope: !373, file: !45, line: 217, type: !23)
!377 = !DILocation(line: 217, column: 20, scope: !373)
!378 = !DILocalVariable(name: "intVariable", scope: !373, file: !45, line: 217, type: !23)
!379 = !DILocation(line: 217, column: 23, scope: !373)
!380 = !DILocation(line: 218, column: 24, scope: !381)
!381 = distinct !DILexicalBlock(scope: !373, file: !45, line: 218, column: 17)
!382 = !DILocation(line: 218, column: 17, scope: !381)
!383 = !DILocation(line: 218, column: 40, scope: !381)
!384 = !DILocation(line: 218, column: 17, scope: !373)
!385 = !DILocation(line: 221, column: 29, scope: !386)
!386 = distinct !DILexicalBlock(scope: !381, file: !45, line: 219, column: 13)
!387 = !DILocation(line: 222, column: 24, scope: !388)
!388 = distinct !DILexicalBlock(scope: !386, file: !45, line: 222, column: 17)
!389 = !DILocation(line: 222, column: 22, scope: !388)
!390 = !DILocation(line: 222, column: 29, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !45, line: 222, column: 17)
!392 = !DILocation(line: 222, column: 33, scope: !391)
!393 = !DILocation(line: 222, column: 31, scope: !391)
!394 = !DILocation(line: 222, column: 17, scope: !388)
!395 = !DILocation(line: 225, column: 32, scope: !396)
!396 = distinct !DILexicalBlock(scope: !391, file: !45, line: 223, column: 17)
!397 = !DILocation(line: 226, column: 17, scope: !396)
!398 = !DILocation(line: 222, column: 37, scope: !391)
!399 = !DILocation(line: 222, column: 17, scope: !391)
!400 = distinct !{!400, !394, !401, !129}
!401 = !DILocation(line: 226, column: 17, scope: !388)
!402 = !DILocation(line: 227, column: 30, scope: !386)
!403 = !DILocation(line: 227, column: 17, scope: !386)
!404 = !DILocation(line: 228, column: 13, scope: !386)
!405 = !DILocation(line: 230, column: 5, scope: !374)
!406 = !DILocation(line: 231, column: 1, scope: !353)
!407 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_13_good", scope: !45, file: !45, line: 233, type: !53, scopeLine: 234, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!408 = !DILocation(line: 235, column: 5, scope: !407)
!409 = !DILocation(line: 236, column: 5, scope: !407)
!410 = !DILocation(line: 237, column: 5, scope: !407)
!411 = !DILocation(line: 238, column: 5, scope: !407)
!412 = !DILocation(line: 239, column: 1, scope: !407)
!413 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !414, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !42}
!416 = !DILocalVariable(name: "line", arg: 1, scope: !413, file: !3, line: 11, type: !42)
!417 = !DILocation(line: 11, column: 25, scope: !413)
!418 = !DILocation(line: 13, column: 1, scope: !413)
!419 = !DILocation(line: 14, column: 8, scope: !420)
!420 = distinct !DILexicalBlock(scope: !413, file: !3, line: 14, column: 8)
!421 = !DILocation(line: 14, column: 13, scope: !420)
!422 = !DILocation(line: 14, column: 8, scope: !413)
!423 = !DILocation(line: 16, column: 24, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !3, line: 15, column: 5)
!425 = !DILocation(line: 16, column: 9, scope: !424)
!426 = !DILocation(line: 17, column: 5, scope: !424)
!427 = !DILocation(line: 18, column: 5, scope: !413)
!428 = !DILocation(line: 19, column: 1, scope: !413)
!429 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !414, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!430 = !DILocalVariable(name: "line", arg: 1, scope: !429, file: !3, line: 20, type: !42)
!431 = !DILocation(line: 20, column: 29, scope: !429)
!432 = !DILocation(line: 22, column: 8, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !3, line: 22, column: 8)
!434 = !DILocation(line: 22, column: 13, scope: !433)
!435 = !DILocation(line: 22, column: 8, scope: !429)
!436 = !DILocation(line: 24, column: 24, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !3, line: 23, column: 5)
!438 = !DILocation(line: 24, column: 9, scope: !437)
!439 = !DILocation(line: 25, column: 5, scope: !437)
!440 = !DILocation(line: 26, column: 1, scope: !429)
!441 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !442, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !72, line: 74, baseType: !23)
!446 = !DILocalVariable(name: "line", arg: 1, scope: !441, file: !3, line: 27, type: !444)
!447 = !DILocation(line: 27, column: 29, scope: !441)
!448 = !DILocation(line: 29, column: 8, scope: !449)
!449 = distinct !DILexicalBlock(scope: !441, file: !3, line: 29, column: 8)
!450 = !DILocation(line: 29, column: 13, scope: !449)
!451 = !DILocation(line: 29, column: 8, scope: !441)
!452 = !DILocation(line: 31, column: 27, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !3, line: 30, column: 5)
!454 = !DILocation(line: 31, column: 9, scope: !453)
!455 = !DILocation(line: 32, column: 5, scope: !453)
!456 = !DILocation(line: 33, column: 1, scope: !441)
!457 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !458, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !23}
!460 = !DILocalVariable(name: "intNumber", arg: 1, scope: !457, file: !3, line: 35, type: !23)
!461 = !DILocation(line: 35, column: 24, scope: !457)
!462 = !DILocation(line: 37, column: 20, scope: !457)
!463 = !DILocation(line: 37, column: 5, scope: !457)
!464 = !DILocation(line: 38, column: 1, scope: !457)
!465 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !466, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !468}
!468 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!469 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !465, file: !3, line: 40, type: !468)
!470 = !DILocation(line: 40, column: 28, scope: !465)
!471 = !DILocation(line: 42, column: 21, scope: !465)
!472 = !DILocation(line: 42, column: 5, scope: !465)
!473 = !DILocation(line: 43, column: 1, scope: !465)
!474 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !475, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !477}
!477 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!478 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !474, file: !3, line: 45, type: !477)
!479 = !DILocation(line: 45, column: 28, scope: !474)
!480 = !DILocation(line: 47, column: 20, scope: !474)
!481 = !DILocation(line: 47, column: 5, scope: !474)
!482 = !DILocation(line: 48, column: 1, scope: !474)
!483 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !484, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !486}
!486 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!487 = !DILocalVariable(name: "longNumber", arg: 1, scope: !483, file: !3, line: 50, type: !486)
!488 = !DILocation(line: 50, column: 26, scope: !483)
!489 = !DILocation(line: 52, column: 21, scope: !483)
!490 = !DILocation(line: 52, column: 5, scope: !483)
!491 = !DILocation(line: 53, column: 1, scope: !483)
!492 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !493, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !495}
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !496, line: 27, baseType: !497)
!496 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !498, line: 44, baseType: !486)
!498 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!499 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !492, file: !3, line: 55, type: !495)
!500 = !DILocation(line: 55, column: 33, scope: !492)
!501 = !DILocation(line: 57, column: 29, scope: !492)
!502 = !DILocation(line: 57, column: 5, scope: !492)
!503 = !DILocation(line: 58, column: 1, scope: !492)
!504 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !505, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !71}
!507 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !504, file: !3, line: 60, type: !71)
!508 = !DILocation(line: 60, column: 29, scope: !504)
!509 = !DILocation(line: 62, column: 21, scope: !504)
!510 = !DILocation(line: 62, column: 5, scope: !504)
!511 = !DILocation(line: 63, column: 1, scope: !504)
!512 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !513, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !43}
!515 = !DILocalVariable(name: "charHex", arg: 1, scope: !512, file: !3, line: 65, type: !43)
!516 = !DILocation(line: 65, column: 29, scope: !512)
!517 = !DILocation(line: 67, column: 22, scope: !512)
!518 = !DILocation(line: 67, column: 5, scope: !512)
!519 = !DILocation(line: 68, column: 1, scope: !512)
!520 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !521, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !445}
!523 = !DILocalVariable(name: "wideChar", arg: 1, scope: !520, file: !3, line: 70, type: !445)
!524 = !DILocation(line: 70, column: 29, scope: !520)
!525 = !DILocalVariable(name: "s", scope: !520, file: !3, line: 74, type: !526)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 64, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 2)
!529 = !DILocation(line: 74, column: 13, scope: !520)
!530 = !DILocation(line: 75, column: 16, scope: !520)
!531 = !DILocation(line: 75, column: 9, scope: !520)
!532 = !DILocation(line: 75, column: 14, scope: !520)
!533 = !DILocation(line: 76, column: 9, scope: !520)
!534 = !DILocation(line: 76, column: 14, scope: !520)
!535 = !DILocation(line: 77, column: 21, scope: !520)
!536 = !DILocation(line: 77, column: 5, scope: !520)
!537 = !DILocation(line: 78, column: 1, scope: !520)
!538 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !539, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !7}
!541 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !538, file: !3, line: 80, type: !7)
!542 = !DILocation(line: 80, column: 33, scope: !538)
!543 = !DILocation(line: 82, column: 20, scope: !538)
!544 = !DILocation(line: 82, column: 5, scope: !538)
!545 = !DILocation(line: 83, column: 1, scope: !538)
!546 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !547, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !25}
!549 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !546, file: !3, line: 85, type: !25)
!550 = !DILocation(line: 85, column: 45, scope: !546)
!551 = !DILocation(line: 87, column: 22, scope: !546)
!552 = !DILocation(line: 87, column: 5, scope: !546)
!553 = !DILocation(line: 88, column: 1, scope: !546)
!554 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !555, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !557}
!557 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!558 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !554, file: !3, line: 90, type: !557)
!559 = !DILocation(line: 90, column: 29, scope: !554)
!560 = !DILocation(line: 92, column: 20, scope: !554)
!561 = !DILocation(line: 92, column: 5, scope: !554)
!562 = !DILocation(line: 93, column: 1, scope: !554)
!563 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !564, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !568, line: 100, baseType: !569)
!568 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_038/source_code")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !568, line: 96, size: 64, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !569, file: !568, line: 98, baseType: !23, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !569, file: !568, line: 99, baseType: !23, size: 32, offset: 32)
!573 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !563, file: !3, line: 95, type: !566)
!574 = !DILocation(line: 95, column: 40, scope: !563)
!575 = !DILocation(line: 97, column: 26, scope: !563)
!576 = !DILocation(line: 97, column: 47, scope: !563)
!577 = !DILocation(line: 97, column: 55, scope: !563)
!578 = !DILocation(line: 97, column: 76, scope: !563)
!579 = !DILocation(line: 97, column: 5, scope: !563)
!580 = !DILocation(line: 98, column: 1, scope: !563)
!581 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !582, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !584, !71}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!585 = !DILocalVariable(name: "bytes", arg: 1, scope: !581, file: !3, line: 100, type: !584)
!586 = !DILocation(line: 100, column: 38, scope: !581)
!587 = !DILocalVariable(name: "numBytes", arg: 2, scope: !581, file: !3, line: 100, type: !71)
!588 = !DILocation(line: 100, column: 52, scope: !581)
!589 = !DILocalVariable(name: "i", scope: !581, file: !3, line: 102, type: !71)
!590 = !DILocation(line: 102, column: 12, scope: !581)
!591 = !DILocation(line: 103, column: 12, scope: !592)
!592 = distinct !DILexicalBlock(scope: !581, file: !3, line: 103, column: 5)
!593 = !DILocation(line: 103, column: 10, scope: !592)
!594 = !DILocation(line: 103, column: 17, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !3, line: 103, column: 5)
!596 = !DILocation(line: 103, column: 21, scope: !595)
!597 = !DILocation(line: 103, column: 19, scope: !595)
!598 = !DILocation(line: 103, column: 5, scope: !592)
!599 = !DILocation(line: 105, column: 24, scope: !600)
!600 = distinct !DILexicalBlock(scope: !595, file: !3, line: 104, column: 5)
!601 = !DILocation(line: 105, column: 30, scope: !600)
!602 = !DILocation(line: 105, column: 9, scope: !600)
!603 = !DILocation(line: 106, column: 5, scope: !600)
!604 = !DILocation(line: 103, column: 31, scope: !595)
!605 = !DILocation(line: 103, column: 5, scope: !595)
!606 = distinct !{!606, !598, !607, !129}
!607 = !DILocation(line: 106, column: 5, scope: !592)
!608 = !DILocation(line: 107, column: 5, scope: !581)
!609 = !DILocation(line: 108, column: 1, scope: !581)
!610 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !611, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DISubroutineType(types: !612)
!612 = !{!71, !584, !71, !42}
!613 = !DILocalVariable(name: "bytes", arg: 1, scope: !610, file: !3, line: 113, type: !584)
!614 = !DILocation(line: 113, column: 39, scope: !610)
!615 = !DILocalVariable(name: "numBytes", arg: 2, scope: !610, file: !3, line: 113, type: !71)
!616 = !DILocation(line: 113, column: 53, scope: !610)
!617 = !DILocalVariable(name: "hex", arg: 3, scope: !610, file: !3, line: 113, type: !42)
!618 = !DILocation(line: 113, column: 71, scope: !610)
!619 = !DILocalVariable(name: "numWritten", scope: !610, file: !3, line: 115, type: !71)
!620 = !DILocation(line: 115, column: 12, scope: !610)
!621 = !DILocation(line: 121, column: 5, scope: !610)
!622 = !DILocation(line: 121, column: 12, scope: !610)
!623 = !DILocation(line: 121, column: 25, scope: !610)
!624 = !DILocation(line: 121, column: 23, scope: !610)
!625 = !DILocation(line: 121, column: 34, scope: !610)
!626 = !DILocation(line: 121, column: 37, scope: !610)
!627 = !DILocation(line: 121, column: 67, scope: !610)
!628 = !DILocation(line: 121, column: 70, scope: !610)
!629 = !DILocation(line: 0, scope: !610)
!630 = !DILocalVariable(name: "byte", scope: !631, file: !3, line: 123, type: !23)
!631 = distinct !DILexicalBlock(scope: !610, file: !3, line: 122, column: 5)
!632 = !DILocation(line: 123, column: 13, scope: !631)
!633 = !DILocation(line: 124, column: 17, scope: !631)
!634 = !DILocation(line: 124, column: 25, scope: !631)
!635 = !DILocation(line: 124, column: 23, scope: !631)
!636 = !DILocation(line: 124, column: 9, scope: !631)
!637 = !DILocation(line: 125, column: 45, scope: !631)
!638 = !DILocation(line: 125, column: 29, scope: !631)
!639 = !DILocation(line: 125, column: 9, scope: !631)
!640 = !DILocation(line: 125, column: 15, scope: !631)
!641 = !DILocation(line: 125, column: 27, scope: !631)
!642 = !DILocation(line: 126, column: 9, scope: !631)
!643 = distinct !{!643, !621, !644, !129}
!644 = !DILocation(line: 127, column: 5, scope: !610)
!645 = !DILocation(line: 129, column: 12, scope: !610)
!646 = !DILocation(line: 129, column: 5, scope: !610)
!647 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !648, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DISubroutineType(types: !649)
!649 = !{!71, !584, !71, !444}
!650 = !DILocalVariable(name: "bytes", arg: 1, scope: !647, file: !3, line: 135, type: !584)
!651 = !DILocation(line: 135, column: 41, scope: !647)
!652 = !DILocalVariable(name: "numBytes", arg: 2, scope: !647, file: !3, line: 135, type: !71)
!653 = !DILocation(line: 135, column: 55, scope: !647)
!654 = !DILocalVariable(name: "hex", arg: 3, scope: !647, file: !3, line: 135, type: !444)
!655 = !DILocation(line: 135, column: 76, scope: !647)
!656 = !DILocalVariable(name: "numWritten", scope: !647, file: !3, line: 137, type: !71)
!657 = !DILocation(line: 137, column: 12, scope: !647)
!658 = !DILocation(line: 143, column: 5, scope: !647)
!659 = !DILocation(line: 143, column: 12, scope: !647)
!660 = !DILocation(line: 143, column: 25, scope: !647)
!661 = !DILocation(line: 143, column: 23, scope: !647)
!662 = !DILocation(line: 143, column: 34, scope: !647)
!663 = !DILocation(line: 143, column: 47, scope: !647)
!664 = !DILocation(line: 143, column: 55, scope: !647)
!665 = !DILocation(line: 143, column: 53, scope: !647)
!666 = !DILocation(line: 143, column: 37, scope: !647)
!667 = !DILocation(line: 143, column: 68, scope: !647)
!668 = !DILocation(line: 143, column: 81, scope: !647)
!669 = !DILocation(line: 143, column: 89, scope: !647)
!670 = !DILocation(line: 143, column: 87, scope: !647)
!671 = !DILocation(line: 143, column: 100, scope: !647)
!672 = !DILocation(line: 143, column: 71, scope: !647)
!673 = !DILocation(line: 0, scope: !647)
!674 = !DILocalVariable(name: "byte", scope: !675, file: !3, line: 145, type: !23)
!675 = distinct !DILexicalBlock(scope: !647, file: !3, line: 144, column: 5)
!676 = !DILocation(line: 145, column: 13, scope: !675)
!677 = !DILocation(line: 146, column: 18, scope: !675)
!678 = !DILocation(line: 146, column: 26, scope: !675)
!679 = !DILocation(line: 146, column: 24, scope: !675)
!680 = !DILocation(line: 146, column: 9, scope: !675)
!681 = !DILocation(line: 147, column: 45, scope: !675)
!682 = !DILocation(line: 147, column: 29, scope: !675)
!683 = !DILocation(line: 147, column: 9, scope: !675)
!684 = !DILocation(line: 147, column: 15, scope: !675)
!685 = !DILocation(line: 147, column: 27, scope: !675)
!686 = !DILocation(line: 148, column: 9, scope: !675)
!687 = distinct !{!687, !658, !688, !129}
!688 = !DILocation(line: 149, column: 5, scope: !647)
!689 = !DILocation(line: 151, column: 12, scope: !647)
!690 = !DILocation(line: 151, column: 5, scope: !647)
!691 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !692, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DISubroutineType(types: !693)
!693 = !{!23}
!694 = !DILocation(line: 158, column: 5, scope: !691)
!695 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !692, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!696 = !DILocation(line: 163, column: 5, scope: !695)
!697 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !692, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!698 = !DILocation(line: 168, column: 13, scope: !697)
!699 = !DILocation(line: 168, column: 20, scope: !697)
!700 = !DILocation(line: 168, column: 5, scope: !697)
!701 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!702 = !DILocation(line: 187, column: 16, scope: !701)
!703 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!704 = !DILocation(line: 188, column: 16, scope: !703)
!705 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!706 = !DILocation(line: 189, column: 16, scope: !705)
!707 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!708 = !DILocation(line: 190, column: 16, scope: !707)
!709 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!710 = !DILocation(line: 191, column: 16, scope: !709)
!711 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!712 = !DILocation(line: 192, column: 16, scope: !711)
!713 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!714 = !DILocation(line: 193, column: 16, scope: !713)
!715 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!716 = !DILocation(line: 194, column: 16, scope: !715)
!717 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!718 = !DILocation(line: 195, column: 16, scope: !717)
!719 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!720 = !DILocation(line: 198, column: 15, scope: !719)
!721 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!722 = !DILocation(line: 199, column: 15, scope: !721)
!723 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!724 = !DILocation(line: 200, column: 15, scope: !723)
!725 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!726 = !DILocation(line: 201, column: 15, scope: !725)
!727 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!728 = !DILocation(line: 202, column: 15, scope: !727)
!729 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!730 = !DILocation(line: 203, column: 15, scope: !729)
!731 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!732 = !DILocation(line: 204, column: 15, scope: !731)
!733 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!734 = !DILocation(line: 205, column: 15, scope: !733)
!735 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!736 = !DILocation(line: 206, column: 15, scope: !735)
