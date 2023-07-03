; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_15.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_15_bad() #0 !dbg !9 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !23, metadata !DIExpression()), !dbg !28
  %1 = load i8*, i8** %data, align 8, !dbg !29
  %call = call i64 @strlen(i8* %1) #6, !dbg !30
  store i64 %call, i64* %dataLen, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !31, metadata !DIExpression()), !dbg !32
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !33
  store i8* %call1, i8** %environment, align 8, !dbg !32
  %2 = load i8*, i8** %environment, align 8, !dbg !34
  %cmp = icmp ne i8* %2, null, !dbg !36
  br i1 %cmp, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !38
  %4 = load i64, i64* %dataLen, align 8, !dbg !40
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !41
  %5 = load i8*, i8** %environment, align 8, !dbg !42
  %6 = load i64, i64* %dataLen, align 8, !dbg !43
  %sub = sub i64 100, %6, !dbg !44
  %sub2 = sub i64 %sub, 1, !dbg !45
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !46
  br label %if.end, !dbg !47

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !48, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %n, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !54, metadata !DIExpression()), !dbg !55
  %7 = load i8*, i8** %data, align 8, !dbg !56
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !58
  %cmp5 = icmp eq i32 %call4, 1, !dbg !59
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !60

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %intVariable, align 4, !dbg !61
  store i32 0, i32* %i, align 4, !dbg !63
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc, %if.then6
  %8 = load i32, i32* %i, align 4, !dbg !66
  %9 = load i32, i32* %n, align 4, !dbg !68
  %cmp7 = icmp slt i32 %8, %9, !dbg !69
  br i1 %cmp7, label %for.body, label %for.end, !dbg !70

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %intVariable, align 4, !dbg !71
  %inc = add nsw i32 %10, 1, !dbg !71
  store i32 %inc, i32* %intVariable, align 4, !dbg !71
  br label %for.inc, !dbg !73

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !74
  %inc8 = add nsw i32 %11, 1, !dbg !74
  store i32 %inc8, i32* %i, align 4, !dbg !74
  br label %for.cond, !dbg !75, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !79
  call void @printIntLine(i32 %12), !dbg !80
  br label %if.end9, !dbg !81

if.end9:                                          ; preds = %for.end, %if.end
  ret void, !dbg !82
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
define dso_local void @goodB2G1() #0 !dbg !83 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !86, metadata !DIExpression()), !dbg !87
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !87
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !87
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !88
  store i8* %arraydecay, i8** %data, align 8, !dbg !89
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !90, metadata !DIExpression()), !dbg !92
  %1 = load i8*, i8** %data, align 8, !dbg !93
  %call = call i64 @strlen(i8* %1) #6, !dbg !94
  store i64 %call, i64* %dataLen, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !95, metadata !DIExpression()), !dbg !96
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !97
  store i8* %call1, i8** %environment, align 8, !dbg !96
  %2 = load i8*, i8** %environment, align 8, !dbg !98
  %cmp = icmp ne i8* %2, null, !dbg !100
  br i1 %cmp, label %if.then, label %if.end, !dbg !101

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !102
  %4 = load i64, i64* %dataLen, align 8, !dbg !104
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !105
  %5 = load i8*, i8** %environment, align 8, !dbg !106
  %6 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub = sub i64 100, %6, !dbg !108
  %sub2 = sub i64 %sub, 1, !dbg !109
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !110
  br label %if.end, !dbg !111

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !112, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %n, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !117, metadata !DIExpression()), !dbg !118
  %7 = load i8*, i8** %data, align 8, !dbg !119
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !121
  %cmp5 = icmp eq i32 %call4, 1, !dbg !122
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !123

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %n, align 4, !dbg !124
  %cmp7 = icmp slt i32 %8, 10000, !dbg !127
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !128

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %intVariable, align 4, !dbg !129
  store i32 0, i32* %i, align 4, !dbg !131
  br label %for.cond, !dbg !133

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %i, align 4, !dbg !134
  %10 = load i32, i32* %n, align 4, !dbg !136
  %cmp9 = icmp slt i32 %9, %10, !dbg !137
  br i1 %cmp9, label %for.body, label %for.end, !dbg !138

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !139
  %inc = add nsw i32 %11, 1, !dbg !139
  store i32 %inc, i32* %intVariable, align 4, !dbg !139
  br label %for.inc, !dbg !141

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !142
  %inc10 = add nsw i32 %12, 1, !dbg !142
  store i32 %inc10, i32* %i, align 4, !dbg !142
  br label %for.cond, !dbg !143, !llvm.loop !144

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !146
  call void @printIntLine(i32 %13), !dbg !147
  br label %if.end11, !dbg !148

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !149

