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
@.str.7 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.9 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.10 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7.13 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_09_bad() #0 !dbg !52 {
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
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !64
  %tobool = icmp ne i32 %1, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.end20, !dbg !66

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !73
  %2 = load i8*, i8** %data, align 8, !dbg !74
  %call = call i64 @strlen(i8* %2) #7, !dbg !75
  store i64 %call, i64* %dataLen, align 8, !dbg !73
  %3 = load i64, i64* %dataLen, align 8, !dbg !76
  %sub = sub i64 100, %3, !dbg !78
  %cmp = icmp ugt i64 %sub, 1, !dbg !79
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !80

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !81
  %5 = load i64, i64* %dataLen, align 8, !dbg !84
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !85
  %6 = load i64, i64* %dataLen, align 8, !dbg !86
  %sub2 = sub i64 100, %6, !dbg !87
  %conv = trunc i64 %sub2 to i32, !dbg !88
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !89
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !90
  %cmp4 = icmp ne i8* %call3, null, !dbg !91
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !92

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !93
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !95
  store i64 %call7, i64* %dataLen, align 8, !dbg !96
  %9 = load i64, i64* %dataLen, align 8, !dbg !97
  %cmp8 = icmp ugt i64 %9, 0, !dbg !99
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !100

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !101
  %11 = load i64, i64* %dataLen, align 8, !dbg !102
  %sub10 = sub i64 %11, 1, !dbg !103
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !101
  %12 = load i8, i8* %arrayidx, align 1, !dbg !101
  %conv11 = sext i8 %12 to i32, !dbg !101
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !104
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !105

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !106
  %14 = load i64, i64* %dataLen, align 8, !dbg !108
  %sub15 = sub i64 %14, 1, !dbg !109
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !106
  store i8 0, i8* %arrayidx16, align 1, !dbg !110
  br label %if.end, !dbg !111

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !112

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !113
  %15 = load i8*, i8** %data, align 8, !dbg !115
  %16 = load i64, i64* %dataLen, align 8, !dbg !116
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !115
  store i8 0, i8* %arrayidx17, align 1, !dbg !117
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !118

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !119

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !120
  %tobool21 = icmp ne i32 %17, 0, !dbg !120
  br i1 %tobool21, label %if.then22, label %if.end31, !dbg !122

if.then22:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !123, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %n, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !129, metadata !DIExpression()), !dbg !130
  %18 = load i8*, i8** %data, align 8, !dbg !131
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !133
  %cmp24 = icmp eq i32 %call23, 1, !dbg !134
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !135

if.then26:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !136
  store i32 0, i32* %i, align 4, !dbg !138
  br label %for.cond, !dbg !140

for.cond:                                         ; preds = %for.inc, %if.then26
  %19 = load i32, i32* %i, align 4, !dbg !141
  %20 = load i32, i32* %n, align 4, !dbg !143
  %cmp27 = icmp slt i32 %19, %20, !dbg !144
  br i1 %cmp27, label %for.body, label %for.end, !dbg !145

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !146
  %inc = add nsw i32 %21, 1, !dbg !146
  store i32 %inc, i32* %intVariable, align 4, !dbg !146
  br label %for.inc, !dbg !148

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !149
  %inc29 = add nsw i32 %22, 1, !dbg !149
  store i32 %inc29, i32* %i, align 4, !dbg !149
  br label %for.cond, !dbg !150, !llvm.loop !151

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !154
  call void @printIntLine(i32 %23), !dbg !155
  br label %if.end30, !dbg !156

if.end30:                                         ; preds = %for.end, %if.then22
  br label %if.end31, !dbg !157

if.end31:                                         ; preds = %if.end30, %if.end20
  ret void, !dbg !158
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
define dso_local void @goodB2G1() #0 !dbg !159 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !162, metadata !DIExpression()), !dbg !163
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !163
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !163
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !164
  store i8* %arraydecay, i8** %data, align 8, !dbg !165
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !166
  %tobool = icmp ne i32 %1, 0, !dbg !166
  br i1 %tobool, label %if.then, label %if.end20, !dbg !168

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !169, metadata !DIExpression()), !dbg !172
  %2 = load i8*, i8** %data, align 8, !dbg !173
  %call = call i64 @strlen(i8* %2) #7, !dbg !174
  store i64 %call, i64* %dataLen, align 8, !dbg !172
  %3 = load i64, i64* %dataLen, align 8, !dbg !175
  %sub = sub i64 100, %3, !dbg !177
  %cmp = icmp ugt i64 %sub, 1, !dbg !178
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !179

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !180
  %5 = load i64, i64* %dataLen, align 8, !dbg !183
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !184
  %6 = load i64, i64* %dataLen, align 8, !dbg !185
  %sub2 = sub i64 100, %6, !dbg !186
  %conv = trunc i64 %sub2 to i32, !dbg !187
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !188
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !189
  %cmp4 = icmp ne i8* %call3, null, !dbg !190
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !191

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !192
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !194
  store i64 %call7, i64* %dataLen, align 8, !dbg !195
  %9 = load i64, i64* %dataLen, align 8, !dbg !196
  %cmp8 = icmp ugt i64 %9, 0, !dbg !198
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !199

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !200
  %11 = load i64, i64* %dataLen, align 8, !dbg !201
  %sub10 = sub i64 %11, 1, !dbg !202
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !200
  %12 = load i8, i8* %arrayidx, align 1, !dbg !200
  %conv11 = sext i8 %12 to i32, !dbg !200
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !203
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !204

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !205
  %14 = load i64, i64* %dataLen, align 8, !dbg !207
  %sub15 = sub i64 %14, 1, !dbg !208
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !205
  store i8 0, i8* %arrayidx16, align 1, !dbg !209
  br label %if.end, !dbg !210

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !211

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !212
  %15 = load i8*, i8** %data, align 8, !dbg !214
  %16 = load i64, i64* %dataLen, align 8, !dbg !215
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !214
  store i8 0, i8* %arrayidx17, align 1, !dbg !216
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !217

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !218

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !219
  %tobool21 = icmp ne i32 %17, 0, !dbg !219
  br i1 %tobool21, label %if.then22, label %if.else23, !dbg !221

if.then22:                                        ; preds = %if.end20
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !222
  br label %if.end36, !dbg !224

if.else23:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !225, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata i32* %n, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !231, metadata !DIExpression()), !dbg !232
  %18 = load i8*, i8** %data, align 8, !dbg !233
  %call24 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !235
  %cmp25 = icmp eq i32 %call24, 1, !dbg !236
  br i1 %cmp25, label %if.then27, label %if.end35, !dbg !237

if.then27:                                        ; preds = %if.else23
  %19 = load i32, i32* %n, align 4, !dbg !238
  %cmp28 = icmp slt i32 %19, 10000, !dbg !241
  br i1 %cmp28, label %if.then30, label %if.end34, !dbg !242

if.then30:                                        ; preds = %if.then27
  store i32 0, i32* %intVariable, align 4, !dbg !243
  store i32 0, i32* %i, align 4, !dbg !245
  br label %for.cond, !dbg !247

for.cond:                                         ; preds = %for.inc, %if.then30
  %20 = load i32, i32* %i, align 4, !dbg !248
  %21 = load i32, i32* %n, align 4, !dbg !250
  %cmp31 = icmp slt i32 %20, %21, !dbg !251
  br i1 %cmp31, label %for.body, label %for.end, !dbg !252

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !253
  %inc = add nsw i32 %22, 1, !dbg !253
  store i32 %inc, i32* %intVariable, align 4, !dbg !253
  br label %for.inc, !dbg !255

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !256
  %inc33 = add nsw i32 %23, 1, !dbg !256
  store i32 %inc33, i32* %i, align 4, !dbg !256
  br label %for.cond, !dbg !257, !llvm.loop !258

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !260
  call void @printIntLine(i32 %24), !dbg !261
  br label %if.end34, !dbg !262

if.end34:                                         ; preds = %for.end, %if.then27
  br label %if.end35, !dbg !263

