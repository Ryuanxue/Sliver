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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_32_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %data5 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !57, metadata !DIExpression()), !dbg !58
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !58
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !59, metadata !DIExpression()), !dbg !60
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !61, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !68, metadata !DIExpression()), !dbg !70
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !71
  %2 = load i8*, i8** %1, align 8, !dbg !72
  store i8* %2, i8** %data1, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !73, metadata !DIExpression()), !dbg !78
  %3 = load i8*, i8** %data1, align 8, !dbg !79
  %call = call i64 @strlen(i8* %3) #7, !dbg !80
  store i64 %call, i64* %dataLen, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !81, metadata !DIExpression()), !dbg !82
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !83
  store i8* %call2, i8** %environment, align 8, !dbg !82
  %4 = load i8*, i8** %environment, align 8, !dbg !84
  %cmp = icmp ne i8* %4, null, !dbg !86
  br i1 %cmp, label %if.then, label %if.end, !dbg !87

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !88
  %6 = load i64, i64* %dataLen, align 8, !dbg !90
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !91
  %7 = load i8*, i8** %environment, align 8, !dbg !92
  %8 = load i64, i64* %dataLen, align 8, !dbg !93
  %sub = sub i64 100, %8, !dbg !94
  %sub3 = sub i64 %sub, 1, !dbg !95
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %7, i64 %sub3) #8, !dbg !96
  br label %if.end, !dbg !97

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %data1, align 8, !dbg !98
  %10 = load i8**, i8*** %dataPtr1, align 8, !dbg !99
  store i8* %9, i8** %10, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata i8** %data5, metadata !101, metadata !DIExpression()), !dbg !103
  %11 = load i8**, i8*** %dataPtr2, align 8, !dbg !104
  %12 = load i8*, i8** %11, align 8, !dbg !105
  store i8* %12, i8** %data5, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i, metadata !106, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %n, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !111, metadata !DIExpression()), !dbg !112
  %13 = load i8*, i8** %data5, align 8, !dbg !113
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !115
  %cmp7 = icmp eq i32 %call6, 1, !dbg !116
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !117

if.then8:                                         ; preds = %if.end
  store i32 0, i32* %intVariable, align 4, !dbg !118
  store i32 0, i32* %i, align 4, !dbg !120
  br label %for.cond, !dbg !122

for.cond:                                         ; preds = %for.inc, %if.then8
  %14 = load i32, i32* %i, align 4, !dbg !123
  %15 = load i32, i32* %n, align 4, !dbg !125
  %cmp9 = icmp slt i32 %14, %15, !dbg !126
  br i1 %cmp9, label %for.body, label %for.end, !dbg !127

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !128
  %inc = add nsw i32 %16, 1, !dbg !128
  store i32 %inc, i32* %intVariable, align 4, !dbg !128
  br label %for.inc, !dbg !130

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !131
  %inc10 = add nsw i32 %17, 1, !dbg !131
  store i32 %inc10, i32* %i, align 4, !dbg !131
  br label %for.cond, !dbg !132, !llvm.loop !133

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !136
  call void @printIntLine(i32 %18), !dbg !137
  br label %if.end11, !dbg !138

if.end11:                                         ; preds = %for.end, %if.end
  ret void, !dbg !139
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
define dso_local void @goodG2B() #0 !dbg !140 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !143, metadata !DIExpression()), !dbg !144
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !145, metadata !DIExpression()), !dbg !146
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !146
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !147, metadata !DIExpression()), !dbg !148
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !148
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !148
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !149
  store i8* %arraydecay, i8** %data, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !151, metadata !DIExpression()), !dbg !153
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !154
  %2 = load i8*, i8** %1, align 8, !dbg !155
  store i8* %2, i8** %data1, align 8, !dbg !153
  %3 = load i8*, i8** %data1, align 8, !dbg !156
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !157
  %4 = load i8*, i8** %data1, align 8, !dbg !158
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !159
  store i8* %4, i8** %5, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !161, metadata !DIExpression()), !dbg !163
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !164
  %7 = load i8*, i8** %6, align 8, !dbg !165
  store i8* %7, i8** %data2, align 8, !dbg !163
  call void @llvm.dbg.declare(metadata i32* %i, metadata !166, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata i32* %n, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !171, metadata !DIExpression()), !dbg !172
  %8 = load i8*, i8** %data2, align 8, !dbg !173
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !175
  %cmp = icmp eq i32 %call3, 1, !dbg !176
  br i1 %cmp, label %if.then, label %if.end, !dbg !177

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !178
  store i32 0, i32* %i, align 4, !dbg !180
  br label %for.cond, !dbg !182

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !dbg !183
  %10 = load i32, i32* %n, align 4, !dbg !185
  %cmp4 = icmp slt i32 %9, %10, !dbg !186
  br i1 %cmp4, label %for.body, label %for.end, !dbg !187

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !188
  %inc = add nsw i32 %11, 1, !dbg !188
  store i32 %inc, i32* %intVariable, align 4, !dbg !188
  br label %for.inc, !dbg !190

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !191
  %inc5 = add nsw i32 %12, 1, !dbg !191
  store i32 %inc5, i32* %i, align 4, !dbg !191
  br label %for.cond, !dbg !192, !llvm.loop !193

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !195
  call void @printIntLine(i32 %13), !dbg !196
  br label %if.end, !dbg !197

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !198
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !199 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %data5 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !202, metadata !DIExpression()), !dbg !203
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !203
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !204, metadata !DIExpression()), !dbg !205
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !205
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !206, metadata !DIExpression()), !dbg !207
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !207
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !207
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !208
  store i8* %arraydecay, i8** %data, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !210, metadata !DIExpression()), !dbg !212
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !213
  %2 = load i8*, i8** %1, align 8, !dbg !214
  store i8* %2, i8** %data1, align 8, !dbg !212
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !215, metadata !DIExpression()), !dbg !217
  %3 = load i8*, i8** %data1, align 8, !dbg !218
  %call = call i64 @strlen(i8* %3) #7, !dbg !219
  store i64 %call, i64* %dataLen, align 8, !dbg !217
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !220, metadata !DIExpression()), !dbg !221
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !222
  store i8* %call2, i8** %environment, align 8, !dbg !221
  %4 = load i8*, i8** %environment, align 8, !dbg !223
  %cmp = icmp ne i8* %4, null, !dbg !225
  br i1 %cmp, label %if.then, label %if.end, !dbg !226

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !227
  %6 = load i64, i64* %dataLen, align 8, !dbg !229
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !230
  %7 = load i8*, i8** %environment, align 8, !dbg !231
  %8 = load i64, i64* %dataLen, align 8, !dbg !232
  %sub = sub i64 100, %8, !dbg !233
  %sub3 = sub i64 %sub, 1, !dbg !234
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %7, i64 %sub3) #8, !dbg !235
  br label %if.end, !dbg !236

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %data1, align 8, !dbg !237
  %10 = load i8**, i8*** %dataPtr1, align 8, !dbg !238
  store i8* %9, i8** %10, align 8, !dbg !239
  call void @llvm.dbg.declare(metadata i8** %data5, metadata !240, metadata !DIExpression()), !dbg !242
  %11 = load i8**, i8*** %dataPtr2, align 8, !dbg !243
  %12 = load i8*, i8** %11, align 8, !dbg !244
  store i8* %12, i8** %data5, align 8, !dbg !242
  call void @llvm.dbg.declare(metadata i32* %i, metadata !245, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata i32* %n, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !250, metadata !DIExpression()), !dbg !251
  %13 = load i8*, i8** %data5, align 8, !dbg !252
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !254
  %cmp7 = icmp eq i32 %call6, 1, !dbg !255
  br i1 %cmp7, label %if.then8, label %if.end14, !dbg !256

