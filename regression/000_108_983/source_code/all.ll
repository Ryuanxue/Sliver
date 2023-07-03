; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@STATIC_CONST_FIVE = dso_local global i32 5, align 4, !dbg !0
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !9
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !34
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !36
@globalTrue = dso_local global i32 1, align 4, !dbg !38
@globalFalse = dso_local global i32 0, align 4, !dbg !40
@globalFive = dso_local global i32 5, align 4, !dbg !42
@globalArgc = dso_local global i32 0, align 4, !dbg !44
@globalArgv = dso_local global i8** null, align 8, !dbg !46
@.str.4 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_06_bad() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !65
  store i8* %arraydecay, i8** %data, align 8, !dbg !66
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !67
  %cmp = icmp eq i32 %1, 5, !dbg !69
  br i1 %cmp, label %if.then, label %if.end21, !dbg !70

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !71, metadata !DIExpression()), !dbg !77
  %2 = load i8*, i8** %data, align 8, !dbg !78
  %call = call i64 @strlen(i8* %2) #7, !dbg !79
  store i64 %call, i64* %dataLen, align 8, !dbg !77
  %3 = load i64, i64* %dataLen, align 8, !dbg !80
  %sub = sub i64 100, %3, !dbg !82
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !83
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !84

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !85
  %5 = load i64, i64* %dataLen, align 8, !dbg !88
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !89
  %6 = load i64, i64* %dataLen, align 8, !dbg !90
  %sub3 = sub i64 100, %6, !dbg !91
  %conv = trunc i64 %sub3 to i32, !dbg !92
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !93
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !94
  %cmp5 = icmp ne i8* %call4, null, !dbg !95
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !96

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !97
  %call8 = call i64 @strlen(i8* %8) #7, !dbg !99
  store i64 %call8, i64* %dataLen, align 8, !dbg !100
  %9 = load i64, i64* %dataLen, align 8, !dbg !101
  %cmp9 = icmp ugt i64 %9, 0, !dbg !103
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !104

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !105
  %11 = load i64, i64* %dataLen, align 8, !dbg !106
  %sub11 = sub i64 %11, 1, !dbg !107
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !105
  %12 = load i8, i8* %arrayidx, align 1, !dbg !105
  %conv12 = sext i8 %12 to i32, !dbg !105
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !108
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !109

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !110
  %14 = load i64, i64* %dataLen, align 8, !dbg !112
  %sub16 = sub i64 %14, 1, !dbg !113
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !110
  store i8 0, i8* %arrayidx17, align 1, !dbg !114
  br label %if.end, !dbg !115

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !116

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !117
  %15 = load i8*, i8** %data, align 8, !dbg !119
  %16 = load i64, i64* %dataLen, align 8, !dbg !120
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !119
  store i8 0, i8* %arrayidx18, align 1, !dbg !121
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !122

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !123

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !124
  %cmp22 = icmp eq i32 %17, 5, !dbg !126
  br i1 %cmp22, label %if.then24, label %if.end33, !dbg !127

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !128, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %n, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !134, metadata !DIExpression()), !dbg !135
  %18 = load i8*, i8** %data, align 8, !dbg !136
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !138
  %cmp26 = icmp eq i32 %call25, 1, !dbg !139
  br i1 %cmp26, label %if.then28, label %if.end32, !dbg !140

if.then28:                                        ; preds = %if.then24
  store i32 0, i32* %intVariable, align 4, !dbg !141
  store i32 0, i32* %i, align 4, !dbg !143
  br label %for.cond, !dbg !145

for.cond:                                         ; preds = %for.inc, %if.then28
  %19 = load i32, i32* %i, align 4, !dbg !146
  %20 = load i32, i32* %n, align 4, !dbg !148
  %cmp29 = icmp slt i32 %19, %20, !dbg !149
  br i1 %cmp29, label %for.body, label %for.end, !dbg !150

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !151
  %inc = add nsw i32 %21, 1, !dbg !151
  store i32 %inc, i32* %intVariable, align 4, !dbg !151
  br label %for.inc, !dbg !153

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !154
  %inc31 = add nsw i32 %22, 1, !dbg !154
  store i32 %inc31, i32* %i, align 4, !dbg !154
  br label %for.cond, !dbg !155, !llvm.loop !156

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !159
  call void @printIntLine(i32 %23), !dbg !160
  br label %if.end32, !dbg !161

if.end32:                                         ; preds = %for.end, %if.then24
  br label %if.end33, !dbg !162

if.end33:                                         ; preds = %if.end32, %if.end21
  ret void, !dbg !163
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
define dso_local void @goodB2G1() #0 !dbg !164 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !167, metadata !DIExpression()), !dbg !168
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !168
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !168
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !169
  store i8* %arraydecay, i8** %data, align 8, !dbg !170
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !171
  %cmp = icmp eq i32 %1, 5, !dbg !173
  br i1 %cmp, label %if.then, label %if.end21, !dbg !174

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !175, metadata !DIExpression()), !dbg !178
  %2 = load i8*, i8** %data, align 8, !dbg !179
  %call = call i64 @strlen(i8* %2) #7, !dbg !180
  store i64 %call, i64* %dataLen, align 8, !dbg !178
  %3 = load i64, i64* %dataLen, align 8, !dbg !181
  %sub = sub i64 100, %3, !dbg !183
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !184
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !185

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !186
  %5 = load i64, i64* %dataLen, align 8, !dbg !189
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !190
  %6 = load i64, i64* %dataLen, align 8, !dbg !191
  %sub3 = sub i64 100, %6, !dbg !192
  %conv = trunc i64 %sub3 to i32, !dbg !193
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !194
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !195
  %cmp5 = icmp ne i8* %call4, null, !dbg !196
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !197

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !198
  %call8 = call i64 @strlen(i8* %8) #7, !dbg !200
  store i64 %call8, i64* %dataLen, align 8, !dbg !201
  %9 = load i64, i64* %dataLen, align 8, !dbg !202
  %cmp9 = icmp ugt i64 %9, 0, !dbg !204
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !205

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !206
  %11 = load i64, i64* %dataLen, align 8, !dbg !207
  %sub11 = sub i64 %11, 1, !dbg !208
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !206
  %12 = load i8, i8* %arrayidx, align 1, !dbg !206
  %conv12 = sext i8 %12 to i32, !dbg !206
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !209
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !210

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !211
  %14 = load i64, i64* %dataLen, align 8, !dbg !213
  %sub16 = sub i64 %14, 1, !dbg !214
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !211
  store i8 0, i8* %arrayidx17, align 1, !dbg !215
  br label %if.end, !dbg !216

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !217

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !218
  %15 = load i8*, i8** %data, align 8, !dbg !220
  %16 = load i64, i64* %dataLen, align 8, !dbg !221
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !220
  store i8 0, i8* %arrayidx18, align 1, !dbg !222
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !223

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !224

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !225
  %cmp22 = icmp ne i32 %17, 5, !dbg !227
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !228

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !229
  br label %if.end38, !dbg !231

if.else25:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !232, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i32* %n, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !238, metadata !DIExpression()), !dbg !239
  %18 = load i8*, i8** %data, align 8, !dbg !240
  %call26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !242
  %cmp27 = icmp eq i32 %call26, 1, !dbg !243
  br i1 %cmp27, label %if.then29, label %if.end37, !dbg !244

if.then29:                                        ; preds = %if.else25
  %19 = load i32, i32* %n, align 4, !dbg !245
  %cmp30 = icmp slt i32 %19, 10000, !dbg !248
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !249

if.then32:                                        ; preds = %if.then29
  store i32 0, i32* %intVariable, align 4, !dbg !250
  store i32 0, i32* %i, align 4, !dbg !252
  br label %for.cond, !dbg !254

for.cond:                                         ; preds = %for.inc, %if.then32
  %20 = load i32, i32* %i, align 4, !dbg !255
  %21 = load i32, i32* %n, align 4, !dbg !257
  %cmp33 = icmp slt i32 %20, %21, !dbg !258
  br i1 %cmp33, label %for.body, label %for.end, !dbg !259

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !260
  %inc = add nsw i32 %22, 1, !dbg !260
  store i32 %inc, i32* %intVariable, align 4, !dbg !260
  br label %for.inc, !dbg !262

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !263
  %inc35 = add nsw i32 %23, 1, !dbg !263
  store i32 %inc35, i32* %i, align 4, !dbg !263
  br label %for.cond, !dbg !264, !llvm.loop !265

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !267
  call void @printIntLine(i32 %24), !dbg !268
  br label %if.end36, !dbg !269

if.end36:                                         ; preds = %for.end, %if.then29
  br label %if.end37, !dbg !270

