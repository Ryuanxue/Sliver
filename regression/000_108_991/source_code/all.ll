; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_14_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  %1 = load i32, i32* @globalFive, align 4, !dbg !64
  %cmp = icmp eq i32 %1, 5, !dbg !66
  br i1 %cmp, label %if.then, label %if.end21, !dbg !67

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !68, metadata !DIExpression()), !dbg !74
  %2 = load i8*, i8** %data, align 8, !dbg !75
  %call = call i64 @strlen(i8* %2) #7, !dbg !76
  store i64 %call, i64* %dataLen, align 8, !dbg !74
  %3 = load i64, i64* %dataLen, align 8, !dbg !77
  %sub = sub i64 100, %3, !dbg !79
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !80
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !81

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !82
  %5 = load i64, i64* %dataLen, align 8, !dbg !85
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !86
  %6 = load i64, i64* %dataLen, align 8, !dbg !87
  %sub3 = sub i64 100, %6, !dbg !88
  %conv = trunc i64 %sub3 to i32, !dbg !89
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !90
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !91
  %cmp5 = icmp ne i8* %call4, null, !dbg !92
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !93

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !94
  %call8 = call i64 @strlen(i8* %8) #7, !dbg !96
  store i64 %call8, i64* %dataLen, align 8, !dbg !97
  %9 = load i64, i64* %dataLen, align 8, !dbg !98
  %cmp9 = icmp ugt i64 %9, 0, !dbg !100
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !101

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !102
  %11 = load i64, i64* %dataLen, align 8, !dbg !103
  %sub11 = sub i64 %11, 1, !dbg !104
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !102
  %12 = load i8, i8* %arrayidx, align 1, !dbg !102
  %conv12 = sext i8 %12 to i32, !dbg !102
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !105
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !106

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !107
  %14 = load i64, i64* %dataLen, align 8, !dbg !109
  %sub16 = sub i64 %14, 1, !dbg !110
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !107
  store i8 0, i8* %arrayidx17, align 1, !dbg !111
  br label %if.end, !dbg !112

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !113

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !114
  %15 = load i8*, i8** %data, align 8, !dbg !116
  %16 = load i64, i64* %dataLen, align 8, !dbg !117
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !116
  store i8 0, i8* %arrayidx18, align 1, !dbg !118
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !119

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !120

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @globalFive, align 4, !dbg !121
  %cmp22 = icmp eq i32 %17, 5, !dbg !123
  br i1 %cmp22, label %if.then24, label %if.end33, !dbg !124

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !125, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %n, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !131, metadata !DIExpression()), !dbg !132
  %18 = load i8*, i8** %data, align 8, !dbg !133
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !135
  %cmp26 = icmp eq i32 %call25, 1, !dbg !136
  br i1 %cmp26, label %if.then28, label %if.end32, !dbg !137

if.then28:                                        ; preds = %if.then24
  store i32 0, i32* %intVariable, align 4, !dbg !138
  store i32 0, i32* %i, align 4, !dbg !140
  br label %for.cond, !dbg !142

for.cond:                                         ; preds = %for.inc, %if.then28
  %19 = load i32, i32* %i, align 4, !dbg !143
  %20 = load i32, i32* %n, align 4, !dbg !145
  %cmp29 = icmp slt i32 %19, %20, !dbg !146
  br i1 %cmp29, label %for.body, label %for.end, !dbg !147

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !148
  %inc = add nsw i32 %21, 1, !dbg !148
  store i32 %inc, i32* %intVariable, align 4, !dbg !148
  br label %for.inc, !dbg !150

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !151
  %inc31 = add nsw i32 %22, 1, !dbg !151
  store i32 %inc31, i32* %i, align 4, !dbg !151
  br label %for.cond, !dbg !152, !llvm.loop !153

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !156
  call void @printIntLine(i32 %23), !dbg !157
  br label %if.end32, !dbg !158

if.end32:                                         ; preds = %for.end, %if.then24
  br label %if.end33, !dbg !159

if.end33:                                         ; preds = %if.end32, %if.end21
  ret void, !dbg !160
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !161 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !165
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !165
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !166
  store i8* %arraydecay, i8** %data, align 8, !dbg !167
  %1 = load i32, i32* @globalFive, align 4, !dbg !168
  %cmp = icmp eq i32 %1, 5, !dbg !170
  br i1 %cmp, label %if.then, label %if.end21, !dbg !171

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !172, metadata !DIExpression()), !dbg !175
  %2 = load i8*, i8** %data, align 8, !dbg !176
  %call = call i64 @strlen(i8* %2) #7, !dbg !177
  store i64 %call, i64* %dataLen, align 8, !dbg !175
  %3 = load i64, i64* %dataLen, align 8, !dbg !178
  %sub = sub i64 100, %3, !dbg !180
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !181
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !182

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !183
  %5 = load i64, i64* %dataLen, align 8, !dbg !186
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !187
  %6 = load i64, i64* %dataLen, align 8, !dbg !188
  %sub3 = sub i64 100, %6, !dbg !189
  %conv = trunc i64 %sub3 to i32, !dbg !190
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !191
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !192
  %cmp5 = icmp ne i8* %call4, null, !dbg !193
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !194

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !195
  %call8 = call i64 @strlen(i8* %8) #7, !dbg !197
  store i64 %call8, i64* %dataLen, align 8, !dbg !198
  %9 = load i64, i64* %dataLen, align 8, !dbg !199
  %cmp9 = icmp ugt i64 %9, 0, !dbg !201
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !202

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !203
  %11 = load i64, i64* %dataLen, align 8, !dbg !204
  %sub11 = sub i64 %11, 1, !dbg !205
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !203
  %12 = load i8, i8* %arrayidx, align 1, !dbg !203
  %conv12 = sext i8 %12 to i32, !dbg !203
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !206
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !207

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !208
  %14 = load i64, i64* %dataLen, align 8, !dbg !210
  %sub16 = sub i64 %14, 1, !dbg !211
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !208
  store i8 0, i8* %arrayidx17, align 1, !dbg !212
  br label %if.end, !dbg !213

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !214

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !215
  %15 = load i8*, i8** %data, align 8, !dbg !217
  %16 = load i64, i64* %dataLen, align 8, !dbg !218
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !217
  store i8 0, i8* %arrayidx18, align 1, !dbg !219
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !220

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !221

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @globalFive, align 4, !dbg !222
  %cmp22 = icmp ne i32 %17, 5, !dbg !224
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !225

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !226
  br label %if.end38, !dbg !228

if.else25:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !229, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata i32* %n, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !235, metadata !DIExpression()), !dbg !236
  %18 = load i8*, i8** %data, align 8, !dbg !237
  %call26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !239
  %cmp27 = icmp eq i32 %call26, 1, !dbg !240
  br i1 %cmp27, label %if.then29, label %if.end37, !dbg !241

if.then29:                                        ; preds = %if.else25
  %19 = load i32, i32* %n, align 4, !dbg !242
  %cmp30 = icmp slt i32 %19, 10000, !dbg !245
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !246

if.then32:                                        ; preds = %if.then29
  store i32 0, i32* %intVariable, align 4, !dbg !247
  store i32 0, i32* %i, align 4, !dbg !249
  br label %for.cond, !dbg !251

for.cond:                                         ; preds = %for.inc, %if.then32
  %20 = load i32, i32* %i, align 4, !dbg !252
  %21 = load i32, i32* %n, align 4, !dbg !254
  %cmp33 = icmp slt i32 %20, %21, !dbg !255
  br i1 %cmp33, label %for.body, label %for.end, !dbg !256

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !257
  %inc = add nsw i32 %22, 1, !dbg !257
  store i32 %inc, i32* %intVariable, align 4, !dbg !257
  br label %for.inc, !dbg !259

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !260
  %inc35 = add nsw i32 %23, 1, !dbg !260
  store i32 %inc35, i32* %i, align 4, !dbg !260
  br label %for.cond, !dbg !261, !llvm.loop !262

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !264
  call void @printIntLine(i32 %24), !dbg !265
  br label %if.end36, !dbg !266

if.end36:                                         ; preds = %for.end, %if.then29
  br label %if.end37, !dbg !267

