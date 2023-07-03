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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_31_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %dataCopy = alloca i8*, align 8
  %data4 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !69
  %1 = load i8*, i8** %data, align 8, !dbg !70
  %call = call i64 @strlen(i8* %1) #7, !dbg !71
  store i64 %call, i64* %dataLen, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !72, metadata !DIExpression()), !dbg !73
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !74
  store i8* %call1, i8** %environment, align 8, !dbg !73
  %2 = load i8*, i8** %environment, align 8, !dbg !75
  %cmp = icmp ne i8* %2, null, !dbg !77
  br i1 %cmp, label %if.then, label %if.end, !dbg !78

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !79
  %4 = load i64, i64* %dataLen, align 8, !dbg !81
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !82
  %5 = load i8*, i8** %environment, align 8, !dbg !83
  %6 = load i64, i64* %dataLen, align 8, !dbg !84
  %sub = sub i64 100, %6, !dbg !85
  %sub2 = sub i64 %sub, 1, !dbg !86
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !87
  br label %if.end, !dbg !88

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !89, metadata !DIExpression()), !dbg !91
  %7 = load i8*, i8** %data, align 8, !dbg !92
  store i8* %7, i8** %dataCopy, align 8, !dbg !91
  call void @llvm.dbg.declare(metadata i8** %data4, metadata !93, metadata !DIExpression()), !dbg !94
  %8 = load i8*, i8** %dataCopy, align 8, !dbg !95
  store i8* %8, i8** %data4, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %i, metadata !96, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %n, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !101, metadata !DIExpression()), !dbg !102
  %9 = load i8*, i8** %data4, align 8, !dbg !103
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !105
  %cmp6 = icmp eq i32 %call5, 1, !dbg !106
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !107

if.then7:                                         ; preds = %if.end
  store i32 0, i32* %intVariable, align 4, !dbg !108
  store i32 0, i32* %i, align 4, !dbg !110
  br label %for.cond, !dbg !112

for.cond:                                         ; preds = %for.inc, %if.then7
  %10 = load i32, i32* %i, align 4, !dbg !113
  %11 = load i32, i32* %n, align 4, !dbg !115
  %cmp8 = icmp slt i32 %10, %11, !dbg !116
  br i1 %cmp8, label %for.body, label %for.end, !dbg !117

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !118
  %inc = add nsw i32 %12, 1, !dbg !118
  store i32 %inc, i32* %intVariable, align 4, !dbg !118
  br label %for.inc, !dbg !120

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !121
  %inc9 = add nsw i32 %13, 1, !dbg !121
  store i32 %inc9, i32* %i, align 4, !dbg !121
  br label %for.cond, !dbg !122, !llvm.loop !123

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !126
  call void @printIntLine(i32 %14), !dbg !127
  br label %if.end10, !dbg !128

if.end10:                                         ; preds = %for.end, %if.end
  ret void, !dbg !129
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
define dso_local void @goodG2B() #0 !dbg !130 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !134
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !134
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !135
  store i8* %arraydecay, i8** %data, align 8, !dbg !136
  %1 = load i8*, i8** %data, align 8, !dbg !137
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !138
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !139, metadata !DIExpression()), !dbg !141
  %2 = load i8*, i8** %data, align 8, !dbg !142
  store i8* %2, i8** %dataCopy, align 8, !dbg !141
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !143, metadata !DIExpression()), !dbg !144
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !145
  store i8* %3, i8** %data1, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %i, metadata !146, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata i32* %n, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !151, metadata !DIExpression()), !dbg !152
  %4 = load i8*, i8** %data1, align 8, !dbg !153
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !155
  %cmp = icmp eq i32 %call2, 1, !dbg !156
  br i1 %cmp, label %if.then, label %if.end, !dbg !157

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !158
  store i32 0, i32* %i, align 4, !dbg !160
  br label %for.cond, !dbg !162

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !163
  %6 = load i32, i32* %n, align 4, !dbg !165
  %cmp3 = icmp slt i32 %5, %6, !dbg !166
  br i1 %cmp3, label %for.body, label %for.end, !dbg !167

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !168
  %inc = add nsw i32 %7, 1, !dbg !168
  store i32 %inc, i32* %intVariable, align 4, !dbg !168
  br label %for.inc, !dbg !170

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !171
  %inc4 = add nsw i32 %8, 1, !dbg !171
  store i32 %inc4, i32* %i, align 4, !dbg !171
  br label %for.cond, !dbg !172, !llvm.loop !173

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !175
  call void @printIntLine(i32 %9), !dbg !176
  br label %if.end, !dbg !177

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !178
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !179 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %dataCopy = alloca i8*, align 8
  %data4 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !182, metadata !DIExpression()), !dbg !183
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !183
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !183
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !184
  store i8* %arraydecay, i8** %data, align 8, !dbg !185
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !186, metadata !DIExpression()), !dbg !188
  %1 = load i8*, i8** %data, align 8, !dbg !189
  %call = call i64 @strlen(i8* %1) #7, !dbg !190
  store i64 %call, i64* %dataLen, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !191, metadata !DIExpression()), !dbg !192
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !193
  store i8* %call1, i8** %environment, align 8, !dbg !192
  %2 = load i8*, i8** %environment, align 8, !dbg !194
  %cmp = icmp ne i8* %2, null, !dbg !196
  br i1 %cmp, label %if.then, label %if.end, !dbg !197

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !198
  %4 = load i64, i64* %dataLen, align 8, !dbg !200
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !201
  %5 = load i8*, i8** %environment, align 8, !dbg !202
  %6 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub = sub i64 100, %6, !dbg !204
  %sub2 = sub i64 %sub, 1, !dbg !205
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !206
  br label %if.end, !dbg !207

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !208, metadata !DIExpression()), !dbg !210
  %7 = load i8*, i8** %data, align 8, !dbg !211
  store i8* %7, i8** %dataCopy, align 8, !dbg !210
  call void @llvm.dbg.declare(metadata i8** %data4, metadata !212, metadata !DIExpression()), !dbg !213
  %8 = load i8*, i8** %dataCopy, align 8, !dbg !214
  store i8* %8, i8** %data4, align 8, !dbg !213
  call void @llvm.dbg.declare(metadata i32* %i, metadata !215, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %n, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !220, metadata !DIExpression()), !dbg !221
  %9 = load i8*, i8** %data4, align 8, !dbg !222
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !224
  %cmp6 = icmp eq i32 %call5, 1, !dbg !225
  br i1 %cmp6, label %if.then7, label %if.end13, !dbg !226