if.end37:                                         ; preds = %if.end36, %if.else25
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !272 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !276
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !276
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !277
  store i8* %arraydecay, i8** %data, align 8, !dbg !278
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !279
  %cmp = icmp eq i32 %1, 5, !dbg !281
  br i1 %cmp, label %if.then, label %if.end21, !dbg !282

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !283, metadata !DIExpression()), !dbg !286
  %2 = load i8*, i8** %data, align 8, !dbg !287
  %call = call i64 @strlen(i8* %2) #7, !dbg !288
  store i64 %call, i64* %dataLen, align 8, !dbg !286
  %3 = load i64, i64* %dataLen, align 8, !dbg !289
  %sub = sub i64 100, %3, !dbg !291
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !292
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !293

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !294
  %5 = load i64, i64* %dataLen, align 8, !dbg !297
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !298
  %6 = load i64, i64* %dataLen, align 8, !dbg !299
  %sub3 = sub i64 100, %6, !dbg !300
  %conv = trunc i64 %sub3 to i32, !dbg !301
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !302
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !303
  %cmp5 = icmp ne i8* %call4, null, !dbg !304
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !305

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %data, align 8, !dbg !306
  %call8 = call i64 @strlen(i8* %8) #7, !dbg !308
  store i64 %call8, i64* %dataLen, align 8, !dbg !309
  %9 = load i64, i64* %dataLen, align 8, !dbg !310
  %cmp9 = icmp ugt i64 %9, 0, !dbg !312
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !313

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %data, align 8, !dbg !314
  %11 = load i64, i64* %dataLen, align 8, !dbg !315
  %sub11 = sub i64 %11, 1, !dbg !316
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !314
  %12 = load i8, i8* %arrayidx, align 1, !dbg !314
  %conv12 = sext i8 %12 to i32, !dbg !314
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !317
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !318

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !319
  %14 = load i64, i64* %dataLen, align 8, !dbg !321
  %sub16 = sub i64 %14, 1, !dbg !322
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !319
  store i8 0, i8* %arrayidx17, align 1, !dbg !323
  br label %if.end, !dbg !324

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !325

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !326
  %15 = load i8*, i8** %data, align 8, !dbg !328
  %16 = load i64, i64* %dataLen, align 8, !dbg !329
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !328
  store i8 0, i8* %arrayidx18, align 1, !dbg !330
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !331

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !332

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !333
  %cmp22 = icmp eq i32 %17, 5, !dbg !335
  br i1 %cmp22, label %if.then24, label %if.end37, !dbg !336

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !337, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata i32* %n, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !343, metadata !DIExpression()), !dbg !344
  %18 = load i8*, i8** %data, align 8, !dbg !345
  %call25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !347
  %cmp26 = icmp eq i32 %call25, 1, !dbg !348
  br i1 %cmp26, label %if.then28, label %if.end36, !dbg !349

if.then28:                                        ; preds = %if.then24
  %19 = load i32, i32* %n, align 4, !dbg !350
  %cmp29 = icmp slt i32 %19, 10000, !dbg !353
  br i1 %cmp29, label %if.then31, label %if.end35, !dbg !354

if.then31:                                        ; preds = %if.then28
  store i32 0, i32* %intVariable, align 4, !dbg !355
  store i32 0, i32* %i, align 4, !dbg !357
  br label %for.cond, !dbg !359

for.cond:                                         ; preds = %for.inc, %if.then31
  %20 = load i32, i32* %i, align 4, !dbg !360
  %21 = load i32, i32* %n, align 4, !dbg !362
  %cmp32 = icmp slt i32 %20, %21, !dbg !363
  br i1 %cmp32, label %for.body, label %for.end, !dbg !364

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !365
  %inc = add nsw i32 %22, 1, !dbg !365
  store i32 %inc, i32* %intVariable, align 4, !dbg !365
  br label %for.inc, !dbg !367

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !368
  %inc34 = add nsw i32 %23, 1, !dbg !368
  store i32 %inc34, i32* %i, align 4, !dbg !368
  br label %for.cond, !dbg !369, !llvm.loop !370

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !372
  call void @printIntLine(i32 %24), !dbg !373
  br label %if.end35, !dbg !374

if.end35:                                         ; preds = %for.end, %if.then28
  br label %if.end36, !dbg !375

if.end36:                                         ; preds = %if.end35, %if.then24
  br label %if.end37, !dbg !376