if.end12:                                         ; preds = %if.end11, %if.end
  ret void, !dbg !150
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !151 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !155
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !155
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !156
  store i8* %arraydecay, i8** %data, align 8, !dbg !157
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !158, metadata !DIExpression()), !dbg !160
  %1 = load i8*, i8** %data, align 8, !dbg !161
  %call = call i64 @strlen(i8* %1) #6, !dbg !162
  store i64 %call, i64* %dataLen, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !163, metadata !DIExpression()), !dbg !164
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !165
  store i8* %call1, i8** %environment, align 8, !dbg !164
  %2 = load i8*, i8** %environment, align 8, !dbg !166
  %cmp = icmp ne i8* %2, null, !dbg !168
  br i1 %cmp, label %if.then, label %if.end, !dbg !169

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !170
  %4 = load i64, i64* %dataLen, align 8, !dbg !172
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !173
  %5 = load i8*, i8** %environment, align 8, !dbg !174
  %6 = load i64, i64* %dataLen, align 8, !dbg !175
  %sub = sub i64 100, %6, !dbg !176
  %sub2 = sub i64 %sub, 1, !dbg !177
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !178
  br label %if.end, !dbg !179

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !180, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %n, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !185, metadata !DIExpression()), !dbg !186
  %7 = load i8*, i8** %data, align 8, !dbg !187
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !189
  %cmp5 = icmp eq i32 %call4, 1, !dbg !190
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !191

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %n, align 4, !dbg !192
  %cmp7 = icmp slt i32 %8, 10000, !dbg !195
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !196

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %intVariable, align 4, !dbg !197
  store i32 0, i32* %i, align 4, !dbg !199
  br label %for.cond, !dbg !201

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %i, align 4, !dbg !202
  %10 = load i32, i32* %n, align 4, !dbg !204
  %cmp9 = icmp slt i32 %9, %10, !dbg !205
  br i1 %cmp9, label %for.body, label %for.end, !dbg !206

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !207
  %inc = add nsw i32 %11, 1, !dbg !207
  store i32 %inc, i32* %intVariable, align 4, !dbg !207
  br label %for.inc, !dbg !209

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !210
  %inc10 = add nsw i32 %12, 1, !dbg !210
  store i32 %inc10, i32* %i, align 4, !dbg !210
  br label %for.cond, !dbg !211, !llvm.loop !212

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !214
  call void @printIntLine(i32 %13), !dbg !215
  br label %if.end11, !dbg !216

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !217

