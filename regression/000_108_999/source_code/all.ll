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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_32_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %data20 = alloca i8*, align 8
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
  %4 = load i64, i64* %dataLen, align 8, !dbg !81
  %sub = sub i64 100, %4, !dbg !83
  %cmp = icmp ugt i64 %sub, 1, !dbg !84
  br i1 %cmp, label %if.then, label %if.end19, !dbg !85

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !86
  %6 = load i64, i64* %dataLen, align 8, !dbg !89
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !90
  %7 = load i64, i64* %dataLen, align 8, !dbg !91
  %sub2 = sub i64 100, %7, !dbg !92
  %conv = trunc i64 %sub2 to i32, !dbg !93
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !94
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !95
  %cmp4 = icmp ne i8* %call3, null, !dbg !96
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !97

if.then6:                                         ; preds = %if.then
  %9 = load i8*, i8** %data1, align 8, !dbg !98
  %call7 = call i64 @strlen(i8* %9) #7, !dbg !100
  store i64 %call7, i64* %dataLen, align 8, !dbg !101
  %10 = load i64, i64* %dataLen, align 8, !dbg !102
  %cmp8 = icmp ugt i64 %10, 0, !dbg !104
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !105

land.lhs.true:                                    ; preds = %if.then6
  %11 = load i8*, i8** %data1, align 8, !dbg !106
  %12 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub10 = sub i64 %12, 1, !dbg !108
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub10, !dbg !106
  %13 = load i8, i8* %arrayidx, align 1, !dbg !106
  %conv11 = sext i8 %13 to i32, !dbg !106
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !109
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !110

if.then14:                                        ; preds = %land.lhs.true
  %14 = load i8*, i8** %data1, align 8, !dbg !111
  %15 = load i64, i64* %dataLen, align 8, !dbg !113
  %sub15 = sub i64 %15, 1, !dbg !114
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %sub15, !dbg !111
  store i8 0, i8* %arrayidx16, align 1, !dbg !115
  br label %if.end, !dbg !116

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !117

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !118
  %16 = load i8*, i8** %data1, align 8, !dbg !120
  %17 = load i64, i64* %dataLen, align 8, !dbg !121
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !120
  store i8 0, i8* %arrayidx17, align 1, !dbg !122
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !123

if.end19:                                         ; preds = %if.end18, %entry
  %18 = load i8*, i8** %data1, align 8, !dbg !124
  %19 = load i8**, i8*** %dataPtr1, align 8, !dbg !125
  store i8* %18, i8** %19, align 8, !dbg !126
  call void @llvm.dbg.declare(metadata i8** %data20, metadata !127, metadata !DIExpression()), !dbg !129
  %20 = load i8**, i8*** %dataPtr2, align 8, !dbg !130
  %21 = load i8*, i8** %20, align 8, !dbg !131
  store i8* %21, i8** %data20, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %i, metadata !132, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %n, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !137, metadata !DIExpression()), !dbg !138
  %22 = load i8*, i8** %data20, align 8, !dbg !139
  %call21 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !141
  %cmp22 = icmp eq i32 %call21, 1, !dbg !142
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !143

if.then24:                                        ; preds = %if.end19
  store i32 0, i32* %intVariable, align 4, !dbg !144
  store i32 0, i32* %i, align 4, !dbg !146
  br label %for.cond, !dbg !148

for.cond:                                         ; preds = %for.inc, %if.then24
  %23 = load i32, i32* %i, align 4, !dbg !149
  %24 = load i32, i32* %n, align 4, !dbg !151
  %cmp25 = icmp slt i32 %23, %24, !dbg !152
  br i1 %cmp25, label %for.body, label %for.end, !dbg !153

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %intVariable, align 4, !dbg !154
  %inc = add nsw i32 %25, 1, !dbg !154
  store i32 %inc, i32* %intVariable, align 4, !dbg !154
  br label %for.inc, !dbg !156

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !dbg !157
  %inc27 = add nsw i32 %26, 1, !dbg !157
  store i32 %inc27, i32* %i, align 4, !dbg !157
  br label %for.cond, !dbg !158, !llvm.loop !159

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !162
  call void @printIntLine(i32 %27), !dbg !163
  br label %if.end28, !dbg !164

if.end28:                                         ; preds = %for.end, %if.end19
  ret void, !dbg !165
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
define dso_local void @goodG2B() #0 !dbg !166 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !169, metadata !DIExpression()), !dbg !170
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !171, metadata !DIExpression()), !dbg !172
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !172
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !174
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !174
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !175
  store i8* %arraydecay, i8** %data, align 8, !dbg !176
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !177, metadata !DIExpression()), !dbg !179
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !180
  %2 = load i8*, i8** %1, align 8, !dbg !181
  store i8* %2, i8** %data1, align 8, !dbg !179
  %3 = load i8*, i8** %data1, align 8, !dbg !182
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !183
  %4 = load i8*, i8** %data1, align 8, !dbg !184
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !185
  store i8* %4, i8** %5, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !187, metadata !DIExpression()), !dbg !189
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !190
  %7 = load i8*, i8** %6, align 8, !dbg !191
  store i8* %7, i8** %data2, align 8, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %i, metadata !192, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i32* %n, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !197, metadata !DIExpression()), !dbg !198
  %8 = load i8*, i8** %data2, align 8, !dbg !199
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !201
  %cmp = icmp eq i32 %call3, 1, !dbg !202
  br i1 %cmp, label %if.then, label %if.end, !dbg !203

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !204
  store i32 0, i32* %i, align 4, !dbg !206
  br label %for.cond, !dbg !208

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !dbg !209
  %10 = load i32, i32* %n, align 4, !dbg !211
  %cmp4 = icmp slt i32 %9, %10, !dbg !212
  br i1 %cmp4, label %for.body, label %for.end, !dbg !213

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !214
  %inc = add nsw i32 %11, 1, !dbg !214
  store i32 %inc, i32* %intVariable, align 4, !dbg !214
  br label %for.inc, !dbg !216

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !217
  %inc5 = add nsw i32 %12, 1, !dbg !217
  store i32 %inc5, i32* %i, align 4, !dbg !217
  br label %for.cond, !dbg !218, !llvm.loop !219

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !221
  call void @printIntLine(i32 %13), !dbg !222
  br label %if.end, !dbg !223

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !224
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !225 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %data20 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !228, metadata !DIExpression()), !dbg !229
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !229
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !230, metadata !DIExpression()), !dbg !231
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !231
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !233
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !233
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !234
  store i8* %arraydecay, i8** %data, align 8, !dbg !235
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !236, metadata !DIExpression()), !dbg !238
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !239
  %2 = load i8*, i8** %1, align 8, !dbg !240
  store i8* %2, i8** %data1, align 8, !dbg !238
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !241, metadata !DIExpression()), !dbg !243
  %3 = load i8*, i8** %data1, align 8, !dbg !244
  %call = call i64 @strlen(i8* %3) #7, !dbg !245
  store i64 %call, i64* %dataLen, align 8, !dbg !243
  %4 = load i64, i64* %dataLen, align 8, !dbg !246
  %sub = sub i64 100, %4, !dbg !248
  %cmp = icmp ugt i64 %sub, 1, !dbg !249
  br i1 %cmp, label %if.then, label %if.end19, !dbg !250

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %data1, align 8, !dbg !251
  %6 = load i64, i64* %dataLen, align 8, !dbg !254
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !255
  %7 = load i64, i64* %dataLen, align 8, !dbg !256
  %sub2 = sub i64 100, %7, !dbg !257
  %conv = trunc i64 %sub2 to i32, !dbg !258
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !259
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !260
  %cmp4 = icmp ne i8* %call3, null, !dbg !261
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !262