if.end37:                                         ; preds = %if.end36, %if.end21
  ret void, !dbg !377
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !378 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !379, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !381, metadata !DIExpression()), !dbg !382
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !382
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !382
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !383
  store i8* %arraydecay, i8** %data, align 8, !dbg !384
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !385
  %cmp = icmp ne i32 %1, 5, !dbg !387
  br i1 %cmp, label %if.then, label %if.else, !dbg !388

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !389
  br label %if.end, !dbg !391

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !392
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !394
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !395
  %cmp1 = icmp eq i32 %3, 5, !dbg !397
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !398

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata i32* %n, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !405, metadata !DIExpression()), !dbg !406
  %4 = load i8*, i8** %data, align 8, !dbg !407
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !409
  %cmp4 = icmp eq i32 %call3, 1, !dbg !410
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !411

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !412
  store i32 0, i32* %i, align 4, !dbg !414
  br label %for.cond, !dbg !416

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !417
  %6 = load i32, i32* %n, align 4, !dbg !419
  %cmp6 = icmp slt i32 %5, %6, !dbg !420
  br i1 %cmp6, label %for.body, label %for.end, !dbg !421

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !422
  %inc = add nsw i32 %7, 1, !dbg !422
  store i32 %inc, i32* %intVariable, align 4, !dbg !422
  br label %for.inc, !dbg !424

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !425
  %inc7 = add nsw i32 %8, 1, !dbg !425
  store i32 %inc7, i32* %i, align 4, !dbg !425
  br label %for.cond, !dbg !426, !llvm.loop !427

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !429
  call void @printIntLine(i32 %9), !dbg !430
  br label %if.end8, !dbg !431

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !432

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !433
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !434 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !435, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !437, metadata !DIExpression()), !dbg !438
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !438
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !438
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !439
  store i8* %arraydecay, i8** %data, align 8, !dbg !440
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !441
  %cmp = icmp eq i32 %1, 5, !dbg !443
  br i1 %cmp, label %if.then, label %if.end, !dbg !444

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !445
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !447
  br label %if.end, !dbg !448

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !449
  %cmp1 = icmp eq i32 %3, 5, !dbg !451
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !452

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !453, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata i32* %n, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !459, metadata !DIExpression()), !dbg !460
  %4 = load i8*, i8** %data, align 8, !dbg !461
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !463
  %cmp4 = icmp eq i32 %call3, 1, !dbg !464
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !465

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !466
  store i32 0, i32* %i, align 4, !dbg !468
  br label %for.cond, !dbg !470

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !471
  %6 = load i32, i32* %n, align 4, !dbg !473
  %cmp6 = icmp slt i32 %5, %6, !dbg !474
  br i1 %cmp6, label %for.body, label %for.end, !dbg !475

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !476
  %inc = add nsw i32 %7, 1, !dbg !476
  store i32 %inc, i32* %intVariable, align 4, !dbg !476
  br label %for.inc, !dbg !478

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !479
  %inc7 = add nsw i32 %8, 1, !dbg !479
  store i32 %inc7, i32* %i, align 4, !dbg !479
  br label %for.cond, !dbg !480, !llvm.loop !481

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !483
  call void @printIntLine(i32 %9), !dbg !484
  br label %if.end8, !dbg !485

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !486

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_06_good() #0 !dbg !488 {
entry:
  call void @goodB2G1(), !dbg !489
  call void @goodB2G2(), !dbg !490
  call void @goodG2B1(), !dbg !491
  call void @goodG2B2(), !dbg !492
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !494 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !499
  %0 = load i8*, i8** %line.addr, align 8, !dbg !500
  %cmp = icmp ne i8* %0, null, !dbg !502
  br i1 %cmp, label %if.then, label %if.end, !dbg !503

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !504
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !506
  br label %if.end, !dbg !507

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !508
  ret void, !dbg !509
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !510 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !511, metadata !DIExpression()), !dbg !512
  %0 = load i8*, i8** %line.addr, align 8, !dbg !513
  %cmp = icmp ne i8* %0, null, !dbg !515
  br i1 %cmp, label %if.then, label %if.end, !dbg !516

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !517
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !519
  br label %if.end, !dbg !520

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !522 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !527, metadata !DIExpression()), !dbg !528
  %0 = load i32*, i32** %line.addr, align 8, !dbg !529
  %cmp = icmp ne i32* %0, null, !dbg !531
  br i1 %cmp, label %if.then, label %if.end, !dbg !532

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !533
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !535
  br label %if.end, !dbg !536

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !537
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !538 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !541, metadata !DIExpression()), !dbg !542
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !543
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !544
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !546 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !550, metadata !DIExpression()), !dbg !551
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !552
  %conv = sext i16 %0 to i32, !dbg !552
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !553
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !555 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !559, metadata !DIExpression()), !dbg !560
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !561
  %conv = fpext float %0 to double, !dbg !561
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !562
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !564 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !568, metadata !DIExpression()), !dbg !569
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !570
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !571
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !573 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !580, metadata !DIExpression()), !dbg !581
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !582
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !583
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !585 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !588, metadata !DIExpression()), !dbg !589
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !590
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !591
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !593 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !596, metadata !DIExpression()), !dbg !597
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !598
  %conv = sext i8 %0 to i32, !dbg !598
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !599
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !601 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !604, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !606, metadata !DIExpression()), !dbg !610
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !611
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !612
  store i32 %0, i32* %arrayidx, align 4, !dbg !613
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !614
  store i32 0, i32* %arrayidx1, align 4, !dbg !615
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !616
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !617
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !619 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !622, metadata !DIExpression()), !dbg !623
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !624
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !625
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !627 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !630, metadata !DIExpression()), !dbg !631
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !632
  %conv = zext i8 %0 to i32, !dbg !632
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !633
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !635 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !639, metadata !DIExpression()), !dbg !640
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !641
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !642
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !644 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !654, metadata !DIExpression()), !dbg !655
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !656
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !657
  %1 = load i32, i32* %intOne, align 4, !dbg !657
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !658
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !659
  %3 = load i32, i32* %intTwo, align 4, !dbg !659
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !660
  ret void, !dbg !661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !662 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !666, metadata !DIExpression()), !dbg !667
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.declare(metadata i64* %i, metadata !670, metadata !DIExpression()), !dbg !671
  store i64 0, i64* %i, align 8, !dbg !672
  br label %for.cond, !dbg !674

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !675
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !677
  %cmp = icmp ult i64 %0, %1, !dbg !678
  br i1 %cmp, label %for.body, label %for.end, !dbg !679

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !680
  %3 = load i64, i64* %i, align 8, !dbg !682
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !680
  %4 = load i8, i8* %arrayidx, align 1, !dbg !680
  %conv = zext i8 %4 to i32, !dbg !680
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !683
  br label %for.inc, !dbg !684

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !685
  %inc = add i64 %5, 1, !dbg !685
  store i64 %inc, i64* %i, align 8, !dbg !685
  br label %for.cond, !dbg !686, !llvm.loop !687

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !689
  ret void, !dbg !690
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !691 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !694, metadata !DIExpression()), !dbg !695
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !696, metadata !DIExpression()), !dbg !697
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !698, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !700, metadata !DIExpression()), !dbg !701
  store i64 0, i64* %numWritten, align 8, !dbg !701
  br label %while.cond, !dbg !702

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !703
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !704
  %cmp = icmp ult i64 %0, %1, !dbg !705
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !706

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !707
  %2 = load i16*, i16** %call, align 8, !dbg !707
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !707
  %4 = load i64, i64* %numWritten, align 8, !dbg !707
  %mul = mul i64 2, %4, !dbg !707
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !707
  %5 = load i8, i8* %arrayidx, align 1, !dbg !707
  %conv = sext i8 %5 to i32, !dbg !707
  %idxprom = sext i32 %conv to i64, !dbg !707
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !707
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !707
  %conv2 = zext i16 %6 to i32, !dbg !707
  %and = and i32 %conv2, 4096, !dbg !707
  %tobool = icmp ne i32 %and, 0, !dbg !707
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !708

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !709
  %7 = load i16*, i16** %call3, align 8, !dbg !709
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !709
  %9 = load i64, i64* %numWritten, align 8, !dbg !709
  %mul4 = mul i64 2, %9, !dbg !709
  %add = add i64 %mul4, 1, !dbg !709
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !709
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !709
  %conv6 = sext i8 %10 to i32, !dbg !709
  %idxprom7 = sext i32 %conv6 to i64, !dbg !709
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !709
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !709
  %conv9 = zext i16 %11 to i32, !dbg !709
  %and10 = and i32 %conv9, 4096, !dbg !709
  %tobool11 = icmp ne i32 %and10, 0, !dbg !708
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !710
  br i1 %12, label %while.body, label %while.end, !dbg !702

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !711, metadata !DIExpression()), !dbg !713
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !714
  %14 = load i64, i64* %numWritten, align 8, !dbg !715
  %mul12 = mul i64 2, %14, !dbg !716
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !714
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !717
  %15 = load i32, i32* %byte, align 4, !dbg !718
  %conv15 = trunc i32 %15 to i8, !dbg !719
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !720
  %17 = load i64, i64* %numWritten, align 8, !dbg !721
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !720
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !722
  %18 = load i64, i64* %numWritten, align 8, !dbg !723
  %inc = add i64 %18, 1, !dbg !723
  store i64 %inc, i64* %numWritten, align 8, !dbg !723
  br label %while.cond, !dbg !702, !llvm.loop !724

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !726
  ret i64 %19, !dbg !727
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !728 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !731, metadata !DIExpression()), !dbg !732
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !733, metadata !DIExpression()), !dbg !734
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !735, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !737, metadata !DIExpression()), !dbg !738
  store i64 0, i64* %numWritten, align 8, !dbg !738
  br label %while.cond, !dbg !739

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !740
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !741
  %cmp = icmp ult i64 %0, %1, !dbg !742
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !743

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !744
  %3 = load i64, i64* %numWritten, align 8, !dbg !745
  %mul = mul i64 2, %3, !dbg !746
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !744
  %4 = load i32, i32* %arrayidx, align 4, !dbg !744
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !747
  %tobool = icmp ne i32 %call, 0, !dbg !747
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !748

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !749
  %6 = load i64, i64* %numWritten, align 8, !dbg !750
  %mul1 = mul i64 2, %6, !dbg !751
  %add = add i64 %mul1, 1, !dbg !752
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !749
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !749
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !753
  %tobool4 = icmp ne i32 %call3, 0, !dbg !748
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !754
  br i1 %8, label %while.body, label %while.end, !dbg !739

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !755, metadata !DIExpression()), !dbg !757
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !758
  %10 = load i64, i64* %numWritten, align 8, !dbg !759
  %mul5 = mul i64 2, %10, !dbg !760
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !758
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !761
  %11 = load i32, i32* %byte, align 4, !dbg !762
  %conv = trunc i32 %11 to i8, !dbg !763
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !764
  %13 = load i64, i64* %numWritten, align 8, !dbg !765
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !764
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !766
  %14 = load i64, i64* %numWritten, align 8, !dbg !767
  %inc = add i64 %14, 1, !dbg !767
  store i64 %inc, i64* %numWritten, align 8, !dbg !767
  br label %while.cond, !dbg !739, !llvm.loop !768

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !770
  ret i64 %15, !dbg !771
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !772 {
entry:
  ret i32 1, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !776 {
entry:
  ret i32 0, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !778 {
entry:
  %call = call i32 @rand() #8, !dbg !779
  %rem = srem i32 %call, 2, !dbg !780
  ret i32 %rem, !dbg !781
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !784 {
entry:
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !786 {
entry:
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !788 {
entry:
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !790 {
entry:
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !792 {
entry:
  ret void, !dbg !793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !794 {
entry:
  ret void, !dbg !795
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !796 {
entry:
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !798 {
entry:
  ret void, !dbg !799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !800 {
entry:
  ret void, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !802 {
entry:
  ret void, !dbg !803
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !804 {
entry:
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !806 {
entry:
  ret void, !dbg !807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !808 {
entry:
  ret void, !dbg !809
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !810 {
entry:
  ret void, !dbg !811
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !812 {
entry:
  ret void, !dbg !813
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !814 {
entry:
  ret void, !dbg !815
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !816 {
entry:
  ret void, !dbg !817
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

!llvm.dbg.cu = !{!2, !11}
!llvm.ident = !{!51, !51}
!llvm.module.flags = !{!52, !53, !54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_FIVE", scope: !2, file: !3, line: 30, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_06.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_983/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !11, file: !12, line: 174, type: !6, isLocal: false, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !30, globals: !33, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_983/source_code")
!13 = !{!14}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 46, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!18 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!30 = !{!7, !6, !31, !32}
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!9, !34, !36, !38, !40, !42, !44, !46}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !11, file: !12, line: 175, type: !6, isLocal: false, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !11, file: !12, line: 176, type: !6, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "globalTrue", scope: !11, file: !12, line: 181, type: !6, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "globalFalse", scope: !11, file: !12, line: 182, type: !6, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "globalFive", scope: !11, file: !12, line: 183, type: !6, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalArgc", scope: !11, file: !12, line: 214, type: !6, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalArgv", scope: !11, file: !12, line: 215, type: !48, isLocal: false, isDefinition: true)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !{!"clang version 12.0.0"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_06_bad", scope: !3, file: !3, line: 34, type: !56, scopeLine: 35, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !3, line: 36, type: !49)
!59 = !DILocation(line: 36, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !3, line: 37, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 37, column: 10, scope: !55)
!65 = !DILocation(line: 38, column: 12, scope: !55)
!66 = !DILocation(line: 38, column: 10, scope: !55)
!67 = !DILocation(line: 39, column: 8, scope: !68)
!68 = distinct !DILexicalBlock(scope: !55, file: !3, line: 39, column: 8)
!69 = !DILocation(line: 39, column: 25, scope: !68)
!70 = !DILocation(line: 39, column: 8, scope: !55)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !3, line: 43, type: !74)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 41, column: 9)
!73 = distinct !DILexicalBlock(scope: !68, file: !3, line: 40, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 43, column: 20, scope: !72)
!78 = !DILocation(line: 43, column: 37, scope: !72)
!79 = !DILocation(line: 43, column: 30, scope: !72)
!80 = !DILocation(line: 45, column: 21, scope: !81)
!81 = distinct !DILexicalBlock(scope: !72, file: !3, line: 45, column: 17)
!82 = !DILocation(line: 45, column: 20, scope: !81)
!83 = !DILocation(line: 45, column: 29, scope: !81)
!84 = !DILocation(line: 45, column: 17, scope: !72)
!85 = !DILocation(line: 48, column: 27, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 48, column: 21)
!87 = distinct !DILexicalBlock(scope: !81, file: !3, line: 46, column: 13)
!88 = !DILocation(line: 48, column: 32, scope: !86)
!89 = !DILocation(line: 48, column: 31, scope: !86)
!90 = !DILocation(line: 48, column: 51, scope: !86)
!91 = !DILocation(line: 48, column: 50, scope: !86)
!92 = !DILocation(line: 48, column: 41, scope: !86)
!93 = !DILocation(line: 48, column: 61, scope: !86)
!94 = !DILocation(line: 48, column: 21, scope: !86)
!95 = !DILocation(line: 48, column: 68, scope: !86)
!96 = !DILocation(line: 48, column: 21, scope: !87)
!97 = !DILocation(line: 52, column: 38, scope: !98)
!98 = distinct !DILexicalBlock(scope: !86, file: !3, line: 49, column: 17)
!99 = !DILocation(line: 52, column: 31, scope: !98)
!100 = !DILocation(line: 52, column: 29, scope: !98)
!101 = !DILocation(line: 53, column: 25, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !3, line: 53, column: 25)
!103 = !DILocation(line: 53, column: 33, scope: !102)
!104 = !DILocation(line: 53, column: 37, scope: !102)
!105 = !DILocation(line: 53, column: 40, scope: !102)
!106 = !DILocation(line: 53, column: 45, scope: !102)
!107 = !DILocation(line: 53, column: 52, scope: !102)
!108 = !DILocation(line: 53, column: 56, scope: !102)
!109 = !DILocation(line: 53, column: 25, scope: !98)
!110 = !DILocation(line: 55, column: 25, scope: !111)
!111 = distinct !DILexicalBlock(scope: !102, file: !3, line: 54, column: 21)
!112 = !DILocation(line: 55, column: 30, scope: !111)
!113 = !DILocation(line: 55, column: 37, scope: !111)
!114 = !DILocation(line: 55, column: 41, scope: !111)
!115 = !DILocation(line: 56, column: 21, scope: !111)
!116 = !DILocation(line: 57, column: 17, scope: !98)
!117 = !DILocation(line: 60, column: 21, scope: !118)
!118 = distinct !DILexicalBlock(scope: !86, file: !3, line: 59, column: 17)
!119 = !DILocation(line: 62, column: 21, scope: !118)
!120 = !DILocation(line: 62, column: 26, scope: !118)
!121 = !DILocation(line: 62, column: 35, scope: !118)
!122 = !DILocation(line: 64, column: 13, scope: !87)
!123 = !DILocation(line: 66, column: 5, scope: !73)
!124 = !DILocation(line: 67, column: 8, scope: !125)
!125 = distinct !DILexicalBlock(scope: !55, file: !3, line: 67, column: 8)
!126 = !DILocation(line: 67, column: 25, scope: !125)
!127 = !DILocation(line: 67, column: 8, scope: !55)
!128 = !DILocalVariable(name: "i", scope: !129, file: !3, line: 70, type: !6)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 69, column: 9)
!130 = distinct !DILexicalBlock(scope: !125, file: !3, line: 68, column: 5)
!131 = !DILocation(line: 70, column: 17, scope: !129)
!132 = !DILocalVariable(name: "n", scope: !129, file: !3, line: 70, type: !6)
!133 = !DILocation(line: 70, column: 20, scope: !129)
!134 = !DILocalVariable(name: "intVariable", scope: !129, file: !3, line: 70, type: !6)
!135 = !DILocation(line: 70, column: 23, scope: !129)
!136 = !DILocation(line: 71, column: 24, scope: !137)
!137 = distinct !DILexicalBlock(scope: !129, file: !3, line: 71, column: 17)
!138 = !DILocation(line: 71, column: 17, scope: !137)
!139 = !DILocation(line: 71, column: 40, scope: !137)
!140 = !DILocation(line: 71, column: 17, scope: !129)
!141 = !DILocation(line: 74, column: 29, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !3, line: 72, column: 13)
!143 = !DILocation(line: 75, column: 24, scope: !144)
!144 = distinct !DILexicalBlock(scope: !142, file: !3, line: 75, column: 17)
!145 = !DILocation(line: 75, column: 22, scope: !144)
!146 = !DILocation(line: 75, column: 29, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !3, line: 75, column: 17)
!148 = !DILocation(line: 75, column: 33, scope: !147)
!149 = !DILocation(line: 75, column: 31, scope: !147)
!150 = !DILocation(line: 75, column: 17, scope: !144)
!151 = !DILocation(line: 78, column: 32, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !3, line: 76, column: 17)
!153 = !DILocation(line: 79, column: 17, scope: !152)
!154 = !DILocation(line: 75, column: 37, scope: !147)
!155 = !DILocation(line: 75, column: 17, scope: !147)
!156 = distinct !{!156, !150, !157, !158}
!157 = !DILocation(line: 79, column: 17, scope: !144)
!158 = !{!"llvm.loop.mustprogress"}
!159 = !DILocation(line: 80, column: 30, scope: !142)
!160 = !DILocation(line: 80, column: 17, scope: !142)
!161 = !DILocation(line: 81, column: 13, scope: !142)
!162 = !DILocation(line: 83, column: 5, scope: !130)
!163 = !DILocation(line: 84, column: 1, scope: !55)
!164 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 91, type: !56, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!165 = !DILocalVariable(name: "data", scope: !164, file: !3, line: 93, type: !49)
!166 = !DILocation(line: 93, column: 12, scope: !164)
!167 = !DILocalVariable(name: "dataBuffer", scope: !164, file: !3, line: 94, type: !61)
!168 = !DILocation(line: 94, column: 10, scope: !164)
!169 = !DILocation(line: 95, column: 12, scope: !164)
!170 = !DILocation(line: 95, column: 10, scope: !164)
!171 = !DILocation(line: 96, column: 8, scope: !172)
!172 = distinct !DILexicalBlock(scope: !164, file: !3, line: 96, column: 8)
!173 = !DILocation(line: 96, column: 25, scope: !172)
!174 = !DILocation(line: 96, column: 8, scope: !164)
!175 = !DILocalVariable(name: "dataLen", scope: !176, file: !3, line: 100, type: !74)
!176 = distinct !DILexicalBlock(scope: !177, file: !3, line: 98, column: 9)
!177 = distinct !DILexicalBlock(scope: !172, file: !3, line: 97, column: 5)
!178 = !DILocation(line: 100, column: 20, scope: !176)
!179 = !DILocation(line: 100, column: 37, scope: !176)
!180 = !DILocation(line: 100, column: 30, scope: !176)
!181 = !DILocation(line: 102, column: 21, scope: !182)
!182 = distinct !DILexicalBlock(scope: !176, file: !3, line: 102, column: 17)
!183 = !DILocation(line: 102, column: 20, scope: !182)
!184 = !DILocation(line: 102, column: 29, scope: !182)
!185 = !DILocation(line: 102, column: 17, scope: !176)
!186 = !DILocation(line: 105, column: 27, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 105, column: 21)
!188 = distinct !DILexicalBlock(scope: !182, file: !3, line: 103, column: 13)
!189 = !DILocation(line: 105, column: 32, scope: !187)
!190 = !DILocation(line: 105, column: 31, scope: !187)
!191 = !DILocation(line: 105, column: 51, scope: !187)
!192 = !DILocation(line: 105, column: 50, scope: !187)
!193 = !DILocation(line: 105, column: 41, scope: !187)
!194 = !DILocation(line: 105, column: 61, scope: !187)
!195 = !DILocation(line: 105, column: 21, scope: !187)
!196 = !DILocation(line: 105, column: 68, scope: !187)
!197 = !DILocation(line: 105, column: 21, scope: !188)
!198 = !DILocation(line: 109, column: 38, scope: !199)
!199 = distinct !DILexicalBlock(scope: !187, file: !3, line: 106, column: 17)
!200 = !DILocation(line: 109, column: 31, scope: !199)
!201 = !DILocation(line: 109, column: 29, scope: !199)
!202 = !DILocation(line: 110, column: 25, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !3, line: 110, column: 25)
!204 = !DILocation(line: 110, column: 33, scope: !203)
!205 = !DILocation(line: 110, column: 37, scope: !203)
!206 = !DILocation(line: 110, column: 40, scope: !203)
!207 = !DILocation(line: 110, column: 45, scope: !203)
!208 = !DILocation(line: 110, column: 52, scope: !203)
!209 = !DILocation(line: 110, column: 56, scope: !203)
!210 = !DILocation(line: 110, column: 25, scope: !199)
!211 = !DILocation(line: 112, column: 25, scope: !212)
!212 = distinct !DILexicalBlock(scope: !203, file: !3, line: 111, column: 21)
!213 = !DILocation(line: 112, column: 30, scope: !212)
!214 = !DILocation(line: 112, column: 37, scope: !212)
!215 = !DILocation(line: 112, column: 41, scope: !212)
!216 = !DILocation(line: 113, column: 21, scope: !212)
!217 = !DILocation(line: 114, column: 17, scope: !199)
!218 = !DILocation(line: 117, column: 21, scope: !219)
!219 = distinct !DILexicalBlock(scope: !187, file: !3, line: 116, column: 17)
!220 = !DILocation(line: 119, column: 21, scope: !219)
!221 = !DILocation(line: 119, column: 26, scope: !219)
!222 = !DILocation(line: 119, column: 35, scope: !219)
!223 = !DILocation(line: 121, column: 13, scope: !188)
!224 = !DILocation(line: 123, column: 5, scope: !177)
!225 = !DILocation(line: 124, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !164, file: !3, line: 124, column: 8)
!227 = !DILocation(line: 124, column: 25, scope: !226)
!228 = !DILocation(line: 124, column: 8, scope: !164)
!229 = !DILocation(line: 127, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !3, line: 125, column: 5)
!231 = !DILocation(line: 128, column: 5, scope: !230)
!232 = !DILocalVariable(name: "i", scope: !233, file: !3, line: 132, type: !6)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 131, column: 9)
!234 = distinct !DILexicalBlock(scope: !226, file: !3, line: 130, column: 5)
!235 = !DILocation(line: 132, column: 17, scope: !233)
!236 = !DILocalVariable(name: "n", scope: !233, file: !3, line: 132, type: !6)
!237 = !DILocation(line: 132, column: 20, scope: !233)
!238 = !DILocalVariable(name: "intVariable", scope: !233, file: !3, line: 132, type: !6)
!239 = !DILocation(line: 132, column: 23, scope: !233)
!240 = !DILocation(line: 133, column: 24, scope: !241)
!241 = distinct !DILexicalBlock(scope: !233, file: !3, line: 133, column: 17)
!242 = !DILocation(line: 133, column: 17, scope: !241)
!243 = !DILocation(line: 133, column: 40, scope: !241)
!244 = !DILocation(line: 133, column: 17, scope: !233)
!245 = !DILocation(line: 136, column: 21, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !3, line: 136, column: 21)
!247 = distinct !DILexicalBlock(scope: !241, file: !3, line: 134, column: 13)
!248 = !DILocation(line: 136, column: 23, scope: !246)
!249 = !DILocation(line: 136, column: 21, scope: !247)
!250 = !DILocation(line: 138, column: 33, scope: !251)
!251 = distinct !DILexicalBlock(scope: !246, file: !3, line: 137, column: 17)
!252 = !DILocation(line: 139, column: 28, scope: !253)
!253 = distinct !DILexicalBlock(scope: !251, file: !3, line: 139, column: 21)
!254 = !DILocation(line: 139, column: 26, scope: !253)
!255 = !DILocation(line: 139, column: 33, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 139, column: 21)
!257 = !DILocation(line: 139, column: 37, scope: !256)
!258 = !DILocation(line: 139, column: 35, scope: !256)
!259 = !DILocation(line: 139, column: 21, scope: !253)
!260 = !DILocation(line: 142, column: 36, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !3, line: 140, column: 21)
!262 = !DILocation(line: 143, column: 21, scope: !261)
!263 = !DILocation(line: 139, column: 41, scope: !256)
!264 = !DILocation(line: 139, column: 21, scope: !256)
!265 = distinct !{!265, !259, !266, !158}
!266 = !DILocation(line: 143, column: 21, scope: !253)
!267 = !DILocation(line: 144, column: 34, scope: !251)
!268 = !DILocation(line: 144, column: 21, scope: !251)
!269 = !DILocation(line: 145, column: 17, scope: !251)
!270 = !DILocation(line: 146, column: 13, scope: !247)
!271 = !DILocation(line: 149, column: 1, scope: !164)
!272 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 152, type: !56, scopeLine: 153, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!273 = !DILocalVariable(name: "data", scope: !272, file: !3, line: 154, type: !49)
!274 = !DILocation(line: 154, column: 12, scope: !272)
!275 = !DILocalVariable(name: "dataBuffer", scope: !272, file: !3, line: 155, type: !61)
!276 = !DILocation(line: 155, column: 10, scope: !272)
!277 = !DILocation(line: 156, column: 12, scope: !272)
!278 = !DILocation(line: 156, column: 10, scope: !272)
!279 = !DILocation(line: 157, column: 8, scope: !280)
!280 = distinct !DILexicalBlock(scope: !272, file: !3, line: 157, column: 8)
!281 = !DILocation(line: 157, column: 25, scope: !280)
!282 = !DILocation(line: 157, column: 8, scope: !272)
!283 = !DILocalVariable(name: "dataLen", scope: !284, file: !3, line: 161, type: !74)
!284 = distinct !DILexicalBlock(scope: !285, file: !3, line: 159, column: 9)
!285 = distinct !DILexicalBlock(scope: !280, file: !3, line: 158, column: 5)
!286 = !DILocation(line: 161, column: 20, scope: !284)
!287 = !DILocation(line: 161, column: 37, scope: !284)
!288 = !DILocation(line: 161, column: 30, scope: !284)
!289 = !DILocation(line: 163, column: 21, scope: !290)
!290 = distinct !DILexicalBlock(scope: !284, file: !3, line: 163, column: 17)
!291 = !DILocation(line: 163, column: 20, scope: !290)
!292 = !DILocation(line: 163, column: 29, scope: !290)
!293 = !DILocation(line: 163, column: 17, scope: !284)
!294 = !DILocation(line: 166, column: 27, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 166, column: 21)
!296 = distinct !DILexicalBlock(scope: !290, file: !3, line: 164, column: 13)
!297 = !DILocation(line: 166, column: 32, scope: !295)
!298 = !DILocation(line: 166, column: 31, scope: !295)
!299 = !DILocation(line: 166, column: 51, scope: !295)
!300 = !DILocation(line: 166, column: 50, scope: !295)
!301 = !DILocation(line: 166, column: 41, scope: !295)
!302 = !DILocation(line: 166, column: 61, scope: !295)
!303 = !DILocation(line: 166, column: 21, scope: !295)
!304 = !DILocation(line: 166, column: 68, scope: !295)
!305 = !DILocation(line: 166, column: 21, scope: !296)
!306 = !DILocation(line: 170, column: 38, scope: !307)
!307 = distinct !DILexicalBlock(scope: !295, file: !3, line: 167, column: 17)
!308 = !DILocation(line: 170, column: 31, scope: !307)
!309 = !DILocation(line: 170, column: 29, scope: !307)
!310 = !DILocation(line: 171, column: 25, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !3, line: 171, column: 25)
!312 = !DILocation(line: 171, column: 33, scope: !311)
!313 = !DILocation(line: 171, column: 37, scope: !311)
!314 = !DILocation(line: 171, column: 40, scope: !311)
!315 = !DILocation(line: 171, column: 45, scope: !311)
!316 = !DILocation(line: 171, column: 52, scope: !311)
!317 = !DILocation(line: 171, column: 56, scope: !311)
!318 = !DILocation(line: 171, column: 25, scope: !307)
!319 = !DILocation(line: 173, column: 25, scope: !320)
!320 = distinct !DILexicalBlock(scope: !311, file: !3, line: 172, column: 21)
!321 = !DILocation(line: 173, column: 30, scope: !320)
!322 = !DILocation(line: 173, column: 37, scope: !320)
!323 = !DILocation(line: 173, column: 41, scope: !320)
!324 = !DILocation(line: 174, column: 21, scope: !320)
!325 = !DILocation(line: 175, column: 17, scope: !307)
!326 = !DILocation(line: 178, column: 21, scope: !327)
!327 = distinct !DILexicalBlock(scope: !295, file: !3, line: 177, column: 17)
!328 = !DILocation(line: 180, column: 21, scope: !327)
!329 = !DILocation(line: 180, column: 26, scope: !327)
!330 = !DILocation(line: 180, column: 35, scope: !327)
!331 = !DILocation(line: 182, column: 13, scope: !296)
!332 = !DILocation(line: 184, column: 5, scope: !285)
!333 = !DILocation(line: 185, column: 8, scope: !334)
!334 = distinct !DILexicalBlock(scope: !272, file: !3, line: 185, column: 8)
!335 = !DILocation(line: 185, column: 25, scope: !334)
!336 = !DILocation(line: 185, column: 8, scope: !272)
!337 = !DILocalVariable(name: "i", scope: !338, file: !3, line: 188, type: !6)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 187, column: 9)
!339 = distinct !DILexicalBlock(scope: !334, file: !3, line: 186, column: 5)
!340 = !DILocation(line: 188, column: 17, scope: !338)
!341 = !DILocalVariable(name: "n", scope: !338, file: !3, line: 188, type: !6)
!342 = !DILocation(line: 188, column: 20, scope: !338)
!343 = !DILocalVariable(name: "intVariable", scope: !338, file: !3, line: 188, type: !6)
!344 = !DILocation(line: 188, column: 23, scope: !338)
!345 = !DILocation(line: 189, column: 24, scope: !346)
!346 = distinct !DILexicalBlock(scope: !338, file: !3, line: 189, column: 17)
!347 = !DILocation(line: 189, column: 17, scope: !346)
!348 = !DILocation(line: 189, column: 40, scope: !346)
!349 = !DILocation(line: 189, column: 17, scope: !338)
!350 = !DILocation(line: 192, column: 21, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 192, column: 21)
!352 = distinct !DILexicalBlock(scope: !346, file: !3, line: 190, column: 13)
!353 = !DILocation(line: 192, column: 23, scope: !351)
!354 = !DILocation(line: 192, column: 21, scope: !352)
!355 = !DILocation(line: 194, column: 33, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !3, line: 193, column: 17)
!357 = !DILocation(line: 195, column: 28, scope: !358)
!358 = distinct !DILexicalBlock(scope: !356, file: !3, line: 195, column: 21)
!359 = !DILocation(line: 195, column: 26, scope: !358)
!360 = !DILocation(line: 195, column: 33, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !3, line: 195, column: 21)
!362 = !DILocation(line: 195, column: 37, scope: !361)
!363 = !DILocation(line: 195, column: 35, scope: !361)
!364 = !DILocation(line: 195, column: 21, scope: !358)
!365 = !DILocation(line: 198, column: 36, scope: !366)
!366 = distinct !DILexicalBlock(scope: !361, file: !3, line: 196, column: 21)
!367 = !DILocation(line: 199, column: 21, scope: !366)
!368 = !DILocation(line: 195, column: 41, scope: !361)
!369 = !DILocation(line: 195, column: 21, scope: !361)
!370 = distinct !{!370, !364, !371, !158}
!371 = !DILocation(line: 199, column: 21, scope: !358)
!372 = !DILocation(line: 200, column: 34, scope: !356)
!373 = !DILocation(line: 200, column: 21, scope: !356)
!374 = !DILocation(line: 201, column: 17, scope: !356)
!375 = !DILocation(line: 202, column: 13, scope: !352)
!376 = !DILocation(line: 204, column: 5, scope: !339)
!377 = !DILocation(line: 205, column: 1, scope: !272)
!378 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 208, type: !56, scopeLine: 209, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!379 = !DILocalVariable(name: "data", scope: !378, file: !3, line: 210, type: !49)
!380 = !DILocation(line: 210, column: 12, scope: !378)
!381 = !DILocalVariable(name: "dataBuffer", scope: !378, file: !3, line: 211, type: !61)
!382 = !DILocation(line: 211, column: 10, scope: !378)
!383 = !DILocation(line: 212, column: 12, scope: !378)
!384 = !DILocation(line: 212, column: 10, scope: !378)
!385 = !DILocation(line: 213, column: 8, scope: !386)
!386 = distinct !DILexicalBlock(scope: !378, file: !3, line: 213, column: 8)
!387 = !DILocation(line: 213, column: 25, scope: !386)
!388 = !DILocation(line: 213, column: 8, scope: !378)
!389 = !DILocation(line: 216, column: 9, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !3, line: 214, column: 5)
!391 = !DILocation(line: 217, column: 5, scope: !390)
!392 = !DILocation(line: 221, column: 16, scope: !393)
!393 = distinct !DILexicalBlock(scope: !386, file: !3, line: 219, column: 5)
!394 = !DILocation(line: 221, column: 9, scope: !393)
!395 = !DILocation(line: 223, column: 8, scope: !396)
!396 = distinct !DILexicalBlock(scope: !378, file: !3, line: 223, column: 8)
!397 = !DILocation(line: 223, column: 25, scope: !396)
!398 = !DILocation(line: 223, column: 8, scope: !378)
!399 = !DILocalVariable(name: "i", scope: !400, file: !3, line: 226, type: !6)
!400 = distinct !DILexicalBlock(scope: !401, file: !3, line: 225, column: 9)
!401 = distinct !DILexicalBlock(scope: !396, file: !3, line: 224, column: 5)
!402 = !DILocation(line: 226, column: 17, scope: !400)
!403 = !DILocalVariable(name: "n", scope: !400, file: !3, line: 226, type: !6)
!404 = !DILocation(line: 226, column: 20, scope: !400)
!405 = !DILocalVariable(name: "intVariable", scope: !400, file: !3, line: 226, type: !6)
!406 = !DILocation(line: 226, column: 23, scope: !400)
!407 = !DILocation(line: 227, column: 24, scope: !408)
!408 = distinct !DILexicalBlock(scope: !400, file: !3, line: 227, column: 17)
!409 = !DILocation(line: 227, column: 17, scope: !408)
!410 = !DILocation(line: 227, column: 40, scope: !408)
!411 = !DILocation(line: 227, column: 17, scope: !400)
!412 = !DILocation(line: 230, column: 29, scope: !413)
!413 = distinct !DILexicalBlock(scope: !408, file: !3, line: 228, column: 13)
!414 = !DILocation(line: 231, column: 24, scope: !415)
!415 = distinct !DILexicalBlock(scope: !413, file: !3, line: 231, column: 17)
!416 = !DILocation(line: 231, column: 22, scope: !415)
!417 = !DILocation(line: 231, column: 29, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !3, line: 231, column: 17)
!419 = !DILocation(line: 231, column: 33, scope: !418)
!420 = !DILocation(line: 231, column: 31, scope: !418)
!421 = !DILocation(line: 231, column: 17, scope: !415)
!422 = !DILocation(line: 234, column: 32, scope: !423)
!423 = distinct !DILexicalBlock(scope: !418, file: !3, line: 232, column: 17)
!424 = !DILocation(line: 235, column: 17, scope: !423)
!425 = !DILocation(line: 231, column: 37, scope: !418)
!426 = !DILocation(line: 231, column: 17, scope: !418)
!427 = distinct !{!427, !421, !428, !158}
!428 = !DILocation(line: 235, column: 17, scope: !415)
!429 = !DILocation(line: 236, column: 30, scope: !413)
!430 = !DILocation(line: 236, column: 17, scope: !413)
!431 = !DILocation(line: 237, column: 13, scope: !413)
!432 = !DILocation(line: 239, column: 5, scope: !401)
!433 = !DILocation(line: 240, column: 1, scope: !378)
!434 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 243, type: !56, scopeLine: 244, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!435 = !DILocalVariable(name: "data", scope: !434, file: !3, line: 245, type: !49)
!436 = !DILocation(line: 245, column: 12, scope: !434)
!437 = !DILocalVariable(name: "dataBuffer", scope: !434, file: !3, line: 246, type: !61)
!438 = !DILocation(line: 246, column: 10, scope: !434)
!439 = !DILocation(line: 247, column: 12, scope: !434)
!440 = !DILocation(line: 247, column: 10, scope: !434)
!441 = !DILocation(line: 248, column: 8, scope: !442)
!442 = distinct !DILexicalBlock(scope: !434, file: !3, line: 248, column: 8)
!443 = !DILocation(line: 248, column: 25, scope: !442)
!444 = !DILocation(line: 248, column: 8, scope: !434)
!445 = !DILocation(line: 251, column: 16, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !3, line: 249, column: 5)
!447 = !DILocation(line: 251, column: 9, scope: !446)
!448 = !DILocation(line: 252, column: 5, scope: !446)
!449 = !DILocation(line: 253, column: 8, scope: !450)
!450 = distinct !DILexicalBlock(scope: !434, file: !3, line: 253, column: 8)
!451 = !DILocation(line: 253, column: 25, scope: !450)
!452 = !DILocation(line: 253, column: 8, scope: !434)
!453 = !DILocalVariable(name: "i", scope: !454, file: !3, line: 256, type: !6)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 255, column: 9)
!455 = distinct !DILexicalBlock(scope: !450, file: !3, line: 254, column: 5)
!456 = !DILocation(line: 256, column: 17, scope: !454)
!457 = !DILocalVariable(name: "n", scope: !454, file: !3, line: 256, type: !6)
!458 = !DILocation(line: 256, column: 20, scope: !454)
!459 = !DILocalVariable(name: "intVariable", scope: !454, file: !3, line: 256, type: !6)
!460 = !DILocation(line: 256, column: 23, scope: !454)
!461 = !DILocation(line: 257, column: 24, scope: !462)
!462 = distinct !DILexicalBlock(scope: !454, file: !3, line: 257, column: 17)
!463 = !DILocation(line: 257, column: 17, scope: !462)
!464 = !DILocation(line: 257, column: 40, scope: !462)
!465 = !DILocation(line: 257, column: 17, scope: !454)
!466 = !DILocation(line: 260, column: 29, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !3, line: 258, column: 13)
!468 = !DILocation(line: 261, column: 24, scope: !469)
!469 = distinct !DILexicalBlock(scope: !467, file: !3, line: 261, column: 17)
!470 = !DILocation(line: 261, column: 22, scope: !469)
!471 = !DILocation(line: 261, column: 29, scope: !472)
!472 = distinct !DILexicalBlock(scope: !469, file: !3, line: 261, column: 17)
!473 = !DILocation(line: 261, column: 33, scope: !472)
!474 = !DILocation(line: 261, column: 31, scope: !472)
!475 = !DILocation(line: 261, column: 17, scope: !469)
!476 = !DILocation(line: 264, column: 32, scope: !477)
!477 = distinct !DILexicalBlock(scope: !472, file: !3, line: 262, column: 17)
!478 = !DILocation(line: 265, column: 17, scope: !477)
!479 = !DILocation(line: 261, column: 37, scope: !472)
!480 = !DILocation(line: 261, column: 17, scope: !472)
!481 = distinct !{!481, !475, !482, !158}
!482 = !DILocation(line: 265, column: 17, scope: !469)
!483 = !DILocation(line: 266, column: 30, scope: !467)
!484 = !DILocation(line: 266, column: 17, scope: !467)
!485 = !DILocation(line: 267, column: 13, scope: !467)
!486 = !DILocation(line: 269, column: 5, scope: !455)
!487 = !DILocation(line: 270, column: 1, scope: !434)
!488 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_06_good", scope: !3, file: !3, line: 272, type: !56, scopeLine: 273, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!489 = !DILocation(line: 274, column: 5, scope: !488)
!490 = !DILocation(line: 275, column: 5, scope: !488)
!491 = !DILocation(line: 276, column: 5, scope: !488)
!492 = !DILocation(line: 277, column: 5, scope: !488)
!493 = !DILocation(line: 278, column: 1, scope: !488)
!494 = distinct !DISubprogram(name: "printLine", scope: !12, file: !12, line: 11, type: !495, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !49}
!497 = !DILocalVariable(name: "line", arg: 1, scope: !494, file: !12, line: 11, type: !49)
!498 = !DILocation(line: 11, column: 25, scope: !494)
!499 = !DILocation(line: 13, column: 1, scope: !494)
!500 = !DILocation(line: 14, column: 8, scope: !501)
!501 = distinct !DILexicalBlock(scope: !494, file: !12, line: 14, column: 8)
!502 = !DILocation(line: 14, column: 13, scope: !501)
!503 = !DILocation(line: 14, column: 8, scope: !494)
!504 = !DILocation(line: 16, column: 24, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !12, line: 15, column: 5)
!506 = !DILocation(line: 16, column: 9, scope: !505)
!507 = !DILocation(line: 17, column: 5, scope: !505)
!508 = !DILocation(line: 18, column: 5, scope: !494)
!509 = !DILocation(line: 19, column: 1, scope: !494)
!510 = distinct !DISubprogram(name: "printSinkLine", scope: !12, file: !12, line: 20, type: !495, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!511 = !DILocalVariable(name: "line", arg: 1, scope: !510, file: !12, line: 20, type: !49)
!512 = !DILocation(line: 20, column: 29, scope: !510)
!513 = !DILocation(line: 22, column: 8, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !12, line: 22, column: 8)
!515 = !DILocation(line: 22, column: 13, scope: !514)
!516 = !DILocation(line: 22, column: 8, scope: !510)
!517 = !DILocation(line: 24, column: 24, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !12, line: 23, column: 5)
!519 = !DILocation(line: 24, column: 9, scope: !518)
!520 = !DILocation(line: 25, column: 5, scope: !518)
!521 = !DILocation(line: 26, column: 1, scope: !510)
!522 = distinct !DISubprogram(name: "printWLine", scope: !12, file: !12, line: 27, type: !523, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !6)
!527 = !DILocalVariable(name: "line", arg: 1, scope: !522, file: !12, line: 27, type: !525)
!528 = !DILocation(line: 27, column: 29, scope: !522)
!529 = !DILocation(line: 29, column: 8, scope: !530)
!530 = distinct !DILexicalBlock(scope: !522, file: !12, line: 29, column: 8)
!531 = !DILocation(line: 29, column: 13, scope: !530)
!532 = !DILocation(line: 29, column: 8, scope: !522)
!533 = !DILocation(line: 31, column: 27, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !12, line: 30, column: 5)
!535 = !DILocation(line: 31, column: 9, scope: !534)
!536 = !DILocation(line: 32, column: 5, scope: !534)
!537 = !DILocation(line: 33, column: 1, scope: !522)
!538 = distinct !DISubprogram(name: "printIntLine", scope: !12, file: !12, line: 35, type: !539, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !6}
!541 = !DILocalVariable(name: "intNumber", arg: 1, scope: !538, file: !12, line: 35, type: !6)
!542 = !DILocation(line: 35, column: 24, scope: !538)
!543 = !DILocation(line: 37, column: 20, scope: !538)
!544 = !DILocation(line: 37, column: 5, scope: !538)
!545 = !DILocation(line: 38, column: 1, scope: !538)
!546 = distinct !DISubprogram(name: "printShortLine", scope: !12, file: !12, line: 40, type: !547, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !549}
!549 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!550 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !546, file: !12, line: 40, type: !549)
!551 = !DILocation(line: 40, column: 28, scope: !546)
!552 = !DILocation(line: 42, column: 21, scope: !546)
!553 = !DILocation(line: 42, column: 5, scope: !546)
!554 = !DILocation(line: 43, column: 1, scope: !546)
!555 = distinct !DISubprogram(name: "printFloatLine", scope: !12, file: !12, line: 45, type: !556, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !558}
!558 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!559 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !555, file: !12, line: 45, type: !558)
!560 = !DILocation(line: 45, column: 28, scope: !555)
!561 = !DILocation(line: 47, column: 20, scope: !555)
!562 = !DILocation(line: 47, column: 5, scope: !555)
!563 = !DILocation(line: 48, column: 1, scope: !555)
!564 = distinct !DISubprogram(name: "printLongLine", scope: !12, file: !12, line: 50, type: !565, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !567}
!567 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!568 = !DILocalVariable(name: "longNumber", arg: 1, scope: !564, file: !12, line: 50, type: !567)
!569 = !DILocation(line: 50, column: 26, scope: !564)
!570 = !DILocation(line: 52, column: 21, scope: !564)
!571 = !DILocation(line: 52, column: 5, scope: !564)
!572 = !DILocation(line: 53, column: 1, scope: !564)
!573 = distinct !DISubprogram(name: "printLongLongLine", scope: !12, file: !12, line: 55, type: !574, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !576}
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !577, line: 27, baseType: !578)
!577 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !579, line: 44, baseType: !567)
!579 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!580 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !573, file: !12, line: 55, type: !576)
!581 = !DILocation(line: 55, column: 33, scope: !573)
!582 = !DILocation(line: 57, column: 29, scope: !573)
!583 = !DILocation(line: 57, column: 5, scope: !573)
!584 = !DILocation(line: 58, column: 1, scope: !573)
!585 = distinct !DISubprogram(name: "printSizeTLine", scope: !12, file: !12, line: 60, type: !586, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !74}
!588 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !585, file: !12, line: 60, type: !74)
!589 = !DILocation(line: 60, column: 29, scope: !585)
!590 = !DILocation(line: 62, column: 21, scope: !585)
!591 = !DILocation(line: 62, column: 5, scope: !585)
!592 = !DILocation(line: 63, column: 1, scope: !585)
!593 = distinct !DISubprogram(name: "printHexCharLine", scope: !12, file: !12, line: 65, type: !594, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !50}
!596 = !DILocalVariable(name: "charHex", arg: 1, scope: !593, file: !12, line: 65, type: !50)
!597 = !DILocation(line: 65, column: 29, scope: !593)
!598 = !DILocation(line: 67, column: 22, scope: !593)
!599 = !DILocation(line: 67, column: 5, scope: !593)
!600 = !DILocation(line: 68, column: 1, scope: !593)
!601 = distinct !DISubprogram(name: "printWcharLine", scope: !12, file: !12, line: 70, type: !602, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !526}
!604 = !DILocalVariable(name: "wideChar", arg: 1, scope: !601, file: !12, line: 70, type: !526)
!605 = !DILocation(line: 70, column: 29, scope: !601)
!606 = !DILocalVariable(name: "s", scope: !601, file: !12, line: 74, type: !607)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 64, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 2)
!610 = !DILocation(line: 74, column: 13, scope: !601)
!611 = !DILocation(line: 75, column: 16, scope: !601)
!612 = !DILocation(line: 75, column: 9, scope: !601)
!613 = !DILocation(line: 75, column: 14, scope: !601)
!614 = !DILocation(line: 76, column: 9, scope: !601)
!615 = !DILocation(line: 76, column: 14, scope: !601)
!616 = !DILocation(line: 77, column: 21, scope: !601)
!617 = !DILocation(line: 77, column: 5, scope: !601)
!618 = !DILocation(line: 78, column: 1, scope: !601)
!619 = distinct !DISubprogram(name: "printUnsignedLine", scope: !12, file: !12, line: 80, type: !620, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !16}
!622 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !619, file: !12, line: 80, type: !16)
!623 = !DILocation(line: 80, column: 33, scope: !619)
!624 = !DILocation(line: 82, column: 20, scope: !619)
!625 = !DILocation(line: 82, column: 5, scope: !619)
!626 = !DILocation(line: 83, column: 1, scope: !619)
!627 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !12, file: !12, line: 85, type: !628, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !32}
!630 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !627, file: !12, line: 85, type: !32)
!631 = !DILocation(line: 85, column: 45, scope: !627)
!632 = !DILocation(line: 87, column: 22, scope: !627)
!633 = !DILocation(line: 87, column: 5, scope: !627)
!634 = !DILocation(line: 88, column: 1, scope: !627)
!635 = distinct !DISubprogram(name: "printDoubleLine", scope: !12, file: !12, line: 90, type: !636, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !638}
!638 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!639 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !635, file: !12, line: 90, type: !638)
!640 = !DILocation(line: 90, column: 29, scope: !635)
!641 = !DILocation(line: 92, column: 20, scope: !635)
!642 = !DILocation(line: 92, column: 5, scope: !635)
!643 = !DILocation(line: 93, column: 1, scope: !635)
!644 = distinct !DISubprogram(name: "printStructLine", scope: !12, file: !12, line: 95, type: !645, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !649, line: 100, baseType: !650)
!649 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_983/source_code")
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !649, line: 96, size: 64, elements: !651)
!651 = !{!652, !653}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !650, file: !649, line: 98, baseType: !6, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !650, file: !649, line: 99, baseType: !6, size: 32, offset: 32)
!654 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !644, file: !12, line: 95, type: !647)
!655 = !DILocation(line: 95, column: 40, scope: !644)
!656 = !DILocation(line: 97, column: 26, scope: !644)
!657 = !DILocation(line: 97, column: 47, scope: !644)
!658 = !DILocation(line: 97, column: 55, scope: !644)
!659 = !DILocation(line: 97, column: 76, scope: !644)
!660 = !DILocation(line: 97, column: 5, scope: !644)
!661 = !DILocation(line: 98, column: 1, scope: !644)
!662 = distinct !DISubprogram(name: "printBytesLine", scope: !12, file: !12, line: 100, type: !663, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !665, !74}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!666 = !DILocalVariable(name: "bytes", arg: 1, scope: !662, file: !12, line: 100, type: !665)
!667 = !DILocation(line: 100, column: 38, scope: !662)
!668 = !DILocalVariable(name: "numBytes", arg: 2, scope: !662, file: !12, line: 100, type: !74)
!669 = !DILocation(line: 100, column: 52, scope: !662)
!670 = !DILocalVariable(name: "i", scope: !662, file: !12, line: 102, type: !74)
!671 = !DILocation(line: 102, column: 12, scope: !662)
!672 = !DILocation(line: 103, column: 12, scope: !673)
!673 = distinct !DILexicalBlock(scope: !662, file: !12, line: 103, column: 5)
!674 = !DILocation(line: 103, column: 10, scope: !673)
!675 = !DILocation(line: 103, column: 17, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !12, line: 103, column: 5)
!677 = !DILocation(line: 103, column: 21, scope: !676)
!678 = !DILocation(line: 103, column: 19, scope: !676)
!679 = !DILocation(line: 103, column: 5, scope: !673)
!680 = !DILocation(line: 105, column: 24, scope: !681)
!681 = distinct !DILexicalBlock(scope: !676, file: !12, line: 104, column: 5)
!682 = !DILocation(line: 105, column: 30, scope: !681)
!683 = !DILocation(line: 105, column: 9, scope: !681)
!684 = !DILocation(line: 106, column: 5, scope: !681)
!685 = !DILocation(line: 103, column: 31, scope: !676)
!686 = !DILocation(line: 103, column: 5, scope: !676)
!687 = distinct !{!687, !679, !688, !158}
!688 = !DILocation(line: 106, column: 5, scope: !673)
!689 = !DILocation(line: 107, column: 5, scope: !662)
!690 = !DILocation(line: 108, column: 1, scope: !662)
!691 = distinct !DISubprogram(name: "decodeHexChars", scope: !12, file: !12, line: 113, type: !692, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!692 = !DISubroutineType(types: !693)
!693 = !{!74, !665, !74, !49}
!694 = !DILocalVariable(name: "bytes", arg: 1, scope: !691, file: !12, line: 113, type: !665)
!695 = !DILocation(line: 113, column: 39, scope: !691)
!696 = !DILocalVariable(name: "numBytes", arg: 2, scope: !691, file: !12, line: 113, type: !74)
!697 = !DILocation(line: 113, column: 53, scope: !691)
!698 = !DILocalVariable(name: "hex", arg: 3, scope: !691, file: !12, line: 113, type: !49)
!699 = !DILocation(line: 113, column: 71, scope: !691)
!700 = !DILocalVariable(name: "numWritten", scope: !691, file: !12, line: 115, type: !74)
!701 = !DILocation(line: 115, column: 12, scope: !691)
!702 = !DILocation(line: 121, column: 5, scope: !691)
!703 = !DILocation(line: 121, column: 12, scope: !691)
!704 = !DILocation(line: 121, column: 25, scope: !691)
!705 = !DILocation(line: 121, column: 23, scope: !691)
!706 = !DILocation(line: 121, column: 34, scope: !691)
!707 = !DILocation(line: 121, column: 37, scope: !691)
!708 = !DILocation(line: 121, column: 67, scope: !691)
!709 = !DILocation(line: 121, column: 70, scope: !691)
!710 = !DILocation(line: 0, scope: !691)
!711 = !DILocalVariable(name: "byte", scope: !712, file: !12, line: 123, type: !6)
!712 = distinct !DILexicalBlock(scope: !691, file: !12, line: 122, column: 5)
!713 = !DILocation(line: 123, column: 13, scope: !712)
!714 = !DILocation(line: 124, column: 17, scope: !712)
!715 = !DILocation(line: 124, column: 25, scope: !712)
!716 = !DILocation(line: 124, column: 23, scope: !712)
!717 = !DILocation(line: 124, column: 9, scope: !712)
!718 = !DILocation(line: 125, column: 45, scope: !712)
!719 = !DILocation(line: 125, column: 29, scope: !712)
!720 = !DILocation(line: 125, column: 9, scope: !712)
!721 = !DILocation(line: 125, column: 15, scope: !712)
!722 = !DILocation(line: 125, column: 27, scope: !712)
!723 = !DILocation(line: 126, column: 9, scope: !712)
!724 = distinct !{!724, !702, !725, !158}
!725 = !DILocation(line: 127, column: 5, scope: !691)
!726 = !DILocation(line: 129, column: 12, scope: !691)
!727 = !DILocation(line: 129, column: 5, scope: !691)
!728 = distinct !DISubprogram(name: "decodeHexWChars", scope: !12, file: !12, line: 135, type: !729, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!729 = !DISubroutineType(types: !730)
!730 = !{!74, !665, !74, !525}
!731 = !DILocalVariable(name: "bytes", arg: 1, scope: !728, file: !12, line: 135, type: !665)
!732 = !DILocation(line: 135, column: 41, scope: !728)
!733 = !DILocalVariable(name: "numBytes", arg: 2, scope: !728, file: !12, line: 135, type: !74)
!734 = !DILocation(line: 135, column: 55, scope: !728)
!735 = !DILocalVariable(name: "hex", arg: 3, scope: !728, file: !12, line: 135, type: !525)
!736 = !DILocation(line: 135, column: 76, scope: !728)
!737 = !DILocalVariable(name: "numWritten", scope: !728, file: !12, line: 137, type: !74)
!738 = !DILocation(line: 137, column: 12, scope: !728)
!739 = !DILocation(line: 143, column: 5, scope: !728)
!740 = !DILocation(line: 143, column: 12, scope: !728)
!741 = !DILocation(line: 143, column: 25, scope: !728)
!742 = !DILocation(line: 143, column: 23, scope: !728)
!743 = !DILocation(line: 143, column: 34, scope: !728)
!744 = !DILocation(line: 143, column: 47, scope: !728)
!745 = !DILocation(line: 143, column: 55, scope: !728)
!746 = !DILocation(line: 143, column: 53, scope: !728)
!747 = !DILocation(line: 143, column: 37, scope: !728)
!748 = !DILocation(line: 143, column: 68, scope: !728)
!749 = !DILocation(line: 143, column: 81, scope: !728)
!750 = !DILocation(line: 143, column: 89, scope: !728)
!751 = !DILocation(line: 143, column: 87, scope: !728)
!752 = !DILocation(line: 143, column: 100, scope: !728)
!753 = !DILocation(line: 143, column: 71, scope: !728)
!754 = !DILocation(line: 0, scope: !728)
!755 = !DILocalVariable(name: "byte", scope: !756, file: !12, line: 145, type: !6)
!756 = distinct !DILexicalBlock(scope: !728, file: !12, line: 144, column: 5)
!757 = !DILocation(line: 145, column: 13, scope: !756)
!758 = !DILocation(line: 146, column: 18, scope: !756)
!759 = !DILocation(line: 146, column: 26, scope: !756)
!760 = !DILocation(line: 146, column: 24, scope: !756)
!761 = !DILocation(line: 146, column: 9, scope: !756)
!762 = !DILocation(line: 147, column: 45, scope: !756)
!763 = !DILocation(line: 147, column: 29, scope: !756)
!764 = !DILocation(line: 147, column: 9, scope: !756)
!765 = !DILocation(line: 147, column: 15, scope: !756)
!766 = !DILocation(line: 147, column: 27, scope: !756)
!767 = !DILocation(line: 148, column: 9, scope: !756)
!768 = distinct !{!768, !739, !769, !158}
!769 = !DILocation(line: 149, column: 5, scope: !728)
!770 = !DILocation(line: 151, column: 12, scope: !728)
!771 = !DILocation(line: 151, column: 5, scope: !728)
!772 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !12, file: !12, line: 156, type: !773, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!773 = !DISubroutineType(types: !774)
!774 = !{!6}
!775 = !DILocation(line: 158, column: 5, scope: !772)
!776 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !12, file: !12, line: 161, type: !773, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!777 = !DILocation(line: 163, column: 5, scope: !776)
!778 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !12, file: !12, line: 166, type: !773, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!779 = !DILocation(line: 168, column: 13, scope: !778)
!780 = !DILocation(line: 168, column: 20, scope: !778)
!781 = !DILocation(line: 168, column: 5, scope: !778)
!782 = distinct !DISubprogram(name: "good1", scope: !12, file: !12, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!783 = !DILocation(line: 187, column: 16, scope: !782)
!784 = distinct !DISubprogram(name: "good2", scope: !12, file: !12, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!785 = !DILocation(line: 188, column: 16, scope: !784)
!786 = distinct !DISubprogram(name: "good3", scope: !12, file: !12, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!787 = !DILocation(line: 189, column: 16, scope: !786)
!788 = distinct !DISubprogram(name: "good4", scope: !12, file: !12, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!789 = !DILocation(line: 190, column: 16, scope: !788)
!790 = distinct !DISubprogram(name: "good5", scope: !12, file: !12, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!791 = !DILocation(line: 191, column: 16, scope: !790)
!792 = distinct !DISubprogram(name: "good6", scope: !12, file: !12, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!793 = !DILocation(line: 192, column: 16, scope: !792)
!794 = distinct !DISubprogram(name: "good7", scope: !12, file: !12, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!795 = !DILocation(line: 193, column: 16, scope: !794)
!796 = distinct !DISubprogram(name: "good8", scope: !12, file: !12, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!797 = !DILocation(line: 194, column: 16, scope: !796)
!798 = distinct !DISubprogram(name: "good9", scope: !12, file: !12, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!799 = !DILocation(line: 195, column: 16, scope: !798)
!800 = distinct !DISubprogram(name: "bad1", scope: !12, file: !12, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!801 = !DILocation(line: 198, column: 15, scope: !800)
!802 = distinct !DISubprogram(name: "bad2", scope: !12, file: !12, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!803 = !DILocation(line: 199, column: 15, scope: !802)
!804 = distinct !DISubprogram(name: "bad3", scope: !12, file: !12, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!805 = !DILocation(line: 200, column: 15, scope: !804)
!806 = distinct !DISubprogram(name: "bad4", scope: !12, file: !12, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!807 = !DILocation(line: 201, column: 15, scope: !806)
!808 = distinct !DISubprogram(name: "bad5", scope: !12, file: !12, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!809 = !DILocation(line: 202, column: 15, scope: !808)
!810 = distinct !DISubprogram(name: "bad6", scope: !12, file: !12, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!811 = !DILocation(line: 203, column: 15, scope: !810)
!812 = distinct !DISubprogram(name: "bad7", scope: !12, file: !12, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!813 = !DILocation(line: 204, column: 15, scope: !812)
!814 = distinct !DISubprogram(name: "bad8", scope: !12, file: !12, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!815 = !DILocation(line: 205, column: 15, scope: !814)
!816 = distinct !DISubprogram(name: "bad9", scope: !12, file: !12, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!817 = !DILocation(line: 206, column: 15, scope: !816)
