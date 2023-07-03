; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_02_bad() #0 !dbg !52 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i64 @strlen(i8* %1) #7, !dbg !73
  store i64 %call, i64* %dataLen, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !74, metadata !DIExpression()), !dbg !75
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !76
  store i8* %call1, i8** %environment, align 8, !dbg !75
  %2 = load i8*, i8** %environment, align 8, !dbg !77
  %cmp = icmp ne i8* %2, null, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !81
  %4 = load i64, i64* %dataLen, align 8, !dbg !83
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !84
  %5 = load i8*, i8** %environment, align 8, !dbg !85
  %6 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub = sub i64 100, %6, !dbg !87
  %sub2 = sub i64 %sub, 1, !dbg !88
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !89
  br label %if.end, !dbg !90

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !91, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %n, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !98, metadata !DIExpression()), !dbg !99
  %7 = load i8*, i8** %data, align 8, !dbg !100
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !102
  %cmp5 = icmp eq i32 %call4, 1, !dbg !103
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !104

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %intVariable, align 4, !dbg !105
  store i32 0, i32* %i, align 4, !dbg !107
  br label %for.cond, !dbg !109

for.cond:                                         ; preds = %for.inc, %if.then6
  %8 = load i32, i32* %i, align 4, !dbg !110
  %9 = load i32, i32* %n, align 4, !dbg !112
  %cmp7 = icmp slt i32 %8, %9, !dbg !113
  br i1 %cmp7, label %for.body, label %for.end, !dbg !114

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %intVariable, align 4, !dbg !115
  %inc = add nsw i32 %10, 1, !dbg !115
  store i32 %inc, i32* %intVariable, align 4, !dbg !115
  br label %for.inc, !dbg !117

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !118
  %inc8 = add nsw i32 %11, 1, !dbg !118
  store i32 %inc8, i32* %i, align 4, !dbg !118
  br label %for.cond, !dbg !119, !llvm.loop !120

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !123
  call void @printIntLine(i32 %12), !dbg !124
  br label %if.end9, !dbg !125

if.end9:                                          ; preds = %for.end, %if.end
  ret void, !dbg !126
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
define dso_local void @goodB2G1() #0 !dbg !127 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !131
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !131
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !132
  store i8* %arraydecay, i8** %data, align 8, !dbg !133
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !134, metadata !DIExpression()), !dbg !138
  %1 = load i8*, i8** %data, align 8, !dbg !139
  %call = call i64 @strlen(i8* %1) #7, !dbg !140
  store i64 %call, i64* %dataLen, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !141, metadata !DIExpression()), !dbg !142
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !143
  store i8* %call1, i8** %environment, align 8, !dbg !142
  %2 = load i8*, i8** %environment, align 8, !dbg !144
  %cmp = icmp ne i8* %2, null, !dbg !146
  br i1 %cmp, label %if.then, label %if.end, !dbg !147

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !148
  %4 = load i64, i64* %dataLen, align 8, !dbg !150
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !151
  %5 = load i8*, i8** %environment, align 8, !dbg !152
  %6 = load i64, i64* %dataLen, align 8, !dbg !153
  %sub = sub i64 100, %6, !dbg !154
  %sub2 = sub i64 %sub, 1, !dbg !155
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !156
  br label %if.end, !dbg !157

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !158, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata i32* %n, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !165, metadata !DIExpression()), !dbg !166
  %7 = load i8*, i8** %data, align 8, !dbg !167
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !169
  %cmp5 = icmp eq i32 %call4, 1, !dbg !170
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !171

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %n, align 4, !dbg !172
  %cmp7 = icmp slt i32 %8, 10000, !dbg !175
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !176

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %intVariable, align 4, !dbg !177
  store i32 0, i32* %i, align 4, !dbg !179
  br label %for.cond, !dbg !181

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %i, align 4, !dbg !182
  %10 = load i32, i32* %n, align 4, !dbg !184
  %cmp9 = icmp slt i32 %9, %10, !dbg !185
  br i1 %cmp9, label %for.body, label %for.end, !dbg !186

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !187
  %inc = add nsw i32 %11, 1, !dbg !187
  store i32 %inc, i32* %intVariable, align 4, !dbg !187
  br label %for.inc, !dbg !189

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !190
  %inc10 = add nsw i32 %12, 1, !dbg !190
  store i32 %inc10, i32* %i, align 4, !dbg !190
  br label %for.cond, !dbg !191, !llvm.loop !192

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !194
  call void @printIntLine(i32 %13), !dbg !195
  br label %if.end11, !dbg !196

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !197

if.end12:                                         ; preds = %if.end11, %if.end
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !199 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !202, metadata !DIExpression()), !dbg !203
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !203
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !203
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !204
  store i8* %arraydecay, i8** %data, align 8, !dbg !205
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !206, metadata !DIExpression()), !dbg !210
  %1 = load i8*, i8** %data, align 8, !dbg !211
  %call = call i64 @strlen(i8* %1) #7, !dbg !212
  store i64 %call, i64* %dataLen, align 8, !dbg !210
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !213, metadata !DIExpression()), !dbg !214
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !215
  store i8* %call1, i8** %environment, align 8, !dbg !214
  %2 = load i8*, i8** %environment, align 8, !dbg !216
  %cmp = icmp ne i8* %2, null, !dbg !218
  br i1 %cmp, label %if.then, label %if.end, !dbg !219

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !220
  %4 = load i64, i64* %dataLen, align 8, !dbg !222
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !223
  %5 = load i8*, i8** %environment, align 8, !dbg !224
  %6 = load i64, i64* %dataLen, align 8, !dbg !225
  %sub = sub i64 100, %6, !dbg !226
  %sub2 = sub i64 %sub, 1, !dbg !227
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !228
  br label %if.end, !dbg !229

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !230, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %n, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !237, metadata !DIExpression()), !dbg !238
  %7 = load i8*, i8** %data, align 8, !dbg !239
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !241
  %cmp5 = icmp eq i32 %call4, 1, !dbg !242
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !243

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %n, align 4, !dbg !244
  %cmp7 = icmp slt i32 %8, 10000, !dbg !247
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !248

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %intVariable, align 4, !dbg !249
  store i32 0, i32* %i, align 4, !dbg !251
  br label %for.cond, !dbg !253

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %i, align 4, !dbg !254
  %10 = load i32, i32* %n, align 4, !dbg !256
  %cmp9 = icmp slt i32 %9, %10, !dbg !257
  br i1 %cmp9, label %for.body, label %for.end, !dbg !258

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !259
  %inc = add nsw i32 %11, 1, !dbg !259
  store i32 %inc, i32* %intVariable, align 4, !dbg !259
  br label %for.inc, !dbg !261

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !262
  %inc10 = add nsw i32 %12, 1, !dbg !262
  store i32 %inc10, i32* %i, align 4, !dbg !262
  br label %for.cond, !dbg !263, !llvm.loop !264

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !266
  call void @printIntLine(i32 %13), !dbg !267
  br label %if.end11, !dbg !268

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !269