if.then6:                                         ; preds = %if.then
  %9 = load i8*, i8** %data1, align 8, !dbg !263
  %call7 = call i64 @strlen(i8* %9) #7, !dbg !265
  store i64 %call7, i64* %dataLen, align 8, !dbg !266
  %10 = load i64, i64* %dataLen, align 8, !dbg !267
  %cmp8 = icmp ugt i64 %10, 0, !dbg !269
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !270

land.lhs.true:                                    ; preds = %if.then6
  %11 = load i8*, i8** %data1, align 8, !dbg !271
  %12 = load i64, i64* %dataLen, align 8, !dbg !272
  %sub10 = sub i64 %12, 1, !dbg !273
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub10, !dbg !271
  %13 = load i8, i8* %arrayidx, align 1, !dbg !271
  %conv11 = sext i8 %13 to i32, !dbg !271
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !274
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !275

if.then14:                                        ; preds = %land.lhs.true
  %14 = load i8*, i8** %data1, align 8, !dbg !276
  %15 = load i64, i64* %dataLen, align 8, !dbg !278
  %sub15 = sub i64 %15, 1, !dbg !279
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %sub15, !dbg !276
  store i8 0, i8* %arrayidx16, align 1, !dbg !280
  br label %if.end, !dbg !281

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !282

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !283
  %16 = load i8*, i8** %data1, align 8, !dbg !285
  %17 = load i64, i64* %dataLen, align 8, !dbg !286
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !285
  store i8 0, i8* %arrayidx17, align 1, !dbg !287
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !288

if.end19:                                         ; preds = %if.end18, %entry
  %18 = load i8*, i8** %data1, align 8, !dbg !289
  %19 = load i8**, i8*** %dataPtr1, align 8, !dbg !290
  store i8* %18, i8** %19, align 8, !dbg !291
  call void @llvm.dbg.declare(metadata i8** %data20, metadata !292, metadata !DIExpression()), !dbg !294
  %20 = load i8**, i8*** %dataPtr2, align 8, !dbg !295
  %21 = load i8*, i8** %20, align 8, !dbg !296
  store i8* %21, i8** %data20, align 8, !dbg !294
  call void @llvm.dbg.declare(metadata i32* %i, metadata !297, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i32* %n, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !302, metadata !DIExpression()), !dbg !303
  %22 = load i8*, i8** %data20, align 8, !dbg !304
  %call21 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !306
  %cmp22 = icmp eq i32 %call21, 1, !dbg !307
  br i1 %cmp22, label %if.then24, label %if.end32, !dbg !308

if.then24:                                        ; preds = %if.end19
  %23 = load i32, i32* %n, align 4, !dbg !309
  %cmp25 = icmp slt i32 %23, 10000, !dbg !312
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !313

if.then27:                                        ; preds = %if.then24
  store i32 0, i32* %intVariable, align 4, !dbg !314
  store i32 0, i32* %i, align 4, !dbg !316
  br label %for.cond, !dbg !318

for.cond:                                         ; preds = %for.inc, %if.then27
  %24 = load i32, i32* %i, align 4, !dbg !319
  %25 = load i32, i32* %n, align 4, !dbg !321
  %cmp28 = icmp slt i32 %24, %25, !dbg !322
  br i1 %cmp28, label %for.body, label %for.end, !dbg !323

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %intVariable, align 4, !dbg !324
  %inc = add nsw i32 %26, 1, !dbg !324
  store i32 %inc, i32* %intVariable, align 4, !dbg !324
  br label %for.inc, !dbg !326

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !327
  %inc30 = add nsw i32 %27, 1, !dbg !327
  store i32 %inc30, i32* %i, align 4, !dbg !327
  br label %for.cond, !dbg !328, !llvm.loop !329

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %intVariable, align 4, !dbg !331
  call void @printIntLine(i32 %28), !dbg !332
  br label %if.end31, !dbg !333

if.end31:                                         ; preds = %for.end, %if.then24
  br label %if.end32, !dbg !334