if.end37:                                         ; preds = %if.end36, %if.else25
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !269 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !273
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !273
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !274
  store i8* %arraydecay, i8** %data, align 8, !dbg !275
  %1 = load i32, i32* @globalFive, align 4, !dbg !276
  %cmp = icmp eq i32 %1, 5, !dbg !278
  br i1 %cmp, label %if.then, label %if.end21, !dbg !279

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !280, metadata !DIExpression()), !dbg !283
  %2 = load i8*, i8** %data, align 8, !dbg !284
  %call = call i64 @strlen(i8* %2) #7, !dbg !285
  store i64 %call, i64* %dataLen, align 8, !dbg !283
  %3 = load i64, i64* %dataLen, align 8, !dbg !286
  %sub = sub i64 100, %3, !dbg !288
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !289
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !290

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !291
  %5 = load i64, i64* %dataLen, align 8, !dbg !294
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !295
  %6 = load i64, i64* %dataLen, align 8, !dbg !296
  %sub3 = sub i64 100, %6, !dbg !297
  %conv = trunc i64 %sub3 to i32, !dbg !298
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !299
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !300
  %cmp5 = icmp ne i8* %call4, null, !dbg !301
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !302

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !303
  %call8 = call i64 @strlen(i8* %8) #7, !dbg !305
  store i64 %call8, i64* %dataLen, align 8, !dbg !306
  %9 = load i64, i64* %dataLen, align 8, !dbg !307
  %cmp9 = icmp ugt i64 %9, 0, !dbg !309
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !310

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !311
  %11 = load i64, i64* %dataLen, align 8, !dbg !312
  %sub11 = sub i64 %11, 1, !dbg !313
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !311
  %12 = load i8, i8* %arrayidx, align 1, !dbg !311
  %conv12 = sext i8 %12 to i32, !dbg !311
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !314
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !315

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !316
  %14 = load i64, i64* %dataLen, align 8, !dbg !318
  %sub16 = sub i64 %14, 1, !dbg !319
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !316
  store i8 0, i8* %arrayidx17, align 1, !dbg !320
  br label %if.end, !dbg !321

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !322

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !323
  %15 = load i8*, i8** %data, align 8, !dbg !325
  %16 = load i64, i64* %dataLen, align 8, !dbg !326
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !325
  store i8 0, i8* %arrayidx18, align 1, !dbg !327
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !328

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !329

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @globalFive, align 4, !dbg !330
  %cmp22 = icmp eq i32 %17, 5, !dbg !332
  br i1 %cmp22, label %if.then24, label %if.end37, !dbg !333

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !334, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata i32* %n, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !340, metadata !DIExpression()), !dbg !341
  %18 = load i8*, i8** %data, align 8, !dbg !342
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !344
  %cmp26 = icmp eq i32 %call25, 1, !dbg !345
  br i1 %cmp26, label %if.then28, label %if.end36, !dbg !346

if.then28:                                        ; preds = %if.then24
  %19 = load i32, i32* %n, align 4, !dbg !347
  %cmp29 = icmp slt i32 %19, 10000, !dbg !350
  br i1 %cmp29, label %if.then31, label %if.end35, !dbg !351

if.then31:                                        ; preds = %if.then28
  store i32 0, i32* %intVariable, align 4, !dbg !352
  store i32 0, i32* %i, align 4, !dbg !354
  br label %for.cond, !dbg !356

for.cond:                                         ; preds = %for.inc, %if.then31
  %20 = load i32, i32* %i, align 4, !dbg !357
  %21 = load i32, i32* %n, align 4, !dbg !359
  %cmp32 = icmp slt i32 %20, %21, !dbg !360
  br i1 %cmp32, label %for.body, label %for.end, !dbg !361

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !362
  %inc = add nsw i32 %22, 1, !dbg !362
  store i32 %inc, i32* %intVariable, align 4, !dbg !362
  br label %for.inc, !dbg !364

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !365
  %inc34 = add nsw i32 %23, 1, !dbg !365
  store i32 %inc34, i32* %i, align 4, !dbg !365
  br label %for.cond, !dbg !366, !llvm.loop !367

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !369
  call void @printIntLine(i32 %24), !dbg !370
  br label %if.end35, !dbg !371

if.end35:                                         ; preds = %for.end, %if.then28
  br label %if.end36, !dbg !372

if.end36:                                         ; preds = %if.end35, %if.then24
  br label %if.end37, !dbg !373