if.then7:                                         ; preds = %if.end
  %10 = load i32, i32* %n, align 4, !dbg !227
  %cmp8 = icmp slt i32 %10, 10000, !dbg !230
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !231

if.then9:                                         ; preds = %if.then7
  store i32 0, i32* %intVariable, align 4, !dbg !232
  store i32 0, i32* %i, align 4, !dbg !234
  br label %for.cond, !dbg !236

for.cond:                                         ; preds = %for.inc, %if.then9
  %11 = load i32, i32* %i, align 4, !dbg !237
  %12 = load i32, i32* %n, align 4, !dbg !239
  %cmp10 = icmp slt i32 %11, %12, !dbg !240
  br i1 %cmp10, label %for.body, label %for.end, !dbg !241

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !242
  %inc = add nsw i32 %13, 1, !dbg !242
  store i32 %inc, i32* %intVariable, align 4, !dbg !242
  br label %for.inc, !dbg !244

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !245
  %inc11 = add nsw i32 %14, 1, !dbg !245
  store i32 %inc11, i32* %i, align 4, !dbg !245
  br label %for.cond, !dbg !246, !llvm.loop !247

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !249
  call void @printIntLine(i32 %15), !dbg !250
  br label %if.end12, !dbg !251

if.end12:                                         ; preds = %for.end, %if.then7
  br label %if.end13, !dbg !252