if.then8:                                         ; preds = %if.end
  %14 = load i32, i32* %n, align 4, !dbg !257
  %cmp9 = icmp slt i32 %14, 10000, !dbg !260
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !261

if.then10:                                        ; preds = %if.then8
  store i32 0, i32* %intVariable, align 4, !dbg !262
  store i32 0, i32* %i, align 4, !dbg !264
  br label %for.cond, !dbg !266

for.cond:                                         ; preds = %for.inc, %if.then10
  %15 = load i32, i32* %i, align 4, !dbg !267
  %16 = load i32, i32* %n, align 4, !dbg !269
  %cmp11 = icmp slt i32 %15, %16, !dbg !270
  br i1 %cmp11, label %for.body, label %for.end, !dbg !271

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !272
  %inc = add nsw i32 %17, 1, !dbg !272
  store i32 %inc, i32* %intVariable, align 4, !dbg !272
  br label %for.inc, !dbg !274

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !275
  %inc12 = add nsw i32 %18, 1, !dbg !275
  store i32 %inc12, i32* %i, align 4, !dbg !275
  br label %for.cond, !dbg !276, !llvm.loop !277

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !279
  call void @printIntLine(i32 %19), !dbg !280
  br label %if.end13, !dbg !281

if.end13:                                         ; preds = %for.end, %if.then8
  br label %if.end14, !dbg !282