if.end32:                                         ; preds = %if.end31, %if.end19
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_32_good() #0 !dbg !336 {
entry:
  call void @goodG2B(), !dbg !337
  call void @goodB2G(), !dbg !338
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !340 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !343, metadata !DIExpression()), !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !345
  %0 = load i8*, i8** %line.addr, align 8, !dbg !346
  %cmp = icmp ne i8* %0, null, !dbg !348
  br i1 %cmp, label %if.then, label %if.end, !dbg !349

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !350
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !352
  br label %if.end, !dbg !353

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !354
  ret void, !dbg !355
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !356 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !357, metadata !DIExpression()), !dbg !358
  %0 = load i8*, i8** %line.addr, align 8, !dbg !359
  %cmp = icmp ne i8* %0, null, !dbg !361
  br i1 %cmp, label %if.then, label %if.end, !dbg !362

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !363
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !365
  br label %if.end, !dbg !366

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !368 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !373, metadata !DIExpression()), !dbg !374
  %0 = load i32*, i32** %line.addr, align 8, !dbg !375
  %cmp = icmp ne i32* %0, null, !dbg !377
  br i1 %cmp, label %if.then, label %if.end, !dbg !378

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !379
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !381
  br label %if.end, !dbg !382

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !383
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !384 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !389
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !390
  ret void, !dbg !391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !392 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !398
  %conv = sext i16 %0 to i32, !dbg !398
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !399
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !401 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !405, metadata !DIExpression()), !dbg !406
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !407
  %conv = fpext float %0 to double, !dbg !407
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !408
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !410 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !416
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !417
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !419 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !428
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !429
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !431 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !439 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !444
  %conv = sext i8 %0 to i32, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !447 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !450, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !452, metadata !DIExpression()), !dbg !456
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !457
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !458
  store i32 %0, i32* %arrayidx, align 4, !dbg !459
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !460
  store i32 0, i32* %arrayidx1, align 4, !dbg !461
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !462
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !463
  ret void, !dbg !464
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !465 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !468, metadata !DIExpression()), !dbg !469
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !470
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !471
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !473 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !478
  %conv = zext i8 %0 to i32, !dbg !478
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !481 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !485, metadata !DIExpression()), !dbg !486
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !487
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !488
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !490 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !500, metadata !DIExpression()), !dbg !501
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !502
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !503
  %1 = load i32, i32* %intOne, align 4, !dbg !503
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !504
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !505
  %3 = load i32, i32* %intTwo, align 4, !dbg !505
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !506
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !508 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata i64* %i, metadata !516, metadata !DIExpression()), !dbg !517
  store i64 0, i64* %i, align 8, !dbg !518
  br label %for.cond, !dbg !520

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !521
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !523
  %cmp = icmp ult i64 %0, %1, !dbg !524
  br i1 %cmp, label %for.body, label %for.end, !dbg !525

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !526
  %3 = load i64, i64* %i, align 8, !dbg !528
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !526
  %4 = load i8, i8* %arrayidx, align 1, !dbg !526
  %conv = zext i8 %4 to i32, !dbg !526
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !529
  br label %for.inc, !dbg !530

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !531
  %inc = add i64 %5, 1, !dbg !531
  store i64 %inc, i64* %i, align 8, !dbg !531
  br label %for.cond, !dbg !532, !llvm.loop !533

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !535
  ret void, !dbg !536
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !537 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !540, metadata !DIExpression()), !dbg !541
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !542, metadata !DIExpression()), !dbg !543
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !546, metadata !DIExpression()), !dbg !547
  store i64 0, i64* %numWritten, align 8, !dbg !547
  br label %while.cond, !dbg !548

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !549
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !550
  %cmp = icmp ult i64 %0, %1, !dbg !551
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !552

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !553
  %2 = load i16*, i16** %call, align 8, !dbg !553
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !553
  %4 = load i64, i64* %numWritten, align 8, !dbg !553
  %mul = mul i64 2, %4, !dbg !553
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !553
  %5 = load i8, i8* %arrayidx, align 1, !dbg !553
  %conv = sext i8 %5 to i32, !dbg !553
  %idxprom = sext i32 %conv to i64, !dbg !553
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !553
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !553
  %conv2 = zext i16 %6 to i32, !dbg !553
  %and = and i32 %conv2, 4096, !dbg !553
  %tobool = icmp ne i32 %and, 0, !dbg !553
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !554

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !555
  %7 = load i16*, i16** %call3, align 8, !dbg !555
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !555
  %9 = load i64, i64* %numWritten, align 8, !dbg !555
  %mul4 = mul i64 2, %9, !dbg !555
  %add = add i64 %mul4, 1, !dbg !555
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !555
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !555
  %conv6 = sext i8 %10 to i32, !dbg !555
  %idxprom7 = sext i32 %conv6 to i64, !dbg !555
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !555
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !555
  %conv9 = zext i16 %11 to i32, !dbg !555
  %and10 = and i32 %conv9, 4096, !dbg !555
  %tobool11 = icmp ne i32 %and10, 0, !dbg !554
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !556
  br i1 %12, label %while.body, label %while.end, !dbg !548

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !557, metadata !DIExpression()), !dbg !559
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !560
  %14 = load i64, i64* %numWritten, align 8, !dbg !561
  %mul12 = mul i64 2, %14, !dbg !562
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !560
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !563
  %15 = load i32, i32* %byte, align 4, !dbg !564
  %conv15 = trunc i32 %15 to i8, !dbg !565
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !566
  %17 = load i64, i64* %numWritten, align 8, !dbg !567
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !566
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !568
  %18 = load i64, i64* %numWritten, align 8, !dbg !569
  %inc = add i64 %18, 1, !dbg !569
  store i64 %inc, i64* %numWritten, align 8, !dbg !569
  br label %while.cond, !dbg !548, !llvm.loop !570

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !572
  ret i64 %19, !dbg !573
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !574 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !577, metadata !DIExpression()), !dbg !578
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !579, metadata !DIExpression()), !dbg !580
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !581, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !583, metadata !DIExpression()), !dbg !584
  store i64 0, i64* %numWritten, align 8, !dbg !584
  br label %while.cond, !dbg !585

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !586
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !587
  %cmp = icmp ult i64 %0, %1, !dbg !588
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !589

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !590
  %3 = load i64, i64* %numWritten, align 8, !dbg !591
  %mul = mul i64 2, %3, !dbg !592
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !590
  %4 = load i32, i32* %arrayidx, align 4, !dbg !590
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !593
  %tobool = icmp ne i32 %call, 0, !dbg !593
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !594

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !595
  %6 = load i64, i64* %numWritten, align 8, !dbg !596
  %mul1 = mul i64 2, %6, !dbg !597
  %add = add i64 %mul1, 1, !dbg !598
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !595
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !595
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !599
  %tobool4 = icmp ne i32 %call3, 0, !dbg !594
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !600
  br i1 %8, label %while.body, label %while.end, !dbg !585

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !601, metadata !DIExpression()), !dbg !603
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !604
  %10 = load i64, i64* %numWritten, align 8, !dbg !605
  %mul5 = mul i64 2, %10, !dbg !606
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !604
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !607
  %11 = load i32, i32* %byte, align 4, !dbg !608
  %conv = trunc i32 %11 to i8, !dbg !609
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !610
  %13 = load i64, i64* %numWritten, align 8, !dbg !611
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !610
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !612
  %14 = load i64, i64* %numWritten, align 8, !dbg !613
  %inc = add i64 %14, 1, !dbg !613
  store i64 %inc, i64* %numWritten, align 8, !dbg !613
  br label %while.cond, !dbg !585, !llvm.loop !614

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !616
  ret i64 %15, !dbg !617
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !618 {
entry:
  ret i32 1, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !622 {
entry:
  ret i32 0, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !624 {
entry:
  %call = call i32 @rand() #8, !dbg !625
  %rem = srem i32 %call, 2, !dbg !626
  ret i32 %rem, !dbg !627
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !632 {
entry:
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !634 {
entry:
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !636 {
entry:
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !638 {
entry:
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !640 {
entry:
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !642 {
entry:
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !644 {
entry:
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !646 {
entry:
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !648 {
entry:
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !650 {
entry:
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !652 {
entry:
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !654 {
entry:
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !656 {
entry:
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !658 {
entry:
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !660 {
entry:
  ret void, !dbg !661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !662 {
entry:
  ret void, !dbg !663
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_999/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_999/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_32_bad", scope: !45, file: !45, line: 29, type: !53, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 31, type: !42)
!56 = !DILocation(line: 31, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataPtr1", scope: !52, file: !45, line: 32, type: !41)
!58 = !DILocation(line: 32, column: 13, scope: !52)
!59 = !DILocalVariable(name: "dataPtr2", scope: !52, file: !45, line: 33, type: !41)
!60 = !DILocation(line: 33, column: 13, scope: !52)
!61 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 34, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 34, column: 10, scope: !52)
!66 = !DILocation(line: 35, column: 12, scope: !52)
!67 = !DILocation(line: 35, column: 10, scope: !52)
!68 = !DILocalVariable(name: "data", scope: !69, file: !45, line: 37, type: !42)
!69 = distinct !DILexicalBlock(scope: !52, file: !45, line: 36, column: 5)
!70 = !DILocation(line: 37, column: 16, scope: !69)
!71 = !DILocation(line: 37, column: 24, scope: !69)
!72 = !DILocation(line: 37, column: 23, scope: !69)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 40, type: !75)
!74 = distinct !DILexicalBlock(scope: !69, file: !45, line: 38, column: 9)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 40, column: 20, scope: !74)
!79 = !DILocation(line: 40, column: 37, scope: !74)
!80 = !DILocation(line: 40, column: 30, scope: !74)
!81 = !DILocation(line: 42, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !74, file: !45, line: 42, column: 17)
!83 = !DILocation(line: 42, column: 20, scope: !82)
!84 = !DILocation(line: 42, column: 29, scope: !82)
!85 = !DILocation(line: 42, column: 17, scope: !74)
!86 = !DILocation(line: 45, column: 27, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !45, line: 45, column: 21)
!88 = distinct !DILexicalBlock(scope: !82, file: !45, line: 43, column: 13)
!89 = !DILocation(line: 45, column: 32, scope: !87)
!90 = !DILocation(line: 45, column: 31, scope: !87)
!91 = !DILocation(line: 45, column: 51, scope: !87)
!92 = !DILocation(line: 45, column: 50, scope: !87)
!93 = !DILocation(line: 45, column: 41, scope: !87)
!94 = !DILocation(line: 45, column: 61, scope: !87)
!95 = !DILocation(line: 45, column: 21, scope: !87)
!96 = !DILocation(line: 45, column: 68, scope: !87)
!97 = !DILocation(line: 45, column: 21, scope: !88)
!98 = !DILocation(line: 49, column: 38, scope: !99)
!99 = distinct !DILexicalBlock(scope: !87, file: !45, line: 46, column: 17)
!100 = !DILocation(line: 49, column: 31, scope: !99)
!101 = !DILocation(line: 49, column: 29, scope: !99)
!102 = !DILocation(line: 50, column: 25, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !45, line: 50, column: 25)
!104 = !DILocation(line: 50, column: 33, scope: !103)
!105 = !DILocation(line: 50, column: 37, scope: !103)
!106 = !DILocation(line: 50, column: 40, scope: !103)
!107 = !DILocation(line: 50, column: 45, scope: !103)
!108 = !DILocation(line: 50, column: 52, scope: !103)
!109 = !DILocation(line: 50, column: 56, scope: !103)
!110 = !DILocation(line: 50, column: 25, scope: !99)
!111 = !DILocation(line: 52, column: 25, scope: !112)
!112 = distinct !DILexicalBlock(scope: !103, file: !45, line: 51, column: 21)
!113 = !DILocation(line: 52, column: 30, scope: !112)
!114 = !DILocation(line: 52, column: 37, scope: !112)
!115 = !DILocation(line: 52, column: 41, scope: !112)
!116 = !DILocation(line: 53, column: 21, scope: !112)
!117 = !DILocation(line: 54, column: 17, scope: !99)
!118 = !DILocation(line: 57, column: 21, scope: !119)
!119 = distinct !DILexicalBlock(scope: !87, file: !45, line: 56, column: 17)
!120 = !DILocation(line: 59, column: 21, scope: !119)
!121 = !DILocation(line: 59, column: 26, scope: !119)
!122 = !DILocation(line: 59, column: 35, scope: !119)
!123 = !DILocation(line: 61, column: 13, scope: !88)
!124 = !DILocation(line: 63, column: 21, scope: !69)
!125 = !DILocation(line: 63, column: 10, scope: !69)
!126 = !DILocation(line: 63, column: 19, scope: !69)
!127 = !DILocalVariable(name: "data", scope: !128, file: !45, line: 66, type: !42)
!128 = distinct !DILexicalBlock(scope: !52, file: !45, line: 65, column: 5)
!129 = !DILocation(line: 66, column: 16, scope: !128)
!130 = !DILocation(line: 66, column: 24, scope: !128)
!131 = !DILocation(line: 66, column: 23, scope: !128)
!132 = !DILocalVariable(name: "i", scope: !133, file: !45, line: 68, type: !23)
!133 = distinct !DILexicalBlock(scope: !128, file: !45, line: 67, column: 9)
!134 = !DILocation(line: 68, column: 17, scope: !133)
!135 = !DILocalVariable(name: "n", scope: !133, file: !45, line: 68, type: !23)
!136 = !DILocation(line: 68, column: 20, scope: !133)
!137 = !DILocalVariable(name: "intVariable", scope: !133, file: !45, line: 68, type: !23)
!138 = !DILocation(line: 68, column: 23, scope: !133)
!139 = !DILocation(line: 69, column: 24, scope: !140)
!140 = distinct !DILexicalBlock(scope: !133, file: !45, line: 69, column: 17)
!141 = !DILocation(line: 69, column: 17, scope: !140)
!142 = !DILocation(line: 69, column: 40, scope: !140)
!143 = !DILocation(line: 69, column: 17, scope: !133)
!144 = !DILocation(line: 72, column: 29, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !45, line: 70, column: 13)
!146 = !DILocation(line: 73, column: 24, scope: !147)
!147 = distinct !DILexicalBlock(scope: !145, file: !45, line: 73, column: 17)
!148 = !DILocation(line: 73, column: 22, scope: !147)
!149 = !DILocation(line: 73, column: 29, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !45, line: 73, column: 17)
!151 = !DILocation(line: 73, column: 33, scope: !150)
!152 = !DILocation(line: 73, column: 31, scope: !150)
!153 = !DILocation(line: 73, column: 17, scope: !147)
!154 = !DILocation(line: 76, column: 32, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !45, line: 74, column: 17)
!156 = !DILocation(line: 77, column: 17, scope: !155)
!157 = !DILocation(line: 73, column: 37, scope: !150)
!158 = !DILocation(line: 73, column: 17, scope: !150)
!159 = distinct !{!159, !153, !160, !161}
!160 = !DILocation(line: 77, column: 17, scope: !147)
!161 = !{!"llvm.loop.mustprogress"}
!162 = !DILocation(line: 78, column: 30, scope: !145)
!163 = !DILocation(line: 78, column: 17, scope: !145)
!164 = !DILocation(line: 79, column: 13, scope: !145)
!165 = !DILocation(line: 82, column: 1, scope: !52)
!166 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 89, type: !53, scopeLine: 90, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!167 = !DILocalVariable(name: "data", scope: !166, file: !45, line: 91, type: !42)
!168 = !DILocation(line: 91, column: 12, scope: !166)
!169 = !DILocalVariable(name: "dataPtr1", scope: !166, file: !45, line: 92, type: !41)
!170 = !DILocation(line: 92, column: 13, scope: !166)
!171 = !DILocalVariable(name: "dataPtr2", scope: !166, file: !45, line: 93, type: !41)
!172 = !DILocation(line: 93, column: 13, scope: !166)
!173 = !DILocalVariable(name: "dataBuffer", scope: !166, file: !45, line: 94, type: !62)
!174 = !DILocation(line: 94, column: 10, scope: !166)
!175 = !DILocation(line: 95, column: 12, scope: !166)
!176 = !DILocation(line: 95, column: 10, scope: !166)
!177 = !DILocalVariable(name: "data", scope: !178, file: !45, line: 97, type: !42)
!178 = distinct !DILexicalBlock(scope: !166, file: !45, line: 96, column: 5)
!179 = !DILocation(line: 97, column: 16, scope: !178)
!180 = !DILocation(line: 97, column: 24, scope: !178)
!181 = !DILocation(line: 97, column: 23, scope: !178)
!182 = !DILocation(line: 99, column: 16, scope: !178)
!183 = !DILocation(line: 99, column: 9, scope: !178)
!184 = !DILocation(line: 100, column: 21, scope: !178)
!185 = !DILocation(line: 100, column: 10, scope: !178)
!186 = !DILocation(line: 100, column: 19, scope: !178)
!187 = !DILocalVariable(name: "data", scope: !188, file: !45, line: 103, type: !42)
!188 = distinct !DILexicalBlock(scope: !166, file: !45, line: 102, column: 5)
!189 = !DILocation(line: 103, column: 16, scope: !188)
!190 = !DILocation(line: 103, column: 24, scope: !188)
!191 = !DILocation(line: 103, column: 23, scope: !188)
!192 = !DILocalVariable(name: "i", scope: !193, file: !45, line: 105, type: !23)
!193 = distinct !DILexicalBlock(scope: !188, file: !45, line: 104, column: 9)
!194 = !DILocation(line: 105, column: 17, scope: !193)
!195 = !DILocalVariable(name: "n", scope: !193, file: !45, line: 105, type: !23)
!196 = !DILocation(line: 105, column: 20, scope: !193)
!197 = !DILocalVariable(name: "intVariable", scope: !193, file: !45, line: 105, type: !23)
!198 = !DILocation(line: 105, column: 23, scope: !193)
!199 = !DILocation(line: 106, column: 24, scope: !200)
!200 = distinct !DILexicalBlock(scope: !193, file: !45, line: 106, column: 17)
!201 = !DILocation(line: 106, column: 17, scope: !200)
!202 = !DILocation(line: 106, column: 40, scope: !200)
!203 = !DILocation(line: 106, column: 17, scope: !193)
!204 = !DILocation(line: 109, column: 29, scope: !205)
!205 = distinct !DILexicalBlock(scope: !200, file: !45, line: 107, column: 13)
!206 = !DILocation(line: 110, column: 24, scope: !207)
!207 = distinct !DILexicalBlock(scope: !205, file: !45, line: 110, column: 17)
!208 = !DILocation(line: 110, column: 22, scope: !207)
!209 = !DILocation(line: 110, column: 29, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !45, line: 110, column: 17)
!211 = !DILocation(line: 110, column: 33, scope: !210)
!212 = !DILocation(line: 110, column: 31, scope: !210)
!213 = !DILocation(line: 110, column: 17, scope: !207)
!214 = !DILocation(line: 113, column: 32, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !45, line: 111, column: 17)
!216 = !DILocation(line: 114, column: 17, scope: !215)
!217 = !DILocation(line: 110, column: 37, scope: !210)
!218 = !DILocation(line: 110, column: 17, scope: !210)
!219 = distinct !{!219, !213, !220, !161}
!220 = !DILocation(line: 114, column: 17, scope: !207)
!221 = !DILocation(line: 115, column: 30, scope: !205)
!222 = !DILocation(line: 115, column: 17, scope: !205)
!223 = !DILocation(line: 116, column: 13, scope: !205)
!224 = !DILocation(line: 119, column: 1, scope: !166)
!225 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 122, type: !53, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!226 = !DILocalVariable(name: "data", scope: !225, file: !45, line: 124, type: !42)
!227 = !DILocation(line: 124, column: 12, scope: !225)
!228 = !DILocalVariable(name: "dataPtr1", scope: !225, file: !45, line: 125, type: !41)
!229 = !DILocation(line: 125, column: 13, scope: !225)
!230 = !DILocalVariable(name: "dataPtr2", scope: !225, file: !45, line: 126, type: !41)
!231 = !DILocation(line: 126, column: 13, scope: !225)
!232 = !DILocalVariable(name: "dataBuffer", scope: !225, file: !45, line: 127, type: !62)
!233 = !DILocation(line: 127, column: 10, scope: !225)
!234 = !DILocation(line: 128, column: 12, scope: !225)
!235 = !DILocation(line: 128, column: 10, scope: !225)
!236 = !DILocalVariable(name: "data", scope: !237, file: !45, line: 130, type: !42)
!237 = distinct !DILexicalBlock(scope: !225, file: !45, line: 129, column: 5)
!238 = !DILocation(line: 130, column: 16, scope: !237)
!239 = !DILocation(line: 130, column: 24, scope: !237)
!240 = !DILocation(line: 130, column: 23, scope: !237)
!241 = !DILocalVariable(name: "dataLen", scope: !242, file: !45, line: 133, type: !75)
!242 = distinct !DILexicalBlock(scope: !237, file: !45, line: 131, column: 9)
!243 = !DILocation(line: 133, column: 20, scope: !242)
!244 = !DILocation(line: 133, column: 37, scope: !242)
!245 = !DILocation(line: 133, column: 30, scope: !242)
!246 = !DILocation(line: 135, column: 21, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !45, line: 135, column: 17)
!248 = !DILocation(line: 135, column: 20, scope: !247)
!249 = !DILocation(line: 135, column: 29, scope: !247)
!250 = !DILocation(line: 135, column: 17, scope: !242)
!251 = !DILocation(line: 138, column: 27, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !45, line: 138, column: 21)
!253 = distinct !DILexicalBlock(scope: !247, file: !45, line: 136, column: 13)
!254 = !DILocation(line: 138, column: 32, scope: !252)
!255 = !DILocation(line: 138, column: 31, scope: !252)
!256 = !DILocation(line: 138, column: 51, scope: !252)
!257 = !DILocation(line: 138, column: 50, scope: !252)
!258 = !DILocation(line: 138, column: 41, scope: !252)
!259 = !DILocation(line: 138, column: 61, scope: !252)
!260 = !DILocation(line: 138, column: 21, scope: !252)
!261 = !DILocation(line: 138, column: 68, scope: !252)
!262 = !DILocation(line: 138, column: 21, scope: !253)
!263 = !DILocation(line: 142, column: 38, scope: !264)
!264 = distinct !DILexicalBlock(scope: !252, file: !45, line: 139, column: 17)
!265 = !DILocation(line: 142, column: 31, scope: !264)
!266 = !DILocation(line: 142, column: 29, scope: !264)
!267 = !DILocation(line: 143, column: 25, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !45, line: 143, column: 25)
!269 = !DILocation(line: 143, column: 33, scope: !268)
!270 = !DILocation(line: 143, column: 37, scope: !268)
!271 = !DILocation(line: 143, column: 40, scope: !268)
!272 = !DILocation(line: 143, column: 45, scope: !268)
!273 = !DILocation(line: 143, column: 52, scope: !268)
!274 = !DILocation(line: 143, column: 56, scope: !268)
!275 = !DILocation(line: 143, column: 25, scope: !264)
!276 = !DILocation(line: 145, column: 25, scope: !277)
!277 = distinct !DILexicalBlock(scope: !268, file: !45, line: 144, column: 21)
!278 = !DILocation(line: 145, column: 30, scope: !277)
!279 = !DILocation(line: 145, column: 37, scope: !277)
!280 = !DILocation(line: 145, column: 41, scope: !277)
!281 = !DILocation(line: 146, column: 21, scope: !277)
!282 = !DILocation(line: 147, column: 17, scope: !264)
!283 = !DILocation(line: 150, column: 21, scope: !284)
!284 = distinct !DILexicalBlock(scope: !252, file: !45, line: 149, column: 17)
!285 = !DILocation(line: 152, column: 21, scope: !284)
!286 = !DILocation(line: 152, column: 26, scope: !284)
!287 = !DILocation(line: 152, column: 35, scope: !284)
!288 = !DILocation(line: 154, column: 13, scope: !253)
!289 = !DILocation(line: 156, column: 21, scope: !237)
!290 = !DILocation(line: 156, column: 10, scope: !237)
!291 = !DILocation(line: 156, column: 19, scope: !237)
!292 = !DILocalVariable(name: "data", scope: !293, file: !45, line: 159, type: !42)
!293 = distinct !DILexicalBlock(scope: !225, file: !45, line: 158, column: 5)
!294 = !DILocation(line: 159, column: 16, scope: !293)
!295 = !DILocation(line: 159, column: 24, scope: !293)
!296 = !DILocation(line: 159, column: 23, scope: !293)
!297 = !DILocalVariable(name: "i", scope: !298, file: !45, line: 161, type: !23)
!298 = distinct !DILexicalBlock(scope: !293, file: !45, line: 160, column: 9)
!299 = !DILocation(line: 161, column: 17, scope: !298)
!300 = !DILocalVariable(name: "n", scope: !298, file: !45, line: 161, type: !23)
!301 = !DILocation(line: 161, column: 20, scope: !298)
!302 = !DILocalVariable(name: "intVariable", scope: !298, file: !45, line: 161, type: !23)
!303 = !DILocation(line: 161, column: 23, scope: !298)
!304 = !DILocation(line: 162, column: 24, scope: !305)
!305 = distinct !DILexicalBlock(scope: !298, file: !45, line: 162, column: 17)
!306 = !DILocation(line: 162, column: 17, scope: !305)
!307 = !DILocation(line: 162, column: 40, scope: !305)
!308 = !DILocation(line: 162, column: 17, scope: !298)
!309 = !DILocation(line: 165, column: 21, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !45, line: 165, column: 21)
!311 = distinct !DILexicalBlock(scope: !305, file: !45, line: 163, column: 13)
!312 = !DILocation(line: 165, column: 23, scope: !310)
!313 = !DILocation(line: 165, column: 21, scope: !311)
!314 = !DILocation(line: 167, column: 33, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !45, line: 166, column: 17)
!316 = !DILocation(line: 168, column: 28, scope: !317)
!317 = distinct !DILexicalBlock(scope: !315, file: !45, line: 168, column: 21)
!318 = !DILocation(line: 168, column: 26, scope: !317)
!319 = !DILocation(line: 168, column: 33, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !45, line: 168, column: 21)
!321 = !DILocation(line: 168, column: 37, scope: !320)
!322 = !DILocation(line: 168, column: 35, scope: !320)
!323 = !DILocation(line: 168, column: 21, scope: !317)
!324 = !DILocation(line: 171, column: 36, scope: !325)
!325 = distinct !DILexicalBlock(scope: !320, file: !45, line: 169, column: 21)
!326 = !DILocation(line: 172, column: 21, scope: !325)
!327 = !DILocation(line: 168, column: 41, scope: !320)
!328 = !DILocation(line: 168, column: 21, scope: !320)
!329 = distinct !{!329, !323, !330, !161}
!330 = !DILocation(line: 172, column: 21, scope: !317)
!331 = !DILocation(line: 173, column: 34, scope: !315)
!332 = !DILocation(line: 173, column: 21, scope: !315)
!333 = !DILocation(line: 174, column: 17, scope: !315)
!334 = !DILocation(line: 175, column: 13, scope: !311)
!335 = !DILocation(line: 178, column: 1, scope: !225)
!336 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_32_good", scope: !45, file: !45, line: 180, type: !53, scopeLine: 181, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!337 = !DILocation(line: 182, column: 5, scope: !336)
!338 = !DILocation(line: 183, column: 5, scope: !336)
!339 = !DILocation(line: 184, column: 1, scope: !336)
!340 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !341, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !42}
!343 = !DILocalVariable(name: "line", arg: 1, scope: !340, file: !3, line: 11, type: !42)
!344 = !DILocation(line: 11, column: 25, scope: !340)
!345 = !DILocation(line: 13, column: 1, scope: !340)
!346 = !DILocation(line: 14, column: 8, scope: !347)
!347 = distinct !DILexicalBlock(scope: !340, file: !3, line: 14, column: 8)
!348 = !DILocation(line: 14, column: 13, scope: !347)
!349 = !DILocation(line: 14, column: 8, scope: !340)
!350 = !DILocation(line: 16, column: 24, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !3, line: 15, column: 5)
!352 = !DILocation(line: 16, column: 9, scope: !351)
!353 = !DILocation(line: 17, column: 5, scope: !351)
!354 = !DILocation(line: 18, column: 5, scope: !340)
!355 = !DILocation(line: 19, column: 1, scope: !340)
!356 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !341, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DILocalVariable(name: "line", arg: 1, scope: !356, file: !3, line: 20, type: !42)
!358 = !DILocation(line: 20, column: 29, scope: !356)
!359 = !DILocation(line: 22, column: 8, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !3, line: 22, column: 8)
!361 = !DILocation(line: 22, column: 13, scope: !360)
!362 = !DILocation(line: 22, column: 8, scope: !356)
!363 = !DILocation(line: 24, column: 24, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !3, line: 23, column: 5)
!365 = !DILocation(line: 24, column: 9, scope: !364)
!366 = !DILocation(line: 25, column: 5, scope: !364)
!367 = !DILocation(line: 26, column: 1, scope: !356)
!368 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !369, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !23)
!373 = !DILocalVariable(name: "line", arg: 1, scope: !368, file: !3, line: 27, type: !371)
!374 = !DILocation(line: 27, column: 29, scope: !368)
!375 = !DILocation(line: 29, column: 8, scope: !376)
!376 = distinct !DILexicalBlock(scope: !368, file: !3, line: 29, column: 8)
!377 = !DILocation(line: 29, column: 13, scope: !376)
!378 = !DILocation(line: 29, column: 8, scope: !368)
!379 = !DILocation(line: 31, column: 27, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !3, line: 30, column: 5)
!381 = !DILocation(line: 31, column: 9, scope: !380)
!382 = !DILocation(line: 32, column: 5, scope: !380)
!383 = !DILocation(line: 33, column: 1, scope: !368)
!384 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !385, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !23}
!387 = !DILocalVariable(name: "intNumber", arg: 1, scope: !384, file: !3, line: 35, type: !23)
!388 = !DILocation(line: 35, column: 24, scope: !384)
!389 = !DILocation(line: 37, column: 20, scope: !384)
!390 = !DILocation(line: 37, column: 5, scope: !384)
!391 = !DILocation(line: 38, column: 1, scope: !384)
!392 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !393, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !395}
!395 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!396 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !392, file: !3, line: 40, type: !395)
!397 = !DILocation(line: 40, column: 28, scope: !392)
!398 = !DILocation(line: 42, column: 21, scope: !392)
!399 = !DILocation(line: 42, column: 5, scope: !392)
!400 = !DILocation(line: 43, column: 1, scope: !392)
!401 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !402, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !404}
!404 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!405 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !401, file: !3, line: 45, type: !404)
!406 = !DILocation(line: 45, column: 28, scope: !401)
!407 = !DILocation(line: 47, column: 20, scope: !401)
!408 = !DILocation(line: 47, column: 5, scope: !401)
!409 = !DILocation(line: 48, column: 1, scope: !401)
!410 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !411, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413}
!413 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!414 = !DILocalVariable(name: "longNumber", arg: 1, scope: !410, file: !3, line: 50, type: !413)
!415 = !DILocation(line: 50, column: 26, scope: !410)
!416 = !DILocation(line: 52, column: 21, scope: !410)
!417 = !DILocation(line: 52, column: 5, scope: !410)
!418 = !DILocation(line: 53, column: 1, scope: !410)
!419 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !420, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !422}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !423, line: 27, baseType: !424)
!423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !425, line: 44, baseType: !413)
!425 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!426 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !419, file: !3, line: 55, type: !422)
!427 = !DILocation(line: 55, column: 33, scope: !419)
!428 = !DILocation(line: 57, column: 29, scope: !419)
!429 = !DILocation(line: 57, column: 5, scope: !419)
!430 = !DILocation(line: 58, column: 1, scope: !419)
!431 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !432, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !75}
!434 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !431, file: !3, line: 60, type: !75)
!435 = !DILocation(line: 60, column: 29, scope: !431)
!436 = !DILocation(line: 62, column: 21, scope: !431)
!437 = !DILocation(line: 62, column: 5, scope: !431)
!438 = !DILocation(line: 63, column: 1, scope: !431)
!439 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !440, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !43}
!442 = !DILocalVariable(name: "charHex", arg: 1, scope: !439, file: !3, line: 65, type: !43)
!443 = !DILocation(line: 65, column: 29, scope: !439)
!444 = !DILocation(line: 67, column: 22, scope: !439)
!445 = !DILocation(line: 67, column: 5, scope: !439)
!446 = !DILocation(line: 68, column: 1, scope: !439)
!447 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !448, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !372}
!450 = !DILocalVariable(name: "wideChar", arg: 1, scope: !447, file: !3, line: 70, type: !372)
!451 = !DILocation(line: 70, column: 29, scope: !447)
!452 = !DILocalVariable(name: "s", scope: !447, file: !3, line: 74, type: !453)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 64, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 2)
!456 = !DILocation(line: 74, column: 13, scope: !447)
!457 = !DILocation(line: 75, column: 16, scope: !447)
!458 = !DILocation(line: 75, column: 9, scope: !447)
!459 = !DILocation(line: 75, column: 14, scope: !447)
!460 = !DILocation(line: 76, column: 9, scope: !447)
!461 = !DILocation(line: 76, column: 14, scope: !447)
!462 = !DILocation(line: 77, column: 21, scope: !447)
!463 = !DILocation(line: 77, column: 5, scope: !447)
!464 = !DILocation(line: 78, column: 1, scope: !447)
!465 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !466, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !7}
!468 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !465, file: !3, line: 80, type: !7)
!469 = !DILocation(line: 80, column: 33, scope: !465)
!470 = !DILocation(line: 82, column: 20, scope: !465)
!471 = !DILocation(line: 82, column: 5, scope: !465)
!472 = !DILocation(line: 83, column: 1, scope: !465)
!473 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !474, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !25}
!476 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !473, file: !3, line: 85, type: !25)
!477 = !DILocation(line: 85, column: 45, scope: !473)
!478 = !DILocation(line: 87, column: 22, scope: !473)
!479 = !DILocation(line: 87, column: 5, scope: !473)
!480 = !DILocation(line: 88, column: 1, scope: !473)
!481 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !482, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !484}
!484 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!485 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !481, file: !3, line: 90, type: !484)
!486 = !DILocation(line: 90, column: 29, scope: !481)
!487 = !DILocation(line: 92, column: 20, scope: !481)
!488 = !DILocation(line: 92, column: 5, scope: !481)
!489 = !DILocation(line: 93, column: 1, scope: !481)
!490 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !491, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !495, line: 100, baseType: !496)
!495 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_999/source_code")
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !495, line: 96, size: 64, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !496, file: !495, line: 98, baseType: !23, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !496, file: !495, line: 99, baseType: !23, size: 32, offset: 32)
!500 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !490, file: !3, line: 95, type: !493)
!501 = !DILocation(line: 95, column: 40, scope: !490)
!502 = !DILocation(line: 97, column: 26, scope: !490)
!503 = !DILocation(line: 97, column: 47, scope: !490)
!504 = !DILocation(line: 97, column: 55, scope: !490)
!505 = !DILocation(line: 97, column: 76, scope: !490)
!506 = !DILocation(line: 97, column: 5, scope: !490)
!507 = !DILocation(line: 98, column: 1, scope: !490)
!508 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !509, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !511, !75}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!512 = !DILocalVariable(name: "bytes", arg: 1, scope: !508, file: !3, line: 100, type: !511)
!513 = !DILocation(line: 100, column: 38, scope: !508)
!514 = !DILocalVariable(name: "numBytes", arg: 2, scope: !508, file: !3, line: 100, type: !75)
!515 = !DILocation(line: 100, column: 52, scope: !508)
!516 = !DILocalVariable(name: "i", scope: !508, file: !3, line: 102, type: !75)
!517 = !DILocation(line: 102, column: 12, scope: !508)
!518 = !DILocation(line: 103, column: 12, scope: !519)
!519 = distinct !DILexicalBlock(scope: !508, file: !3, line: 103, column: 5)
!520 = !DILocation(line: 103, column: 10, scope: !519)
!521 = !DILocation(line: 103, column: 17, scope: !522)
!522 = distinct !DILexicalBlock(scope: !519, file: !3, line: 103, column: 5)
!523 = !DILocation(line: 103, column: 21, scope: !522)
!524 = !DILocation(line: 103, column: 19, scope: !522)
!525 = !DILocation(line: 103, column: 5, scope: !519)
!526 = !DILocation(line: 105, column: 24, scope: !527)
!527 = distinct !DILexicalBlock(scope: !522, file: !3, line: 104, column: 5)
!528 = !DILocation(line: 105, column: 30, scope: !527)
!529 = !DILocation(line: 105, column: 9, scope: !527)
!530 = !DILocation(line: 106, column: 5, scope: !527)
!531 = !DILocation(line: 103, column: 31, scope: !522)
!532 = !DILocation(line: 103, column: 5, scope: !522)
!533 = distinct !{!533, !525, !534, !161}
!534 = !DILocation(line: 106, column: 5, scope: !519)
!535 = !DILocation(line: 107, column: 5, scope: !508)
!536 = !DILocation(line: 108, column: 1, scope: !508)
!537 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !538, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DISubroutineType(types: !539)
!539 = !{!75, !511, !75, !42}
!540 = !DILocalVariable(name: "bytes", arg: 1, scope: !537, file: !3, line: 113, type: !511)
!541 = !DILocation(line: 113, column: 39, scope: !537)
!542 = !DILocalVariable(name: "numBytes", arg: 2, scope: !537, file: !3, line: 113, type: !75)
!543 = !DILocation(line: 113, column: 53, scope: !537)
!544 = !DILocalVariable(name: "hex", arg: 3, scope: !537, file: !3, line: 113, type: !42)
!545 = !DILocation(line: 113, column: 71, scope: !537)
!546 = !DILocalVariable(name: "numWritten", scope: !537, file: !3, line: 115, type: !75)
!547 = !DILocation(line: 115, column: 12, scope: !537)
!548 = !DILocation(line: 121, column: 5, scope: !537)
!549 = !DILocation(line: 121, column: 12, scope: !537)
!550 = !DILocation(line: 121, column: 25, scope: !537)
!551 = !DILocation(line: 121, column: 23, scope: !537)
!552 = !DILocation(line: 121, column: 34, scope: !537)
!553 = !DILocation(line: 121, column: 37, scope: !537)
!554 = !DILocation(line: 121, column: 67, scope: !537)
!555 = !DILocation(line: 121, column: 70, scope: !537)
!556 = !DILocation(line: 0, scope: !537)
!557 = !DILocalVariable(name: "byte", scope: !558, file: !3, line: 123, type: !23)
!558 = distinct !DILexicalBlock(scope: !537, file: !3, line: 122, column: 5)
!559 = !DILocation(line: 123, column: 13, scope: !558)
!560 = !DILocation(line: 124, column: 17, scope: !558)
!561 = !DILocation(line: 124, column: 25, scope: !558)
!562 = !DILocation(line: 124, column: 23, scope: !558)
!563 = !DILocation(line: 124, column: 9, scope: !558)
!564 = !DILocation(line: 125, column: 45, scope: !558)
!565 = !DILocation(line: 125, column: 29, scope: !558)
!566 = !DILocation(line: 125, column: 9, scope: !558)
!567 = !DILocation(line: 125, column: 15, scope: !558)
!568 = !DILocation(line: 125, column: 27, scope: !558)
!569 = !DILocation(line: 126, column: 9, scope: !558)
!570 = distinct !{!570, !548, !571, !161}
!571 = !DILocation(line: 127, column: 5, scope: !537)
!572 = !DILocation(line: 129, column: 12, scope: !537)
!573 = !DILocation(line: 129, column: 5, scope: !537)
!574 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !575, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DISubroutineType(types: !576)
!576 = !{!75, !511, !75, !371}
!577 = !DILocalVariable(name: "bytes", arg: 1, scope: !574, file: !3, line: 135, type: !511)
!578 = !DILocation(line: 135, column: 41, scope: !574)
!579 = !DILocalVariable(name: "numBytes", arg: 2, scope: !574, file: !3, line: 135, type: !75)
!580 = !DILocation(line: 135, column: 55, scope: !574)
!581 = !DILocalVariable(name: "hex", arg: 3, scope: !574, file: !3, line: 135, type: !371)
!582 = !DILocation(line: 135, column: 76, scope: !574)
!583 = !DILocalVariable(name: "numWritten", scope: !574, file: !3, line: 137, type: !75)
!584 = !DILocation(line: 137, column: 12, scope: !574)
!585 = !DILocation(line: 143, column: 5, scope: !574)
!586 = !DILocation(line: 143, column: 12, scope: !574)
!587 = !DILocation(line: 143, column: 25, scope: !574)
!588 = !DILocation(line: 143, column: 23, scope: !574)
!589 = !DILocation(line: 143, column: 34, scope: !574)
!590 = !DILocation(line: 143, column: 47, scope: !574)
!591 = !DILocation(line: 143, column: 55, scope: !574)
!592 = !DILocation(line: 143, column: 53, scope: !574)
!593 = !DILocation(line: 143, column: 37, scope: !574)
!594 = !DILocation(line: 143, column: 68, scope: !574)
!595 = !DILocation(line: 143, column: 81, scope: !574)
!596 = !DILocation(line: 143, column: 89, scope: !574)
!597 = !DILocation(line: 143, column: 87, scope: !574)
!598 = !DILocation(line: 143, column: 100, scope: !574)
!599 = !DILocation(line: 143, column: 71, scope: !574)
!600 = !DILocation(line: 0, scope: !574)
!601 = !DILocalVariable(name: "byte", scope: !602, file: !3, line: 145, type: !23)
!602 = distinct !DILexicalBlock(scope: !574, file: !3, line: 144, column: 5)
!603 = !DILocation(line: 145, column: 13, scope: !602)
!604 = !DILocation(line: 146, column: 18, scope: !602)
!605 = !DILocation(line: 146, column: 26, scope: !602)
!606 = !DILocation(line: 146, column: 24, scope: !602)
!607 = !DILocation(line: 146, column: 9, scope: !602)
!608 = !DILocation(line: 147, column: 45, scope: !602)
!609 = !DILocation(line: 147, column: 29, scope: !602)
!610 = !DILocation(line: 147, column: 9, scope: !602)
!611 = !DILocation(line: 147, column: 15, scope: !602)
!612 = !DILocation(line: 147, column: 27, scope: !602)
!613 = !DILocation(line: 148, column: 9, scope: !602)
!614 = distinct !{!614, !585, !615, !161}
!615 = !DILocation(line: 149, column: 5, scope: !574)
!616 = !DILocation(line: 151, column: 12, scope: !574)
!617 = !DILocation(line: 151, column: 5, scope: !574)
!618 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !619, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DISubroutineType(types: !620)
!620 = !{!23}
!621 = !DILocation(line: 158, column: 5, scope: !618)
!622 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !619, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DILocation(line: 163, column: 5, scope: !622)
!624 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !619, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DILocation(line: 168, column: 13, scope: !624)
!626 = !DILocation(line: 168, column: 20, scope: !624)
!627 = !DILocation(line: 168, column: 5, scope: !624)
!628 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DILocation(line: 187, column: 16, scope: !628)
!630 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DILocation(line: 188, column: 16, scope: !630)
!632 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DILocation(line: 189, column: 16, scope: !632)
!634 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!635 = !DILocation(line: 190, column: 16, scope: !634)
!636 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!637 = !DILocation(line: 191, column: 16, scope: !636)
!638 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!639 = !DILocation(line: 192, column: 16, scope: !638)
!640 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!641 = !DILocation(line: 193, column: 16, scope: !640)
!642 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!643 = !DILocation(line: 194, column: 16, scope: !642)
!644 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!645 = !DILocation(line: 195, column: 16, scope: !644)
!646 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!647 = !DILocation(line: 198, column: 15, scope: !646)
!648 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!649 = !DILocation(line: 199, column: 15, scope: !648)
!650 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!651 = !DILocation(line: 200, column: 15, scope: !650)
!652 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!653 = !DILocation(line: 201, column: 15, scope: !652)
!654 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!655 = !DILocation(line: 202, column: 15, scope: !654)
!656 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!657 = !DILocation(line: 203, column: 15, scope: !656)
!658 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!659 = !DILocation(line: 204, column: 15, scope: !658)
!660 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!661 = !DILocation(line: 205, column: 15, scope: !660)
!662 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!663 = !DILocation(line: 206, column: 15, scope: !662)