if.end12:                                         ; preds = %if.end11, %if.end
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !271 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !274, metadata !DIExpression()), !dbg !275
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !275
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !275
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !276
  store i8* %arraydecay, i8** %data, align 8, !dbg !277
  %1 = load i8*, i8** %data, align 8, !dbg !278
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !281
  call void @llvm.dbg.declare(metadata i32* %i, metadata !282, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %n, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !289, metadata !DIExpression()), !dbg !290
  %2 = load i8*, i8** %data, align 8, !dbg !291
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !293
  %cmp = icmp eq i32 %call1, 1, !dbg !294
  br i1 %cmp, label %if.then, label %if.end, !dbg !295

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !296
  store i32 0, i32* %i, align 4, !dbg !298
  br label %for.cond, !dbg !300

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !301
  %4 = load i32, i32* %n, align 4, !dbg !303
  %cmp2 = icmp slt i32 %3, %4, !dbg !304
  br i1 %cmp2, label %for.body, label %for.end, !dbg !305

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !306
  %inc = add nsw i32 %5, 1, !dbg !306
  store i32 %inc, i32* %intVariable, align 4, !dbg !306
  br label %for.inc, !dbg !308

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !309
  %inc3 = add nsw i32 %6, 1, !dbg !309
  store i32 %inc3, i32* %i, align 4, !dbg !309
  br label %for.cond, !dbg !310, !llvm.loop !311

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !313
  call void @printIntLine(i32 %7), !dbg !314
  br label %if.end, !dbg !315

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !316
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !317 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !321
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !321
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !322
  store i8* %arraydecay, i8** %data, align 8, !dbg !323
  %1 = load i8*, i8** %data, align 8, !dbg !324
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !327
  call void @llvm.dbg.declare(metadata i32* %i, metadata !328, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %n, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !335, metadata !DIExpression()), !dbg !336
  %2 = load i8*, i8** %data, align 8, !dbg !337
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !339
  %cmp = icmp eq i32 %call1, 1, !dbg !340
  br i1 %cmp, label %if.then, label %if.end, !dbg !341

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !342
  store i32 0, i32* %i, align 4, !dbg !344
  br label %for.cond, !dbg !346

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !347
  %4 = load i32, i32* %n, align 4, !dbg !349
  %cmp2 = icmp slt i32 %3, %4, !dbg !350
  br i1 %cmp2, label %for.body, label %for.end, !dbg !351

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !352
  %inc = add nsw i32 %5, 1, !dbg !352
  store i32 %inc, i32* %intVariable, align 4, !dbg !352
  br label %for.inc, !dbg !354

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !355
  %inc3 = add nsw i32 %6, 1, !dbg !355
  store i32 %inc3, i32* %i, align 4, !dbg !355
  br label %for.cond, !dbg !356, !llvm.loop !357

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !359
  call void @printIntLine(i32 %7), !dbg !360
  br label %if.end, !dbg !361

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_02_good() #0 !dbg !363 {
entry:
  call void @goodB2G1(), !dbg !364
  call void @goodB2G2(), !dbg !365
  call void @goodG2B1(), !dbg !366
  call void @goodG2B2(), !dbg !367
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !369 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !374
  %0 = load i8*, i8** %line.addr, align 8, !dbg !375
  %cmp = icmp ne i8* %0, null, !dbg !377
  br i1 %cmp, label %if.then, label %if.end, !dbg !378

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !379
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !381
  br label %if.end, !dbg !382

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !383
  ret void, !dbg !384
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !385 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load i8*, i8** %line.addr, align 8, !dbg !388
  %cmp = icmp ne i8* %0, null, !dbg !390
  br i1 %cmp, label %if.then, label %if.end, !dbg !391

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !394
  br label %if.end, !dbg !395

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !397 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i32*, i32** %line.addr, align 8, !dbg !404
  %cmp = icmp ne i32* %0, null, !dbg !406
  br i1 %cmp, label %if.then, label %if.end, !dbg !407

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !408
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !410
  br label %if.end, !dbg !411

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !412
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !413 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !421 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !427
  %conv = sext i16 %0 to i32, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !430 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !436
  %conv = fpext float %0 to double, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !439 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !445
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !446
  ret void, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !448 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !457
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !460 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !465
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !466
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !468 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !471, metadata !DIExpression()), !dbg !472
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !473
  %conv = sext i8 %0 to i32, !dbg !473
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !474
  ret void, !dbg !475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !476 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !479, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !481, metadata !DIExpression()), !dbg !485
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !486
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !487
  store i32 %0, i32* %arrayidx, align 4, !dbg !488
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !489
  store i32 0, i32* %arrayidx1, align 4, !dbg !490
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !491
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !492
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !494 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !499
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !500
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !502 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !505, metadata !DIExpression()), !dbg !506
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !507
  %conv = zext i8 %0 to i32, !dbg !507
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !508
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !510 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !514, metadata !DIExpression()), !dbg !515
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !516
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !517
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !519 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !529, metadata !DIExpression()), !dbg !530
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !531
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !532
  %1 = load i32, i32* %intOne, align 4, !dbg !532
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !533
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !534
  %3 = load i32, i32* %intTwo, align 4, !dbg !534
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !535
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !537 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !541, metadata !DIExpression()), !dbg !542
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata i64* %i, metadata !545, metadata !DIExpression()), !dbg !546
  store i64 0, i64* %i, align 8, !dbg !547
  br label %for.cond, !dbg !549

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !550
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !552
  %cmp = icmp ult i64 %0, %1, !dbg !553
  br i1 %cmp, label %for.body, label %for.end, !dbg !554

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !555
  %3 = load i64, i64* %i, align 8, !dbg !557
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !555
  %4 = load i8, i8* %arrayidx, align 1, !dbg !555
  %conv = zext i8 %4 to i32, !dbg !555
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !558
  br label %for.inc, !dbg !559

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !560
  %inc = add i64 %5, 1, !dbg !560
  store i64 %inc, i64* %i, align 8, !dbg !560
  br label %for.cond, !dbg !561, !llvm.loop !562

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !564
  ret void, !dbg !565
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !566 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !569, metadata !DIExpression()), !dbg !570
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !571, metadata !DIExpression()), !dbg !572
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !573, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !575, metadata !DIExpression()), !dbg !576
  store i64 0, i64* %numWritten, align 8, !dbg !576
  br label %while.cond, !dbg !577

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !578
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !579
  %cmp = icmp ult i64 %0, %1, !dbg !580
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !581

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !582
  %2 = load i16*, i16** %call, align 8, !dbg !582
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !582
  %4 = load i64, i64* %numWritten, align 8, !dbg !582
  %mul = mul i64 2, %4, !dbg !582
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !582
  %5 = load i8, i8* %arrayidx, align 1, !dbg !582
  %conv = sext i8 %5 to i32, !dbg !582
  %idxprom = sext i32 %conv to i64, !dbg !582
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !582
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !582
  %conv2 = zext i16 %6 to i32, !dbg !582
  %and = and i32 %conv2, 4096, !dbg !582
  %tobool = icmp ne i32 %and, 0, !dbg !582
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !583

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !584
  %7 = load i16*, i16** %call3, align 8, !dbg !584
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !584
  %9 = load i64, i64* %numWritten, align 8, !dbg !584
  %mul4 = mul i64 2, %9, !dbg !584
  %add = add i64 %mul4, 1, !dbg !584
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !584
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !584
  %conv6 = sext i8 %10 to i32, !dbg !584
  %idxprom7 = sext i32 %conv6 to i64, !dbg !584
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !584
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !584
  %conv9 = zext i16 %11 to i32, !dbg !584
  %and10 = and i32 %conv9, 4096, !dbg !584
  %tobool11 = icmp ne i32 %and10, 0, !dbg !583
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !585
  br i1 %12, label %while.body, label %while.end, !dbg !577

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !586, metadata !DIExpression()), !dbg !588
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !589
  %14 = load i64, i64* %numWritten, align 8, !dbg !590
  %mul12 = mul i64 2, %14, !dbg !591
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !589
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !592
  %15 = load i32, i32* %byte, align 4, !dbg !593
  %conv15 = trunc i32 %15 to i8, !dbg !594
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !595
  %17 = load i64, i64* %numWritten, align 8, !dbg !596
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !595
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !597
  %18 = load i64, i64* %numWritten, align 8, !dbg !598
  %inc = add i64 %18, 1, !dbg !598
  store i64 %inc, i64* %numWritten, align 8, !dbg !598
  br label %while.cond, !dbg !577, !llvm.loop !599

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !601
  ret i64 %19, !dbg !602
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !603 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !606, metadata !DIExpression()), !dbg !607
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !608, metadata !DIExpression()), !dbg !609
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !612, metadata !DIExpression()), !dbg !613
  store i64 0, i64* %numWritten, align 8, !dbg !613
  br label %while.cond, !dbg !614

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !615
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !616
  %cmp = icmp ult i64 %0, %1, !dbg !617
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !618

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !619
  %3 = load i64, i64* %numWritten, align 8, !dbg !620
  %mul = mul i64 2, %3, !dbg !621
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !619
  %4 = load i32, i32* %arrayidx, align 4, !dbg !619
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !622
  %tobool = icmp ne i32 %call, 0, !dbg !622
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !623

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !624
  %6 = load i64, i64* %numWritten, align 8, !dbg !625
  %mul1 = mul i64 2, %6, !dbg !626
  %add = add i64 %mul1, 1, !dbg !627
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !624
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !624
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !628
  %tobool4 = icmp ne i32 %call3, 0, !dbg !623
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !629
  br i1 %8, label %while.body, label %while.end, !dbg !614

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !630, metadata !DIExpression()), !dbg !632
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !633
  %10 = load i64, i64* %numWritten, align 8, !dbg !634
  %mul5 = mul i64 2, %10, !dbg !635
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !633
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !636
  %11 = load i32, i32* %byte, align 4, !dbg !637
  %conv = trunc i32 %11 to i8, !dbg !638
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !639
  %13 = load i64, i64* %numWritten, align 8, !dbg !640
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !639
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !641
  %14 = load i64, i64* %numWritten, align 8, !dbg !642
  %inc = add i64 %14, 1, !dbg !642
  store i64 %inc, i64* %numWritten, align 8, !dbg !642
  br label %while.cond, !dbg !614, !llvm.loop !643

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !645
  ret i64 %15, !dbg !646
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !647 {
entry:
  ret i32 1, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !651 {
entry:
  ret i32 0, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !653 {
entry:
  %call = call i32 @rand() #8, !dbg !654
  %rem = srem i32 %call, 2, !dbg !655
  ret i32 %rem, !dbg !656
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !683 {
entry:
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !685 {
entry:
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !687 {
entry:
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !689 {
entry:
  ret void, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !691 {
entry:
  ret void, !dbg !692
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_027/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_02.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_027/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_02_bad", scope: !45, file: !45, line: 37, type: !53, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 46, type: !68)
!65 = distinct !DILexicalBlock(scope: !66, file: !45, line: 44, column: 9)
!66 = distinct !DILexicalBlock(scope: !67, file: !45, line: 43, column: 5)
!67 = distinct !DILexicalBlock(scope: !52, file: !45, line: 42, column: 8)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 46, column: 20, scope: !65)
!72 = !DILocation(line: 46, column: 37, scope: !65)
!73 = !DILocation(line: 46, column: 30, scope: !65)
!74 = !DILocalVariable(name: "environment", scope: !65, file: !45, line: 47, type: !42)
!75 = !DILocation(line: 47, column: 20, scope: !65)
!76 = !DILocation(line: 47, column: 34, scope: !65)
!77 = !DILocation(line: 49, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !65, file: !45, line: 49, column: 17)
!79 = !DILocation(line: 49, column: 29, scope: !78)
!80 = !DILocation(line: 49, column: 17, scope: !65)
!81 = !DILocation(line: 52, column: 25, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !45, line: 50, column: 13)
!83 = !DILocation(line: 52, column: 30, scope: !82)
!84 = !DILocation(line: 52, column: 29, scope: !82)
!85 = !DILocation(line: 52, column: 39, scope: !82)
!86 = !DILocation(line: 52, column: 56, scope: !82)
!87 = !DILocation(line: 52, column: 55, scope: !82)
!88 = !DILocation(line: 52, column: 63, scope: !82)
!89 = !DILocation(line: 52, column: 17, scope: !82)
!90 = !DILocation(line: 53, column: 13, scope: !82)
!91 = !DILocalVariable(name: "i", scope: !92, file: !45, line: 59, type: !23)
!92 = distinct !DILexicalBlock(scope: !93, file: !45, line: 58, column: 9)
!93 = distinct !DILexicalBlock(scope: !94, file: !45, line: 57, column: 5)
!94 = distinct !DILexicalBlock(scope: !52, file: !45, line: 56, column: 8)
!95 = !DILocation(line: 59, column: 17, scope: !92)
!96 = !DILocalVariable(name: "n", scope: !92, file: !45, line: 59, type: !23)
!97 = !DILocation(line: 59, column: 20, scope: !92)
!98 = !DILocalVariable(name: "intVariable", scope: !92, file: !45, line: 59, type: !23)
!99 = !DILocation(line: 59, column: 23, scope: !92)
!100 = !DILocation(line: 60, column: 24, scope: !101)
!101 = distinct !DILexicalBlock(scope: !92, file: !45, line: 60, column: 17)
!102 = !DILocation(line: 60, column: 17, scope: !101)
!103 = !DILocation(line: 60, column: 40, scope: !101)
!104 = !DILocation(line: 60, column: 17, scope: !92)
!105 = !DILocation(line: 63, column: 29, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !45, line: 61, column: 13)
!107 = !DILocation(line: 64, column: 24, scope: !108)
!108 = distinct !DILexicalBlock(scope: !106, file: !45, line: 64, column: 17)
!109 = !DILocation(line: 64, column: 22, scope: !108)
!110 = !DILocation(line: 64, column: 29, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !45, line: 64, column: 17)
!112 = !DILocation(line: 64, column: 33, scope: !111)
!113 = !DILocation(line: 64, column: 31, scope: !111)
!114 = !DILocation(line: 64, column: 17, scope: !108)
!115 = !DILocation(line: 67, column: 32, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !45, line: 65, column: 17)
!117 = !DILocation(line: 68, column: 17, scope: !116)
!118 = !DILocation(line: 64, column: 37, scope: !111)
!119 = !DILocation(line: 64, column: 17, scope: !111)
!120 = distinct !{!120, !114, !121, !122}
!121 = !DILocation(line: 68, column: 17, scope: !108)
!122 = !{!"llvm.loop.mustprogress"}
!123 = !DILocation(line: 69, column: 30, scope: !106)
!124 = !DILocation(line: 69, column: 17, scope: !106)
!125 = !DILocation(line: 70, column: 13, scope: !106)
!126 = !DILocation(line: 73, column: 1, scope: !52)
!127 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 80, type: !53, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!128 = !DILocalVariable(name: "data", scope: !127, file: !45, line: 82, type: !42)
!129 = !DILocation(line: 82, column: 12, scope: !127)
!130 = !DILocalVariable(name: "dataBuffer", scope: !127, file: !45, line: 83, type: !58)
!131 = !DILocation(line: 83, column: 10, scope: !127)
!132 = !DILocation(line: 84, column: 12, scope: !127)
!133 = !DILocation(line: 84, column: 10, scope: !127)
!134 = !DILocalVariable(name: "dataLen", scope: !135, file: !45, line: 89, type: !68)
!135 = distinct !DILexicalBlock(scope: !136, file: !45, line: 87, column: 9)
!136 = distinct !DILexicalBlock(scope: !137, file: !45, line: 86, column: 5)
!137 = distinct !DILexicalBlock(scope: !127, file: !45, line: 85, column: 8)
!138 = !DILocation(line: 89, column: 20, scope: !135)
!139 = !DILocation(line: 89, column: 37, scope: !135)
!140 = !DILocation(line: 89, column: 30, scope: !135)
!141 = !DILocalVariable(name: "environment", scope: !135, file: !45, line: 90, type: !42)
!142 = !DILocation(line: 90, column: 20, scope: !135)
!143 = !DILocation(line: 90, column: 34, scope: !135)
!144 = !DILocation(line: 92, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !135, file: !45, line: 92, column: 17)
!146 = !DILocation(line: 92, column: 29, scope: !145)
!147 = !DILocation(line: 92, column: 17, scope: !135)
!148 = !DILocation(line: 95, column: 25, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !45, line: 93, column: 13)
!150 = !DILocation(line: 95, column: 30, scope: !149)
!151 = !DILocation(line: 95, column: 29, scope: !149)
!152 = !DILocation(line: 95, column: 39, scope: !149)
!153 = !DILocation(line: 95, column: 56, scope: !149)
!154 = !DILocation(line: 95, column: 55, scope: !149)
!155 = !DILocation(line: 95, column: 63, scope: !149)
!156 = !DILocation(line: 95, column: 17, scope: !149)
!157 = !DILocation(line: 96, column: 13, scope: !149)
!158 = !DILocalVariable(name: "i", scope: !159, file: !45, line: 107, type: !23)
!159 = distinct !DILexicalBlock(scope: !160, file: !45, line: 106, column: 9)
!160 = distinct !DILexicalBlock(scope: !161, file: !45, line: 105, column: 5)
!161 = distinct !DILexicalBlock(scope: !127, file: !45, line: 99, column: 8)
!162 = !DILocation(line: 107, column: 17, scope: !159)
!163 = !DILocalVariable(name: "n", scope: !159, file: !45, line: 107, type: !23)
!164 = !DILocation(line: 107, column: 20, scope: !159)
!165 = !DILocalVariable(name: "intVariable", scope: !159, file: !45, line: 107, type: !23)
!166 = !DILocation(line: 107, column: 23, scope: !159)
!167 = !DILocation(line: 108, column: 24, scope: !168)
!168 = distinct !DILexicalBlock(scope: !159, file: !45, line: 108, column: 17)
!169 = !DILocation(line: 108, column: 17, scope: !168)
!170 = !DILocation(line: 108, column: 40, scope: !168)
!171 = !DILocation(line: 108, column: 17, scope: !159)
!172 = !DILocation(line: 111, column: 21, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !45, line: 111, column: 21)
!174 = distinct !DILexicalBlock(scope: !168, file: !45, line: 109, column: 13)
!175 = !DILocation(line: 111, column: 23, scope: !173)
!176 = !DILocation(line: 111, column: 21, scope: !174)
!177 = !DILocation(line: 113, column: 33, scope: !178)
!178 = distinct !DILexicalBlock(scope: !173, file: !45, line: 112, column: 17)
!179 = !DILocation(line: 114, column: 28, scope: !180)
!180 = distinct !DILexicalBlock(scope: !178, file: !45, line: 114, column: 21)
!181 = !DILocation(line: 114, column: 26, scope: !180)
!182 = !DILocation(line: 114, column: 33, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !45, line: 114, column: 21)
!184 = !DILocation(line: 114, column: 37, scope: !183)
!185 = !DILocation(line: 114, column: 35, scope: !183)
!186 = !DILocation(line: 114, column: 21, scope: !180)
!187 = !DILocation(line: 117, column: 36, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !45, line: 115, column: 21)
!189 = !DILocation(line: 118, column: 21, scope: !188)
!190 = !DILocation(line: 114, column: 41, scope: !183)
!191 = !DILocation(line: 114, column: 21, scope: !183)
!192 = distinct !{!192, !186, !193, !122}
!193 = !DILocation(line: 118, column: 21, scope: !180)
!194 = !DILocation(line: 119, column: 34, scope: !178)
!195 = !DILocation(line: 119, column: 21, scope: !178)
!196 = !DILocation(line: 120, column: 17, scope: !178)
!197 = !DILocation(line: 121, column: 13, scope: !174)
!198 = !DILocation(line: 124, column: 1, scope: !127)
!199 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 127, type: !53, scopeLine: 128, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!200 = !DILocalVariable(name: "data", scope: !199, file: !45, line: 129, type: !42)
!201 = !DILocation(line: 129, column: 12, scope: !199)
!202 = !DILocalVariable(name: "dataBuffer", scope: !199, file: !45, line: 130, type: !58)
!203 = !DILocation(line: 130, column: 10, scope: !199)
!204 = !DILocation(line: 131, column: 12, scope: !199)
!205 = !DILocation(line: 131, column: 10, scope: !199)
!206 = !DILocalVariable(name: "dataLen", scope: !207, file: !45, line: 136, type: !68)
!207 = distinct !DILexicalBlock(scope: !208, file: !45, line: 134, column: 9)
!208 = distinct !DILexicalBlock(scope: !209, file: !45, line: 133, column: 5)
!209 = distinct !DILexicalBlock(scope: !199, file: !45, line: 132, column: 8)
!210 = !DILocation(line: 136, column: 20, scope: !207)
!211 = !DILocation(line: 136, column: 37, scope: !207)
!212 = !DILocation(line: 136, column: 30, scope: !207)
!213 = !DILocalVariable(name: "environment", scope: !207, file: !45, line: 137, type: !42)
!214 = !DILocation(line: 137, column: 20, scope: !207)
!215 = !DILocation(line: 137, column: 34, scope: !207)
!216 = !DILocation(line: 139, column: 17, scope: !217)
!217 = distinct !DILexicalBlock(scope: !207, file: !45, line: 139, column: 17)
!218 = !DILocation(line: 139, column: 29, scope: !217)
!219 = !DILocation(line: 139, column: 17, scope: !207)
!220 = !DILocation(line: 142, column: 25, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !45, line: 140, column: 13)
!222 = !DILocation(line: 142, column: 30, scope: !221)
!223 = !DILocation(line: 142, column: 29, scope: !221)
!224 = !DILocation(line: 142, column: 39, scope: !221)
!225 = !DILocation(line: 142, column: 56, scope: !221)
!226 = !DILocation(line: 142, column: 55, scope: !221)
!227 = !DILocation(line: 142, column: 63, scope: !221)
!228 = !DILocation(line: 142, column: 17, scope: !221)
!229 = !DILocation(line: 143, column: 13, scope: !221)
!230 = !DILocalVariable(name: "i", scope: !231, file: !45, line: 149, type: !23)
!231 = distinct !DILexicalBlock(scope: !232, file: !45, line: 148, column: 9)
!232 = distinct !DILexicalBlock(scope: !233, file: !45, line: 147, column: 5)
!233 = distinct !DILexicalBlock(scope: !199, file: !45, line: 146, column: 8)
!234 = !DILocation(line: 149, column: 17, scope: !231)
!235 = !DILocalVariable(name: "n", scope: !231, file: !45, line: 149, type: !23)
!236 = !DILocation(line: 149, column: 20, scope: !231)
!237 = !DILocalVariable(name: "intVariable", scope: !231, file: !45, line: 149, type: !23)
!238 = !DILocation(line: 149, column: 23, scope: !231)
!239 = !DILocation(line: 150, column: 24, scope: !240)
!240 = distinct !DILexicalBlock(scope: !231, file: !45, line: 150, column: 17)
!241 = !DILocation(line: 150, column: 17, scope: !240)
!242 = !DILocation(line: 150, column: 40, scope: !240)
!243 = !DILocation(line: 150, column: 17, scope: !231)
!244 = !DILocation(line: 153, column: 21, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !45, line: 153, column: 21)
!246 = distinct !DILexicalBlock(scope: !240, file: !45, line: 151, column: 13)
!247 = !DILocation(line: 153, column: 23, scope: !245)
!248 = !DILocation(line: 153, column: 21, scope: !246)
!249 = !DILocation(line: 155, column: 33, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !45, line: 154, column: 17)
!251 = !DILocation(line: 156, column: 28, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !45, line: 156, column: 21)
!253 = !DILocation(line: 156, column: 26, scope: !252)
!254 = !DILocation(line: 156, column: 33, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !45, line: 156, column: 21)
!256 = !DILocation(line: 156, column: 37, scope: !255)
!257 = !DILocation(line: 156, column: 35, scope: !255)
!258 = !DILocation(line: 156, column: 21, scope: !252)
!259 = !DILocation(line: 159, column: 36, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !45, line: 157, column: 21)
!261 = !DILocation(line: 160, column: 21, scope: !260)
!262 = !DILocation(line: 156, column: 41, scope: !255)
!263 = !DILocation(line: 156, column: 21, scope: !255)
!264 = distinct !{!264, !258, !265, !122}
!265 = !DILocation(line: 160, column: 21, scope: !252)
!266 = !DILocation(line: 161, column: 34, scope: !250)
!267 = !DILocation(line: 161, column: 21, scope: !250)
!268 = !DILocation(line: 162, column: 17, scope: !250)
!269 = !DILocation(line: 163, column: 13, scope: !246)
!270 = !DILocation(line: 166, column: 1, scope: !199)
!271 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 169, type: !53, scopeLine: 170, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!272 = !DILocalVariable(name: "data", scope: !271, file: !45, line: 171, type: !42)
!273 = !DILocation(line: 171, column: 12, scope: !271)
!274 = !DILocalVariable(name: "dataBuffer", scope: !271, file: !45, line: 172, type: !58)
!275 = !DILocation(line: 172, column: 10, scope: !271)
!276 = !DILocation(line: 173, column: 12, scope: !271)
!277 = !DILocation(line: 173, column: 10, scope: !271)
!278 = !DILocation(line: 182, column: 16, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !45, line: 180, column: 5)
!280 = distinct !DILexicalBlock(scope: !271, file: !45, line: 174, column: 8)
!281 = !DILocation(line: 182, column: 9, scope: !279)
!282 = !DILocalVariable(name: "i", scope: !283, file: !45, line: 187, type: !23)
!283 = distinct !DILexicalBlock(scope: !284, file: !45, line: 186, column: 9)
!284 = distinct !DILexicalBlock(scope: !285, file: !45, line: 185, column: 5)
!285 = distinct !DILexicalBlock(scope: !271, file: !45, line: 184, column: 8)
!286 = !DILocation(line: 187, column: 17, scope: !283)
!287 = !DILocalVariable(name: "n", scope: !283, file: !45, line: 187, type: !23)
!288 = !DILocation(line: 187, column: 20, scope: !283)
!289 = !DILocalVariable(name: "intVariable", scope: !283, file: !45, line: 187, type: !23)
!290 = !DILocation(line: 187, column: 23, scope: !283)
!291 = !DILocation(line: 188, column: 24, scope: !292)
!292 = distinct !DILexicalBlock(scope: !283, file: !45, line: 188, column: 17)
!293 = !DILocation(line: 188, column: 17, scope: !292)
!294 = !DILocation(line: 188, column: 40, scope: !292)
!295 = !DILocation(line: 188, column: 17, scope: !283)
!296 = !DILocation(line: 191, column: 29, scope: !297)
!297 = distinct !DILexicalBlock(scope: !292, file: !45, line: 189, column: 13)
!298 = !DILocation(line: 192, column: 24, scope: !299)
!299 = distinct !DILexicalBlock(scope: !297, file: !45, line: 192, column: 17)
!300 = !DILocation(line: 192, column: 22, scope: !299)
!301 = !DILocation(line: 192, column: 29, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !45, line: 192, column: 17)
!303 = !DILocation(line: 192, column: 33, scope: !302)
!304 = !DILocation(line: 192, column: 31, scope: !302)
!305 = !DILocation(line: 192, column: 17, scope: !299)
!306 = !DILocation(line: 195, column: 32, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !45, line: 193, column: 17)
!308 = !DILocation(line: 196, column: 17, scope: !307)
!309 = !DILocation(line: 192, column: 37, scope: !302)
!310 = !DILocation(line: 192, column: 17, scope: !302)
!311 = distinct !{!311, !305, !312, !122}
!312 = !DILocation(line: 196, column: 17, scope: !299)
!313 = !DILocation(line: 197, column: 30, scope: !297)
!314 = !DILocation(line: 197, column: 17, scope: !297)
!315 = !DILocation(line: 198, column: 13, scope: !297)
!316 = !DILocation(line: 201, column: 1, scope: !271)
!317 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 204, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!318 = !DILocalVariable(name: "data", scope: !317, file: !45, line: 206, type: !42)
!319 = !DILocation(line: 206, column: 12, scope: !317)
!320 = !DILocalVariable(name: "dataBuffer", scope: !317, file: !45, line: 207, type: !58)
!321 = !DILocation(line: 207, column: 10, scope: !317)
!322 = !DILocation(line: 208, column: 12, scope: !317)
!323 = !DILocation(line: 208, column: 10, scope: !317)
!324 = !DILocation(line: 212, column: 16, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !45, line: 210, column: 5)
!326 = distinct !DILexicalBlock(scope: !317, file: !45, line: 209, column: 8)
!327 = !DILocation(line: 212, column: 9, scope: !325)
!328 = !DILocalVariable(name: "i", scope: !329, file: !45, line: 217, type: !23)
!329 = distinct !DILexicalBlock(scope: !330, file: !45, line: 216, column: 9)
!330 = distinct !DILexicalBlock(scope: !331, file: !45, line: 215, column: 5)
!331 = distinct !DILexicalBlock(scope: !317, file: !45, line: 214, column: 8)
!332 = !DILocation(line: 217, column: 17, scope: !329)
!333 = !DILocalVariable(name: "n", scope: !329, file: !45, line: 217, type: !23)
!334 = !DILocation(line: 217, column: 20, scope: !329)
!335 = !DILocalVariable(name: "intVariable", scope: !329, file: !45, line: 217, type: !23)
!336 = !DILocation(line: 217, column: 23, scope: !329)
!337 = !DILocation(line: 218, column: 24, scope: !338)
!338 = distinct !DILexicalBlock(scope: !329, file: !45, line: 218, column: 17)
!339 = !DILocation(line: 218, column: 17, scope: !338)
!340 = !DILocation(line: 218, column: 40, scope: !338)
!341 = !DILocation(line: 218, column: 17, scope: !329)
!342 = !DILocation(line: 221, column: 29, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !45, line: 219, column: 13)
!344 = !DILocation(line: 222, column: 24, scope: !345)
!345 = distinct !DILexicalBlock(scope: !343, file: !45, line: 222, column: 17)
!346 = !DILocation(line: 222, column: 22, scope: !345)
!347 = !DILocation(line: 222, column: 29, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !45, line: 222, column: 17)
!349 = !DILocation(line: 222, column: 33, scope: !348)
!350 = !DILocation(line: 222, column: 31, scope: !348)
!351 = !DILocation(line: 222, column: 17, scope: !345)
!352 = !DILocation(line: 225, column: 32, scope: !353)
!353 = distinct !DILexicalBlock(scope: !348, file: !45, line: 223, column: 17)
!354 = !DILocation(line: 226, column: 17, scope: !353)
!355 = !DILocation(line: 222, column: 37, scope: !348)
!356 = !DILocation(line: 222, column: 17, scope: !348)
!357 = distinct !{!357, !351, !358, !122}
!358 = !DILocation(line: 226, column: 17, scope: !345)
!359 = !DILocation(line: 227, column: 30, scope: !343)
!360 = !DILocation(line: 227, column: 17, scope: !343)
!361 = !DILocation(line: 228, column: 13, scope: !343)
!362 = !DILocation(line: 231, column: 1, scope: !317)
!363 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_02_good", scope: !45, file: !45, line: 233, type: !53, scopeLine: 234, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!364 = !DILocation(line: 235, column: 5, scope: !363)
!365 = !DILocation(line: 236, column: 5, scope: !363)
!366 = !DILocation(line: 237, column: 5, scope: !363)
!367 = !DILocation(line: 238, column: 5, scope: !363)
!368 = !DILocation(line: 239, column: 1, scope: !363)
!369 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !370, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !42}
!372 = !DILocalVariable(name: "line", arg: 1, scope: !369, file: !3, line: 11, type: !42)
!373 = !DILocation(line: 11, column: 25, scope: !369)
!374 = !DILocation(line: 13, column: 1, scope: !369)
!375 = !DILocation(line: 14, column: 8, scope: !376)
!376 = distinct !DILexicalBlock(scope: !369, file: !3, line: 14, column: 8)
!377 = !DILocation(line: 14, column: 13, scope: !376)
!378 = !DILocation(line: 14, column: 8, scope: !369)
!379 = !DILocation(line: 16, column: 24, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !3, line: 15, column: 5)
!381 = !DILocation(line: 16, column: 9, scope: !380)
!382 = !DILocation(line: 17, column: 5, scope: !380)
!383 = !DILocation(line: 18, column: 5, scope: !369)
!384 = !DILocation(line: 19, column: 1, scope: !369)
!385 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !370, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!386 = !DILocalVariable(name: "line", arg: 1, scope: !385, file: !3, line: 20, type: !42)
!387 = !DILocation(line: 20, column: 29, scope: !385)
!388 = !DILocation(line: 22, column: 8, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !3, line: 22, column: 8)
!390 = !DILocation(line: 22, column: 13, scope: !389)
!391 = !DILocation(line: 22, column: 8, scope: !385)
!392 = !DILocation(line: 24, column: 24, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !3, line: 23, column: 5)
!394 = !DILocation(line: 24, column: 9, scope: !393)
!395 = !DILocation(line: 25, column: 5, scope: !393)
!396 = !DILocation(line: 26, column: 1, scope: !385)
!397 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !398, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!402 = !DILocalVariable(name: "line", arg: 1, scope: !397, file: !3, line: 27, type: !400)
!403 = !DILocation(line: 27, column: 29, scope: !397)
!404 = !DILocation(line: 29, column: 8, scope: !405)
!405 = distinct !DILexicalBlock(scope: !397, file: !3, line: 29, column: 8)
!406 = !DILocation(line: 29, column: 13, scope: !405)
!407 = !DILocation(line: 29, column: 8, scope: !397)
!408 = !DILocation(line: 31, column: 27, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !3, line: 30, column: 5)
!410 = !DILocation(line: 31, column: 9, scope: !409)
!411 = !DILocation(line: 32, column: 5, scope: !409)
!412 = !DILocation(line: 33, column: 1, scope: !397)
!413 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !414, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !23}
!416 = !DILocalVariable(name: "intNumber", arg: 1, scope: !413, file: !3, line: 35, type: !23)
!417 = !DILocation(line: 35, column: 24, scope: !413)
!418 = !DILocation(line: 37, column: 20, scope: !413)
!419 = !DILocation(line: 37, column: 5, scope: !413)
!420 = !DILocation(line: 38, column: 1, scope: !413)
!421 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !422, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !424}
!424 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!425 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !421, file: !3, line: 40, type: !424)
!426 = !DILocation(line: 40, column: 28, scope: !421)
!427 = !DILocation(line: 42, column: 21, scope: !421)
!428 = !DILocation(line: 42, column: 5, scope: !421)
!429 = !DILocation(line: 43, column: 1, scope: !421)
!430 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !431, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433}
!433 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!434 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !430, file: !3, line: 45, type: !433)
!435 = !DILocation(line: 45, column: 28, scope: !430)
!436 = !DILocation(line: 47, column: 20, scope: !430)
!437 = !DILocation(line: 47, column: 5, scope: !430)
!438 = !DILocation(line: 48, column: 1, scope: !430)
!439 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !440, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !442}
!442 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!443 = !DILocalVariable(name: "longNumber", arg: 1, scope: !439, file: !3, line: 50, type: !442)
!444 = !DILocation(line: 50, column: 26, scope: !439)
!445 = !DILocation(line: 52, column: 21, scope: !439)
!446 = !DILocation(line: 52, column: 5, scope: !439)
!447 = !DILocation(line: 53, column: 1, scope: !439)
!448 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !449, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !451}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !452, line: 27, baseType: !453)
!452 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !454, line: 44, baseType: !442)
!454 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!455 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !448, file: !3, line: 55, type: !451)
!456 = !DILocation(line: 55, column: 33, scope: !448)
!457 = !DILocation(line: 57, column: 29, scope: !448)
!458 = !DILocation(line: 57, column: 5, scope: !448)
!459 = !DILocation(line: 58, column: 1, scope: !448)
!460 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !461, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !68}
!463 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !460, file: !3, line: 60, type: !68)
!464 = !DILocation(line: 60, column: 29, scope: !460)
!465 = !DILocation(line: 62, column: 21, scope: !460)
!466 = !DILocation(line: 62, column: 5, scope: !460)
!467 = !DILocation(line: 63, column: 1, scope: !460)
!468 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !469, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !43}
!471 = !DILocalVariable(name: "charHex", arg: 1, scope: !468, file: !3, line: 65, type: !43)
!472 = !DILocation(line: 65, column: 29, scope: !468)
!473 = !DILocation(line: 67, column: 22, scope: !468)
!474 = !DILocation(line: 67, column: 5, scope: !468)
!475 = !DILocation(line: 68, column: 1, scope: !468)
!476 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !477, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !401}
!479 = !DILocalVariable(name: "wideChar", arg: 1, scope: !476, file: !3, line: 70, type: !401)
!480 = !DILocation(line: 70, column: 29, scope: !476)
!481 = !DILocalVariable(name: "s", scope: !476, file: !3, line: 74, type: !482)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 64, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 2)
!485 = !DILocation(line: 74, column: 13, scope: !476)
!486 = !DILocation(line: 75, column: 16, scope: !476)
!487 = !DILocation(line: 75, column: 9, scope: !476)
!488 = !DILocation(line: 75, column: 14, scope: !476)
!489 = !DILocation(line: 76, column: 9, scope: !476)
!490 = !DILocation(line: 76, column: 14, scope: !476)
!491 = !DILocation(line: 77, column: 21, scope: !476)
!492 = !DILocation(line: 77, column: 5, scope: !476)
!493 = !DILocation(line: 78, column: 1, scope: !476)
!494 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !495, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !7}
!497 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !494, file: !3, line: 80, type: !7)
!498 = !DILocation(line: 80, column: 33, scope: !494)
!499 = !DILocation(line: 82, column: 20, scope: !494)
!500 = !DILocation(line: 82, column: 5, scope: !494)
!501 = !DILocation(line: 83, column: 1, scope: !494)
!502 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !503, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !25}
!505 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !502, file: !3, line: 85, type: !25)
!506 = !DILocation(line: 85, column: 45, scope: !502)
!507 = !DILocation(line: 87, column: 22, scope: !502)
!508 = !DILocation(line: 87, column: 5, scope: !502)
!509 = !DILocation(line: 88, column: 1, scope: !502)
!510 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !511, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !513}
!513 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!514 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !510, file: !3, line: 90, type: !513)
!515 = !DILocation(line: 90, column: 29, scope: !510)
!516 = !DILocation(line: 92, column: 20, scope: !510)
!517 = !DILocation(line: 92, column: 5, scope: !510)
!518 = !DILocation(line: 93, column: 1, scope: !510)
!519 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !520, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !524, line: 100, baseType: !525)
!524 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_027/source_code")
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !524, line: 96, size: 64, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !525, file: !524, line: 98, baseType: !23, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !525, file: !524, line: 99, baseType: !23, size: 32, offset: 32)
!529 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !519, file: !3, line: 95, type: !522)
!530 = !DILocation(line: 95, column: 40, scope: !519)
!531 = !DILocation(line: 97, column: 26, scope: !519)
!532 = !DILocation(line: 97, column: 47, scope: !519)
!533 = !DILocation(line: 97, column: 55, scope: !519)
!534 = !DILocation(line: 97, column: 76, scope: !519)
!535 = !DILocation(line: 97, column: 5, scope: !519)
!536 = !DILocation(line: 98, column: 1, scope: !519)
!537 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !538, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !540, !68}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!541 = !DILocalVariable(name: "bytes", arg: 1, scope: !537, file: !3, line: 100, type: !540)
!542 = !DILocation(line: 100, column: 38, scope: !537)
!543 = !DILocalVariable(name: "numBytes", arg: 2, scope: !537, file: !3, line: 100, type: !68)
!544 = !DILocation(line: 100, column: 52, scope: !537)
!545 = !DILocalVariable(name: "i", scope: !537, file: !3, line: 102, type: !68)
!546 = !DILocation(line: 102, column: 12, scope: !537)
!547 = !DILocation(line: 103, column: 12, scope: !548)
!548 = distinct !DILexicalBlock(scope: !537, file: !3, line: 103, column: 5)
!549 = !DILocation(line: 103, column: 10, scope: !548)
!550 = !DILocation(line: 103, column: 17, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !3, line: 103, column: 5)
!552 = !DILocation(line: 103, column: 21, scope: !551)
!553 = !DILocation(line: 103, column: 19, scope: !551)
!554 = !DILocation(line: 103, column: 5, scope: !548)
!555 = !DILocation(line: 105, column: 24, scope: !556)
!556 = distinct !DILexicalBlock(scope: !551, file: !3, line: 104, column: 5)
!557 = !DILocation(line: 105, column: 30, scope: !556)
!558 = !DILocation(line: 105, column: 9, scope: !556)
!559 = !DILocation(line: 106, column: 5, scope: !556)
!560 = !DILocation(line: 103, column: 31, scope: !551)
!561 = !DILocation(line: 103, column: 5, scope: !551)
!562 = distinct !{!562, !554, !563, !122}
!563 = !DILocation(line: 106, column: 5, scope: !548)
!564 = !DILocation(line: 107, column: 5, scope: !537)
!565 = !DILocation(line: 108, column: 1, scope: !537)
!566 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !567, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DISubroutineType(types: !568)
!568 = !{!68, !540, !68, !42}
!569 = !DILocalVariable(name: "bytes", arg: 1, scope: !566, file: !3, line: 113, type: !540)
!570 = !DILocation(line: 113, column: 39, scope: !566)
!571 = !DILocalVariable(name: "numBytes", arg: 2, scope: !566, file: !3, line: 113, type: !68)
!572 = !DILocation(line: 113, column: 53, scope: !566)
!573 = !DILocalVariable(name: "hex", arg: 3, scope: !566, file: !3, line: 113, type: !42)
!574 = !DILocation(line: 113, column: 71, scope: !566)
!575 = !DILocalVariable(name: "numWritten", scope: !566, file: !3, line: 115, type: !68)
!576 = !DILocation(line: 115, column: 12, scope: !566)
!577 = !DILocation(line: 121, column: 5, scope: !566)
!578 = !DILocation(line: 121, column: 12, scope: !566)
!579 = !DILocation(line: 121, column: 25, scope: !566)
!580 = !DILocation(line: 121, column: 23, scope: !566)
!581 = !DILocation(line: 121, column: 34, scope: !566)
!582 = !DILocation(line: 121, column: 37, scope: !566)
!583 = !DILocation(line: 121, column: 67, scope: !566)
!584 = !DILocation(line: 121, column: 70, scope: !566)
!585 = !DILocation(line: 0, scope: !566)
!586 = !DILocalVariable(name: "byte", scope: !587, file: !3, line: 123, type: !23)
!587 = distinct !DILexicalBlock(scope: !566, file: !3, line: 122, column: 5)
!588 = !DILocation(line: 123, column: 13, scope: !587)
!589 = !DILocation(line: 124, column: 17, scope: !587)
!590 = !DILocation(line: 124, column: 25, scope: !587)
!591 = !DILocation(line: 124, column: 23, scope: !587)
!592 = !DILocation(line: 124, column: 9, scope: !587)
!593 = !DILocation(line: 125, column: 45, scope: !587)
!594 = !DILocation(line: 125, column: 29, scope: !587)
!595 = !DILocation(line: 125, column: 9, scope: !587)
!596 = !DILocation(line: 125, column: 15, scope: !587)
!597 = !DILocation(line: 125, column: 27, scope: !587)
!598 = !DILocation(line: 126, column: 9, scope: !587)
!599 = distinct !{!599, !577, !600, !122}
!600 = !DILocation(line: 127, column: 5, scope: !566)
!601 = !DILocation(line: 129, column: 12, scope: !566)
!602 = !DILocation(line: 129, column: 5, scope: !566)
!603 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !604, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DISubroutineType(types: !605)
!605 = !{!68, !540, !68, !400}
!606 = !DILocalVariable(name: "bytes", arg: 1, scope: !603, file: !3, line: 135, type: !540)
!607 = !DILocation(line: 135, column: 41, scope: !603)
!608 = !DILocalVariable(name: "numBytes", arg: 2, scope: !603, file: !3, line: 135, type: !68)
!609 = !DILocation(line: 135, column: 55, scope: !603)
!610 = !DILocalVariable(name: "hex", arg: 3, scope: !603, file: !3, line: 135, type: !400)
!611 = !DILocation(line: 135, column: 76, scope: !603)
!612 = !DILocalVariable(name: "numWritten", scope: !603, file: !3, line: 137, type: !68)
!613 = !DILocation(line: 137, column: 12, scope: !603)
!614 = !DILocation(line: 143, column: 5, scope: !603)
!615 = !DILocation(line: 143, column: 12, scope: !603)
!616 = !DILocation(line: 143, column: 25, scope: !603)
!617 = !DILocation(line: 143, column: 23, scope: !603)
!618 = !DILocation(line: 143, column: 34, scope: !603)
!619 = !DILocation(line: 143, column: 47, scope: !603)
!620 = !DILocation(line: 143, column: 55, scope: !603)
!621 = !DILocation(line: 143, column: 53, scope: !603)
!622 = !DILocation(line: 143, column: 37, scope: !603)
!623 = !DILocation(line: 143, column: 68, scope: !603)
!624 = !DILocation(line: 143, column: 81, scope: !603)
!625 = !DILocation(line: 143, column: 89, scope: !603)
!626 = !DILocation(line: 143, column: 87, scope: !603)
!627 = !DILocation(line: 143, column: 100, scope: !603)
!628 = !DILocation(line: 143, column: 71, scope: !603)
!629 = !DILocation(line: 0, scope: !603)
!630 = !DILocalVariable(name: "byte", scope: !631, file: !3, line: 145, type: !23)
!631 = distinct !DILexicalBlock(scope: !603, file: !3, line: 144, column: 5)
!632 = !DILocation(line: 145, column: 13, scope: !631)
!633 = !DILocation(line: 146, column: 18, scope: !631)
!634 = !DILocation(line: 146, column: 26, scope: !631)
!635 = !DILocation(line: 146, column: 24, scope: !631)
!636 = !DILocation(line: 146, column: 9, scope: !631)
!637 = !DILocation(line: 147, column: 45, scope: !631)
!638 = !DILocation(line: 147, column: 29, scope: !631)
!639 = !DILocation(line: 147, column: 9, scope: !631)
!640 = !DILocation(line: 147, column: 15, scope: !631)
!641 = !DILocation(line: 147, column: 27, scope: !631)
!642 = !DILocation(line: 148, column: 9, scope: !631)
!643 = distinct !{!643, !614, !644, !122}
!644 = !DILocation(line: 149, column: 5, scope: !603)
!645 = !DILocation(line: 151, column: 12, scope: !603)
!646 = !DILocation(line: 151, column: 5, scope: !603)
!647 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !648, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DISubroutineType(types: !649)
!649 = !{!23}
!650 = !DILocation(line: 158, column: 5, scope: !647)
!651 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !648, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 163, column: 5, scope: !651)
!653 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !648, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 168, column: 13, scope: !653)
!655 = !DILocation(line: 168, column: 20, scope: !653)
!656 = !DILocation(line: 168, column: 5, scope: !653)
!657 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 187, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 188, column: 16, scope: !659)
!661 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 189, column: 16, scope: !661)
!663 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 190, column: 16, scope: !663)
!665 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 191, column: 16, scope: !665)
!667 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 192, column: 16, scope: !667)
!669 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 193, column: 16, scope: !669)
!671 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 194, column: 16, scope: !671)
!673 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 195, column: 16, scope: !673)
!675 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 198, column: 15, scope: !675)
!677 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 199, column: 15, scope: !677)
!679 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!680 = !DILocation(line: 200, column: 15, scope: !679)
!681 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DILocation(line: 201, column: 15, scope: !681)
!683 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!684 = !DILocation(line: 202, column: 15, scope: !683)
!685 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!686 = !DILocation(line: 203, column: 15, scope: !685)
!687 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!688 = !DILocation(line: 204, column: 15, scope: !687)
!689 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!690 = !DILocation(line: 205, column: 15, scope: !689)
!691 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DILocation(line: 206, column: 15, scope: !691)
