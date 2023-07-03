; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType = type { i8* }
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_34_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %data4 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion, metadata !57, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !65, metadata !DIExpression()), !dbg !69
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !69
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !69
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !70
  store i8* %arraydecay, i8** %data, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !72, metadata !DIExpression()), !dbg !77
  %1 = load i8*, i8** %data, align 8, !dbg !78
  %call = call i64 @strlen(i8* %1) #7, !dbg !79
  store i64 %call, i64* %dataLen, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !80, metadata !DIExpression()), !dbg !81
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !82
  store i8* %call1, i8** %environment, align 8, !dbg !81
  %2 = load i8*, i8** %environment, align 8, !dbg !83
  %cmp = icmp ne i8* %2, null, !dbg !85
  br i1 %cmp, label %if.then, label %if.end, !dbg !86

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !87
  %4 = load i64, i64* %dataLen, align 8, !dbg !89
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !90
  %5 = load i8*, i8** %environment, align 8, !dbg !91
  %6 = load i64, i64* %dataLen, align 8, !dbg !92
  %sub = sub i64 100, %6, !dbg !93
  %sub2 = sub i64 %sub, 1, !dbg !94
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !95
  br label %if.end, !dbg !96

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !97
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion to i8**, !dbg !98
  store i8* %7, i8** %unionFirst, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata i8** %data4, metadata !100, metadata !DIExpression()), !dbg !102
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion to i8**, !dbg !103
  %8 = load i8*, i8** %unionSecond, align 8, !dbg !103
  store i8* %8, i8** %data4, align 8, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i, metadata !104, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i32* %n, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !109, metadata !DIExpression()), !dbg !110
  %9 = load i8*, i8** %data4, align 8, !dbg !111
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !113
  %cmp6 = icmp eq i32 %call5, 1, !dbg !114
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !115

if.then7:                                         ; preds = %if.end
  store i32 0, i32* %intVariable, align 4, !dbg !116
  store i32 0, i32* %i, align 4, !dbg !118
  br label %for.cond, !dbg !120

for.cond:                                         ; preds = %for.inc, %if.then7
  %10 = load i32, i32* %i, align 4, !dbg !121
  %11 = load i32, i32* %n, align 4, !dbg !123
  %cmp8 = icmp slt i32 %10, %11, !dbg !124
  br i1 %cmp8, label %for.body, label %for.end, !dbg !125

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %intVariable, align 4, !dbg !126
  %inc = add nsw i32 %12, 1, !dbg !126
  store i32 %inc, i32* %intVariable, align 4, !dbg !126
  br label %for.inc, !dbg !128

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !129
  %inc9 = add nsw i32 %13, 1, !dbg !129
  store i32 %inc9, i32* %i, align 4, !dbg !129
  br label %for.cond, !dbg !130, !llvm.loop !131

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !134
  call void @printIntLine(i32 %14), !dbg !135
  br label %if.end10, !dbg !136

if.end10:                                         ; preds = %for.end, %if.end
  ret void, !dbg !137
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
define dso_local void @goodG2B() #0 !dbg !138 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !143, metadata !DIExpression()), !dbg !144
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !144
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !144
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !145
  store i8* %arraydecay, i8** %data, align 8, !dbg !146
  %1 = load i8*, i8** %data, align 8, !dbg !147
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !148
  %2 = load i8*, i8** %data, align 8, !dbg !149
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion to i8**, !dbg !150
  store i8* %2, i8** %unionFirst, align 8, !dbg !151
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !152, metadata !DIExpression()), !dbg !154
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion to i8**, !dbg !155
  %3 = load i8*, i8** %unionSecond, align 8, !dbg !155
  store i8* %3, i8** %data1, align 8, !dbg !154
  call void @llvm.dbg.declare(metadata i32* %i, metadata !156, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %n, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !161, metadata !DIExpression()), !dbg !162
  %4 = load i8*, i8** %data1, align 8, !dbg !163
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !165
  %cmp = icmp eq i32 %call2, 1, !dbg !166
  br i1 %cmp, label %if.then, label %if.end, !dbg !167

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !168
  store i32 0, i32* %i, align 4, !dbg !170
  br label %for.cond, !dbg !172

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !173
  %6 = load i32, i32* %n, align 4, !dbg !175
  %cmp3 = icmp slt i32 %5, %6, !dbg !176
  br i1 %cmp3, label %for.body, label %for.end, !dbg !177

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !178
  %inc = add nsw i32 %7, 1, !dbg !178
  store i32 %inc, i32* %intVariable, align 4, !dbg !178
  br label %for.inc, !dbg !180

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !181
  %inc4 = add nsw i32 %8, 1, !dbg !181
  store i32 %inc4, i32* %i, align 4, !dbg !181
  br label %for.cond, !dbg !182, !llvm.loop !183

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !185
  call void @printIntLine(i32 %9), !dbg !186
  br label %if.end, !dbg !187

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !188
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !189 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  %data4 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !194, metadata !DIExpression()), !dbg !195
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !195
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !195
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !196
  store i8* %arraydecay, i8** %data, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !198, metadata !DIExpression()), !dbg !200
  %1 = load i8*, i8** %data, align 8, !dbg !201
  %call = call i64 @strlen(i8* %1) #7, !dbg !202
  store i64 %call, i64* %dataLen, align 8, !dbg !200
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !203, metadata !DIExpression()), !dbg !204
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !205
  store i8* %call1, i8** %environment, align 8, !dbg !204
  %2 = load i8*, i8** %environment, align 8, !dbg !206
  %cmp = icmp ne i8* %2, null, !dbg !208
  br i1 %cmp, label %if.then, label %if.end, !dbg !209

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !210
  %4 = load i64, i64* %dataLen, align 8, !dbg !212
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !213
  %5 = load i8*, i8** %environment, align 8, !dbg !214
  %6 = load i64, i64* %dataLen, align 8, !dbg !215
  %sub = sub i64 100, %6, !dbg !216
  %sub2 = sub i64 %sub, 1, !dbg !217
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #8, !dbg !218
  br label %if.end, !dbg !219

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !220
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion to i8**, !dbg !221
  store i8* %7, i8** %unionFirst, align 8, !dbg !222
  call void @llvm.dbg.declare(metadata i8** %data4, metadata !223, metadata !DIExpression()), !dbg !225
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %myUnion to i8**, !dbg !226
  %8 = load i8*, i8** %unionSecond, align 8, !dbg !226
  store i8* %8, i8** %data4, align 8, !dbg !225
  call void @llvm.dbg.declare(metadata i32* %i, metadata !227, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %n, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !232, metadata !DIExpression()), !dbg !233
  %9 = load i8*, i8** %data4, align 8, !dbg !234
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !236
  %cmp6 = icmp eq i32 %call5, 1, !dbg !237
  br i1 %cmp6, label %if.then7, label %if.end13, !dbg !238

