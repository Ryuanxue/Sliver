; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.8 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.10 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8.13 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_64_bad() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !65
  store i8* %arraydecay, i8** %data, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !72
  %1 = load i8*, i8** %data, align 8, !dbg !73
  %call = call i64 @strlen(i8* %1) #7, !dbg !74
  store i64 %call, i64* %dataLen, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !75, metadata !DIExpression()), !dbg !76
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !77
  store i8* %call1, i8** %environment, align 8, !dbg !76
  %2 = load i8*, i8** %environment, align 8, !dbg !78
  %cmp = icmp ne i8* %2, null, !dbg !80
  br i1 %cmp, label %if.then, label %if.end, !dbg !81

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !82
  %4 = load i64, i64* %dataLen, align 8, !dbg !84
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !85
  %5 = load i8*, i8** %environment, align 8, !dbg !86
  %6 = load i64, i64* %dataLen, align 8, !dbg !87
  %sub = sub i64 100, %6, !dbg !88
  %sub2 = sub i64 %sub, 1, !dbg !89
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !90
  br label %if.end, !dbg !91

if.end:                                           ; preds = %if.then, %entry
  %7 = bitcast i8** %data to i8*, !dbg !92
  call void @CWE606_Unchecked_Loop_Condition__char_environment_64b_badSink(i8* %7), !dbg !93
  ret void, !dbg !94
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !95 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !98, metadata !DIExpression()), !dbg !99
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !99
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !99
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !100
  store i8* %arraydecay, i8** %data, align 8, !dbg !101
  %1 = load i8*, i8** %data, align 8, !dbg !102
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !103
  %2 = bitcast i8** %data to i8*, !dbg !104
  call void @CWE606_Unchecked_Loop_Condition__char_environment_64b_goodG2BSink(i8* %2), !dbg !105
  ret void, !dbg !106
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !107 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !110, metadata !DIExpression()), !dbg !111
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !111
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !111
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !112
  store i8* %arraydecay, i8** %data, align 8, !dbg !113
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !114, metadata !DIExpression()), !dbg !116
  %1 = load i8*, i8** %data, align 8, !dbg !117
  %call = call i64 @strlen(i8* %1) #7, !dbg !118
  store i64 %call, i64* %dataLen, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !119, metadata !DIExpression()), !dbg !120
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !121
  store i8* %call1, i8** %environment, align 8, !dbg !120
  %2 = load i8*, i8** %environment, align 8, !dbg !122
  %cmp = icmp ne i8* %2, null, !dbg !124
  br i1 %cmp, label %if.then, label %if.end, !dbg !125

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !126
  %4 = load i64, i64* %dataLen, align 8, !dbg !128
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !129
  %5 = load i8*, i8** %environment, align 8, !dbg !130
  %6 = load i64, i64* %dataLen, align 8, !dbg !131
  %sub = sub i64 100, %6, !dbg !132
  %sub2 = sub i64 %sub, 1, !dbg !133
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !134
  br label %if.end, !dbg !135

if.end:                                           ; preds = %if.then, %entry
  %7 = bitcast i8** %data to i8*, !dbg !136
  call void @CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink(i8* %7), !dbg !137
  ret void, !dbg !138
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_64_good() #0 !dbg !139 {
entry:
  call void @goodG2B(), !dbg !140
  call void @goodB2G(), !dbg !141
  ret void, !dbg !142
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_64b_badSink(i8* %dataVoidPtr) #0 !dbg !143 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !148, metadata !DIExpression()), !dbg !149
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !150
  %1 = bitcast i8* %0 to i8**, !dbg !151
  store i8** %1, i8*** %dataPtr, align 8, !dbg !149
  call void @llvm.dbg.declare(metadata i8** %data, metadata !152, metadata !DIExpression()), !dbg !153
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !154
  %3 = load i8*, i8** %2, align 8, !dbg !155
  store i8* %3, i8** %data, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata i32* %i, metadata !156, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %n, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !161, metadata !DIExpression()), !dbg !162
  %4 = load i8*, i8** %data, align 8, !dbg !163
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !165
  %cmp = icmp eq i32 %call, 1, !dbg !166
  br i1 %cmp, label %if.then, label %if.end, !dbg !167

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !168
  store i32 0, i32* %i, align 4, !dbg !170
  br label %for.cond, !dbg !172

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !173
  %6 = load i32, i32* %n, align 4, !dbg !175
  %cmp1 = icmp slt i32 %5, %6, !dbg !176
  br i1 %cmp1, label %for.body, label %for.end, !dbg !177

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !178
  %inc = add nsw i32 %7, 1, !dbg !178
  store i32 %inc, i32* %intVariable, align 4, !dbg !178
  br label %for.inc, !dbg !180

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !181
  %inc2 = add nsw i32 %8, 1, !dbg !181
  store i32 %inc2, i32* %i, align 4, !dbg !181
  br label %for.cond, !dbg !182, !llvm.loop !183

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !186
  call void @printIntLine(i32 %9), !dbg !187
  br label %if.end, !dbg !188

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !189
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_64b_goodG2BSink(i8* %dataVoidPtr) #0 !dbg !190 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !193, metadata !DIExpression()), !dbg !194
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !195
  %1 = bitcast i8* %0 to i8**, !dbg !196
  store i8** %1, i8*** %dataPtr, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata i8** %data, metadata !197, metadata !DIExpression()), !dbg !198
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !199
  %3 = load i8*, i8** %2, align 8, !dbg !200
  store i8* %3, i8** %data, align 8, !dbg !198
  call void @llvm.dbg.declare(metadata i32* %i, metadata !201, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i32* %n, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !206, metadata !DIExpression()), !dbg !207
  %4 = load i8*, i8** %data, align 8, !dbg !208
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !210
  %cmp = icmp eq i32 %call, 1, !dbg !211
  br i1 %cmp, label %if.then, label %if.end, !dbg !212

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !213
  store i32 0, i32* %i, align 4, !dbg !215
  br label %for.cond, !dbg !217

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !218
  %6 = load i32, i32* %n, align 4, !dbg !220
  %cmp1 = icmp slt i32 %5, %6, !dbg !221
  br i1 %cmp1, label %for.body, label %for.end, !dbg !222

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !223
  %inc = add nsw i32 %7, 1, !dbg !223
  store i32 %inc, i32* %intVariable, align 4, !dbg !223
  br label %for.inc, !dbg !225

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !226
  %inc2 = add nsw i32 %8, 1, !dbg !226
  store i32 %inc2, i32* %i, align 4, !dbg !226
  br label %for.cond, !dbg !227, !llvm.loop !228

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !230
  call void @printIntLine(i32 %9), !dbg !231
  br label %if.end, !dbg !232

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink(i8* %dataVoidPtr) #0 !dbg !234 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !237, metadata !DIExpression()), !dbg !238
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !239
  %1 = bitcast i8* %0 to i8**, !dbg !240
  store i8** %1, i8*** %dataPtr, align 8, !dbg !238
  call void @llvm.dbg.declare(metadata i8** %data, metadata !241, metadata !DIExpression()), !dbg !242
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !243
  %3 = load i8*, i8** %2, align 8, !dbg !244
  store i8* %3, i8** %data, align 8, !dbg !242
  call void @llvm.dbg.declare(metadata i32* %i, metadata !245, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata i32* %n, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !250, metadata !DIExpression()), !dbg !251
  %4 = load i8*, i8** %data, align 8, !dbg !252
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !254
  %cmp = icmp eq i32 %call, 1, !dbg !255
  br i1 %cmp, label %if.then, label %if.end5, !dbg !256

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %n, align 4, !dbg !257
  %cmp1 = icmp slt i32 %5, 10000, !dbg !260
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !261

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !262
  store i32 0, i32* %i, align 4, !dbg !264
  br label %for.cond, !dbg !266

