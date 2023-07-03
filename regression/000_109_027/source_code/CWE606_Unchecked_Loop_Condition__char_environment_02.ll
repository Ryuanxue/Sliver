; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_02.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_02.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_02_bad() #0 !dbg !9 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !12, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !16, metadata !DIExpression()), !dbg !20
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !20
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !20
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !21
  store i8* %arraydecay, i8** %data, align 8, !dbg !22
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !23, metadata !DIExpression()), !dbg !30
  %1 = load i8*, i8** %data, align 8, !dbg !31
  %call = call i64 @strlen(i8* %1) #6, !dbg !32
  store i64 %call, i64* %dataLen, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !33, metadata !DIExpression()), !dbg !34
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !35
  store i8* %call1, i8** %environment, align 8, !dbg !34
  %2 = load i8*, i8** %environment, align 8, !dbg !36
  %cmp = icmp ne i8* %2, null, !dbg !38
  br i1 %cmp, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !40
  %4 = load i64, i64* %dataLen, align 8, !dbg !42
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !43
  %5 = load i8*, i8** %environment, align 8, !dbg !44
  %6 = load i64, i64* %dataLen, align 8, !dbg !45
  %sub = sub i64 100, %6, !dbg !46
  %sub2 = sub i64 %sub, 1, !dbg !47
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !48
  br label %if.end, !dbg !49

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !50, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %n, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !58, metadata !DIExpression()), !dbg !59
  %7 = load i8*, i8** %data, align 8, !dbg !60
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !62
  %cmp5 = icmp eq i32 %call4, 1, !dbg !63
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !64

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %intVariable, align 4, !dbg !65
  store i32 0, i32* %i, align 4, !dbg !67
  br label %for.cond, !dbg !69

for.cond:                                         ; preds = %for.inc, %if.then6
  %8 = load i32, i32* %i, align 4, !dbg !70
  %9 = load i32, i32* %n, align 4, !dbg !72
  %cmp7 = icmp slt i32 %8, %9, !dbg !73
  br i1 %cmp7, label %for.body, label %for.end, !dbg !74

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %intVariable, align 4, !dbg !75
  %inc = add nsw i32 %10, 1, !dbg !75
  store i32 %inc, i32* %intVariable, align 4, !dbg !75
  br label %for.inc, !dbg !77

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !78
  %inc8 = add nsw i32 %11, 1, !dbg !78
  store i32 %inc8, i32* %i, align 4, !dbg !78
  br label %for.cond, !dbg !79, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !83
  call void @printIntLine(i32 %12), !dbg !84
  br label %if.end9, !dbg !85

if.end9:                                          ; preds = %for.end, %if.end
  ret void, !dbg !86
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
define dso_local void @goodB2G1() #0 !dbg !87 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !91
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !91
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !92
  store i8* %arraydecay, i8** %data, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !94, metadata !DIExpression()), !dbg !98
  %1 = load i8*, i8** %data, align 8, !dbg !99
  %call = call i64 @strlen(i8* %1) #6, !dbg !100
  store i64 %call, i64* %dataLen, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !101, metadata !DIExpression()), !dbg !102
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !103
  store i8* %call1, i8** %environment, align 8, !dbg !102
  %2 = load i8*, i8** %environment, align 8, !dbg !104
  %cmp = icmp ne i8* %2, null, !dbg !106
  br i1 %cmp, label %if.then, label %if.end, !dbg !107

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !108
  %4 = load i64, i64* %dataLen, align 8, !dbg !110
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !111
  %5 = load i8*, i8** %environment, align 8, !dbg !112
  %6 = load i64, i64* %dataLen, align 8, !dbg !113
  %sub = sub i64 100, %6, !dbg !114
  %sub2 = sub i64 %sub, 1, !dbg !115
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !116
  br label %if.end, !dbg !117

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !118, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %n, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !125, metadata !DIExpression()), !dbg !126
  %7 = load i8*, i8** %data, align 8, !dbg !127
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !129
  %cmp5 = icmp eq i32 %call4, 1, !dbg !130
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !131

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %n, align 4, !dbg !132
  %cmp7 = icmp slt i32 %8, 10000, !dbg !135
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !136

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %intVariable, align 4, !dbg !137
  store i32 0, i32* %i, align 4, !dbg !139
  br label %for.cond, !dbg !141

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %i, align 4, !dbg !142
  %10 = load i32, i32* %n, align 4, !dbg !144
  %cmp9 = icmp slt i32 %9, %10, !dbg !145
  br i1 %cmp9, label %for.body, label %for.end, !dbg !146

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !147
  %inc = add nsw i32 %11, 1, !dbg !147
  store i32 %inc, i32* %intVariable, align 4, !dbg !147
  br label %for.inc, !dbg !149

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !150
  %inc10 = add nsw i32 %12, 1, !dbg !150
  store i32 %inc10, i32* %i, align 4, !dbg !150
  br label %for.cond, !dbg !151, !llvm.loop !152

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !154
  call void @printIntLine(i32 %13), !dbg !155
  br label %if.end11, !dbg !156

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !157