if.end12:                                         ; preds = %if.end11, %if.end
  ret void, !dbg !218
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !219 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !222, metadata !DIExpression()), !dbg !223
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !223
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !223
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !224
  store i8* %arraydecay, i8** %data, align 8, !dbg !225
  %1 = load i8*, i8** %data, align 8, !dbg !226
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !227
  call void @llvm.dbg.declare(metadata i32* %i, metadata !228, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata i32* %n, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !233, metadata !DIExpression()), !dbg !234
  %2 = load i8*, i8** %data, align 8, !dbg !235
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !237
  %cmp = icmp eq i32 %call1, 1, !dbg !238
  br i1 %cmp, label %if.then, label %if.end, !dbg !239

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !240
  store i32 0, i32* %i, align 4, !dbg !242
  br label %for.cond, !dbg !244

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !245
  %4 = load i32, i32* %n, align 4, !dbg !247
  %cmp2 = icmp slt i32 %3, %4, !dbg !248
  br i1 %cmp2, label %for.body, label %for.end, !dbg !249

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !250
  %inc = add nsw i32 %5, 1, !dbg !250
  store i32 %inc, i32* %intVariable, align 4, !dbg !250
  br label %for.inc, !dbg !252

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !253
  %inc3 = add nsw i32 %6, 1, !dbg !253
  store i32 %inc3, i32* %i, align 4, !dbg !253
  br label %for.cond, !dbg !254, !llvm.loop !255

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !257
  call void @printIntLine(i32 %7), !dbg !258
  br label %if.end, !dbg !259

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !260
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !261 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !265
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !265
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !266
  store i8* %arraydecay, i8** %data, align 8, !dbg !267
  %1 = load i8*, i8** %data, align 8, !dbg !268
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !269
  call void @llvm.dbg.declare(metadata i32* %i, metadata !270, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata i32* %n, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !275, metadata !DIExpression()), !dbg !276
  %2 = load i8*, i8** %data, align 8, !dbg !277
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !279
  %cmp = icmp eq i32 %call1, 1, !dbg !280
  br i1 %cmp, label %if.then, label %if.end, !dbg !281

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !282
  store i32 0, i32* %i, align 4, !dbg !284
  br label %for.cond, !dbg !286

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !287
  %4 = load i32, i32* %n, align 4, !dbg !289
  %cmp2 = icmp slt i32 %3, %4, !dbg !290
  br i1 %cmp2, label %for.body, label %for.end, !dbg !291

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !292
  %inc = add nsw i32 %5, 1, !dbg !292
  store i32 %inc, i32* %intVariable, align 4, !dbg !292
  br label %for.inc, !dbg !294

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !295
  %inc3 = add nsw i32 %6, 1, !dbg !295
  store i32 %inc3, i32* %i, align 4, !dbg !295
  br label %for.cond, !dbg !296, !llvm.loop !297

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !299
  call void @printIntLine(i32 %7), !dbg !300
  br label %if.end, !dbg !301

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_15_good() #0 !dbg !303 {
entry:
  call void @goodB2G1(), !dbg !304
  call void @goodB2G2(), !dbg !305
  call void @goodG2B1(), !dbg !306
  call void @goodG2B2(), !dbg !307
  ret void, !dbg !308
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_040/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_15_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!23 = !DILocalVariable(name: "dataLen", scope: !24, file: !1, line: 47, type: !25)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 45, column: 5)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 47, column: 16, scope: !24)
!29 = !DILocation(line: 47, column: 33, scope: !24)
!30 = !DILocation(line: 47, column: 26, scope: !24)
!31 = !DILocalVariable(name: "environment", scope: !24, file: !1, line: 48, type: !13)
!32 = !DILocation(line: 48, column: 16, scope: !24)
!33 = !DILocation(line: 48, column: 30, scope: !24)
!34 = !DILocation(line: 50, column: 13, scope: !35)
!35 = distinct !DILexicalBlock(scope: !24, file: !1, line: 50, column: 13)
!36 = !DILocation(line: 50, column: 25, scope: !35)
!37 = !DILocation(line: 50, column: 13, scope: !24)
!38 = !DILocation(line: 53, column: 21, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 51, column: 9)
!40 = !DILocation(line: 53, column: 26, scope: !39)
!41 = !DILocation(line: 53, column: 25, scope: !39)
!42 = !DILocation(line: 53, column: 35, scope: !39)
!43 = !DILocation(line: 53, column: 52, scope: !39)
!44 = !DILocation(line: 53, column: 51, scope: !39)
!45 = !DILocation(line: 53, column: 59, scope: !39)
!46 = !DILocation(line: 53, column: 13, scope: !39)
!47 = !DILocation(line: 54, column: 9, scope: !39)
!48 = !DILocalVariable(name: "i", scope: !49, file: !1, line: 66, type: !50)
!49 = distinct !DILexicalBlock(scope: !9, file: !1, line: 65, column: 5)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DILocation(line: 66, column: 13, scope: !49)
!52 = !DILocalVariable(name: "n", scope: !49, file: !1, line: 66, type: !50)
!53 = !DILocation(line: 66, column: 16, scope: !49)
!54 = !DILocalVariable(name: "intVariable", scope: !49, file: !1, line: 66, type: !50)
!55 = !DILocation(line: 66, column: 19, scope: !49)
!56 = !DILocation(line: 67, column: 20, scope: !57)
!57 = distinct !DILexicalBlock(scope: !49, file: !1, line: 67, column: 13)
!58 = !DILocation(line: 67, column: 13, scope: !57)
!59 = !DILocation(line: 67, column: 36, scope: !57)
!60 = !DILocation(line: 67, column: 13, scope: !49)
!61 = !DILocation(line: 70, column: 25, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !1, line: 68, column: 9)
!63 = !DILocation(line: 71, column: 20, scope: !64)
!64 = distinct !DILexicalBlock(scope: !62, file: !1, line: 71, column: 13)
!65 = !DILocation(line: 71, column: 18, scope: !64)
!66 = !DILocation(line: 71, column: 25, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 71, column: 13)
!68 = !DILocation(line: 71, column: 29, scope: !67)
!69 = !DILocation(line: 71, column: 27, scope: !67)
!70 = !DILocation(line: 71, column: 13, scope: !64)
!71 = !DILocation(line: 74, column: 28, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 72, column: 13)
!73 = !DILocation(line: 75, column: 13, scope: !72)
!74 = !DILocation(line: 71, column: 33, scope: !67)
!75 = !DILocation(line: 71, column: 13, scope: !67)
!76 = distinct !{!76, !70, !77, !78}
!77 = !DILocation(line: 75, column: 13, scope: !64)
!78 = !{!"llvm.loop.mustprogress"}
!79 = !DILocation(line: 76, column: 26, scope: !62)
!80 = !DILocation(line: 76, column: 13, scope: !62)
!81 = !DILocation(line: 77, column: 9, scope: !62)
!82 = !DILocation(line: 85, column: 1, scope: !9)
!83 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 92, type: !10, scopeLine: 93, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!84 = !DILocalVariable(name: "data", scope: !83, file: !1, line: 94, type: !13)
!85 = !DILocation(line: 94, column: 12, scope: !83)
!86 = !DILocalVariable(name: "dataBuffer", scope: !83, file: !1, line: 95, type: !17)
!87 = !DILocation(line: 95, column: 10, scope: !83)
!88 = !DILocation(line: 96, column: 12, scope: !83)
!89 = !DILocation(line: 96, column: 10, scope: !83)
!90 = !DILocalVariable(name: "dataLen", scope: !91, file: !1, line: 102, type: !25)
!91 = distinct !DILexicalBlock(scope: !83, file: !1, line: 100, column: 5)
!92 = !DILocation(line: 102, column: 16, scope: !91)
!93 = !DILocation(line: 102, column: 33, scope: !91)
!94 = !DILocation(line: 102, column: 26, scope: !91)
!95 = !DILocalVariable(name: "environment", scope: !91, file: !1, line: 103, type: !13)
!96 = !DILocation(line: 103, column: 16, scope: !91)
!97 = !DILocation(line: 103, column: 30, scope: !91)
!98 = !DILocation(line: 105, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !91, file: !1, line: 105, column: 13)
!100 = !DILocation(line: 105, column: 25, scope: !99)
!101 = !DILocation(line: 105, column: 13, scope: !91)
!102 = !DILocation(line: 108, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 106, column: 9)
!104 = !DILocation(line: 108, column: 26, scope: !103)
!105 = !DILocation(line: 108, column: 25, scope: !103)
!106 = !DILocation(line: 108, column: 35, scope: !103)
!107 = !DILocation(line: 108, column: 52, scope: !103)
!108 = !DILocation(line: 108, column: 51, scope: !103)
!109 = !DILocation(line: 108, column: 59, scope: !103)
!110 = !DILocation(line: 108, column: 13, scope: !103)
!111 = !DILocation(line: 109, column: 9, scope: !103)
!112 = !DILocalVariable(name: "i", scope: !113, file: !1, line: 125, type: !50)
!113 = distinct !DILexicalBlock(scope: !83, file: !1, line: 124, column: 5)
!114 = !DILocation(line: 125, column: 13, scope: !113)
!115 = !DILocalVariable(name: "n", scope: !113, file: !1, line: 125, type: !50)
!116 = !DILocation(line: 125, column: 16, scope: !113)
!117 = !DILocalVariable(name: "intVariable", scope: !113, file: !1, line: 125, type: !50)
!118 = !DILocation(line: 125, column: 19, scope: !113)
!119 = !DILocation(line: 126, column: 20, scope: !120)
!120 = distinct !DILexicalBlock(scope: !113, file: !1, line: 126, column: 13)
!121 = !DILocation(line: 126, column: 13, scope: !120)
!122 = !DILocation(line: 126, column: 36, scope: !120)
!123 = !DILocation(line: 126, column: 13, scope: !113)
!124 = !DILocation(line: 129, column: 17, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 129, column: 17)
!126 = distinct !DILexicalBlock(scope: !120, file: !1, line: 127, column: 9)
!127 = !DILocation(line: 129, column: 19, scope: !125)
!128 = !DILocation(line: 129, column: 17, scope: !126)
!129 = !DILocation(line: 131, column: 29, scope: !130)
!130 = distinct !DILexicalBlock(scope: !125, file: !1, line: 130, column: 13)
!131 = !DILocation(line: 132, column: 24, scope: !132)
!132 = distinct !DILexicalBlock(scope: !130, file: !1, line: 132, column: 17)
!133 = !DILocation(line: 132, column: 22, scope: !132)
!134 = !DILocation(line: 132, column: 29, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !1, line: 132, column: 17)
!136 = !DILocation(line: 132, column: 33, scope: !135)
!137 = !DILocation(line: 132, column: 31, scope: !135)
!138 = !DILocation(line: 132, column: 17, scope: !132)
!139 = !DILocation(line: 135, column: 32, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !1, line: 133, column: 17)
!141 = !DILocation(line: 136, column: 17, scope: !140)
!142 = !DILocation(line: 132, column: 37, scope: !135)
!143 = !DILocation(line: 132, column: 17, scope: !135)
!144 = distinct !{!144, !138, !145, !78}
!145 = !DILocation(line: 136, column: 17, scope: !132)
!146 = !DILocation(line: 137, column: 30, scope: !130)
!147 = !DILocation(line: 137, column: 17, scope: !130)
!148 = !DILocation(line: 138, column: 13, scope: !130)
!149 = !DILocation(line: 139, column: 9, scope: !126)
!150 = !DILocation(line: 143, column: 1, scope: !83)
!151 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 146, type: !10, scopeLine: 147, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!152 = !DILocalVariable(name: "data", scope: !151, file: !1, line: 148, type: !13)
!153 = !DILocation(line: 148, column: 12, scope: !151)
!154 = !DILocalVariable(name: "dataBuffer", scope: !151, file: !1, line: 149, type: !17)
!155 = !DILocation(line: 149, column: 10, scope: !151)
!156 = !DILocation(line: 150, column: 12, scope: !151)
!157 = !DILocation(line: 150, column: 10, scope: !151)
!158 = !DILocalVariable(name: "dataLen", scope: !159, file: !1, line: 156, type: !25)
!159 = distinct !DILexicalBlock(scope: !151, file: !1, line: 154, column: 5)
!160 = !DILocation(line: 156, column: 16, scope: !159)
!161 = !DILocation(line: 156, column: 33, scope: !159)
!162 = !DILocation(line: 156, column: 26, scope: !159)
!163 = !DILocalVariable(name: "environment", scope: !159, file: !1, line: 157, type: !13)
!164 = !DILocation(line: 157, column: 16, scope: !159)
!165 = !DILocation(line: 157, column: 30, scope: !159)
!166 = !DILocation(line: 159, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !159, file: !1, line: 159, column: 13)
!168 = !DILocation(line: 159, column: 25, scope: !167)
!169 = !DILocation(line: 159, column: 13, scope: !159)
!170 = !DILocation(line: 162, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !1, line: 160, column: 9)
!172 = !DILocation(line: 162, column: 26, scope: !171)
!173 = !DILocation(line: 162, column: 25, scope: !171)
!174 = !DILocation(line: 162, column: 35, scope: !171)
!175 = !DILocation(line: 162, column: 52, scope: !171)
!176 = !DILocation(line: 162, column: 51, scope: !171)
!177 = !DILocation(line: 162, column: 59, scope: !171)
!178 = !DILocation(line: 162, column: 13, scope: !171)
!179 = !DILocation(line: 163, column: 9, scope: !171)
!180 = !DILocalVariable(name: "i", scope: !181, file: !1, line: 175, type: !50)
!181 = distinct !DILexicalBlock(scope: !151, file: !1, line: 174, column: 5)
!182 = !DILocation(line: 175, column: 13, scope: !181)
!183 = !DILocalVariable(name: "n", scope: !181, file: !1, line: 175, type: !50)
!184 = !DILocation(line: 175, column: 16, scope: !181)
!185 = !DILocalVariable(name: "intVariable", scope: !181, file: !1, line: 175, type: !50)
!186 = !DILocation(line: 175, column: 19, scope: !181)
!187 = !DILocation(line: 176, column: 20, scope: !188)
!188 = distinct !DILexicalBlock(scope: !181, file: !1, line: 176, column: 13)
!189 = !DILocation(line: 176, column: 13, scope: !188)
!190 = !DILocation(line: 176, column: 36, scope: !188)
!191 = !DILocation(line: 176, column: 13, scope: !181)
!192 = !DILocation(line: 179, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 179, column: 17)
!194 = distinct !DILexicalBlock(scope: !188, file: !1, line: 177, column: 9)
!195 = !DILocation(line: 179, column: 19, scope: !193)
!196 = !DILocation(line: 179, column: 17, scope: !194)
!197 = !DILocation(line: 181, column: 29, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !1, line: 180, column: 13)
!199 = !DILocation(line: 182, column: 24, scope: !200)
!200 = distinct !DILexicalBlock(scope: !198, file: !1, line: 182, column: 17)
!201 = !DILocation(line: 182, column: 22, scope: !200)
!202 = !DILocation(line: 182, column: 29, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !1, line: 182, column: 17)
!204 = !DILocation(line: 182, column: 33, scope: !203)
!205 = !DILocation(line: 182, column: 31, scope: !203)
!206 = !DILocation(line: 182, column: 17, scope: !200)
!207 = !DILocation(line: 185, column: 32, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !1, line: 183, column: 17)
!209 = !DILocation(line: 186, column: 17, scope: !208)
!210 = !DILocation(line: 182, column: 37, scope: !203)
!211 = !DILocation(line: 182, column: 17, scope: !203)
!212 = distinct !{!212, !206, !213, !78}
!213 = !DILocation(line: 186, column: 17, scope: !200)
!214 = !DILocation(line: 187, column: 30, scope: !198)
!215 = !DILocation(line: 187, column: 17, scope: !198)
!216 = !DILocation(line: 188, column: 13, scope: !198)
!217 = !DILocation(line: 189, column: 9, scope: !194)
!218 = !DILocation(line: 197, column: 1, scope: !151)
!219 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 200, type: !10, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!220 = !DILocalVariable(name: "data", scope: !219, file: !1, line: 202, type: !13)
!221 = !DILocation(line: 202, column: 12, scope: !219)
!222 = !DILocalVariable(name: "dataBuffer", scope: !219, file: !1, line: 203, type: !17)
!223 = !DILocation(line: 203, column: 10, scope: !219)
!224 = !DILocation(line: 204, column: 12, scope: !219)
!225 = !DILocation(line: 204, column: 10, scope: !219)
!226 = !DILocation(line: 213, column: 16, scope: !219)
!227 = !DILocation(line: 213, column: 9, scope: !219)
!228 = !DILocalVariable(name: "i", scope: !229, file: !1, line: 220, type: !50)
!229 = distinct !DILexicalBlock(scope: !219, file: !1, line: 219, column: 5)
!230 = !DILocation(line: 220, column: 13, scope: !229)
!231 = !DILocalVariable(name: "n", scope: !229, file: !1, line: 220, type: !50)
!232 = !DILocation(line: 220, column: 16, scope: !229)
!233 = !DILocalVariable(name: "intVariable", scope: !229, file: !1, line: 220, type: !50)
!234 = !DILocation(line: 220, column: 19, scope: !229)
!235 = !DILocation(line: 221, column: 20, scope: !236)
!236 = distinct !DILexicalBlock(scope: !229, file: !1, line: 221, column: 13)
!237 = !DILocation(line: 221, column: 13, scope: !236)
!238 = !DILocation(line: 221, column: 36, scope: !236)
!239 = !DILocation(line: 221, column: 13, scope: !229)
!240 = !DILocation(line: 224, column: 25, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !1, line: 222, column: 9)
!242 = !DILocation(line: 225, column: 20, scope: !243)
!243 = distinct !DILexicalBlock(scope: !241, file: !1, line: 225, column: 13)
!244 = !DILocation(line: 225, column: 18, scope: !243)
!245 = !DILocation(line: 225, column: 25, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !1, line: 225, column: 13)
!247 = !DILocation(line: 225, column: 29, scope: !246)
!248 = !DILocation(line: 225, column: 27, scope: !246)
!249 = !DILocation(line: 225, column: 13, scope: !243)
!250 = !DILocation(line: 228, column: 28, scope: !251)
!251 = distinct !DILexicalBlock(scope: !246, file: !1, line: 226, column: 13)
!252 = !DILocation(line: 229, column: 13, scope: !251)
!253 = !DILocation(line: 225, column: 33, scope: !246)
!254 = !DILocation(line: 225, column: 13, scope: !246)
!255 = distinct !{!255, !249, !256, !78}
!256 = !DILocation(line: 229, column: 13, scope: !243)
!257 = !DILocation(line: 230, column: 26, scope: !241)
!258 = !DILocation(line: 230, column: 13, scope: !241)
!259 = !DILocation(line: 231, column: 9, scope: !241)
!260 = !DILocation(line: 239, column: 1, scope: !219)
!261 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 242, type: !10, scopeLine: 243, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!262 = !DILocalVariable(name: "data", scope: !261, file: !1, line: 244, type: !13)
!263 = !DILocation(line: 244, column: 12, scope: !261)
!264 = !DILocalVariable(name: "dataBuffer", scope: !261, file: !1, line: 245, type: !17)
!265 = !DILocation(line: 245, column: 10, scope: !261)
!266 = !DILocation(line: 246, column: 12, scope: !261)
!267 = !DILocation(line: 246, column: 10, scope: !261)
!268 = !DILocation(line: 251, column: 16, scope: !261)
!269 = !DILocation(line: 251, column: 9, scope: !261)
!270 = !DILocalVariable(name: "i", scope: !271, file: !1, line: 262, type: !50)
!271 = distinct !DILexicalBlock(scope: !261, file: !1, line: 261, column: 5)
!272 = !DILocation(line: 262, column: 13, scope: !271)
!273 = !DILocalVariable(name: "n", scope: !271, file: !1, line: 262, type: !50)
!274 = !DILocation(line: 262, column: 16, scope: !271)
!275 = !DILocalVariable(name: "intVariable", scope: !271, file: !1, line: 262, type: !50)
!276 = !DILocation(line: 262, column: 19, scope: !271)
!277 = !DILocation(line: 263, column: 20, scope: !278)
!278 = distinct !DILexicalBlock(scope: !271, file: !1, line: 263, column: 13)
!279 = !DILocation(line: 263, column: 13, scope: !278)
!280 = !DILocation(line: 263, column: 36, scope: !278)
!281 = !DILocation(line: 263, column: 13, scope: !271)
!282 = !DILocation(line: 266, column: 25, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !1, line: 264, column: 9)
!284 = !DILocation(line: 267, column: 20, scope: !285)
!285 = distinct !DILexicalBlock(scope: !283, file: !1, line: 267, column: 13)
!286 = !DILocation(line: 267, column: 18, scope: !285)
!287 = !DILocation(line: 267, column: 25, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !1, line: 267, column: 13)
!289 = !DILocation(line: 267, column: 29, scope: !288)
!290 = !DILocation(line: 267, column: 27, scope: !288)
!291 = !DILocation(line: 267, column: 13, scope: !285)
!292 = !DILocation(line: 270, column: 28, scope: !293)
!293 = distinct !DILexicalBlock(scope: !288, file: !1, line: 268, column: 13)
!294 = !DILocation(line: 271, column: 13, scope: !293)
!295 = !DILocation(line: 267, column: 33, scope: !288)
!296 = !DILocation(line: 267, column: 13, scope: !288)
!297 = distinct !{!297, !291, !298, !78}
!298 = !DILocation(line: 271, column: 13, scope: !285)
!299 = !DILocation(line: 272, column: 26, scope: !283)
!300 = !DILocation(line: 272, column: 13, scope: !283)
!301 = !DILocation(line: 273, column: 9, scope: !283)
!302 = !DILocation(line: 281, column: 1, scope: !261)
!303 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_15_good", scope: !1, file: !1, line: 283, type: !10, scopeLine: 284, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!304 = !DILocation(line: 285, column: 5, scope: !303)
!305 = !DILocation(line: 286, column: 5, scope: !303)
!306 = !DILocation(line: 287, column: 5, scope: !303)
!307 = !DILocation(line: 288, column: 5, scope: !303)
!308 = !DILocation(line: 289, column: 1, scope: !303)
