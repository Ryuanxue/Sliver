; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@STATIC_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@STATIC_CONST_FALSE = dso_local global i32 0, align 4, !dbg !9
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !11
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !36
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !38
@globalTrue = dso_local global i32 1, align 4, !dbg !40
@globalFalse = dso_local global i32 0, align 4, !dbg !42
@globalFive = dso_local global i32 5, align 4, !dbg !44
@globalArgc = dso_local global i32 0, align 4, !dbg !46
@globalArgv = dso_local global i8** null, align 8, !dbg !48
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_04_bad() #0 !dbg !57 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !62, metadata !DIExpression()), !dbg !66
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !66
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !66
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !67
  store i8* %arraydecay, i8** %data, align 8, !dbg !68
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !69
  %tobool = icmp ne i32 %1, 0, !dbg !69
  br i1 %tobool, label %if.then, label %if.end20, !dbg !71

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !72, metadata !DIExpression()), !dbg !78
  %2 = load i8*, i8** %data, align 8, !dbg !79
  %call = call i64 @strlen(i8* %2) #7, !dbg !80
  store i64 %call, i64* %dataLen, align 8, !dbg !78
  %3 = load i64, i64* %dataLen, align 8, !dbg !81
  %sub = sub i64 100, %3, !dbg !83
  %cmp = icmp ugt i64 %sub, 1, !dbg !84
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !85

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !86
  %5 = load i64, i64* %dataLen, align 8, !dbg !89
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !90
  %6 = load i64, i64* %dataLen, align 8, !dbg !91
  %sub2 = sub i64 100, %6, !dbg !92
  %conv = trunc i64 %sub2 to i32, !dbg !93
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !94
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !95
  %cmp4 = icmp ne i8* %call3, null, !dbg !96
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !97

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !98
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !100
  store i64 %call7, i64* %dataLen, align 8, !dbg !101
  %9 = load i64, i64* %dataLen, align 8, !dbg !102
  %cmp8 = icmp ugt i64 %9, 0, !dbg !104
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !105

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !106
  %11 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub10 = sub i64 %11, 1, !dbg !108
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !106
  %12 = load i8, i8* %arrayidx, align 1, !dbg !106
  %conv11 = sext i8 %12 to i32, !dbg !106
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !109
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !110

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !111
  %14 = load i64, i64* %dataLen, align 8, !dbg !113
  %sub15 = sub i64 %14, 1, !dbg !114
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !111
  store i8 0, i8* %arrayidx16, align 1, !dbg !115
  br label %if.end, !dbg !116

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !117

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !118
  %15 = load i8*, i8** %data, align 8, !dbg !120
  %16 = load i64, i64* %dataLen, align 8, !dbg !121
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !120
  store i8 0, i8* %arrayidx17, align 1, !dbg !122
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !123

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !124

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !125
  %tobool21 = icmp ne i32 %17, 0, !dbg !125
  br i1 %tobool21, label %if.then22, label %if.end31, !dbg !127

if.then22:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !128, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %n, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !134, metadata !DIExpression()), !dbg !135
  %18 = load i8*, i8** %data, align 8, !dbg !136
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !138
  %cmp24 = icmp eq i32 %call23, 1, !dbg !139
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !140

if.then26:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !141
  store i32 0, i32* %i, align 4, !dbg !143
  br label %for.cond, !dbg !145

for.cond:                                         ; preds = %for.inc, %if.then26
  %19 = load i32, i32* %i, align 4, !dbg !146
  %20 = load i32, i32* %n, align 4, !dbg !148
  %cmp27 = icmp slt i32 %19, %20, !dbg !149
  br i1 %cmp27, label %for.body, label %for.end, !dbg !150

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !151
  %inc = add nsw i32 %21, 1, !dbg !151
  store i32 %inc, i32* %intVariable, align 4, !dbg !151
  br label %for.inc, !dbg !153

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !154
  %inc29 = add nsw i32 %22, 1, !dbg !154
  store i32 %inc29, i32* %i, align 4, !dbg !154
  br label %for.cond, !dbg !155, !llvm.loop !156

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !159
  call void @printIntLine(i32 %23), !dbg !160
  br label %if.end30, !dbg !161

if.end30:                                         ; preds = %for.end, %if.then22
  br label %if.end31, !dbg !162

if.end31:                                         ; preds = %if.end30, %if.end20
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
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !171
  %tobool = icmp ne i32 %1, 0, !dbg !171
  br i1 %tobool, label %if.then, label %if.end20, !dbg !173

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !174, metadata !DIExpression()), !dbg !177
  %2 = load i8*, i8** %data, align 8, !dbg !178
  %call = call i64 @strlen(i8* %2) #7, !dbg !179
  store i64 %call, i64* %dataLen, align 8, !dbg !177
  %3 = load i64, i64* %dataLen, align 8, !dbg !180
  %sub = sub i64 100, %3, !dbg !182
  %cmp = icmp ugt i64 %sub, 1, !dbg !183
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !184

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !185
  %5 = load i64, i64* %dataLen, align 8, !dbg !188
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !189
  %6 = load i64, i64* %dataLen, align 8, !dbg !190
  %sub2 = sub i64 100, %6, !dbg !191
  %conv = trunc i64 %sub2 to i32, !dbg !192
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !193
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !194
  %cmp4 = icmp ne i8* %call3, null, !dbg !195
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !196

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !197
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !199
  store i64 %call7, i64* %dataLen, align 8, !dbg !200
  %9 = load i64, i64* %dataLen, align 8, !dbg !201
  %cmp8 = icmp ugt i64 %9, 0, !dbg !203
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !204

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !205
  %11 = load i64, i64* %dataLen, align 8, !dbg !206
  %sub10 = sub i64 %11, 1, !dbg !207
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !205
  %12 = load i8, i8* %arrayidx, align 1, !dbg !205
  %conv11 = sext i8 %12 to i32, !dbg !205
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !208
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !209

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !210
  %14 = load i64, i64* %dataLen, align 8, !dbg !212
  %sub15 = sub i64 %14, 1, !dbg !213
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !210
  store i8 0, i8* %arrayidx16, align 1, !dbg !214
  br label %if.end, !dbg !215

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !216

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !217
  %15 = load i8*, i8** %data, align 8, !dbg !219
  %16 = load i64, i64* %dataLen, align 8, !dbg !220
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !219
  store i8 0, i8* %arrayidx17, align 1, !dbg !221
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !222

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !223

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !224
  %tobool21 = icmp ne i32 %17, 0, !dbg !224
  br i1 %tobool21, label %if.then22, label %if.else23, !dbg !226

if.then22:                                        ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !227
  br label %if.end36, !dbg !229

if.else23:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !230, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata i32* %n, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !236, metadata !DIExpression()), !dbg !237
  %18 = load i8*, i8** %data, align 8, !dbg !238
  %call24 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !240
  %cmp25 = icmp eq i32 %call24, 1, !dbg !241
  br i1 %cmp25, label %if.then27, label %if.end35, !dbg !242

if.then27:                                        ; preds = %if.else23
  %19 = load i32, i32* %n, align 4, !dbg !243
  %cmp28 = icmp slt i32 %19, 10000, !dbg !246
  br i1 %cmp28, label %if.then30, label %if.end34, !dbg !247

if.then30:                                        ; preds = %if.then27
  store i32 0, i32* %intVariable, align 4, !dbg !248
  store i32 0, i32* %i, align 4, !dbg !250
  br label %for.cond, !dbg !252

for.cond:                                         ; preds = %for.inc, %if.then30
  %20 = load i32, i32* %i, align 4, !dbg !253
  %21 = load i32, i32* %n, align 4, !dbg !255
  %cmp31 = icmp slt i32 %20, %21, !dbg !256
  br i1 %cmp31, label %for.body, label %for.end, !dbg !257

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !258
  %inc = add nsw i32 %22, 1, !dbg !258
  store i32 %inc, i32* %intVariable, align 4, !dbg !258
  br label %for.inc, !dbg !260

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !261
  %inc33 = add nsw i32 %23, 1, !dbg !261
  store i32 %inc33, i32* %i, align 4, !dbg !261
  br label %for.cond, !dbg !262, !llvm.loop !263

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !265
  call void @printIntLine(i32 %24), !dbg !266
  br label %if.end34, !dbg !267

if.end34:                                         ; preds = %for.end, %if.then27
  br label %if.end35, !dbg !268