if.end13:                                         ; preds = %if.end12, %if.end
  ret void, !dbg !253
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_31_good() #0 !dbg !254 {
entry:
  call void @goodG2B(), !dbg !255
  call void @goodB2G(), !dbg !256
  ret void, !dbg !257
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !258 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !261, metadata !DIExpression()), !dbg !262
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !263
  %0 = load i8*, i8** %line.addr, align 8, !dbg !264
  %cmp = icmp ne i8* %0, null, !dbg !266
  br i1 %cmp, label %if.then, label %if.end, !dbg !267

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !268
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !270
  br label %if.end, !dbg !271

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !272
  ret void, !dbg !273
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !274 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = load i8*, i8** %line.addr, align 8, !dbg !277
  %cmp = icmp ne i8* %0, null, !dbg !279
  br i1 %cmp, label %if.then, label %if.end, !dbg !280

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !281
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !283
  br label %if.end, !dbg !284

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !285
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !286 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load i32*, i32** %line.addr, align 8, !dbg !293
  %cmp = icmp ne i32* %0, null, !dbg !295
  br i1 %cmp, label %if.then, label %if.end, !dbg !296

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !297
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !299
  br label %if.end, !dbg !300

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !301
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !302 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !307
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !308
  ret void, !dbg !309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !310 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !316
  %conv = sext i16 %0 to i32, !dbg !316
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !317
  ret void, !dbg !318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !319 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !325
  %conv = fpext float %0 to double, !dbg !325
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !328 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !334
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !337 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !346
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !349 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !352, metadata !DIExpression()), !dbg !353
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !354
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !355
  ret void, !dbg !356
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !357 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !360, metadata !DIExpression()), !dbg !361
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !362
  %conv = sext i8 %0 to i32, !dbg !362
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !363
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !365 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !370, metadata !DIExpression()), !dbg !374
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !375
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !376
  store i32 %0, i32* %arrayidx, align 4, !dbg !377
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !378
  store i32 0, i32* %arrayidx1, align 4, !dbg !379
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !381
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !383 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !388
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !389
  ret void, !dbg !390
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !391 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !396
  %conv = zext i8 %0 to i32, !dbg !396
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !397
  ret void, !dbg !398
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !399 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !408 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !418, metadata !DIExpression()), !dbg !419
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !420
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !421
  %1 = load i32, i32* %intOne, align 4, !dbg !421
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !422
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !423
  %3 = load i32, i32* %intTwo, align 4, !dbg !423
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !424
  ret void, !dbg !425
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !426 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !430, metadata !DIExpression()), !dbg !431
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata i64* %i, metadata !434, metadata !DIExpression()), !dbg !435
  store i64 0, i64* %i, align 8, !dbg !436
  br label %for.cond, !dbg !438

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !439
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !441
  %cmp = icmp ult i64 %0, %1, !dbg !442
  br i1 %cmp, label %for.body, label %for.end, !dbg !443

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !444
  %3 = load i64, i64* %i, align 8, !dbg !446
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !444
  %4 = load i8, i8* %arrayidx, align 1, !dbg !444
  %conv = zext i8 %4 to i32, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !447
  br label %for.inc, !dbg !448

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !449
  %inc = add i64 %5, 1, !dbg !449
  store i64 %inc, i64* %i, align 8, !dbg !449
  br label %for.cond, !dbg !450, !llvm.loop !451

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !453
  ret void, !dbg !454
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !455 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !458, metadata !DIExpression()), !dbg !459
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !460, metadata !DIExpression()), !dbg !461
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !462, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !464, metadata !DIExpression()), !dbg !465
  store i64 0, i64* %numWritten, align 8, !dbg !465
  br label %while.cond, !dbg !466

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !467
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !468
  %cmp = icmp ult i64 %0, %1, !dbg !469
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !470

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !471
  %2 = load i16*, i16** %call, align 8, !dbg !471
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !471
  %4 = load i64, i64* %numWritten, align 8, !dbg !471
  %mul = mul i64 2, %4, !dbg !471
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !471
  %5 = load i8, i8* %arrayidx, align 1, !dbg !471
  %conv = sext i8 %5 to i32, !dbg !471
  %idxprom = sext i32 %conv to i64, !dbg !471
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !471
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !471
  %conv2 = zext i16 %6 to i32, !dbg !471
  %and = and i32 %conv2, 4096, !dbg !471
  %tobool = icmp ne i32 %and, 0, !dbg !471
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !472

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !473
  %7 = load i16*, i16** %call3, align 8, !dbg !473
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !473
  %9 = load i64, i64* %numWritten, align 8, !dbg !473
  %mul4 = mul i64 2, %9, !dbg !473
  %add = add i64 %mul4, 1, !dbg !473
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !473
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !473
  %conv6 = sext i8 %10 to i32, !dbg !473
  %idxprom7 = sext i32 %conv6 to i64, !dbg !473
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !473
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !473
  %conv9 = zext i16 %11 to i32, !dbg !473
  %and10 = and i32 %conv9, 4096, !dbg !473
  %tobool11 = icmp ne i32 %and10, 0, !dbg !472
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !474
  br i1 %12, label %while.body, label %while.end, !dbg !466

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !475, metadata !DIExpression()), !dbg !477
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !478
  %14 = load i64, i64* %numWritten, align 8, !dbg !479
  %mul12 = mul i64 2, %14, !dbg !480
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !478
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !481
  %15 = load i32, i32* %byte, align 4, !dbg !482
  %conv15 = trunc i32 %15 to i8, !dbg !483
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !484
  %17 = load i64, i64* %numWritten, align 8, !dbg !485
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !484
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !486
  %18 = load i64, i64* %numWritten, align 8, !dbg !487
  %inc = add i64 %18, 1, !dbg !487
  store i64 %inc, i64* %numWritten, align 8, !dbg !487
  br label %while.cond, !dbg !466, !llvm.loop !488

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !490
  ret i64 %19, !dbg !491
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !492 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !495, metadata !DIExpression()), !dbg !496
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !497, metadata !DIExpression()), !dbg !498
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !501, metadata !DIExpression()), !dbg !502
  store i64 0, i64* %numWritten, align 8, !dbg !502
  br label %while.cond, !dbg !503

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !504
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !505
  %cmp = icmp ult i64 %0, %1, !dbg !506
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !507

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !508
  %3 = load i64, i64* %numWritten, align 8, !dbg !509
  %mul = mul i64 2, %3, !dbg !510
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !508
  %4 = load i32, i32* %arrayidx, align 4, !dbg !508
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !511
  %tobool = icmp ne i32 %call, 0, !dbg !511
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !512

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !513
  %6 = load i64, i64* %numWritten, align 8, !dbg !514
  %mul1 = mul i64 2, %6, !dbg !515
  %add = add i64 %mul1, 1, !dbg !516
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !513
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !513
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !517
  %tobool4 = icmp ne i32 %call3, 0, !dbg !512
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !518
  br i1 %8, label %while.body, label %while.end, !dbg !503

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !519, metadata !DIExpression()), !dbg !521
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !522
  %10 = load i64, i64* %numWritten, align 8, !dbg !523
  %mul5 = mul i64 2, %10, !dbg !524
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !522
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !525
  %11 = load i32, i32* %byte, align 4, !dbg !526
  %conv = trunc i32 %11 to i8, !dbg !527
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !528
  %13 = load i64, i64* %numWritten, align 8, !dbg !529
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !528
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !530
  %14 = load i64, i64* %numWritten, align 8, !dbg !531
  %inc = add i64 %14, 1, !dbg !531
  store i64 %inc, i64* %numWritten, align 8, !dbg !531
  br label %while.cond, !dbg !503, !llvm.loop !532

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !534
  ret i64 %15, !dbg !535
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !536 {
entry:
  ret i32 1, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !540 {
entry:
  ret i32 0, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !542 {
entry:
  %call = call i32 @rand() #8, !dbg !543
  %rem = srem i32 %call, 2, !dbg !544
  ret i32 %rem, !dbg !545
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !548 {
entry:
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !580 {
entry:
  ret void, !dbg !581
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_046/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_046/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_31_bad", scope: !45, file: !45, line: 37, type: !53, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 44, type: !66)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 42, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 44, column: 16, scope: !65)
!70 = !DILocation(line: 44, column: 33, scope: !65)
!71 = !DILocation(line: 44, column: 26, scope: !65)
!72 = !DILocalVariable(name: "environment", scope: !65, file: !45, line: 45, type: !42)
!73 = !DILocation(line: 45, column: 16, scope: !65)
!74 = !DILocation(line: 45, column: 30, scope: !65)
!75 = !DILocation(line: 47, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !45, line: 47, column: 13)
!77 = !DILocation(line: 47, column: 25, scope: !76)
!78 = !DILocation(line: 47, column: 13, scope: !65)
!79 = !DILocation(line: 50, column: 21, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !45, line: 48, column: 9)
!81 = !DILocation(line: 50, column: 26, scope: !80)
!82 = !DILocation(line: 50, column: 25, scope: !80)
!83 = !DILocation(line: 50, column: 35, scope: !80)
!84 = !DILocation(line: 50, column: 52, scope: !80)
!85 = !DILocation(line: 50, column: 51, scope: !80)
!86 = !DILocation(line: 50, column: 59, scope: !80)
!87 = !DILocation(line: 50, column: 13, scope: !80)
!88 = !DILocation(line: 51, column: 9, scope: !80)
!89 = !DILocalVariable(name: "dataCopy", scope: !90, file: !45, line: 54, type: !42)
!90 = distinct !DILexicalBlock(scope: !52, file: !45, line: 53, column: 5)
!91 = !DILocation(line: 54, column: 16, scope: !90)
!92 = !DILocation(line: 54, column: 27, scope: !90)
!93 = !DILocalVariable(name: "data", scope: !90, file: !45, line: 55, type: !42)
!94 = !DILocation(line: 55, column: 16, scope: !90)
!95 = !DILocation(line: 55, column: 23, scope: !90)
!96 = !DILocalVariable(name: "i", scope: !97, file: !45, line: 57, type: !23)
!97 = distinct !DILexicalBlock(scope: !90, file: !45, line: 56, column: 9)
!98 = !DILocation(line: 57, column: 17, scope: !97)
!99 = !DILocalVariable(name: "n", scope: !97, file: !45, line: 57, type: !23)
!100 = !DILocation(line: 57, column: 20, scope: !97)
!101 = !DILocalVariable(name: "intVariable", scope: !97, file: !45, line: 57, type: !23)
!102 = !DILocation(line: 57, column: 23, scope: !97)
!103 = !DILocation(line: 58, column: 24, scope: !104)
!104 = distinct !DILexicalBlock(scope: !97, file: !45, line: 58, column: 17)
!105 = !DILocation(line: 58, column: 17, scope: !104)
!106 = !DILocation(line: 58, column: 40, scope: !104)
!107 = !DILocation(line: 58, column: 17, scope: !97)
!108 = !DILocation(line: 61, column: 29, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !45, line: 59, column: 13)
!110 = !DILocation(line: 62, column: 24, scope: !111)
!111 = distinct !DILexicalBlock(scope: !109, file: !45, line: 62, column: 17)
!112 = !DILocation(line: 62, column: 22, scope: !111)
!113 = !DILocation(line: 62, column: 29, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !45, line: 62, column: 17)
!115 = !DILocation(line: 62, column: 33, scope: !114)
!116 = !DILocation(line: 62, column: 31, scope: !114)
!117 = !DILocation(line: 62, column: 17, scope: !111)
!118 = !DILocation(line: 65, column: 32, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !45, line: 63, column: 17)
!120 = !DILocation(line: 66, column: 17, scope: !119)
!121 = !DILocation(line: 62, column: 37, scope: !114)
!122 = !DILocation(line: 62, column: 17, scope: !114)
!123 = distinct !{!123, !117, !124, !125}
!124 = !DILocation(line: 66, column: 17, scope: !111)
!125 = !{!"llvm.loop.mustprogress"}
!126 = !DILocation(line: 67, column: 30, scope: !109)
!127 = !DILocation(line: 67, column: 17, scope: !109)
!128 = !DILocation(line: 68, column: 13, scope: !109)
!129 = !DILocation(line: 71, column: 1, scope: !52)
!130 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 78, type: !53, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!131 = !DILocalVariable(name: "data", scope: !130, file: !45, line: 80, type: !42)
!132 = !DILocation(line: 80, column: 12, scope: !130)
!133 = !DILocalVariable(name: "dataBuffer", scope: !130, file: !45, line: 81, type: !58)
!134 = !DILocation(line: 81, column: 10, scope: !130)
!135 = !DILocation(line: 82, column: 12, scope: !130)
!136 = !DILocation(line: 82, column: 10, scope: !130)
!137 = !DILocation(line: 84, column: 12, scope: !130)
!138 = !DILocation(line: 84, column: 5, scope: !130)
!139 = !DILocalVariable(name: "dataCopy", scope: !140, file: !45, line: 86, type: !42)
!140 = distinct !DILexicalBlock(scope: !130, file: !45, line: 85, column: 5)
!141 = !DILocation(line: 86, column: 16, scope: !140)
!142 = !DILocation(line: 86, column: 27, scope: !140)
!143 = !DILocalVariable(name: "data", scope: !140, file: !45, line: 87, type: !42)
!144 = !DILocation(line: 87, column: 16, scope: !140)
!145 = !DILocation(line: 87, column: 23, scope: !140)
!146 = !DILocalVariable(name: "i", scope: !147, file: !45, line: 89, type: !23)
!147 = distinct !DILexicalBlock(scope: !140, file: !45, line: 88, column: 9)
!148 = !DILocation(line: 89, column: 17, scope: !147)
!149 = !DILocalVariable(name: "n", scope: !147, file: !45, line: 89, type: !23)
!150 = !DILocation(line: 89, column: 20, scope: !147)
!151 = !DILocalVariable(name: "intVariable", scope: !147, file: !45, line: 89, type: !23)
!152 = !DILocation(line: 89, column: 23, scope: !147)
!153 = !DILocation(line: 90, column: 24, scope: !154)
!154 = distinct !DILexicalBlock(scope: !147, file: !45, line: 90, column: 17)
!155 = !DILocation(line: 90, column: 17, scope: !154)
!156 = !DILocation(line: 90, column: 40, scope: !154)
!157 = !DILocation(line: 90, column: 17, scope: !147)
!158 = !DILocation(line: 93, column: 29, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !45, line: 91, column: 13)
!160 = !DILocation(line: 94, column: 24, scope: !161)
!161 = distinct !DILexicalBlock(scope: !159, file: !45, line: 94, column: 17)
!162 = !DILocation(line: 94, column: 22, scope: !161)
!163 = !DILocation(line: 94, column: 29, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !45, line: 94, column: 17)
!165 = !DILocation(line: 94, column: 33, scope: !164)
!166 = !DILocation(line: 94, column: 31, scope: !164)
!167 = !DILocation(line: 94, column: 17, scope: !161)
!168 = !DILocation(line: 97, column: 32, scope: !169)
!169 = distinct !DILexicalBlock(scope: !164, file: !45, line: 95, column: 17)
!170 = !DILocation(line: 98, column: 17, scope: !169)
!171 = !DILocation(line: 94, column: 37, scope: !164)
!172 = !DILocation(line: 94, column: 17, scope: !164)
!173 = distinct !{!173, !167, !174, !125}
!174 = !DILocation(line: 98, column: 17, scope: !161)
!175 = !DILocation(line: 99, column: 30, scope: !159)
!176 = !DILocation(line: 99, column: 17, scope: !159)
!177 = !DILocation(line: 100, column: 13, scope: !159)
!178 = !DILocation(line: 103, column: 1, scope: !130)
!179 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 106, type: !53, scopeLine: 107, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!180 = !DILocalVariable(name: "data", scope: !179, file: !45, line: 108, type: !42)
!181 = !DILocation(line: 108, column: 12, scope: !179)
!182 = !DILocalVariable(name: "dataBuffer", scope: !179, file: !45, line: 109, type: !58)
!183 = !DILocation(line: 109, column: 10, scope: !179)
!184 = !DILocation(line: 110, column: 12, scope: !179)
!185 = !DILocation(line: 110, column: 10, scope: !179)
!186 = !DILocalVariable(name: "dataLen", scope: !187, file: !45, line: 113, type: !66)
!187 = distinct !DILexicalBlock(scope: !179, file: !45, line: 111, column: 5)
!188 = !DILocation(line: 113, column: 16, scope: !187)
!189 = !DILocation(line: 113, column: 33, scope: !187)
!190 = !DILocation(line: 113, column: 26, scope: !187)
!191 = !DILocalVariable(name: "environment", scope: !187, file: !45, line: 114, type: !42)
!192 = !DILocation(line: 114, column: 16, scope: !187)
!193 = !DILocation(line: 114, column: 30, scope: !187)
!194 = !DILocation(line: 116, column: 13, scope: !195)
!195 = distinct !DILexicalBlock(scope: !187, file: !45, line: 116, column: 13)
!196 = !DILocation(line: 116, column: 25, scope: !195)
!197 = !DILocation(line: 116, column: 13, scope: !187)
!198 = !DILocation(line: 119, column: 21, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !45, line: 117, column: 9)
!200 = !DILocation(line: 119, column: 26, scope: !199)
!201 = !DILocation(line: 119, column: 25, scope: !199)
!202 = !DILocation(line: 119, column: 35, scope: !199)
!203 = !DILocation(line: 119, column: 52, scope: !199)
!204 = !DILocation(line: 119, column: 51, scope: !199)
!205 = !DILocation(line: 119, column: 59, scope: !199)
!206 = !DILocation(line: 119, column: 13, scope: !199)
!207 = !DILocation(line: 120, column: 9, scope: !199)
!208 = !DILocalVariable(name: "dataCopy", scope: !209, file: !45, line: 123, type: !42)
!209 = distinct !DILexicalBlock(scope: !179, file: !45, line: 122, column: 5)
!210 = !DILocation(line: 123, column: 16, scope: !209)
!211 = !DILocation(line: 123, column: 27, scope: !209)
!212 = !DILocalVariable(name: "data", scope: !209, file: !45, line: 124, type: !42)
!213 = !DILocation(line: 124, column: 16, scope: !209)
!214 = !DILocation(line: 124, column: 23, scope: !209)
!215 = !DILocalVariable(name: "i", scope: !216, file: !45, line: 126, type: !23)
!216 = distinct !DILexicalBlock(scope: !209, file: !45, line: 125, column: 9)
!217 = !DILocation(line: 126, column: 17, scope: !216)
!218 = !DILocalVariable(name: "n", scope: !216, file: !45, line: 126, type: !23)
!219 = !DILocation(line: 126, column: 20, scope: !216)
!220 = !DILocalVariable(name: "intVariable", scope: !216, file: !45, line: 126, type: !23)
!221 = !DILocation(line: 126, column: 23, scope: !216)
!222 = !DILocation(line: 127, column: 24, scope: !223)
!223 = distinct !DILexicalBlock(scope: !216, file: !45, line: 127, column: 17)
!224 = !DILocation(line: 127, column: 17, scope: !223)
!225 = !DILocation(line: 127, column: 40, scope: !223)
!226 = !DILocation(line: 127, column: 17, scope: !216)
!227 = !DILocation(line: 130, column: 21, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !45, line: 130, column: 21)
!229 = distinct !DILexicalBlock(scope: !223, file: !45, line: 128, column: 13)
!230 = !DILocation(line: 130, column: 23, scope: !228)
!231 = !DILocation(line: 130, column: 21, scope: !229)
!232 = !DILocation(line: 132, column: 33, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !45, line: 131, column: 17)
!234 = !DILocation(line: 133, column: 28, scope: !235)
!235 = distinct !DILexicalBlock(scope: !233, file: !45, line: 133, column: 21)
!236 = !DILocation(line: 133, column: 26, scope: !235)
!237 = !DILocation(line: 133, column: 33, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !45, line: 133, column: 21)
!239 = !DILocation(line: 133, column: 37, scope: !238)
!240 = !DILocation(line: 133, column: 35, scope: !238)
!241 = !DILocation(line: 133, column: 21, scope: !235)
!242 = !DILocation(line: 136, column: 36, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !45, line: 134, column: 21)
!244 = !DILocation(line: 137, column: 21, scope: !243)
!245 = !DILocation(line: 133, column: 41, scope: !238)
!246 = !DILocation(line: 133, column: 21, scope: !238)
!247 = distinct !{!247, !241, !248, !125}
!248 = !DILocation(line: 137, column: 21, scope: !235)
!249 = !DILocation(line: 138, column: 34, scope: !233)
!250 = !DILocation(line: 138, column: 21, scope: !233)
!251 = !DILocation(line: 139, column: 17, scope: !233)
!252 = !DILocation(line: 140, column: 13, scope: !229)
!253 = !DILocation(line: 143, column: 1, scope: !179)
!254 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_31_good", scope: !45, file: !45, line: 145, type: !53, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!255 = !DILocation(line: 147, column: 5, scope: !254)
!256 = !DILocation(line: 148, column: 5, scope: !254)
!257 = !DILocation(line: 149, column: 1, scope: !254)
!258 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !259, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !42}
!261 = !DILocalVariable(name: "line", arg: 1, scope: !258, file: !3, line: 11, type: !42)
!262 = !DILocation(line: 11, column: 25, scope: !258)
!263 = !DILocation(line: 13, column: 1, scope: !258)
!264 = !DILocation(line: 14, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !258, file: !3, line: 14, column: 8)
!266 = !DILocation(line: 14, column: 13, scope: !265)
!267 = !DILocation(line: 14, column: 8, scope: !258)
!268 = !DILocation(line: 16, column: 24, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !3, line: 15, column: 5)
!270 = !DILocation(line: 16, column: 9, scope: !269)
!271 = !DILocation(line: 17, column: 5, scope: !269)
!272 = !DILocation(line: 18, column: 5, scope: !258)
!273 = !DILocation(line: 19, column: 1, scope: !258)
!274 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !259, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!275 = !DILocalVariable(name: "line", arg: 1, scope: !274, file: !3, line: 20, type: !42)
!276 = !DILocation(line: 20, column: 29, scope: !274)
!277 = !DILocation(line: 22, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !3, line: 22, column: 8)
!279 = !DILocation(line: 22, column: 13, scope: !278)
!280 = !DILocation(line: 22, column: 8, scope: !274)
!281 = !DILocation(line: 24, column: 24, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !3, line: 23, column: 5)
!283 = !DILocation(line: 24, column: 9, scope: !282)
!284 = !DILocation(line: 25, column: 5, scope: !282)
!285 = !DILocation(line: 26, column: 1, scope: !274)
!286 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !287, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !67, line: 74, baseType: !23)
!291 = !DILocalVariable(name: "line", arg: 1, scope: !286, file: !3, line: 27, type: !289)
!292 = !DILocation(line: 27, column: 29, scope: !286)
!293 = !DILocation(line: 29, column: 8, scope: !294)
!294 = distinct !DILexicalBlock(scope: !286, file: !3, line: 29, column: 8)
!295 = !DILocation(line: 29, column: 13, scope: !294)
!296 = !DILocation(line: 29, column: 8, scope: !286)
!297 = !DILocation(line: 31, column: 27, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !3, line: 30, column: 5)
!299 = !DILocation(line: 31, column: 9, scope: !298)
!300 = !DILocation(line: 32, column: 5, scope: !298)
!301 = !DILocation(line: 33, column: 1, scope: !286)
!302 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !303, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !23}
!305 = !DILocalVariable(name: "intNumber", arg: 1, scope: !302, file: !3, line: 35, type: !23)
!306 = !DILocation(line: 35, column: 24, scope: !302)
!307 = !DILocation(line: 37, column: 20, scope: !302)
!308 = !DILocation(line: 37, column: 5, scope: !302)
!309 = !DILocation(line: 38, column: 1, scope: !302)
!310 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !311, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !313}
!313 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!314 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !310, file: !3, line: 40, type: !313)
!315 = !DILocation(line: 40, column: 28, scope: !310)
!316 = !DILocation(line: 42, column: 21, scope: !310)
!317 = !DILocation(line: 42, column: 5, scope: !310)
!318 = !DILocation(line: 43, column: 1, scope: !310)
!319 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !320, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !322}
!322 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!323 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !319, file: !3, line: 45, type: !322)
!324 = !DILocation(line: 45, column: 28, scope: !319)
!325 = !DILocation(line: 47, column: 20, scope: !319)
!326 = !DILocation(line: 47, column: 5, scope: !319)
!327 = !DILocation(line: 48, column: 1, scope: !319)
!328 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !329, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !331}
!331 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!332 = !DILocalVariable(name: "longNumber", arg: 1, scope: !328, file: !3, line: 50, type: !331)
!333 = !DILocation(line: 50, column: 26, scope: !328)
!334 = !DILocation(line: 52, column: 21, scope: !328)
!335 = !DILocation(line: 52, column: 5, scope: !328)
!336 = !DILocation(line: 53, column: 1, scope: !328)
!337 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !338, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !340}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !341, line: 27, baseType: !342)
!341 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !343, line: 44, baseType: !331)
!343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!344 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !337, file: !3, line: 55, type: !340)
!345 = !DILocation(line: 55, column: 33, scope: !337)
!346 = !DILocation(line: 57, column: 29, scope: !337)
!347 = !DILocation(line: 57, column: 5, scope: !337)
!348 = !DILocation(line: 58, column: 1, scope: !337)
!349 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !350, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !66}
!352 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !349, file: !3, line: 60, type: !66)
!353 = !DILocation(line: 60, column: 29, scope: !349)
!354 = !DILocation(line: 62, column: 21, scope: !349)
!355 = !DILocation(line: 62, column: 5, scope: !349)
!356 = !DILocation(line: 63, column: 1, scope: !349)
!357 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !358, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !43}
!360 = !DILocalVariable(name: "charHex", arg: 1, scope: !357, file: !3, line: 65, type: !43)
!361 = !DILocation(line: 65, column: 29, scope: !357)
!362 = !DILocation(line: 67, column: 22, scope: !357)
!363 = !DILocation(line: 67, column: 5, scope: !357)
!364 = !DILocation(line: 68, column: 1, scope: !357)
!365 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !366, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !290}
!368 = !DILocalVariable(name: "wideChar", arg: 1, scope: !365, file: !3, line: 70, type: !290)
!369 = !DILocation(line: 70, column: 29, scope: !365)
!370 = !DILocalVariable(name: "s", scope: !365, file: !3, line: 74, type: !371)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 64, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 2)
!374 = !DILocation(line: 74, column: 13, scope: !365)
!375 = !DILocation(line: 75, column: 16, scope: !365)
!376 = !DILocation(line: 75, column: 9, scope: !365)
!377 = !DILocation(line: 75, column: 14, scope: !365)
!378 = !DILocation(line: 76, column: 9, scope: !365)
!379 = !DILocation(line: 76, column: 14, scope: !365)
!380 = !DILocation(line: 77, column: 21, scope: !365)
!381 = !DILocation(line: 77, column: 5, scope: !365)
!382 = !DILocation(line: 78, column: 1, scope: !365)
!383 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !384, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !7}
!386 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !383, file: !3, line: 80, type: !7)
!387 = !DILocation(line: 80, column: 33, scope: !383)
!388 = !DILocation(line: 82, column: 20, scope: !383)
!389 = !DILocation(line: 82, column: 5, scope: !383)
!390 = !DILocation(line: 83, column: 1, scope: !383)
!391 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !392, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !25}
!394 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !391, file: !3, line: 85, type: !25)
!395 = !DILocation(line: 85, column: 45, scope: !391)
!396 = !DILocation(line: 87, column: 22, scope: !391)
!397 = !DILocation(line: 87, column: 5, scope: !391)
!398 = !DILocation(line: 88, column: 1, scope: !391)
!399 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !400, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402}
!402 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!403 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !399, file: !3, line: 90, type: !402)
!404 = !DILocation(line: 90, column: 29, scope: !399)
!405 = !DILocation(line: 92, column: 20, scope: !399)
!406 = !DILocation(line: 92, column: 5, scope: !399)
!407 = !DILocation(line: 93, column: 1, scope: !399)
!408 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !409, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !413, line: 100, baseType: !414)
!413 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_046/source_code")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !413, line: 96, size: 64, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !414, file: !413, line: 98, baseType: !23, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !414, file: !413, line: 99, baseType: !23, size: 32, offset: 32)
!418 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !408, file: !3, line: 95, type: !411)
!419 = !DILocation(line: 95, column: 40, scope: !408)
!420 = !DILocation(line: 97, column: 26, scope: !408)
!421 = !DILocation(line: 97, column: 47, scope: !408)
!422 = !DILocation(line: 97, column: 55, scope: !408)
!423 = !DILocation(line: 97, column: 76, scope: !408)
!424 = !DILocation(line: 97, column: 5, scope: !408)
!425 = !DILocation(line: 98, column: 1, scope: !408)
!426 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !427, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !429, !66}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!430 = !DILocalVariable(name: "bytes", arg: 1, scope: !426, file: !3, line: 100, type: !429)
!431 = !DILocation(line: 100, column: 38, scope: !426)
!432 = !DILocalVariable(name: "numBytes", arg: 2, scope: !426, file: !3, line: 100, type: !66)
!433 = !DILocation(line: 100, column: 52, scope: !426)
!434 = !DILocalVariable(name: "i", scope: !426, file: !3, line: 102, type: !66)
!435 = !DILocation(line: 102, column: 12, scope: !426)
!436 = !DILocation(line: 103, column: 12, scope: !437)
!437 = distinct !DILexicalBlock(scope: !426, file: !3, line: 103, column: 5)
!438 = !DILocation(line: 103, column: 10, scope: !437)
!439 = !DILocation(line: 103, column: 17, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !3, line: 103, column: 5)
!441 = !DILocation(line: 103, column: 21, scope: !440)
!442 = !DILocation(line: 103, column: 19, scope: !440)
!443 = !DILocation(line: 103, column: 5, scope: !437)
!444 = !DILocation(line: 105, column: 24, scope: !445)
!445 = distinct !DILexicalBlock(scope: !440, file: !3, line: 104, column: 5)
!446 = !DILocation(line: 105, column: 30, scope: !445)
!447 = !DILocation(line: 105, column: 9, scope: !445)
!448 = !DILocation(line: 106, column: 5, scope: !445)
!449 = !DILocation(line: 103, column: 31, scope: !440)
!450 = !DILocation(line: 103, column: 5, scope: !440)
!451 = distinct !{!451, !443, !452, !125}
!452 = !DILocation(line: 106, column: 5, scope: !437)
!453 = !DILocation(line: 107, column: 5, scope: !426)
!454 = !DILocation(line: 108, column: 1, scope: !426)
!455 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !456, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{!66, !429, !66, !42}
!458 = !DILocalVariable(name: "bytes", arg: 1, scope: !455, file: !3, line: 113, type: !429)
!459 = !DILocation(line: 113, column: 39, scope: !455)
!460 = !DILocalVariable(name: "numBytes", arg: 2, scope: !455, file: !3, line: 113, type: !66)
!461 = !DILocation(line: 113, column: 53, scope: !455)
!462 = !DILocalVariable(name: "hex", arg: 3, scope: !455, file: !3, line: 113, type: !42)
!463 = !DILocation(line: 113, column: 71, scope: !455)
!464 = !DILocalVariable(name: "numWritten", scope: !455, file: !3, line: 115, type: !66)
!465 = !DILocation(line: 115, column: 12, scope: !455)
!466 = !DILocation(line: 121, column: 5, scope: !455)
!467 = !DILocation(line: 121, column: 12, scope: !455)
!468 = !DILocation(line: 121, column: 25, scope: !455)
!469 = !DILocation(line: 121, column: 23, scope: !455)
!470 = !DILocation(line: 121, column: 34, scope: !455)
!471 = !DILocation(line: 121, column: 37, scope: !455)
!472 = !DILocation(line: 121, column: 67, scope: !455)
!473 = !DILocation(line: 121, column: 70, scope: !455)
!474 = !DILocation(line: 0, scope: !455)
!475 = !DILocalVariable(name: "byte", scope: !476, file: !3, line: 123, type: !23)
!476 = distinct !DILexicalBlock(scope: !455, file: !3, line: 122, column: 5)
!477 = !DILocation(line: 123, column: 13, scope: !476)
!478 = !DILocation(line: 124, column: 17, scope: !476)
!479 = !DILocation(line: 124, column: 25, scope: !476)
!480 = !DILocation(line: 124, column: 23, scope: !476)
!481 = !DILocation(line: 124, column: 9, scope: !476)
!482 = !DILocation(line: 125, column: 45, scope: !476)
!483 = !DILocation(line: 125, column: 29, scope: !476)
!484 = !DILocation(line: 125, column: 9, scope: !476)
!485 = !DILocation(line: 125, column: 15, scope: !476)
!486 = !DILocation(line: 125, column: 27, scope: !476)
!487 = !DILocation(line: 126, column: 9, scope: !476)
!488 = distinct !{!488, !466, !489, !125}
!489 = !DILocation(line: 127, column: 5, scope: !455)
!490 = !DILocation(line: 129, column: 12, scope: !455)
!491 = !DILocation(line: 129, column: 5, scope: !455)
!492 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !493, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!493 = !DISubroutineType(types: !494)
!494 = !{!66, !429, !66, !289}
!495 = !DILocalVariable(name: "bytes", arg: 1, scope: !492, file: !3, line: 135, type: !429)
!496 = !DILocation(line: 135, column: 41, scope: !492)
!497 = !DILocalVariable(name: "numBytes", arg: 2, scope: !492, file: !3, line: 135, type: !66)
!498 = !DILocation(line: 135, column: 55, scope: !492)
!499 = !DILocalVariable(name: "hex", arg: 3, scope: !492, file: !3, line: 135, type: !289)
!500 = !DILocation(line: 135, column: 76, scope: !492)
!501 = !DILocalVariable(name: "numWritten", scope: !492, file: !3, line: 137, type: !66)
!502 = !DILocation(line: 137, column: 12, scope: !492)
!503 = !DILocation(line: 143, column: 5, scope: !492)
!504 = !DILocation(line: 143, column: 12, scope: !492)
!505 = !DILocation(line: 143, column: 25, scope: !492)
!506 = !DILocation(line: 143, column: 23, scope: !492)
!507 = !DILocation(line: 143, column: 34, scope: !492)
!508 = !DILocation(line: 143, column: 47, scope: !492)
!509 = !DILocation(line: 143, column: 55, scope: !492)
!510 = !DILocation(line: 143, column: 53, scope: !492)
!511 = !DILocation(line: 143, column: 37, scope: !492)
!512 = !DILocation(line: 143, column: 68, scope: !492)
!513 = !DILocation(line: 143, column: 81, scope: !492)
!514 = !DILocation(line: 143, column: 89, scope: !492)
!515 = !DILocation(line: 143, column: 87, scope: !492)
!516 = !DILocation(line: 143, column: 100, scope: !492)
!517 = !DILocation(line: 143, column: 71, scope: !492)
!518 = !DILocation(line: 0, scope: !492)
!519 = !DILocalVariable(name: "byte", scope: !520, file: !3, line: 145, type: !23)
!520 = distinct !DILexicalBlock(scope: !492, file: !3, line: 144, column: 5)
!521 = !DILocation(line: 145, column: 13, scope: !520)
!522 = !DILocation(line: 146, column: 18, scope: !520)
!523 = !DILocation(line: 146, column: 26, scope: !520)
!524 = !DILocation(line: 146, column: 24, scope: !520)
!525 = !DILocation(line: 146, column: 9, scope: !520)
!526 = !DILocation(line: 147, column: 45, scope: !520)
!527 = !DILocation(line: 147, column: 29, scope: !520)
!528 = !DILocation(line: 147, column: 9, scope: !520)
!529 = !DILocation(line: 147, column: 15, scope: !520)
!530 = !DILocation(line: 147, column: 27, scope: !520)
!531 = !DILocation(line: 148, column: 9, scope: !520)
!532 = distinct !{!532, !503, !533, !125}
!533 = !DILocation(line: 149, column: 5, scope: !492)
!534 = !DILocation(line: 151, column: 12, scope: !492)
!535 = !DILocation(line: 151, column: 5, scope: !492)
!536 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !537, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DISubroutineType(types: !538)
!538 = !{!23}
!539 = !DILocation(line: 158, column: 5, scope: !536)
!540 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !537, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DILocation(line: 163, column: 5, scope: !540)
!542 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !537, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DILocation(line: 168, column: 13, scope: !542)
!544 = !DILocation(line: 168, column: 20, scope: !542)
!545 = !DILocation(line: 168, column: 5, scope: !542)
!546 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 187, column: 16, scope: !546)
!548 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DILocation(line: 188, column: 16, scope: !548)
!550 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 189, column: 16, scope: !550)
!552 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 190, column: 16, scope: !552)
!554 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 191, column: 16, scope: !554)
!556 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 192, column: 16, scope: !556)
!558 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 193, column: 16, scope: !558)
!560 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 194, column: 16, scope: !560)
!562 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DILocation(line: 195, column: 16, scope: !562)
!564 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 198, column: 15, scope: !564)
!566 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 199, column: 15, scope: !566)
!568 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 200, column: 15, scope: !568)
!570 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 201, column: 15, scope: !570)
!572 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 202, column: 15, scope: !572)
!574 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DILocation(line: 203, column: 15, scope: !574)
!576 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 204, column: 15, scope: !576)
!578 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 205, column: 15, scope: !578)
!580 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 206, column: 15, scope: !580)