if.end37:                                         ; preds = %if.end36, %if.end21
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !375 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !379
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !379
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !380
  store i8* %arraydecay, i8** %data, align 8, !dbg !381
  %1 = load i32, i32* @globalFive, align 4, !dbg !382
  %cmp = icmp ne i32 %1, 5, !dbg !384
  br i1 %cmp, label %if.then, label %if.else, !dbg !385

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !386
  br label %if.end, !dbg !388

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !389
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !391
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalFive, align 4, !dbg !392
  %cmp1 = icmp eq i32 %3, 5, !dbg !394
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !395

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !396, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.declare(metadata i32* %n, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !402, metadata !DIExpression()), !dbg !403
  %4 = load i8*, i8** %data, align 8, !dbg !404
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !406
  %cmp4 = icmp eq i32 %call3, 1, !dbg !407
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !408

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !409
  store i32 0, i32* %i, align 4, !dbg !411
  br label %for.cond, !dbg !413

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !414
  %6 = load i32, i32* %n, align 4, !dbg !416
  %cmp6 = icmp slt i32 %5, %6, !dbg !417
  br i1 %cmp6, label %for.body, label %for.end, !dbg !418

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !419
  %inc = add nsw i32 %7, 1, !dbg !419
  store i32 %inc, i32* %intVariable, align 4, !dbg !419
  br label %for.inc, !dbg !421

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !422
  %inc7 = add nsw i32 %8, 1, !dbg !422
  store i32 %inc7, i32* %i, align 4, !dbg !422
  br label %for.cond, !dbg !423, !llvm.loop !424

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !426
  call void @printIntLine(i32 %9), !dbg !427
  br label %if.end8, !dbg !428

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !429

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !430
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !431 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !435
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !435
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !436
  store i8* %arraydecay, i8** %data, align 8, !dbg !437
  %1 = load i32, i32* @globalFive, align 4, !dbg !438
  %cmp = icmp eq i32 %1, 5, !dbg !440
  br i1 %cmp, label %if.then, label %if.end, !dbg !441

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !442
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !444
  br label %if.end, !dbg !445

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalFive, align 4, !dbg !446
  %cmp1 = icmp eq i32 %3, 5, !dbg !448
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !449

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !450, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata i32* %n, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !456, metadata !DIExpression()), !dbg !457
  %4 = load i8*, i8** %data, align 8, !dbg !458
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !460
  %cmp4 = icmp eq i32 %call3, 1, !dbg !461
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !462

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !463
  store i32 0, i32* %i, align 4, !dbg !465
  br label %for.cond, !dbg !467

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !468
  %6 = load i32, i32* %n, align 4, !dbg !470
  %cmp6 = icmp slt i32 %5, %6, !dbg !471
  br i1 %cmp6, label %for.body, label %for.end, !dbg !472

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !473
  %inc = add nsw i32 %7, 1, !dbg !473
  store i32 %inc, i32* %intVariable, align 4, !dbg !473
  br label %for.inc, !dbg !475

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !476
  %inc7 = add nsw i32 %8, 1, !dbg !476
  store i32 %inc7, i32* %i, align 4, !dbg !476
  br label %for.cond, !dbg !477, !llvm.loop !478

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !480
  call void @printIntLine(i32 %9), !dbg !481
  br label %if.end8, !dbg !482

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !483

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_14_good() #0 !dbg !485 {
entry:
  call void @goodB2G1(), !dbg !486
  call void @goodB2G2(), !dbg !487
  call void @goodG2B1(), !dbg !488
  call void @goodG2B2(), !dbg !489
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !491 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !496
  %0 = load i8*, i8** %line.addr, align 8, !dbg !497
  %cmp = icmp ne i8* %0, null, !dbg !499
  br i1 %cmp, label %if.then, label %if.end, !dbg !500

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !501
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !503
  br label %if.end, !dbg !504

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !505
  ret void, !dbg !506
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !507 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !508, metadata !DIExpression()), !dbg !509
  %0 = load i8*, i8** %line.addr, align 8, !dbg !510
  %cmp = icmp ne i8* %0, null, !dbg !512
  br i1 %cmp, label %if.then, label %if.end, !dbg !513

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !514
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !516
  br label %if.end, !dbg !517

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !519 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !524, metadata !DIExpression()), !dbg !525
  %0 = load i32*, i32** %line.addr, align 8, !dbg !526
  %cmp = icmp ne i32* %0, null, !dbg !528
  br i1 %cmp, label %if.then, label %if.end, !dbg !529

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !530
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !532
  br label %if.end, !dbg !533

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !534
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !535 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !538, metadata !DIExpression()), !dbg !539
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !540
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !541
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !543 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !547, metadata !DIExpression()), !dbg !548
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !549
  %conv = sext i16 %0 to i32, !dbg !549
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.11, i64 0, i64 0), i32 %conv), !dbg !550
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !552 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !556, metadata !DIExpression()), !dbg !557
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !558
  %conv = fpext float %0 to double, !dbg !558
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !559
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !561 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !565, metadata !DIExpression()), !dbg !566
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !567
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !568
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !570 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !577, metadata !DIExpression()), !dbg !578
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !579
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !580
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !582 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !585, metadata !DIExpression()), !dbg !586
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !587
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !588
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !590 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !593, metadata !DIExpression()), !dbg !594
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !595
  %conv = sext i8 %0 to i32, !dbg !595
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !596
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !598 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !601, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !603, metadata !DIExpression()), !dbg !607
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !608
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !609
  store i32 %0, i32* %arrayidx, align 4, !dbg !610
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !611
  store i32 0, i32* %arrayidx1, align 4, !dbg !612
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !613
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !614
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !616 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !619, metadata !DIExpression()), !dbg !620
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !621
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !622
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !624 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !627, metadata !DIExpression()), !dbg !628
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !629
  %conv = zext i8 %0 to i32, !dbg !629
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !630
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !632 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !636, metadata !DIExpression()), !dbg !637
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !638
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !639
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !641 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !651, metadata !DIExpression()), !dbg !652
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !653
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !654
  %1 = load i32, i32* %intOne, align 4, !dbg !654
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !655
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !656
  %3 = load i32, i32* %intTwo, align 4, !dbg !656
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !657
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !659 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !663, metadata !DIExpression()), !dbg !664
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !665, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.declare(metadata i64* %i, metadata !667, metadata !DIExpression()), !dbg !668
  store i64 0, i64* %i, align 8, !dbg !669
  br label %for.cond, !dbg !671

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !672
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !674
  %cmp = icmp ult i64 %0, %1, !dbg !675
  br i1 %cmp, label %for.body, label %for.end, !dbg !676

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !677
  %3 = load i64, i64* %i, align 8, !dbg !679
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !677
  %4 = load i8, i8* %arrayidx, align 1, !dbg !677
  %conv = zext i8 %4 to i32, !dbg !677
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !680
  br label %for.inc, !dbg !681

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !682
  %inc = add i64 %5, 1, !dbg !682
  store i64 %inc, i64* %i, align 8, !dbg !682
  br label %for.cond, !dbg !683, !llvm.loop !684

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !686
  ret void, !dbg !687
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !688 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !691, metadata !DIExpression()), !dbg !692
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !693, metadata !DIExpression()), !dbg !694
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !695, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !697, metadata !DIExpression()), !dbg !698
  store i64 0, i64* %numWritten, align 8, !dbg !698
  br label %while.cond, !dbg !699

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !700
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !701
  %cmp = icmp ult i64 %0, %1, !dbg !702
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !703

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !704
  %2 = load i16*, i16** %call, align 8, !dbg !704
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !704
  %4 = load i64, i64* %numWritten, align 8, !dbg !704
  %mul = mul i64 2, %4, !dbg !704
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !704
  %5 = load i8, i8* %arrayidx, align 1, !dbg !704
  %conv = sext i8 %5 to i32, !dbg !704
  %idxprom = sext i32 %conv to i64, !dbg !704
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !704
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !704
  %conv2 = zext i16 %6 to i32, !dbg !704
  %and = and i32 %conv2, 4096, !dbg !704
  %tobool = icmp ne i32 %and, 0, !dbg !704
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !705

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !706
  %7 = load i16*, i16** %call3, align 8, !dbg !706
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !706
  %9 = load i64, i64* %numWritten, align 8, !dbg !706
  %mul4 = mul i64 2, %9, !dbg !706
  %add = add i64 %mul4, 1, !dbg !706
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !706
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !706
  %conv6 = sext i8 %10 to i32, !dbg !706
  %idxprom7 = sext i32 %conv6 to i64, !dbg !706
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !706
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !706
  %conv9 = zext i16 %11 to i32, !dbg !706
  %and10 = and i32 %conv9, 4096, !dbg !706
  %tobool11 = icmp ne i32 %and10, 0, !dbg !705
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !707
  br i1 %12, label %while.body, label %while.end, !dbg !699

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !708, metadata !DIExpression()), !dbg !710
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !711
  %14 = load i64, i64* %numWritten, align 8, !dbg !712
  %mul12 = mul i64 2, %14, !dbg !713
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !711
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !714
  %15 = load i32, i32* %byte, align 4, !dbg !715
  %conv15 = trunc i32 %15 to i8, !dbg !716
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !717
  %17 = load i64, i64* %numWritten, align 8, !dbg !718
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !717
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !719
  %18 = load i64, i64* %numWritten, align 8, !dbg !720
  %inc = add i64 %18, 1, !dbg !720
  store i64 %inc, i64* %numWritten, align 8, !dbg !720
  br label %while.cond, !dbg !699, !llvm.loop !721

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !723
  ret i64 %19, !dbg !724
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !725 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !728, metadata !DIExpression()), !dbg !729
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !730, metadata !DIExpression()), !dbg !731
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !732, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !734, metadata !DIExpression()), !dbg !735
  store i64 0, i64* %numWritten, align 8, !dbg !735
  br label %while.cond, !dbg !736

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !737
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !738
  %cmp = icmp ult i64 %0, %1, !dbg !739
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !740

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !741
  %3 = load i64, i64* %numWritten, align 8, !dbg !742
  %mul = mul i64 2, %3, !dbg !743
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !741
  %4 = load i32, i32* %arrayidx, align 4, !dbg !741
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !744
  %tobool = icmp ne i32 %call, 0, !dbg !744
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !745

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !746
  %6 = load i64, i64* %numWritten, align 8, !dbg !747
  %mul1 = mul i64 2, %6, !dbg !748
  %add = add i64 %mul1, 1, !dbg !749
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !746
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !746
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !750
  %tobool4 = icmp ne i32 %call3, 0, !dbg !745
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !751
  br i1 %8, label %while.body, label %while.end, !dbg !736

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !752, metadata !DIExpression()), !dbg !754
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !755
  %10 = load i64, i64* %numWritten, align 8, !dbg !756
  %mul5 = mul i64 2, %10, !dbg !757
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !755
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !758
  %11 = load i32, i32* %byte, align 4, !dbg !759
  %conv = trunc i32 %11 to i8, !dbg !760
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !761
  %13 = load i64, i64* %numWritten, align 8, !dbg !762
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !761
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !763
  %14 = load i64, i64* %numWritten, align 8, !dbg !764
  %inc = add i64 %14, 1, !dbg !764
  store i64 %inc, i64* %numWritten, align 8, !dbg !764
  br label %while.cond, !dbg !736, !llvm.loop !765

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !767
  ret i64 %15, !dbg !768
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !769 {
entry:
  ret i32 1, !dbg !772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !773 {
entry:
  ret i32 0, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !775 {
entry:
  %call = call i32 @rand() #8, !dbg !776
  %rem = srem i32 %call, 2, !dbg !777
  ret i32 %rem, !dbg !778
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !779 {
entry:
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !781 {
entry:
  ret void, !dbg !782
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !783 {
entry:
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !785 {
entry:
  ret void, !dbg !786
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !787 {
entry:
  ret void, !dbg !788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !789 {
entry:
  ret void, !dbg !790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !791 {
entry:
  ret void, !dbg !792
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !793 {
entry:
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !795 {
entry:
  ret void, !dbg !796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !797 {
entry:
  ret void, !dbg !798
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !799 {
entry:
  ret void, !dbg !800
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !801 {
entry:
  ret void, !dbg !802
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !803 {
entry:
  ret void, !dbg !804
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !805 {
entry:
  ret void, !dbg !806
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !807 {
entry:
  ret void, !dbg !808
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !809 {
entry:
  ret void, !dbg !810
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !811 {
entry:
  ret void, !dbg !812
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !813 {
entry:
  ret void, !dbg !814
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_991/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_14.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_991/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_14_bad", scope: !45, file: !45, line: 29, type: !53, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 31, type: !42)
!56 = !DILocation(line: 31, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 32, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 100)
!61 = !DILocation(line: 32, column: 10, scope: !52)
!62 = !DILocation(line: 33, column: 12, scope: !52)
!63 = !DILocation(line: 33, column: 10, scope: !52)
!64 = !DILocation(line: 34, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 34, column: 8)
!66 = !DILocation(line: 34, column: 18, scope: !65)
!67 = !DILocation(line: 34, column: 8, scope: !52)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !45, line: 38, type: !71)
!69 = distinct !DILexicalBlock(scope: !70, file: !45, line: 36, column: 9)
!70 = distinct !DILexicalBlock(scope: !65, file: !45, line: 35, column: 5)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DILocation(line: 38, column: 20, scope: !69)
!75 = !DILocation(line: 38, column: 37, scope: !69)
!76 = !DILocation(line: 38, column: 30, scope: !69)
!77 = !DILocation(line: 40, column: 21, scope: !78)
!78 = distinct !DILexicalBlock(scope: !69, file: !45, line: 40, column: 17)
!79 = !DILocation(line: 40, column: 20, scope: !78)
!80 = !DILocation(line: 40, column: 29, scope: !78)
!81 = !DILocation(line: 40, column: 17, scope: !69)
!82 = !DILocation(line: 43, column: 27, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !45, line: 43, column: 21)
!84 = distinct !DILexicalBlock(scope: !78, file: !45, line: 41, column: 13)
!85 = !DILocation(line: 43, column: 32, scope: !83)
!86 = !DILocation(line: 43, column: 31, scope: !83)
!87 = !DILocation(line: 43, column: 51, scope: !83)
!88 = !DILocation(line: 43, column: 50, scope: !83)
!89 = !DILocation(line: 43, column: 41, scope: !83)
!90 = !DILocation(line: 43, column: 61, scope: !83)
!91 = !DILocation(line: 43, column: 21, scope: !83)
!92 = !DILocation(line: 43, column: 68, scope: !83)
!93 = !DILocation(line: 43, column: 21, scope: !84)
!94 = !DILocation(line: 47, column: 38, scope: !95)
!95 = distinct !DILexicalBlock(scope: !83, file: !45, line: 44, column: 17)
!96 = !DILocation(line: 47, column: 31, scope: !95)
!97 = !DILocation(line: 47, column: 29, scope: !95)
!98 = !DILocation(line: 48, column: 25, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !45, line: 48, column: 25)
!100 = !DILocation(line: 48, column: 33, scope: !99)
!101 = !DILocation(line: 48, column: 37, scope: !99)
!102 = !DILocation(line: 48, column: 40, scope: !99)
!103 = !DILocation(line: 48, column: 45, scope: !99)
!104 = !DILocation(line: 48, column: 52, scope: !99)
!105 = !DILocation(line: 48, column: 56, scope: !99)
!106 = !DILocation(line: 48, column: 25, scope: !95)
!107 = !DILocation(line: 50, column: 25, scope: !108)
!108 = distinct !DILexicalBlock(scope: !99, file: !45, line: 49, column: 21)
!109 = !DILocation(line: 50, column: 30, scope: !108)
!110 = !DILocation(line: 50, column: 37, scope: !108)
!111 = !DILocation(line: 50, column: 41, scope: !108)
!112 = !DILocation(line: 51, column: 21, scope: !108)
!113 = !DILocation(line: 52, column: 17, scope: !95)
!114 = !DILocation(line: 55, column: 21, scope: !115)
!115 = distinct !DILexicalBlock(scope: !83, file: !45, line: 54, column: 17)
!116 = !DILocation(line: 57, column: 21, scope: !115)
!117 = !DILocation(line: 57, column: 26, scope: !115)
!118 = !DILocation(line: 57, column: 35, scope: !115)
!119 = !DILocation(line: 59, column: 13, scope: !84)
!120 = !DILocation(line: 61, column: 5, scope: !70)
!121 = !DILocation(line: 62, column: 8, scope: !122)
!122 = distinct !DILexicalBlock(scope: !52, file: !45, line: 62, column: 8)
!123 = !DILocation(line: 62, column: 18, scope: !122)
!124 = !DILocation(line: 62, column: 8, scope: !52)
!125 = !DILocalVariable(name: "i", scope: !126, file: !45, line: 65, type: !23)
!126 = distinct !DILexicalBlock(scope: !127, file: !45, line: 64, column: 9)
!127 = distinct !DILexicalBlock(scope: !122, file: !45, line: 63, column: 5)
!128 = !DILocation(line: 65, column: 17, scope: !126)
!129 = !DILocalVariable(name: "n", scope: !126, file: !45, line: 65, type: !23)
!130 = !DILocation(line: 65, column: 20, scope: !126)
!131 = !DILocalVariable(name: "intVariable", scope: !126, file: !45, line: 65, type: !23)
!132 = !DILocation(line: 65, column: 23, scope: !126)
!133 = !DILocation(line: 66, column: 24, scope: !134)
!134 = distinct !DILexicalBlock(scope: !126, file: !45, line: 66, column: 17)
!135 = !DILocation(line: 66, column: 17, scope: !134)
!136 = !DILocation(line: 66, column: 40, scope: !134)
!137 = !DILocation(line: 66, column: 17, scope: !126)
!138 = !DILocation(line: 69, column: 29, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !45, line: 67, column: 13)
!140 = !DILocation(line: 70, column: 24, scope: !141)
!141 = distinct !DILexicalBlock(scope: !139, file: !45, line: 70, column: 17)
!142 = !DILocation(line: 70, column: 22, scope: !141)
!143 = !DILocation(line: 70, column: 29, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !45, line: 70, column: 17)
!145 = !DILocation(line: 70, column: 33, scope: !144)
!146 = !DILocation(line: 70, column: 31, scope: !144)
!147 = !DILocation(line: 70, column: 17, scope: !141)
!148 = !DILocation(line: 73, column: 32, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !45, line: 71, column: 17)
!150 = !DILocation(line: 74, column: 17, scope: !149)
!151 = !DILocation(line: 70, column: 37, scope: !144)
!152 = !DILocation(line: 70, column: 17, scope: !144)
!153 = distinct !{!153, !147, !154, !155}
!154 = !DILocation(line: 74, column: 17, scope: !141)
!155 = !{!"llvm.loop.mustprogress"}
!156 = !DILocation(line: 75, column: 30, scope: !139)
!157 = !DILocation(line: 75, column: 17, scope: !139)
!158 = !DILocation(line: 76, column: 13, scope: !139)
!159 = !DILocation(line: 78, column: 5, scope: !127)
!160 = !DILocation(line: 79, column: 1, scope: !52)
!161 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 86, type: !53, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!162 = !DILocalVariable(name: "data", scope: !161, file: !45, line: 88, type: !42)
!163 = !DILocation(line: 88, column: 12, scope: !161)
!164 = !DILocalVariable(name: "dataBuffer", scope: !161, file: !45, line: 89, type: !58)
!165 = !DILocation(line: 89, column: 10, scope: !161)
!166 = !DILocation(line: 90, column: 12, scope: !161)
!167 = !DILocation(line: 90, column: 10, scope: !161)
!168 = !DILocation(line: 91, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !161, file: !45, line: 91, column: 8)
!170 = !DILocation(line: 91, column: 18, scope: !169)
!171 = !DILocation(line: 91, column: 8, scope: !161)
!172 = !DILocalVariable(name: "dataLen", scope: !173, file: !45, line: 95, type: !71)
!173 = distinct !DILexicalBlock(scope: !174, file: !45, line: 93, column: 9)
!174 = distinct !DILexicalBlock(scope: !169, file: !45, line: 92, column: 5)
!175 = !DILocation(line: 95, column: 20, scope: !173)
!176 = !DILocation(line: 95, column: 37, scope: !173)
!177 = !DILocation(line: 95, column: 30, scope: !173)
!178 = !DILocation(line: 97, column: 21, scope: !179)
!179 = distinct !DILexicalBlock(scope: !173, file: !45, line: 97, column: 17)
!180 = !DILocation(line: 97, column: 20, scope: !179)
!181 = !DILocation(line: 97, column: 29, scope: !179)
!182 = !DILocation(line: 97, column: 17, scope: !173)
!183 = !DILocation(line: 100, column: 27, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !45, line: 100, column: 21)
!185 = distinct !DILexicalBlock(scope: !179, file: !45, line: 98, column: 13)
!186 = !DILocation(line: 100, column: 32, scope: !184)
!187 = !DILocation(line: 100, column: 31, scope: !184)
!188 = !DILocation(line: 100, column: 51, scope: !184)
!189 = !DILocation(line: 100, column: 50, scope: !184)
!190 = !DILocation(line: 100, column: 41, scope: !184)
!191 = !DILocation(line: 100, column: 61, scope: !184)
!192 = !DILocation(line: 100, column: 21, scope: !184)
!193 = !DILocation(line: 100, column: 68, scope: !184)
!194 = !DILocation(line: 100, column: 21, scope: !185)
!195 = !DILocation(line: 104, column: 38, scope: !196)
!196 = distinct !DILexicalBlock(scope: !184, file: !45, line: 101, column: 17)
!197 = !DILocation(line: 104, column: 31, scope: !196)
!198 = !DILocation(line: 104, column: 29, scope: !196)
!199 = !DILocation(line: 105, column: 25, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !45, line: 105, column: 25)
!201 = !DILocation(line: 105, column: 33, scope: !200)
!202 = !DILocation(line: 105, column: 37, scope: !200)
!203 = !DILocation(line: 105, column: 40, scope: !200)
!204 = !DILocation(line: 105, column: 45, scope: !200)
!205 = !DILocation(line: 105, column: 52, scope: !200)
!206 = !DILocation(line: 105, column: 56, scope: !200)
!207 = !DILocation(line: 105, column: 25, scope: !196)
!208 = !DILocation(line: 107, column: 25, scope: !209)
!209 = distinct !DILexicalBlock(scope: !200, file: !45, line: 106, column: 21)
!210 = !DILocation(line: 107, column: 30, scope: !209)
!211 = !DILocation(line: 107, column: 37, scope: !209)
!212 = !DILocation(line: 107, column: 41, scope: !209)
!213 = !DILocation(line: 108, column: 21, scope: !209)
!214 = !DILocation(line: 109, column: 17, scope: !196)
!215 = !DILocation(line: 112, column: 21, scope: !216)
!216 = distinct !DILexicalBlock(scope: !184, file: !45, line: 111, column: 17)
!217 = !DILocation(line: 114, column: 21, scope: !216)
!218 = !DILocation(line: 114, column: 26, scope: !216)
!219 = !DILocation(line: 114, column: 35, scope: !216)
!220 = !DILocation(line: 116, column: 13, scope: !185)
!221 = !DILocation(line: 118, column: 5, scope: !174)
!222 = !DILocation(line: 119, column: 8, scope: !223)
!223 = distinct !DILexicalBlock(scope: !161, file: !45, line: 119, column: 8)
!224 = !DILocation(line: 119, column: 18, scope: !223)
!225 = !DILocation(line: 119, column: 8, scope: !161)
!226 = !DILocation(line: 122, column: 9, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !45, line: 120, column: 5)
!228 = !DILocation(line: 123, column: 5, scope: !227)
!229 = !DILocalVariable(name: "i", scope: !230, file: !45, line: 127, type: !23)
!230 = distinct !DILexicalBlock(scope: !231, file: !45, line: 126, column: 9)
!231 = distinct !DILexicalBlock(scope: !223, file: !45, line: 125, column: 5)
!232 = !DILocation(line: 127, column: 17, scope: !230)
!233 = !DILocalVariable(name: "n", scope: !230, file: !45, line: 127, type: !23)
!234 = !DILocation(line: 127, column: 20, scope: !230)
!235 = !DILocalVariable(name: "intVariable", scope: !230, file: !45, line: 127, type: !23)
!236 = !DILocation(line: 127, column: 23, scope: !230)
!237 = !DILocation(line: 128, column: 24, scope: !238)
!238 = distinct !DILexicalBlock(scope: !230, file: !45, line: 128, column: 17)
!239 = !DILocation(line: 128, column: 17, scope: !238)
!240 = !DILocation(line: 128, column: 40, scope: !238)
!241 = !DILocation(line: 128, column: 17, scope: !230)
!242 = !DILocation(line: 131, column: 21, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !45, line: 131, column: 21)
!244 = distinct !DILexicalBlock(scope: !238, file: !45, line: 129, column: 13)
!245 = !DILocation(line: 131, column: 23, scope: !243)
!246 = !DILocation(line: 131, column: 21, scope: !244)
!247 = !DILocation(line: 133, column: 33, scope: !248)
!248 = distinct !DILexicalBlock(scope: !243, file: !45, line: 132, column: 17)
!249 = !DILocation(line: 134, column: 28, scope: !250)
!250 = distinct !DILexicalBlock(scope: !248, file: !45, line: 134, column: 21)
!251 = !DILocation(line: 134, column: 26, scope: !250)
!252 = !DILocation(line: 134, column: 33, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !45, line: 134, column: 21)
!254 = !DILocation(line: 134, column: 37, scope: !253)
!255 = !DILocation(line: 134, column: 35, scope: !253)
!256 = !DILocation(line: 134, column: 21, scope: !250)
!257 = !DILocation(line: 137, column: 36, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !45, line: 135, column: 21)
!259 = !DILocation(line: 138, column: 21, scope: !258)
!260 = !DILocation(line: 134, column: 41, scope: !253)
!261 = !DILocation(line: 134, column: 21, scope: !253)
!262 = distinct !{!262, !256, !263, !155}
!263 = !DILocation(line: 138, column: 21, scope: !250)
!264 = !DILocation(line: 139, column: 34, scope: !248)
!265 = !DILocation(line: 139, column: 21, scope: !248)
!266 = !DILocation(line: 140, column: 17, scope: !248)
!267 = !DILocation(line: 141, column: 13, scope: !244)
!268 = !DILocation(line: 144, column: 1, scope: !161)
!269 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 147, type: !53, scopeLine: 148, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!270 = !DILocalVariable(name: "data", scope: !269, file: !45, line: 149, type: !42)
!271 = !DILocation(line: 149, column: 12, scope: !269)
!272 = !DILocalVariable(name: "dataBuffer", scope: !269, file: !45, line: 150, type: !58)
!273 = !DILocation(line: 150, column: 10, scope: !269)
!274 = !DILocation(line: 151, column: 12, scope: !269)
!275 = !DILocation(line: 151, column: 10, scope: !269)
!276 = !DILocation(line: 152, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !269, file: !45, line: 152, column: 8)
!278 = !DILocation(line: 152, column: 18, scope: !277)
!279 = !DILocation(line: 152, column: 8, scope: !269)
!280 = !DILocalVariable(name: "dataLen", scope: !281, file: !45, line: 156, type: !71)
!281 = distinct !DILexicalBlock(scope: !282, file: !45, line: 154, column: 9)
!282 = distinct !DILexicalBlock(scope: !277, file: !45, line: 153, column: 5)
!283 = !DILocation(line: 156, column: 20, scope: !281)
!284 = !DILocation(line: 156, column: 37, scope: !281)
!285 = !DILocation(line: 156, column: 30, scope: !281)
!286 = !DILocation(line: 158, column: 21, scope: !287)
!287 = distinct !DILexicalBlock(scope: !281, file: !45, line: 158, column: 17)
!288 = !DILocation(line: 158, column: 20, scope: !287)
!289 = !DILocation(line: 158, column: 29, scope: !287)
!290 = !DILocation(line: 158, column: 17, scope: !281)
!291 = !DILocation(line: 161, column: 27, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !45, line: 161, column: 21)
!293 = distinct !DILexicalBlock(scope: !287, file: !45, line: 159, column: 13)
!294 = !DILocation(line: 161, column: 32, scope: !292)
!295 = !DILocation(line: 161, column: 31, scope: !292)
!296 = !DILocation(line: 161, column: 51, scope: !292)
!297 = !DILocation(line: 161, column: 50, scope: !292)
!298 = !DILocation(line: 161, column: 41, scope: !292)
!299 = !DILocation(line: 161, column: 61, scope: !292)
!300 = !DILocation(line: 161, column: 21, scope: !292)
!301 = !DILocation(line: 161, column: 68, scope: !292)
!302 = !DILocation(line: 161, column: 21, scope: !293)
!303 = !DILocation(line: 165, column: 38, scope: !304)
!304 = distinct !DILexicalBlock(scope: !292, file: !45, line: 162, column: 17)
!305 = !DILocation(line: 165, column: 31, scope: !304)
!306 = !DILocation(line: 165, column: 29, scope: !304)
!307 = !DILocation(line: 166, column: 25, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !45, line: 166, column: 25)
!309 = !DILocation(line: 166, column: 33, scope: !308)
!310 = !DILocation(line: 166, column: 37, scope: !308)
!311 = !DILocation(line: 166, column: 40, scope: !308)
!312 = !DILocation(line: 166, column: 45, scope: !308)
!313 = !DILocation(line: 166, column: 52, scope: !308)
!314 = !DILocation(line: 166, column: 56, scope: !308)
!315 = !DILocation(line: 166, column: 25, scope: !304)
!316 = !DILocation(line: 168, column: 25, scope: !317)
!317 = distinct !DILexicalBlock(scope: !308, file: !45, line: 167, column: 21)
!318 = !DILocation(line: 168, column: 30, scope: !317)
!319 = !DILocation(line: 168, column: 37, scope: !317)
!320 = !DILocation(line: 168, column: 41, scope: !317)
!321 = !DILocation(line: 169, column: 21, scope: !317)
!322 = !DILocation(line: 170, column: 17, scope: !304)
!323 = !DILocation(line: 173, column: 21, scope: !324)
!324 = distinct !DILexicalBlock(scope: !292, file: !45, line: 172, column: 17)
!325 = !DILocation(line: 175, column: 21, scope: !324)
!326 = !DILocation(line: 175, column: 26, scope: !324)
!327 = !DILocation(line: 175, column: 35, scope: !324)
!328 = !DILocation(line: 177, column: 13, scope: !293)
!329 = !DILocation(line: 179, column: 5, scope: !282)
!330 = !DILocation(line: 180, column: 8, scope: !331)
!331 = distinct !DILexicalBlock(scope: !269, file: !45, line: 180, column: 8)
!332 = !DILocation(line: 180, column: 18, scope: !331)
!333 = !DILocation(line: 180, column: 8, scope: !269)
!334 = !DILocalVariable(name: "i", scope: !335, file: !45, line: 183, type: !23)
!335 = distinct !DILexicalBlock(scope: !336, file: !45, line: 182, column: 9)
!336 = distinct !DILexicalBlock(scope: !331, file: !45, line: 181, column: 5)
!337 = !DILocation(line: 183, column: 17, scope: !335)
!338 = !DILocalVariable(name: "n", scope: !335, file: !45, line: 183, type: !23)
!339 = !DILocation(line: 183, column: 20, scope: !335)
!340 = !DILocalVariable(name: "intVariable", scope: !335, file: !45, line: 183, type: !23)
!341 = !DILocation(line: 183, column: 23, scope: !335)
!342 = !DILocation(line: 184, column: 24, scope: !343)
!343 = distinct !DILexicalBlock(scope: !335, file: !45, line: 184, column: 17)
!344 = !DILocation(line: 184, column: 17, scope: !343)
!345 = !DILocation(line: 184, column: 40, scope: !343)
!346 = !DILocation(line: 184, column: 17, scope: !335)
!347 = !DILocation(line: 187, column: 21, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !45, line: 187, column: 21)
!349 = distinct !DILexicalBlock(scope: !343, file: !45, line: 185, column: 13)
!350 = !DILocation(line: 187, column: 23, scope: !348)
!351 = !DILocation(line: 187, column: 21, scope: !349)
!352 = !DILocation(line: 189, column: 33, scope: !353)
!353 = distinct !DILexicalBlock(scope: !348, file: !45, line: 188, column: 17)
!354 = !DILocation(line: 190, column: 28, scope: !355)
!355 = distinct !DILexicalBlock(scope: !353, file: !45, line: 190, column: 21)
!356 = !DILocation(line: 190, column: 26, scope: !355)
!357 = !DILocation(line: 190, column: 33, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !45, line: 190, column: 21)
!359 = !DILocation(line: 190, column: 37, scope: !358)
!360 = !DILocation(line: 190, column: 35, scope: !358)
!361 = !DILocation(line: 190, column: 21, scope: !355)
!362 = !DILocation(line: 193, column: 36, scope: !363)
!363 = distinct !DILexicalBlock(scope: !358, file: !45, line: 191, column: 21)
!364 = !DILocation(line: 194, column: 21, scope: !363)
!365 = !DILocation(line: 190, column: 41, scope: !358)
!366 = !DILocation(line: 190, column: 21, scope: !358)
!367 = distinct !{!367, !361, !368, !155}
!368 = !DILocation(line: 194, column: 21, scope: !355)
!369 = !DILocation(line: 195, column: 34, scope: !353)
!370 = !DILocation(line: 195, column: 21, scope: !353)
!371 = !DILocation(line: 196, column: 17, scope: !353)
!372 = !DILocation(line: 197, column: 13, scope: !349)
!373 = !DILocation(line: 199, column: 5, scope: !336)
!374 = !DILocation(line: 200, column: 1, scope: !269)
!375 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 203, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!376 = !DILocalVariable(name: "data", scope: !375, file: !45, line: 205, type: !42)
!377 = !DILocation(line: 205, column: 12, scope: !375)
!378 = !DILocalVariable(name: "dataBuffer", scope: !375, file: !45, line: 206, type: !58)
!379 = !DILocation(line: 206, column: 10, scope: !375)
!380 = !DILocation(line: 207, column: 12, scope: !375)
!381 = !DILocation(line: 207, column: 10, scope: !375)
!382 = !DILocation(line: 208, column: 8, scope: !383)
!383 = distinct !DILexicalBlock(scope: !375, file: !45, line: 208, column: 8)
!384 = !DILocation(line: 208, column: 18, scope: !383)
!385 = !DILocation(line: 208, column: 8, scope: !375)
!386 = !DILocation(line: 211, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !45, line: 209, column: 5)
!388 = !DILocation(line: 212, column: 5, scope: !387)
!389 = !DILocation(line: 216, column: 16, scope: !390)
!390 = distinct !DILexicalBlock(scope: !383, file: !45, line: 214, column: 5)
!391 = !DILocation(line: 216, column: 9, scope: !390)
!392 = !DILocation(line: 218, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !375, file: !45, line: 218, column: 8)
!394 = !DILocation(line: 218, column: 18, scope: !393)
!395 = !DILocation(line: 218, column: 8, scope: !375)
!396 = !DILocalVariable(name: "i", scope: !397, file: !45, line: 221, type: !23)
!397 = distinct !DILexicalBlock(scope: !398, file: !45, line: 220, column: 9)
!398 = distinct !DILexicalBlock(scope: !393, file: !45, line: 219, column: 5)
!399 = !DILocation(line: 221, column: 17, scope: !397)
!400 = !DILocalVariable(name: "n", scope: !397, file: !45, line: 221, type: !23)
!401 = !DILocation(line: 221, column: 20, scope: !397)
!402 = !DILocalVariable(name: "intVariable", scope: !397, file: !45, line: 221, type: !23)
!403 = !DILocation(line: 221, column: 23, scope: !397)
!404 = !DILocation(line: 222, column: 24, scope: !405)
!405 = distinct !DILexicalBlock(scope: !397, file: !45, line: 222, column: 17)
!406 = !DILocation(line: 222, column: 17, scope: !405)
!407 = !DILocation(line: 222, column: 40, scope: !405)
!408 = !DILocation(line: 222, column: 17, scope: !397)
!409 = !DILocation(line: 225, column: 29, scope: !410)
!410 = distinct !DILexicalBlock(scope: !405, file: !45, line: 223, column: 13)
!411 = !DILocation(line: 226, column: 24, scope: !412)
!412 = distinct !DILexicalBlock(scope: !410, file: !45, line: 226, column: 17)
!413 = !DILocation(line: 226, column: 22, scope: !412)
!414 = !DILocation(line: 226, column: 29, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !45, line: 226, column: 17)
!416 = !DILocation(line: 226, column: 33, scope: !415)
!417 = !DILocation(line: 226, column: 31, scope: !415)
!418 = !DILocation(line: 226, column: 17, scope: !412)
!419 = !DILocation(line: 229, column: 32, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !45, line: 227, column: 17)
!421 = !DILocation(line: 230, column: 17, scope: !420)
!422 = !DILocation(line: 226, column: 37, scope: !415)
!423 = !DILocation(line: 226, column: 17, scope: !415)
!424 = distinct !{!424, !418, !425, !155}
!425 = !DILocation(line: 230, column: 17, scope: !412)
!426 = !DILocation(line: 231, column: 30, scope: !410)
!427 = !DILocation(line: 231, column: 17, scope: !410)
!428 = !DILocation(line: 232, column: 13, scope: !410)
!429 = !DILocation(line: 234, column: 5, scope: !398)
!430 = !DILocation(line: 235, column: 1, scope: !375)
!431 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 238, type: !53, scopeLine: 239, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!432 = !DILocalVariable(name: "data", scope: !431, file: !45, line: 240, type: !42)
!433 = !DILocation(line: 240, column: 12, scope: !431)
!434 = !DILocalVariable(name: "dataBuffer", scope: !431, file: !45, line: 241, type: !58)
!435 = !DILocation(line: 241, column: 10, scope: !431)
!436 = !DILocation(line: 242, column: 12, scope: !431)
!437 = !DILocation(line: 242, column: 10, scope: !431)
!438 = !DILocation(line: 243, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !431, file: !45, line: 243, column: 8)
!440 = !DILocation(line: 243, column: 18, scope: !439)
!441 = !DILocation(line: 243, column: 8, scope: !431)
!442 = !DILocation(line: 246, column: 16, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !45, line: 244, column: 5)
!444 = !DILocation(line: 246, column: 9, scope: !443)
!445 = !DILocation(line: 247, column: 5, scope: !443)
!446 = !DILocation(line: 248, column: 8, scope: !447)
!447 = distinct !DILexicalBlock(scope: !431, file: !45, line: 248, column: 8)
!448 = !DILocation(line: 248, column: 18, scope: !447)
!449 = !DILocation(line: 248, column: 8, scope: !431)
!450 = !DILocalVariable(name: "i", scope: !451, file: !45, line: 251, type: !23)
!451 = distinct !DILexicalBlock(scope: !452, file: !45, line: 250, column: 9)
!452 = distinct !DILexicalBlock(scope: !447, file: !45, line: 249, column: 5)
!453 = !DILocation(line: 251, column: 17, scope: !451)
!454 = !DILocalVariable(name: "n", scope: !451, file: !45, line: 251, type: !23)
!455 = !DILocation(line: 251, column: 20, scope: !451)
!456 = !DILocalVariable(name: "intVariable", scope: !451, file: !45, line: 251, type: !23)
!457 = !DILocation(line: 251, column: 23, scope: !451)
!458 = !DILocation(line: 252, column: 24, scope: !459)
!459 = distinct !DILexicalBlock(scope: !451, file: !45, line: 252, column: 17)
!460 = !DILocation(line: 252, column: 17, scope: !459)
!461 = !DILocation(line: 252, column: 40, scope: !459)
!462 = !DILocation(line: 252, column: 17, scope: !451)
!463 = !DILocation(line: 255, column: 29, scope: !464)
!464 = distinct !DILexicalBlock(scope: !459, file: !45, line: 253, column: 13)
!465 = !DILocation(line: 256, column: 24, scope: !466)
!466 = distinct !DILexicalBlock(scope: !464, file: !45, line: 256, column: 17)
!467 = !DILocation(line: 256, column: 22, scope: !466)
!468 = !DILocation(line: 256, column: 29, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !45, line: 256, column: 17)
!470 = !DILocation(line: 256, column: 33, scope: !469)
!471 = !DILocation(line: 256, column: 31, scope: !469)
!472 = !DILocation(line: 256, column: 17, scope: !466)
!473 = !DILocation(line: 259, column: 32, scope: !474)
!474 = distinct !DILexicalBlock(scope: !469, file: !45, line: 257, column: 17)
!475 = !DILocation(line: 260, column: 17, scope: !474)
!476 = !DILocation(line: 256, column: 37, scope: !469)
!477 = !DILocation(line: 256, column: 17, scope: !469)
!478 = distinct !{!478, !472, !479, !155}
!479 = !DILocation(line: 260, column: 17, scope: !466)
!480 = !DILocation(line: 261, column: 30, scope: !464)
!481 = !DILocation(line: 261, column: 17, scope: !464)
!482 = !DILocation(line: 262, column: 13, scope: !464)
!483 = !DILocation(line: 264, column: 5, scope: !452)
!484 = !DILocation(line: 265, column: 1, scope: !431)
!485 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_14_good", scope: !45, file: !45, line: 267, type: !53, scopeLine: 268, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!486 = !DILocation(line: 269, column: 5, scope: !485)
!487 = !DILocation(line: 270, column: 5, scope: !485)
!488 = !DILocation(line: 271, column: 5, scope: !485)
!489 = !DILocation(line: 272, column: 5, scope: !485)
!490 = !DILocation(line: 273, column: 1, scope: !485)
!491 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !492, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !42}
!494 = !DILocalVariable(name: "line", arg: 1, scope: !491, file: !3, line: 11, type: !42)
!495 = !DILocation(line: 11, column: 25, scope: !491)
!496 = !DILocation(line: 13, column: 1, scope: !491)
!497 = !DILocation(line: 14, column: 8, scope: !498)
!498 = distinct !DILexicalBlock(scope: !491, file: !3, line: 14, column: 8)
!499 = !DILocation(line: 14, column: 13, scope: !498)
!500 = !DILocation(line: 14, column: 8, scope: !491)
!501 = !DILocation(line: 16, column: 24, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !3, line: 15, column: 5)
!503 = !DILocation(line: 16, column: 9, scope: !502)
!504 = !DILocation(line: 17, column: 5, scope: !502)
!505 = !DILocation(line: 18, column: 5, scope: !491)
!506 = !DILocation(line: 19, column: 1, scope: !491)
!507 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !492, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DILocalVariable(name: "line", arg: 1, scope: !507, file: !3, line: 20, type: !42)
!509 = !DILocation(line: 20, column: 29, scope: !507)
!510 = !DILocation(line: 22, column: 8, scope: !511)
!511 = distinct !DILexicalBlock(scope: !507, file: !3, line: 22, column: 8)
!512 = !DILocation(line: 22, column: 13, scope: !511)
!513 = !DILocation(line: 22, column: 8, scope: !507)
!514 = !DILocation(line: 24, column: 24, scope: !515)
!515 = distinct !DILexicalBlock(scope: !511, file: !3, line: 23, column: 5)
!516 = !DILocation(line: 24, column: 9, scope: !515)
!517 = !DILocation(line: 25, column: 5, scope: !515)
!518 = !DILocation(line: 26, column: 1, scope: !507)
!519 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !520, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !72, line: 74, baseType: !23)
!524 = !DILocalVariable(name: "line", arg: 1, scope: !519, file: !3, line: 27, type: !522)
!525 = !DILocation(line: 27, column: 29, scope: !519)
!526 = !DILocation(line: 29, column: 8, scope: !527)
!527 = distinct !DILexicalBlock(scope: !519, file: !3, line: 29, column: 8)
!528 = !DILocation(line: 29, column: 13, scope: !527)
!529 = !DILocation(line: 29, column: 8, scope: !519)
!530 = !DILocation(line: 31, column: 27, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !3, line: 30, column: 5)
!532 = !DILocation(line: 31, column: 9, scope: !531)
!533 = !DILocation(line: 32, column: 5, scope: !531)
!534 = !DILocation(line: 33, column: 1, scope: !519)
!535 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !536, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !23}
!538 = !DILocalVariable(name: "intNumber", arg: 1, scope: !535, file: !3, line: 35, type: !23)
!539 = !DILocation(line: 35, column: 24, scope: !535)
!540 = !DILocation(line: 37, column: 20, scope: !535)
!541 = !DILocation(line: 37, column: 5, scope: !535)
!542 = !DILocation(line: 38, column: 1, scope: !535)
!543 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !544, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !546}
!546 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!547 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !543, file: !3, line: 40, type: !546)
!548 = !DILocation(line: 40, column: 28, scope: !543)
!549 = !DILocation(line: 42, column: 21, scope: !543)
!550 = !DILocation(line: 42, column: 5, scope: !543)
!551 = !DILocation(line: 43, column: 1, scope: !543)
!552 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !553, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !555}
!555 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!556 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !552, file: !3, line: 45, type: !555)
!557 = !DILocation(line: 45, column: 28, scope: !552)
!558 = !DILocation(line: 47, column: 20, scope: !552)
!559 = !DILocation(line: 47, column: 5, scope: !552)
!560 = !DILocation(line: 48, column: 1, scope: !552)
!561 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !562, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !564}
!564 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!565 = !DILocalVariable(name: "longNumber", arg: 1, scope: !561, file: !3, line: 50, type: !564)
!566 = !DILocation(line: 50, column: 26, scope: !561)
!567 = !DILocation(line: 52, column: 21, scope: !561)
!568 = !DILocation(line: 52, column: 5, scope: !561)
!569 = !DILocation(line: 53, column: 1, scope: !561)
!570 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !571, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !573}
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !574, line: 27, baseType: !575)
!574 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !576, line: 44, baseType: !564)
!576 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!577 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !570, file: !3, line: 55, type: !573)
!578 = !DILocation(line: 55, column: 33, scope: !570)
!579 = !DILocation(line: 57, column: 29, scope: !570)
!580 = !DILocation(line: 57, column: 5, scope: !570)
!581 = !DILocation(line: 58, column: 1, scope: !570)
!582 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !583, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !71}
!585 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !582, file: !3, line: 60, type: !71)
!586 = !DILocation(line: 60, column: 29, scope: !582)
!587 = !DILocation(line: 62, column: 21, scope: !582)
!588 = !DILocation(line: 62, column: 5, scope: !582)
!589 = !DILocation(line: 63, column: 1, scope: !582)
!590 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !591, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !43}
!593 = !DILocalVariable(name: "charHex", arg: 1, scope: !590, file: !3, line: 65, type: !43)
!594 = !DILocation(line: 65, column: 29, scope: !590)
!595 = !DILocation(line: 67, column: 22, scope: !590)
!596 = !DILocation(line: 67, column: 5, scope: !590)
!597 = !DILocation(line: 68, column: 1, scope: !590)
!598 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !599, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !523}
!601 = !DILocalVariable(name: "wideChar", arg: 1, scope: !598, file: !3, line: 70, type: !523)
!602 = !DILocation(line: 70, column: 29, scope: !598)
!603 = !DILocalVariable(name: "s", scope: !598, file: !3, line: 74, type: !604)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 64, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 2)
!607 = !DILocation(line: 74, column: 13, scope: !598)
!608 = !DILocation(line: 75, column: 16, scope: !598)
!609 = !DILocation(line: 75, column: 9, scope: !598)
!610 = !DILocation(line: 75, column: 14, scope: !598)
!611 = !DILocation(line: 76, column: 9, scope: !598)
!612 = !DILocation(line: 76, column: 14, scope: !598)
!613 = !DILocation(line: 77, column: 21, scope: !598)
!614 = !DILocation(line: 77, column: 5, scope: !598)
!615 = !DILocation(line: 78, column: 1, scope: !598)
!616 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !617, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !7}
!619 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !616, file: !3, line: 80, type: !7)
!620 = !DILocation(line: 80, column: 33, scope: !616)
!621 = !DILocation(line: 82, column: 20, scope: !616)
!622 = !DILocation(line: 82, column: 5, scope: !616)
!623 = !DILocation(line: 83, column: 1, scope: !616)
!624 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !625, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !25}
!627 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !624, file: !3, line: 85, type: !25)
!628 = !DILocation(line: 85, column: 45, scope: !624)
!629 = !DILocation(line: 87, column: 22, scope: !624)
!630 = !DILocation(line: 87, column: 5, scope: !624)
!631 = !DILocation(line: 88, column: 1, scope: !624)
!632 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !633, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !635}
!635 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!636 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !632, file: !3, line: 90, type: !635)
!637 = !DILocation(line: 90, column: 29, scope: !632)
!638 = !DILocation(line: 92, column: 20, scope: !632)
!639 = !DILocation(line: 92, column: 5, scope: !632)
!640 = !DILocation(line: 93, column: 1, scope: !632)
!641 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !642, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !646, line: 100, baseType: !647)
!646 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_991/source_code")
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !646, line: 96, size: 64, elements: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !647, file: !646, line: 98, baseType: !23, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !647, file: !646, line: 99, baseType: !23, size: 32, offset: 32)
!651 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !641, file: !3, line: 95, type: !644)
!652 = !DILocation(line: 95, column: 40, scope: !641)
!653 = !DILocation(line: 97, column: 26, scope: !641)
!654 = !DILocation(line: 97, column: 47, scope: !641)
!655 = !DILocation(line: 97, column: 55, scope: !641)
!656 = !DILocation(line: 97, column: 76, scope: !641)
!657 = !DILocation(line: 97, column: 5, scope: !641)
!658 = !DILocation(line: 98, column: 1, scope: !641)
!659 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !660, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !662, !71}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!663 = !DILocalVariable(name: "bytes", arg: 1, scope: !659, file: !3, line: 100, type: !662)
!664 = !DILocation(line: 100, column: 38, scope: !659)
!665 = !DILocalVariable(name: "numBytes", arg: 2, scope: !659, file: !3, line: 100, type: !71)
!666 = !DILocation(line: 100, column: 52, scope: !659)
!667 = !DILocalVariable(name: "i", scope: !659, file: !3, line: 102, type: !71)
!668 = !DILocation(line: 102, column: 12, scope: !659)
!669 = !DILocation(line: 103, column: 12, scope: !670)
!670 = distinct !DILexicalBlock(scope: !659, file: !3, line: 103, column: 5)
!671 = !DILocation(line: 103, column: 10, scope: !670)
!672 = !DILocation(line: 103, column: 17, scope: !673)
!673 = distinct !DILexicalBlock(scope: !670, file: !3, line: 103, column: 5)
!674 = !DILocation(line: 103, column: 21, scope: !673)
!675 = !DILocation(line: 103, column: 19, scope: !673)
!676 = !DILocation(line: 103, column: 5, scope: !670)
!677 = !DILocation(line: 105, column: 24, scope: !678)
!678 = distinct !DILexicalBlock(scope: !673, file: !3, line: 104, column: 5)
!679 = !DILocation(line: 105, column: 30, scope: !678)
!680 = !DILocation(line: 105, column: 9, scope: !678)
!681 = !DILocation(line: 106, column: 5, scope: !678)
!682 = !DILocation(line: 103, column: 31, scope: !673)
!683 = !DILocation(line: 103, column: 5, scope: !673)
!684 = distinct !{!684, !676, !685, !155}
!685 = !DILocation(line: 106, column: 5, scope: !670)
!686 = !DILocation(line: 107, column: 5, scope: !659)
!687 = !DILocation(line: 108, column: 1, scope: !659)
!688 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !689, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!689 = !DISubroutineType(types: !690)
!690 = !{!71, !662, !71, !42}
!691 = !DILocalVariable(name: "bytes", arg: 1, scope: !688, file: !3, line: 113, type: !662)
!692 = !DILocation(line: 113, column: 39, scope: !688)
!693 = !DILocalVariable(name: "numBytes", arg: 2, scope: !688, file: !3, line: 113, type: !71)
!694 = !DILocation(line: 113, column: 53, scope: !688)
!695 = !DILocalVariable(name: "hex", arg: 3, scope: !688, file: !3, line: 113, type: !42)
!696 = !DILocation(line: 113, column: 71, scope: !688)
!697 = !DILocalVariable(name: "numWritten", scope: !688, file: !3, line: 115, type: !71)
!698 = !DILocation(line: 115, column: 12, scope: !688)
!699 = !DILocation(line: 121, column: 5, scope: !688)
!700 = !DILocation(line: 121, column: 12, scope: !688)
!701 = !DILocation(line: 121, column: 25, scope: !688)
!702 = !DILocation(line: 121, column: 23, scope: !688)
!703 = !DILocation(line: 121, column: 34, scope: !688)
!704 = !DILocation(line: 121, column: 37, scope: !688)
!705 = !DILocation(line: 121, column: 67, scope: !688)
!706 = !DILocation(line: 121, column: 70, scope: !688)
!707 = !DILocation(line: 0, scope: !688)
!708 = !DILocalVariable(name: "byte", scope: !709, file: !3, line: 123, type: !23)
!709 = distinct !DILexicalBlock(scope: !688, file: !3, line: 122, column: 5)
!710 = !DILocation(line: 123, column: 13, scope: !709)
!711 = !DILocation(line: 124, column: 17, scope: !709)
!712 = !DILocation(line: 124, column: 25, scope: !709)
!713 = !DILocation(line: 124, column: 23, scope: !709)
!714 = !DILocation(line: 124, column: 9, scope: !709)
!715 = !DILocation(line: 125, column: 45, scope: !709)
!716 = !DILocation(line: 125, column: 29, scope: !709)
!717 = !DILocation(line: 125, column: 9, scope: !709)
!718 = !DILocation(line: 125, column: 15, scope: !709)
!719 = !DILocation(line: 125, column: 27, scope: !709)
!720 = !DILocation(line: 126, column: 9, scope: !709)
!721 = distinct !{!721, !699, !722, !155}
!722 = !DILocation(line: 127, column: 5, scope: !688)
!723 = !DILocation(line: 129, column: 12, scope: !688)
!724 = !DILocation(line: 129, column: 5, scope: !688)
!725 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !726, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!726 = !DISubroutineType(types: !727)
!727 = !{!71, !662, !71, !522}
!728 = !DILocalVariable(name: "bytes", arg: 1, scope: !725, file: !3, line: 135, type: !662)
!729 = !DILocation(line: 135, column: 41, scope: !725)
!730 = !DILocalVariable(name: "numBytes", arg: 2, scope: !725, file: !3, line: 135, type: !71)
!731 = !DILocation(line: 135, column: 55, scope: !725)
!732 = !DILocalVariable(name: "hex", arg: 3, scope: !725, file: !3, line: 135, type: !522)
!733 = !DILocation(line: 135, column: 76, scope: !725)
!734 = !DILocalVariable(name: "numWritten", scope: !725, file: !3, line: 137, type: !71)
!735 = !DILocation(line: 137, column: 12, scope: !725)
!736 = !DILocation(line: 143, column: 5, scope: !725)
!737 = !DILocation(line: 143, column: 12, scope: !725)
!738 = !DILocation(line: 143, column: 25, scope: !725)
!739 = !DILocation(line: 143, column: 23, scope: !725)
!740 = !DILocation(line: 143, column: 34, scope: !725)
!741 = !DILocation(line: 143, column: 47, scope: !725)
!742 = !DILocation(line: 143, column: 55, scope: !725)
!743 = !DILocation(line: 143, column: 53, scope: !725)
!744 = !DILocation(line: 143, column: 37, scope: !725)
!745 = !DILocation(line: 143, column: 68, scope: !725)
!746 = !DILocation(line: 143, column: 81, scope: !725)
!747 = !DILocation(line: 143, column: 89, scope: !725)
!748 = !DILocation(line: 143, column: 87, scope: !725)
!749 = !DILocation(line: 143, column: 100, scope: !725)
!750 = !DILocation(line: 143, column: 71, scope: !725)
!751 = !DILocation(line: 0, scope: !725)
!752 = !DILocalVariable(name: "byte", scope: !753, file: !3, line: 145, type: !23)
!753 = distinct !DILexicalBlock(scope: !725, file: !3, line: 144, column: 5)
!754 = !DILocation(line: 145, column: 13, scope: !753)
!755 = !DILocation(line: 146, column: 18, scope: !753)
!756 = !DILocation(line: 146, column: 26, scope: !753)
!757 = !DILocation(line: 146, column: 24, scope: !753)
!758 = !DILocation(line: 146, column: 9, scope: !753)
!759 = !DILocation(line: 147, column: 45, scope: !753)
!760 = !DILocation(line: 147, column: 29, scope: !753)
!761 = !DILocation(line: 147, column: 9, scope: !753)
!762 = !DILocation(line: 147, column: 15, scope: !753)
!763 = !DILocation(line: 147, column: 27, scope: !753)
!764 = !DILocation(line: 148, column: 9, scope: !753)
!765 = distinct !{!765, !736, !766, !155}
!766 = !DILocation(line: 149, column: 5, scope: !725)
!767 = !DILocation(line: 151, column: 12, scope: !725)
!768 = !DILocation(line: 151, column: 5, scope: !725)
!769 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !770, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!770 = !DISubroutineType(types: !771)
!771 = !{!23}
!772 = !DILocation(line: 158, column: 5, scope: !769)
!773 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !770, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!774 = !DILocation(line: 163, column: 5, scope: !773)
!775 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !770, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!776 = !DILocation(line: 168, column: 13, scope: !775)
!777 = !DILocation(line: 168, column: 20, scope: !775)
!778 = !DILocation(line: 168, column: 5, scope: !775)
!779 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!780 = !DILocation(line: 187, column: 16, scope: !779)
!781 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!782 = !DILocation(line: 188, column: 16, scope: !781)
!783 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!784 = !DILocation(line: 189, column: 16, scope: !783)
!785 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!786 = !DILocation(line: 190, column: 16, scope: !785)
!787 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!788 = !DILocation(line: 191, column: 16, scope: !787)
!789 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!790 = !DILocation(line: 192, column: 16, scope: !789)
!791 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!792 = !DILocation(line: 193, column: 16, scope: !791)
!793 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!794 = !DILocation(line: 194, column: 16, scope: !793)
!795 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!796 = !DILocation(line: 195, column: 16, scope: !795)
!797 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!798 = !DILocation(line: 198, column: 15, scope: !797)
!799 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!800 = !DILocation(line: 199, column: 15, scope: !799)
!801 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!802 = !DILocation(line: 200, column: 15, scope: !801)
!803 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!804 = !DILocation(line: 201, column: 15, scope: !803)
!805 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!806 = !DILocation(line: 202, column: 15, scope: !805)
!807 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!808 = !DILocation(line: 203, column: 15, scope: !807)
!809 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!810 = !DILocation(line: 204, column: 15, scope: !809)
!811 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!812 = !DILocation(line: 205, column: 15, scope: !811)
!813 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!814 = !DILocation(line: 206, column: 15, scope: !813)