if.end35:                                         ; preds = %if.end34, %if.else23
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then22
  ret void, !dbg !269
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !270 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !274
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !274
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !275
  store i8* %arraydecay, i8** %data, align 8, !dbg !276
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !277
  %tobool = icmp ne i32 %1, 0, !dbg !277
  br i1 %tobool, label %if.then, label %if.end20, !dbg !279

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !280, metadata !DIExpression()), !dbg !283
  %2 = load i8*, i8** %data, align 8, !dbg !284
  %call = call i64 @strlen(i8* %2) #7, !dbg !285
  store i64 %call, i64* %dataLen, align 8, !dbg !283
  %3 = load i64, i64* %dataLen, align 8, !dbg !286
  %sub = sub i64 100, %3, !dbg !288
  %cmp = icmp ugt i64 %sub, 1, !dbg !289
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !290

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !291
  %5 = load i64, i64* %dataLen, align 8, !dbg !294
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !295
  %6 = load i64, i64* %dataLen, align 8, !dbg !296
  %sub2 = sub i64 100, %6, !dbg !297
  %conv = trunc i64 %sub2 to i32, !dbg !298
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !299
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !300
  %cmp4 = icmp ne i8* %call3, null, !dbg !301
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !302

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !303
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !305
  store i64 %call7, i64* %dataLen, align 8, !dbg !306
  %9 = load i64, i64* %dataLen, align 8, !dbg !307
  %cmp8 = icmp ugt i64 %9, 0, !dbg !309
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !310

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !311
  %11 = load i64, i64* %dataLen, align 8, !dbg !312
  %sub10 = sub i64 %11, 1, !dbg !313
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !311
  %12 = load i8, i8* %arrayidx, align 1, !dbg !311
  %conv11 = sext i8 %12 to i32, !dbg !311
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !314
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !315

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !316
  %14 = load i64, i64* %dataLen, align 8, !dbg !318
  %sub15 = sub i64 %14, 1, !dbg !319
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !316
  store i8 0, i8* %arrayidx16, align 1, !dbg !320
  br label %if.end, !dbg !321

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !322

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !323
  %15 = load i8*, i8** %data, align 8, !dbg !325
  %16 = load i64, i64* %dataLen, align 8, !dbg !326
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !325
  store i8 0, i8* %arrayidx17, align 1, !dbg !327
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !328

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !329

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !330
  %tobool21 = icmp ne i32 %17, 0, !dbg !330
  br i1 %tobool21, label %if.then22, label %if.end35, !dbg !332

if.then22:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !333, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata i32* %n, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !339, metadata !DIExpression()), !dbg !340
  %18 = load i8*, i8** %data, align 8, !dbg !341
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !343
  %cmp24 = icmp eq i32 %call23, 1, !dbg !344
  br i1 %cmp24, label %if.then26, label %if.end34, !dbg !345

if.then26:                                        ; preds = %if.then22
  %19 = load i32, i32* %n, align 4, !dbg !346
  %cmp27 = icmp slt i32 %19, 10000, !dbg !349
  br i1 %cmp27, label %if.then29, label %if.end33, !dbg !350

if.then29:                                        ; preds = %if.then26
  store i32 0, i32* %intVariable, align 4, !dbg !351
  store i32 0, i32* %i, align 4, !dbg !353
  br label %for.cond, !dbg !355

for.cond:                                         ; preds = %for.inc, %if.then29
  %20 = load i32, i32* %i, align 4, !dbg !356
  %21 = load i32, i32* %n, align 4, !dbg !358
  %cmp30 = icmp slt i32 %20, %21, !dbg !359
  br i1 %cmp30, label %for.body, label %for.end, !dbg !360

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !361
  %inc = add nsw i32 %22, 1, !dbg !361
  store i32 %inc, i32* %intVariable, align 4, !dbg !361
  br label %for.inc, !dbg !363

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !364
  %inc32 = add nsw i32 %23, 1, !dbg !364
  store i32 %inc32, i32* %i, align 4, !dbg !364
  br label %for.cond, !dbg !365, !llvm.loop !366

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !368
  call void @printIntLine(i32 %24), !dbg !369
  br label %if.end33, !dbg !370

if.end33:                                         ; preds = %for.end, %if.then26
  br label %if.end34, !dbg !371

if.end34:                                         ; preds = %if.end33, %if.then22
  br label %if.end35, !dbg !372