if.then7:                                         ; preds = %if.end
  %10 = load i32, i32* %n, align 4, !dbg !239
  %cmp8 = icmp slt i32 %10, 10000, !dbg !242
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !243

if.then9:                                         ; preds = %if.then7
  store i32 0, i32* %intVariable, align 4, !dbg !244
  store i32 0, i32* %i, align 4, !dbg !246
  br label %for.cond, !dbg !248

for.cond:                                         ; preds = %for.inc, %if.then9
  %11 = load i32, i32* %i, align 4, !dbg !249
  %12 = load i32, i32* %n, align 4, !dbg !251
  %cmp10 = icmp slt i32 %11, %12, !dbg !252
  br i1 %cmp10, label %for.body, label %for.end, !dbg !253

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !254
  %inc = add nsw i32 %13, 1, !dbg !254
  store i32 %inc, i32* %intVariable, align 4, !dbg !254
  br label %for.inc, !dbg !256

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !257
  %inc11 = add nsw i32 %14, 1, !dbg !257
  store i32 %inc11, i32* %i, align 4, !dbg !257
  br label %for.cond, !dbg !258, !llvm.loop !259

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !261
  call void @printIntLine(i32 %15), !dbg !262
  br label %if.end12, !dbg !263

if.end12:                                         ; preds = %for.end, %if.then7
  br label %if.end13, !dbg !264