if.end35:                                         ; preds = %if.end34, %if.else23
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then22
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !265 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !269
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !269
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !270
  store i8* %arraydecay, i8** %data, align 8, !dbg !271
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !272
  %tobool = icmp ne i32 %1, 0, !dbg !272
  br i1 %tobool, label %if.then, label %if.end20, !dbg !274

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !275, metadata !DIExpression()), !dbg !278
  %2 = load i8*, i8** %data, align 8, !dbg !279
  %call = call i64 @strlen(i8* %2) #7, !dbg !280
  store i64 %call, i64* %dataLen, align 8, !dbg !278
  %3 = load i64, i64* %dataLen, align 8, !dbg !281
  %sub = sub i64 100, %3, !dbg !283
  %cmp = icmp ugt i64 %sub, 1, !dbg !284
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !285

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !286
  %5 = load i64, i64* %dataLen, align 8, !dbg !289
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !290
  %6 = load i64, i64* %dataLen, align 8, !dbg !291
  %sub2 = sub i64 100, %6, !dbg !292
  %conv = trunc i64 %sub2 to i32, !dbg !293
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !294
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !295
  %cmp4 = icmp ne i8* %call3, null, !dbg !296
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !297

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %data, align 8, !dbg !298
  %call7 = call i64 @strlen(i8* %8) #7, !dbg !300
  store i64 %call7, i64* %dataLen, align 8, !dbg !301
  %9 = load i64, i64* %dataLen, align 8, !dbg !302
  %cmp8 = icmp ugt i64 %9, 0, !dbg !304
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !305

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %data, align 8, !dbg !306
  %11 = load i64, i64* %dataLen, align 8, !dbg !307
  %sub10 = sub i64 %11, 1, !dbg !308
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !306
  %12 = load i8, i8* %arrayidx, align 1, !dbg !306
  %conv11 = sext i8 %12 to i32, !dbg !306
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !309
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !310

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %data, align 8, !dbg !311
  %14 = load i64, i64* %dataLen, align 8, !dbg !313
  %sub15 = sub i64 %14, 1, !dbg !314
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !311
  store i8 0, i8* %arrayidx16, align 1, !dbg !315
  br label %if.end, !dbg !316

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !317

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !318
  %15 = load i8*, i8** %data, align 8, !dbg !320
  %16 = load i64, i64* %dataLen, align 8, !dbg !321
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !320
  store i8 0, i8* %arrayidx17, align 1, !dbg !322
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !323

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !324

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !325
  %tobool21 = icmp ne i32 %17, 0, !dbg !325
  br i1 %tobool21, label %if.then22, label %if.end35, !dbg !327

if.then22:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !328, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata i32* %n, metadata !332, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !334, metadata !DIExpression()), !dbg !335
  %18 = load i8*, i8** %data, align 8, !dbg !336
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !338
  %cmp24 = icmp eq i32 %call23, 1, !dbg !339
  br i1 %cmp24, label %if.then26, label %if.end34, !dbg !340

if.then26:                                        ; preds = %if.then22
  %19 = load i32, i32* %n, align 4, !dbg !341
  %cmp27 = icmp slt i32 %19, 10000, !dbg !344
  br i1 %cmp27, label %if.then29, label %if.end33, !dbg !345

if.then29:                                        ; preds = %if.then26
  store i32 0, i32* %intVariable, align 4, !dbg !346
  store i32 0, i32* %i, align 4, !dbg !348
  br label %for.cond, !dbg !350

for.cond:                                         ; preds = %for.inc, %if.then29
  %20 = load i32, i32* %i, align 4, !dbg !351
  %21 = load i32, i32* %n, align 4, !dbg !353
  %cmp30 = icmp slt i32 %20, %21, !dbg !354
  br i1 %cmp30, label %for.body, label %for.end, !dbg !355

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !356
  %inc = add nsw i32 %22, 1, !dbg !356
  store i32 %inc, i32* %intVariable, align 4, !dbg !356
  br label %for.inc, !dbg !358

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !359
  %inc32 = add nsw i32 %23, 1, !dbg !359
  store i32 %inc32, i32* %i, align 4, !dbg !359
  br label %for.cond, !dbg !360, !llvm.loop !361

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !363
  call void @printIntLine(i32 %24), !dbg !364
  br label %if.end33, !dbg !365

if.end33:                                         ; preds = %for.end, %if.then26
  br label %if.end34, !dbg !366

if.end34:                                         ; preds = %if.end33, %if.then22
  br label %if.end35, !dbg !367