if.end35:                                         ; preds = %if.end34, %if.end20
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !374 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !378
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !378
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !379
  store i8* %arraydecay, i8** %data, align 8, !dbg !380
  %1 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !381
  %tobool = icmp ne i32 %1, 0, !dbg !381
  br i1 %tobool, label %if.then, label %if.else, !dbg !383

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !384
  br label %if.end, !dbg !386

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !387
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !389
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !390
  %tobool1 = icmp ne i32 %3, 0, !dbg !390
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !392

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !393, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata i32* %n, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !399, metadata !DIExpression()), !dbg !400
  %4 = load i8*, i8** %data, align 8, !dbg !401
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !403
  %cmp = icmp eq i32 %call3, 1, !dbg !404
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !405

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !406
  store i32 0, i32* %i, align 4, !dbg !408
  br label %for.cond, !dbg !410

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !411
  %6 = load i32, i32* %n, align 4, !dbg !413
  %cmp5 = icmp slt i32 %5, %6, !dbg !414
  br i1 %cmp5, label %for.body, label %for.end, !dbg !415

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !416
  %inc = add nsw i32 %7, 1, !dbg !416
  store i32 %inc, i32* %intVariable, align 4, !dbg !416
  br label %for.inc, !dbg !418

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !419
  %inc6 = add nsw i32 %8, 1, !dbg !419
  store i32 %inc6, i32* %i, align 4, !dbg !419
  br label %for.cond, !dbg !420, !llvm.loop !421

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !423
  call void @printIntLine(i32 %9), !dbg !424
  br label %if.end7, !dbg !425

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !426

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !427
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !428 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !429, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !431, metadata !DIExpression()), !dbg !432
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !432
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !432
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !433
  store i8* %arraydecay, i8** %data, align 8, !dbg !434
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !435
  %tobool = icmp ne i32 %1, 0, !dbg !435
  br i1 %tobool, label %if.then, label %if.end, !dbg !437

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !438
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !440
  br label %if.end, !dbg !441

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !442
  %tobool1 = icmp ne i32 %3, 0, !dbg !442
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !444

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !445, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata i32* %n, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !451, metadata !DIExpression()), !dbg !452
  %4 = load i8*, i8** %data, align 8, !dbg !453
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !455
  %cmp = icmp eq i32 %call3, 1, !dbg !456
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !457

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !458
  store i32 0, i32* %i, align 4, !dbg !460
  br label %for.cond, !dbg !462

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !463
  %6 = load i32, i32* %n, align 4, !dbg !465
  %cmp5 = icmp slt i32 %5, %6, !dbg !466
  br i1 %cmp5, label %for.body, label %for.end, !dbg !467

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !468
  %inc = add nsw i32 %7, 1, !dbg !468
  store i32 %inc, i32* %intVariable, align 4, !dbg !468
  br label %for.inc, !dbg !470

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !471
  %inc6 = add nsw i32 %8, 1, !dbg !471
  store i32 %inc6, i32* %i, align 4, !dbg !471
  br label %for.cond, !dbg !472, !llvm.loop !473

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !475
  call void @printIntLine(i32 %9), !dbg !476
  br label %if.end7, !dbg !477

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !478

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_04_good() #0 !dbg !480 {
entry:
  call void @goodB2G1(), !dbg !481
  call void @goodB2G2(), !dbg !482
  call void @goodG2B1(), !dbg !483
  call void @goodG2B2(), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !486 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !489, metadata !DIExpression()), !dbg !490
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !491
  %0 = load i8*, i8** %line.addr, align 8, !dbg !492
  %cmp = icmp ne i8* %0, null, !dbg !494
  br i1 %cmp, label %if.then, label %if.end, !dbg !495

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !496
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !498
  br label %if.end, !dbg !499

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.6, i64 0, i64 0)), !dbg !500
  ret void, !dbg !501
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !502 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !503, metadata !DIExpression()), !dbg !504
  %0 = load i8*, i8** %line.addr, align 8, !dbg !505
  %cmp = icmp ne i8* %0, null, !dbg !507
  br i1 %cmp, label %if.then, label %if.end, !dbg !508

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !509
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* %1), !dbg !511
  br label %if.end, !dbg !512

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !514 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !519, metadata !DIExpression()), !dbg !520
  %0 = load i32*, i32** %line.addr, align 8, !dbg !521
  %cmp = icmp ne i32* %0, null, !dbg !523
  br i1 %cmp, label %if.then, label %if.end, !dbg !524

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !525
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.7, i64 0, i64 0), i32* %1), !dbg !527
  br label %if.end, !dbg !528

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !529
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !530 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !533, metadata !DIExpression()), !dbg !534
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !535
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !536
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !538 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !542, metadata !DIExpression()), !dbg !543
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !544
  %conv = sext i16 %0 to i32, !dbg !544
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !545
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !547 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !551, metadata !DIExpression()), !dbg !552
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !553
  %conv = fpext float %0 to double, !dbg !553
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !554
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !556 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !560, metadata !DIExpression()), !dbg !561
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !562
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !563
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !565 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !572, metadata !DIExpression()), !dbg !573
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !574
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !575
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !577 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !580, metadata !DIExpression()), !dbg !581
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !582
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !583
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !585 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !588, metadata !DIExpression()), !dbg !589
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !590
  %conv = sext i8 %0 to i32, !dbg !590
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !591
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !593 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !596, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !598, metadata !DIExpression()), !dbg !602
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !603
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !604
  store i32 %0, i32* %arrayidx, align 4, !dbg !605
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !606
  store i32 0, i32* %arrayidx1, align 4, !dbg !607
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !608
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !609
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !611 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !614, metadata !DIExpression()), !dbg !615
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !616
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !617
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !619 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !622, metadata !DIExpression()), !dbg !623
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !624
  %conv = zext i8 %0 to i32, !dbg !624
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !625
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !627 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !631, metadata !DIExpression()), !dbg !632
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !633
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !634
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !636 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !646, metadata !DIExpression()), !dbg !647
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !648
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !649
  %1 = load i32, i32* %intOne, align 4, !dbg !649
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !650
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !651
  %3 = load i32, i32* %intTwo, align 4, !dbg !651
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !652
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !654 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !658, metadata !DIExpression()), !dbg !659
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !660, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.declare(metadata i64* %i, metadata !662, metadata !DIExpression()), !dbg !663
  store i64 0, i64* %i, align 8, !dbg !664
  br label %for.cond, !dbg !666

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !667
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !669
  %cmp = icmp ult i64 %0, %1, !dbg !670
  br i1 %cmp, label %for.body, label %for.end, !dbg !671

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !672
  %3 = load i64, i64* %i, align 8, !dbg !674
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !672
  %4 = load i8, i8* %arrayidx, align 1, !dbg !672
  %conv = zext i8 %4 to i32, !dbg !672
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !675
  br label %for.inc, !dbg !676

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !677
  %inc = add i64 %5, 1, !dbg !677
  store i64 %inc, i64* %i, align 8, !dbg !677
  br label %for.cond, !dbg !678, !llvm.loop !679

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !681
  ret void, !dbg !682
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !683 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !686, metadata !DIExpression()), !dbg !687
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !688, metadata !DIExpression()), !dbg !689
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !690, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !692, metadata !DIExpression()), !dbg !693
  store i64 0, i64* %numWritten, align 8, !dbg !693
  br label %while.cond, !dbg !694

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !695
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !696
  %cmp = icmp ult i64 %0, %1, !dbg !697
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !698

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !699
  %2 = load i16*, i16** %call, align 8, !dbg !699
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !699
  %4 = load i64, i64* %numWritten, align 8, !dbg !699
  %mul = mul i64 2, %4, !dbg !699
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !699
  %5 = load i8, i8* %arrayidx, align 1, !dbg !699
  %conv = sext i8 %5 to i32, !dbg !699
  %idxprom = sext i32 %conv to i64, !dbg !699
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !699
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !699
  %conv2 = zext i16 %6 to i32, !dbg !699
  %and = and i32 %conv2, 4096, !dbg !699
  %tobool = icmp ne i32 %and, 0, !dbg !699
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !700

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !701
  %7 = load i16*, i16** %call3, align 8, !dbg !701
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !701
  %9 = load i64, i64* %numWritten, align 8, !dbg !701
  %mul4 = mul i64 2, %9, !dbg !701
  %add = add i64 %mul4, 1, !dbg !701
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !701
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !701
  %conv6 = sext i8 %10 to i32, !dbg !701
  %idxprom7 = sext i32 %conv6 to i64, !dbg !701
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !701
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !701
  %conv9 = zext i16 %11 to i32, !dbg !701
  %and10 = and i32 %conv9, 4096, !dbg !701
  %tobool11 = icmp ne i32 %and10, 0, !dbg !700
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !702
  br i1 %12, label %while.body, label %while.end, !dbg !694

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !703, metadata !DIExpression()), !dbg !705
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !706
  %14 = load i64, i64* %numWritten, align 8, !dbg !707
  %mul12 = mul i64 2, %14, !dbg !708
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !706
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !709
  %15 = load i32, i32* %byte, align 4, !dbg !710
  %conv15 = trunc i32 %15 to i8, !dbg !711
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !712
  %17 = load i64, i64* %numWritten, align 8, !dbg !713
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !712
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !714
  %18 = load i64, i64* %numWritten, align 8, !dbg !715
  %inc = add i64 %18, 1, !dbg !715
  store i64 %inc, i64* %numWritten, align 8, !dbg !715
  br label %while.cond, !dbg !694, !llvm.loop !716

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !718
  ret i64 %19, !dbg !719
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !720 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !723, metadata !DIExpression()), !dbg !724
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !725, metadata !DIExpression()), !dbg !726
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !727, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !729, metadata !DIExpression()), !dbg !730
  store i64 0, i64* %numWritten, align 8, !dbg !730
  br label %while.cond, !dbg !731

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !732
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !733
  %cmp = icmp ult i64 %0, %1, !dbg !734
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !735

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !736
  %3 = load i64, i64* %numWritten, align 8, !dbg !737
  %mul = mul i64 2, %3, !dbg !738
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !736
  %4 = load i32, i32* %arrayidx, align 4, !dbg !736
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !739
  %tobool = icmp ne i32 %call, 0, !dbg !739
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !740

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !741
  %6 = load i64, i64* %numWritten, align 8, !dbg !742
  %mul1 = mul i64 2, %6, !dbg !743
  %add = add i64 %mul1, 1, !dbg !744
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !741
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !741
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !745
  %tobool4 = icmp ne i32 %call3, 0, !dbg !740
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !746
  br i1 %8, label %while.body, label %while.end, !dbg !731

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !747, metadata !DIExpression()), !dbg !749
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !750
  %10 = load i64, i64* %numWritten, align 8, !dbg !751
  %mul5 = mul i64 2, %10, !dbg !752
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !750
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !753
  %11 = load i32, i32* %byte, align 4, !dbg !754
  %conv = trunc i32 %11 to i8, !dbg !755
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !756
  %13 = load i64, i64* %numWritten, align 8, !dbg !757
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !756
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !758
  %14 = load i64, i64* %numWritten, align 8, !dbg !759
  %inc = add i64 %14, 1, !dbg !759
  store i64 %inc, i64* %numWritten, align 8, !dbg !759
  br label %while.cond, !dbg !731, !llvm.loop !760

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !762
  ret i64 %15, !dbg !763
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !764 {
entry:
  ret i32 1, !dbg !767
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !768 {
entry:
  ret i32 0, !dbg !769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !770 {
entry:
  %call = call i32 @rand() #8, !dbg !771
  %rem = srem i32 %call, 2, !dbg !772
  ret i32 %rem, !dbg !773
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !774 {
entry:
  ret void, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !776 {
entry:
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !778 {
entry:
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !780 {
entry:
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !782 {
entry:
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !784 {
entry:
  ret void, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !786 {
entry:
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !788 {
entry:
  ret void, !dbg !789
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !790 {
entry:
  ret void, !dbg !791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !792 {
entry:
  ret void, !dbg !793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !794 {
entry:
  ret void, !dbg !795
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !796 {
entry:
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !798 {
entry:
  ret void, !dbg !799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !800 {
entry:
  ret void, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !802 {
entry:
  ret void, !dbg !803
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !804 {
entry:
  ret void, !dbg !805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !806 {
entry:
  ret void, !dbg !807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !808 {
entry:
  ret void, !dbg !809
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

!llvm.dbg.cu = !{!2, !13}
!llvm.ident = !{!53, !53}
!llvm.module.flags = !{!54, !55, !56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_TRUE", scope: !2, file: !3, line: 30, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_04.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_981/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{!0, !9}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "STATIC_CONST_FALSE", scope: !2, file: !3, line: 31, type: !6, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !13, file: !14, line: 174, type: !6, isLocal: false, isDefinition: true)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !32, globals: !35, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_981/source_code")
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 46, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!20 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!32 = !{!7, !6, !33, !34}
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!11, !36, !38, !40, !42, !44, !46, !48}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !13, file: !14, line: 175, type: !6, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !13, file: !14, line: 176, type: !6, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "globalTrue", scope: !13, file: !14, line: 181, type: !6, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "globalFalse", scope: !13, file: !14, line: 182, type: !6, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalFive", scope: !13, file: !14, line: 183, type: !6, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalArgc", scope: !13, file: !14, line: 214, type: !6, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalArgv", scope: !13, file: !14, line: 215, type: !50, isLocal: false, isDefinition: true)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !{!"clang version 12.0.0"}
!54 = !{i32 7, !"Dwarf Version", i32 4}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_04_bad", scope: !3, file: !3, line: 35, type: !58, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!58 = !DISubroutineType(types: !59)
!59 = !{null}
!60 = !DILocalVariable(name: "data", scope: !57, file: !3, line: 37, type: !51)
!61 = !DILocation(line: 37, column: 12, scope: !57)
!62 = !DILocalVariable(name: "dataBuffer", scope: !57, file: !3, line: 38, type: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 800, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 100)
!66 = !DILocation(line: 38, column: 10, scope: !57)
!67 = !DILocation(line: 39, column: 12, scope: !57)
!68 = !DILocation(line: 39, column: 10, scope: !57)
!69 = !DILocation(line: 40, column: 8, scope: !70)
!70 = distinct !DILexicalBlock(scope: !57, file: !3, line: 40, column: 8)
!71 = !DILocation(line: 40, column: 8, scope: !57)
!72 = !DILocalVariable(name: "dataLen", scope: !73, file: !3, line: 44, type: !75)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 42, column: 9)
!74 = distinct !DILexicalBlock(scope: !70, file: !3, line: 41, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 44, column: 20, scope: !73)
!79 = !DILocation(line: 44, column: 37, scope: !73)
!80 = !DILocation(line: 44, column: 30, scope: !73)
!81 = !DILocation(line: 46, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !73, file: !3, line: 46, column: 17)
!83 = !DILocation(line: 46, column: 20, scope: !82)
!84 = !DILocation(line: 46, column: 29, scope: !82)
!85 = !DILocation(line: 46, column: 17, scope: !73)
!86 = !DILocation(line: 49, column: 27, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 49, column: 21)
!88 = distinct !DILexicalBlock(scope: !82, file: !3, line: 47, column: 13)
!89 = !DILocation(line: 49, column: 32, scope: !87)
!90 = !DILocation(line: 49, column: 31, scope: !87)
!91 = !DILocation(line: 49, column: 51, scope: !87)
!92 = !DILocation(line: 49, column: 50, scope: !87)
!93 = !DILocation(line: 49, column: 41, scope: !87)
!94 = !DILocation(line: 49, column: 61, scope: !87)
!95 = !DILocation(line: 49, column: 21, scope: !87)
!96 = !DILocation(line: 49, column: 68, scope: !87)
!97 = !DILocation(line: 49, column: 21, scope: !88)
!98 = !DILocation(line: 53, column: 38, scope: !99)
!99 = distinct !DILexicalBlock(scope: !87, file: !3, line: 50, column: 17)
!100 = !DILocation(line: 53, column: 31, scope: !99)
!101 = !DILocation(line: 53, column: 29, scope: !99)
!102 = !DILocation(line: 54, column: 25, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !3, line: 54, column: 25)
!104 = !DILocation(line: 54, column: 33, scope: !103)
!105 = !DILocation(line: 54, column: 37, scope: !103)
!106 = !DILocation(line: 54, column: 40, scope: !103)
!107 = !DILocation(line: 54, column: 45, scope: !103)
!108 = !DILocation(line: 54, column: 52, scope: !103)
!109 = !DILocation(line: 54, column: 56, scope: !103)
!110 = !DILocation(line: 54, column: 25, scope: !99)
!111 = !DILocation(line: 56, column: 25, scope: !112)
!112 = distinct !DILexicalBlock(scope: !103, file: !3, line: 55, column: 21)
!113 = !DILocation(line: 56, column: 30, scope: !112)
!114 = !DILocation(line: 56, column: 37, scope: !112)
!115 = !DILocation(line: 56, column: 41, scope: !112)
!116 = !DILocation(line: 57, column: 21, scope: !112)
!117 = !DILocation(line: 58, column: 17, scope: !99)
!118 = !DILocation(line: 61, column: 21, scope: !119)
!119 = distinct !DILexicalBlock(scope: !87, file: !3, line: 60, column: 17)
!120 = !DILocation(line: 63, column: 21, scope: !119)
!121 = !DILocation(line: 63, column: 26, scope: !119)
!122 = !DILocation(line: 63, column: 35, scope: !119)
!123 = !DILocation(line: 65, column: 13, scope: !88)
!124 = !DILocation(line: 67, column: 5, scope: !74)
!125 = !DILocation(line: 68, column: 8, scope: !126)
!126 = distinct !DILexicalBlock(scope: !57, file: !3, line: 68, column: 8)
!127 = !DILocation(line: 68, column: 8, scope: !57)
!128 = !DILocalVariable(name: "i", scope: !129, file: !3, line: 71, type: !6)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 70, column: 9)
!130 = distinct !DILexicalBlock(scope: !126, file: !3, line: 69, column: 5)
!131 = !DILocation(line: 71, column: 17, scope: !129)
!132 = !DILocalVariable(name: "n", scope: !129, file: !3, line: 71, type: !6)
!133 = !DILocation(line: 71, column: 20, scope: !129)
!134 = !DILocalVariable(name: "intVariable", scope: !129, file: !3, line: 71, type: !6)
!135 = !DILocation(line: 71, column: 23, scope: !129)
!136 = !DILocation(line: 72, column: 24, scope: !137)
!137 = distinct !DILexicalBlock(scope: !129, file: !3, line: 72, column: 17)
!138 = !DILocation(line: 72, column: 17, scope: !137)
!139 = !DILocation(line: 72, column: 40, scope: !137)
!140 = !DILocation(line: 72, column: 17, scope: !129)
!141 = !DILocation(line: 75, column: 29, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !3, line: 73, column: 13)
!143 = !DILocation(line: 76, column: 24, scope: !144)
!144 = distinct !DILexicalBlock(scope: !142, file: !3, line: 76, column: 17)
!145 = !DILocation(line: 76, column: 22, scope: !144)
!146 = !DILocation(line: 76, column: 29, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !3, line: 76, column: 17)
!148 = !DILocation(line: 76, column: 33, scope: !147)
!149 = !DILocation(line: 76, column: 31, scope: !147)
!150 = !DILocation(line: 76, column: 17, scope: !144)
!151 = !DILocation(line: 79, column: 32, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !3, line: 77, column: 17)
!153 = !DILocation(line: 80, column: 17, scope: !152)
!154 = !DILocation(line: 76, column: 37, scope: !147)
!155 = !DILocation(line: 76, column: 17, scope: !147)
!156 = distinct !{!156, !150, !157, !158}
!157 = !DILocation(line: 80, column: 17, scope: !144)
!158 = !{!"llvm.loop.mustprogress"}
!159 = !DILocation(line: 81, column: 30, scope: !142)
!160 = !DILocation(line: 81, column: 17, scope: !142)
!161 = !DILocation(line: 82, column: 13, scope: !142)
!162 = !DILocation(line: 84, column: 5, scope: !130)
!163 = !DILocation(line: 85, column: 1, scope: !57)
!164 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 92, type: !58, scopeLine: 93, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!165 = !DILocalVariable(name: "data", scope: !164, file: !3, line: 94, type: !51)
!166 = !DILocation(line: 94, column: 12, scope: !164)
!167 = !DILocalVariable(name: "dataBuffer", scope: !164, file: !3, line: 95, type: !63)
!168 = !DILocation(line: 95, column: 10, scope: !164)
!169 = !DILocation(line: 96, column: 12, scope: !164)
!170 = !DILocation(line: 96, column: 10, scope: !164)
!171 = !DILocation(line: 97, column: 8, scope: !172)
!172 = distinct !DILexicalBlock(scope: !164, file: !3, line: 97, column: 8)
!173 = !DILocation(line: 97, column: 8, scope: !164)
!174 = !DILocalVariable(name: "dataLen", scope: !175, file: !3, line: 101, type: !75)
!175 = distinct !DILexicalBlock(scope: !176, file: !3, line: 99, column: 9)
!176 = distinct !DILexicalBlock(scope: !172, file: !3, line: 98, column: 5)
!177 = !DILocation(line: 101, column: 20, scope: !175)
!178 = !DILocation(line: 101, column: 37, scope: !175)
!179 = !DILocation(line: 101, column: 30, scope: !175)
!180 = !DILocation(line: 103, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !175, file: !3, line: 103, column: 17)
!182 = !DILocation(line: 103, column: 20, scope: !181)
!183 = !DILocation(line: 103, column: 29, scope: !181)
!184 = !DILocation(line: 103, column: 17, scope: !175)
!185 = !DILocation(line: 106, column: 27, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 106, column: 21)
!187 = distinct !DILexicalBlock(scope: !181, file: !3, line: 104, column: 13)
!188 = !DILocation(line: 106, column: 32, scope: !186)
!189 = !DILocation(line: 106, column: 31, scope: !186)
!190 = !DILocation(line: 106, column: 51, scope: !186)
!191 = !DILocation(line: 106, column: 50, scope: !186)
!192 = !DILocation(line: 106, column: 41, scope: !186)
!193 = !DILocation(line: 106, column: 61, scope: !186)
!194 = !DILocation(line: 106, column: 21, scope: !186)
!195 = !DILocation(line: 106, column: 68, scope: !186)
!196 = !DILocation(line: 106, column: 21, scope: !187)
!197 = !DILocation(line: 110, column: 38, scope: !198)
!198 = distinct !DILexicalBlock(scope: !186, file: !3, line: 107, column: 17)
!199 = !DILocation(line: 110, column: 31, scope: !198)
!200 = !DILocation(line: 110, column: 29, scope: !198)
!201 = !DILocation(line: 111, column: 25, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !3, line: 111, column: 25)
!203 = !DILocation(line: 111, column: 33, scope: !202)
!204 = !DILocation(line: 111, column: 37, scope: !202)
!205 = !DILocation(line: 111, column: 40, scope: !202)
!206 = !DILocation(line: 111, column: 45, scope: !202)
!207 = !DILocation(line: 111, column: 52, scope: !202)
!208 = !DILocation(line: 111, column: 56, scope: !202)
!209 = !DILocation(line: 111, column: 25, scope: !198)
!210 = !DILocation(line: 113, column: 25, scope: !211)
!211 = distinct !DILexicalBlock(scope: !202, file: !3, line: 112, column: 21)
!212 = !DILocation(line: 113, column: 30, scope: !211)
!213 = !DILocation(line: 113, column: 37, scope: !211)
!214 = !DILocation(line: 113, column: 41, scope: !211)
!215 = !DILocation(line: 114, column: 21, scope: !211)
!216 = !DILocation(line: 115, column: 17, scope: !198)
!217 = !DILocation(line: 118, column: 21, scope: !218)
!218 = distinct !DILexicalBlock(scope: !186, file: !3, line: 117, column: 17)
!219 = !DILocation(line: 120, column: 21, scope: !218)
!220 = !DILocation(line: 120, column: 26, scope: !218)
!221 = !DILocation(line: 120, column: 35, scope: !218)
!222 = !DILocation(line: 122, column: 13, scope: !187)
!223 = !DILocation(line: 124, column: 5, scope: !176)
!224 = !DILocation(line: 125, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !164, file: !3, line: 125, column: 8)
!226 = !DILocation(line: 125, column: 8, scope: !164)
!227 = !DILocation(line: 128, column: 9, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !3, line: 126, column: 5)
!229 = !DILocation(line: 129, column: 5, scope: !228)
!230 = !DILocalVariable(name: "i", scope: !231, file: !3, line: 133, type: !6)
!231 = distinct !DILexicalBlock(scope: !232, file: !3, line: 132, column: 9)
!232 = distinct !DILexicalBlock(scope: !225, file: !3, line: 131, column: 5)
!233 = !DILocation(line: 133, column: 17, scope: !231)
!234 = !DILocalVariable(name: "n", scope: !231, file: !3, line: 133, type: !6)
!235 = !DILocation(line: 133, column: 20, scope: !231)
!236 = !DILocalVariable(name: "intVariable", scope: !231, file: !3, line: 133, type: !6)
!237 = !DILocation(line: 133, column: 23, scope: !231)
!238 = !DILocation(line: 134, column: 24, scope: !239)
!239 = distinct !DILexicalBlock(scope: !231, file: !3, line: 134, column: 17)
!240 = !DILocation(line: 134, column: 17, scope: !239)
!241 = !DILocation(line: 134, column: 40, scope: !239)
!242 = !DILocation(line: 134, column: 17, scope: !231)
!243 = !DILocation(line: 137, column: 21, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 137, column: 21)
!245 = distinct !DILexicalBlock(scope: !239, file: !3, line: 135, column: 13)
!246 = !DILocation(line: 137, column: 23, scope: !244)
!247 = !DILocation(line: 137, column: 21, scope: !245)
!248 = !DILocation(line: 139, column: 33, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !3, line: 138, column: 17)
!250 = !DILocation(line: 140, column: 28, scope: !251)
!251 = distinct !DILexicalBlock(scope: !249, file: !3, line: 140, column: 21)
!252 = !DILocation(line: 140, column: 26, scope: !251)
!253 = !DILocation(line: 140, column: 33, scope: !254)
!254 = distinct !DILexicalBlock(scope: !251, file: !3, line: 140, column: 21)
!255 = !DILocation(line: 140, column: 37, scope: !254)
!256 = !DILocation(line: 140, column: 35, scope: !254)
!257 = !DILocation(line: 140, column: 21, scope: !251)
!258 = !DILocation(line: 143, column: 36, scope: !259)
!259 = distinct !DILexicalBlock(scope: !254, file: !3, line: 141, column: 21)
!260 = !DILocation(line: 144, column: 21, scope: !259)
!261 = !DILocation(line: 140, column: 41, scope: !254)
!262 = !DILocation(line: 140, column: 21, scope: !254)
!263 = distinct !{!263, !257, !264, !158}
!264 = !DILocation(line: 144, column: 21, scope: !251)
!265 = !DILocation(line: 145, column: 34, scope: !249)
!266 = !DILocation(line: 145, column: 21, scope: !249)
!267 = !DILocation(line: 146, column: 17, scope: !249)
!268 = !DILocation(line: 147, column: 13, scope: !245)
!269 = !DILocation(line: 150, column: 1, scope: !164)
!270 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 153, type: !58, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!271 = !DILocalVariable(name: "data", scope: !270, file: !3, line: 155, type: !51)
!272 = !DILocation(line: 155, column: 12, scope: !270)
!273 = !DILocalVariable(name: "dataBuffer", scope: !270, file: !3, line: 156, type: !63)
!274 = !DILocation(line: 156, column: 10, scope: !270)
!275 = !DILocation(line: 157, column: 12, scope: !270)
!276 = !DILocation(line: 157, column: 10, scope: !270)
!277 = !DILocation(line: 158, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !270, file: !3, line: 158, column: 8)
!279 = !DILocation(line: 158, column: 8, scope: !270)
!280 = !DILocalVariable(name: "dataLen", scope: !281, file: !3, line: 162, type: !75)
!281 = distinct !DILexicalBlock(scope: !282, file: !3, line: 160, column: 9)
!282 = distinct !DILexicalBlock(scope: !278, file: !3, line: 159, column: 5)
!283 = !DILocation(line: 162, column: 20, scope: !281)
!284 = !DILocation(line: 162, column: 37, scope: !281)
!285 = !DILocation(line: 162, column: 30, scope: !281)
!286 = !DILocation(line: 164, column: 21, scope: !287)
!287 = distinct !DILexicalBlock(scope: !281, file: !3, line: 164, column: 17)
!288 = !DILocation(line: 164, column: 20, scope: !287)
!289 = !DILocation(line: 164, column: 29, scope: !287)
!290 = !DILocation(line: 164, column: 17, scope: !281)
!291 = !DILocation(line: 167, column: 27, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 167, column: 21)
!293 = distinct !DILexicalBlock(scope: !287, file: !3, line: 165, column: 13)
!294 = !DILocation(line: 167, column: 32, scope: !292)
!295 = !DILocation(line: 167, column: 31, scope: !292)
!296 = !DILocation(line: 167, column: 51, scope: !292)
!297 = !DILocation(line: 167, column: 50, scope: !292)
!298 = !DILocation(line: 167, column: 41, scope: !292)
!299 = !DILocation(line: 167, column: 61, scope: !292)
!300 = !DILocation(line: 167, column: 21, scope: !292)
!301 = !DILocation(line: 167, column: 68, scope: !292)
!302 = !DILocation(line: 167, column: 21, scope: !293)
!303 = !DILocation(line: 171, column: 38, scope: !304)
!304 = distinct !DILexicalBlock(scope: !292, file: !3, line: 168, column: 17)
!305 = !DILocation(line: 171, column: 31, scope: !304)
!306 = !DILocation(line: 171, column: 29, scope: !304)
!307 = !DILocation(line: 172, column: 25, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !3, line: 172, column: 25)
!309 = !DILocation(line: 172, column: 33, scope: !308)
!310 = !DILocation(line: 172, column: 37, scope: !308)
!311 = !DILocation(line: 172, column: 40, scope: !308)
!312 = !DILocation(line: 172, column: 45, scope: !308)
!313 = !DILocation(line: 172, column: 52, scope: !308)
!314 = !DILocation(line: 172, column: 56, scope: !308)
!315 = !DILocation(line: 172, column: 25, scope: !304)
!316 = !DILocation(line: 174, column: 25, scope: !317)
!317 = distinct !DILexicalBlock(scope: !308, file: !3, line: 173, column: 21)
!318 = !DILocation(line: 174, column: 30, scope: !317)
!319 = !DILocation(line: 174, column: 37, scope: !317)
!320 = !DILocation(line: 174, column: 41, scope: !317)
!321 = !DILocation(line: 175, column: 21, scope: !317)
!322 = !DILocation(line: 176, column: 17, scope: !304)
!323 = !DILocation(line: 179, column: 21, scope: !324)
!324 = distinct !DILexicalBlock(scope: !292, file: !3, line: 178, column: 17)
!325 = !DILocation(line: 181, column: 21, scope: !324)
!326 = !DILocation(line: 181, column: 26, scope: !324)
!327 = !DILocation(line: 181, column: 35, scope: !324)
!328 = !DILocation(line: 183, column: 13, scope: !293)
!329 = !DILocation(line: 185, column: 5, scope: !282)
!330 = !DILocation(line: 186, column: 8, scope: !331)
!331 = distinct !DILexicalBlock(scope: !270, file: !3, line: 186, column: 8)
!332 = !DILocation(line: 186, column: 8, scope: !270)
!333 = !DILocalVariable(name: "i", scope: !334, file: !3, line: 189, type: !6)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 188, column: 9)
!335 = distinct !DILexicalBlock(scope: !331, file: !3, line: 187, column: 5)
!336 = !DILocation(line: 189, column: 17, scope: !334)
!337 = !DILocalVariable(name: "n", scope: !334, file: !3, line: 189, type: !6)
!338 = !DILocation(line: 189, column: 20, scope: !334)
!339 = !DILocalVariable(name: "intVariable", scope: !334, file: !3, line: 189, type: !6)
!340 = !DILocation(line: 189, column: 23, scope: !334)
!341 = !DILocation(line: 190, column: 24, scope: !342)
!342 = distinct !DILexicalBlock(scope: !334, file: !3, line: 190, column: 17)
!343 = !DILocation(line: 190, column: 17, scope: !342)
!344 = !DILocation(line: 190, column: 40, scope: !342)
!345 = !DILocation(line: 190, column: 17, scope: !334)
!346 = !DILocation(line: 193, column: 21, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 193, column: 21)
!348 = distinct !DILexicalBlock(scope: !342, file: !3, line: 191, column: 13)
!349 = !DILocation(line: 193, column: 23, scope: !347)
!350 = !DILocation(line: 193, column: 21, scope: !348)
!351 = !DILocation(line: 195, column: 33, scope: !352)
!352 = distinct !DILexicalBlock(scope: !347, file: !3, line: 194, column: 17)
!353 = !DILocation(line: 196, column: 28, scope: !354)
!354 = distinct !DILexicalBlock(scope: !352, file: !3, line: 196, column: 21)
!355 = !DILocation(line: 196, column: 26, scope: !354)
!356 = !DILocation(line: 196, column: 33, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !3, line: 196, column: 21)
!358 = !DILocation(line: 196, column: 37, scope: !357)
!359 = !DILocation(line: 196, column: 35, scope: !357)
!360 = !DILocation(line: 196, column: 21, scope: !354)
!361 = !DILocation(line: 199, column: 36, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !3, line: 197, column: 21)
!363 = !DILocation(line: 200, column: 21, scope: !362)
!364 = !DILocation(line: 196, column: 41, scope: !357)
!365 = !DILocation(line: 196, column: 21, scope: !357)
!366 = distinct !{!366, !360, !367, !158}
!367 = !DILocation(line: 200, column: 21, scope: !354)
!368 = !DILocation(line: 201, column: 34, scope: !352)
!369 = !DILocation(line: 201, column: 21, scope: !352)
!370 = !DILocation(line: 202, column: 17, scope: !352)
!371 = !DILocation(line: 203, column: 13, scope: !348)
!372 = !DILocation(line: 205, column: 5, scope: !335)
!373 = !DILocation(line: 206, column: 1, scope: !270)
!374 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 209, type: !58, scopeLine: 210, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!375 = !DILocalVariable(name: "data", scope: !374, file: !3, line: 211, type: !51)
!376 = !DILocation(line: 211, column: 12, scope: !374)
!377 = !DILocalVariable(name: "dataBuffer", scope: !374, file: !3, line: 212, type: !63)
!378 = !DILocation(line: 212, column: 10, scope: !374)
!379 = !DILocation(line: 213, column: 12, scope: !374)
!380 = !DILocation(line: 213, column: 10, scope: !374)
!381 = !DILocation(line: 214, column: 8, scope: !382)
!382 = distinct !DILexicalBlock(scope: !374, file: !3, line: 214, column: 8)
!383 = !DILocation(line: 214, column: 8, scope: !374)
!384 = !DILocation(line: 217, column: 9, scope: !385)
!385 = distinct !DILexicalBlock(scope: !382, file: !3, line: 215, column: 5)
!386 = !DILocation(line: 218, column: 5, scope: !385)
!387 = !DILocation(line: 222, column: 16, scope: !388)
!388 = distinct !DILexicalBlock(scope: !382, file: !3, line: 220, column: 5)
!389 = !DILocation(line: 222, column: 9, scope: !388)
!390 = !DILocation(line: 224, column: 8, scope: !391)
!391 = distinct !DILexicalBlock(scope: !374, file: !3, line: 224, column: 8)
!392 = !DILocation(line: 224, column: 8, scope: !374)
!393 = !DILocalVariable(name: "i", scope: !394, file: !3, line: 227, type: !6)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 226, column: 9)
!395 = distinct !DILexicalBlock(scope: !391, file: !3, line: 225, column: 5)
!396 = !DILocation(line: 227, column: 17, scope: !394)
!397 = !DILocalVariable(name: "n", scope: !394, file: !3, line: 227, type: !6)
!398 = !DILocation(line: 227, column: 20, scope: !394)
!399 = !DILocalVariable(name: "intVariable", scope: !394, file: !3, line: 227, type: !6)
!400 = !DILocation(line: 227, column: 23, scope: !394)
!401 = !DILocation(line: 228, column: 24, scope: !402)
!402 = distinct !DILexicalBlock(scope: !394, file: !3, line: 228, column: 17)
!403 = !DILocation(line: 228, column: 17, scope: !402)
!404 = !DILocation(line: 228, column: 40, scope: !402)
!405 = !DILocation(line: 228, column: 17, scope: !394)
!406 = !DILocation(line: 231, column: 29, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !3, line: 229, column: 13)
!408 = !DILocation(line: 232, column: 24, scope: !409)
!409 = distinct !DILexicalBlock(scope: !407, file: !3, line: 232, column: 17)
!410 = !DILocation(line: 232, column: 22, scope: !409)
!411 = !DILocation(line: 232, column: 29, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !3, line: 232, column: 17)
!413 = !DILocation(line: 232, column: 33, scope: !412)
!414 = !DILocation(line: 232, column: 31, scope: !412)
!415 = !DILocation(line: 232, column: 17, scope: !409)
!416 = !DILocation(line: 235, column: 32, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !3, line: 233, column: 17)
!418 = !DILocation(line: 236, column: 17, scope: !417)
!419 = !DILocation(line: 232, column: 37, scope: !412)
!420 = !DILocation(line: 232, column: 17, scope: !412)
!421 = distinct !{!421, !415, !422, !158}
!422 = !DILocation(line: 236, column: 17, scope: !409)
!423 = !DILocation(line: 237, column: 30, scope: !407)
!424 = !DILocation(line: 237, column: 17, scope: !407)
!425 = !DILocation(line: 238, column: 13, scope: !407)
!426 = !DILocation(line: 240, column: 5, scope: !395)
!427 = !DILocation(line: 241, column: 1, scope: !374)
!428 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 244, type: !58, scopeLine: 245, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!429 = !DILocalVariable(name: "data", scope: !428, file: !3, line: 246, type: !51)
!430 = !DILocation(line: 246, column: 12, scope: !428)
!431 = !DILocalVariable(name: "dataBuffer", scope: !428, file: !3, line: 247, type: !63)
!432 = !DILocation(line: 247, column: 10, scope: !428)
!433 = !DILocation(line: 248, column: 12, scope: !428)
!434 = !DILocation(line: 248, column: 10, scope: !428)
!435 = !DILocation(line: 249, column: 8, scope: !436)
!436 = distinct !DILexicalBlock(scope: !428, file: !3, line: 249, column: 8)
!437 = !DILocation(line: 249, column: 8, scope: !428)
!438 = !DILocation(line: 252, column: 16, scope: !439)
!439 = distinct !DILexicalBlock(scope: !436, file: !3, line: 250, column: 5)
!440 = !DILocation(line: 252, column: 9, scope: !439)
!441 = !DILocation(line: 253, column: 5, scope: !439)
!442 = !DILocation(line: 254, column: 8, scope: !443)
!443 = distinct !DILexicalBlock(scope: !428, file: !3, line: 254, column: 8)
!444 = !DILocation(line: 254, column: 8, scope: !428)
!445 = !DILocalVariable(name: "i", scope: !446, file: !3, line: 257, type: !6)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 256, column: 9)
!447 = distinct !DILexicalBlock(scope: !443, file: !3, line: 255, column: 5)
!448 = !DILocation(line: 257, column: 17, scope: !446)
!449 = !DILocalVariable(name: "n", scope: !446, file: !3, line: 257, type: !6)
!450 = !DILocation(line: 257, column: 20, scope: !446)
!451 = !DILocalVariable(name: "intVariable", scope: !446, file: !3, line: 257, type: !6)
!452 = !DILocation(line: 257, column: 23, scope: !446)
!453 = !DILocation(line: 258, column: 24, scope: !454)
!454 = distinct !DILexicalBlock(scope: !446, file: !3, line: 258, column: 17)
!455 = !DILocation(line: 258, column: 17, scope: !454)
!456 = !DILocation(line: 258, column: 40, scope: !454)
!457 = !DILocation(line: 258, column: 17, scope: !446)
!458 = !DILocation(line: 261, column: 29, scope: !459)
!459 = distinct !DILexicalBlock(scope: !454, file: !3, line: 259, column: 13)
!460 = !DILocation(line: 262, column: 24, scope: !461)
!461 = distinct !DILexicalBlock(scope: !459, file: !3, line: 262, column: 17)
!462 = !DILocation(line: 262, column: 22, scope: !461)
!463 = !DILocation(line: 262, column: 29, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !3, line: 262, column: 17)
!465 = !DILocation(line: 262, column: 33, scope: !464)
!466 = !DILocation(line: 262, column: 31, scope: !464)
!467 = !DILocation(line: 262, column: 17, scope: !461)
!468 = !DILocation(line: 265, column: 32, scope: !469)
!469 = distinct !DILexicalBlock(scope: !464, file: !3, line: 263, column: 17)
!470 = !DILocation(line: 266, column: 17, scope: !469)
!471 = !DILocation(line: 262, column: 37, scope: !464)
!472 = !DILocation(line: 262, column: 17, scope: !464)
!473 = distinct !{!473, !467, !474, !158}
!474 = !DILocation(line: 266, column: 17, scope: !461)
!475 = !DILocation(line: 267, column: 30, scope: !459)
!476 = !DILocation(line: 267, column: 17, scope: !459)
!477 = !DILocation(line: 268, column: 13, scope: !459)
!478 = !DILocation(line: 270, column: 5, scope: !447)
!479 = !DILocation(line: 271, column: 1, scope: !428)
!480 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_04_good", scope: !3, file: !3, line: 273, type: !58, scopeLine: 274, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!481 = !DILocation(line: 275, column: 5, scope: !480)
!482 = !DILocation(line: 276, column: 5, scope: !480)
!483 = !DILocation(line: 277, column: 5, scope: !480)
!484 = !DILocation(line: 278, column: 5, scope: !480)
!485 = !DILocation(line: 279, column: 1, scope: !480)
!486 = distinct !DISubprogram(name: "printLine", scope: !14, file: !14, line: 11, type: !487, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !51}
!489 = !DILocalVariable(name: "line", arg: 1, scope: !486, file: !14, line: 11, type: !51)
!490 = !DILocation(line: 11, column: 25, scope: !486)
!491 = !DILocation(line: 13, column: 1, scope: !486)
!492 = !DILocation(line: 14, column: 8, scope: !493)
!493 = distinct !DILexicalBlock(scope: !486, file: !14, line: 14, column: 8)
!494 = !DILocation(line: 14, column: 13, scope: !493)
!495 = !DILocation(line: 14, column: 8, scope: !486)
!496 = !DILocation(line: 16, column: 24, scope: !497)
!497 = distinct !DILexicalBlock(scope: !493, file: !14, line: 15, column: 5)
!498 = !DILocation(line: 16, column: 9, scope: !497)
!499 = !DILocation(line: 17, column: 5, scope: !497)
!500 = !DILocation(line: 18, column: 5, scope: !486)
!501 = !DILocation(line: 19, column: 1, scope: !486)
!502 = distinct !DISubprogram(name: "printSinkLine", scope: !14, file: !14, line: 20, type: !487, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!503 = !DILocalVariable(name: "line", arg: 1, scope: !502, file: !14, line: 20, type: !51)
!504 = !DILocation(line: 20, column: 29, scope: !502)
!505 = !DILocation(line: 22, column: 8, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !14, line: 22, column: 8)
!507 = !DILocation(line: 22, column: 13, scope: !506)
!508 = !DILocation(line: 22, column: 8, scope: !502)
!509 = !DILocation(line: 24, column: 24, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !14, line: 23, column: 5)
!511 = !DILocation(line: 24, column: 9, scope: !510)
!512 = !DILocation(line: 25, column: 5, scope: !510)
!513 = !DILocation(line: 26, column: 1, scope: !502)
!514 = distinct !DISubprogram(name: "printWLine", scope: !14, file: !14, line: 27, type: !515, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !6)
!519 = !DILocalVariable(name: "line", arg: 1, scope: !514, file: !14, line: 27, type: !517)
!520 = !DILocation(line: 27, column: 29, scope: !514)
!521 = !DILocation(line: 29, column: 8, scope: !522)
!522 = distinct !DILexicalBlock(scope: !514, file: !14, line: 29, column: 8)
!523 = !DILocation(line: 29, column: 13, scope: !522)
!524 = !DILocation(line: 29, column: 8, scope: !514)
!525 = !DILocation(line: 31, column: 27, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !14, line: 30, column: 5)
!527 = !DILocation(line: 31, column: 9, scope: !526)
!528 = !DILocation(line: 32, column: 5, scope: !526)
!529 = !DILocation(line: 33, column: 1, scope: !514)
!530 = distinct !DISubprogram(name: "printIntLine", scope: !14, file: !14, line: 35, type: !531, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !6}
!533 = !DILocalVariable(name: "intNumber", arg: 1, scope: !530, file: !14, line: 35, type: !6)
!534 = !DILocation(line: 35, column: 24, scope: !530)
!535 = !DILocation(line: 37, column: 20, scope: !530)
!536 = !DILocation(line: 37, column: 5, scope: !530)
!537 = !DILocation(line: 38, column: 1, scope: !530)
!538 = distinct !DISubprogram(name: "printShortLine", scope: !14, file: !14, line: 40, type: !539, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !541}
!541 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!542 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !538, file: !14, line: 40, type: !541)
!543 = !DILocation(line: 40, column: 28, scope: !538)
!544 = !DILocation(line: 42, column: 21, scope: !538)
!545 = !DILocation(line: 42, column: 5, scope: !538)
!546 = !DILocation(line: 43, column: 1, scope: !538)
!547 = distinct !DISubprogram(name: "printFloatLine", scope: !14, file: !14, line: 45, type: !548, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !550}
!550 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!551 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !547, file: !14, line: 45, type: !550)
!552 = !DILocation(line: 45, column: 28, scope: !547)
!553 = !DILocation(line: 47, column: 20, scope: !547)
!554 = !DILocation(line: 47, column: 5, scope: !547)
!555 = !DILocation(line: 48, column: 1, scope: !547)
!556 = distinct !DISubprogram(name: "printLongLine", scope: !14, file: !14, line: 50, type: !557, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !559}
!559 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!560 = !DILocalVariable(name: "longNumber", arg: 1, scope: !556, file: !14, line: 50, type: !559)
!561 = !DILocation(line: 50, column: 26, scope: !556)
!562 = !DILocation(line: 52, column: 21, scope: !556)
!563 = !DILocation(line: 52, column: 5, scope: !556)
!564 = !DILocation(line: 53, column: 1, scope: !556)
!565 = distinct !DISubprogram(name: "printLongLongLine", scope: !14, file: !14, line: 55, type: !566, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !568}
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !569, line: 27, baseType: !570)
!569 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !571, line: 44, baseType: !559)
!571 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!572 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !565, file: !14, line: 55, type: !568)
!573 = !DILocation(line: 55, column: 33, scope: !565)
!574 = !DILocation(line: 57, column: 29, scope: !565)
!575 = !DILocation(line: 57, column: 5, scope: !565)
!576 = !DILocation(line: 58, column: 1, scope: !565)
!577 = distinct !DISubprogram(name: "printSizeTLine", scope: !14, file: !14, line: 60, type: !578, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !75}
!580 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !577, file: !14, line: 60, type: !75)
!581 = !DILocation(line: 60, column: 29, scope: !577)
!582 = !DILocation(line: 62, column: 21, scope: !577)
!583 = !DILocation(line: 62, column: 5, scope: !577)
!584 = !DILocation(line: 63, column: 1, scope: !577)
!585 = distinct !DISubprogram(name: "printHexCharLine", scope: !14, file: !14, line: 65, type: !586, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !52}
!588 = !DILocalVariable(name: "charHex", arg: 1, scope: !585, file: !14, line: 65, type: !52)
!589 = !DILocation(line: 65, column: 29, scope: !585)
!590 = !DILocation(line: 67, column: 22, scope: !585)
!591 = !DILocation(line: 67, column: 5, scope: !585)
!592 = !DILocation(line: 68, column: 1, scope: !585)
!593 = distinct !DISubprogram(name: "printWcharLine", scope: !14, file: !14, line: 70, type: !594, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !518}
!596 = !DILocalVariable(name: "wideChar", arg: 1, scope: !593, file: !14, line: 70, type: !518)
!597 = !DILocation(line: 70, column: 29, scope: !593)
!598 = !DILocalVariable(name: "s", scope: !593, file: !14, line: 74, type: !599)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 64, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 2)
!602 = !DILocation(line: 74, column: 13, scope: !593)
!603 = !DILocation(line: 75, column: 16, scope: !593)
!604 = !DILocation(line: 75, column: 9, scope: !593)
!605 = !DILocation(line: 75, column: 14, scope: !593)
!606 = !DILocation(line: 76, column: 9, scope: !593)
!607 = !DILocation(line: 76, column: 14, scope: !593)
!608 = !DILocation(line: 77, column: 21, scope: !593)
!609 = !DILocation(line: 77, column: 5, scope: !593)
!610 = !DILocation(line: 78, column: 1, scope: !593)
!611 = distinct !DISubprogram(name: "printUnsignedLine", scope: !14, file: !14, line: 80, type: !612, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !18}
!614 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !611, file: !14, line: 80, type: !18)
!615 = !DILocation(line: 80, column: 33, scope: !611)
!616 = !DILocation(line: 82, column: 20, scope: !611)
!617 = !DILocation(line: 82, column: 5, scope: !611)
!618 = !DILocation(line: 83, column: 1, scope: !611)
!619 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !14, file: !14, line: 85, type: !620, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !34}
!622 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !619, file: !14, line: 85, type: !34)
!623 = !DILocation(line: 85, column: 45, scope: !619)
!624 = !DILocation(line: 87, column: 22, scope: !619)
!625 = !DILocation(line: 87, column: 5, scope: !619)
!626 = !DILocation(line: 88, column: 1, scope: !619)
!627 = distinct !DISubprogram(name: "printDoubleLine", scope: !14, file: !14, line: 90, type: !628, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !630}
!630 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!631 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !627, file: !14, line: 90, type: !630)
!632 = !DILocation(line: 90, column: 29, scope: !627)
!633 = !DILocation(line: 92, column: 20, scope: !627)
!634 = !DILocation(line: 92, column: 5, scope: !627)
!635 = !DILocation(line: 93, column: 1, scope: !627)
!636 = distinct !DISubprogram(name: "printStructLine", scope: !14, file: !14, line: 95, type: !637, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !639}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !641, line: 100, baseType: !642)
!641 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_981/source_code")
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !641, line: 96, size: 64, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !642, file: !641, line: 98, baseType: !6, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !642, file: !641, line: 99, baseType: !6, size: 32, offset: 32)
!646 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !636, file: !14, line: 95, type: !639)
!647 = !DILocation(line: 95, column: 40, scope: !636)
!648 = !DILocation(line: 97, column: 26, scope: !636)
!649 = !DILocation(line: 97, column: 47, scope: !636)
!650 = !DILocation(line: 97, column: 55, scope: !636)
!651 = !DILocation(line: 97, column: 76, scope: !636)
!652 = !DILocation(line: 97, column: 5, scope: !636)
!653 = !DILocation(line: 98, column: 1, scope: !636)
!654 = distinct !DISubprogram(name: "printBytesLine", scope: !14, file: !14, line: 100, type: !655, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !657, !75}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!658 = !DILocalVariable(name: "bytes", arg: 1, scope: !654, file: !14, line: 100, type: !657)
!659 = !DILocation(line: 100, column: 38, scope: !654)
!660 = !DILocalVariable(name: "numBytes", arg: 2, scope: !654, file: !14, line: 100, type: !75)
!661 = !DILocation(line: 100, column: 52, scope: !654)
!662 = !DILocalVariable(name: "i", scope: !654, file: !14, line: 102, type: !75)
!663 = !DILocation(line: 102, column: 12, scope: !654)
!664 = !DILocation(line: 103, column: 12, scope: !665)
!665 = distinct !DILexicalBlock(scope: !654, file: !14, line: 103, column: 5)
!666 = !DILocation(line: 103, column: 10, scope: !665)
!667 = !DILocation(line: 103, column: 17, scope: !668)
!668 = distinct !DILexicalBlock(scope: !665, file: !14, line: 103, column: 5)
!669 = !DILocation(line: 103, column: 21, scope: !668)
!670 = !DILocation(line: 103, column: 19, scope: !668)
!671 = !DILocation(line: 103, column: 5, scope: !665)
!672 = !DILocation(line: 105, column: 24, scope: !673)
!673 = distinct !DILexicalBlock(scope: !668, file: !14, line: 104, column: 5)
!674 = !DILocation(line: 105, column: 30, scope: !673)
!675 = !DILocation(line: 105, column: 9, scope: !673)
!676 = !DILocation(line: 106, column: 5, scope: !673)
!677 = !DILocation(line: 103, column: 31, scope: !668)
!678 = !DILocation(line: 103, column: 5, scope: !668)
!679 = distinct !{!679, !671, !680, !158}
!680 = !DILocation(line: 106, column: 5, scope: !665)
!681 = !DILocation(line: 107, column: 5, scope: !654)
!682 = !DILocation(line: 108, column: 1, scope: !654)
!683 = distinct !DISubprogram(name: "decodeHexChars", scope: !14, file: !14, line: 113, type: !684, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!684 = !DISubroutineType(types: !685)
!685 = !{!75, !657, !75, !51}
!686 = !DILocalVariable(name: "bytes", arg: 1, scope: !683, file: !14, line: 113, type: !657)
!687 = !DILocation(line: 113, column: 39, scope: !683)
!688 = !DILocalVariable(name: "numBytes", arg: 2, scope: !683, file: !14, line: 113, type: !75)
!689 = !DILocation(line: 113, column: 53, scope: !683)
!690 = !DILocalVariable(name: "hex", arg: 3, scope: !683, file: !14, line: 113, type: !51)
!691 = !DILocation(line: 113, column: 71, scope: !683)
!692 = !DILocalVariable(name: "numWritten", scope: !683, file: !14, line: 115, type: !75)
!693 = !DILocation(line: 115, column: 12, scope: !683)
!694 = !DILocation(line: 121, column: 5, scope: !683)
!695 = !DILocation(line: 121, column: 12, scope: !683)
!696 = !DILocation(line: 121, column: 25, scope: !683)
!697 = !DILocation(line: 121, column: 23, scope: !683)
!698 = !DILocation(line: 121, column: 34, scope: !683)
!699 = !DILocation(line: 121, column: 37, scope: !683)
!700 = !DILocation(line: 121, column: 67, scope: !683)
!701 = !DILocation(line: 121, column: 70, scope: !683)
!702 = !DILocation(line: 0, scope: !683)
!703 = !DILocalVariable(name: "byte", scope: !704, file: !14, line: 123, type: !6)
!704 = distinct !DILexicalBlock(scope: !683, file: !14, line: 122, column: 5)
!705 = !DILocation(line: 123, column: 13, scope: !704)
!706 = !DILocation(line: 124, column: 17, scope: !704)
!707 = !DILocation(line: 124, column: 25, scope: !704)
!708 = !DILocation(line: 124, column: 23, scope: !704)
!709 = !DILocation(line: 124, column: 9, scope: !704)
!710 = !DILocation(line: 125, column: 45, scope: !704)
!711 = !DILocation(line: 125, column: 29, scope: !704)
!712 = !DILocation(line: 125, column: 9, scope: !704)
!713 = !DILocation(line: 125, column: 15, scope: !704)
!714 = !DILocation(line: 125, column: 27, scope: !704)
!715 = !DILocation(line: 126, column: 9, scope: !704)
!716 = distinct !{!716, !694, !717, !158}
!717 = !DILocation(line: 127, column: 5, scope: !683)
!718 = !DILocation(line: 129, column: 12, scope: !683)
!719 = !DILocation(line: 129, column: 5, scope: !683)
!720 = distinct !DISubprogram(name: "decodeHexWChars", scope: !14, file: !14, line: 135, type: !721, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!721 = !DISubroutineType(types: !722)
!722 = !{!75, !657, !75, !517}
!723 = !DILocalVariable(name: "bytes", arg: 1, scope: !720, file: !14, line: 135, type: !657)
!724 = !DILocation(line: 135, column: 41, scope: !720)
!725 = !DILocalVariable(name: "numBytes", arg: 2, scope: !720, file: !14, line: 135, type: !75)
!726 = !DILocation(line: 135, column: 55, scope: !720)
!727 = !DILocalVariable(name: "hex", arg: 3, scope: !720, file: !14, line: 135, type: !517)
!728 = !DILocation(line: 135, column: 76, scope: !720)
!729 = !DILocalVariable(name: "numWritten", scope: !720, file: !14, line: 137, type: !75)
!730 = !DILocation(line: 137, column: 12, scope: !720)
!731 = !DILocation(line: 143, column: 5, scope: !720)
!732 = !DILocation(line: 143, column: 12, scope: !720)
!733 = !DILocation(line: 143, column: 25, scope: !720)
!734 = !DILocation(line: 143, column: 23, scope: !720)
!735 = !DILocation(line: 143, column: 34, scope: !720)
!736 = !DILocation(line: 143, column: 47, scope: !720)
!737 = !DILocation(line: 143, column: 55, scope: !720)
!738 = !DILocation(line: 143, column: 53, scope: !720)
!739 = !DILocation(line: 143, column: 37, scope: !720)
!740 = !DILocation(line: 143, column: 68, scope: !720)
!741 = !DILocation(line: 143, column: 81, scope: !720)
!742 = !DILocation(line: 143, column: 89, scope: !720)
!743 = !DILocation(line: 143, column: 87, scope: !720)
!744 = !DILocation(line: 143, column: 100, scope: !720)
!745 = !DILocation(line: 143, column: 71, scope: !720)
!746 = !DILocation(line: 0, scope: !720)
!747 = !DILocalVariable(name: "byte", scope: !748, file: !14, line: 145, type: !6)
!748 = distinct !DILexicalBlock(scope: !720, file: !14, line: 144, column: 5)
!749 = !DILocation(line: 145, column: 13, scope: !748)
!750 = !DILocation(line: 146, column: 18, scope: !748)
!751 = !DILocation(line: 146, column: 26, scope: !748)
!752 = !DILocation(line: 146, column: 24, scope: !748)
!753 = !DILocation(line: 146, column: 9, scope: !748)
!754 = !DILocation(line: 147, column: 45, scope: !748)
!755 = !DILocation(line: 147, column: 29, scope: !748)
!756 = !DILocation(line: 147, column: 9, scope: !748)
!757 = !DILocation(line: 147, column: 15, scope: !748)
!758 = !DILocation(line: 147, column: 27, scope: !748)
!759 = !DILocation(line: 148, column: 9, scope: !748)
!760 = distinct !{!760, !731, !761, !158}
!761 = !DILocation(line: 149, column: 5, scope: !720)
!762 = !DILocation(line: 151, column: 12, scope: !720)
!763 = !DILocation(line: 151, column: 5, scope: !720)
!764 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !14, file: !14, line: 156, type: !765, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!765 = !DISubroutineType(types: !766)
!766 = !{!6}
!767 = !DILocation(line: 158, column: 5, scope: !764)
!768 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !14, file: !14, line: 161, type: !765, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!769 = !DILocation(line: 163, column: 5, scope: !768)
!770 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !14, file: !14, line: 166, type: !765, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!771 = !DILocation(line: 168, column: 13, scope: !770)
!772 = !DILocation(line: 168, column: 20, scope: !770)
!773 = !DILocation(line: 168, column: 5, scope: !770)
!774 = distinct !DISubprogram(name: "good1", scope: !14, file: !14, line: 187, type: !58, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!775 = !DILocation(line: 187, column: 16, scope: !774)
!776 = distinct !DISubprogram(name: "good2", scope: !14, file: !14, line: 188, type: !58, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!777 = !DILocation(line: 188, column: 16, scope: !776)
!778 = distinct !DISubprogram(name: "good3", scope: !14, file: !14, line: 189, type: !58, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!779 = !DILocation(line: 189, column: 16, scope: !778)
!780 = distinct !DISubprogram(name: "good4", scope: !14, file: !14, line: 190, type: !58, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!781 = !DILocation(line: 190, column: 16, scope: !780)
!782 = distinct !DISubprogram(name: "good5", scope: !14, file: !14, line: 191, type: !58, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!783 = !DILocation(line: 191, column: 16, scope: !782)
!784 = distinct !DISubprogram(name: "good6", scope: !14, file: !14, line: 192, type: !58, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!785 = !DILocation(line: 192, column: 16, scope: !784)
!786 = distinct !DISubprogram(name: "good7", scope: !14, file: !14, line: 193, type: !58, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!787 = !DILocation(line: 193, column: 16, scope: !786)
!788 = distinct !DISubprogram(name: "good8", scope: !14, file: !14, line: 194, type: !58, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!789 = !DILocation(line: 194, column: 16, scope: !788)
!790 = distinct !DISubprogram(name: "good9", scope: !14, file: !14, line: 195, type: !58, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!791 = !DILocation(line: 195, column: 16, scope: !790)
!792 = distinct !DISubprogram(name: "bad1", scope: !14, file: !14, line: 198, type: !58, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!793 = !DILocation(line: 198, column: 15, scope: !792)
!794 = distinct !DISubprogram(name: "bad2", scope: !14, file: !14, line: 199, type: !58, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!795 = !DILocation(line: 199, column: 15, scope: !794)
!796 = distinct !DISubprogram(name: "bad3", scope: !14, file: !14, line: 200, type: !58, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!797 = !DILocation(line: 200, column: 15, scope: !796)
!798 = distinct !DISubprogram(name: "bad4", scope: !14, file: !14, line: 201, type: !58, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!799 = !DILocation(line: 201, column: 15, scope: !798)
!800 = distinct !DISubprogram(name: "bad5", scope: !14, file: !14, line: 202, type: !58, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!801 = !DILocation(line: 202, column: 15, scope: !800)
!802 = distinct !DISubprogram(name: "bad6", scope: !14, file: !14, line: 203, type: !58, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!803 = !DILocation(line: 203, column: 15, scope: !802)
!804 = distinct !DISubprogram(name: "bad7", scope: !14, file: !14, line: 204, type: !58, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!805 = !DILocation(line: 204, column: 15, scope: !804)
!806 = distinct !DISubprogram(name: "bad8", scope: !14, file: !14, line: 205, type: !58, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!807 = !DILocation(line: 205, column: 15, scope: !806)
!808 = distinct !DISubprogram(name: "bad9", scope: !14, file: !14, line: 206, type: !58, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!809 = !DILocation(line: 206, column: 15, scope: !808)