if.end12:                                         ; preds = %if.end11, %if.end
  ret void, !dbg !158
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !159 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !162, metadata !DIExpression()), !dbg !163
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !163
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !163
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !164
  store i8* %arraydecay, i8** %data, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !166, metadata !DIExpression()), !dbg !170
  %1 = load i8*, i8** %data, align 8, !dbg !171
  %call = call i64 @strlen(i8* %1) #6, !dbg !172
  store i64 %call, i64* %dataLen, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !173, metadata !DIExpression()), !dbg !174
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !175
  store i8* %call1, i8** %environment, align 8, !dbg !174
  %2 = load i8*, i8** %environment, align 8, !dbg !176
  %cmp = icmp ne i8* %2, null, !dbg !178
  br i1 %cmp, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !180
  %4 = load i64, i64* %dataLen, align 8, !dbg !182
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !183
  %5 = load i8*, i8** %environment, align 8, !dbg !184
  %6 = load i64, i64* %dataLen, align 8, !dbg !185
  %sub = sub i64 100, %6, !dbg !186
  %sub2 = sub i64 %sub, 1, !dbg !187
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !188
  br label %if.end, !dbg !189

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !190, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i32* %n, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !197, metadata !DIExpression()), !dbg !198
  %7 = load i8*, i8** %data, align 8, !dbg !199
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !201
  %cmp5 = icmp eq i32 %call4, 1, !dbg !202
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !203

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %n, align 4, !dbg !204
  %cmp7 = icmp slt i32 %8, 10000, !dbg !207
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !208

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %intVariable, align 4, !dbg !209
  store i32 0, i32* %i, align 4, !dbg !211
  br label %for.cond, !dbg !213

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %i, align 4, !dbg !214
  %10 = load i32, i32* %n, align 4, !dbg !216
  %cmp9 = icmp slt i32 %9, %10, !dbg !217
  br i1 %cmp9, label %for.body, label %for.end, !dbg !218

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !219
  %inc = add nsw i32 %11, 1, !dbg !219
  store i32 %inc, i32* %intVariable, align 4, !dbg !219
  br label %for.inc, !dbg !221

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !222
  %inc10 = add nsw i32 %12, 1, !dbg !222
  store i32 %inc10, i32* %i, align 4, !dbg !222
  br label %for.cond, !dbg !223, !llvm.loop !224

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !226
  call void @printIntLine(i32 %13), !dbg !227
  br label %if.end11, !dbg !228

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !229