if.end14:                                         ; preds = %if.end13, %if.end
  ret void, !dbg !283
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_32_good() #0 !dbg !284 {
entry:
  call void @goodG2B(), !dbg !285
  call void @goodB2G(), !dbg !286
  ret void, !dbg !287
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !288 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !293
  %0 = load i8*, i8** %line.addr, align 8, !dbg !294
  %cmp = icmp ne i8* %0, null, !dbg !296
  br i1 %cmp, label %if.then, label %if.end, !dbg !297

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !298
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !300
  br label %if.end, !dbg !301

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !302
  ret void, !dbg !303
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !304 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = load i8*, i8** %line.addr, align 8, !dbg !307
  %cmp = icmp ne i8* %0, null, !dbg !309
  br i1 %cmp, label %if.then, label %if.end, !dbg !310

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !311
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !313
  br label %if.end, !dbg !314

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !316 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load i32*, i32** %line.addr, align 8, !dbg !323
  %cmp = icmp ne i32* %0, null, !dbg !325
  br i1 %cmp, label %if.then, label %if.end, !dbg !326

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !327
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !329
  br label %if.end, !dbg !330

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !331
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !332 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !337
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !338
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !340 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !346
  %conv = sext i16 %0 to i32, !dbg !346
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !349 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !355
  %conv = fpext float %0 to double, !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !358 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !364
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !367 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !376
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !379 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !384
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !385
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !387 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !392
  %conv = sext i8 %0 to i32, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !393
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !395 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !400, metadata !DIExpression()), !dbg !404
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !405
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !406
  store i32 %0, i32* %arrayidx, align 4, !dbg !407
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !408
  store i32 0, i32* %arrayidx1, align 4, !dbg !409
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !413 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !421 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !426
  %conv = zext i8 %0 to i32, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !429 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !433, metadata !DIExpression()), !dbg !434
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !435
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !436
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !438 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !448, metadata !DIExpression()), !dbg !449
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !450
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !451
  %1 = load i32, i32* %intOne, align 4, !dbg !451
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !452
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !453
  %3 = load i32, i32* %intTwo, align 4, !dbg !453
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !454
  ret void, !dbg !455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !456 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !460, metadata !DIExpression()), !dbg !461
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !462, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.declare(metadata i64* %i, metadata !464, metadata !DIExpression()), !dbg !465
  store i64 0, i64* %i, align 8, !dbg !466
  br label %for.cond, !dbg !468

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !469
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !471
  %cmp = icmp ult i64 %0, %1, !dbg !472
  br i1 %cmp, label %for.body, label %for.end, !dbg !473

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !474
  %3 = load i64, i64* %i, align 8, !dbg !476
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !474
  %4 = load i8, i8* %arrayidx, align 1, !dbg !474
  %conv = zext i8 %4 to i32, !dbg !474
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !477
  br label %for.inc, !dbg !478

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !479
  %inc = add i64 %5, 1, !dbg !479
  store i64 %inc, i64* %i, align 8, !dbg !479
  br label %for.cond, !dbg !480, !llvm.loop !481

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !483
  ret void, !dbg !484
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !485 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !488, metadata !DIExpression()), !dbg !489
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !490, metadata !DIExpression()), !dbg !491
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !494, metadata !DIExpression()), !dbg !495
  store i64 0, i64* %numWritten, align 8, !dbg !495
  br label %while.cond, !dbg !496

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !497
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !498
  %cmp = icmp ult i64 %0, %1, !dbg !499
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !500

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !501
  %2 = load i16*, i16** %call, align 8, !dbg !501
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !501
  %4 = load i64, i64* %numWritten, align 8, !dbg !501
  %mul = mul i64 2, %4, !dbg !501
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !501
  %5 = load i8, i8* %arrayidx, align 1, !dbg !501
  %conv = sext i8 %5 to i32, !dbg !501
  %idxprom = sext i32 %conv to i64, !dbg !501
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !501
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !501
  %conv2 = zext i16 %6 to i32, !dbg !501
  %and = and i32 %conv2, 4096, !dbg !501
  %tobool = icmp ne i32 %and, 0, !dbg !501
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !502

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !503
  %7 = load i16*, i16** %call3, align 8, !dbg !503
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !503
  %9 = load i64, i64* %numWritten, align 8, !dbg !503
  %mul4 = mul i64 2, %9, !dbg !503
  %add = add i64 %mul4, 1, !dbg !503
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !503
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !503
  %conv6 = sext i8 %10 to i32, !dbg !503
  %idxprom7 = sext i32 %conv6 to i64, !dbg !503
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !503
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !503
  %conv9 = zext i16 %11 to i32, !dbg !503
  %and10 = and i32 %conv9, 4096, !dbg !503
  %tobool11 = icmp ne i32 %and10, 0, !dbg !502
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !504
  br i1 %12, label %while.body, label %while.end, !dbg !496

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !505, metadata !DIExpression()), !dbg !507
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !508
  %14 = load i64, i64* %numWritten, align 8, !dbg !509
  %mul12 = mul i64 2, %14, !dbg !510
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !508
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !511
  %15 = load i32, i32* %byte, align 4, !dbg !512
  %conv15 = trunc i32 %15 to i8, !dbg !513
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !514
  %17 = load i64, i64* %numWritten, align 8, !dbg !515
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !514
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !516
  %18 = load i64, i64* %numWritten, align 8, !dbg !517
  %inc = add i64 %18, 1, !dbg !517
  store i64 %inc, i64* %numWritten, align 8, !dbg !517
  br label %while.cond, !dbg !496, !llvm.loop !518

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !520
  ret i64 %19, !dbg !521
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !522 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !525, metadata !DIExpression()), !dbg !526
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !527, metadata !DIExpression()), !dbg !528
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !529, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !531, metadata !DIExpression()), !dbg !532
  store i64 0, i64* %numWritten, align 8, !dbg !532
  br label %while.cond, !dbg !533

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !534
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !535
  %cmp = icmp ult i64 %0, %1, !dbg !536
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !537

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !538
  %3 = load i64, i64* %numWritten, align 8, !dbg !539
  %mul = mul i64 2, %3, !dbg !540
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !538
  %4 = load i32, i32* %arrayidx, align 4, !dbg !538
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !541
  %tobool = icmp ne i32 %call, 0, !dbg !541
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !542

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !543
  %6 = load i64, i64* %numWritten, align 8, !dbg !544
  %mul1 = mul i64 2, %6, !dbg !545
  %add = add i64 %mul1, 1, !dbg !546
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !543
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !543
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !547
  %tobool4 = icmp ne i32 %call3, 0, !dbg !542
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !548
  br i1 %8, label %while.body, label %while.end, !dbg !533

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !549, metadata !DIExpression()), !dbg !551
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !552
  %10 = load i64, i64* %numWritten, align 8, !dbg !553
  %mul5 = mul i64 2, %10, !dbg !554
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !552
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !555
  %11 = load i32, i32* %byte, align 4, !dbg !556
  %conv = trunc i32 %11 to i8, !dbg !557
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !558
  %13 = load i64, i64* %numWritten, align 8, !dbg !559
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !558
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !560
  %14 = load i64, i64* %numWritten, align 8, !dbg !561
  %inc = add i64 %14, 1, !dbg !561
  store i64 %inc, i64* %numWritten, align 8, !dbg !561
  br label %while.cond, !dbg !533, !llvm.loop !562

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !564
  ret i64 %15, !dbg !565
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !566 {
entry:
  ret i32 1, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !570 {
entry:
  ret i32 0, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !572 {
entry:
  %call = call i32 @rand() #8, !dbg !573
  %rem = srem i32 %call, 2, !dbg !574
  ret i32 %rem, !dbg !575
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !588 {
entry:
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !590 {
entry:
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !592 {
entry:
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !594 {
entry:
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !596 {
entry:
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !598 {
entry:
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !600 {
entry:
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !602 {
entry:
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !604 {
entry:
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !606 {
entry:
  ret void, !dbg !607
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !608 {
entry:
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !610 {
entry:
  ret void, !dbg !611
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_047/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_047/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_32_bad", scope: !45, file: !45, line: 37, type: !53, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 39, type: !42)
!56 = !DILocation(line: 39, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataPtr1", scope: !52, file: !45, line: 40, type: !41)
!58 = !DILocation(line: 40, column: 13, scope: !52)
!59 = !DILocalVariable(name: "dataPtr2", scope: !52, file: !45, line: 41, type: !41)
!60 = !DILocation(line: 41, column: 13, scope: !52)
!61 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 42, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 42, column: 10, scope: !52)
!66 = !DILocation(line: 43, column: 12, scope: !52)
!67 = !DILocation(line: 43, column: 10, scope: !52)
!68 = !DILocalVariable(name: "data", scope: !69, file: !45, line: 45, type: !42)
!69 = distinct !DILexicalBlock(scope: !52, file: !45, line: 44, column: 5)
!70 = !DILocation(line: 45, column: 16, scope: !69)
!71 = !DILocation(line: 45, column: 24, scope: !69)
!72 = !DILocation(line: 45, column: 23, scope: !69)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 48, type: !75)
!74 = distinct !DILexicalBlock(scope: !69, file: !45, line: 46, column: 9)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 48, column: 20, scope: !74)
!79 = !DILocation(line: 48, column: 37, scope: !74)
!80 = !DILocation(line: 48, column: 30, scope: !74)
!81 = !DILocalVariable(name: "environment", scope: !74, file: !45, line: 49, type: !42)
!82 = !DILocation(line: 49, column: 20, scope: !74)
!83 = !DILocation(line: 49, column: 34, scope: !74)
!84 = !DILocation(line: 51, column: 17, scope: !85)
!85 = distinct !DILexicalBlock(scope: !74, file: !45, line: 51, column: 17)
!86 = !DILocation(line: 51, column: 29, scope: !85)
!87 = !DILocation(line: 51, column: 17, scope: !74)
!88 = !DILocation(line: 54, column: 25, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !45, line: 52, column: 13)
!90 = !DILocation(line: 54, column: 30, scope: !89)
!91 = !DILocation(line: 54, column: 29, scope: !89)
!92 = !DILocation(line: 54, column: 39, scope: !89)
!93 = !DILocation(line: 54, column: 56, scope: !89)
!94 = !DILocation(line: 54, column: 55, scope: !89)
!95 = !DILocation(line: 54, column: 63, scope: !89)
!96 = !DILocation(line: 54, column: 17, scope: !89)
!97 = !DILocation(line: 55, column: 13, scope: !89)
!98 = !DILocation(line: 57, column: 21, scope: !69)
!99 = !DILocation(line: 57, column: 10, scope: !69)
!100 = !DILocation(line: 57, column: 19, scope: !69)
!101 = !DILocalVariable(name: "data", scope: !102, file: !45, line: 60, type: !42)
!102 = distinct !DILexicalBlock(scope: !52, file: !45, line: 59, column: 5)
!103 = !DILocation(line: 60, column: 16, scope: !102)
!104 = !DILocation(line: 60, column: 24, scope: !102)
!105 = !DILocation(line: 60, column: 23, scope: !102)
!106 = !DILocalVariable(name: "i", scope: !107, file: !45, line: 62, type: !23)
!107 = distinct !DILexicalBlock(scope: !102, file: !45, line: 61, column: 9)
!108 = !DILocation(line: 62, column: 17, scope: !107)
!109 = !DILocalVariable(name: "n", scope: !107, file: !45, line: 62, type: !23)
!110 = !DILocation(line: 62, column: 20, scope: !107)
!111 = !DILocalVariable(name: "intVariable", scope: !107, file: !45, line: 62, type: !23)
!112 = !DILocation(line: 62, column: 23, scope: !107)
!113 = !DILocation(line: 63, column: 24, scope: !114)
!114 = distinct !DILexicalBlock(scope: !107, file: !45, line: 63, column: 17)
!115 = !DILocation(line: 63, column: 17, scope: !114)
!116 = !DILocation(line: 63, column: 40, scope: !114)
!117 = !DILocation(line: 63, column: 17, scope: !107)
!118 = !DILocation(line: 66, column: 29, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !45, line: 64, column: 13)
!120 = !DILocation(line: 67, column: 24, scope: !121)
!121 = distinct !DILexicalBlock(scope: !119, file: !45, line: 67, column: 17)
!122 = !DILocation(line: 67, column: 22, scope: !121)
!123 = !DILocation(line: 67, column: 29, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !45, line: 67, column: 17)
!125 = !DILocation(line: 67, column: 33, scope: !124)
!126 = !DILocation(line: 67, column: 31, scope: !124)
!127 = !DILocation(line: 67, column: 17, scope: !121)
!128 = !DILocation(line: 70, column: 32, scope: !129)
!129 = distinct !DILexicalBlock(scope: !124, file: !45, line: 68, column: 17)
!130 = !DILocation(line: 71, column: 17, scope: !129)
!131 = !DILocation(line: 67, column: 37, scope: !124)
!132 = !DILocation(line: 67, column: 17, scope: !124)
!133 = distinct !{!133, !127, !134, !135}
!134 = !DILocation(line: 71, column: 17, scope: !121)
!135 = !{!"llvm.loop.mustprogress"}
!136 = !DILocation(line: 72, column: 30, scope: !119)
!137 = !DILocation(line: 72, column: 17, scope: !119)
!138 = !DILocation(line: 73, column: 13, scope: !119)
!139 = !DILocation(line: 76, column: 1, scope: !52)
!140 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 83, type: !53, scopeLine: 84, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!141 = !DILocalVariable(name: "data", scope: !140, file: !45, line: 85, type: !42)
!142 = !DILocation(line: 85, column: 12, scope: !140)
!143 = !DILocalVariable(name: "dataPtr1", scope: !140, file: !45, line: 86, type: !41)
!144 = !DILocation(line: 86, column: 13, scope: !140)
!145 = !DILocalVariable(name: "dataPtr2", scope: !140, file: !45, line: 87, type: !41)
!146 = !DILocation(line: 87, column: 13, scope: !140)
!147 = !DILocalVariable(name: "dataBuffer", scope: !140, file: !45, line: 88, type: !62)
!148 = !DILocation(line: 88, column: 10, scope: !140)
!149 = !DILocation(line: 89, column: 12, scope: !140)
!150 = !DILocation(line: 89, column: 10, scope: !140)
!151 = !DILocalVariable(name: "data", scope: !152, file: !45, line: 91, type: !42)
!152 = distinct !DILexicalBlock(scope: !140, file: !45, line: 90, column: 5)
!153 = !DILocation(line: 91, column: 16, scope: !152)
!154 = !DILocation(line: 91, column: 24, scope: !152)
!155 = !DILocation(line: 91, column: 23, scope: !152)
!156 = !DILocation(line: 93, column: 16, scope: !152)
!157 = !DILocation(line: 93, column: 9, scope: !152)
!158 = !DILocation(line: 94, column: 21, scope: !152)
!159 = !DILocation(line: 94, column: 10, scope: !152)
!160 = !DILocation(line: 94, column: 19, scope: !152)
!161 = !DILocalVariable(name: "data", scope: !162, file: !45, line: 97, type: !42)
!162 = distinct !DILexicalBlock(scope: !140, file: !45, line: 96, column: 5)
!163 = !DILocation(line: 97, column: 16, scope: !162)
!164 = !DILocation(line: 97, column: 24, scope: !162)
!165 = !DILocation(line: 97, column: 23, scope: !162)
!166 = !DILocalVariable(name: "i", scope: !167, file: !45, line: 99, type: !23)
!167 = distinct !DILexicalBlock(scope: !162, file: !45, line: 98, column: 9)
!168 = !DILocation(line: 99, column: 17, scope: !167)
!169 = !DILocalVariable(name: "n", scope: !167, file: !45, line: 99, type: !23)
!170 = !DILocation(line: 99, column: 20, scope: !167)
!171 = !DILocalVariable(name: "intVariable", scope: !167, file: !45, line: 99, type: !23)
!172 = !DILocation(line: 99, column: 23, scope: !167)
!173 = !DILocation(line: 100, column: 24, scope: !174)
!174 = distinct !DILexicalBlock(scope: !167, file: !45, line: 100, column: 17)
!175 = !DILocation(line: 100, column: 17, scope: !174)
!176 = !DILocation(line: 100, column: 40, scope: !174)
!177 = !DILocation(line: 100, column: 17, scope: !167)
!178 = !DILocation(line: 103, column: 29, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !45, line: 101, column: 13)
!180 = !DILocation(line: 104, column: 24, scope: !181)
!181 = distinct !DILexicalBlock(scope: !179, file: !45, line: 104, column: 17)
!182 = !DILocation(line: 104, column: 22, scope: !181)
!183 = !DILocation(line: 104, column: 29, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !45, line: 104, column: 17)
!185 = !DILocation(line: 104, column: 33, scope: !184)
!186 = !DILocation(line: 104, column: 31, scope: !184)
!187 = !DILocation(line: 104, column: 17, scope: !181)
!188 = !DILocation(line: 107, column: 32, scope: !189)
!189 = distinct !DILexicalBlock(scope: !184, file: !45, line: 105, column: 17)
!190 = !DILocation(line: 108, column: 17, scope: !189)
!191 = !DILocation(line: 104, column: 37, scope: !184)
!192 = !DILocation(line: 104, column: 17, scope: !184)
!193 = distinct !{!193, !187, !194, !135}
!194 = !DILocation(line: 108, column: 17, scope: !181)
!195 = !DILocation(line: 109, column: 30, scope: !179)
!196 = !DILocation(line: 109, column: 17, scope: !179)
!197 = !DILocation(line: 110, column: 13, scope: !179)
!198 = !DILocation(line: 113, column: 1, scope: !140)
!199 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 116, type: !53, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!200 = !DILocalVariable(name: "data", scope: !199, file: !45, line: 118, type: !42)
!201 = !DILocation(line: 118, column: 12, scope: !199)
!202 = !DILocalVariable(name: "dataPtr1", scope: !199, file: !45, line: 119, type: !41)
!203 = !DILocation(line: 119, column: 13, scope: !199)
!204 = !DILocalVariable(name: "dataPtr2", scope: !199, file: !45, line: 120, type: !41)
!205 = !DILocation(line: 120, column: 13, scope: !199)
!206 = !DILocalVariable(name: "dataBuffer", scope: !199, file: !45, line: 121, type: !62)
!207 = !DILocation(line: 121, column: 10, scope: !199)
!208 = !DILocation(line: 122, column: 12, scope: !199)
!209 = !DILocation(line: 122, column: 10, scope: !199)
!210 = !DILocalVariable(name: "data", scope: !211, file: !45, line: 124, type: !42)
!211 = distinct !DILexicalBlock(scope: !199, file: !45, line: 123, column: 5)
!212 = !DILocation(line: 124, column: 16, scope: !211)
!213 = !DILocation(line: 124, column: 24, scope: !211)
!214 = !DILocation(line: 124, column: 23, scope: !211)
!215 = !DILocalVariable(name: "dataLen", scope: !216, file: !45, line: 127, type: !75)
!216 = distinct !DILexicalBlock(scope: !211, file: !45, line: 125, column: 9)
!217 = !DILocation(line: 127, column: 20, scope: !216)
!218 = !DILocation(line: 127, column: 37, scope: !216)
!219 = !DILocation(line: 127, column: 30, scope: !216)
!220 = !DILocalVariable(name: "environment", scope: !216, file: !45, line: 128, type: !42)
!221 = !DILocation(line: 128, column: 20, scope: !216)
!222 = !DILocation(line: 128, column: 34, scope: !216)
!223 = !DILocation(line: 130, column: 17, scope: !224)
!224 = distinct !DILexicalBlock(scope: !216, file: !45, line: 130, column: 17)
!225 = !DILocation(line: 130, column: 29, scope: !224)
!226 = !DILocation(line: 130, column: 17, scope: !216)
!227 = !DILocation(line: 133, column: 25, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !45, line: 131, column: 13)
!229 = !DILocation(line: 133, column: 30, scope: !228)
!230 = !DILocation(line: 133, column: 29, scope: !228)
!231 = !DILocation(line: 133, column: 39, scope: !228)
!232 = !DILocation(line: 133, column: 56, scope: !228)
!233 = !DILocation(line: 133, column: 55, scope: !228)
!234 = !DILocation(line: 133, column: 63, scope: !228)
!235 = !DILocation(line: 133, column: 17, scope: !228)
!236 = !DILocation(line: 134, column: 13, scope: !228)
!237 = !DILocation(line: 136, column: 21, scope: !211)
!238 = !DILocation(line: 136, column: 10, scope: !211)
!239 = !DILocation(line: 136, column: 19, scope: !211)
!240 = !DILocalVariable(name: "data", scope: !241, file: !45, line: 139, type: !42)
!241 = distinct !DILexicalBlock(scope: !199, file: !45, line: 138, column: 5)
!242 = !DILocation(line: 139, column: 16, scope: !241)
!243 = !DILocation(line: 139, column: 24, scope: !241)
!244 = !DILocation(line: 139, column: 23, scope: !241)
!245 = !DILocalVariable(name: "i", scope: !246, file: !45, line: 141, type: !23)
!246 = distinct !DILexicalBlock(scope: !241, file: !45, line: 140, column: 9)
!247 = !DILocation(line: 141, column: 17, scope: !246)
!248 = !DILocalVariable(name: "n", scope: !246, file: !45, line: 141, type: !23)
!249 = !DILocation(line: 141, column: 20, scope: !246)
!250 = !DILocalVariable(name: "intVariable", scope: !246, file: !45, line: 141, type: !23)
!251 = !DILocation(line: 141, column: 23, scope: !246)
!252 = !DILocation(line: 142, column: 24, scope: !253)
!253 = distinct !DILexicalBlock(scope: !246, file: !45, line: 142, column: 17)
!254 = !DILocation(line: 142, column: 17, scope: !253)
!255 = !DILocation(line: 142, column: 40, scope: !253)
!256 = !DILocation(line: 142, column: 17, scope: !246)
!257 = !DILocation(line: 145, column: 21, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !45, line: 145, column: 21)
!259 = distinct !DILexicalBlock(scope: !253, file: !45, line: 143, column: 13)
!260 = !DILocation(line: 145, column: 23, scope: !258)
!261 = !DILocation(line: 145, column: 21, scope: !259)
!262 = !DILocation(line: 147, column: 33, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !45, line: 146, column: 17)
!264 = !DILocation(line: 148, column: 28, scope: !265)
!265 = distinct !DILexicalBlock(scope: !263, file: !45, line: 148, column: 21)
!266 = !DILocation(line: 148, column: 26, scope: !265)
!267 = !DILocation(line: 148, column: 33, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !45, line: 148, column: 21)
!269 = !DILocation(line: 148, column: 37, scope: !268)
!270 = !DILocation(line: 148, column: 35, scope: !268)
!271 = !DILocation(line: 148, column: 21, scope: !265)
!272 = !DILocation(line: 151, column: 36, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !45, line: 149, column: 21)
!274 = !DILocation(line: 152, column: 21, scope: !273)
!275 = !DILocation(line: 148, column: 41, scope: !268)
!276 = !DILocation(line: 148, column: 21, scope: !268)
!277 = distinct !{!277, !271, !278, !135}
!278 = !DILocation(line: 152, column: 21, scope: !265)
!279 = !DILocation(line: 153, column: 34, scope: !263)
!280 = !DILocation(line: 153, column: 21, scope: !263)
!281 = !DILocation(line: 154, column: 17, scope: !263)
!282 = !DILocation(line: 155, column: 13, scope: !259)
!283 = !DILocation(line: 158, column: 1, scope: !199)
!284 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_32_good", scope: !45, file: !45, line: 160, type: !53, scopeLine: 161, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!285 = !DILocation(line: 162, column: 5, scope: !284)
!286 = !DILocation(line: 163, column: 5, scope: !284)
!287 = !DILocation(line: 164, column: 1, scope: !284)
!288 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !289, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !42}
!291 = !DILocalVariable(name: "line", arg: 1, scope: !288, file: !3, line: 11, type: !42)
!292 = !DILocation(line: 11, column: 25, scope: !288)
!293 = !DILocation(line: 13, column: 1, scope: !288)
!294 = !DILocation(line: 14, column: 8, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !3, line: 14, column: 8)
!296 = !DILocation(line: 14, column: 13, scope: !295)
!297 = !DILocation(line: 14, column: 8, scope: !288)
!298 = !DILocation(line: 16, column: 24, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !3, line: 15, column: 5)
!300 = !DILocation(line: 16, column: 9, scope: !299)
!301 = !DILocation(line: 17, column: 5, scope: !299)
!302 = !DILocation(line: 18, column: 5, scope: !288)
!303 = !DILocation(line: 19, column: 1, scope: !288)
!304 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !289, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!305 = !DILocalVariable(name: "line", arg: 1, scope: !304, file: !3, line: 20, type: !42)
!306 = !DILocation(line: 20, column: 29, scope: !304)
!307 = !DILocation(line: 22, column: 8, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !3, line: 22, column: 8)
!309 = !DILocation(line: 22, column: 13, scope: !308)
!310 = !DILocation(line: 22, column: 8, scope: !304)
!311 = !DILocation(line: 24, column: 24, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !3, line: 23, column: 5)
!313 = !DILocation(line: 24, column: 9, scope: !312)
!314 = !DILocation(line: 25, column: 5, scope: !312)
!315 = !DILocation(line: 26, column: 1, scope: !304)
!316 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !317, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !23)
!321 = !DILocalVariable(name: "line", arg: 1, scope: !316, file: !3, line: 27, type: !319)
!322 = !DILocation(line: 27, column: 29, scope: !316)
!323 = !DILocation(line: 29, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !316, file: !3, line: 29, column: 8)
!325 = !DILocation(line: 29, column: 13, scope: !324)
!326 = !DILocation(line: 29, column: 8, scope: !316)
!327 = !DILocation(line: 31, column: 27, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !3, line: 30, column: 5)
!329 = !DILocation(line: 31, column: 9, scope: !328)
!330 = !DILocation(line: 32, column: 5, scope: !328)
!331 = !DILocation(line: 33, column: 1, scope: !316)
!332 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !333, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !23}
!335 = !DILocalVariable(name: "intNumber", arg: 1, scope: !332, file: !3, line: 35, type: !23)
!336 = !DILocation(line: 35, column: 24, scope: !332)
!337 = !DILocation(line: 37, column: 20, scope: !332)
!338 = !DILocation(line: 37, column: 5, scope: !332)
!339 = !DILocation(line: 38, column: 1, scope: !332)
!340 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !341, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !343}
!343 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!344 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !340, file: !3, line: 40, type: !343)
!345 = !DILocation(line: 40, column: 28, scope: !340)
!346 = !DILocation(line: 42, column: 21, scope: !340)
!347 = !DILocation(line: 42, column: 5, scope: !340)
!348 = !DILocation(line: 43, column: 1, scope: !340)
!349 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !350, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !352}
!352 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!353 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !349, file: !3, line: 45, type: !352)
!354 = !DILocation(line: 45, column: 28, scope: !349)
!355 = !DILocation(line: 47, column: 20, scope: !349)
!356 = !DILocation(line: 47, column: 5, scope: !349)
!357 = !DILocation(line: 48, column: 1, scope: !349)
!358 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !359, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!362 = !DILocalVariable(name: "longNumber", arg: 1, scope: !358, file: !3, line: 50, type: !361)
!363 = !DILocation(line: 50, column: 26, scope: !358)
!364 = !DILocation(line: 52, column: 21, scope: !358)
!365 = !DILocation(line: 52, column: 5, scope: !358)
!366 = !DILocation(line: 53, column: 1, scope: !358)
!367 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !368, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !370}
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !371, line: 27, baseType: !372)
!371 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !373, line: 44, baseType: !361)
!373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!374 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !367, file: !3, line: 55, type: !370)
!375 = !DILocation(line: 55, column: 33, scope: !367)
!376 = !DILocation(line: 57, column: 29, scope: !367)
!377 = !DILocation(line: 57, column: 5, scope: !367)
!378 = !DILocation(line: 58, column: 1, scope: !367)
!379 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !380, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !75}
!382 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !379, file: !3, line: 60, type: !75)
!383 = !DILocation(line: 60, column: 29, scope: !379)
!384 = !DILocation(line: 62, column: 21, scope: !379)
!385 = !DILocation(line: 62, column: 5, scope: !379)
!386 = !DILocation(line: 63, column: 1, scope: !379)
!387 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !388, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !43}
!390 = !DILocalVariable(name: "charHex", arg: 1, scope: !387, file: !3, line: 65, type: !43)
!391 = !DILocation(line: 65, column: 29, scope: !387)
!392 = !DILocation(line: 67, column: 22, scope: !387)
!393 = !DILocation(line: 67, column: 5, scope: !387)
!394 = !DILocation(line: 68, column: 1, scope: !387)
!395 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !396, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !320}
!398 = !DILocalVariable(name: "wideChar", arg: 1, scope: !395, file: !3, line: 70, type: !320)
!399 = !DILocation(line: 70, column: 29, scope: !395)
!400 = !DILocalVariable(name: "s", scope: !395, file: !3, line: 74, type: !401)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 64, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 2)
!404 = !DILocation(line: 74, column: 13, scope: !395)
!405 = !DILocation(line: 75, column: 16, scope: !395)
!406 = !DILocation(line: 75, column: 9, scope: !395)
!407 = !DILocation(line: 75, column: 14, scope: !395)
!408 = !DILocation(line: 76, column: 9, scope: !395)
!409 = !DILocation(line: 76, column: 14, scope: !395)
!410 = !DILocation(line: 77, column: 21, scope: !395)
!411 = !DILocation(line: 77, column: 5, scope: !395)
!412 = !DILocation(line: 78, column: 1, scope: !395)
!413 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !414, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !7}
!416 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !413, file: !3, line: 80, type: !7)
!417 = !DILocation(line: 80, column: 33, scope: !413)
!418 = !DILocation(line: 82, column: 20, scope: !413)
!419 = !DILocation(line: 82, column: 5, scope: !413)
!420 = !DILocation(line: 83, column: 1, scope: !413)
!421 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !422, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !25}
!424 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !421, file: !3, line: 85, type: !25)
!425 = !DILocation(line: 85, column: 45, scope: !421)
!426 = !DILocation(line: 87, column: 22, scope: !421)
!427 = !DILocation(line: 87, column: 5, scope: !421)
!428 = !DILocation(line: 88, column: 1, scope: !421)
!429 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !430, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !432}
!432 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!433 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !429, file: !3, line: 90, type: !432)
!434 = !DILocation(line: 90, column: 29, scope: !429)
!435 = !DILocation(line: 92, column: 20, scope: !429)
!436 = !DILocation(line: 92, column: 5, scope: !429)
!437 = !DILocation(line: 93, column: 1, scope: !429)
!438 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !439, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !443, line: 100, baseType: !444)
!443 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_047/source_code")
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !443, line: 96, size: 64, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !444, file: !443, line: 98, baseType: !23, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !444, file: !443, line: 99, baseType: !23, size: 32, offset: 32)
!448 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !438, file: !3, line: 95, type: !441)
!449 = !DILocation(line: 95, column: 40, scope: !438)
!450 = !DILocation(line: 97, column: 26, scope: !438)
!451 = !DILocation(line: 97, column: 47, scope: !438)
!452 = !DILocation(line: 97, column: 55, scope: !438)
!453 = !DILocation(line: 97, column: 76, scope: !438)
!454 = !DILocation(line: 97, column: 5, scope: !438)
!455 = !DILocation(line: 98, column: 1, scope: !438)
!456 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !457, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !459, !75}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!460 = !DILocalVariable(name: "bytes", arg: 1, scope: !456, file: !3, line: 100, type: !459)
!461 = !DILocation(line: 100, column: 38, scope: !456)
!462 = !DILocalVariable(name: "numBytes", arg: 2, scope: !456, file: !3, line: 100, type: !75)
!463 = !DILocation(line: 100, column: 52, scope: !456)
!464 = !DILocalVariable(name: "i", scope: !456, file: !3, line: 102, type: !75)
!465 = !DILocation(line: 102, column: 12, scope: !456)
!466 = !DILocation(line: 103, column: 12, scope: !467)
!467 = distinct !DILexicalBlock(scope: !456, file: !3, line: 103, column: 5)
!468 = !DILocation(line: 103, column: 10, scope: !467)
!469 = !DILocation(line: 103, column: 17, scope: !470)
!470 = distinct !DILexicalBlock(scope: !467, file: !3, line: 103, column: 5)
!471 = !DILocation(line: 103, column: 21, scope: !470)
!472 = !DILocation(line: 103, column: 19, scope: !470)
!473 = !DILocation(line: 103, column: 5, scope: !467)
!474 = !DILocation(line: 105, column: 24, scope: !475)
!475 = distinct !DILexicalBlock(scope: !470, file: !3, line: 104, column: 5)
!476 = !DILocation(line: 105, column: 30, scope: !475)
!477 = !DILocation(line: 105, column: 9, scope: !475)
!478 = !DILocation(line: 106, column: 5, scope: !475)
!479 = !DILocation(line: 103, column: 31, scope: !470)
!480 = !DILocation(line: 103, column: 5, scope: !470)
!481 = distinct !{!481, !473, !482, !135}
!482 = !DILocation(line: 106, column: 5, scope: !467)
!483 = !DILocation(line: 107, column: 5, scope: !456)
!484 = !DILocation(line: 108, column: 1, scope: !456)
!485 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !486, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!486 = !DISubroutineType(types: !487)
!487 = !{!75, !459, !75, !42}
!488 = !DILocalVariable(name: "bytes", arg: 1, scope: !485, file: !3, line: 113, type: !459)
!489 = !DILocation(line: 113, column: 39, scope: !485)
!490 = !DILocalVariable(name: "numBytes", arg: 2, scope: !485, file: !3, line: 113, type: !75)
!491 = !DILocation(line: 113, column: 53, scope: !485)
!492 = !DILocalVariable(name: "hex", arg: 3, scope: !485, file: !3, line: 113, type: !42)
!493 = !DILocation(line: 113, column: 71, scope: !485)
!494 = !DILocalVariable(name: "numWritten", scope: !485, file: !3, line: 115, type: !75)
!495 = !DILocation(line: 115, column: 12, scope: !485)
!496 = !DILocation(line: 121, column: 5, scope: !485)
!497 = !DILocation(line: 121, column: 12, scope: !485)
!498 = !DILocation(line: 121, column: 25, scope: !485)
!499 = !DILocation(line: 121, column: 23, scope: !485)
!500 = !DILocation(line: 121, column: 34, scope: !485)
!501 = !DILocation(line: 121, column: 37, scope: !485)
!502 = !DILocation(line: 121, column: 67, scope: !485)
!503 = !DILocation(line: 121, column: 70, scope: !485)
!504 = !DILocation(line: 0, scope: !485)
!505 = !DILocalVariable(name: "byte", scope: !506, file: !3, line: 123, type: !23)
!506 = distinct !DILexicalBlock(scope: !485, file: !3, line: 122, column: 5)
!507 = !DILocation(line: 123, column: 13, scope: !506)
!508 = !DILocation(line: 124, column: 17, scope: !506)
!509 = !DILocation(line: 124, column: 25, scope: !506)
!510 = !DILocation(line: 124, column: 23, scope: !506)
!511 = !DILocation(line: 124, column: 9, scope: !506)
!512 = !DILocation(line: 125, column: 45, scope: !506)
!513 = !DILocation(line: 125, column: 29, scope: !506)
!514 = !DILocation(line: 125, column: 9, scope: !506)
!515 = !DILocation(line: 125, column: 15, scope: !506)
!516 = !DILocation(line: 125, column: 27, scope: !506)
!517 = !DILocation(line: 126, column: 9, scope: !506)
!518 = distinct !{!518, !496, !519, !135}
!519 = !DILocation(line: 127, column: 5, scope: !485)
!520 = !DILocation(line: 129, column: 12, scope: !485)
!521 = !DILocation(line: 129, column: 5, scope: !485)
!522 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !523, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!523 = !DISubroutineType(types: !524)
!524 = !{!75, !459, !75, !319}
!525 = !DILocalVariable(name: "bytes", arg: 1, scope: !522, file: !3, line: 135, type: !459)
!526 = !DILocation(line: 135, column: 41, scope: !522)
!527 = !DILocalVariable(name: "numBytes", arg: 2, scope: !522, file: !3, line: 135, type: !75)
!528 = !DILocation(line: 135, column: 55, scope: !522)
!529 = !DILocalVariable(name: "hex", arg: 3, scope: !522, file: !3, line: 135, type: !319)
!530 = !DILocation(line: 135, column: 76, scope: !522)
!531 = !DILocalVariable(name: "numWritten", scope: !522, file: !3, line: 137, type: !75)
!532 = !DILocation(line: 137, column: 12, scope: !522)
!533 = !DILocation(line: 143, column: 5, scope: !522)
!534 = !DILocation(line: 143, column: 12, scope: !522)
!535 = !DILocation(line: 143, column: 25, scope: !522)
!536 = !DILocation(line: 143, column: 23, scope: !522)
!537 = !DILocation(line: 143, column: 34, scope: !522)
!538 = !DILocation(line: 143, column: 47, scope: !522)
!539 = !DILocation(line: 143, column: 55, scope: !522)
!540 = !DILocation(line: 143, column: 53, scope: !522)
!541 = !DILocation(line: 143, column: 37, scope: !522)
!542 = !DILocation(line: 143, column: 68, scope: !522)
!543 = !DILocation(line: 143, column: 81, scope: !522)
!544 = !DILocation(line: 143, column: 89, scope: !522)
!545 = !DILocation(line: 143, column: 87, scope: !522)
!546 = !DILocation(line: 143, column: 100, scope: !522)
!547 = !DILocation(line: 143, column: 71, scope: !522)
!548 = !DILocation(line: 0, scope: !522)
!549 = !DILocalVariable(name: "byte", scope: !550, file: !3, line: 145, type: !23)
!550 = distinct !DILexicalBlock(scope: !522, file: !3, line: 144, column: 5)
!551 = !DILocation(line: 145, column: 13, scope: !550)
!552 = !DILocation(line: 146, column: 18, scope: !550)
!553 = !DILocation(line: 146, column: 26, scope: !550)
!554 = !DILocation(line: 146, column: 24, scope: !550)
!555 = !DILocation(line: 146, column: 9, scope: !550)
!556 = !DILocation(line: 147, column: 45, scope: !550)
!557 = !DILocation(line: 147, column: 29, scope: !550)
!558 = !DILocation(line: 147, column: 9, scope: !550)
!559 = !DILocation(line: 147, column: 15, scope: !550)
!560 = !DILocation(line: 147, column: 27, scope: !550)
!561 = !DILocation(line: 148, column: 9, scope: !550)
!562 = distinct !{!562, !533, !563, !135}
!563 = !DILocation(line: 149, column: 5, scope: !522)
!564 = !DILocation(line: 151, column: 12, scope: !522)
!565 = !DILocation(line: 151, column: 5, scope: !522)
!566 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !567, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DISubroutineType(types: !568)
!568 = !{!23}
!569 = !DILocation(line: 158, column: 5, scope: !566)
!570 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !567, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 163, column: 5, scope: !570)
!572 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !567, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 168, column: 13, scope: !572)
!574 = !DILocation(line: 168, column: 20, scope: !572)
!575 = !DILocation(line: 168, column: 5, scope: !572)
!576 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 187, column: 16, scope: !576)
!578 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 188, column: 16, scope: !578)
!580 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 189, column: 16, scope: !580)
!582 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DILocation(line: 190, column: 16, scope: !582)
!584 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DILocation(line: 191, column: 16, scope: !584)
!586 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DILocation(line: 192, column: 16, scope: !586)
!588 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DILocation(line: 193, column: 16, scope: !588)
!590 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!591 = !DILocation(line: 194, column: 16, scope: !590)
!592 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DILocation(line: 195, column: 16, scope: !592)
!594 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!595 = !DILocation(line: 198, column: 15, scope: !594)
!596 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!597 = !DILocation(line: 199, column: 15, scope: !596)
!598 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DILocation(line: 200, column: 15, scope: !598)
!600 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DILocation(line: 201, column: 15, scope: !600)
!602 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!603 = !DILocation(line: 202, column: 15, scope: !602)
!604 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 203, column: 15, scope: !604)
!606 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DILocation(line: 204, column: 15, scope: !606)
!608 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!609 = !DILocation(line: 205, column: 15, scope: !608)
!610 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DILocation(line: 206, column: 15, scope: !610)
