; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_21.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@badStatic = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !8
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !11
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !13
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !19 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !24, metadata !DIExpression()), !dbg !25
  %0 = load i32, i32* @badStatic, align 4, !dbg !26
  %tobool = icmp ne i32 %0, 0, !dbg !26
  br i1 %tobool, label %if.then, label %if.end4, !dbg !28

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %n, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !35, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %data.addr, align 8, !dbg !37
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !39
  %cmp = icmp eq i32 %call, 1, !dbg !40
  br i1 %cmp, label %if.then1, label %if.end, !dbg !41

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !42
  store i32 0, i32* %i, align 4, !dbg !44
  br label %for.cond, !dbg !46

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !47
  %3 = load i32, i32* %n, align 4, !dbg !49
  %cmp2 = icmp slt i32 %2, %3, !dbg !50
  br i1 %cmp2, label %for.body, label %for.end, !dbg !51

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !52
  %inc = add nsw i32 %4, 1, !dbg !52
  store i32 %inc, i32* %intVariable, align 4, !dbg !52
  br label %for.inc, !dbg !54

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !55
  %inc3 = add nsw i32 %5, 1, !dbg !55
  store i32 %inc3, i32* %i, align 4, !dbg !55
  br label %for.cond, !dbg !56, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !60
  call void @printIntLine(i32 %6), !dbg !61
  br label %if.end, !dbg !62

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !63

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !64
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_21_bad() #0 !dbg !65 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !70, metadata !DIExpression()), !dbg !74
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !74
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !74
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !75
  store i8* %arraydecay, i8** %data, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !77, metadata !DIExpression()), !dbg !82
  %1 = load i8*, i8** %data, align 8, !dbg !83
  %call = call i64 @strlen(i8* %1) #7, !dbg !84
  store i64 %call, i64* %dataLen, align 8, !dbg !82
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !85, metadata !DIExpression()), !dbg !86
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !87
  store i8* %call1, i8** %environment, align 8, !dbg !86
  %2 = load i8*, i8** %environment, align 8, !dbg !88
  %cmp = icmp ne i8* %2, null, !dbg !90
  br i1 %cmp, label %if.then, label %if.end, !dbg !91

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !92
  %4 = load i64, i64* %dataLen, align 8, !dbg !94
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !95
  %5 = load i8*, i8** %environment, align 8, !dbg !96
  %6 = load i64, i64* %dataLen, align 8, !dbg !97
  %sub = sub i64 100, %6, !dbg !98
  %sub2 = sub i64 %sub, 1, !dbg !99
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #6, !dbg !100
  br label %if.end, !dbg !101

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @badStatic, align 4, !dbg !102
  %7 = load i8*, i8** %data, align 8, !dbg !103
  call void @badSink(i8* %7), !dbg !104
  ret void, !dbg !105
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1Sink(i8* %data) #0 !dbg !106 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !107, metadata !DIExpression()), !dbg !108
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !109
  %tobool = icmp ne i32 %0, 0, !dbg !109
  br i1 %tobool, label %if.then, label %if.else, !dbg !111

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !112
  br label %if.end7, !dbg !114

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !115, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata i32* %n, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !121, metadata !DIExpression()), !dbg !122
  %1 = load i8*, i8** %data.addr, align 8, !dbg !123
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !125
  %cmp = icmp eq i32 %call, 1, !dbg !126
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !127

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %n, align 4, !dbg !128
  %cmp2 = icmp slt i32 %2, 10000, !dbg !131
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !132

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !133
  store i32 0, i32* %i, align 4, !dbg !135
  br label %for.cond, !dbg !137

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !138
  %4 = load i32, i32* %n, align 4, !dbg !140
  %cmp4 = icmp slt i32 %3, %4, !dbg !141
  br i1 %cmp4, label %for.body, label %for.end, !dbg !142

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !143
  %inc = add nsw i32 %5, 1, !dbg !143
  store i32 %inc, i32* %intVariable, align 4, !dbg !143
  br label %for.inc, !dbg !145

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !146
  %inc5 = add nsw i32 %6, 1, !dbg !146
  store i32 %inc5, i32* %i, align 4, !dbg !146
  br label %for.cond, !dbg !147, !llvm.loop !148

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !150
  call void @printIntLine(i32 %7), !dbg !151
  br label %if.end, !dbg !152

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !153