if.end35:                                         ; preds = %if.end34, %if.end20
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !369 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !373
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !373
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !374
  store i8* %arraydecay, i8** %data, align 8, !dbg !375
  %1 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !376
  %tobool = icmp ne i32 %1, 0, !dbg !376
  br i1 %tobool, label %if.then, label %if.else, !dbg !378

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !379
  br label %if.end, !dbg !381

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !382
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !384
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !385
  %tobool1 = icmp ne i32 %3, 0, !dbg !385
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !387

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !388, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata i32* %n, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !394, metadata !DIExpression()), !dbg !395
  %4 = load i8*, i8** %data, align 8, !dbg !396
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !398
  %cmp = icmp eq i32 %call3, 1, !dbg !399
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !400

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !401
  store i32 0, i32* %i, align 4, !dbg !403
  br label %for.cond, !dbg !405

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !406
  %6 = load i32, i32* %n, align 4, !dbg !408
  %cmp5 = icmp slt i32 %5, %6, !dbg !409
  br i1 %cmp5, label %for.body, label %for.end, !dbg !410

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !411
  %inc = add nsw i32 %7, 1, !dbg !411
  store i32 %inc, i32* %intVariable, align 4, !dbg !411
  br label %for.inc, !dbg !413

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !414
  %inc6 = add nsw i32 %8, 1, !dbg !414
  store i32 %inc6, i32* %i, align 4, !dbg !414
  br label %for.cond, !dbg !415, !llvm.loop !416

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !418
  call void @printIntLine(i32 %9), !dbg !419
  br label %if.end7, !dbg !420

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !421

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !422
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !423 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !424, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !427
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !427
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !428
  store i8* %arraydecay, i8** %data, align 8, !dbg !429
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !430
  %tobool = icmp ne i32 %1, 0, !dbg !430
  br i1 %tobool, label %if.then, label %if.end, !dbg !432

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !433
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !435
  br label %if.end, !dbg !436

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !437
  %tobool1 = icmp ne i32 %3, 0, !dbg !437
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !439

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !440, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata i32* %n, metadata !444, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !446, metadata !DIExpression()), !dbg !447
  %4 = load i8*, i8** %data, align 8, !dbg !448
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !450
  %cmp = icmp eq i32 %call3, 1, !dbg !451
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !452

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !453
  store i32 0, i32* %i, align 4, !dbg !455
  br label %for.cond, !dbg !457

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !458
  %6 = load i32, i32* %n, align 4, !dbg !460
  %cmp5 = icmp slt i32 %5, %6, !dbg !461
  br i1 %cmp5, label %for.body, label %for.end, !dbg !462

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !463
  %inc = add nsw i32 %7, 1, !dbg !463
  store i32 %inc, i32* %intVariable, align 4, !dbg !463
  br label %for.inc, !dbg !465

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !466
  %inc6 = add nsw i32 %8, 1, !dbg !466
  store i32 %inc6, i32* %i, align 4, !dbg !466
  br label %for.cond, !dbg !467, !llvm.loop !468

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !470
  call void @printIntLine(i32 %9), !dbg !471
  br label %if.end7, !dbg !472

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !473

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_09_good() #0 !dbg !475 {
entry:
  call void @goodB2G1(), !dbg !476
  call void @goodB2G2(), !dbg !477
  call void @goodG2B1(), !dbg !478
  call void @goodG2B2(), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !481 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !484, metadata !DIExpression()), !dbg !485
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)), !dbg !486
  %0 = load i8*, i8** %line.addr, align 8, !dbg !487
  %cmp = icmp ne i8* %0, null, !dbg !489
  br i1 %cmp, label %if.then, label %if.end, !dbg !490

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !491
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !493
  br label %if.end, !dbg !494

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.9, i64 0, i64 0)), !dbg !495
  ret void, !dbg !496
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !497 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !498, metadata !DIExpression()), !dbg !499
  %0 = load i8*, i8** %line.addr, align 8, !dbg !500
  %cmp = icmp ne i8* %0, null, !dbg !502
  br i1 %cmp, label %if.then, label %if.end, !dbg !503

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !504
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.8, i64 0, i64 0), i8* %1), !dbg !506
  br label %if.end, !dbg !507

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !509 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !514, metadata !DIExpression()), !dbg !515
  %0 = load i32*, i32** %line.addr, align 8, !dbg !516
  %cmp = icmp ne i32* %0, null, !dbg !518
  br i1 %cmp, label %if.then, label %if.end, !dbg !519

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !520
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.10, i64 0, i64 0), i32* %1), !dbg !522
  br label %if.end, !dbg !523

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !524
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !525 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !528, metadata !DIExpression()), !dbg !529
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !533 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !539
  %conv = sext i16 %0 to i32, !dbg !539
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !540
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !542 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !546, metadata !DIExpression()), !dbg !547
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !548
  %conv = fpext float %0 to double, !dbg !548
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !549
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !551 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !555, metadata !DIExpression()), !dbg !556
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !557
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.13, i64 0, i64 0), i64 %0), !dbg !558
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !560 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !567, metadata !DIExpression()), !dbg !568
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !569
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.13, i64 0, i64 0), i64 %0), !dbg !570
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !572 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !575, metadata !DIExpression()), !dbg !576
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !577
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !578
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !580 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !583, metadata !DIExpression()), !dbg !584
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !585
  %conv = sext i8 %0 to i32, !dbg !585
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !586
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !588 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !591, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !593, metadata !DIExpression()), !dbg !597
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !598
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !599
  store i32 %0, i32* %arrayidx, align 4, !dbg !600
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !601
  store i32 0, i32* %arrayidx1, align 4, !dbg !602
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !603
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !604
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !606 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !609, metadata !DIExpression()), !dbg !610
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !611
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !612
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !614 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !617, metadata !DIExpression()), !dbg !618
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !619
  %conv = zext i8 %0 to i32, !dbg !619
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !620
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !622 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !626, metadata !DIExpression()), !dbg !627
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !628
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !629
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !631 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !641, metadata !DIExpression()), !dbg !642
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !643
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !644
  %1 = load i32, i32* %intOne, align 4, !dbg !644
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !645
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !646
  %3 = load i32, i32* %intTwo, align 4, !dbg !646
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !647
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !649 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !653, metadata !DIExpression()), !dbg !654
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !655, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.declare(metadata i64* %i, metadata !657, metadata !DIExpression()), !dbg !658
  store i64 0, i64* %i, align 8, !dbg !659
  br label %for.cond, !dbg !661

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !662
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !664
  %cmp = icmp ult i64 %0, %1, !dbg !665
  br i1 %cmp, label %for.body, label %for.end, !dbg !666

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !667
  %3 = load i64, i64* %i, align 8, !dbg !669
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !667
  %4 = load i8, i8* %arrayidx, align 1, !dbg !667
  %conv = zext i8 %4 to i32, !dbg !667
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !670
  br label %for.inc, !dbg !671

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !672
  %inc = add i64 %5, 1, !dbg !672
  store i64 %inc, i64* %i, align 8, !dbg !672
  br label %for.cond, !dbg !673, !llvm.loop !674

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !676
  ret void, !dbg !677
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !678 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !681, metadata !DIExpression()), !dbg !682
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !683, metadata !DIExpression()), !dbg !684
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !685, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !687, metadata !DIExpression()), !dbg !688
  store i64 0, i64* %numWritten, align 8, !dbg !688
  br label %while.cond, !dbg !689

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !690
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !691
  %cmp = icmp ult i64 %0, %1, !dbg !692
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !693

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !694
  %2 = load i16*, i16** %call, align 8, !dbg !694
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !694
  %4 = load i64, i64* %numWritten, align 8, !dbg !694
  %mul = mul i64 2, %4, !dbg !694
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !694
  %5 = load i8, i8* %arrayidx, align 1, !dbg !694
  %conv = sext i8 %5 to i32, !dbg !694
  %idxprom = sext i32 %conv to i64, !dbg !694
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !694
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !694
  %conv2 = zext i16 %6 to i32, !dbg !694
  %and = and i32 %conv2, 4096, !dbg !694
  %tobool = icmp ne i32 %and, 0, !dbg !694
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !695

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !696
  %7 = load i16*, i16** %call3, align 8, !dbg !696
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !696
  %9 = load i64, i64* %numWritten, align 8, !dbg !696
  %mul4 = mul i64 2, %9, !dbg !696
  %add = add i64 %mul4, 1, !dbg !696
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !696
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !696
  %conv6 = sext i8 %10 to i32, !dbg !696
  %idxprom7 = sext i32 %conv6 to i64, !dbg !696
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !696
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !696
  %conv9 = zext i16 %11 to i32, !dbg !696
  %and10 = and i32 %conv9, 4096, !dbg !696
  %tobool11 = icmp ne i32 %and10, 0, !dbg !695
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !697
  br i1 %12, label %while.body, label %while.end, !dbg !689

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !698, metadata !DIExpression()), !dbg !700
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !701
  %14 = load i64, i64* %numWritten, align 8, !dbg !702
  %mul12 = mul i64 2, %14, !dbg !703
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !701
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !704
  %15 = load i32, i32* %byte, align 4, !dbg !705
  %conv15 = trunc i32 %15 to i8, !dbg !706
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !707
  %17 = load i64, i64* %numWritten, align 8, !dbg !708
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !707
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !709
  %18 = load i64, i64* %numWritten, align 8, !dbg !710
  %inc = add i64 %18, 1, !dbg !710
  store i64 %inc, i64* %numWritten, align 8, !dbg !710
  br label %while.cond, !dbg !689, !llvm.loop !711

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !713
  ret i64 %19, !dbg !714
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !715 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !718, metadata !DIExpression()), !dbg !719
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !720, metadata !DIExpression()), !dbg !721
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !722, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !724, metadata !DIExpression()), !dbg !725
  store i64 0, i64* %numWritten, align 8, !dbg !725
  br label %while.cond, !dbg !726

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !727
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !728
  %cmp = icmp ult i64 %0, %1, !dbg !729
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !730

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !731
  %3 = load i64, i64* %numWritten, align 8, !dbg !732
  %mul = mul i64 2, %3, !dbg !733
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !731
  %4 = load i32, i32* %arrayidx, align 4, !dbg !731
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !734
  %tobool = icmp ne i32 %call, 0, !dbg !734
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !735

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !736
  %6 = load i64, i64* %numWritten, align 8, !dbg !737
  %mul1 = mul i64 2, %6, !dbg !738
  %add = add i64 %mul1, 1, !dbg !739
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !736
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !736
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !740
  %tobool4 = icmp ne i32 %call3, 0, !dbg !735
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !741
  br i1 %8, label %while.body, label %while.end, !dbg !726

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !742, metadata !DIExpression()), !dbg !744
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !745
  %10 = load i64, i64* %numWritten, align 8, !dbg !746
  %mul5 = mul i64 2, %10, !dbg !747
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !745
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !748
  %11 = load i32, i32* %byte, align 4, !dbg !749
  %conv = trunc i32 %11 to i8, !dbg !750
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !751
  %13 = load i64, i64* %numWritten, align 8, !dbg !752
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !751
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !753
  %14 = load i64, i64* %numWritten, align 8, !dbg !754
  %inc = add i64 %14, 1, !dbg !754
  store i64 %inc, i64* %numWritten, align 8, !dbg !754
  br label %while.cond, !dbg !726, !llvm.loop !755

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !757
  ret i64 %15, !dbg !758
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !759 {
entry:
  ret i32 1, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !763 {
entry:
  ret i32 0, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !765 {
entry:
  %call = call i32 @rand() #8, !dbg !766
  %rem = srem i32 %call, 2, !dbg !767
  ret i32 %rem, !dbg !768
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !769 {
entry:
  ret void, !dbg !770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !771 {
entry:
  ret void, !dbg !772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !773 {
entry:
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !775 {
entry:
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !777 {
entry:
  ret void, !dbg !778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !779 {
entry:
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !781 {
entry:
  ret void, !dbg !782
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !783 {
entry:
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !785 {
entry:
  ret void, !dbg !786
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !787 {
entry:
  ret void, !dbg !788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !789 {
entry:
  ret void, !dbg !790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !791 {
entry:
  ret void, !dbg !792
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !793 {
entry:
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !795 {
entry:
  ret void, !dbg !796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !797 {
entry:
  ret void, !dbg !798
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !799 {
entry:
  ret void, !dbg !800
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !801 {
entry:
  ret void, !dbg !802
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !803 {
entry:
  ret void, !dbg !804
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_986/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_09.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_986/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_09_bad", scope: !45, file: !45, line: 29, type: !53, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!66 = !DILocation(line: 34, column: 8, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 38, type: !70)
!68 = distinct !DILexicalBlock(scope: !69, file: !45, line: 36, column: 9)
!69 = distinct !DILexicalBlock(scope: !65, file: !45, line: 35, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 38, column: 20, scope: !68)
!74 = !DILocation(line: 38, column: 37, scope: !68)
!75 = !DILocation(line: 38, column: 30, scope: !68)
!76 = !DILocation(line: 40, column: 21, scope: !77)
!77 = distinct !DILexicalBlock(scope: !68, file: !45, line: 40, column: 17)
!78 = !DILocation(line: 40, column: 20, scope: !77)
!79 = !DILocation(line: 40, column: 29, scope: !77)
!80 = !DILocation(line: 40, column: 17, scope: !68)
!81 = !DILocation(line: 43, column: 27, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !45, line: 43, column: 21)
!83 = distinct !DILexicalBlock(scope: !77, file: !45, line: 41, column: 13)
!84 = !DILocation(line: 43, column: 32, scope: !82)
!85 = !DILocation(line: 43, column: 31, scope: !82)
!86 = !DILocation(line: 43, column: 51, scope: !82)
!87 = !DILocation(line: 43, column: 50, scope: !82)
!88 = !DILocation(line: 43, column: 41, scope: !82)
!89 = !DILocation(line: 43, column: 61, scope: !82)
!90 = !DILocation(line: 43, column: 21, scope: !82)
!91 = !DILocation(line: 43, column: 68, scope: !82)
!92 = !DILocation(line: 43, column: 21, scope: !83)
!93 = !DILocation(line: 47, column: 38, scope: !94)
!94 = distinct !DILexicalBlock(scope: !82, file: !45, line: 44, column: 17)
!95 = !DILocation(line: 47, column: 31, scope: !94)
!96 = !DILocation(line: 47, column: 29, scope: !94)
!97 = !DILocation(line: 48, column: 25, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !45, line: 48, column: 25)
!99 = !DILocation(line: 48, column: 33, scope: !98)
!100 = !DILocation(line: 48, column: 37, scope: !98)
!101 = !DILocation(line: 48, column: 40, scope: !98)
!102 = !DILocation(line: 48, column: 45, scope: !98)
!103 = !DILocation(line: 48, column: 52, scope: !98)
!104 = !DILocation(line: 48, column: 56, scope: !98)
!105 = !DILocation(line: 48, column: 25, scope: !94)
!106 = !DILocation(line: 50, column: 25, scope: !107)
!107 = distinct !DILexicalBlock(scope: !98, file: !45, line: 49, column: 21)
!108 = !DILocation(line: 50, column: 30, scope: !107)
!109 = !DILocation(line: 50, column: 37, scope: !107)
!110 = !DILocation(line: 50, column: 41, scope: !107)
!111 = !DILocation(line: 51, column: 21, scope: !107)
!112 = !DILocation(line: 52, column: 17, scope: !94)
!113 = !DILocation(line: 55, column: 21, scope: !114)
!114 = distinct !DILexicalBlock(scope: !82, file: !45, line: 54, column: 17)
!115 = !DILocation(line: 57, column: 21, scope: !114)
!116 = !DILocation(line: 57, column: 26, scope: !114)
!117 = !DILocation(line: 57, column: 35, scope: !114)
!118 = !DILocation(line: 59, column: 13, scope: !83)
!119 = !DILocation(line: 61, column: 5, scope: !69)
!120 = !DILocation(line: 62, column: 8, scope: !121)
!121 = distinct !DILexicalBlock(scope: !52, file: !45, line: 62, column: 8)
!122 = !DILocation(line: 62, column: 8, scope: !52)
!123 = !DILocalVariable(name: "i", scope: !124, file: !45, line: 65, type: !23)
!124 = distinct !DILexicalBlock(scope: !125, file: !45, line: 64, column: 9)
!125 = distinct !DILexicalBlock(scope: !121, file: !45, line: 63, column: 5)
!126 = !DILocation(line: 65, column: 17, scope: !124)
!127 = !DILocalVariable(name: "n", scope: !124, file: !45, line: 65, type: !23)
!128 = !DILocation(line: 65, column: 20, scope: !124)
!129 = !DILocalVariable(name: "intVariable", scope: !124, file: !45, line: 65, type: !23)
!130 = !DILocation(line: 65, column: 23, scope: !124)
!131 = !DILocation(line: 66, column: 24, scope: !132)
!132 = distinct !DILexicalBlock(scope: !124, file: !45, line: 66, column: 17)
!133 = !DILocation(line: 66, column: 17, scope: !132)
!134 = !DILocation(line: 66, column: 40, scope: !132)
!135 = !DILocation(line: 66, column: 17, scope: !124)
!136 = !DILocation(line: 69, column: 29, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !45, line: 67, column: 13)
!138 = !DILocation(line: 70, column: 24, scope: !139)
!139 = distinct !DILexicalBlock(scope: !137, file: !45, line: 70, column: 17)
!140 = !DILocation(line: 70, column: 22, scope: !139)
!141 = !DILocation(line: 70, column: 29, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !45, line: 70, column: 17)
!143 = !DILocation(line: 70, column: 33, scope: !142)
!144 = !DILocation(line: 70, column: 31, scope: !142)
!145 = !DILocation(line: 70, column: 17, scope: !139)
!146 = !DILocation(line: 73, column: 32, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !45, line: 71, column: 17)
!148 = !DILocation(line: 74, column: 17, scope: !147)
!149 = !DILocation(line: 70, column: 37, scope: !142)
!150 = !DILocation(line: 70, column: 17, scope: !142)
!151 = distinct !{!151, !145, !152, !153}
!152 = !DILocation(line: 74, column: 17, scope: !139)
!153 = !{!"llvm.loop.mustprogress"}
!154 = !DILocation(line: 75, column: 30, scope: !137)
!155 = !DILocation(line: 75, column: 17, scope: !137)
!156 = !DILocation(line: 76, column: 13, scope: !137)
!157 = !DILocation(line: 78, column: 5, scope: !125)
!158 = !DILocation(line: 79, column: 1, scope: !52)
!159 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 86, type: !53, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!160 = !DILocalVariable(name: "data", scope: !159, file: !45, line: 88, type: !42)
!161 = !DILocation(line: 88, column: 12, scope: !159)
!162 = !DILocalVariable(name: "dataBuffer", scope: !159, file: !45, line: 89, type: !58)
!163 = !DILocation(line: 89, column: 10, scope: !159)
!164 = !DILocation(line: 90, column: 12, scope: !159)
!165 = !DILocation(line: 90, column: 10, scope: !159)
!166 = !DILocation(line: 91, column: 8, scope: !167)
!167 = distinct !DILexicalBlock(scope: !159, file: !45, line: 91, column: 8)
!168 = !DILocation(line: 91, column: 8, scope: !159)
!169 = !DILocalVariable(name: "dataLen", scope: !170, file: !45, line: 95, type: !70)
!170 = distinct !DILexicalBlock(scope: !171, file: !45, line: 93, column: 9)
!171 = distinct !DILexicalBlock(scope: !167, file: !45, line: 92, column: 5)
!172 = !DILocation(line: 95, column: 20, scope: !170)
!173 = !DILocation(line: 95, column: 37, scope: !170)
!174 = !DILocation(line: 95, column: 30, scope: !170)
!175 = !DILocation(line: 97, column: 21, scope: !176)
!176 = distinct !DILexicalBlock(scope: !170, file: !45, line: 97, column: 17)
!177 = !DILocation(line: 97, column: 20, scope: !176)
!178 = !DILocation(line: 97, column: 29, scope: !176)
!179 = !DILocation(line: 97, column: 17, scope: !170)
!180 = !DILocation(line: 100, column: 27, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !45, line: 100, column: 21)
!182 = distinct !DILexicalBlock(scope: !176, file: !45, line: 98, column: 13)
!183 = !DILocation(line: 100, column: 32, scope: !181)
!184 = !DILocation(line: 100, column: 31, scope: !181)
!185 = !DILocation(line: 100, column: 51, scope: !181)
!186 = !DILocation(line: 100, column: 50, scope: !181)
!187 = !DILocation(line: 100, column: 41, scope: !181)
!188 = !DILocation(line: 100, column: 61, scope: !181)
!189 = !DILocation(line: 100, column: 21, scope: !181)
!190 = !DILocation(line: 100, column: 68, scope: !181)
!191 = !DILocation(line: 100, column: 21, scope: !182)
!192 = !DILocation(line: 104, column: 38, scope: !193)
!193 = distinct !DILexicalBlock(scope: !181, file: !45, line: 101, column: 17)
!194 = !DILocation(line: 104, column: 31, scope: !193)
!195 = !DILocation(line: 104, column: 29, scope: !193)
!196 = !DILocation(line: 105, column: 25, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !45, line: 105, column: 25)
!198 = !DILocation(line: 105, column: 33, scope: !197)
!199 = !DILocation(line: 105, column: 37, scope: !197)
!200 = !DILocation(line: 105, column: 40, scope: !197)
!201 = !DILocation(line: 105, column: 45, scope: !197)
!202 = !DILocation(line: 105, column: 52, scope: !197)
!203 = !DILocation(line: 105, column: 56, scope: !197)
!204 = !DILocation(line: 105, column: 25, scope: !193)
!205 = !DILocation(line: 107, column: 25, scope: !206)
!206 = distinct !DILexicalBlock(scope: !197, file: !45, line: 106, column: 21)
!207 = !DILocation(line: 107, column: 30, scope: !206)
!208 = !DILocation(line: 107, column: 37, scope: !206)
!209 = !DILocation(line: 107, column: 41, scope: !206)
!210 = !DILocation(line: 108, column: 21, scope: !206)
!211 = !DILocation(line: 109, column: 17, scope: !193)
!212 = !DILocation(line: 112, column: 21, scope: !213)
!213 = distinct !DILexicalBlock(scope: !181, file: !45, line: 111, column: 17)
!214 = !DILocation(line: 114, column: 21, scope: !213)
!215 = !DILocation(line: 114, column: 26, scope: !213)
!216 = !DILocation(line: 114, column: 35, scope: !213)
!217 = !DILocation(line: 116, column: 13, scope: !182)
!218 = !DILocation(line: 118, column: 5, scope: !171)
!219 = !DILocation(line: 119, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !159, file: !45, line: 119, column: 8)
!221 = !DILocation(line: 119, column: 8, scope: !159)
!222 = !DILocation(line: 122, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !45, line: 120, column: 5)
!224 = !DILocation(line: 123, column: 5, scope: !223)
!225 = !DILocalVariable(name: "i", scope: !226, file: !45, line: 127, type: !23)
!226 = distinct !DILexicalBlock(scope: !227, file: !45, line: 126, column: 9)
!227 = distinct !DILexicalBlock(scope: !220, file: !45, line: 125, column: 5)
!228 = !DILocation(line: 127, column: 17, scope: !226)
!229 = !DILocalVariable(name: "n", scope: !226, file: !45, line: 127, type: !23)
!230 = !DILocation(line: 127, column: 20, scope: !226)
!231 = !DILocalVariable(name: "intVariable", scope: !226, file: !45, line: 127, type: !23)
!232 = !DILocation(line: 127, column: 23, scope: !226)
!233 = !DILocation(line: 128, column: 24, scope: !234)
!234 = distinct !DILexicalBlock(scope: !226, file: !45, line: 128, column: 17)
!235 = !DILocation(line: 128, column: 17, scope: !234)
!236 = !DILocation(line: 128, column: 40, scope: !234)
!237 = !DILocation(line: 128, column: 17, scope: !226)
!238 = !DILocation(line: 131, column: 21, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !45, line: 131, column: 21)
!240 = distinct !DILexicalBlock(scope: !234, file: !45, line: 129, column: 13)
!241 = !DILocation(line: 131, column: 23, scope: !239)
!242 = !DILocation(line: 131, column: 21, scope: !240)
!243 = !DILocation(line: 133, column: 33, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !45, line: 132, column: 17)
!245 = !DILocation(line: 134, column: 28, scope: !246)
!246 = distinct !DILexicalBlock(scope: !244, file: !45, line: 134, column: 21)
!247 = !DILocation(line: 134, column: 26, scope: !246)
!248 = !DILocation(line: 134, column: 33, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !45, line: 134, column: 21)
!250 = !DILocation(line: 134, column: 37, scope: !249)
!251 = !DILocation(line: 134, column: 35, scope: !249)
!252 = !DILocation(line: 134, column: 21, scope: !246)
!253 = !DILocation(line: 137, column: 36, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !45, line: 135, column: 21)
!255 = !DILocation(line: 138, column: 21, scope: !254)
!256 = !DILocation(line: 134, column: 41, scope: !249)
!257 = !DILocation(line: 134, column: 21, scope: !249)
!258 = distinct !{!258, !252, !259, !153}
!259 = !DILocation(line: 138, column: 21, scope: !246)
!260 = !DILocation(line: 139, column: 34, scope: !244)
!261 = !DILocation(line: 139, column: 21, scope: !244)
!262 = !DILocation(line: 140, column: 17, scope: !244)
!263 = !DILocation(line: 141, column: 13, scope: !240)
!264 = !DILocation(line: 144, column: 1, scope: !159)
!265 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 147, type: !53, scopeLine: 148, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!266 = !DILocalVariable(name: "data", scope: !265, file: !45, line: 149, type: !42)
!267 = !DILocation(line: 149, column: 12, scope: !265)
!268 = !DILocalVariable(name: "dataBuffer", scope: !265, file: !45, line: 150, type: !58)
!269 = !DILocation(line: 150, column: 10, scope: !265)
!270 = !DILocation(line: 151, column: 12, scope: !265)
!271 = !DILocation(line: 151, column: 10, scope: !265)
!272 = !DILocation(line: 152, column: 8, scope: !273)
!273 = distinct !DILexicalBlock(scope: !265, file: !45, line: 152, column: 8)
!274 = !DILocation(line: 152, column: 8, scope: !265)
!275 = !DILocalVariable(name: "dataLen", scope: !276, file: !45, line: 156, type: !70)
!276 = distinct !DILexicalBlock(scope: !277, file: !45, line: 154, column: 9)
!277 = distinct !DILexicalBlock(scope: !273, file: !45, line: 153, column: 5)
!278 = !DILocation(line: 156, column: 20, scope: !276)
!279 = !DILocation(line: 156, column: 37, scope: !276)
!280 = !DILocation(line: 156, column: 30, scope: !276)
!281 = !DILocation(line: 158, column: 21, scope: !282)
!282 = distinct !DILexicalBlock(scope: !276, file: !45, line: 158, column: 17)
!283 = !DILocation(line: 158, column: 20, scope: !282)
!284 = !DILocation(line: 158, column: 29, scope: !282)
!285 = !DILocation(line: 158, column: 17, scope: !276)
!286 = !DILocation(line: 161, column: 27, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !45, line: 161, column: 21)
!288 = distinct !DILexicalBlock(scope: !282, file: !45, line: 159, column: 13)
!289 = !DILocation(line: 161, column: 32, scope: !287)
!290 = !DILocation(line: 161, column: 31, scope: !287)
!291 = !DILocation(line: 161, column: 51, scope: !287)
!292 = !DILocation(line: 161, column: 50, scope: !287)
!293 = !DILocation(line: 161, column: 41, scope: !287)
!294 = !DILocation(line: 161, column: 61, scope: !287)
!295 = !DILocation(line: 161, column: 21, scope: !287)
!296 = !DILocation(line: 161, column: 68, scope: !287)
!297 = !DILocation(line: 161, column: 21, scope: !288)
!298 = !DILocation(line: 165, column: 38, scope: !299)
!299 = distinct !DILexicalBlock(scope: !287, file: !45, line: 162, column: 17)
!300 = !DILocation(line: 165, column: 31, scope: !299)
!301 = !DILocation(line: 165, column: 29, scope: !299)
!302 = !DILocation(line: 166, column: 25, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !45, line: 166, column: 25)
!304 = !DILocation(line: 166, column: 33, scope: !303)
!305 = !DILocation(line: 166, column: 37, scope: !303)
!306 = !DILocation(line: 166, column: 40, scope: !303)
!307 = !DILocation(line: 166, column: 45, scope: !303)
!308 = !DILocation(line: 166, column: 52, scope: !303)
!309 = !DILocation(line: 166, column: 56, scope: !303)
!310 = !DILocation(line: 166, column: 25, scope: !299)
!311 = !DILocation(line: 168, column: 25, scope: !312)
!312 = distinct !DILexicalBlock(scope: !303, file: !45, line: 167, column: 21)
!313 = !DILocation(line: 168, column: 30, scope: !312)
!314 = !DILocation(line: 168, column: 37, scope: !312)
!315 = !DILocation(line: 168, column: 41, scope: !312)
!316 = !DILocation(line: 169, column: 21, scope: !312)
!317 = !DILocation(line: 170, column: 17, scope: !299)
!318 = !DILocation(line: 173, column: 21, scope: !319)
!319 = distinct !DILexicalBlock(scope: !287, file: !45, line: 172, column: 17)
!320 = !DILocation(line: 175, column: 21, scope: !319)
!321 = !DILocation(line: 175, column: 26, scope: !319)
!322 = !DILocation(line: 175, column: 35, scope: !319)
!323 = !DILocation(line: 177, column: 13, scope: !288)
!324 = !DILocation(line: 179, column: 5, scope: !277)
!325 = !DILocation(line: 180, column: 8, scope: !326)
!326 = distinct !DILexicalBlock(scope: !265, file: !45, line: 180, column: 8)
!327 = !DILocation(line: 180, column: 8, scope: !265)
!328 = !DILocalVariable(name: "i", scope: !329, file: !45, line: 183, type: !23)
!329 = distinct !DILexicalBlock(scope: !330, file: !45, line: 182, column: 9)
!330 = distinct !DILexicalBlock(scope: !326, file: !45, line: 181, column: 5)
!331 = !DILocation(line: 183, column: 17, scope: !329)
!332 = !DILocalVariable(name: "n", scope: !329, file: !45, line: 183, type: !23)
!333 = !DILocation(line: 183, column: 20, scope: !329)
!334 = !DILocalVariable(name: "intVariable", scope: !329, file: !45, line: 183, type: !23)
!335 = !DILocation(line: 183, column: 23, scope: !329)
!336 = !DILocation(line: 184, column: 24, scope: !337)
!337 = distinct !DILexicalBlock(scope: !329, file: !45, line: 184, column: 17)
!338 = !DILocation(line: 184, column: 17, scope: !337)
!339 = !DILocation(line: 184, column: 40, scope: !337)
!340 = !DILocation(line: 184, column: 17, scope: !329)
!341 = !DILocation(line: 187, column: 21, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !45, line: 187, column: 21)
!343 = distinct !DILexicalBlock(scope: !337, file: !45, line: 185, column: 13)
!344 = !DILocation(line: 187, column: 23, scope: !342)
!345 = !DILocation(line: 187, column: 21, scope: !343)
!346 = !DILocation(line: 189, column: 33, scope: !347)
!347 = distinct !DILexicalBlock(scope: !342, file: !45, line: 188, column: 17)
!348 = !DILocation(line: 190, column: 28, scope: !349)
!349 = distinct !DILexicalBlock(scope: !347, file: !45, line: 190, column: 21)
!350 = !DILocation(line: 190, column: 26, scope: !349)
!351 = !DILocation(line: 190, column: 33, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !45, line: 190, column: 21)
!353 = !DILocation(line: 190, column: 37, scope: !352)
!354 = !DILocation(line: 190, column: 35, scope: !352)
!355 = !DILocation(line: 190, column: 21, scope: !349)
!356 = !DILocation(line: 193, column: 36, scope: !357)
!357 = distinct !DILexicalBlock(scope: !352, file: !45, line: 191, column: 21)
!358 = !DILocation(line: 194, column: 21, scope: !357)
!359 = !DILocation(line: 190, column: 41, scope: !352)
!360 = !DILocation(line: 190, column: 21, scope: !352)
!361 = distinct !{!361, !355, !362, !153}
!362 = !DILocation(line: 194, column: 21, scope: !349)
!363 = !DILocation(line: 195, column: 34, scope: !347)
!364 = !DILocation(line: 195, column: 21, scope: !347)
!365 = !DILocation(line: 196, column: 17, scope: !347)
!366 = !DILocation(line: 197, column: 13, scope: !343)
!367 = !DILocation(line: 199, column: 5, scope: !330)
!368 = !DILocation(line: 200, column: 1, scope: !265)
!369 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 203, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!370 = !DILocalVariable(name: "data", scope: !369, file: !45, line: 205, type: !42)
!371 = !DILocation(line: 205, column: 12, scope: !369)
!372 = !DILocalVariable(name: "dataBuffer", scope: !369, file: !45, line: 206, type: !58)
!373 = !DILocation(line: 206, column: 10, scope: !369)
!374 = !DILocation(line: 207, column: 12, scope: !369)
!375 = !DILocation(line: 207, column: 10, scope: !369)
!376 = !DILocation(line: 208, column: 8, scope: !377)
!377 = distinct !DILexicalBlock(scope: !369, file: !45, line: 208, column: 8)
!378 = !DILocation(line: 208, column: 8, scope: !369)
!379 = !DILocation(line: 211, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !45, line: 209, column: 5)
!381 = !DILocation(line: 212, column: 5, scope: !380)
!382 = !DILocation(line: 216, column: 16, scope: !383)
!383 = distinct !DILexicalBlock(scope: !377, file: !45, line: 214, column: 5)
!384 = !DILocation(line: 216, column: 9, scope: !383)
!385 = !DILocation(line: 218, column: 8, scope: !386)
!386 = distinct !DILexicalBlock(scope: !369, file: !45, line: 218, column: 8)
!387 = !DILocation(line: 218, column: 8, scope: !369)
!388 = !DILocalVariable(name: "i", scope: !389, file: !45, line: 221, type: !23)
!389 = distinct !DILexicalBlock(scope: !390, file: !45, line: 220, column: 9)
!390 = distinct !DILexicalBlock(scope: !386, file: !45, line: 219, column: 5)
!391 = !DILocation(line: 221, column: 17, scope: !389)
!392 = !DILocalVariable(name: "n", scope: !389, file: !45, line: 221, type: !23)
!393 = !DILocation(line: 221, column: 20, scope: !389)
!394 = !DILocalVariable(name: "intVariable", scope: !389, file: !45, line: 221, type: !23)
!395 = !DILocation(line: 221, column: 23, scope: !389)
!396 = !DILocation(line: 222, column: 24, scope: !397)
!397 = distinct !DILexicalBlock(scope: !389, file: !45, line: 222, column: 17)
!398 = !DILocation(line: 222, column: 17, scope: !397)
!399 = !DILocation(line: 222, column: 40, scope: !397)
!400 = !DILocation(line: 222, column: 17, scope: !389)
!401 = !DILocation(line: 225, column: 29, scope: !402)
!402 = distinct !DILexicalBlock(scope: !397, file: !45, line: 223, column: 13)
!403 = !DILocation(line: 226, column: 24, scope: !404)
!404 = distinct !DILexicalBlock(scope: !402, file: !45, line: 226, column: 17)
!405 = !DILocation(line: 226, column: 22, scope: !404)
!406 = !DILocation(line: 226, column: 29, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !45, line: 226, column: 17)
!408 = !DILocation(line: 226, column: 33, scope: !407)
!409 = !DILocation(line: 226, column: 31, scope: !407)
!410 = !DILocation(line: 226, column: 17, scope: !404)
!411 = !DILocation(line: 229, column: 32, scope: !412)
!412 = distinct !DILexicalBlock(scope: !407, file: !45, line: 227, column: 17)
!413 = !DILocation(line: 230, column: 17, scope: !412)
!414 = !DILocation(line: 226, column: 37, scope: !407)
!415 = !DILocation(line: 226, column: 17, scope: !407)
!416 = distinct !{!416, !410, !417, !153}
!417 = !DILocation(line: 230, column: 17, scope: !404)
!418 = !DILocation(line: 231, column: 30, scope: !402)
!419 = !DILocation(line: 231, column: 17, scope: !402)
!420 = !DILocation(line: 232, column: 13, scope: !402)
!421 = !DILocation(line: 234, column: 5, scope: !390)
!422 = !DILocation(line: 235, column: 1, scope: !369)
!423 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 238, type: !53, scopeLine: 239, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!424 = !DILocalVariable(name: "data", scope: !423, file: !45, line: 240, type: !42)
!425 = !DILocation(line: 240, column: 12, scope: !423)
!426 = !DILocalVariable(name: "dataBuffer", scope: !423, file: !45, line: 241, type: !58)
!427 = !DILocation(line: 241, column: 10, scope: !423)
!428 = !DILocation(line: 242, column: 12, scope: !423)
!429 = !DILocation(line: 242, column: 10, scope: !423)
!430 = !DILocation(line: 243, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !423, file: !45, line: 243, column: 8)
!432 = !DILocation(line: 243, column: 8, scope: !423)
!433 = !DILocation(line: 246, column: 16, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !45, line: 244, column: 5)
!435 = !DILocation(line: 246, column: 9, scope: !434)
!436 = !DILocation(line: 247, column: 5, scope: !434)
!437 = !DILocation(line: 248, column: 8, scope: !438)
!438 = distinct !DILexicalBlock(scope: !423, file: !45, line: 248, column: 8)
!439 = !DILocation(line: 248, column: 8, scope: !423)
!440 = !DILocalVariable(name: "i", scope: !441, file: !45, line: 251, type: !23)
!441 = distinct !DILexicalBlock(scope: !442, file: !45, line: 250, column: 9)
!442 = distinct !DILexicalBlock(scope: !438, file: !45, line: 249, column: 5)
!443 = !DILocation(line: 251, column: 17, scope: !441)
!444 = !DILocalVariable(name: "n", scope: !441, file: !45, line: 251, type: !23)
!445 = !DILocation(line: 251, column: 20, scope: !441)
!446 = !DILocalVariable(name: "intVariable", scope: !441, file: !45, line: 251, type: !23)
!447 = !DILocation(line: 251, column: 23, scope: !441)
!448 = !DILocation(line: 252, column: 24, scope: !449)
!449 = distinct !DILexicalBlock(scope: !441, file: !45, line: 252, column: 17)
!450 = !DILocation(line: 252, column: 17, scope: !449)
!451 = !DILocation(line: 252, column: 40, scope: !449)
!452 = !DILocation(line: 252, column: 17, scope: !441)
!453 = !DILocation(line: 255, column: 29, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !45, line: 253, column: 13)
!455 = !DILocation(line: 256, column: 24, scope: !456)
!456 = distinct !DILexicalBlock(scope: !454, file: !45, line: 256, column: 17)
!457 = !DILocation(line: 256, column: 22, scope: !456)
!458 = !DILocation(line: 256, column: 29, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !45, line: 256, column: 17)
!460 = !DILocation(line: 256, column: 33, scope: !459)
!461 = !DILocation(line: 256, column: 31, scope: !459)
!462 = !DILocation(line: 256, column: 17, scope: !456)
!463 = !DILocation(line: 259, column: 32, scope: !464)
!464 = distinct !DILexicalBlock(scope: !459, file: !45, line: 257, column: 17)
!465 = !DILocation(line: 260, column: 17, scope: !464)
!466 = !DILocation(line: 256, column: 37, scope: !459)
!467 = !DILocation(line: 256, column: 17, scope: !459)
!468 = distinct !{!468, !462, !469, !153}
!469 = !DILocation(line: 260, column: 17, scope: !456)
!470 = !DILocation(line: 261, column: 30, scope: !454)
!471 = !DILocation(line: 261, column: 17, scope: !454)
!472 = !DILocation(line: 262, column: 13, scope: !454)
!473 = !DILocation(line: 264, column: 5, scope: !442)
!474 = !DILocation(line: 265, column: 1, scope: !423)
!475 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_09_good", scope: !45, file: !45, line: 267, type: !53, scopeLine: 268, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!476 = !DILocation(line: 269, column: 5, scope: !475)
!477 = !DILocation(line: 270, column: 5, scope: !475)
!478 = !DILocation(line: 271, column: 5, scope: !475)
!479 = !DILocation(line: 272, column: 5, scope: !475)
!480 = !DILocation(line: 273, column: 1, scope: !475)
!481 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !482, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !42}
!484 = !DILocalVariable(name: "line", arg: 1, scope: !481, file: !3, line: 11, type: !42)
!485 = !DILocation(line: 11, column: 25, scope: !481)
!486 = !DILocation(line: 13, column: 1, scope: !481)
!487 = !DILocation(line: 14, column: 8, scope: !488)
!488 = distinct !DILexicalBlock(scope: !481, file: !3, line: 14, column: 8)
!489 = !DILocation(line: 14, column: 13, scope: !488)
!490 = !DILocation(line: 14, column: 8, scope: !481)
!491 = !DILocation(line: 16, column: 24, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !3, line: 15, column: 5)
!493 = !DILocation(line: 16, column: 9, scope: !492)
!494 = !DILocation(line: 17, column: 5, scope: !492)
!495 = !DILocation(line: 18, column: 5, scope: !481)
!496 = !DILocation(line: 19, column: 1, scope: !481)
!497 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !482, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DILocalVariable(name: "line", arg: 1, scope: !497, file: !3, line: 20, type: !42)
!499 = !DILocation(line: 20, column: 29, scope: !497)
!500 = !DILocation(line: 22, column: 8, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !3, line: 22, column: 8)
!502 = !DILocation(line: 22, column: 13, scope: !501)
!503 = !DILocation(line: 22, column: 8, scope: !497)
!504 = !DILocation(line: 24, column: 24, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !3, line: 23, column: 5)
!506 = !DILocation(line: 24, column: 9, scope: !505)
!507 = !DILocation(line: 25, column: 5, scope: !505)
!508 = !DILocation(line: 26, column: 1, scope: !497)
!509 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !510, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!514 = !DILocalVariable(name: "line", arg: 1, scope: !509, file: !3, line: 27, type: !512)
!515 = !DILocation(line: 27, column: 29, scope: !509)
!516 = !DILocation(line: 29, column: 8, scope: !517)
!517 = distinct !DILexicalBlock(scope: !509, file: !3, line: 29, column: 8)
!518 = !DILocation(line: 29, column: 13, scope: !517)
!519 = !DILocation(line: 29, column: 8, scope: !509)
!520 = !DILocation(line: 31, column: 27, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !3, line: 30, column: 5)
!522 = !DILocation(line: 31, column: 9, scope: !521)
!523 = !DILocation(line: 32, column: 5, scope: !521)
!524 = !DILocation(line: 33, column: 1, scope: !509)
!525 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !526, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !23}
!528 = !DILocalVariable(name: "intNumber", arg: 1, scope: !525, file: !3, line: 35, type: !23)
!529 = !DILocation(line: 35, column: 24, scope: !525)
!530 = !DILocation(line: 37, column: 20, scope: !525)
!531 = !DILocation(line: 37, column: 5, scope: !525)
!532 = !DILocation(line: 38, column: 1, scope: !525)
!533 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !534, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !536}
!536 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!537 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !533, file: !3, line: 40, type: !536)
!538 = !DILocation(line: 40, column: 28, scope: !533)
!539 = !DILocation(line: 42, column: 21, scope: !533)
!540 = !DILocation(line: 42, column: 5, scope: !533)
!541 = !DILocation(line: 43, column: 1, scope: !533)
!542 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !543, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !545}
!545 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!546 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !542, file: !3, line: 45, type: !545)
!547 = !DILocation(line: 45, column: 28, scope: !542)
!548 = !DILocation(line: 47, column: 20, scope: !542)
!549 = !DILocation(line: 47, column: 5, scope: !542)
!550 = !DILocation(line: 48, column: 1, scope: !542)
!551 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !552, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !554}
!554 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!555 = !DILocalVariable(name: "longNumber", arg: 1, scope: !551, file: !3, line: 50, type: !554)
!556 = !DILocation(line: 50, column: 26, scope: !551)
!557 = !DILocation(line: 52, column: 21, scope: !551)
!558 = !DILocation(line: 52, column: 5, scope: !551)
!559 = !DILocation(line: 53, column: 1, scope: !551)
!560 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !561, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !563}
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !564, line: 27, baseType: !565)
!564 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !566, line: 44, baseType: !554)
!566 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!567 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !560, file: !3, line: 55, type: !563)
!568 = !DILocation(line: 55, column: 33, scope: !560)
!569 = !DILocation(line: 57, column: 29, scope: !560)
!570 = !DILocation(line: 57, column: 5, scope: !560)
!571 = !DILocation(line: 58, column: 1, scope: !560)
!572 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !573, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !70}
!575 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !572, file: !3, line: 60, type: !70)
!576 = !DILocation(line: 60, column: 29, scope: !572)
!577 = !DILocation(line: 62, column: 21, scope: !572)
!578 = !DILocation(line: 62, column: 5, scope: !572)
!579 = !DILocation(line: 63, column: 1, scope: !572)
!580 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !581, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !43}
!583 = !DILocalVariable(name: "charHex", arg: 1, scope: !580, file: !3, line: 65, type: !43)
!584 = !DILocation(line: 65, column: 29, scope: !580)
!585 = !DILocation(line: 67, column: 22, scope: !580)
!586 = !DILocation(line: 67, column: 5, scope: !580)
!587 = !DILocation(line: 68, column: 1, scope: !580)
!588 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !589, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !513}
!591 = !DILocalVariable(name: "wideChar", arg: 1, scope: !588, file: !3, line: 70, type: !513)
!592 = !DILocation(line: 70, column: 29, scope: !588)
!593 = !DILocalVariable(name: "s", scope: !588, file: !3, line: 74, type: !594)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 64, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 2)
!597 = !DILocation(line: 74, column: 13, scope: !588)
!598 = !DILocation(line: 75, column: 16, scope: !588)
!599 = !DILocation(line: 75, column: 9, scope: !588)
!600 = !DILocation(line: 75, column: 14, scope: !588)
!601 = !DILocation(line: 76, column: 9, scope: !588)
!602 = !DILocation(line: 76, column: 14, scope: !588)
!603 = !DILocation(line: 77, column: 21, scope: !588)
!604 = !DILocation(line: 77, column: 5, scope: !588)
!605 = !DILocation(line: 78, column: 1, scope: !588)
!606 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !607, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !7}
!609 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !606, file: !3, line: 80, type: !7)
!610 = !DILocation(line: 80, column: 33, scope: !606)
!611 = !DILocation(line: 82, column: 20, scope: !606)
!612 = !DILocation(line: 82, column: 5, scope: !606)
!613 = !DILocation(line: 83, column: 1, scope: !606)
!614 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !615, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !25}
!617 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !614, file: !3, line: 85, type: !25)
!618 = !DILocation(line: 85, column: 45, scope: !614)
!619 = !DILocation(line: 87, column: 22, scope: !614)
!620 = !DILocation(line: 87, column: 5, scope: !614)
!621 = !DILocation(line: 88, column: 1, scope: !614)
!622 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !623, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !625}
!625 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!626 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !622, file: !3, line: 90, type: !625)
!627 = !DILocation(line: 90, column: 29, scope: !622)
!628 = !DILocation(line: 92, column: 20, scope: !622)
!629 = !DILocation(line: 92, column: 5, scope: !622)
!630 = !DILocation(line: 93, column: 1, scope: !622)
!631 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !632, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !636, line: 100, baseType: !637)
!636 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_986/source_code")
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !636, line: 96, size: 64, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !637, file: !636, line: 98, baseType: !23, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !637, file: !636, line: 99, baseType: !23, size: 32, offset: 32)
!641 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !631, file: !3, line: 95, type: !634)
!642 = !DILocation(line: 95, column: 40, scope: !631)
!643 = !DILocation(line: 97, column: 26, scope: !631)
!644 = !DILocation(line: 97, column: 47, scope: !631)
!645 = !DILocation(line: 97, column: 55, scope: !631)
!646 = !DILocation(line: 97, column: 76, scope: !631)
!647 = !DILocation(line: 97, column: 5, scope: !631)
!648 = !DILocation(line: 98, column: 1, scope: !631)
!649 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !650, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !652, !70}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!653 = !DILocalVariable(name: "bytes", arg: 1, scope: !649, file: !3, line: 100, type: !652)
!654 = !DILocation(line: 100, column: 38, scope: !649)
!655 = !DILocalVariable(name: "numBytes", arg: 2, scope: !649, file: !3, line: 100, type: !70)
!656 = !DILocation(line: 100, column: 52, scope: !649)
!657 = !DILocalVariable(name: "i", scope: !649, file: !3, line: 102, type: !70)
!658 = !DILocation(line: 102, column: 12, scope: !649)
!659 = !DILocation(line: 103, column: 12, scope: !660)
!660 = distinct !DILexicalBlock(scope: !649, file: !3, line: 103, column: 5)
!661 = !DILocation(line: 103, column: 10, scope: !660)
!662 = !DILocation(line: 103, column: 17, scope: !663)
!663 = distinct !DILexicalBlock(scope: !660, file: !3, line: 103, column: 5)
!664 = !DILocation(line: 103, column: 21, scope: !663)
!665 = !DILocation(line: 103, column: 19, scope: !663)
!666 = !DILocation(line: 103, column: 5, scope: !660)
!667 = !DILocation(line: 105, column: 24, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !3, line: 104, column: 5)
!669 = !DILocation(line: 105, column: 30, scope: !668)
!670 = !DILocation(line: 105, column: 9, scope: !668)
!671 = !DILocation(line: 106, column: 5, scope: !668)
!672 = !DILocation(line: 103, column: 31, scope: !663)
!673 = !DILocation(line: 103, column: 5, scope: !663)
!674 = distinct !{!674, !666, !675, !153}
!675 = !DILocation(line: 106, column: 5, scope: !660)
!676 = !DILocation(line: 107, column: 5, scope: !649)
!677 = !DILocation(line: 108, column: 1, scope: !649)
!678 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !679, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!679 = !DISubroutineType(types: !680)
!680 = !{!70, !652, !70, !42}
!681 = !DILocalVariable(name: "bytes", arg: 1, scope: !678, file: !3, line: 113, type: !652)
!682 = !DILocation(line: 113, column: 39, scope: !678)
!683 = !DILocalVariable(name: "numBytes", arg: 2, scope: !678, file: !3, line: 113, type: !70)
!684 = !DILocation(line: 113, column: 53, scope: !678)
!685 = !DILocalVariable(name: "hex", arg: 3, scope: !678, file: !3, line: 113, type: !42)
!686 = !DILocation(line: 113, column: 71, scope: !678)
!687 = !DILocalVariable(name: "numWritten", scope: !678, file: !3, line: 115, type: !70)
!688 = !DILocation(line: 115, column: 12, scope: !678)
!689 = !DILocation(line: 121, column: 5, scope: !678)
!690 = !DILocation(line: 121, column: 12, scope: !678)
!691 = !DILocation(line: 121, column: 25, scope: !678)
!692 = !DILocation(line: 121, column: 23, scope: !678)
!693 = !DILocation(line: 121, column: 34, scope: !678)
!694 = !DILocation(line: 121, column: 37, scope: !678)
!695 = !DILocation(line: 121, column: 67, scope: !678)
!696 = !DILocation(line: 121, column: 70, scope: !678)
!697 = !DILocation(line: 0, scope: !678)
!698 = !DILocalVariable(name: "byte", scope: !699, file: !3, line: 123, type: !23)
!699 = distinct !DILexicalBlock(scope: !678, file: !3, line: 122, column: 5)
!700 = !DILocation(line: 123, column: 13, scope: !699)
!701 = !DILocation(line: 124, column: 17, scope: !699)
!702 = !DILocation(line: 124, column: 25, scope: !699)
!703 = !DILocation(line: 124, column: 23, scope: !699)
!704 = !DILocation(line: 124, column: 9, scope: !699)
!705 = !DILocation(line: 125, column: 45, scope: !699)
!706 = !DILocation(line: 125, column: 29, scope: !699)
!707 = !DILocation(line: 125, column: 9, scope: !699)
!708 = !DILocation(line: 125, column: 15, scope: !699)
!709 = !DILocation(line: 125, column: 27, scope: !699)
!710 = !DILocation(line: 126, column: 9, scope: !699)
!711 = distinct !{!711, !689, !712, !153}
!712 = !DILocation(line: 127, column: 5, scope: !678)
!713 = !DILocation(line: 129, column: 12, scope: !678)
!714 = !DILocation(line: 129, column: 5, scope: !678)
!715 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !716, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!716 = !DISubroutineType(types: !717)
!717 = !{!70, !652, !70, !512}
!718 = !DILocalVariable(name: "bytes", arg: 1, scope: !715, file: !3, line: 135, type: !652)
!719 = !DILocation(line: 135, column: 41, scope: !715)
!720 = !DILocalVariable(name: "numBytes", arg: 2, scope: !715, file: !3, line: 135, type: !70)
!721 = !DILocation(line: 135, column: 55, scope: !715)
!722 = !DILocalVariable(name: "hex", arg: 3, scope: !715, file: !3, line: 135, type: !512)
!723 = !DILocation(line: 135, column: 76, scope: !715)
!724 = !DILocalVariable(name: "numWritten", scope: !715, file: !3, line: 137, type: !70)
!725 = !DILocation(line: 137, column: 12, scope: !715)
!726 = !DILocation(line: 143, column: 5, scope: !715)
!727 = !DILocation(line: 143, column: 12, scope: !715)
!728 = !DILocation(line: 143, column: 25, scope: !715)
!729 = !DILocation(line: 143, column: 23, scope: !715)
!730 = !DILocation(line: 143, column: 34, scope: !715)
!731 = !DILocation(line: 143, column: 47, scope: !715)
!732 = !DILocation(line: 143, column: 55, scope: !715)
!733 = !DILocation(line: 143, column: 53, scope: !715)
!734 = !DILocation(line: 143, column: 37, scope: !715)
!735 = !DILocation(line: 143, column: 68, scope: !715)
!736 = !DILocation(line: 143, column: 81, scope: !715)
!737 = !DILocation(line: 143, column: 89, scope: !715)
!738 = !DILocation(line: 143, column: 87, scope: !715)
!739 = !DILocation(line: 143, column: 100, scope: !715)
!740 = !DILocation(line: 143, column: 71, scope: !715)
!741 = !DILocation(line: 0, scope: !715)
!742 = !DILocalVariable(name: "byte", scope: !743, file: !3, line: 145, type: !23)
!743 = distinct !DILexicalBlock(scope: !715, file: !3, line: 144, column: 5)
!744 = !DILocation(line: 145, column: 13, scope: !743)
!745 = !DILocation(line: 146, column: 18, scope: !743)
!746 = !DILocation(line: 146, column: 26, scope: !743)
!747 = !DILocation(line: 146, column: 24, scope: !743)
!748 = !DILocation(line: 146, column: 9, scope: !743)
!749 = !DILocation(line: 147, column: 45, scope: !743)
!750 = !DILocation(line: 147, column: 29, scope: !743)
!751 = !DILocation(line: 147, column: 9, scope: !743)
!752 = !DILocation(line: 147, column: 15, scope: !743)
!753 = !DILocation(line: 147, column: 27, scope: !743)
!754 = !DILocation(line: 148, column: 9, scope: !743)
!755 = distinct !{!755, !726, !756, !153}
!756 = !DILocation(line: 149, column: 5, scope: !715)
!757 = !DILocation(line: 151, column: 12, scope: !715)
!758 = !DILocation(line: 151, column: 5, scope: !715)
!759 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !760, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!760 = !DISubroutineType(types: !761)
!761 = !{!23}
!762 = !DILocation(line: 158, column: 5, scope: !759)
!763 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !760, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!764 = !DILocation(line: 163, column: 5, scope: !763)
!765 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !760, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!766 = !DILocation(line: 168, column: 13, scope: !765)
!767 = !DILocation(line: 168, column: 20, scope: !765)
!768 = !DILocation(line: 168, column: 5, scope: !765)
!769 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!770 = !DILocation(line: 187, column: 16, scope: !769)
!771 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!772 = !DILocation(line: 188, column: 16, scope: !771)
!773 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!774 = !DILocation(line: 189, column: 16, scope: !773)
!775 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!776 = !DILocation(line: 190, column: 16, scope: !775)
!777 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!778 = !DILocation(line: 191, column: 16, scope: !777)
!779 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!780 = !DILocation(line: 192, column: 16, scope: !779)
!781 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!782 = !DILocation(line: 193, column: 16, scope: !781)
!783 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!784 = !DILocation(line: 194, column: 16, scope: !783)
!785 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!786 = !DILocation(line: 195, column: 16, scope: !785)
!787 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!788 = !DILocation(line: 198, column: 15, scope: !787)
!789 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!790 = !DILocation(line: 199, column: 15, scope: !789)
!791 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!792 = !DILocation(line: 200, column: 15, scope: !791)
!793 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!794 = !DILocation(line: 201, column: 15, scope: !793)
!795 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!796 = !DILocation(line: 202, column: 15, scope: !795)
!797 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!798 = !DILocation(line: 203, column: 15, scope: !797)
!799 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!800 = !DILocation(line: 204, column: 15, scope: !799)
!801 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!802 = !DILocation(line: 205, column: 15, scope: !801)
!803 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!804 = !DILocation(line: 206, column: 15, scope: !803)