if.end13:                                         ; preds = %if.end12, %if.end
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_34_good() #0 !dbg !266 {
entry:
  call void @goodG2B(), !dbg !267
  call void @goodB2G(), !dbg !268
  ret void, !dbg !269
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !270 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !275
  %0 = load i8*, i8** %line.addr, align 8, !dbg !276
  %cmp = icmp ne i8* %0, null, !dbg !278
  br i1 %cmp, label %if.then, label %if.end, !dbg !279

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !280
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !282
  br label %if.end, !dbg !283

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !284
  ret void, !dbg !285
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !286 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = load i8*, i8** %line.addr, align 8, !dbg !289
  %cmp = icmp ne i8* %0, null, !dbg !291
  br i1 %cmp, label %if.then, label %if.end, !dbg !292

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !293
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !295
  br label %if.end, !dbg !296

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !297
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !298 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load i32*, i32** %line.addr, align 8, !dbg !305
  %cmp = icmp ne i32* %0, null, !dbg !307
  br i1 %cmp, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !309
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !311
  br label %if.end, !dbg !312

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !313
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !314 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !319
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !320
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !322 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !326, metadata !DIExpression()), !dbg !327
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !328
  %conv = sext i16 %0 to i32, !dbg !328
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !329
  ret void, !dbg !330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !331 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !337
  %conv = fpext float %0 to double, !dbg !337
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !338
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !340 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !346
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !349 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !358
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !359
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !361 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !366
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !367
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !369 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !374
  %conv = sext i8 %0 to i32, !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !377 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !382, metadata !DIExpression()), !dbg !386
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !387
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !388
  store i32 %0, i32* %arrayidx, align 4, !dbg !389
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !390
  store i32 0, i32* %arrayidx1, align 4, !dbg !391
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !393
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !395 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !400
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !401
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !403 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !408
  %conv = zext i8 %0 to i32, !dbg !408
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !411 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !417
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !418
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !420 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !432
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !433
  %1 = load i32, i32* %intOne, align 4, !dbg !433
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !434
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !435
  %3 = load i32, i32* %intTwo, align 4, !dbg !435
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !436
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !438 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !442, metadata !DIExpression()), !dbg !443
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !444, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata i64* %i, metadata !446, metadata !DIExpression()), !dbg !447
  store i64 0, i64* %i, align 8, !dbg !448
  br label %for.cond, !dbg !450

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !451
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !453
  %cmp = icmp ult i64 %0, %1, !dbg !454
  br i1 %cmp, label %for.body, label %for.end, !dbg !455

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !456
  %3 = load i64, i64* %i, align 8, !dbg !458
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !456
  %4 = load i8, i8* %arrayidx, align 1, !dbg !456
  %conv = zext i8 %4 to i32, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !459
  br label %for.inc, !dbg !460

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !461
  %inc = add i64 %5, 1, !dbg !461
  store i64 %inc, i64* %i, align 8, !dbg !461
  br label %for.cond, !dbg !462, !llvm.loop !463

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !465
  ret void, !dbg !466
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !467 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !470, metadata !DIExpression()), !dbg !471
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !472, metadata !DIExpression()), !dbg !473
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !474, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !476, metadata !DIExpression()), !dbg !477
  store i64 0, i64* %numWritten, align 8, !dbg !477
  br label %while.cond, !dbg !478

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !479
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !480
  %cmp = icmp ult i64 %0, %1, !dbg !481
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !482

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !483
  %2 = load i16*, i16** %call, align 8, !dbg !483
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !483
  %4 = load i64, i64* %numWritten, align 8, !dbg !483
  %mul = mul i64 2, %4, !dbg !483
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !483
  %5 = load i8, i8* %arrayidx, align 1, !dbg !483
  %conv = sext i8 %5 to i32, !dbg !483
  %idxprom = sext i32 %conv to i64, !dbg !483
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !483
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !483
  %conv2 = zext i16 %6 to i32, !dbg !483
  %and = and i32 %conv2, 4096, !dbg !483
  %tobool = icmp ne i32 %and, 0, !dbg !483
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !484

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !485
  %7 = load i16*, i16** %call3, align 8, !dbg !485
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !485
  %9 = load i64, i64* %numWritten, align 8, !dbg !485
  %mul4 = mul i64 2, %9, !dbg !485
  %add = add i64 %mul4, 1, !dbg !485
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !485
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !485
  %conv6 = sext i8 %10 to i32, !dbg !485
  %idxprom7 = sext i32 %conv6 to i64, !dbg !485
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !485
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !485
  %conv9 = zext i16 %11 to i32, !dbg !485
  %and10 = and i32 %conv9, 4096, !dbg !485
  %tobool11 = icmp ne i32 %and10, 0, !dbg !484
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !486
  br i1 %12, label %while.body, label %while.end, !dbg !478

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !487, metadata !DIExpression()), !dbg !489
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !490
  %14 = load i64, i64* %numWritten, align 8, !dbg !491
  %mul12 = mul i64 2, %14, !dbg !492
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !490
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !493
  %15 = load i32, i32* %byte, align 4, !dbg !494
  %conv15 = trunc i32 %15 to i8, !dbg !495
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !496
  %17 = load i64, i64* %numWritten, align 8, !dbg !497
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !496
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !498
  %18 = load i64, i64* %numWritten, align 8, !dbg !499
  %inc = add i64 %18, 1, !dbg !499
  store i64 %inc, i64* %numWritten, align 8, !dbg !499
  br label %while.cond, !dbg !478, !llvm.loop !500

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !502
  ret i64 %19, !dbg !503
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !504 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !507, metadata !DIExpression()), !dbg !508
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !509, metadata !DIExpression()), !dbg !510
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !513, metadata !DIExpression()), !dbg !514
  store i64 0, i64* %numWritten, align 8, !dbg !514
  br label %while.cond, !dbg !515

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !516
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !517
  %cmp = icmp ult i64 %0, %1, !dbg !518
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !519

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !520
  %3 = load i64, i64* %numWritten, align 8, !dbg !521
  %mul = mul i64 2, %3, !dbg !522
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !520
  %4 = load i32, i32* %arrayidx, align 4, !dbg !520
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !523
  %tobool = icmp ne i32 %call, 0, !dbg !523
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !524

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !525
  %6 = load i64, i64* %numWritten, align 8, !dbg !526
  %mul1 = mul i64 2, %6, !dbg !527
  %add = add i64 %mul1, 1, !dbg !528
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !525
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !525
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !529
  %tobool4 = icmp ne i32 %call3, 0, !dbg !524
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !530
  br i1 %8, label %while.body, label %while.end, !dbg !515

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !531, metadata !DIExpression()), !dbg !533
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !534
  %10 = load i64, i64* %numWritten, align 8, !dbg !535
  %mul5 = mul i64 2, %10, !dbg !536
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !534
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !537
  %11 = load i32, i32* %byte, align 4, !dbg !538
  %conv = trunc i32 %11 to i8, !dbg !539
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !540
  %13 = load i64, i64* %numWritten, align 8, !dbg !541
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !540
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !542
  %14 = load i64, i64* %numWritten, align 8, !dbg !543
  %inc = add i64 %14, 1, !dbg !543
  store i64 %inc, i64* %numWritten, align 8, !dbg !543
  br label %while.cond, !dbg !515, !llvm.loop !544

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !546
  ret i64 %15, !dbg !547
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !548 {
entry:
  ret i32 1, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !552 {
entry:
  ret i32 0, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !554 {
entry:
  %call = call i32 @rand() #8, !dbg !555
  %rem = srem i32 %call, 2, !dbg !556
  ret i32 %rem, !dbg !557
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !588 {
entry:
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !590 {
entry:
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !592 {
entry:
  ret void, !dbg !593
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_049/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_049/source_code")
!46 = !{}
!47 = !{!22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_34_bad", scope: !45, file: !45, line: 38, type: !53, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 40, type: !42)
!56 = !DILocation(line: 40, column: 12, scope: !52)
!57 = !DILocalVariable(name: "myUnion", scope: !52, file: !45, line: 41, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_environment_34_unionType", file: !59, line: 9, baseType: !60)
!59 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_049/source_code")
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !59, line: 5, size: 64, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !60, file: !59, line: 7, baseType: !42, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !60, file: !59, line: 8, baseType: !42, size: 64)
!64 = !DILocation(line: 41, column: 68, scope: !52)
!65 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 42, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 100)
!69 = !DILocation(line: 42, column: 10, scope: !52)
!70 = !DILocation(line: 43, column: 12, scope: !52)
!71 = !DILocation(line: 43, column: 10, scope: !52)
!72 = !DILocalVariable(name: "dataLen", scope: !73, file: !45, line: 46, type: !74)
!73 = distinct !DILexicalBlock(scope: !52, file: !45, line: 44, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 46, column: 16, scope: !73)
!78 = !DILocation(line: 46, column: 33, scope: !73)
!79 = !DILocation(line: 46, column: 26, scope: !73)
!80 = !DILocalVariable(name: "environment", scope: !73, file: !45, line: 47, type: !42)
!81 = !DILocation(line: 47, column: 16, scope: !73)
!82 = !DILocation(line: 47, column: 30, scope: !73)
!83 = !DILocation(line: 49, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !73, file: !45, line: 49, column: 13)
!85 = !DILocation(line: 49, column: 25, scope: !84)
!86 = !DILocation(line: 49, column: 13, scope: !73)
!87 = !DILocation(line: 52, column: 21, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !45, line: 50, column: 9)
!89 = !DILocation(line: 52, column: 26, scope: !88)
!90 = !DILocation(line: 52, column: 25, scope: !88)
!91 = !DILocation(line: 52, column: 35, scope: !88)
!92 = !DILocation(line: 52, column: 52, scope: !88)
!93 = !DILocation(line: 52, column: 51, scope: !88)
!94 = !DILocation(line: 52, column: 59, scope: !88)
!95 = !DILocation(line: 52, column: 13, scope: !88)
!96 = !DILocation(line: 53, column: 9, scope: !88)
!97 = !DILocation(line: 55, column: 26, scope: !52)
!98 = !DILocation(line: 55, column: 13, scope: !52)
!99 = !DILocation(line: 55, column: 24, scope: !52)
!100 = !DILocalVariable(name: "data", scope: !101, file: !45, line: 57, type: !42)
!101 = distinct !DILexicalBlock(scope: !52, file: !45, line: 56, column: 5)
!102 = !DILocation(line: 57, column: 16, scope: !101)
!103 = !DILocation(line: 57, column: 31, scope: !101)
!104 = !DILocalVariable(name: "i", scope: !105, file: !45, line: 59, type: !23)
!105 = distinct !DILexicalBlock(scope: !101, file: !45, line: 58, column: 9)
!106 = !DILocation(line: 59, column: 17, scope: !105)
!107 = !DILocalVariable(name: "n", scope: !105, file: !45, line: 59, type: !23)
!108 = !DILocation(line: 59, column: 20, scope: !105)
!109 = !DILocalVariable(name: "intVariable", scope: !105, file: !45, line: 59, type: !23)
!110 = !DILocation(line: 59, column: 23, scope: !105)
!111 = !DILocation(line: 60, column: 24, scope: !112)
!112 = distinct !DILexicalBlock(scope: !105, file: !45, line: 60, column: 17)
!113 = !DILocation(line: 60, column: 17, scope: !112)
!114 = !DILocation(line: 60, column: 40, scope: !112)
!115 = !DILocation(line: 60, column: 17, scope: !105)
!116 = !DILocation(line: 63, column: 29, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !45, line: 61, column: 13)
!118 = !DILocation(line: 64, column: 24, scope: !119)
!119 = distinct !DILexicalBlock(scope: !117, file: !45, line: 64, column: 17)
!120 = !DILocation(line: 64, column: 22, scope: !119)
!121 = !DILocation(line: 64, column: 29, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !45, line: 64, column: 17)
!123 = !DILocation(line: 64, column: 33, scope: !122)
!124 = !DILocation(line: 64, column: 31, scope: !122)
!125 = !DILocation(line: 64, column: 17, scope: !119)
!126 = !DILocation(line: 67, column: 32, scope: !127)
!127 = distinct !DILexicalBlock(scope: !122, file: !45, line: 65, column: 17)
!128 = !DILocation(line: 68, column: 17, scope: !127)
!129 = !DILocation(line: 64, column: 37, scope: !122)
!130 = !DILocation(line: 64, column: 17, scope: !122)
!131 = distinct !{!131, !125, !132, !133}
!132 = !DILocation(line: 68, column: 17, scope: !119)
!133 = !{!"llvm.loop.mustprogress"}
!134 = !DILocation(line: 69, column: 30, scope: !117)
!135 = !DILocation(line: 69, column: 17, scope: !117)
!136 = !DILocation(line: 70, column: 13, scope: !117)
!137 = !DILocation(line: 73, column: 1, scope: !52)
!138 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 80, type: !53, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!139 = !DILocalVariable(name: "data", scope: !138, file: !45, line: 82, type: !42)
!140 = !DILocation(line: 82, column: 12, scope: !138)
!141 = !DILocalVariable(name: "myUnion", scope: !138, file: !45, line: 83, type: !58)
!142 = !DILocation(line: 83, column: 68, scope: !138)
!143 = !DILocalVariable(name: "dataBuffer", scope: !138, file: !45, line: 84, type: !66)
!144 = !DILocation(line: 84, column: 10, scope: !138)
!145 = !DILocation(line: 85, column: 12, scope: !138)
!146 = !DILocation(line: 85, column: 10, scope: !138)
!147 = !DILocation(line: 87, column: 12, scope: !138)
!148 = !DILocation(line: 87, column: 5, scope: !138)
!149 = !DILocation(line: 88, column: 26, scope: !138)
!150 = !DILocation(line: 88, column: 13, scope: !138)
!151 = !DILocation(line: 88, column: 24, scope: !138)
!152 = !DILocalVariable(name: "data", scope: !153, file: !45, line: 90, type: !42)
!153 = distinct !DILexicalBlock(scope: !138, file: !45, line: 89, column: 5)
!154 = !DILocation(line: 90, column: 16, scope: !153)
!155 = !DILocation(line: 90, column: 31, scope: !153)
!156 = !DILocalVariable(name: "i", scope: !157, file: !45, line: 92, type: !23)
!157 = distinct !DILexicalBlock(scope: !153, file: !45, line: 91, column: 9)
!158 = !DILocation(line: 92, column: 17, scope: !157)
!159 = !DILocalVariable(name: "n", scope: !157, file: !45, line: 92, type: !23)
!160 = !DILocation(line: 92, column: 20, scope: !157)
!161 = !DILocalVariable(name: "intVariable", scope: !157, file: !45, line: 92, type: !23)
!162 = !DILocation(line: 92, column: 23, scope: !157)
!163 = !DILocation(line: 93, column: 24, scope: !164)
!164 = distinct !DILexicalBlock(scope: !157, file: !45, line: 93, column: 17)
!165 = !DILocation(line: 93, column: 17, scope: !164)
!166 = !DILocation(line: 93, column: 40, scope: !164)
!167 = !DILocation(line: 93, column: 17, scope: !157)
!168 = !DILocation(line: 96, column: 29, scope: !169)
!169 = distinct !DILexicalBlock(scope: !164, file: !45, line: 94, column: 13)
!170 = !DILocation(line: 97, column: 24, scope: !171)
!171 = distinct !DILexicalBlock(scope: !169, file: !45, line: 97, column: 17)
!172 = !DILocation(line: 97, column: 22, scope: !171)
!173 = !DILocation(line: 97, column: 29, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !45, line: 97, column: 17)
!175 = !DILocation(line: 97, column: 33, scope: !174)
!176 = !DILocation(line: 97, column: 31, scope: !174)
!177 = !DILocation(line: 97, column: 17, scope: !171)
!178 = !DILocation(line: 100, column: 32, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !45, line: 98, column: 17)
!180 = !DILocation(line: 101, column: 17, scope: !179)
!181 = !DILocation(line: 97, column: 37, scope: !174)
!182 = !DILocation(line: 97, column: 17, scope: !174)
!183 = distinct !{!183, !177, !184, !133}
!184 = !DILocation(line: 101, column: 17, scope: !171)
!185 = !DILocation(line: 102, column: 30, scope: !169)
!186 = !DILocation(line: 102, column: 17, scope: !169)
!187 = !DILocation(line: 103, column: 13, scope: !169)
!188 = !DILocation(line: 106, column: 1, scope: !138)
!189 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 109, type: !53, scopeLine: 110, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!190 = !DILocalVariable(name: "data", scope: !189, file: !45, line: 111, type: !42)
!191 = !DILocation(line: 111, column: 12, scope: !189)
!192 = !DILocalVariable(name: "myUnion", scope: !189, file: !45, line: 112, type: !58)
!193 = !DILocation(line: 112, column: 68, scope: !189)
!194 = !DILocalVariable(name: "dataBuffer", scope: !189, file: !45, line: 113, type: !66)
!195 = !DILocation(line: 113, column: 10, scope: !189)
!196 = !DILocation(line: 114, column: 12, scope: !189)
!197 = !DILocation(line: 114, column: 10, scope: !189)
!198 = !DILocalVariable(name: "dataLen", scope: !199, file: !45, line: 117, type: !74)
!199 = distinct !DILexicalBlock(scope: !189, file: !45, line: 115, column: 5)
!200 = !DILocation(line: 117, column: 16, scope: !199)
!201 = !DILocation(line: 117, column: 33, scope: !199)
!202 = !DILocation(line: 117, column: 26, scope: !199)
!203 = !DILocalVariable(name: "environment", scope: !199, file: !45, line: 118, type: !42)
!204 = !DILocation(line: 118, column: 16, scope: !199)
!205 = !DILocation(line: 118, column: 30, scope: !199)
!206 = !DILocation(line: 120, column: 13, scope: !207)
!207 = distinct !DILexicalBlock(scope: !199, file: !45, line: 120, column: 13)
!208 = !DILocation(line: 120, column: 25, scope: !207)
!209 = !DILocation(line: 120, column: 13, scope: !199)
!210 = !DILocation(line: 123, column: 21, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !45, line: 121, column: 9)
!212 = !DILocation(line: 123, column: 26, scope: !211)
!213 = !DILocation(line: 123, column: 25, scope: !211)
!214 = !DILocation(line: 123, column: 35, scope: !211)
!215 = !DILocation(line: 123, column: 52, scope: !211)
!216 = !DILocation(line: 123, column: 51, scope: !211)
!217 = !DILocation(line: 123, column: 59, scope: !211)
!218 = !DILocation(line: 123, column: 13, scope: !211)
!219 = !DILocation(line: 124, column: 9, scope: !211)
!220 = !DILocation(line: 126, column: 26, scope: !189)
!221 = !DILocation(line: 126, column: 13, scope: !189)
!222 = !DILocation(line: 126, column: 24, scope: !189)
!223 = !DILocalVariable(name: "data", scope: !224, file: !45, line: 128, type: !42)
!224 = distinct !DILexicalBlock(scope: !189, file: !45, line: 127, column: 5)
!225 = !DILocation(line: 128, column: 16, scope: !224)
!226 = !DILocation(line: 128, column: 31, scope: !224)
!227 = !DILocalVariable(name: "i", scope: !228, file: !45, line: 130, type: !23)
!228 = distinct !DILexicalBlock(scope: !224, file: !45, line: 129, column: 9)
!229 = !DILocation(line: 130, column: 17, scope: !228)
!230 = !DILocalVariable(name: "n", scope: !228, file: !45, line: 130, type: !23)
!231 = !DILocation(line: 130, column: 20, scope: !228)
!232 = !DILocalVariable(name: "intVariable", scope: !228, file: !45, line: 130, type: !23)
!233 = !DILocation(line: 130, column: 23, scope: !228)
!234 = !DILocation(line: 131, column: 24, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !45, line: 131, column: 17)
!236 = !DILocation(line: 131, column: 17, scope: !235)
!237 = !DILocation(line: 131, column: 40, scope: !235)
!238 = !DILocation(line: 131, column: 17, scope: !228)
!239 = !DILocation(line: 134, column: 21, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !45, line: 134, column: 21)
!241 = distinct !DILexicalBlock(scope: !235, file: !45, line: 132, column: 13)
!242 = !DILocation(line: 134, column: 23, scope: !240)
!243 = !DILocation(line: 134, column: 21, scope: !241)
!244 = !DILocation(line: 136, column: 33, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !45, line: 135, column: 17)
!246 = !DILocation(line: 137, column: 28, scope: !247)
!247 = distinct !DILexicalBlock(scope: !245, file: !45, line: 137, column: 21)
!248 = !DILocation(line: 137, column: 26, scope: !247)
!249 = !DILocation(line: 137, column: 33, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !45, line: 137, column: 21)
!251 = !DILocation(line: 137, column: 37, scope: !250)
!252 = !DILocation(line: 137, column: 35, scope: !250)
!253 = !DILocation(line: 137, column: 21, scope: !247)
!254 = !DILocation(line: 140, column: 36, scope: !255)
!255 = distinct !DILexicalBlock(scope: !250, file: !45, line: 138, column: 21)
!256 = !DILocation(line: 141, column: 21, scope: !255)
!257 = !DILocation(line: 137, column: 41, scope: !250)
!258 = !DILocation(line: 137, column: 21, scope: !250)
!259 = distinct !{!259, !253, !260, !133}
!260 = !DILocation(line: 141, column: 21, scope: !247)
!261 = !DILocation(line: 142, column: 34, scope: !245)
!262 = !DILocation(line: 142, column: 21, scope: !245)
!263 = !DILocation(line: 143, column: 17, scope: !245)
!264 = !DILocation(line: 144, column: 13, scope: !241)
!265 = !DILocation(line: 147, column: 1, scope: !189)
!266 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_34_good", scope: !45, file: !45, line: 149, type: !53, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!267 = !DILocation(line: 151, column: 5, scope: !266)
!268 = !DILocation(line: 152, column: 5, scope: !266)
!269 = !DILocation(line: 153, column: 1, scope: !266)
!270 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !271, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !42}
!273 = !DILocalVariable(name: "line", arg: 1, scope: !270, file: !3, line: 11, type: !42)
!274 = !DILocation(line: 11, column: 25, scope: !270)
!275 = !DILocation(line: 13, column: 1, scope: !270)
!276 = !DILocation(line: 14, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !270, file: !3, line: 14, column: 8)
!278 = !DILocation(line: 14, column: 13, scope: !277)
!279 = !DILocation(line: 14, column: 8, scope: !270)
!280 = !DILocation(line: 16, column: 24, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !3, line: 15, column: 5)
!282 = !DILocation(line: 16, column: 9, scope: !281)
!283 = !DILocation(line: 17, column: 5, scope: !281)
!284 = !DILocation(line: 18, column: 5, scope: !270)
!285 = !DILocation(line: 19, column: 1, scope: !270)
!286 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !271, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!287 = !DILocalVariable(name: "line", arg: 1, scope: !286, file: !3, line: 20, type: !42)
!288 = !DILocation(line: 20, column: 29, scope: !286)
!289 = !DILocation(line: 22, column: 8, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !3, line: 22, column: 8)
!291 = !DILocation(line: 22, column: 13, scope: !290)
!292 = !DILocation(line: 22, column: 8, scope: !286)
!293 = !DILocation(line: 24, column: 24, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !3, line: 23, column: 5)
!295 = !DILocation(line: 24, column: 9, scope: !294)
!296 = !DILocation(line: 25, column: 5, scope: !294)
!297 = !DILocation(line: 26, column: 1, scope: !286)
!298 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !299, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !23)
!303 = !DILocalVariable(name: "line", arg: 1, scope: !298, file: !3, line: 27, type: !301)
!304 = !DILocation(line: 27, column: 29, scope: !298)
!305 = !DILocation(line: 29, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !298, file: !3, line: 29, column: 8)
!307 = !DILocation(line: 29, column: 13, scope: !306)
!308 = !DILocation(line: 29, column: 8, scope: !298)
!309 = !DILocation(line: 31, column: 27, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !3, line: 30, column: 5)
!311 = !DILocation(line: 31, column: 9, scope: !310)
!312 = !DILocation(line: 32, column: 5, scope: !310)
!313 = !DILocation(line: 33, column: 1, scope: !298)
!314 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !315, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !23}
!317 = !DILocalVariable(name: "intNumber", arg: 1, scope: !314, file: !3, line: 35, type: !23)
!318 = !DILocation(line: 35, column: 24, scope: !314)
!319 = !DILocation(line: 37, column: 20, scope: !314)
!320 = !DILocation(line: 37, column: 5, scope: !314)
!321 = !DILocation(line: 38, column: 1, scope: !314)
!322 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !323, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !325}
!325 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!326 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !322, file: !3, line: 40, type: !325)
!327 = !DILocation(line: 40, column: 28, scope: !322)
!328 = !DILocation(line: 42, column: 21, scope: !322)
!329 = !DILocation(line: 42, column: 5, scope: !322)
!330 = !DILocation(line: 43, column: 1, scope: !322)
!331 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !332, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !334}
!334 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!335 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !331, file: !3, line: 45, type: !334)
!336 = !DILocation(line: 45, column: 28, scope: !331)
!337 = !DILocation(line: 47, column: 20, scope: !331)
!338 = !DILocation(line: 47, column: 5, scope: !331)
!339 = !DILocation(line: 48, column: 1, scope: !331)
!340 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !341, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !343}
!343 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!344 = !DILocalVariable(name: "longNumber", arg: 1, scope: !340, file: !3, line: 50, type: !343)
!345 = !DILocation(line: 50, column: 26, scope: !340)
!346 = !DILocation(line: 52, column: 21, scope: !340)
!347 = !DILocation(line: 52, column: 5, scope: !340)
!348 = !DILocation(line: 53, column: 1, scope: !340)
!349 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !350, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !352}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !353, line: 27, baseType: !354)
!353 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !355, line: 44, baseType: !343)
!355 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!356 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !349, file: !3, line: 55, type: !352)
!357 = !DILocation(line: 55, column: 33, scope: !349)
!358 = !DILocation(line: 57, column: 29, scope: !349)
!359 = !DILocation(line: 57, column: 5, scope: !349)
!360 = !DILocation(line: 58, column: 1, scope: !349)
!361 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !362, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !74}
!364 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !361, file: !3, line: 60, type: !74)
!365 = !DILocation(line: 60, column: 29, scope: !361)
!366 = !DILocation(line: 62, column: 21, scope: !361)
!367 = !DILocation(line: 62, column: 5, scope: !361)
!368 = !DILocation(line: 63, column: 1, scope: !361)
!369 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !370, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !43}
!372 = !DILocalVariable(name: "charHex", arg: 1, scope: !369, file: !3, line: 65, type: !43)
!373 = !DILocation(line: 65, column: 29, scope: !369)
!374 = !DILocation(line: 67, column: 22, scope: !369)
!375 = !DILocation(line: 67, column: 5, scope: !369)
!376 = !DILocation(line: 68, column: 1, scope: !369)
!377 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !378, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !302}
!380 = !DILocalVariable(name: "wideChar", arg: 1, scope: !377, file: !3, line: 70, type: !302)
!381 = !DILocation(line: 70, column: 29, scope: !377)
!382 = !DILocalVariable(name: "s", scope: !377, file: !3, line: 74, type: !383)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 64, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 2)
!386 = !DILocation(line: 74, column: 13, scope: !377)
!387 = !DILocation(line: 75, column: 16, scope: !377)
!388 = !DILocation(line: 75, column: 9, scope: !377)
!389 = !DILocation(line: 75, column: 14, scope: !377)
!390 = !DILocation(line: 76, column: 9, scope: !377)
!391 = !DILocation(line: 76, column: 14, scope: !377)
!392 = !DILocation(line: 77, column: 21, scope: !377)
!393 = !DILocation(line: 77, column: 5, scope: !377)
!394 = !DILocation(line: 78, column: 1, scope: !377)
!395 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !396, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !7}
!398 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !395, file: !3, line: 80, type: !7)
!399 = !DILocation(line: 80, column: 33, scope: !395)
!400 = !DILocation(line: 82, column: 20, scope: !395)
!401 = !DILocation(line: 82, column: 5, scope: !395)
!402 = !DILocation(line: 83, column: 1, scope: !395)
!403 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !404, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !25}
!406 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !403, file: !3, line: 85, type: !25)
!407 = !DILocation(line: 85, column: 45, scope: !403)
!408 = !DILocation(line: 87, column: 22, scope: !403)
!409 = !DILocation(line: 87, column: 5, scope: !403)
!410 = !DILocation(line: 88, column: 1, scope: !403)
!411 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !412, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !414}
!414 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!415 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !411, file: !3, line: 90, type: !414)
!416 = !DILocation(line: 90, column: 29, scope: !411)
!417 = !DILocation(line: 92, column: 20, scope: !411)
!418 = !DILocation(line: 92, column: 5, scope: !411)
!419 = !DILocation(line: 93, column: 1, scope: !411)
!420 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !421, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !425, line: 100, baseType: !426)
!425 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_049/source_code")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !425, line: 96, size: 64, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !426, file: !425, line: 98, baseType: !23, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !426, file: !425, line: 99, baseType: !23, size: 32, offset: 32)
!430 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !420, file: !3, line: 95, type: !423)
!431 = !DILocation(line: 95, column: 40, scope: !420)
!432 = !DILocation(line: 97, column: 26, scope: !420)
!433 = !DILocation(line: 97, column: 47, scope: !420)
!434 = !DILocation(line: 97, column: 55, scope: !420)
!435 = !DILocation(line: 97, column: 76, scope: !420)
!436 = !DILocation(line: 97, column: 5, scope: !420)
!437 = !DILocation(line: 98, column: 1, scope: !420)
!438 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !439, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !441, !74}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!442 = !DILocalVariable(name: "bytes", arg: 1, scope: !438, file: !3, line: 100, type: !441)
!443 = !DILocation(line: 100, column: 38, scope: !438)
!444 = !DILocalVariable(name: "numBytes", arg: 2, scope: !438, file: !3, line: 100, type: !74)
!445 = !DILocation(line: 100, column: 52, scope: !438)
!446 = !DILocalVariable(name: "i", scope: !438, file: !3, line: 102, type: !74)
!447 = !DILocation(line: 102, column: 12, scope: !438)
!448 = !DILocation(line: 103, column: 12, scope: !449)
!449 = distinct !DILexicalBlock(scope: !438, file: !3, line: 103, column: 5)
!450 = !DILocation(line: 103, column: 10, scope: !449)
!451 = !DILocation(line: 103, column: 17, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !3, line: 103, column: 5)
!453 = !DILocation(line: 103, column: 21, scope: !452)
!454 = !DILocation(line: 103, column: 19, scope: !452)
!455 = !DILocation(line: 103, column: 5, scope: !449)
!456 = !DILocation(line: 105, column: 24, scope: !457)
!457 = distinct !DILexicalBlock(scope: !452, file: !3, line: 104, column: 5)
!458 = !DILocation(line: 105, column: 30, scope: !457)
!459 = !DILocation(line: 105, column: 9, scope: !457)
!460 = !DILocation(line: 106, column: 5, scope: !457)
!461 = !DILocation(line: 103, column: 31, scope: !452)
!462 = !DILocation(line: 103, column: 5, scope: !452)
!463 = distinct !{!463, !455, !464, !133}
!464 = !DILocation(line: 106, column: 5, scope: !449)
!465 = !DILocation(line: 107, column: 5, scope: !438)
!466 = !DILocation(line: 108, column: 1, scope: !438)
!467 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !468, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!468 = !DISubroutineType(types: !469)
!469 = !{!74, !441, !74, !42}
!470 = !DILocalVariable(name: "bytes", arg: 1, scope: !467, file: !3, line: 113, type: !441)
!471 = !DILocation(line: 113, column: 39, scope: !467)
!472 = !DILocalVariable(name: "numBytes", arg: 2, scope: !467, file: !3, line: 113, type: !74)
!473 = !DILocation(line: 113, column: 53, scope: !467)
!474 = !DILocalVariable(name: "hex", arg: 3, scope: !467, file: !3, line: 113, type: !42)
!475 = !DILocation(line: 113, column: 71, scope: !467)
!476 = !DILocalVariable(name: "numWritten", scope: !467, file: !3, line: 115, type: !74)
!477 = !DILocation(line: 115, column: 12, scope: !467)
!478 = !DILocation(line: 121, column: 5, scope: !467)
!479 = !DILocation(line: 121, column: 12, scope: !467)
!480 = !DILocation(line: 121, column: 25, scope: !467)
!481 = !DILocation(line: 121, column: 23, scope: !467)
!482 = !DILocation(line: 121, column: 34, scope: !467)
!483 = !DILocation(line: 121, column: 37, scope: !467)
!484 = !DILocation(line: 121, column: 67, scope: !467)
!485 = !DILocation(line: 121, column: 70, scope: !467)
!486 = !DILocation(line: 0, scope: !467)
!487 = !DILocalVariable(name: "byte", scope: !488, file: !3, line: 123, type: !23)
!488 = distinct !DILexicalBlock(scope: !467, file: !3, line: 122, column: 5)
!489 = !DILocation(line: 123, column: 13, scope: !488)
!490 = !DILocation(line: 124, column: 17, scope: !488)
!491 = !DILocation(line: 124, column: 25, scope: !488)
!492 = !DILocation(line: 124, column: 23, scope: !488)
!493 = !DILocation(line: 124, column: 9, scope: !488)
!494 = !DILocation(line: 125, column: 45, scope: !488)
!495 = !DILocation(line: 125, column: 29, scope: !488)
!496 = !DILocation(line: 125, column: 9, scope: !488)
!497 = !DILocation(line: 125, column: 15, scope: !488)
!498 = !DILocation(line: 125, column: 27, scope: !488)
!499 = !DILocation(line: 126, column: 9, scope: !488)
!500 = distinct !{!500, !478, !501, !133}
!501 = !DILocation(line: 127, column: 5, scope: !467)
!502 = !DILocation(line: 129, column: 12, scope: !467)
!503 = !DILocation(line: 129, column: 5, scope: !467)
!504 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !505, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DISubroutineType(types: !506)
!506 = !{!74, !441, !74, !301}
!507 = !DILocalVariable(name: "bytes", arg: 1, scope: !504, file: !3, line: 135, type: !441)
!508 = !DILocation(line: 135, column: 41, scope: !504)
!509 = !DILocalVariable(name: "numBytes", arg: 2, scope: !504, file: !3, line: 135, type: !74)
!510 = !DILocation(line: 135, column: 55, scope: !504)
!511 = !DILocalVariable(name: "hex", arg: 3, scope: !504, file: !3, line: 135, type: !301)
!512 = !DILocation(line: 135, column: 76, scope: !504)
!513 = !DILocalVariable(name: "numWritten", scope: !504, file: !3, line: 137, type: !74)
!514 = !DILocation(line: 137, column: 12, scope: !504)
!515 = !DILocation(line: 143, column: 5, scope: !504)
!516 = !DILocation(line: 143, column: 12, scope: !504)
!517 = !DILocation(line: 143, column: 25, scope: !504)
!518 = !DILocation(line: 143, column: 23, scope: !504)
!519 = !DILocation(line: 143, column: 34, scope: !504)
!520 = !DILocation(line: 143, column: 47, scope: !504)
!521 = !DILocation(line: 143, column: 55, scope: !504)
!522 = !DILocation(line: 143, column: 53, scope: !504)
!523 = !DILocation(line: 143, column: 37, scope: !504)
!524 = !DILocation(line: 143, column: 68, scope: !504)
!525 = !DILocation(line: 143, column: 81, scope: !504)
!526 = !DILocation(line: 143, column: 89, scope: !504)
!527 = !DILocation(line: 143, column: 87, scope: !504)
!528 = !DILocation(line: 143, column: 100, scope: !504)
!529 = !DILocation(line: 143, column: 71, scope: !504)
!530 = !DILocation(line: 0, scope: !504)
!531 = !DILocalVariable(name: "byte", scope: !532, file: !3, line: 145, type: !23)
!532 = distinct !DILexicalBlock(scope: !504, file: !3, line: 144, column: 5)
!533 = !DILocation(line: 145, column: 13, scope: !532)
!534 = !DILocation(line: 146, column: 18, scope: !532)
!535 = !DILocation(line: 146, column: 26, scope: !532)
!536 = !DILocation(line: 146, column: 24, scope: !532)
!537 = !DILocation(line: 146, column: 9, scope: !532)
!538 = !DILocation(line: 147, column: 45, scope: !532)
!539 = !DILocation(line: 147, column: 29, scope: !532)
!540 = !DILocation(line: 147, column: 9, scope: !532)
!541 = !DILocation(line: 147, column: 15, scope: !532)
!542 = !DILocation(line: 147, column: 27, scope: !532)
!543 = !DILocation(line: 148, column: 9, scope: !532)
!544 = distinct !{!544, !515, !545, !133}
!545 = !DILocation(line: 149, column: 5, scope: !504)
!546 = !DILocation(line: 151, column: 12, scope: !504)
!547 = !DILocation(line: 151, column: 5, scope: !504)
!548 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !549, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DISubroutineType(types: !550)
!550 = !{!23}
!551 = !DILocation(line: 158, column: 5, scope: !548)
!552 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !549, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 163, column: 5, scope: !552)
!554 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !549, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 168, column: 13, scope: !554)
!556 = !DILocation(line: 168, column: 20, scope: !554)
!557 = !DILocation(line: 168, column: 5, scope: !554)
!558 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 187, column: 16, scope: !558)
!560 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 188, column: 16, scope: !560)
!562 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DILocation(line: 189, column: 16, scope: !562)
!564 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 190, column: 16, scope: !564)
!566 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 191, column: 16, scope: !566)
!568 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 192, column: 16, scope: !568)
!570 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 193, column: 16, scope: !570)
!572 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 194, column: 16, scope: !572)
!574 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DILocation(line: 195, column: 16, scope: !574)
!576 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 198, column: 15, scope: !576)
!578 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 199, column: 15, scope: !578)
!580 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 200, column: 15, scope: !580)
!582 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DILocation(line: 201, column: 15, scope: !582)
!584 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DILocation(line: 202, column: 15, scope: !584)
!586 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DILocation(line: 203, column: 15, scope: !586)
!588 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DILocation(line: 204, column: 15, scope: !588)
!590 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!591 = !DILocation(line: 205, column: 15, scope: !590)
!592 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DILocation(line: 206, column: 15, scope: !592)