if.end6:                                          ; preds = %if.end, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !154
}

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !155 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !158, metadata !DIExpression()), !dbg !159
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !159
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !159
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !160
  store i8* %arraydecay, i8** %data, align 8, !dbg !161
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !162, metadata !DIExpression()), !dbg !164
  %1 = load i8*, i8** %data, align 8, !dbg !165
  %call = call i64 @strlen(i8* %1) #7, !dbg !166
  store i64 %call, i64* %dataLen, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !167, metadata !DIExpression()), !dbg !168
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !169
  store i8* %call1, i8** %environment, align 8, !dbg !168
  %2 = load i8*, i8** %environment, align 8, !dbg !170
  %cmp = icmp ne i8* %2, null, !dbg !172
  br i1 %cmp, label %if.then, label %if.end, !dbg !173

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !174
  %4 = load i64, i64* %dataLen, align 8, !dbg !176
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !177
  %5 = load i8*, i8** %environment, align 8, !dbg !178
  %6 = load i64, i64* %dataLen, align 8, !dbg !179
  %sub = sub i64 100, %6, !dbg !180
  %sub2 = sub i64 %sub, 1, !dbg !181
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #6, !dbg !182
  br label %if.end, !dbg !183

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !184
  %7 = load i8*, i8** %data, align 8, !dbg !185
  call void @goodB2G1Sink(i8* %7), !dbg !186
  ret void, !dbg !187
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2Sink(i8* %data) #0 !dbg !188 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !189, metadata !DIExpression()), !dbg !190
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !191
  %tobool = icmp ne i32 %0, 0, !dbg !191
  br i1 %tobool, label %if.then, label %if.end7, !dbg !193

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !194, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata i32* %n, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !200, metadata !DIExpression()), !dbg !201
  %1 = load i8*, i8** %data.addr, align 8, !dbg !202
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !204
  %cmp = icmp eq i32 %call, 1, !dbg !205
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !206

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4, !dbg !207
  %cmp2 = icmp slt i32 %2, 10000, !dbg !210
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !211

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !212
  store i32 0, i32* %i, align 4, !dbg !214
  br label %for.cond, !dbg !216

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !217
  %4 = load i32, i32* %n, align 4, !dbg !219
  %cmp4 = icmp slt i32 %3, %4, !dbg !220
  br i1 %cmp4, label %for.body, label %for.end, !dbg !221

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !222
  %inc = add nsw i32 %5, 1, !dbg !222
  store i32 %inc, i32* %intVariable, align 4, !dbg !222
  br label %for.inc, !dbg !224

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !225
  %inc5 = add nsw i32 %6, 1, !dbg !225
  store i32 %inc5, i32* %i, align 4, !dbg !225
  br label %for.cond, !dbg !226, !llvm.loop !227

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !229
  call void @printIntLine(i32 %7), !dbg !230
  br label %if.end, !dbg !231

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !232

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7, !dbg !233

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !235 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !238, metadata !DIExpression()), !dbg !239
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !239
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !239
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !240
  store i8* %arraydecay, i8** %data, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !242, metadata !DIExpression()), !dbg !244
  %1 = load i8*, i8** %data, align 8, !dbg !245
  %call = call i64 @strlen(i8* %1) #7, !dbg !246
  store i64 %call, i64* %dataLen, align 8, !dbg !244
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !247, metadata !DIExpression()), !dbg !248
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !249
  store i8* %call1, i8** %environment, align 8, !dbg !248
  %2 = load i8*, i8** %environment, align 8, !dbg !250
  %cmp = icmp ne i8* %2, null, !dbg !252
  br i1 %cmp, label %if.then, label %if.end, !dbg !253

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !254
  %4 = load i64, i64* %dataLen, align 8, !dbg !256
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !257
  %5 = load i8*, i8** %environment, align 8, !dbg !258
  %6 = load i64, i64* %dataLen, align 8, !dbg !259
  %sub = sub i64 100, %6, !dbg !260
  %sub2 = sub i64 %sub, 1, !dbg !261
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #6, !dbg !262
  br label %if.end, !dbg !263

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !264
  %7 = load i8*, i8** %data, align 8, !dbg !265
  call void @goodB2G2Sink(i8* %7), !dbg !266
  ret void, !dbg !267
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !268 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !271
  %tobool = icmp ne i32 %0, 0, !dbg !271
  br i1 %tobool, label %if.then, label %if.end4, !dbg !273

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !274, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata i32* %n, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !280, metadata !DIExpression()), !dbg !281
  %1 = load i8*, i8** %data.addr, align 8, !dbg !282
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !284
  %cmp = icmp eq i32 %call, 1, !dbg !285
  br i1 %cmp, label %if.then1, label %if.end, !dbg !286

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !287
  store i32 0, i32* %i, align 4, !dbg !289
  br label %for.cond, !dbg !291

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !292
  %3 = load i32, i32* %n, align 4, !dbg !294
  %cmp2 = icmp slt i32 %2, %3, !dbg !295
  br i1 %cmp2, label %for.body, label %for.end, !dbg !296

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !297
  %inc = add nsw i32 %4, 1, !dbg !297
  store i32 %inc, i32* %intVariable, align 4, !dbg !297
  br label %for.inc, !dbg !299

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !300
  %inc3 = add nsw i32 %5, 1, !dbg !300
  store i32 %inc3, i32* %i, align 4, !dbg !300
  br label %for.cond, !dbg !301, !llvm.loop !302

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !304
  call void @printIntLine(i32 %6), !dbg !305
  br label %if.end, !dbg !306

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !307

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !308
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !309 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !313
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !313
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !314
  store i8* %arraydecay, i8** %data, align 8, !dbg !315
  %1 = load i8*, i8** %data, align 8, !dbg !316
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !317
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !318
  %2 = load i8*, i8** %data, align 8, !dbg !319
  call void @goodG2BSink(i8* %2), !dbg !320
  ret void, !dbg !321
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_21_good() #0 !dbg !322 {
entry:
  call void @goodB2G1(), !dbg !323
  call void @goodB2G2(), !dbg !324
  call void @goodG2B(), !dbg !325
  ret void, !dbg !326
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

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
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 40, type: !20, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DILocalVariable(name: "data", arg: 1, scope: !19, file: !3, line: 40, type: !22)
!25 = !DILocation(line: 40, column: 21, scope: !19)
!26 = !DILocation(line: 42, column: 8, scope: !27)
!27 = distinct !DILexicalBlock(scope: !19, file: !3, line: 42, column: 8)
!28 = !DILocation(line: 42, column: 8, scope: !19)
!29 = !DILocalVariable(name: "i", scope: !30, file: !3, line: 45, type: !10)
!30 = distinct !DILexicalBlock(scope: !31, file: !3, line: 44, column: 9)
!31 = distinct !DILexicalBlock(scope: !27, file: !3, line: 43, column: 5)
!32 = !DILocation(line: 45, column: 17, scope: !30)
!33 = !DILocalVariable(name: "n", scope: !30, file: !3, line: 45, type: !10)
!34 = !DILocation(line: 45, column: 20, scope: !30)
!35 = !DILocalVariable(name: "intVariable", scope: !30, file: !3, line: 45, type: !10)
!36 = !DILocation(line: 45, column: 23, scope: !30)
!37 = !DILocation(line: 46, column: 24, scope: !38)
!38 = distinct !DILexicalBlock(scope: !30, file: !3, line: 46, column: 17)
!39 = !DILocation(line: 46, column: 17, scope: !38)
!40 = !DILocation(line: 46, column: 40, scope: !38)
!41 = !DILocation(line: 46, column: 17, scope: !30)
!42 = !DILocation(line: 49, column: 29, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !3, line: 47, column: 13)
!44 = !DILocation(line: 50, column: 24, scope: !45)
!45 = distinct !DILexicalBlock(scope: !43, file: !3, line: 50, column: 17)
!46 = !DILocation(line: 50, column: 22, scope: !45)
!47 = !DILocation(line: 50, column: 29, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !3, line: 50, column: 17)
!49 = !DILocation(line: 50, column: 33, scope: !48)
!50 = !DILocation(line: 50, column: 31, scope: !48)
!51 = !DILocation(line: 50, column: 17, scope: !45)
!52 = !DILocation(line: 53, column: 32, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !3, line: 51, column: 17)
!54 = !DILocation(line: 54, column: 17, scope: !53)
!55 = !DILocation(line: 50, column: 37, scope: !48)
!56 = !DILocation(line: 50, column: 17, scope: !48)
!57 = distinct !{!57, !51, !58, !59}
!58 = !DILocation(line: 54, column: 17, scope: !45)
!59 = !{!"llvm.loop.mustprogress"}
!60 = !DILocation(line: 55, column: 30, scope: !43)
!61 = !DILocation(line: 55, column: 17, scope: !43)
!62 = !DILocation(line: 56, column: 13, scope: !43)
!63 = !DILocation(line: 58, column: 5, scope: !31)
!64 = !DILocation(line: 59, column: 1, scope: !19)
!65 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_21_bad", scope: !3, file: !3, line: 61, type: !66, scopeLine: 62, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!66 = !DISubroutineType(types: !67)
!67 = !{null}
!68 = !DILocalVariable(name: "data", scope: !65, file: !3, line: 63, type: !22)
!69 = !DILocation(line: 63, column: 12, scope: !65)
!70 = !DILocalVariable(name: "dataBuffer", scope: !65, file: !3, line: 64, type: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 800, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 100)
!74 = !DILocation(line: 64, column: 10, scope: !65)
!75 = !DILocation(line: 65, column: 12, scope: !65)
!76 = !DILocation(line: 65, column: 10, scope: !65)
!77 = !DILocalVariable(name: "dataLen", scope: !78, file: !3, line: 68, type: !79)
!78 = distinct !DILexicalBlock(scope: !65, file: !3, line: 66, column: 5)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 46, baseType: !81)
!80 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!81 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!82 = !DILocation(line: 68, column: 16, scope: !78)
!83 = !DILocation(line: 68, column: 33, scope: !78)
!84 = !DILocation(line: 68, column: 26, scope: !78)
!85 = !DILocalVariable(name: "environment", scope: !78, file: !3, line: 69, type: !22)
!86 = !DILocation(line: 69, column: 16, scope: !78)
!87 = !DILocation(line: 69, column: 30, scope: !78)
!88 = !DILocation(line: 71, column: 13, scope: !89)
!89 = distinct !DILexicalBlock(scope: !78, file: !3, line: 71, column: 13)
!90 = !DILocation(line: 71, column: 25, scope: !89)
!91 = !DILocation(line: 71, column: 13, scope: !78)
!92 = !DILocation(line: 74, column: 21, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !3, line: 72, column: 9)
!94 = !DILocation(line: 74, column: 26, scope: !93)
!95 = !DILocation(line: 74, column: 25, scope: !93)
!96 = !DILocation(line: 74, column: 35, scope: !93)
!97 = !DILocation(line: 74, column: 52, scope: !93)
!98 = !DILocation(line: 74, column: 51, scope: !93)
!99 = !DILocation(line: 74, column: 59, scope: !93)
!100 = !DILocation(line: 74, column: 13, scope: !93)
!101 = !DILocation(line: 75, column: 9, scope: !93)
!102 = !DILocation(line: 77, column: 15, scope: !65)
!103 = !DILocation(line: 78, column: 13, scope: !65)
!104 = !DILocation(line: 78, column: 5, scope: !65)
!105 = !DILocation(line: 79, column: 1, scope: !65)
!106 = distinct !DISubprogram(name: "goodB2G1Sink", scope: !3, file: !3, line: 91, type: !20, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!107 = !DILocalVariable(name: "data", arg: 1, scope: !106, file: !3, line: 91, type: !22)
!108 = !DILocation(line: 91, column: 26, scope: !106)
!109 = !DILocation(line: 93, column: 8, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !3, line: 93, column: 8)
!111 = !DILocation(line: 93, column: 8, scope: !106)
!112 = !DILocation(line: 96, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !3, line: 94, column: 5)
!114 = !DILocation(line: 97, column: 5, scope: !113)
!115 = !DILocalVariable(name: "i", scope: !116, file: !3, line: 101, type: !10)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 100, column: 9)
!117 = distinct !DILexicalBlock(scope: !110, file: !3, line: 99, column: 5)
!118 = !DILocation(line: 101, column: 17, scope: !116)
!119 = !DILocalVariable(name: "n", scope: !116, file: !3, line: 101, type: !10)
!120 = !DILocation(line: 101, column: 20, scope: !116)
!121 = !DILocalVariable(name: "intVariable", scope: !116, file: !3, line: 101, type: !10)
!122 = !DILocation(line: 101, column: 23, scope: !116)
!123 = !DILocation(line: 102, column: 24, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !3, line: 102, column: 17)
!125 = !DILocation(line: 102, column: 17, scope: !124)
!126 = !DILocation(line: 102, column: 40, scope: !124)
!127 = !DILocation(line: 102, column: 17, scope: !116)
!128 = !DILocation(line: 105, column: 21, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 105, column: 21)
!130 = distinct !DILexicalBlock(scope: !124, file: !3, line: 103, column: 13)
!131 = !DILocation(line: 105, column: 23, scope: !129)
!132 = !DILocation(line: 105, column: 21, scope: !130)
!133 = !DILocation(line: 107, column: 33, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !3, line: 106, column: 17)
!135 = !DILocation(line: 108, column: 28, scope: !136)
!136 = distinct !DILexicalBlock(scope: !134, file: !3, line: 108, column: 21)
!137 = !DILocation(line: 108, column: 26, scope: !136)
!138 = !DILocation(line: 108, column: 33, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !3, line: 108, column: 21)
!140 = !DILocation(line: 108, column: 37, scope: !139)
!141 = !DILocation(line: 108, column: 35, scope: !139)
!142 = !DILocation(line: 108, column: 21, scope: !136)
!143 = !DILocation(line: 111, column: 36, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !3, line: 109, column: 21)
!145 = !DILocation(line: 112, column: 21, scope: !144)
!146 = !DILocation(line: 108, column: 41, scope: !139)
!147 = !DILocation(line: 108, column: 21, scope: !139)
!148 = distinct !{!148, !142, !149, !59}
!149 = !DILocation(line: 112, column: 21, scope: !136)
!150 = !DILocation(line: 113, column: 34, scope: !134)
!151 = !DILocation(line: 113, column: 21, scope: !134)
!152 = !DILocation(line: 114, column: 17, scope: !134)
!153 = !DILocation(line: 115, column: 13, scope: !130)
!154 = !DILocation(line: 118, column: 1, scope: !106)
!155 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 120, type: !66, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!156 = !DILocalVariable(name: "data", scope: !155, file: !3, line: 122, type: !22)
!157 = !DILocation(line: 122, column: 12, scope: !155)
!158 = !DILocalVariable(name: "dataBuffer", scope: !155, file: !3, line: 123, type: !71)
!159 = !DILocation(line: 123, column: 10, scope: !155)
!160 = !DILocation(line: 124, column: 12, scope: !155)
!161 = !DILocation(line: 124, column: 10, scope: !155)
!162 = !DILocalVariable(name: "dataLen", scope: !163, file: !3, line: 127, type: !79)
!163 = distinct !DILexicalBlock(scope: !155, file: !3, line: 125, column: 5)
!164 = !DILocation(line: 127, column: 16, scope: !163)
!165 = !DILocation(line: 127, column: 33, scope: !163)
!166 = !DILocation(line: 127, column: 26, scope: !163)
!167 = !DILocalVariable(name: "environment", scope: !163, file: !3, line: 128, type: !22)
!168 = !DILocation(line: 128, column: 16, scope: !163)
!169 = !DILocation(line: 128, column: 30, scope: !163)
!170 = !DILocation(line: 130, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !163, file: !3, line: 130, column: 13)
!172 = !DILocation(line: 130, column: 25, scope: !171)
!173 = !DILocation(line: 130, column: 13, scope: !163)
!174 = !DILocation(line: 133, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !3, line: 131, column: 9)
!176 = !DILocation(line: 133, column: 26, scope: !175)
!177 = !DILocation(line: 133, column: 25, scope: !175)
!178 = !DILocation(line: 133, column: 35, scope: !175)
!179 = !DILocation(line: 133, column: 52, scope: !175)
!180 = !DILocation(line: 133, column: 51, scope: !175)
!181 = !DILocation(line: 133, column: 59, scope: !175)
!182 = !DILocation(line: 133, column: 13, scope: !175)
!183 = !DILocation(line: 134, column: 9, scope: !175)
!184 = !DILocation(line: 136, column: 20, scope: !155)
!185 = !DILocation(line: 137, column: 18, scope: !155)
!186 = !DILocation(line: 137, column: 5, scope: !155)
!187 = !DILocation(line: 138, column: 1, scope: !155)
!188 = distinct !DISubprogram(name: "goodB2G2Sink", scope: !3, file: !3, line: 141, type: !20, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!189 = !DILocalVariable(name: "data", arg: 1, scope: !188, file: !3, line: 141, type: !22)
!190 = !DILocation(line: 141, column: 26, scope: !188)
!191 = !DILocation(line: 143, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !3, line: 143, column: 8)
!193 = !DILocation(line: 143, column: 8, scope: !188)
!194 = !DILocalVariable(name: "i", scope: !195, file: !3, line: 146, type: !10)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 145, column: 9)
!196 = distinct !DILexicalBlock(scope: !192, file: !3, line: 144, column: 5)
!197 = !DILocation(line: 146, column: 17, scope: !195)
!198 = !DILocalVariable(name: "n", scope: !195, file: !3, line: 146, type: !10)
!199 = !DILocation(line: 146, column: 20, scope: !195)
!200 = !DILocalVariable(name: "intVariable", scope: !195, file: !3, line: 146, type: !10)
!201 = !DILocation(line: 146, column: 23, scope: !195)
!202 = !DILocation(line: 147, column: 24, scope: !203)
!203 = distinct !DILexicalBlock(scope: !195, file: !3, line: 147, column: 17)
!204 = !DILocation(line: 147, column: 17, scope: !203)
!205 = !DILocation(line: 147, column: 40, scope: !203)
!206 = !DILocation(line: 147, column: 17, scope: !195)
!207 = !DILocation(line: 150, column: 21, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 150, column: 21)
!209 = distinct !DILexicalBlock(scope: !203, file: !3, line: 148, column: 13)
!210 = !DILocation(line: 150, column: 23, scope: !208)
!211 = !DILocation(line: 150, column: 21, scope: !209)
!212 = !DILocation(line: 152, column: 33, scope: !213)
!213 = distinct !DILexicalBlock(scope: !208, file: !3, line: 151, column: 17)
!214 = !DILocation(line: 153, column: 28, scope: !215)
!215 = distinct !DILexicalBlock(scope: !213, file: !3, line: 153, column: 21)
!216 = !DILocation(line: 153, column: 26, scope: !215)
!217 = !DILocation(line: 153, column: 33, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !3, line: 153, column: 21)
!219 = !DILocation(line: 153, column: 37, scope: !218)
!220 = !DILocation(line: 153, column: 35, scope: !218)
!221 = !DILocation(line: 153, column: 21, scope: !215)
!222 = !DILocation(line: 156, column: 36, scope: !223)
!223 = distinct !DILexicalBlock(scope: !218, file: !3, line: 154, column: 21)
!224 = !DILocation(line: 157, column: 21, scope: !223)
!225 = !DILocation(line: 153, column: 41, scope: !218)
!226 = !DILocation(line: 153, column: 21, scope: !218)
!227 = distinct !{!227, !221, !228, !59}
!228 = !DILocation(line: 157, column: 21, scope: !215)
!229 = !DILocation(line: 158, column: 34, scope: !213)
!230 = !DILocation(line: 158, column: 21, scope: !213)
!231 = !DILocation(line: 159, column: 17, scope: !213)
!232 = !DILocation(line: 160, column: 13, scope: !209)
!233 = !DILocation(line: 162, column: 5, scope: !196)
!234 = !DILocation(line: 163, column: 1, scope: !188)
!235 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 165, type: !66, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!236 = !DILocalVariable(name: "data", scope: !235, file: !3, line: 167, type: !22)
!237 = !DILocation(line: 167, column: 12, scope: !235)
!238 = !DILocalVariable(name: "dataBuffer", scope: !235, file: !3, line: 168, type: !71)
!239 = !DILocation(line: 168, column: 10, scope: !235)
!240 = !DILocation(line: 169, column: 12, scope: !235)
!241 = !DILocation(line: 169, column: 10, scope: !235)
!242 = !DILocalVariable(name: "dataLen", scope: !243, file: !3, line: 172, type: !79)
!243 = distinct !DILexicalBlock(scope: !235, file: !3, line: 170, column: 5)
!244 = !DILocation(line: 172, column: 16, scope: !243)
!245 = !DILocation(line: 172, column: 33, scope: !243)
!246 = !DILocation(line: 172, column: 26, scope: !243)
!247 = !DILocalVariable(name: "environment", scope: !243, file: !3, line: 173, type: !22)
!248 = !DILocation(line: 173, column: 16, scope: !243)
!249 = !DILocation(line: 173, column: 30, scope: !243)
!250 = !DILocation(line: 175, column: 13, scope: !251)
!251 = distinct !DILexicalBlock(scope: !243, file: !3, line: 175, column: 13)
!252 = !DILocation(line: 175, column: 25, scope: !251)
!253 = !DILocation(line: 175, column: 13, scope: !243)
!254 = !DILocation(line: 178, column: 21, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !3, line: 176, column: 9)
!256 = !DILocation(line: 178, column: 26, scope: !255)
!257 = !DILocation(line: 178, column: 25, scope: !255)
!258 = !DILocation(line: 178, column: 35, scope: !255)
!259 = !DILocation(line: 178, column: 52, scope: !255)
!260 = !DILocation(line: 178, column: 51, scope: !255)
!261 = !DILocation(line: 178, column: 59, scope: !255)
!262 = !DILocation(line: 178, column: 13, scope: !255)
!263 = !DILocation(line: 179, column: 9, scope: !255)
!264 = !DILocation(line: 181, column: 20, scope: !235)
!265 = !DILocation(line: 182, column: 18, scope: !235)
!266 = !DILocation(line: 182, column: 5, scope: !235)
!267 = !DILocation(line: 183, column: 1, scope: !235)
!268 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 186, type: !20, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!269 = !DILocalVariable(name: "data", arg: 1, scope: !268, file: !3, line: 186, type: !22)
!270 = !DILocation(line: 186, column: 25, scope: !268)
!271 = !DILocation(line: 188, column: 8, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !3, line: 188, column: 8)
!273 = !DILocation(line: 188, column: 8, scope: !268)
!274 = !DILocalVariable(name: "i", scope: !275, file: !3, line: 191, type: !10)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 190, column: 9)
!276 = distinct !DILexicalBlock(scope: !272, file: !3, line: 189, column: 5)
!277 = !DILocation(line: 191, column: 17, scope: !275)
!278 = !DILocalVariable(name: "n", scope: !275, file: !3, line: 191, type: !10)
!279 = !DILocation(line: 191, column: 20, scope: !275)
!280 = !DILocalVariable(name: "intVariable", scope: !275, file: !3, line: 191, type: !10)
!281 = !DILocation(line: 191, column: 23, scope: !275)
!282 = !DILocation(line: 192, column: 24, scope: !283)
!283 = distinct !DILexicalBlock(scope: !275, file: !3, line: 192, column: 17)
!284 = !DILocation(line: 192, column: 17, scope: !283)
!285 = !DILocation(line: 192, column: 40, scope: !283)
!286 = !DILocation(line: 192, column: 17, scope: !275)
!287 = !DILocation(line: 195, column: 29, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !3, line: 193, column: 13)
!289 = !DILocation(line: 196, column: 24, scope: !290)
!290 = distinct !DILexicalBlock(scope: !288, file: !3, line: 196, column: 17)
!291 = !DILocation(line: 196, column: 22, scope: !290)
!292 = !DILocation(line: 196, column: 29, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !3, line: 196, column: 17)
!294 = !DILocation(line: 196, column: 33, scope: !293)
!295 = !DILocation(line: 196, column: 31, scope: !293)
!296 = !DILocation(line: 196, column: 17, scope: !290)
!297 = !DILocation(line: 199, column: 32, scope: !298)
!298 = distinct !DILexicalBlock(scope: !293, file: !3, line: 197, column: 17)
!299 = !DILocation(line: 200, column: 17, scope: !298)
!300 = !DILocation(line: 196, column: 37, scope: !293)
!301 = !DILocation(line: 196, column: 17, scope: !293)
!302 = distinct !{!302, !296, !303, !59}
!303 = !DILocation(line: 200, column: 17, scope: !290)
!304 = !DILocation(line: 201, column: 30, scope: !288)
!305 = !DILocation(line: 201, column: 17, scope: !288)
!306 = !DILocation(line: 202, column: 13, scope: !288)
!307 = !DILocation(line: 204, column: 5, scope: !276)
!308 = !DILocation(line: 205, column: 1, scope: !268)
!309 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 207, type: !66, scopeLine: 208, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!310 = !DILocalVariable(name: "data", scope: !309, file: !3, line: 209, type: !22)
!311 = !DILocation(line: 209, column: 12, scope: !309)
!312 = !DILocalVariable(name: "dataBuffer", scope: !309, file: !3, line: 210, type: !71)
!313 = !DILocation(line: 210, column: 10, scope: !309)
!314 = !DILocation(line: 211, column: 12, scope: !309)
!315 = !DILocation(line: 211, column: 10, scope: !309)
!316 = !DILocation(line: 213, column: 12, scope: !309)
!317 = !DILocation(line: 213, column: 5, scope: !309)
!318 = !DILocation(line: 214, column: 19, scope: !309)
!319 = !DILocation(line: 215, column: 17, scope: !309)
!320 = !DILocation(line: 215, column: 5, scope: !309)
!321 = !DILocation(line: 216, column: 1, scope: !309)
!322 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_21_good", scope: !3, file: !3, line: 218, type: !66, scopeLine: 219, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!323 = !DILocation(line: 220, column: 5, scope: !322)
!324 = !DILocation(line: 221, column: 5, scope: !322)
!325 = !DILocation(line: 222, column: 5, scope: !322)
!326 = !DILocation(line: 223, column: 1, scope: !322)