if.end12:                                         ; preds = %if.end11, %if.end
  ret void, !dbg !230
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !231 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !235
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !235
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !236
  store i8* %arraydecay, i8** %data, align 8, !dbg !237
  %1 = load i8*, i8** %data, align 8, !dbg !238
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !241
  call void @llvm.dbg.declare(metadata i32* %i, metadata !242, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %n, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !249, metadata !DIExpression()), !dbg !250
  %2 = load i8*, i8** %data, align 8, !dbg !251
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !253
  %cmp = icmp eq i32 %call1, 1, !dbg !254
  br i1 %cmp, label %if.then, label %if.end, !dbg !255

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !256
  store i32 0, i32* %i, align 4, !dbg !258
  br label %for.cond, !dbg !260

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !261
  %4 = load i32, i32* %n, align 4, !dbg !263
  %cmp2 = icmp slt i32 %3, %4, !dbg !264
  br i1 %cmp2, label %for.body, label %for.end, !dbg !265

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !266
  %inc = add nsw i32 %5, 1, !dbg !266
  store i32 %inc, i32* %intVariable, align 4, !dbg !266
  br label %for.inc, !dbg !268

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !269
  %inc3 = add nsw i32 %6, 1, !dbg !269
  store i32 %inc3, i32* %i, align 4, !dbg !269
  br label %for.cond, !dbg !270, !llvm.loop !271

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !273
  call void @printIntLine(i32 %7), !dbg !274
  br label %if.end, !dbg !275

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !276
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !277 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !281
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !281
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !282
  store i8* %arraydecay, i8** %data, align 8, !dbg !283
  %1 = load i8*, i8** %data, align 8, !dbg !284
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !287
  call void @llvm.dbg.declare(metadata i32* %i, metadata !288, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata i32* %n, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !295, metadata !DIExpression()), !dbg !296
  %2 = load i8*, i8** %data, align 8, !dbg !297
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !299
  %cmp = icmp eq i32 %call1, 1, !dbg !300
  br i1 %cmp, label %if.then, label %if.end, !dbg !301

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !302
  store i32 0, i32* %i, align 4, !dbg !304
  br label %for.cond, !dbg !306

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !307
  %4 = load i32, i32* %n, align 4, !dbg !309
  %cmp2 = icmp slt i32 %3, %4, !dbg !310
  br i1 %cmp2, label %for.body, label %for.end, !dbg !311

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !312
  %inc = add nsw i32 %5, 1, !dbg !312
  store i32 %inc, i32* %intVariable, align 4, !dbg !312
  br label %for.inc, !dbg !314

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !315
  %inc3 = add nsw i32 %6, 1, !dbg !315
  store i32 %inc3, i32* %i, align 4, !dbg !315
  br label %for.cond, !dbg !316, !llvm.loop !317

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !319
  call void @printIntLine(i32 %7), !dbg !320
  br label %if.end, !dbg !321

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_02_good() #0 !dbg !323 {
entry:
  call void @goodB2G1(), !dbg !324
  call void @goodB2G2(), !dbg !325
  call void @goodG2B1(), !dbg !326
  call void @goodG2B2(), !dbg !327
  ret void, !dbg !328
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_02.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_027/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_02_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!23 = !DILocalVariable(name: "dataLen", scope: !24, file: !1, line: 46, type: !27)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 44, column: 9)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 43, column: 5)
!26 = distinct !DILexicalBlock(scope: !9, file: !1, line: 42, column: 8)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DILocation(line: 46, column: 20, scope: !24)
!31 = !DILocation(line: 46, column: 37, scope: !24)
!32 = !DILocation(line: 46, column: 30, scope: !24)
!33 = !DILocalVariable(name: "environment", scope: !24, file: !1, line: 47, type: !13)
!34 = !DILocation(line: 47, column: 20, scope: !24)
!35 = !DILocation(line: 47, column: 34, scope: !24)
!36 = !DILocation(line: 49, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !24, file: !1, line: 49, column: 17)
!38 = !DILocation(line: 49, column: 29, scope: !37)
!39 = !DILocation(line: 49, column: 17, scope: !24)
!40 = !DILocation(line: 52, column: 25, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 50, column: 13)
!42 = !DILocation(line: 52, column: 30, scope: !41)
!43 = !DILocation(line: 52, column: 29, scope: !41)
!44 = !DILocation(line: 52, column: 39, scope: !41)
!45 = !DILocation(line: 52, column: 56, scope: !41)
!46 = !DILocation(line: 52, column: 55, scope: !41)
!47 = !DILocation(line: 52, column: 63, scope: !41)
!48 = !DILocation(line: 52, column: 17, scope: !41)
!49 = !DILocation(line: 53, column: 13, scope: !41)
!50 = !DILocalVariable(name: "i", scope: !51, file: !1, line: 59, type: !54)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 58, column: 9)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 57, column: 5)
!53 = distinct !DILexicalBlock(scope: !9, file: !1, line: 56, column: 8)
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DILocation(line: 59, column: 17, scope: !51)
!56 = !DILocalVariable(name: "n", scope: !51, file: !1, line: 59, type: !54)
!57 = !DILocation(line: 59, column: 20, scope: !51)
!58 = !DILocalVariable(name: "intVariable", scope: !51, file: !1, line: 59, type: !54)
!59 = !DILocation(line: 59, column: 23, scope: !51)
!60 = !DILocation(line: 60, column: 24, scope: !61)
!61 = distinct !DILexicalBlock(scope: !51, file: !1, line: 60, column: 17)
!62 = !DILocation(line: 60, column: 17, scope: !61)
!63 = !DILocation(line: 60, column: 40, scope: !61)
!64 = !DILocation(line: 60, column: 17, scope: !51)
!65 = !DILocation(line: 63, column: 29, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !1, line: 61, column: 13)
!67 = !DILocation(line: 64, column: 24, scope: !68)
!68 = distinct !DILexicalBlock(scope: !66, file: !1, line: 64, column: 17)
!69 = !DILocation(line: 64, column: 22, scope: !68)
!70 = !DILocation(line: 64, column: 29, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 64, column: 17)
!72 = !DILocation(line: 64, column: 33, scope: !71)
!73 = !DILocation(line: 64, column: 31, scope: !71)
!74 = !DILocation(line: 64, column: 17, scope: !68)
!75 = !DILocation(line: 67, column: 32, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !1, line: 65, column: 17)
!77 = !DILocation(line: 68, column: 17, scope: !76)
!78 = !DILocation(line: 64, column: 37, scope: !71)
!79 = !DILocation(line: 64, column: 17, scope: !71)
!80 = distinct !{!80, !74, !81, !82}
!81 = !DILocation(line: 68, column: 17, scope: !68)
!82 = !{!"llvm.loop.mustprogress"}
!83 = !DILocation(line: 69, column: 30, scope: !66)
!84 = !DILocation(line: 69, column: 17, scope: !66)
!85 = !DILocation(line: 70, column: 13, scope: !66)
!86 = !DILocation(line: 73, column: 1, scope: !9)
!87 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 80, type: !10, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!88 = !DILocalVariable(name: "data", scope: !87, file: !1, line: 82, type: !13)
!89 = !DILocation(line: 82, column: 12, scope: !87)
!90 = !DILocalVariable(name: "dataBuffer", scope: !87, file: !1, line: 83, type: !17)
!91 = !DILocation(line: 83, column: 10, scope: !87)
!92 = !DILocation(line: 84, column: 12, scope: !87)
!93 = !DILocation(line: 84, column: 10, scope: !87)
!94 = !DILocalVariable(name: "dataLen", scope: !95, file: !1, line: 89, type: !27)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 87, column: 9)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 86, column: 5)
!97 = distinct !DILexicalBlock(scope: !87, file: !1, line: 85, column: 8)
!98 = !DILocation(line: 89, column: 20, scope: !95)
!99 = !DILocation(line: 89, column: 37, scope: !95)
!100 = !DILocation(line: 89, column: 30, scope: !95)
!101 = !DILocalVariable(name: "environment", scope: !95, file: !1, line: 90, type: !13)
!102 = !DILocation(line: 90, column: 20, scope: !95)
!103 = !DILocation(line: 90, column: 34, scope: !95)
!104 = !DILocation(line: 92, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !95, file: !1, line: 92, column: 17)
!106 = !DILocation(line: 92, column: 29, scope: !105)
!107 = !DILocation(line: 92, column: 17, scope: !95)
!108 = !DILocation(line: 95, column: 25, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 93, column: 13)
!110 = !DILocation(line: 95, column: 30, scope: !109)
!111 = !DILocation(line: 95, column: 29, scope: !109)
!112 = !DILocation(line: 95, column: 39, scope: !109)
!113 = !DILocation(line: 95, column: 56, scope: !109)
!114 = !DILocation(line: 95, column: 55, scope: !109)
!115 = !DILocation(line: 95, column: 63, scope: !109)
!116 = !DILocation(line: 95, column: 17, scope: !109)
!117 = !DILocation(line: 96, column: 13, scope: !109)
!118 = !DILocalVariable(name: "i", scope: !119, file: !1, line: 107, type: !54)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 106, column: 9)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 105, column: 5)
!121 = distinct !DILexicalBlock(scope: !87, file: !1, line: 99, column: 8)
!122 = !DILocation(line: 107, column: 17, scope: !119)
!123 = !DILocalVariable(name: "n", scope: !119, file: !1, line: 107, type: !54)
!124 = !DILocation(line: 107, column: 20, scope: !119)
!125 = !DILocalVariable(name: "intVariable", scope: !119, file: !1, line: 107, type: !54)
!126 = !DILocation(line: 107, column: 23, scope: !119)
!127 = !DILocation(line: 108, column: 24, scope: !128)
!128 = distinct !DILexicalBlock(scope: !119, file: !1, line: 108, column: 17)
!129 = !DILocation(line: 108, column: 17, scope: !128)
!130 = !DILocation(line: 108, column: 40, scope: !128)
!131 = !DILocation(line: 108, column: 17, scope: !119)
!132 = !DILocation(line: 111, column: 21, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 111, column: 21)
!134 = distinct !DILexicalBlock(scope: !128, file: !1, line: 109, column: 13)
!135 = !DILocation(line: 111, column: 23, scope: !133)
!136 = !DILocation(line: 111, column: 21, scope: !134)
!137 = !DILocation(line: 113, column: 33, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !1, line: 112, column: 17)
!139 = !DILocation(line: 114, column: 28, scope: !140)
!140 = distinct !DILexicalBlock(scope: !138, file: !1, line: 114, column: 21)
!141 = !DILocation(line: 114, column: 26, scope: !140)
!142 = !DILocation(line: 114, column: 33, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !1, line: 114, column: 21)
!144 = !DILocation(line: 114, column: 37, scope: !143)
!145 = !DILocation(line: 114, column: 35, scope: !143)
!146 = !DILocation(line: 114, column: 21, scope: !140)
!147 = !DILocation(line: 117, column: 36, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !1, line: 115, column: 21)
!149 = !DILocation(line: 118, column: 21, scope: !148)
!150 = !DILocation(line: 114, column: 41, scope: !143)
!151 = !DILocation(line: 114, column: 21, scope: !143)
!152 = distinct !{!152, !146, !153, !82}
!153 = !DILocation(line: 118, column: 21, scope: !140)
!154 = !DILocation(line: 119, column: 34, scope: !138)
!155 = !DILocation(line: 119, column: 21, scope: !138)
!156 = !DILocation(line: 120, column: 17, scope: !138)
!157 = !DILocation(line: 121, column: 13, scope: !134)
!158 = !DILocation(line: 124, column: 1, scope: !87)
!159 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 127, type: !10, scopeLine: 128, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!160 = !DILocalVariable(name: "data", scope: !159, file: !1, line: 129, type: !13)
!161 = !DILocation(line: 129, column: 12, scope: !159)
!162 = !DILocalVariable(name: "dataBuffer", scope: !159, file: !1, line: 130, type: !17)
!163 = !DILocation(line: 130, column: 10, scope: !159)
!164 = !DILocation(line: 131, column: 12, scope: !159)
!165 = !DILocation(line: 131, column: 10, scope: !159)
!166 = !DILocalVariable(name: "dataLen", scope: !167, file: !1, line: 136, type: !27)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 134, column: 9)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 133, column: 5)
!169 = distinct !DILexicalBlock(scope: !159, file: !1, line: 132, column: 8)
!170 = !DILocation(line: 136, column: 20, scope: !167)
!171 = !DILocation(line: 136, column: 37, scope: !167)
!172 = !DILocation(line: 136, column: 30, scope: !167)
!173 = !DILocalVariable(name: "environment", scope: !167, file: !1, line: 137, type: !13)
!174 = !DILocation(line: 137, column: 20, scope: !167)
!175 = !DILocation(line: 137, column: 34, scope: !167)
!176 = !DILocation(line: 139, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !167, file: !1, line: 139, column: 17)
!178 = !DILocation(line: 139, column: 29, scope: !177)
!179 = !DILocation(line: 139, column: 17, scope: !167)
!180 = !DILocation(line: 142, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 140, column: 13)
!182 = !DILocation(line: 142, column: 30, scope: !181)
!183 = !DILocation(line: 142, column: 29, scope: !181)
!184 = !DILocation(line: 142, column: 39, scope: !181)
!185 = !DILocation(line: 142, column: 56, scope: !181)
!186 = !DILocation(line: 142, column: 55, scope: !181)
!187 = !DILocation(line: 142, column: 63, scope: !181)
!188 = !DILocation(line: 142, column: 17, scope: !181)
!189 = !DILocation(line: 143, column: 13, scope: !181)
!190 = !DILocalVariable(name: "i", scope: !191, file: !1, line: 149, type: !54)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 148, column: 9)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 147, column: 5)
!193 = distinct !DILexicalBlock(scope: !159, file: !1, line: 146, column: 8)
!194 = !DILocation(line: 149, column: 17, scope: !191)
!195 = !DILocalVariable(name: "n", scope: !191, file: !1, line: 149, type: !54)
!196 = !DILocation(line: 149, column: 20, scope: !191)
!197 = !DILocalVariable(name: "intVariable", scope: !191, file: !1, line: 149, type: !54)
!198 = !DILocation(line: 149, column: 23, scope: !191)
!199 = !DILocation(line: 150, column: 24, scope: !200)
!200 = distinct !DILexicalBlock(scope: !191, file: !1, line: 150, column: 17)
!201 = !DILocation(line: 150, column: 17, scope: !200)
!202 = !DILocation(line: 150, column: 40, scope: !200)
!203 = !DILocation(line: 150, column: 17, scope: !191)
!204 = !DILocation(line: 153, column: 21, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 153, column: 21)
!206 = distinct !DILexicalBlock(scope: !200, file: !1, line: 151, column: 13)
!207 = !DILocation(line: 153, column: 23, scope: !205)
!208 = !DILocation(line: 153, column: 21, scope: !206)
!209 = !DILocation(line: 155, column: 33, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !1, line: 154, column: 17)
!211 = !DILocation(line: 156, column: 28, scope: !212)
!212 = distinct !DILexicalBlock(scope: !210, file: !1, line: 156, column: 21)
!213 = !DILocation(line: 156, column: 26, scope: !212)
!214 = !DILocation(line: 156, column: 33, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !1, line: 156, column: 21)
!216 = !DILocation(line: 156, column: 37, scope: !215)
!217 = !DILocation(line: 156, column: 35, scope: !215)
!218 = !DILocation(line: 156, column: 21, scope: !212)
!219 = !DILocation(line: 159, column: 36, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 157, column: 21)
!221 = !DILocation(line: 160, column: 21, scope: !220)
!222 = !DILocation(line: 156, column: 41, scope: !215)
!223 = !DILocation(line: 156, column: 21, scope: !215)
!224 = distinct !{!224, !218, !225, !82}
!225 = !DILocation(line: 160, column: 21, scope: !212)
!226 = !DILocation(line: 161, column: 34, scope: !210)
!227 = !DILocation(line: 161, column: 21, scope: !210)
!228 = !DILocation(line: 162, column: 17, scope: !210)
!229 = !DILocation(line: 163, column: 13, scope: !206)
!230 = !DILocation(line: 166, column: 1, scope: !159)
!231 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 169, type: !10, scopeLine: 170, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!232 = !DILocalVariable(name: "data", scope: !231, file: !1, line: 171, type: !13)
!233 = !DILocation(line: 171, column: 12, scope: !231)
!234 = !DILocalVariable(name: "dataBuffer", scope: !231, file: !1, line: 172, type: !17)
!235 = !DILocation(line: 172, column: 10, scope: !231)
!236 = !DILocation(line: 173, column: 12, scope: !231)
!237 = !DILocation(line: 173, column: 10, scope: !231)
!238 = !DILocation(line: 182, column: 16, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 180, column: 5)
!240 = distinct !DILexicalBlock(scope: !231, file: !1, line: 174, column: 8)
!241 = !DILocation(line: 182, column: 9, scope: !239)
!242 = !DILocalVariable(name: "i", scope: !243, file: !1, line: 187, type: !54)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 186, column: 9)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 185, column: 5)
!245 = distinct !DILexicalBlock(scope: !231, file: !1, line: 184, column: 8)
!246 = !DILocation(line: 187, column: 17, scope: !243)
!247 = !DILocalVariable(name: "n", scope: !243, file: !1, line: 187, type: !54)
!248 = !DILocation(line: 187, column: 20, scope: !243)
!249 = !DILocalVariable(name: "intVariable", scope: !243, file: !1, line: 187, type: !54)
!250 = !DILocation(line: 187, column: 23, scope: !243)
!251 = !DILocation(line: 188, column: 24, scope: !252)
!252 = distinct !DILexicalBlock(scope: !243, file: !1, line: 188, column: 17)
!253 = !DILocation(line: 188, column: 17, scope: !252)
!254 = !DILocation(line: 188, column: 40, scope: !252)
!255 = !DILocation(line: 188, column: 17, scope: !243)
!256 = !DILocation(line: 191, column: 29, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !1, line: 189, column: 13)
!258 = !DILocation(line: 192, column: 24, scope: !259)
!259 = distinct !DILexicalBlock(scope: !257, file: !1, line: 192, column: 17)
!260 = !DILocation(line: 192, column: 22, scope: !259)
!261 = !DILocation(line: 192, column: 29, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 192, column: 17)
!263 = !DILocation(line: 192, column: 33, scope: !262)
!264 = !DILocation(line: 192, column: 31, scope: !262)
!265 = !DILocation(line: 192, column: 17, scope: !259)
!266 = !DILocation(line: 195, column: 32, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !1, line: 193, column: 17)
!268 = !DILocation(line: 196, column: 17, scope: !267)
!269 = !DILocation(line: 192, column: 37, scope: !262)
!270 = !DILocation(line: 192, column: 17, scope: !262)
!271 = distinct !{!271, !265, !272, !82}
!272 = !DILocation(line: 196, column: 17, scope: !259)
!273 = !DILocation(line: 197, column: 30, scope: !257)
!274 = !DILocation(line: 197, column: 17, scope: !257)
!275 = !DILocation(line: 198, column: 13, scope: !257)
!276 = !DILocation(line: 201, column: 1, scope: !231)
!277 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 204, type: !10, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!278 = !DILocalVariable(name: "data", scope: !277, file: !1, line: 206, type: !13)
!279 = !DILocation(line: 206, column: 12, scope: !277)
!280 = !DILocalVariable(name: "dataBuffer", scope: !277, file: !1, line: 207, type: !17)
!281 = !DILocation(line: 207, column: 10, scope: !277)
!282 = !DILocation(line: 208, column: 12, scope: !277)
!283 = !DILocation(line: 208, column: 10, scope: !277)
!284 = !DILocation(line: 212, column: 16, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !1, line: 210, column: 5)
!286 = distinct !DILexicalBlock(scope: !277, file: !1, line: 209, column: 8)
!287 = !DILocation(line: 212, column: 9, scope: !285)
!288 = !DILocalVariable(name: "i", scope: !289, file: !1, line: 217, type: !54)
!289 = distinct !DILexicalBlock(scope: !290, file: !1, line: 216, column: 9)
!290 = distinct !DILexicalBlock(scope: !291, file: !1, line: 215, column: 5)
!291 = distinct !DILexicalBlock(scope: !277, file: !1, line: 214, column: 8)
!292 = !DILocation(line: 217, column: 17, scope: !289)
!293 = !DILocalVariable(name: "n", scope: !289, file: !1, line: 217, type: !54)
!294 = !DILocation(line: 217, column: 20, scope: !289)
!295 = !DILocalVariable(name: "intVariable", scope: !289, file: !1, line: 217, type: !54)
!296 = !DILocation(line: 217, column: 23, scope: !289)
!297 = !DILocation(line: 218, column: 24, scope: !298)
!298 = distinct !DILexicalBlock(scope: !289, file: !1, line: 218, column: 17)
!299 = !DILocation(line: 218, column: 17, scope: !298)
!300 = !DILocation(line: 218, column: 40, scope: !298)
!301 = !DILocation(line: 218, column: 17, scope: !289)
!302 = !DILocation(line: 221, column: 29, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !1, line: 219, column: 13)
!304 = !DILocation(line: 222, column: 24, scope: !305)
!305 = distinct !DILexicalBlock(scope: !303, file: !1, line: 222, column: 17)
!306 = !DILocation(line: 222, column: 22, scope: !305)
!307 = !DILocation(line: 222, column: 29, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !1, line: 222, column: 17)
!309 = !DILocation(line: 222, column: 33, scope: !308)
!310 = !DILocation(line: 222, column: 31, scope: !308)
!311 = !DILocation(line: 222, column: 17, scope: !305)
!312 = !DILocation(line: 225, column: 32, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !1, line: 223, column: 17)
!314 = !DILocation(line: 226, column: 17, scope: !313)
!315 = !DILocation(line: 222, column: 37, scope: !308)
!316 = !DILocation(line: 222, column: 17, scope: !308)
!317 = distinct !{!317, !311, !318, !82}
!318 = !DILocation(line: 226, column: 17, scope: !305)
!319 = !DILocation(line: 227, column: 30, scope: !303)
!320 = !DILocation(line: 227, column: 17, scope: !303)
!321 = !DILocation(line: 228, column: 13, scope: !303)
!322 = !DILocation(line: 231, column: 1, scope: !277)
!323 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_02_good", scope: !1, file: !1, line: 233, type: !10, scopeLine: 234, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!324 = !DILocation(line: 235, column: 5, scope: !323)
!325 = !DILocation(line: 236, column: 5, scope: !323)
!326 = !DILocation(line: 237, column: 5, scope: !323)
!327 = !DILocation(line: 238, column: 5, scope: !323)
!328 = !DILocation(line: 239, column: 1, scope: !323)