for.cond:                                         ; preds = %for.inc, %if.then2
  %6 = load i32, i32* %i, align 4, !dbg !267
  %7 = load i32, i32* %n, align 4, !dbg !269
  %cmp3 = icmp slt i32 %6, %7, !dbg !270
  br i1 %cmp3, label %for.body, label %for.end, !dbg !271

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !272
  %inc = add nsw i32 %8, 1, !dbg !272
  store i32 %inc, i32* %intVariable, align 4, !dbg !272
  br label %for.inc, !dbg !274

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !275
  %inc4 = add nsw i32 %9, 1, !dbg !275
  store i32 %inc4, i32* %i, align 4, !dbg !275
  br label %for.cond, !dbg !276, !llvm.loop !277

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %intVariable, align 4, !dbg !279
  call void @printIntLine(i32 %10), !dbg !280
  br label %if.end, !dbg !281

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !282

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !283
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !284 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !287, metadata !DIExpression()), !dbg !288
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !289
  %0 = load i8*, i8** %line.addr, align 8, !dbg !290
  %cmp = icmp ne i8* %0, null, !dbg !292
  br i1 %cmp, label %if.then, label %if.end, !dbg !293

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !294
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !296
  br label %if.end, !dbg !297

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !298
  ret void, !dbg !299
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !300 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !301, metadata !DIExpression()), !dbg !302
  %0 = load i8*, i8** %line.addr, align 8, !dbg !303
  %cmp = icmp ne i8* %0, null, !dbg !305
  br i1 %cmp, label %if.then, label %if.end, !dbg !306

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !307
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.9, i64 0, i64 0), i8* %1), !dbg !309
  br label %if.end, !dbg !310

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !312 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %0 = load i32*, i32** %line.addr, align 8, !dbg !319
  %cmp = icmp ne i32* %0, null, !dbg !321
  br i1 %cmp, label %if.then, label %if.end, !dbg !322

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !323
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !325
  br label %if.end, !dbg !326

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !327
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !328 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !333
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !336 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !342
  %conv = sext i16 %0 to i32, !dbg !342
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !345 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !351
  %conv = fpext float %0 to double, !dbg !351
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !352
  ret void, !dbg !353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !354 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !363 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !372
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !375 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.13, i64 0, i64 0), i64 %0), !dbg !381
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !383 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !388
  %conv = sext i8 %0 to i32, !dbg !388
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !389
  ret void, !dbg !390
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !391 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !396, metadata !DIExpression()), !dbg !400
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !401
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !402
  store i32 %0, i32* %arrayidx, align 4, !dbg !403
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !404
  store i32 0, i32* %arrayidx1, align 4, !dbg !405
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !406
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !409 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !417 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !420, metadata !DIExpression()), !dbg !421
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !422
  %conv = zext i8 %0 to i32, !dbg !422
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !425 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !429, metadata !DIExpression()), !dbg !430
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !431
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !432
  ret void, !dbg !433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !434 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !444, metadata !DIExpression()), !dbg !445
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !446
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !447
  %1 = load i32, i32* %intOne, align 4, !dbg !447
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !448
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !449
  %3 = load i32, i32* %intTwo, align 4, !dbg !449
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !452 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !456, metadata !DIExpression()), !dbg !457
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !458, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata i64* %i, metadata !460, metadata !DIExpression()), !dbg !461
  store i64 0, i64* %i, align 8, !dbg !462
  br label %for.cond, !dbg !464

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !465
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !467
  %cmp = icmp ult i64 %0, %1, !dbg !468
  br i1 %cmp, label %for.body, label %for.end, !dbg !469

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !470
  %3 = load i64, i64* %i, align 8, !dbg !472
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !470
  %4 = load i8, i8* %arrayidx, align 1, !dbg !470
  %conv = zext i8 %4 to i32, !dbg !470
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !473
  br label %for.inc, !dbg !474

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !475
  %inc = add i64 %5, 1, !dbg !475
  store i64 %inc, i64* %i, align 8, !dbg !475
  br label %for.cond, !dbg !476, !llvm.loop !477

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !479
  ret void, !dbg !480
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !481 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !484, metadata !DIExpression()), !dbg !485
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !486, metadata !DIExpression()), !dbg !487
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !488, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !490, metadata !DIExpression()), !dbg !491
  store i64 0, i64* %numWritten, align 8, !dbg !491
  br label %while.cond, !dbg !492

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !493
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !494
  %cmp = icmp ult i64 %0, %1, !dbg !495
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !496

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !497
  %2 = load i16*, i16** %call, align 8, !dbg !497
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !497
  %4 = load i64, i64* %numWritten, align 8, !dbg !497
  %mul = mul i64 2, %4, !dbg !497
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !497
  %5 = load i8, i8* %arrayidx, align 1, !dbg !497
  %conv = sext i8 %5 to i32, !dbg !497
  %idxprom = sext i32 %conv to i64, !dbg !497
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !497
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !497
  %conv2 = zext i16 %6 to i32, !dbg !497
  %and = and i32 %conv2, 4096, !dbg !497
  %tobool = icmp ne i32 %and, 0, !dbg !497
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !498

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !499
  %7 = load i16*, i16** %call3, align 8, !dbg !499
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !499
  %9 = load i64, i64* %numWritten, align 8, !dbg !499
  %mul4 = mul i64 2, %9, !dbg !499
  %add = add i64 %mul4, 1, !dbg !499
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !499
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !499
  %conv6 = sext i8 %10 to i32, !dbg !499
  %idxprom7 = sext i32 %conv6 to i64, !dbg !499
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !499
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !499
  %conv9 = zext i16 %11 to i32, !dbg !499
  %and10 = and i32 %conv9, 4096, !dbg !499
  %tobool11 = icmp ne i32 %and10, 0, !dbg !498
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !500
  br i1 %12, label %while.body, label %while.end, !dbg !492

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !501, metadata !DIExpression()), !dbg !503
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !504
  %14 = load i64, i64* %numWritten, align 8, !dbg !505
  %mul12 = mul i64 2, %14, !dbg !506
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !504
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !507
  %15 = load i32, i32* %byte, align 4, !dbg !508
  %conv15 = trunc i32 %15 to i8, !dbg !509
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !510
  %17 = load i64, i64* %numWritten, align 8, !dbg !511
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !510
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !512
  %18 = load i64, i64* %numWritten, align 8, !dbg !513
  %inc = add i64 %18, 1, !dbg !513
  store i64 %inc, i64* %numWritten, align 8, !dbg !513
  br label %while.cond, !dbg !492, !llvm.loop !514

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !516
  ret i64 %19, !dbg !517
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !518 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !521, metadata !DIExpression()), !dbg !522
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !523, metadata !DIExpression()), !dbg !524
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !525, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !527, metadata !DIExpression()), !dbg !528
  store i64 0, i64* %numWritten, align 8, !dbg !528
  br label %while.cond, !dbg !529

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !530
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !531
  %cmp = icmp ult i64 %0, %1, !dbg !532
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !533

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !534
  %3 = load i64, i64* %numWritten, align 8, !dbg !535
  %mul = mul i64 2, %3, !dbg !536
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !534
  %4 = load i32, i32* %arrayidx, align 4, !dbg !534
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !537
  %tobool = icmp ne i32 %call, 0, !dbg !537
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !538

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !539
  %6 = load i64, i64* %numWritten, align 8, !dbg !540
  %mul1 = mul i64 2, %6, !dbg !541
  %add = add i64 %mul1, 1, !dbg !542
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !539
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !539
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !543
  %tobool4 = icmp ne i32 %call3, 0, !dbg !538
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !544
  br i1 %8, label %while.body, label %while.end, !dbg !529

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !545, metadata !DIExpression()), !dbg !547
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !548
  %10 = load i64, i64* %numWritten, align 8, !dbg !549
  %mul5 = mul i64 2, %10, !dbg !550
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !548
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !551
  %11 = load i32, i32* %byte, align 4, !dbg !552
  %conv = trunc i32 %11 to i8, !dbg !553
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !554
  %13 = load i64, i64* %numWritten, align 8, !dbg !555
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !554
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !556
  %14 = load i64, i64* %numWritten, align 8, !dbg !557
  %inc = add i64 %14, 1, !dbg !557
  store i64 %inc, i64* %numWritten, align 8, !dbg !557
  br label %while.cond, !dbg !529, !llvm.loop !558

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !560
  ret i64 %15, !dbg !561
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !562 {
entry:
  ret i32 1, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !566 {
entry:
  ret i32 0, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !568 {
entry:
  %call = call i32 @rand() #8, !dbg !569
  %rem = srem i32 %call, 2, !dbg !570
  ret i32 %rem, !dbg !571
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !588 {
entry:
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !590 {
entry:
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !592 {
entry:
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !594 {
entry:
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !596 {
entry:
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !598 {
entry:
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !600 {
entry:
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !602 {
entry:
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !604 {
entry:
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !606 {
entry:
  ret void, !dbg !607
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

!llvm.dbg.cu = !{!44, !48, !2}
!llvm.ident = !{!51, !51, !51}
!llvm.module.flags = !{!52, !53, !54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_062/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_64a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_062/source_code")
!46 = !{}
!47 = !{!22}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !50, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_64b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_062/source_code")
!50 = !{!41}
!51 = !{!"clang version 12.0.0"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_64_bad", scope: !45, file: !45, line: 39, type: !56, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !45, line: 41, type: !42)
!59 = !DILocation(line: 41, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !45, line: 42, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 42, column: 10, scope: !55)
!65 = !DILocation(line: 43, column: 12, scope: !55)
!66 = !DILocation(line: 43, column: 10, scope: !55)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 46, type: !69)
!68 = distinct !DILexicalBlock(scope: !55, file: !45, line: 44, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 46, column: 16, scope: !68)
!73 = !DILocation(line: 46, column: 33, scope: !68)
!74 = !DILocation(line: 46, column: 26, scope: !68)
!75 = !DILocalVariable(name: "environment", scope: !68, file: !45, line: 47, type: !42)
!76 = !DILocation(line: 47, column: 16, scope: !68)
!77 = !DILocation(line: 47, column: 30, scope: !68)
!78 = !DILocation(line: 49, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !68, file: !45, line: 49, column: 13)
!80 = !DILocation(line: 49, column: 25, scope: !79)
!81 = !DILocation(line: 49, column: 13, scope: !68)
!82 = !DILocation(line: 52, column: 21, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !45, line: 50, column: 9)
!84 = !DILocation(line: 52, column: 26, scope: !83)
!85 = !DILocation(line: 52, column: 25, scope: !83)
!86 = !DILocation(line: 52, column: 35, scope: !83)
!87 = !DILocation(line: 52, column: 52, scope: !83)
!88 = !DILocation(line: 52, column: 51, scope: !83)
!89 = !DILocation(line: 52, column: 59, scope: !83)
!90 = !DILocation(line: 52, column: 13, scope: !83)
!91 = !DILocation(line: 53, column: 9, scope: !83)
!92 = !DILocation(line: 55, column: 67, scope: !55)
!93 = !DILocation(line: 55, column: 5, scope: !55)
!94 = !DILocation(line: 56, column: 1, scope: !55)
!95 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 64, type: !56, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!96 = !DILocalVariable(name: "data", scope: !95, file: !45, line: 66, type: !42)
!97 = !DILocation(line: 66, column: 12, scope: !95)
!98 = !DILocalVariable(name: "dataBuffer", scope: !95, file: !45, line: 67, type: !61)
!99 = !DILocation(line: 67, column: 10, scope: !95)
!100 = !DILocation(line: 68, column: 12, scope: !95)
!101 = !DILocation(line: 68, column: 10, scope: !95)
!102 = !DILocation(line: 70, column: 12, scope: !95)
!103 = !DILocation(line: 70, column: 5, scope: !95)
!104 = !DILocation(line: 71, column: 71, scope: !95)
!105 = !DILocation(line: 71, column: 5, scope: !95)
!106 = !DILocation(line: 72, column: 1, scope: !95)
!107 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 76, type: !56, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!108 = !DILocalVariable(name: "data", scope: !107, file: !45, line: 78, type: !42)
!109 = !DILocation(line: 78, column: 12, scope: !107)
!110 = !DILocalVariable(name: "dataBuffer", scope: !107, file: !45, line: 79, type: !61)
!111 = !DILocation(line: 79, column: 10, scope: !107)
!112 = !DILocation(line: 80, column: 12, scope: !107)
!113 = !DILocation(line: 80, column: 10, scope: !107)
!114 = !DILocalVariable(name: "dataLen", scope: !115, file: !45, line: 83, type: !69)
!115 = distinct !DILexicalBlock(scope: !107, file: !45, line: 81, column: 5)
!116 = !DILocation(line: 83, column: 16, scope: !115)
!117 = !DILocation(line: 83, column: 33, scope: !115)
!118 = !DILocation(line: 83, column: 26, scope: !115)
!119 = !DILocalVariable(name: "environment", scope: !115, file: !45, line: 84, type: !42)
!120 = !DILocation(line: 84, column: 16, scope: !115)
!121 = !DILocation(line: 84, column: 30, scope: !115)
!122 = !DILocation(line: 86, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !115, file: !45, line: 86, column: 13)
!124 = !DILocation(line: 86, column: 25, scope: !123)
!125 = !DILocation(line: 86, column: 13, scope: !115)
!126 = !DILocation(line: 89, column: 21, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !45, line: 87, column: 9)
!128 = !DILocation(line: 89, column: 26, scope: !127)
!129 = !DILocation(line: 89, column: 25, scope: !127)
!130 = !DILocation(line: 89, column: 35, scope: !127)
!131 = !DILocation(line: 89, column: 52, scope: !127)
!132 = !DILocation(line: 89, column: 51, scope: !127)
!133 = !DILocation(line: 89, column: 59, scope: !127)
!134 = !DILocation(line: 89, column: 13, scope: !127)
!135 = !DILocation(line: 90, column: 9, scope: !127)
!136 = !DILocation(line: 92, column: 71, scope: !107)
!137 = !DILocation(line: 92, column: 5, scope: !107)
!138 = !DILocation(line: 93, column: 1, scope: !107)
!139 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_64_good", scope: !45, file: !45, line: 95, type: !56, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!140 = !DILocation(line: 97, column: 5, scope: !139)
!141 = !DILocation(line: 98, column: 5, scope: !139)
!142 = !DILocation(line: 99, column: 1, scope: !139)
!143 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_64b_badSink", scope: !49, file: !49, line: 36, type: !144, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !22}
!146 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !143, file: !49, line: 36, type: !22)
!147 = !DILocation(line: 36, column: 75, scope: !143)
!148 = !DILocalVariable(name: "dataPtr", scope: !143, file: !49, line: 39, type: !41)
!149 = !DILocation(line: 39, column: 14, scope: !143)
!150 = !DILocation(line: 39, column: 34, scope: !143)
!151 = !DILocation(line: 39, column: 24, scope: !143)
!152 = !DILocalVariable(name: "data", scope: !143, file: !49, line: 41, type: !42)
!153 = !DILocation(line: 41, column: 12, scope: !143)
!154 = !DILocation(line: 41, column: 21, scope: !143)
!155 = !DILocation(line: 41, column: 20, scope: !143)
!156 = !DILocalVariable(name: "i", scope: !157, file: !49, line: 43, type: !23)
!157 = distinct !DILexicalBlock(scope: !143, file: !49, line: 42, column: 5)
!158 = !DILocation(line: 43, column: 13, scope: !157)
!159 = !DILocalVariable(name: "n", scope: !157, file: !49, line: 43, type: !23)
!160 = !DILocation(line: 43, column: 16, scope: !157)
!161 = !DILocalVariable(name: "intVariable", scope: !157, file: !49, line: 43, type: !23)
!162 = !DILocation(line: 43, column: 19, scope: !157)
!163 = !DILocation(line: 44, column: 20, scope: !164)
!164 = distinct !DILexicalBlock(scope: !157, file: !49, line: 44, column: 13)
!165 = !DILocation(line: 44, column: 13, scope: !164)
!166 = !DILocation(line: 44, column: 36, scope: !164)
!167 = !DILocation(line: 44, column: 13, scope: !157)
!168 = !DILocation(line: 47, column: 25, scope: !169)
!169 = distinct !DILexicalBlock(scope: !164, file: !49, line: 45, column: 9)
!170 = !DILocation(line: 48, column: 20, scope: !171)
!171 = distinct !DILexicalBlock(scope: !169, file: !49, line: 48, column: 13)
!172 = !DILocation(line: 48, column: 18, scope: !171)
!173 = !DILocation(line: 48, column: 25, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !49, line: 48, column: 13)
!175 = !DILocation(line: 48, column: 29, scope: !174)
!176 = !DILocation(line: 48, column: 27, scope: !174)
!177 = !DILocation(line: 48, column: 13, scope: !171)
!178 = !DILocation(line: 51, column: 28, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !49, line: 49, column: 13)
!180 = !DILocation(line: 52, column: 13, scope: !179)
!181 = !DILocation(line: 48, column: 33, scope: !174)
!182 = !DILocation(line: 48, column: 13, scope: !174)
!183 = distinct !{!183, !177, !184, !185}
!184 = !DILocation(line: 52, column: 13, scope: !171)
!185 = !{!"llvm.loop.mustprogress"}
!186 = !DILocation(line: 53, column: 26, scope: !169)
!187 = !DILocation(line: 53, column: 13, scope: !169)
!188 = !DILocation(line: 54, column: 9, scope: !169)
!189 = !DILocation(line: 56, column: 1, scope: !143)
!190 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_64b_goodG2BSink", scope: !49, file: !49, line: 63, type: !144, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!191 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !190, file: !49, line: 63, type: !22)
!192 = !DILocation(line: 63, column: 79, scope: !190)
!193 = !DILocalVariable(name: "dataPtr", scope: !190, file: !49, line: 66, type: !41)
!194 = !DILocation(line: 66, column: 14, scope: !190)
!195 = !DILocation(line: 66, column: 34, scope: !190)
!196 = !DILocation(line: 66, column: 24, scope: !190)
!197 = !DILocalVariable(name: "data", scope: !190, file: !49, line: 68, type: !42)
!198 = !DILocation(line: 68, column: 12, scope: !190)
!199 = !DILocation(line: 68, column: 21, scope: !190)
!200 = !DILocation(line: 68, column: 20, scope: !190)
!201 = !DILocalVariable(name: "i", scope: !202, file: !49, line: 70, type: !23)
!202 = distinct !DILexicalBlock(scope: !190, file: !49, line: 69, column: 5)
!203 = !DILocation(line: 70, column: 13, scope: !202)
!204 = !DILocalVariable(name: "n", scope: !202, file: !49, line: 70, type: !23)
!205 = !DILocation(line: 70, column: 16, scope: !202)
!206 = !DILocalVariable(name: "intVariable", scope: !202, file: !49, line: 70, type: !23)
!207 = !DILocation(line: 70, column: 19, scope: !202)
!208 = !DILocation(line: 71, column: 20, scope: !209)
!209 = distinct !DILexicalBlock(scope: !202, file: !49, line: 71, column: 13)
!210 = !DILocation(line: 71, column: 13, scope: !209)
!211 = !DILocation(line: 71, column: 36, scope: !209)
!212 = !DILocation(line: 71, column: 13, scope: !202)
!213 = !DILocation(line: 74, column: 25, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !49, line: 72, column: 9)
!215 = !DILocation(line: 75, column: 20, scope: !216)
!216 = distinct !DILexicalBlock(scope: !214, file: !49, line: 75, column: 13)
!217 = !DILocation(line: 75, column: 18, scope: !216)
!218 = !DILocation(line: 75, column: 25, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !49, line: 75, column: 13)
!220 = !DILocation(line: 75, column: 29, scope: !219)
!221 = !DILocation(line: 75, column: 27, scope: !219)
!222 = !DILocation(line: 75, column: 13, scope: !216)
!223 = !DILocation(line: 78, column: 28, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !49, line: 76, column: 13)
!225 = !DILocation(line: 79, column: 13, scope: !224)
!226 = !DILocation(line: 75, column: 33, scope: !219)
!227 = !DILocation(line: 75, column: 13, scope: !219)
!228 = distinct !{!228, !222, !229, !185}
!229 = !DILocation(line: 79, column: 13, scope: !216)
!230 = !DILocation(line: 80, column: 26, scope: !214)
!231 = !DILocation(line: 80, column: 13, scope: !214)
!232 = !DILocation(line: 81, column: 9, scope: !214)
!233 = !DILocation(line: 83, column: 1, scope: !190)
!234 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink", scope: !49, file: !49, line: 86, type: !144, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!235 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !234, file: !49, line: 86, type: !22)
!236 = !DILocation(line: 86, column: 79, scope: !234)
!237 = !DILocalVariable(name: "dataPtr", scope: !234, file: !49, line: 89, type: !41)
!238 = !DILocation(line: 89, column: 14, scope: !234)
!239 = !DILocation(line: 89, column: 34, scope: !234)
!240 = !DILocation(line: 89, column: 24, scope: !234)
!241 = !DILocalVariable(name: "data", scope: !234, file: !49, line: 91, type: !42)
!242 = !DILocation(line: 91, column: 12, scope: !234)
!243 = !DILocation(line: 91, column: 21, scope: !234)
!244 = !DILocation(line: 91, column: 20, scope: !234)
!245 = !DILocalVariable(name: "i", scope: !246, file: !49, line: 93, type: !23)
!246 = distinct !DILexicalBlock(scope: !234, file: !49, line: 92, column: 5)
!247 = !DILocation(line: 93, column: 13, scope: !246)
!248 = !DILocalVariable(name: "n", scope: !246, file: !49, line: 93, type: !23)
!249 = !DILocation(line: 93, column: 16, scope: !246)
!250 = !DILocalVariable(name: "intVariable", scope: !246, file: !49, line: 93, type: !23)
!251 = !DILocation(line: 93, column: 19, scope: !246)
!252 = !DILocation(line: 94, column: 20, scope: !253)
!253 = distinct !DILexicalBlock(scope: !246, file: !49, line: 94, column: 13)
!254 = !DILocation(line: 94, column: 13, scope: !253)
!255 = !DILocation(line: 94, column: 36, scope: !253)
!256 = !DILocation(line: 94, column: 13, scope: !246)
!257 = !DILocation(line: 97, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !49, line: 97, column: 17)
!259 = distinct !DILexicalBlock(scope: !253, file: !49, line: 95, column: 9)
!260 = !DILocation(line: 97, column: 19, scope: !258)
!261 = !DILocation(line: 97, column: 17, scope: !259)
!262 = !DILocation(line: 99, column: 29, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !49, line: 98, column: 13)
!264 = !DILocation(line: 100, column: 24, scope: !265)
!265 = distinct !DILexicalBlock(scope: !263, file: !49, line: 100, column: 17)
!266 = !DILocation(line: 100, column: 22, scope: !265)
!267 = !DILocation(line: 100, column: 29, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !49, line: 100, column: 17)
!269 = !DILocation(line: 100, column: 33, scope: !268)
!270 = !DILocation(line: 100, column: 31, scope: !268)
!271 = !DILocation(line: 100, column: 17, scope: !265)
!272 = !DILocation(line: 103, column: 32, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !49, line: 101, column: 17)
!274 = !DILocation(line: 104, column: 17, scope: !273)
!275 = !DILocation(line: 100, column: 37, scope: !268)
!276 = !DILocation(line: 100, column: 17, scope: !268)
!277 = distinct !{!277, !271, !278, !185}
!278 = !DILocation(line: 104, column: 17, scope: !265)
!279 = !DILocation(line: 105, column: 30, scope: !263)
!280 = !DILocation(line: 105, column: 17, scope: !263)
!281 = !DILocation(line: 106, column: 13, scope: !263)
!282 = !DILocation(line: 107, column: 9, scope: !259)
!283 = !DILocation(line: 109, column: 1, scope: !234)
!284 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !285, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !42}
!287 = !DILocalVariable(name: "line", arg: 1, scope: !284, file: !3, line: 11, type: !42)
!288 = !DILocation(line: 11, column: 25, scope: !284)
!289 = !DILocation(line: 13, column: 1, scope: !284)
!290 = !DILocation(line: 14, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !284, file: !3, line: 14, column: 8)
!292 = !DILocation(line: 14, column: 13, scope: !291)
!293 = !DILocation(line: 14, column: 8, scope: !284)
!294 = !DILocation(line: 16, column: 24, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !3, line: 15, column: 5)
!296 = !DILocation(line: 16, column: 9, scope: !295)
!297 = !DILocation(line: 17, column: 5, scope: !295)
!298 = !DILocation(line: 18, column: 5, scope: !284)
!299 = !DILocation(line: 19, column: 1, scope: !284)
!300 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !285, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!301 = !DILocalVariable(name: "line", arg: 1, scope: !300, file: !3, line: 20, type: !42)
!302 = !DILocation(line: 20, column: 29, scope: !300)
!303 = !DILocation(line: 22, column: 8, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !3, line: 22, column: 8)
!305 = !DILocation(line: 22, column: 13, scope: !304)
!306 = !DILocation(line: 22, column: 8, scope: !300)
!307 = !DILocation(line: 24, column: 24, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !3, line: 23, column: 5)
!309 = !DILocation(line: 24, column: 9, scope: !308)
!310 = !DILocation(line: 25, column: 5, scope: !308)
!311 = !DILocation(line: 26, column: 1, scope: !300)
!312 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !313, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !315}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !23)
!317 = !DILocalVariable(name: "line", arg: 1, scope: !312, file: !3, line: 27, type: !315)
!318 = !DILocation(line: 27, column: 29, scope: !312)
!319 = !DILocation(line: 29, column: 8, scope: !320)
!320 = distinct !DILexicalBlock(scope: !312, file: !3, line: 29, column: 8)
!321 = !DILocation(line: 29, column: 13, scope: !320)
!322 = !DILocation(line: 29, column: 8, scope: !312)
!323 = !DILocation(line: 31, column: 27, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !3, line: 30, column: 5)
!325 = !DILocation(line: 31, column: 9, scope: !324)
!326 = !DILocation(line: 32, column: 5, scope: !324)
!327 = !DILocation(line: 33, column: 1, scope: !312)
!328 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !329, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !23}
!331 = !DILocalVariable(name: "intNumber", arg: 1, scope: !328, file: !3, line: 35, type: !23)
!332 = !DILocation(line: 35, column: 24, scope: !328)
!333 = !DILocation(line: 37, column: 20, scope: !328)
!334 = !DILocation(line: 37, column: 5, scope: !328)
!335 = !DILocation(line: 38, column: 1, scope: !328)
!336 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !337, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339}
!339 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!340 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !336, file: !3, line: 40, type: !339)
!341 = !DILocation(line: 40, column: 28, scope: !336)
!342 = !DILocation(line: 42, column: 21, scope: !336)
!343 = !DILocation(line: 42, column: 5, scope: !336)
!344 = !DILocation(line: 43, column: 1, scope: !336)
!345 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !346, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !348}
!348 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!349 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !345, file: !3, line: 45, type: !348)
!350 = !DILocation(line: 45, column: 28, scope: !345)
!351 = !DILocation(line: 47, column: 20, scope: !345)
!352 = !DILocation(line: 47, column: 5, scope: !345)
!353 = !DILocation(line: 48, column: 1, scope: !345)
!354 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !355, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357}
!357 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!358 = !DILocalVariable(name: "longNumber", arg: 1, scope: !354, file: !3, line: 50, type: !357)
!359 = !DILocation(line: 50, column: 26, scope: !354)
!360 = !DILocation(line: 52, column: 21, scope: !354)
!361 = !DILocation(line: 52, column: 5, scope: !354)
!362 = !DILocation(line: 53, column: 1, scope: !354)
!363 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !364, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !366}
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !367, line: 27, baseType: !368)
!367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !369, line: 44, baseType: !357)
!369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!370 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !363, file: !3, line: 55, type: !366)
!371 = !DILocation(line: 55, column: 33, scope: !363)
!372 = !DILocation(line: 57, column: 29, scope: !363)
!373 = !DILocation(line: 57, column: 5, scope: !363)
!374 = !DILocation(line: 58, column: 1, scope: !363)
!375 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !376, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !69}
!378 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !375, file: !3, line: 60, type: !69)
!379 = !DILocation(line: 60, column: 29, scope: !375)
!380 = !DILocation(line: 62, column: 21, scope: !375)
!381 = !DILocation(line: 62, column: 5, scope: !375)
!382 = !DILocation(line: 63, column: 1, scope: !375)
!383 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !384, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !43}
!386 = !DILocalVariable(name: "charHex", arg: 1, scope: !383, file: !3, line: 65, type: !43)
!387 = !DILocation(line: 65, column: 29, scope: !383)
!388 = !DILocation(line: 67, column: 22, scope: !383)
!389 = !DILocation(line: 67, column: 5, scope: !383)
!390 = !DILocation(line: 68, column: 1, scope: !383)
!391 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !392, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !316}
!394 = !DILocalVariable(name: "wideChar", arg: 1, scope: !391, file: !3, line: 70, type: !316)
!395 = !DILocation(line: 70, column: 29, scope: !391)
!396 = !DILocalVariable(name: "s", scope: !391, file: !3, line: 74, type: !397)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 64, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 2)
!400 = !DILocation(line: 74, column: 13, scope: !391)
!401 = !DILocation(line: 75, column: 16, scope: !391)
!402 = !DILocation(line: 75, column: 9, scope: !391)
!403 = !DILocation(line: 75, column: 14, scope: !391)
!404 = !DILocation(line: 76, column: 9, scope: !391)
!405 = !DILocation(line: 76, column: 14, scope: !391)
!406 = !DILocation(line: 77, column: 21, scope: !391)
!407 = !DILocation(line: 77, column: 5, scope: !391)
!408 = !DILocation(line: 78, column: 1, scope: !391)
!409 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !410, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !7}
!412 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !409, file: !3, line: 80, type: !7)
!413 = !DILocation(line: 80, column: 33, scope: !409)
!414 = !DILocation(line: 82, column: 20, scope: !409)
!415 = !DILocation(line: 82, column: 5, scope: !409)
!416 = !DILocation(line: 83, column: 1, scope: !409)
!417 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !418, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !25}
!420 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !417, file: !3, line: 85, type: !25)
!421 = !DILocation(line: 85, column: 45, scope: !417)
!422 = !DILocation(line: 87, column: 22, scope: !417)
!423 = !DILocation(line: 87, column: 5, scope: !417)
!424 = !DILocation(line: 88, column: 1, scope: !417)
!425 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !426, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !428}
!428 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!429 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !425, file: !3, line: 90, type: !428)
!430 = !DILocation(line: 90, column: 29, scope: !425)
!431 = !DILocation(line: 92, column: 20, scope: !425)
!432 = !DILocation(line: 92, column: 5, scope: !425)
!433 = !DILocation(line: 93, column: 1, scope: !425)
!434 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !435, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !439, line: 100, baseType: !440)
!439 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_062/source_code")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !439, line: 96, size: 64, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !440, file: !439, line: 98, baseType: !23, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !440, file: !439, line: 99, baseType: !23, size: 32, offset: 32)
!444 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !434, file: !3, line: 95, type: !437)
!445 = !DILocation(line: 95, column: 40, scope: !434)
!446 = !DILocation(line: 97, column: 26, scope: !434)
!447 = !DILocation(line: 97, column: 47, scope: !434)
!448 = !DILocation(line: 97, column: 55, scope: !434)
!449 = !DILocation(line: 97, column: 76, scope: !434)
!450 = !DILocation(line: 97, column: 5, scope: !434)
!451 = !DILocation(line: 98, column: 1, scope: !434)
!452 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !453, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !455, !69}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!456 = !DILocalVariable(name: "bytes", arg: 1, scope: !452, file: !3, line: 100, type: !455)
!457 = !DILocation(line: 100, column: 38, scope: !452)
!458 = !DILocalVariable(name: "numBytes", arg: 2, scope: !452, file: !3, line: 100, type: !69)
!459 = !DILocation(line: 100, column: 52, scope: !452)
!460 = !DILocalVariable(name: "i", scope: !452, file: !3, line: 102, type: !69)
!461 = !DILocation(line: 102, column: 12, scope: !452)
!462 = !DILocation(line: 103, column: 12, scope: !463)
!463 = distinct !DILexicalBlock(scope: !452, file: !3, line: 103, column: 5)
!464 = !DILocation(line: 103, column: 10, scope: !463)
!465 = !DILocation(line: 103, column: 17, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !3, line: 103, column: 5)
!467 = !DILocation(line: 103, column: 21, scope: !466)
!468 = !DILocation(line: 103, column: 19, scope: !466)
!469 = !DILocation(line: 103, column: 5, scope: !463)
!470 = !DILocation(line: 105, column: 24, scope: !471)
!471 = distinct !DILexicalBlock(scope: !466, file: !3, line: 104, column: 5)
!472 = !DILocation(line: 105, column: 30, scope: !471)
!473 = !DILocation(line: 105, column: 9, scope: !471)
!474 = !DILocation(line: 106, column: 5, scope: !471)
!475 = !DILocation(line: 103, column: 31, scope: !466)
!476 = !DILocation(line: 103, column: 5, scope: !466)
!477 = distinct !{!477, !469, !478, !185}
!478 = !DILocation(line: 106, column: 5, scope: !463)
!479 = !DILocation(line: 107, column: 5, scope: !452)
!480 = !DILocation(line: 108, column: 1, scope: !452)
!481 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !482, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DISubroutineType(types: !483)
!483 = !{!69, !455, !69, !42}
!484 = !DILocalVariable(name: "bytes", arg: 1, scope: !481, file: !3, line: 113, type: !455)
!485 = !DILocation(line: 113, column: 39, scope: !481)
!486 = !DILocalVariable(name: "numBytes", arg: 2, scope: !481, file: !3, line: 113, type: !69)
!487 = !DILocation(line: 113, column: 53, scope: !481)
!488 = !DILocalVariable(name: "hex", arg: 3, scope: !481, file: !3, line: 113, type: !42)
!489 = !DILocation(line: 113, column: 71, scope: !481)
!490 = !DILocalVariable(name: "numWritten", scope: !481, file: !3, line: 115, type: !69)
!491 = !DILocation(line: 115, column: 12, scope: !481)
!492 = !DILocation(line: 121, column: 5, scope: !481)
!493 = !DILocation(line: 121, column: 12, scope: !481)
!494 = !DILocation(line: 121, column: 25, scope: !481)
!495 = !DILocation(line: 121, column: 23, scope: !481)
!496 = !DILocation(line: 121, column: 34, scope: !481)
!497 = !DILocation(line: 121, column: 37, scope: !481)
!498 = !DILocation(line: 121, column: 67, scope: !481)
!499 = !DILocation(line: 121, column: 70, scope: !481)
!500 = !DILocation(line: 0, scope: !481)
!501 = !DILocalVariable(name: "byte", scope: !502, file: !3, line: 123, type: !23)
!502 = distinct !DILexicalBlock(scope: !481, file: !3, line: 122, column: 5)
!503 = !DILocation(line: 123, column: 13, scope: !502)
!504 = !DILocation(line: 124, column: 17, scope: !502)
!505 = !DILocation(line: 124, column: 25, scope: !502)
!506 = !DILocation(line: 124, column: 23, scope: !502)
!507 = !DILocation(line: 124, column: 9, scope: !502)
!508 = !DILocation(line: 125, column: 45, scope: !502)
!509 = !DILocation(line: 125, column: 29, scope: !502)
!510 = !DILocation(line: 125, column: 9, scope: !502)
!511 = !DILocation(line: 125, column: 15, scope: !502)
!512 = !DILocation(line: 125, column: 27, scope: !502)
!513 = !DILocation(line: 126, column: 9, scope: !502)
!514 = distinct !{!514, !492, !515, !185}
!515 = !DILocation(line: 127, column: 5, scope: !481)
!516 = !DILocation(line: 129, column: 12, scope: !481)
!517 = !DILocation(line: 129, column: 5, scope: !481)
!518 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !519, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DISubroutineType(types: !520)
!520 = !{!69, !455, !69, !315}
!521 = !DILocalVariable(name: "bytes", arg: 1, scope: !518, file: !3, line: 135, type: !455)
!522 = !DILocation(line: 135, column: 41, scope: !518)
!523 = !DILocalVariable(name: "numBytes", arg: 2, scope: !518, file: !3, line: 135, type: !69)
!524 = !DILocation(line: 135, column: 55, scope: !518)
!525 = !DILocalVariable(name: "hex", arg: 3, scope: !518, file: !3, line: 135, type: !315)
!526 = !DILocation(line: 135, column: 76, scope: !518)
!527 = !DILocalVariable(name: "numWritten", scope: !518, file: !3, line: 137, type: !69)
!528 = !DILocation(line: 137, column: 12, scope: !518)
!529 = !DILocation(line: 143, column: 5, scope: !518)
!530 = !DILocation(line: 143, column: 12, scope: !518)
!531 = !DILocation(line: 143, column: 25, scope: !518)
!532 = !DILocation(line: 143, column: 23, scope: !518)
!533 = !DILocation(line: 143, column: 34, scope: !518)
!534 = !DILocation(line: 143, column: 47, scope: !518)
!535 = !DILocation(line: 143, column: 55, scope: !518)
!536 = !DILocation(line: 143, column: 53, scope: !518)
!537 = !DILocation(line: 143, column: 37, scope: !518)
!538 = !DILocation(line: 143, column: 68, scope: !518)
!539 = !DILocation(line: 143, column: 81, scope: !518)
!540 = !DILocation(line: 143, column: 89, scope: !518)
!541 = !DILocation(line: 143, column: 87, scope: !518)
!542 = !DILocation(line: 143, column: 100, scope: !518)
!543 = !DILocation(line: 143, column: 71, scope: !518)
!544 = !DILocation(line: 0, scope: !518)
!545 = !DILocalVariable(name: "byte", scope: !546, file: !3, line: 145, type: !23)
!546 = distinct !DILexicalBlock(scope: !518, file: !3, line: 144, column: 5)
!547 = !DILocation(line: 145, column: 13, scope: !546)
!548 = !DILocation(line: 146, column: 18, scope: !546)
!549 = !DILocation(line: 146, column: 26, scope: !546)
!550 = !DILocation(line: 146, column: 24, scope: !546)
!551 = !DILocation(line: 146, column: 9, scope: !546)
!552 = !DILocation(line: 147, column: 45, scope: !546)
!553 = !DILocation(line: 147, column: 29, scope: !546)
!554 = !DILocation(line: 147, column: 9, scope: !546)
!555 = !DILocation(line: 147, column: 15, scope: !546)
!556 = !DILocation(line: 147, column: 27, scope: !546)
!557 = !DILocation(line: 148, column: 9, scope: !546)
!558 = distinct !{!558, !529, !559, !185}
!559 = !DILocation(line: 149, column: 5, scope: !518)
!560 = !DILocation(line: 151, column: 12, scope: !518)
!561 = !DILocation(line: 151, column: 5, scope: !518)
!562 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !563, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DISubroutineType(types: !564)
!564 = !{!23}
!565 = !DILocation(line: 158, column: 5, scope: !562)
!566 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !563, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 163, column: 5, scope: !566)
!568 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !563, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 168, column: 13, scope: !568)
!570 = !DILocation(line: 168, column: 20, scope: !568)
!571 = !DILocation(line: 168, column: 5, scope: !568)
!572 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 187, column: 16, scope: !572)
!574 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DILocation(line: 188, column: 16, scope: !574)
!576 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 189, column: 16, scope: !576)
!578 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 190, column: 16, scope: !578)
!580 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 191, column: 16, scope: !580)
!582 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DILocation(line: 192, column: 16, scope: !582)
!584 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DILocation(line: 193, column: 16, scope: !584)
!586 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DILocation(line: 194, column: 16, scope: !586)
!588 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DILocation(line: 195, column: 16, scope: !588)
!590 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!591 = !DILocation(line: 198, column: 15, scope: !590)
!592 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DILocation(line: 199, column: 15, scope: !592)
!594 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!595 = !DILocation(line: 200, column: 15, scope: !594)
!596 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!597 = !DILocation(line: 201, column: 15, scope: !596)
!598 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DILocation(line: 202, column: 15, scope: !598)
!600 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DILocation(line: 203, column: 15, scope: !600)
!602 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!603 = !DILocation(line: 204, column: 15, scope: !602)
!604 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 205, column: 15, scope: !604)
!606 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DILocation(line: 206, column: 15, scope: !606)
