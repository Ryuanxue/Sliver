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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_03_bad() #0 !dbg !52 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i64 @strlen(i8* %1) #7, !dbg !73
  store i64 %call, i64* %dataLen, align 8, !dbg !71
  %2 = load i64, i64* %dataLen, align 8, !dbg !74
  %sub = sub i64 100, %2, !dbg !76
  %cmp = icmp ugt i64 %sub, 1, !dbg !77
  br i1 %cmp, label %if.then, label %if.end18, !dbg !78

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !79
  %4 = load i64, i64* %dataLen, align 8, !dbg !82
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !83
  %5 = load i64, i64* %dataLen, align 8, !dbg !84
  %sub1 = sub i64 100, %5, !dbg !85
  %conv = trunc i64 %sub1 to i32, !dbg !86
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !87
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !88
  %cmp3 = icmp ne i8* %call2, null, !dbg !89
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !90

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !91
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !93
  store i64 %call6, i64* %dataLen, align 8, !dbg !94
  %8 = load i64, i64* %dataLen, align 8, !dbg !95
  %cmp7 = icmp ugt i64 %8, 0, !dbg !97
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !98

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !99
  %10 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub9 = sub i64 %10, 1, !dbg !101
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !99
  %11 = load i8, i8* %arrayidx, align 1, !dbg !99
  %conv10 = sext i8 %11 to i32, !dbg !99
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !102
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !103

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !104
  %13 = load i64, i64* %dataLen, align 8, !dbg !106
  %sub14 = sub i64 %13, 1, !dbg !107
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !104
  store i8 0, i8* %arrayidx15, align 1, !dbg !108
  br label %if.end, !dbg !109

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !110

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !111
  %14 = load i8*, i8** %data, align 8, !dbg !113
  %15 = load i64, i64* %dataLen, align 8, !dbg !114
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !113
  store i8 0, i8* %arrayidx16, align 1, !dbg !115
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !116

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !117, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %n, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !124, metadata !DIExpression()), !dbg !125
  %16 = load i8*, i8** %data, align 8, !dbg !126
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !128
  %cmp20 = icmp eq i32 %call19, 1, !dbg !129
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !130

if.then22:                                        ; preds = %if.end18
  store i32 0, i32* %intVariable, align 4, !dbg !131
  store i32 0, i32* %i, align 4, !dbg !133
  br label %for.cond, !dbg !135

for.cond:                                         ; preds = %for.inc, %if.then22
  %17 = load i32, i32* %i, align 4, !dbg !136
  %18 = load i32, i32* %n, align 4, !dbg !138
  %cmp23 = icmp slt i32 %17, %18, !dbg !139
  br i1 %cmp23, label %for.body, label %for.end, !dbg !140

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !141
  %inc = add nsw i32 %19, 1, !dbg !141
  store i32 %inc, i32* %intVariable, align 4, !dbg !141
  br label %for.inc, !dbg !143

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !144
  %inc25 = add nsw i32 %20, 1, !dbg !144
  store i32 %inc25, i32* %i, align 4, !dbg !144
  br label %for.cond, !dbg !145, !llvm.loop !146

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !149
  call void @printIntLine(i32 %21), !dbg !150
  br label %if.end26, !dbg !151

if.end26:                                         ; preds = %for.end, %if.end18
  ret void, !dbg !152
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
define dso_local void @goodB2G1() #0 !dbg !153 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !156, metadata !DIExpression()), !dbg !157
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !157
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !157
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !158
  store i8* %arraydecay, i8** %data, align 8, !dbg !159
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !160, metadata !DIExpression()), !dbg !164
  %1 = load i8*, i8** %data, align 8, !dbg !165
  %call = call i64 @strlen(i8* %1) #7, !dbg !166
  store i64 %call, i64* %dataLen, align 8, !dbg !164
  %2 = load i64, i64* %dataLen, align 8, !dbg !167
  %sub = sub i64 100, %2, !dbg !169
  %cmp = icmp ugt i64 %sub, 1, !dbg !170
  br i1 %cmp, label %if.then, label %if.end18, !dbg !171

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !172
  %4 = load i64, i64* %dataLen, align 8, !dbg !175
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !176
  %5 = load i64, i64* %dataLen, align 8, !dbg !177
  %sub1 = sub i64 100, %5, !dbg !178
  %conv = trunc i64 %sub1 to i32, !dbg !179
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !180
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !181
  %cmp3 = icmp ne i8* %call2, null, !dbg !182
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !183

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !184
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !186
  store i64 %call6, i64* %dataLen, align 8, !dbg !187
  %8 = load i64, i64* %dataLen, align 8, !dbg !188
  %cmp7 = icmp ugt i64 %8, 0, !dbg !190
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !191

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !192
  %10 = load i64, i64* %dataLen, align 8, !dbg !193
  %sub9 = sub i64 %10, 1, !dbg !194
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !192
  %11 = load i8, i8* %arrayidx, align 1, !dbg !192
  %conv10 = sext i8 %11 to i32, !dbg !192
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !195
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !196

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !197
  %13 = load i64, i64* %dataLen, align 8, !dbg !199
  %sub14 = sub i64 %13, 1, !dbg !200
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !197
  store i8 0, i8* %arrayidx15, align 1, !dbg !201
  br label %if.end, !dbg !202

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !203

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !204
  %14 = load i8*, i8** %data, align 8, !dbg !206
  %15 = load i64, i64* %dataLen, align 8, !dbg !207
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !206
  store i8 0, i8* %arrayidx16, align 1, !dbg !208
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !209

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !210, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %n, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !217, metadata !DIExpression()), !dbg !218
  %16 = load i8*, i8** %data, align 8, !dbg !219
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !221
  %cmp20 = icmp eq i32 %call19, 1, !dbg !222
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !223

if.then22:                                        ; preds = %if.end18
  %17 = load i32, i32* %n, align 4, !dbg !224
  %cmp23 = icmp slt i32 %17, 10000, !dbg !227
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !228

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !229
  store i32 0, i32* %i, align 4, !dbg !231
  br label %for.cond, !dbg !233

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %i, align 4, !dbg !234
  %19 = load i32, i32* %n, align 4, !dbg !236
  %cmp26 = icmp slt i32 %18, %19, !dbg !237
  br i1 %cmp26, label %for.body, label %for.end, !dbg !238

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !239
  %inc = add nsw i32 %20, 1, !dbg !239
  store i32 %inc, i32* %intVariable, align 4, !dbg !239
  br label %for.inc, !dbg !241

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !242
  %inc28 = add nsw i32 %21, 1, !dbg !242
  store i32 %inc28, i32* %i, align 4, !dbg !242
  br label %for.cond, !dbg !243, !llvm.loop !244

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !246
  call void @printIntLine(i32 %22), !dbg !247
  br label %if.end29, !dbg !248

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !249

if.end30:                                         ; preds = %if.end29, %if.end18
  ret void, !dbg !250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !251 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !254, metadata !DIExpression()), !dbg !255
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !255
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !255
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !256
  store i8* %arraydecay, i8** %data, align 8, !dbg !257
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !258, metadata !DIExpression()), !dbg !262
  %1 = load i8*, i8** %data, align 8, !dbg !263
  %call = call i64 @strlen(i8* %1) #7, !dbg !264
  store i64 %call, i64* %dataLen, align 8, !dbg !262
  %2 = load i64, i64* %dataLen, align 8, !dbg !265
  %sub = sub i64 100, %2, !dbg !267
  %cmp = icmp ugt i64 %sub, 1, !dbg !268
  br i1 %cmp, label %if.then, label %if.end18, !dbg !269

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !270
  %4 = load i64, i64* %dataLen, align 8, !dbg !273
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !274
  %5 = load i64, i64* %dataLen, align 8, !dbg !275
  %sub1 = sub i64 100, %5, !dbg !276
  %conv = trunc i64 %sub1 to i32, !dbg !277
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !278
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !279
  %cmp3 = icmp ne i8* %call2, null, !dbg !280
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !281

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !282
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !284
  store i64 %call6, i64* %dataLen, align 8, !dbg !285
  %8 = load i64, i64* %dataLen, align 8, !dbg !286
  %cmp7 = icmp ugt i64 %8, 0, !dbg !288
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !289

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !290
  %10 = load i64, i64* %dataLen, align 8, !dbg !291
  %sub9 = sub i64 %10, 1, !dbg !292
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !290
  %11 = load i8, i8* %arrayidx, align 1, !dbg !290
  %conv10 = sext i8 %11 to i32, !dbg !290
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !293
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !294

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !295
  %13 = load i64, i64* %dataLen, align 8, !dbg !297
  %sub14 = sub i64 %13, 1, !dbg !298
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !295
  store i8 0, i8* %arrayidx15, align 1, !dbg !299
  br label %if.end, !dbg !300

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !301

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !302
  %14 = load i8*, i8** %data, align 8, !dbg !304
  %15 = load i64, i64* %dataLen, align 8, !dbg !305
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !304
  store i8 0, i8* %arrayidx16, align 1, !dbg !306
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !307

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !308, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata i32* %n, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !315, metadata !DIExpression()), !dbg !316
  %16 = load i8*, i8** %data, align 8, !dbg !317
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !319
  %cmp20 = icmp eq i32 %call19, 1, !dbg !320
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !321

if.then22:                                        ; preds = %if.end18
  %17 = load i32, i32* %n, align 4, !dbg !322
  %cmp23 = icmp slt i32 %17, 10000, !dbg !325
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !326

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !327
  store i32 0, i32* %i, align 4, !dbg !329
  br label %for.cond, !dbg !331

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %i, align 4, !dbg !332
  %19 = load i32, i32* %n, align 4, !dbg !334
  %cmp26 = icmp slt i32 %18, %19, !dbg !335
  br i1 %cmp26, label %for.body, label %for.end, !dbg !336

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !337
  %inc = add nsw i32 %20, 1, !dbg !337
  store i32 %inc, i32* %intVariable, align 4, !dbg !337
  br label %for.inc, !dbg !339

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !340
  %inc28 = add nsw i32 %21, 1, !dbg !340
  store i32 %inc28, i32* %i, align 4, !dbg !340
  br label %for.cond, !dbg !341, !llvm.loop !342

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !344
  call void @printIntLine(i32 %22), !dbg !345
  br label %if.end29, !dbg !346

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !347

if.end30:                                         ; preds = %if.end29, %if.end18
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !349 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !352, metadata !DIExpression()), !dbg !353
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !353
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !353
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !354
  store i8* %arraydecay, i8** %data, align 8, !dbg !355
  %1 = load i8*, i8** %data, align 8, !dbg !356
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !359
  call void @llvm.dbg.declare(metadata i32* %i, metadata !360, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %n, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !367, metadata !DIExpression()), !dbg !368
  %2 = load i8*, i8** %data, align 8, !dbg !369
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !371
  %cmp = icmp eq i32 %call1, 1, !dbg !372
  br i1 %cmp, label %if.then, label %if.end, !dbg !373

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !374
  store i32 0, i32* %i, align 4, !dbg !376
  br label %for.cond, !dbg !378

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !379
  %4 = load i32, i32* %n, align 4, !dbg !381
  %cmp2 = icmp slt i32 %3, %4, !dbg !382
  br i1 %cmp2, label %for.body, label %for.end, !dbg !383

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !384
  %inc = add nsw i32 %5, 1, !dbg !384
  store i32 %inc, i32* %intVariable, align 4, !dbg !384
  br label %for.inc, !dbg !386

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !387
  %inc3 = add nsw i32 %6, 1, !dbg !387
  store i32 %inc3, i32* %i, align 4, !dbg !387
  br label %for.cond, !dbg !388, !llvm.loop !389

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !391
  call void @printIntLine(i32 %7), !dbg !392
  br label %if.end, !dbg !393

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !394
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !395 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !399
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !399
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !400
  store i8* %arraydecay, i8** %data, align 8, !dbg !401
  %1 = load i8*, i8** %data, align 8, !dbg !402
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !405
  call void @llvm.dbg.declare(metadata i32* %i, metadata !406, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata i32* %n, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !413, metadata !DIExpression()), !dbg !414
  %2 = load i8*, i8** %data, align 8, !dbg !415
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !417
  %cmp = icmp eq i32 %call1, 1, !dbg !418
  br i1 %cmp, label %if.then, label %if.end, !dbg !419

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !420
  store i32 0, i32* %i, align 4, !dbg !422
  br label %for.cond, !dbg !424

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !425
  %4 = load i32, i32* %n, align 4, !dbg !427
  %cmp2 = icmp slt i32 %3, %4, !dbg !428
  br i1 %cmp2, label %for.body, label %for.end, !dbg !429

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !430
  %inc = add nsw i32 %5, 1, !dbg !430
  store i32 %inc, i32* %intVariable, align 4, !dbg !430
  br label %for.inc, !dbg !432

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !433
  %inc3 = add nsw i32 %6, 1, !dbg !433
  store i32 %inc3, i32* %i, align 4, !dbg !433
  br label %for.cond, !dbg !434, !llvm.loop !435

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !437
  call void @printIntLine(i32 %7), !dbg !438
  br label %if.end, !dbg !439

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_03_good() #0 !dbg !441 {
entry:
  call void @goodB2G1(), !dbg !442
  call void @goodB2G2(), !dbg !443
  call void @goodG2B1(), !dbg !444
  call void @goodG2B2(), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !447 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !452
  %0 = load i8*, i8** %line.addr, align 8, !dbg !453
  %cmp = icmp ne i8* %0, null, !dbg !455
  br i1 %cmp, label %if.then, label %if.end, !dbg !456

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !457
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !459
  br label %if.end, !dbg !460

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !461
  ret void, !dbg !462
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !463 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = load i8*, i8** %line.addr, align 8, !dbg !466
  %cmp = icmp ne i8* %0, null, !dbg !468
  br i1 %cmp, label %if.then, label %if.end, !dbg !469

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !470
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !472
  br label %if.end, !dbg !473

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !475 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !480, metadata !DIExpression()), !dbg !481
  %0 = load i32*, i32** %line.addr, align 8, !dbg !482
  %cmp = icmp ne i32* %0, null, !dbg !484
  br i1 %cmp, label %if.then, label %if.end, !dbg !485

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !486
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !488
  br label %if.end, !dbg !489

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !490
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !491 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !496
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !497
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !499 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !503, metadata !DIExpression()), !dbg !504
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !505
  %conv = sext i16 %0 to i32, !dbg !505
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !506
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !508 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !512, metadata !DIExpression()), !dbg !513
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !514
  %conv = fpext float %0 to double, !dbg !514
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !515
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !517 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !523
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !524
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !526 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !533, metadata !DIExpression()), !dbg !534
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !535
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !536
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !538 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !541, metadata !DIExpression()), !dbg !542
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !543
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !544
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !546 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !549, metadata !DIExpression()), !dbg !550
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !551
  %conv = sext i8 %0 to i32, !dbg !551
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !552
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !554 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !559, metadata !DIExpression()), !dbg !563
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !564
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !565
  store i32 %0, i32* %arrayidx, align 4, !dbg !566
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !567
  store i32 0, i32* %arrayidx1, align 4, !dbg !568
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !569
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !570
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !572 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !575, metadata !DIExpression()), !dbg !576
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !577
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !578
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !580 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !583, metadata !DIExpression()), !dbg !584
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !585
  %conv = zext i8 %0 to i32, !dbg !585
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !586
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !588 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !592, metadata !DIExpression()), !dbg !593
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !594
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !595
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !597 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !607, metadata !DIExpression()), !dbg !608
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !609
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !610
  %1 = load i32, i32* %intOne, align 4, !dbg !610
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !611
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !612
  %3 = load i32, i32* %intTwo, align 4, !dbg !612
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !613
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !615 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !619, metadata !DIExpression()), !dbg !620
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !621, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.declare(metadata i64* %i, metadata !623, metadata !DIExpression()), !dbg !624
  store i64 0, i64* %i, align 8, !dbg !625
  br label %for.cond, !dbg !627

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !628
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !630
  %cmp = icmp ult i64 %0, %1, !dbg !631
  br i1 %cmp, label %for.body, label %for.end, !dbg !632

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !633
  %3 = load i64, i64* %i, align 8, !dbg !635
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !633
  %4 = load i8, i8* %arrayidx, align 1, !dbg !633
  %conv = zext i8 %4 to i32, !dbg !633
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !636
  br label %for.inc, !dbg !637

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !638
  %inc = add i64 %5, 1, !dbg !638
  store i64 %inc, i64* %i, align 8, !dbg !638
  br label %for.cond, !dbg !639, !llvm.loop !640

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !642
  ret void, !dbg !643
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !644 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !647, metadata !DIExpression()), !dbg !648
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !649, metadata !DIExpression()), !dbg !650
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !651, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !653, metadata !DIExpression()), !dbg !654
  store i64 0, i64* %numWritten, align 8, !dbg !654
  br label %while.cond, !dbg !655

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !656
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !657
  %cmp = icmp ult i64 %0, %1, !dbg !658
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !659

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !660
  %2 = load i16*, i16** %call, align 8, !dbg !660
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !660
  %4 = load i64, i64* %numWritten, align 8, !dbg !660
  %mul = mul i64 2, %4, !dbg !660
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !660
  %5 = load i8, i8* %arrayidx, align 1, !dbg !660
  %conv = sext i8 %5 to i32, !dbg !660
  %idxprom = sext i32 %conv to i64, !dbg !660
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !660
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !660
  %conv2 = zext i16 %6 to i32, !dbg !660
  %and = and i32 %conv2, 4096, !dbg !660
  %tobool = icmp ne i32 %and, 0, !dbg !660
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !661

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !662
  %7 = load i16*, i16** %call3, align 8, !dbg !662
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !662
  %9 = load i64, i64* %numWritten, align 8, !dbg !662
  %mul4 = mul i64 2, %9, !dbg !662
  %add = add i64 %mul4, 1, !dbg !662
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !662
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !662
  %conv6 = sext i8 %10 to i32, !dbg !662
  %idxprom7 = sext i32 %conv6 to i64, !dbg !662
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !662
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !662
  %conv9 = zext i16 %11 to i32, !dbg !662
  %and10 = and i32 %conv9, 4096, !dbg !662
  %tobool11 = icmp ne i32 %and10, 0, !dbg !661
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !663
  br i1 %12, label %while.body, label %while.end, !dbg !655

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !664, metadata !DIExpression()), !dbg !666
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !667
  %14 = load i64, i64* %numWritten, align 8, !dbg !668
  %mul12 = mul i64 2, %14, !dbg !669
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !667
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !670
  %15 = load i32, i32* %byte, align 4, !dbg !671
  %conv15 = trunc i32 %15 to i8, !dbg !672
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !673
  %17 = load i64, i64* %numWritten, align 8, !dbg !674
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !673
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !675
  %18 = load i64, i64* %numWritten, align 8, !dbg !676
  %inc = add i64 %18, 1, !dbg !676
  store i64 %inc, i64* %numWritten, align 8, !dbg !676
  br label %while.cond, !dbg !655, !llvm.loop !677

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !679
  ret i64 %19, !dbg !680
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !681 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !684, metadata !DIExpression()), !dbg !685
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !686, metadata !DIExpression()), !dbg !687
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !688, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !690, metadata !DIExpression()), !dbg !691
  store i64 0, i64* %numWritten, align 8, !dbg !691
  br label %while.cond, !dbg !692

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !693
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !694
  %cmp = icmp ult i64 %0, %1, !dbg !695
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !696

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !697
  %3 = load i64, i64* %numWritten, align 8, !dbg !698
  %mul = mul i64 2, %3, !dbg !699
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !697
  %4 = load i32, i32* %arrayidx, align 4, !dbg !697
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !700
  %tobool = icmp ne i32 %call, 0, !dbg !700
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !701

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !702
  %6 = load i64, i64* %numWritten, align 8, !dbg !703
  %mul1 = mul i64 2, %6, !dbg !704
  %add = add i64 %mul1, 1, !dbg !705
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !702
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !702
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !706
  %tobool4 = icmp ne i32 %call3, 0, !dbg !701
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !707
  br i1 %8, label %while.body, label %while.end, !dbg !692

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !708, metadata !DIExpression()), !dbg !710
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !711
  %10 = load i64, i64* %numWritten, align 8, !dbg !712
  %mul5 = mul i64 2, %10, !dbg !713
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !711
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !714
  %11 = load i32, i32* %byte, align 4, !dbg !715
  %conv = trunc i32 %11 to i8, !dbg !716
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !717
  %13 = load i64, i64* %numWritten, align 8, !dbg !718
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !717
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !719
  %14 = load i64, i64* %numWritten, align 8, !dbg !720
  %inc = add i64 %14, 1, !dbg !720
  store i64 %inc, i64* %numWritten, align 8, !dbg !720
  br label %while.cond, !dbg !692, !llvm.loop !721

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !723
  ret i64 %15, !dbg !724
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !725 {
entry:
  ret i32 1, !dbg !728
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !729 {
entry:
  ret i32 0, !dbg !730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !731 {
entry:
  %call = call i32 @rand() #8, !dbg !732
  %rem = srem i32 %call, 2, !dbg !733
  ret i32 %rem, !dbg !734
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !735 {
entry:
  ret void, !dbg !736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !737 {
entry:
  ret void, !dbg !738
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !739 {
entry:
  ret void, !dbg !740
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !741 {
entry:
  ret void, !dbg !742
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !743 {
entry:
  ret void, !dbg !744
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !745 {
entry:
  ret void, !dbg !746
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !747 {
entry:
  ret void, !dbg !748
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !749 {
entry:
  ret void, !dbg !750
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !751 {
entry:
  ret void, !dbg !752
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !753 {
entry:
  ret void, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !755 {
entry:
  ret void, !dbg !756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !757 {
entry:
  ret void, !dbg !758
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !759 {
entry:
  ret void, !dbg !760
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !761 {
entry:
  ret void, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !763 {
entry:
  ret void, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !765 {
entry:
  ret void, !dbg !766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !767 {
entry:
  ret void, !dbg !768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !769 {
entry:
  ret void, !dbg !770
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_980/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_03.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_980/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_03_bad", scope: !45, file: !45, line: 29, type: !53, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 38, type: !68)
!65 = distinct !DILexicalBlock(scope: !66, file: !45, line: 36, column: 9)
!66 = distinct !DILexicalBlock(scope: !67, file: !45, line: 35, column: 5)
!67 = distinct !DILexicalBlock(scope: !52, file: !45, line: 34, column: 8)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 38, column: 20, scope: !65)
!72 = !DILocation(line: 38, column: 37, scope: !65)
!73 = !DILocation(line: 38, column: 30, scope: !65)
!74 = !DILocation(line: 40, column: 21, scope: !75)
!75 = distinct !DILexicalBlock(scope: !65, file: !45, line: 40, column: 17)
!76 = !DILocation(line: 40, column: 20, scope: !75)
!77 = !DILocation(line: 40, column: 29, scope: !75)
!78 = !DILocation(line: 40, column: 17, scope: !65)
!79 = !DILocation(line: 43, column: 27, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !45, line: 43, column: 21)
!81 = distinct !DILexicalBlock(scope: !75, file: !45, line: 41, column: 13)
!82 = !DILocation(line: 43, column: 32, scope: !80)
!83 = !DILocation(line: 43, column: 31, scope: !80)
!84 = !DILocation(line: 43, column: 51, scope: !80)
!85 = !DILocation(line: 43, column: 50, scope: !80)
!86 = !DILocation(line: 43, column: 41, scope: !80)
!87 = !DILocation(line: 43, column: 61, scope: !80)
!88 = !DILocation(line: 43, column: 21, scope: !80)
!89 = !DILocation(line: 43, column: 68, scope: !80)
!90 = !DILocation(line: 43, column: 21, scope: !81)
!91 = !DILocation(line: 47, column: 38, scope: !92)
!92 = distinct !DILexicalBlock(scope: !80, file: !45, line: 44, column: 17)
!93 = !DILocation(line: 47, column: 31, scope: !92)
!94 = !DILocation(line: 47, column: 29, scope: !92)
!95 = !DILocation(line: 48, column: 25, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !45, line: 48, column: 25)
!97 = !DILocation(line: 48, column: 33, scope: !96)
!98 = !DILocation(line: 48, column: 37, scope: !96)
!99 = !DILocation(line: 48, column: 40, scope: !96)
!100 = !DILocation(line: 48, column: 45, scope: !96)
!101 = !DILocation(line: 48, column: 52, scope: !96)
!102 = !DILocation(line: 48, column: 56, scope: !96)
!103 = !DILocation(line: 48, column: 25, scope: !92)
!104 = !DILocation(line: 50, column: 25, scope: !105)
!105 = distinct !DILexicalBlock(scope: !96, file: !45, line: 49, column: 21)
!106 = !DILocation(line: 50, column: 30, scope: !105)
!107 = !DILocation(line: 50, column: 37, scope: !105)
!108 = !DILocation(line: 50, column: 41, scope: !105)
!109 = !DILocation(line: 51, column: 21, scope: !105)
!110 = !DILocation(line: 52, column: 17, scope: !92)
!111 = !DILocation(line: 55, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !80, file: !45, line: 54, column: 17)
!113 = !DILocation(line: 57, column: 21, scope: !112)
!114 = !DILocation(line: 57, column: 26, scope: !112)
!115 = !DILocation(line: 57, column: 35, scope: !112)
!116 = !DILocation(line: 59, column: 13, scope: !81)
!117 = !DILocalVariable(name: "i", scope: !118, file: !45, line: 65, type: !23)
!118 = distinct !DILexicalBlock(scope: !119, file: !45, line: 64, column: 9)
!119 = distinct !DILexicalBlock(scope: !120, file: !45, line: 63, column: 5)
!120 = distinct !DILexicalBlock(scope: !52, file: !45, line: 62, column: 8)
!121 = !DILocation(line: 65, column: 17, scope: !118)
!122 = !DILocalVariable(name: "n", scope: !118, file: !45, line: 65, type: !23)
!123 = !DILocation(line: 65, column: 20, scope: !118)
!124 = !DILocalVariable(name: "intVariable", scope: !118, file: !45, line: 65, type: !23)
!125 = !DILocation(line: 65, column: 23, scope: !118)
!126 = !DILocation(line: 66, column: 24, scope: !127)
!127 = distinct !DILexicalBlock(scope: !118, file: !45, line: 66, column: 17)
!128 = !DILocation(line: 66, column: 17, scope: !127)
!129 = !DILocation(line: 66, column: 40, scope: !127)
!130 = !DILocation(line: 66, column: 17, scope: !118)
!131 = !DILocation(line: 69, column: 29, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !45, line: 67, column: 13)
!133 = !DILocation(line: 70, column: 24, scope: !134)
!134 = distinct !DILexicalBlock(scope: !132, file: !45, line: 70, column: 17)
!135 = !DILocation(line: 70, column: 22, scope: !134)
!136 = !DILocation(line: 70, column: 29, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !45, line: 70, column: 17)
!138 = !DILocation(line: 70, column: 33, scope: !137)
!139 = !DILocation(line: 70, column: 31, scope: !137)
!140 = !DILocation(line: 70, column: 17, scope: !134)
!141 = !DILocation(line: 73, column: 32, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !45, line: 71, column: 17)
!143 = !DILocation(line: 74, column: 17, scope: !142)
!144 = !DILocation(line: 70, column: 37, scope: !137)
!145 = !DILocation(line: 70, column: 17, scope: !137)
!146 = distinct !{!146, !140, !147, !148}
!147 = !DILocation(line: 74, column: 17, scope: !134)
!148 = !{!"llvm.loop.mustprogress"}
!149 = !DILocation(line: 75, column: 30, scope: !132)
!150 = !DILocation(line: 75, column: 17, scope: !132)
!151 = !DILocation(line: 76, column: 13, scope: !132)
!152 = !DILocation(line: 79, column: 1, scope: !52)
!153 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 86, type: !53, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!154 = !DILocalVariable(name: "data", scope: !153, file: !45, line: 88, type: !42)
!155 = !DILocation(line: 88, column: 12, scope: !153)
!156 = !DILocalVariable(name: "dataBuffer", scope: !153, file: !45, line: 89, type: !58)
!157 = !DILocation(line: 89, column: 10, scope: !153)
!158 = !DILocation(line: 90, column: 12, scope: !153)
!159 = !DILocation(line: 90, column: 10, scope: !153)
!160 = !DILocalVariable(name: "dataLen", scope: !161, file: !45, line: 95, type: !68)
!161 = distinct !DILexicalBlock(scope: !162, file: !45, line: 93, column: 9)
!162 = distinct !DILexicalBlock(scope: !163, file: !45, line: 92, column: 5)
!163 = distinct !DILexicalBlock(scope: !153, file: !45, line: 91, column: 8)
!164 = !DILocation(line: 95, column: 20, scope: !161)
!165 = !DILocation(line: 95, column: 37, scope: !161)
!166 = !DILocation(line: 95, column: 30, scope: !161)
!167 = !DILocation(line: 97, column: 21, scope: !168)
!168 = distinct !DILexicalBlock(scope: !161, file: !45, line: 97, column: 17)
!169 = !DILocation(line: 97, column: 20, scope: !168)
!170 = !DILocation(line: 97, column: 29, scope: !168)
!171 = !DILocation(line: 97, column: 17, scope: !161)
!172 = !DILocation(line: 100, column: 27, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !45, line: 100, column: 21)
!174 = distinct !DILexicalBlock(scope: !168, file: !45, line: 98, column: 13)
!175 = !DILocation(line: 100, column: 32, scope: !173)
!176 = !DILocation(line: 100, column: 31, scope: !173)
!177 = !DILocation(line: 100, column: 51, scope: !173)
!178 = !DILocation(line: 100, column: 50, scope: !173)
!179 = !DILocation(line: 100, column: 41, scope: !173)
!180 = !DILocation(line: 100, column: 61, scope: !173)
!181 = !DILocation(line: 100, column: 21, scope: !173)
!182 = !DILocation(line: 100, column: 68, scope: !173)
!183 = !DILocation(line: 100, column: 21, scope: !174)
!184 = !DILocation(line: 104, column: 38, scope: !185)
!185 = distinct !DILexicalBlock(scope: !173, file: !45, line: 101, column: 17)
!186 = !DILocation(line: 104, column: 31, scope: !185)
!187 = !DILocation(line: 104, column: 29, scope: !185)
!188 = !DILocation(line: 105, column: 25, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !45, line: 105, column: 25)
!190 = !DILocation(line: 105, column: 33, scope: !189)
!191 = !DILocation(line: 105, column: 37, scope: !189)
!192 = !DILocation(line: 105, column: 40, scope: !189)
!193 = !DILocation(line: 105, column: 45, scope: !189)
!194 = !DILocation(line: 105, column: 52, scope: !189)
!195 = !DILocation(line: 105, column: 56, scope: !189)
!196 = !DILocation(line: 105, column: 25, scope: !185)
!197 = !DILocation(line: 107, column: 25, scope: !198)
!198 = distinct !DILexicalBlock(scope: !189, file: !45, line: 106, column: 21)
!199 = !DILocation(line: 107, column: 30, scope: !198)
!200 = !DILocation(line: 107, column: 37, scope: !198)
!201 = !DILocation(line: 107, column: 41, scope: !198)
!202 = !DILocation(line: 108, column: 21, scope: !198)
!203 = !DILocation(line: 109, column: 17, scope: !185)
!204 = !DILocation(line: 112, column: 21, scope: !205)
!205 = distinct !DILexicalBlock(scope: !173, file: !45, line: 111, column: 17)
!206 = !DILocation(line: 114, column: 21, scope: !205)
!207 = !DILocation(line: 114, column: 26, scope: !205)
!208 = !DILocation(line: 114, column: 35, scope: !205)
!209 = !DILocation(line: 116, column: 13, scope: !174)
!210 = !DILocalVariable(name: "i", scope: !211, file: !45, line: 127, type: !23)
!211 = distinct !DILexicalBlock(scope: !212, file: !45, line: 126, column: 9)
!212 = distinct !DILexicalBlock(scope: !213, file: !45, line: 125, column: 5)
!213 = distinct !DILexicalBlock(scope: !153, file: !45, line: 119, column: 8)
!214 = !DILocation(line: 127, column: 17, scope: !211)
!215 = !DILocalVariable(name: "n", scope: !211, file: !45, line: 127, type: !23)
!216 = !DILocation(line: 127, column: 20, scope: !211)
!217 = !DILocalVariable(name: "intVariable", scope: !211, file: !45, line: 127, type: !23)
!218 = !DILocation(line: 127, column: 23, scope: !211)
!219 = !DILocation(line: 128, column: 24, scope: !220)
!220 = distinct !DILexicalBlock(scope: !211, file: !45, line: 128, column: 17)
!221 = !DILocation(line: 128, column: 17, scope: !220)
!222 = !DILocation(line: 128, column: 40, scope: !220)
!223 = !DILocation(line: 128, column: 17, scope: !211)
!224 = !DILocation(line: 131, column: 21, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !45, line: 131, column: 21)
!226 = distinct !DILexicalBlock(scope: !220, file: !45, line: 129, column: 13)
!227 = !DILocation(line: 131, column: 23, scope: !225)
!228 = !DILocation(line: 131, column: 21, scope: !226)
!229 = !DILocation(line: 133, column: 33, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !45, line: 132, column: 17)
!231 = !DILocation(line: 134, column: 28, scope: !232)
!232 = distinct !DILexicalBlock(scope: !230, file: !45, line: 134, column: 21)
!233 = !DILocation(line: 134, column: 26, scope: !232)
!234 = !DILocation(line: 134, column: 33, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !45, line: 134, column: 21)
!236 = !DILocation(line: 134, column: 37, scope: !235)
!237 = !DILocation(line: 134, column: 35, scope: !235)
!238 = !DILocation(line: 134, column: 21, scope: !232)
!239 = !DILocation(line: 137, column: 36, scope: !240)
!240 = distinct !DILexicalBlock(scope: !235, file: !45, line: 135, column: 21)
!241 = !DILocation(line: 138, column: 21, scope: !240)
!242 = !DILocation(line: 134, column: 41, scope: !235)
!243 = !DILocation(line: 134, column: 21, scope: !235)
!244 = distinct !{!244, !238, !245, !148}
!245 = !DILocation(line: 138, column: 21, scope: !232)
!246 = !DILocation(line: 139, column: 34, scope: !230)
!247 = !DILocation(line: 139, column: 21, scope: !230)
!248 = !DILocation(line: 140, column: 17, scope: !230)
!249 = !DILocation(line: 141, column: 13, scope: !226)
!250 = !DILocation(line: 144, column: 1, scope: !153)
!251 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 147, type: !53, scopeLine: 148, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!252 = !DILocalVariable(name: "data", scope: !251, file: !45, line: 149, type: !42)
!253 = !DILocation(line: 149, column: 12, scope: !251)
!254 = !DILocalVariable(name: "dataBuffer", scope: !251, file: !45, line: 150, type: !58)
!255 = !DILocation(line: 150, column: 10, scope: !251)
!256 = !DILocation(line: 151, column: 12, scope: !251)
!257 = !DILocation(line: 151, column: 10, scope: !251)
!258 = !DILocalVariable(name: "dataLen", scope: !259, file: !45, line: 156, type: !68)
!259 = distinct !DILexicalBlock(scope: !260, file: !45, line: 154, column: 9)
!260 = distinct !DILexicalBlock(scope: !261, file: !45, line: 153, column: 5)
!261 = distinct !DILexicalBlock(scope: !251, file: !45, line: 152, column: 8)
!262 = !DILocation(line: 156, column: 20, scope: !259)
!263 = !DILocation(line: 156, column: 37, scope: !259)
!264 = !DILocation(line: 156, column: 30, scope: !259)
!265 = !DILocation(line: 158, column: 21, scope: !266)
!266 = distinct !DILexicalBlock(scope: !259, file: !45, line: 158, column: 17)
!267 = !DILocation(line: 158, column: 20, scope: !266)
!268 = !DILocation(line: 158, column: 29, scope: !266)
!269 = !DILocation(line: 158, column: 17, scope: !259)
!270 = !DILocation(line: 161, column: 27, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !45, line: 161, column: 21)
!272 = distinct !DILexicalBlock(scope: !266, file: !45, line: 159, column: 13)
!273 = !DILocation(line: 161, column: 32, scope: !271)
!274 = !DILocation(line: 161, column: 31, scope: !271)
!275 = !DILocation(line: 161, column: 51, scope: !271)
!276 = !DILocation(line: 161, column: 50, scope: !271)
!277 = !DILocation(line: 161, column: 41, scope: !271)
!278 = !DILocation(line: 161, column: 61, scope: !271)
!279 = !DILocation(line: 161, column: 21, scope: !271)
!280 = !DILocation(line: 161, column: 68, scope: !271)
!281 = !DILocation(line: 161, column: 21, scope: !272)
!282 = !DILocation(line: 165, column: 38, scope: !283)
!283 = distinct !DILexicalBlock(scope: !271, file: !45, line: 162, column: 17)
!284 = !DILocation(line: 165, column: 31, scope: !283)
!285 = !DILocation(line: 165, column: 29, scope: !283)
!286 = !DILocation(line: 166, column: 25, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !45, line: 166, column: 25)
!288 = !DILocation(line: 166, column: 33, scope: !287)
!289 = !DILocation(line: 166, column: 37, scope: !287)
!290 = !DILocation(line: 166, column: 40, scope: !287)
!291 = !DILocation(line: 166, column: 45, scope: !287)
!292 = !DILocation(line: 166, column: 52, scope: !287)
!293 = !DILocation(line: 166, column: 56, scope: !287)
!294 = !DILocation(line: 166, column: 25, scope: !283)
!295 = !DILocation(line: 168, column: 25, scope: !296)
!296 = distinct !DILexicalBlock(scope: !287, file: !45, line: 167, column: 21)
!297 = !DILocation(line: 168, column: 30, scope: !296)
!298 = !DILocation(line: 168, column: 37, scope: !296)
!299 = !DILocation(line: 168, column: 41, scope: !296)
!300 = !DILocation(line: 169, column: 21, scope: !296)
!301 = !DILocation(line: 170, column: 17, scope: !283)
!302 = !DILocation(line: 173, column: 21, scope: !303)
!303 = distinct !DILexicalBlock(scope: !271, file: !45, line: 172, column: 17)
!304 = !DILocation(line: 175, column: 21, scope: !303)
!305 = !DILocation(line: 175, column: 26, scope: !303)
!306 = !DILocation(line: 175, column: 35, scope: !303)
!307 = !DILocation(line: 177, column: 13, scope: !272)
!308 = !DILocalVariable(name: "i", scope: !309, file: !45, line: 183, type: !23)
!309 = distinct !DILexicalBlock(scope: !310, file: !45, line: 182, column: 9)
!310 = distinct !DILexicalBlock(scope: !311, file: !45, line: 181, column: 5)
!311 = distinct !DILexicalBlock(scope: !251, file: !45, line: 180, column: 8)
!312 = !DILocation(line: 183, column: 17, scope: !309)
!313 = !DILocalVariable(name: "n", scope: !309, file: !45, line: 183, type: !23)
!314 = !DILocation(line: 183, column: 20, scope: !309)
!315 = !DILocalVariable(name: "intVariable", scope: !309, file: !45, line: 183, type: !23)
!316 = !DILocation(line: 183, column: 23, scope: !309)
!317 = !DILocation(line: 184, column: 24, scope: !318)
!318 = distinct !DILexicalBlock(scope: !309, file: !45, line: 184, column: 17)
!319 = !DILocation(line: 184, column: 17, scope: !318)
!320 = !DILocation(line: 184, column: 40, scope: !318)
!321 = !DILocation(line: 184, column: 17, scope: !309)
!322 = !DILocation(line: 187, column: 21, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !45, line: 187, column: 21)
!324 = distinct !DILexicalBlock(scope: !318, file: !45, line: 185, column: 13)
!325 = !DILocation(line: 187, column: 23, scope: !323)
!326 = !DILocation(line: 187, column: 21, scope: !324)
!327 = !DILocation(line: 189, column: 33, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !45, line: 188, column: 17)
!329 = !DILocation(line: 190, column: 28, scope: !330)
!330 = distinct !DILexicalBlock(scope: !328, file: !45, line: 190, column: 21)
!331 = !DILocation(line: 190, column: 26, scope: !330)
!332 = !DILocation(line: 190, column: 33, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !45, line: 190, column: 21)
!334 = !DILocation(line: 190, column: 37, scope: !333)
!335 = !DILocation(line: 190, column: 35, scope: !333)
!336 = !DILocation(line: 190, column: 21, scope: !330)
!337 = !DILocation(line: 193, column: 36, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !45, line: 191, column: 21)
!339 = !DILocation(line: 194, column: 21, scope: !338)
!340 = !DILocation(line: 190, column: 41, scope: !333)
!341 = !DILocation(line: 190, column: 21, scope: !333)
!342 = distinct !{!342, !336, !343, !148}
!343 = !DILocation(line: 194, column: 21, scope: !330)
!344 = !DILocation(line: 195, column: 34, scope: !328)
!345 = !DILocation(line: 195, column: 21, scope: !328)
!346 = !DILocation(line: 196, column: 17, scope: !328)
!347 = !DILocation(line: 197, column: 13, scope: !324)
!348 = !DILocation(line: 200, column: 1, scope: !251)
!349 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 203, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!350 = !DILocalVariable(name: "data", scope: !349, file: !45, line: 205, type: !42)
!351 = !DILocation(line: 205, column: 12, scope: !349)
!352 = !DILocalVariable(name: "dataBuffer", scope: !349, file: !45, line: 206, type: !58)
!353 = !DILocation(line: 206, column: 10, scope: !349)
!354 = !DILocation(line: 207, column: 12, scope: !349)
!355 = !DILocation(line: 207, column: 10, scope: !349)
!356 = !DILocation(line: 216, column: 16, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !45, line: 214, column: 5)
!358 = distinct !DILexicalBlock(scope: !349, file: !45, line: 208, column: 8)
!359 = !DILocation(line: 216, column: 9, scope: !357)
!360 = !DILocalVariable(name: "i", scope: !361, file: !45, line: 221, type: !23)
!361 = distinct !DILexicalBlock(scope: !362, file: !45, line: 220, column: 9)
!362 = distinct !DILexicalBlock(scope: !363, file: !45, line: 219, column: 5)
!363 = distinct !DILexicalBlock(scope: !349, file: !45, line: 218, column: 8)
!364 = !DILocation(line: 221, column: 17, scope: !361)
!365 = !DILocalVariable(name: "n", scope: !361, file: !45, line: 221, type: !23)
!366 = !DILocation(line: 221, column: 20, scope: !361)
!367 = !DILocalVariable(name: "intVariable", scope: !361, file: !45, line: 221, type: !23)
!368 = !DILocation(line: 221, column: 23, scope: !361)
!369 = !DILocation(line: 222, column: 24, scope: !370)
!370 = distinct !DILexicalBlock(scope: !361, file: !45, line: 222, column: 17)
!371 = !DILocation(line: 222, column: 17, scope: !370)
!372 = !DILocation(line: 222, column: 40, scope: !370)
!373 = !DILocation(line: 222, column: 17, scope: !361)
!374 = !DILocation(line: 225, column: 29, scope: !375)
!375 = distinct !DILexicalBlock(scope: !370, file: !45, line: 223, column: 13)
!376 = !DILocation(line: 226, column: 24, scope: !377)
!377 = distinct !DILexicalBlock(scope: !375, file: !45, line: 226, column: 17)
!378 = !DILocation(line: 226, column: 22, scope: !377)
!379 = !DILocation(line: 226, column: 29, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !45, line: 226, column: 17)
!381 = !DILocation(line: 226, column: 33, scope: !380)
!382 = !DILocation(line: 226, column: 31, scope: !380)
!383 = !DILocation(line: 226, column: 17, scope: !377)
!384 = !DILocation(line: 229, column: 32, scope: !385)
!385 = distinct !DILexicalBlock(scope: !380, file: !45, line: 227, column: 17)
!386 = !DILocation(line: 230, column: 17, scope: !385)
!387 = !DILocation(line: 226, column: 37, scope: !380)
!388 = !DILocation(line: 226, column: 17, scope: !380)
!389 = distinct !{!389, !383, !390, !148}
!390 = !DILocation(line: 230, column: 17, scope: !377)
!391 = !DILocation(line: 231, column: 30, scope: !375)
!392 = !DILocation(line: 231, column: 17, scope: !375)
!393 = !DILocation(line: 232, column: 13, scope: !375)
!394 = !DILocation(line: 235, column: 1, scope: !349)
!395 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 238, type: !53, scopeLine: 239, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!396 = !DILocalVariable(name: "data", scope: !395, file: !45, line: 240, type: !42)
!397 = !DILocation(line: 240, column: 12, scope: !395)
!398 = !DILocalVariable(name: "dataBuffer", scope: !395, file: !45, line: 241, type: !58)
!399 = !DILocation(line: 241, column: 10, scope: !395)
!400 = !DILocation(line: 242, column: 12, scope: !395)
!401 = !DILocation(line: 242, column: 10, scope: !395)
!402 = !DILocation(line: 246, column: 16, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !45, line: 244, column: 5)
!404 = distinct !DILexicalBlock(scope: !395, file: !45, line: 243, column: 8)
!405 = !DILocation(line: 246, column: 9, scope: !403)
!406 = !DILocalVariable(name: "i", scope: !407, file: !45, line: 251, type: !23)
!407 = distinct !DILexicalBlock(scope: !408, file: !45, line: 250, column: 9)
!408 = distinct !DILexicalBlock(scope: !409, file: !45, line: 249, column: 5)
!409 = distinct !DILexicalBlock(scope: !395, file: !45, line: 248, column: 8)
!410 = !DILocation(line: 251, column: 17, scope: !407)
!411 = !DILocalVariable(name: "n", scope: !407, file: !45, line: 251, type: !23)
!412 = !DILocation(line: 251, column: 20, scope: !407)
!413 = !DILocalVariable(name: "intVariable", scope: !407, file: !45, line: 251, type: !23)
!414 = !DILocation(line: 251, column: 23, scope: !407)
!415 = !DILocation(line: 252, column: 24, scope: !416)
!416 = distinct !DILexicalBlock(scope: !407, file: !45, line: 252, column: 17)
!417 = !DILocation(line: 252, column: 17, scope: !416)
!418 = !DILocation(line: 252, column: 40, scope: !416)
!419 = !DILocation(line: 252, column: 17, scope: !407)
!420 = !DILocation(line: 255, column: 29, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !45, line: 253, column: 13)
!422 = !DILocation(line: 256, column: 24, scope: !423)
!423 = distinct !DILexicalBlock(scope: !421, file: !45, line: 256, column: 17)
!424 = !DILocation(line: 256, column: 22, scope: !423)
!425 = !DILocation(line: 256, column: 29, scope: !426)
!426 = distinct !DILexicalBlock(scope: !423, file: !45, line: 256, column: 17)
!427 = !DILocation(line: 256, column: 33, scope: !426)
!428 = !DILocation(line: 256, column: 31, scope: !426)
!429 = !DILocation(line: 256, column: 17, scope: !423)
!430 = !DILocation(line: 259, column: 32, scope: !431)
!431 = distinct !DILexicalBlock(scope: !426, file: !45, line: 257, column: 17)
!432 = !DILocation(line: 260, column: 17, scope: !431)
!433 = !DILocation(line: 256, column: 37, scope: !426)
!434 = !DILocation(line: 256, column: 17, scope: !426)
!435 = distinct !{!435, !429, !436, !148}
!436 = !DILocation(line: 260, column: 17, scope: !423)
!437 = !DILocation(line: 261, column: 30, scope: !421)
!438 = !DILocation(line: 261, column: 17, scope: !421)
!439 = !DILocation(line: 262, column: 13, scope: !421)
!440 = !DILocation(line: 265, column: 1, scope: !395)
!441 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_03_good", scope: !45, file: !45, line: 267, type: !53, scopeLine: 268, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!442 = !DILocation(line: 269, column: 5, scope: !441)
!443 = !DILocation(line: 270, column: 5, scope: !441)
!444 = !DILocation(line: 271, column: 5, scope: !441)
!445 = !DILocation(line: 272, column: 5, scope: !441)
!446 = !DILocation(line: 273, column: 1, scope: !441)
!447 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !448, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !42}
!450 = !DILocalVariable(name: "line", arg: 1, scope: !447, file: !3, line: 11, type: !42)
!451 = !DILocation(line: 11, column: 25, scope: !447)
!452 = !DILocation(line: 13, column: 1, scope: !447)
!453 = !DILocation(line: 14, column: 8, scope: !454)
!454 = distinct !DILexicalBlock(scope: !447, file: !3, line: 14, column: 8)
!455 = !DILocation(line: 14, column: 13, scope: !454)
!456 = !DILocation(line: 14, column: 8, scope: !447)
!457 = !DILocation(line: 16, column: 24, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !3, line: 15, column: 5)
!459 = !DILocation(line: 16, column: 9, scope: !458)
!460 = !DILocation(line: 17, column: 5, scope: !458)
!461 = !DILocation(line: 18, column: 5, scope: !447)
!462 = !DILocation(line: 19, column: 1, scope: !447)
!463 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !448, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!464 = !DILocalVariable(name: "line", arg: 1, scope: !463, file: !3, line: 20, type: !42)
!465 = !DILocation(line: 20, column: 29, scope: !463)
!466 = !DILocation(line: 22, column: 8, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !3, line: 22, column: 8)
!468 = !DILocation(line: 22, column: 13, scope: !467)
!469 = !DILocation(line: 22, column: 8, scope: !463)
!470 = !DILocation(line: 24, column: 24, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !3, line: 23, column: 5)
!472 = !DILocation(line: 24, column: 9, scope: !471)
!473 = !DILocation(line: 25, column: 5, scope: !471)
!474 = !DILocation(line: 26, column: 1, scope: !463)
!475 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !476, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!480 = !DILocalVariable(name: "line", arg: 1, scope: !475, file: !3, line: 27, type: !478)
!481 = !DILocation(line: 27, column: 29, scope: !475)
!482 = !DILocation(line: 29, column: 8, scope: !483)
!483 = distinct !DILexicalBlock(scope: !475, file: !3, line: 29, column: 8)
!484 = !DILocation(line: 29, column: 13, scope: !483)
!485 = !DILocation(line: 29, column: 8, scope: !475)
!486 = !DILocation(line: 31, column: 27, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !3, line: 30, column: 5)
!488 = !DILocation(line: 31, column: 9, scope: !487)
!489 = !DILocation(line: 32, column: 5, scope: !487)
!490 = !DILocation(line: 33, column: 1, scope: !475)
!491 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !492, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !23}
!494 = !DILocalVariable(name: "intNumber", arg: 1, scope: !491, file: !3, line: 35, type: !23)
!495 = !DILocation(line: 35, column: 24, scope: !491)
!496 = !DILocation(line: 37, column: 20, scope: !491)
!497 = !DILocation(line: 37, column: 5, scope: !491)
!498 = !DILocation(line: 38, column: 1, scope: !491)
!499 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !500, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !502}
!502 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!503 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !499, file: !3, line: 40, type: !502)
!504 = !DILocation(line: 40, column: 28, scope: !499)
!505 = !DILocation(line: 42, column: 21, scope: !499)
!506 = !DILocation(line: 42, column: 5, scope: !499)
!507 = !DILocation(line: 43, column: 1, scope: !499)
!508 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !509, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !511}
!511 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!512 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !508, file: !3, line: 45, type: !511)
!513 = !DILocation(line: 45, column: 28, scope: !508)
!514 = !DILocation(line: 47, column: 20, scope: !508)
!515 = !DILocation(line: 47, column: 5, scope: !508)
!516 = !DILocation(line: 48, column: 1, scope: !508)
!517 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !518, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !520}
!520 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!521 = !DILocalVariable(name: "longNumber", arg: 1, scope: !517, file: !3, line: 50, type: !520)
!522 = !DILocation(line: 50, column: 26, scope: !517)
!523 = !DILocation(line: 52, column: 21, scope: !517)
!524 = !DILocation(line: 52, column: 5, scope: !517)
!525 = !DILocation(line: 53, column: 1, scope: !517)
!526 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !527, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !529}
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !530, line: 27, baseType: !531)
!530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !532, line: 44, baseType: !520)
!532 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!533 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !526, file: !3, line: 55, type: !529)
!534 = !DILocation(line: 55, column: 33, scope: !526)
!535 = !DILocation(line: 57, column: 29, scope: !526)
!536 = !DILocation(line: 57, column: 5, scope: !526)
!537 = !DILocation(line: 58, column: 1, scope: !526)
!538 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !539, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !68}
!541 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !538, file: !3, line: 60, type: !68)
!542 = !DILocation(line: 60, column: 29, scope: !538)
!543 = !DILocation(line: 62, column: 21, scope: !538)
!544 = !DILocation(line: 62, column: 5, scope: !538)
!545 = !DILocation(line: 63, column: 1, scope: !538)
!546 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !547, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !43}
!549 = !DILocalVariable(name: "charHex", arg: 1, scope: !546, file: !3, line: 65, type: !43)
!550 = !DILocation(line: 65, column: 29, scope: !546)
!551 = !DILocation(line: 67, column: 22, scope: !546)
!552 = !DILocation(line: 67, column: 5, scope: !546)
!553 = !DILocation(line: 68, column: 1, scope: !546)
!554 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !555, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !479}
!557 = !DILocalVariable(name: "wideChar", arg: 1, scope: !554, file: !3, line: 70, type: !479)
!558 = !DILocation(line: 70, column: 29, scope: !554)
!559 = !DILocalVariable(name: "s", scope: !554, file: !3, line: 74, type: !560)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 64, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 2)
!563 = !DILocation(line: 74, column: 13, scope: !554)
!564 = !DILocation(line: 75, column: 16, scope: !554)
!565 = !DILocation(line: 75, column: 9, scope: !554)
!566 = !DILocation(line: 75, column: 14, scope: !554)
!567 = !DILocation(line: 76, column: 9, scope: !554)
!568 = !DILocation(line: 76, column: 14, scope: !554)
!569 = !DILocation(line: 77, column: 21, scope: !554)
!570 = !DILocation(line: 77, column: 5, scope: !554)
!571 = !DILocation(line: 78, column: 1, scope: !554)
!572 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !573, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !7}
!575 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !572, file: !3, line: 80, type: !7)
!576 = !DILocation(line: 80, column: 33, scope: !572)
!577 = !DILocation(line: 82, column: 20, scope: !572)
!578 = !DILocation(line: 82, column: 5, scope: !572)
!579 = !DILocation(line: 83, column: 1, scope: !572)
!580 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !581, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !25}
!583 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !580, file: !3, line: 85, type: !25)
!584 = !DILocation(line: 85, column: 45, scope: !580)
!585 = !DILocation(line: 87, column: 22, scope: !580)
!586 = !DILocation(line: 87, column: 5, scope: !580)
!587 = !DILocation(line: 88, column: 1, scope: !580)
!588 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !589, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !591}
!591 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!592 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !588, file: !3, line: 90, type: !591)
!593 = !DILocation(line: 90, column: 29, scope: !588)
!594 = !DILocation(line: 92, column: 20, scope: !588)
!595 = !DILocation(line: 92, column: 5, scope: !588)
!596 = !DILocation(line: 93, column: 1, scope: !588)
!597 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !598, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !600}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !602, line: 100, baseType: !603)
!602 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_980/source_code")
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !602, line: 96, size: 64, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !603, file: !602, line: 98, baseType: !23, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !603, file: !602, line: 99, baseType: !23, size: 32, offset: 32)
!607 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !597, file: !3, line: 95, type: !600)
!608 = !DILocation(line: 95, column: 40, scope: !597)
!609 = !DILocation(line: 97, column: 26, scope: !597)
!610 = !DILocation(line: 97, column: 47, scope: !597)
!611 = !DILocation(line: 97, column: 55, scope: !597)
!612 = !DILocation(line: 97, column: 76, scope: !597)
!613 = !DILocation(line: 97, column: 5, scope: !597)
!614 = !DILocation(line: 98, column: 1, scope: !597)
!615 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !616, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !618, !68}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!619 = !DILocalVariable(name: "bytes", arg: 1, scope: !615, file: !3, line: 100, type: !618)
!620 = !DILocation(line: 100, column: 38, scope: !615)
!621 = !DILocalVariable(name: "numBytes", arg: 2, scope: !615, file: !3, line: 100, type: !68)
!622 = !DILocation(line: 100, column: 52, scope: !615)
!623 = !DILocalVariable(name: "i", scope: !615, file: !3, line: 102, type: !68)
!624 = !DILocation(line: 102, column: 12, scope: !615)
!625 = !DILocation(line: 103, column: 12, scope: !626)
!626 = distinct !DILexicalBlock(scope: !615, file: !3, line: 103, column: 5)
!627 = !DILocation(line: 103, column: 10, scope: !626)
!628 = !DILocation(line: 103, column: 17, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !3, line: 103, column: 5)
!630 = !DILocation(line: 103, column: 21, scope: !629)
!631 = !DILocation(line: 103, column: 19, scope: !629)
!632 = !DILocation(line: 103, column: 5, scope: !626)
!633 = !DILocation(line: 105, column: 24, scope: !634)
!634 = distinct !DILexicalBlock(scope: !629, file: !3, line: 104, column: 5)
!635 = !DILocation(line: 105, column: 30, scope: !634)
!636 = !DILocation(line: 105, column: 9, scope: !634)
!637 = !DILocation(line: 106, column: 5, scope: !634)
!638 = !DILocation(line: 103, column: 31, scope: !629)
!639 = !DILocation(line: 103, column: 5, scope: !629)
!640 = distinct !{!640, !632, !641, !148}
!641 = !DILocation(line: 106, column: 5, scope: !626)
!642 = !DILocation(line: 107, column: 5, scope: !615)
!643 = !DILocation(line: 108, column: 1, scope: !615)
!644 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !645, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!645 = !DISubroutineType(types: !646)
!646 = !{!68, !618, !68, !42}
!647 = !DILocalVariable(name: "bytes", arg: 1, scope: !644, file: !3, line: 113, type: !618)
!648 = !DILocation(line: 113, column: 39, scope: !644)
!649 = !DILocalVariable(name: "numBytes", arg: 2, scope: !644, file: !3, line: 113, type: !68)
!650 = !DILocation(line: 113, column: 53, scope: !644)
!651 = !DILocalVariable(name: "hex", arg: 3, scope: !644, file: !3, line: 113, type: !42)
!652 = !DILocation(line: 113, column: 71, scope: !644)
!653 = !DILocalVariable(name: "numWritten", scope: !644, file: !3, line: 115, type: !68)
!654 = !DILocation(line: 115, column: 12, scope: !644)
!655 = !DILocation(line: 121, column: 5, scope: !644)
!656 = !DILocation(line: 121, column: 12, scope: !644)
!657 = !DILocation(line: 121, column: 25, scope: !644)
!658 = !DILocation(line: 121, column: 23, scope: !644)
!659 = !DILocation(line: 121, column: 34, scope: !644)
!660 = !DILocation(line: 121, column: 37, scope: !644)
!661 = !DILocation(line: 121, column: 67, scope: !644)
!662 = !DILocation(line: 121, column: 70, scope: !644)
!663 = !DILocation(line: 0, scope: !644)
!664 = !DILocalVariable(name: "byte", scope: !665, file: !3, line: 123, type: !23)
!665 = distinct !DILexicalBlock(scope: !644, file: !3, line: 122, column: 5)
!666 = !DILocation(line: 123, column: 13, scope: !665)
!667 = !DILocation(line: 124, column: 17, scope: !665)
!668 = !DILocation(line: 124, column: 25, scope: !665)
!669 = !DILocation(line: 124, column: 23, scope: !665)
!670 = !DILocation(line: 124, column: 9, scope: !665)
!671 = !DILocation(line: 125, column: 45, scope: !665)
!672 = !DILocation(line: 125, column: 29, scope: !665)
!673 = !DILocation(line: 125, column: 9, scope: !665)
!674 = !DILocation(line: 125, column: 15, scope: !665)
!675 = !DILocation(line: 125, column: 27, scope: !665)
!676 = !DILocation(line: 126, column: 9, scope: !665)
!677 = distinct !{!677, !655, !678, !148}
!678 = !DILocation(line: 127, column: 5, scope: !644)
!679 = !DILocation(line: 129, column: 12, scope: !644)
!680 = !DILocation(line: 129, column: 5, scope: !644)
!681 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !682, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DISubroutineType(types: !683)
!683 = !{!68, !618, !68, !478}
!684 = !DILocalVariable(name: "bytes", arg: 1, scope: !681, file: !3, line: 135, type: !618)
!685 = !DILocation(line: 135, column: 41, scope: !681)
!686 = !DILocalVariable(name: "numBytes", arg: 2, scope: !681, file: !3, line: 135, type: !68)
!687 = !DILocation(line: 135, column: 55, scope: !681)
!688 = !DILocalVariable(name: "hex", arg: 3, scope: !681, file: !3, line: 135, type: !478)
!689 = !DILocation(line: 135, column: 76, scope: !681)
!690 = !DILocalVariable(name: "numWritten", scope: !681, file: !3, line: 137, type: !68)
!691 = !DILocation(line: 137, column: 12, scope: !681)
!692 = !DILocation(line: 143, column: 5, scope: !681)
!693 = !DILocation(line: 143, column: 12, scope: !681)
!694 = !DILocation(line: 143, column: 25, scope: !681)
!695 = !DILocation(line: 143, column: 23, scope: !681)
!696 = !DILocation(line: 143, column: 34, scope: !681)
!697 = !DILocation(line: 143, column: 47, scope: !681)
!698 = !DILocation(line: 143, column: 55, scope: !681)
!699 = !DILocation(line: 143, column: 53, scope: !681)
!700 = !DILocation(line: 143, column: 37, scope: !681)
!701 = !DILocation(line: 143, column: 68, scope: !681)
!702 = !DILocation(line: 143, column: 81, scope: !681)
!703 = !DILocation(line: 143, column: 89, scope: !681)
!704 = !DILocation(line: 143, column: 87, scope: !681)
!705 = !DILocation(line: 143, column: 100, scope: !681)
!706 = !DILocation(line: 143, column: 71, scope: !681)
!707 = !DILocation(line: 0, scope: !681)
!708 = !DILocalVariable(name: "byte", scope: !709, file: !3, line: 145, type: !23)
!709 = distinct !DILexicalBlock(scope: !681, file: !3, line: 144, column: 5)
!710 = !DILocation(line: 145, column: 13, scope: !709)
!711 = !DILocation(line: 146, column: 18, scope: !709)
!712 = !DILocation(line: 146, column: 26, scope: !709)
!713 = !DILocation(line: 146, column: 24, scope: !709)
!714 = !DILocation(line: 146, column: 9, scope: !709)
!715 = !DILocation(line: 147, column: 45, scope: !709)
!716 = !DILocation(line: 147, column: 29, scope: !709)
!717 = !DILocation(line: 147, column: 9, scope: !709)
!718 = !DILocation(line: 147, column: 15, scope: !709)
!719 = !DILocation(line: 147, column: 27, scope: !709)
!720 = !DILocation(line: 148, column: 9, scope: !709)
!721 = distinct !{!721, !692, !722, !148}
!722 = !DILocation(line: 149, column: 5, scope: !681)
!723 = !DILocation(line: 151, column: 12, scope: !681)
!724 = !DILocation(line: 151, column: 5, scope: !681)
!725 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !726, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!726 = !DISubroutineType(types: !727)
!727 = !{!23}
!728 = !DILocation(line: 158, column: 5, scope: !725)
!729 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !726, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!730 = !DILocation(line: 163, column: 5, scope: !729)
!731 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !726, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!732 = !DILocation(line: 168, column: 13, scope: !731)
!733 = !DILocation(line: 168, column: 20, scope: !731)
!734 = !DILocation(line: 168, column: 5, scope: !731)
!735 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!736 = !DILocation(line: 187, column: 16, scope: !735)
!737 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!738 = !DILocation(line: 188, column: 16, scope: !737)
!739 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!740 = !DILocation(line: 189, column: 16, scope: !739)
!741 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!742 = !DILocation(line: 190, column: 16, scope: !741)
!743 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!744 = !DILocation(line: 191, column: 16, scope: !743)
!745 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!746 = !DILocation(line: 192, column: 16, scope: !745)
!747 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!748 = !DILocation(line: 193, column: 16, scope: !747)
!749 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!750 = !DILocation(line: 194, column: 16, scope: !749)
!751 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!752 = !DILocation(line: 195, column: 16, scope: !751)
!753 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!754 = !DILocation(line: 198, column: 15, scope: !753)
!755 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!756 = !DILocation(line: 199, column: 15, scope: !755)
!757 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!758 = !DILocation(line: 200, column: 15, scope: !757)
!759 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!760 = !DILocation(line: 201, column: 15, scope: !759)
!761 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!762 = !DILocation(line: 202, column: 15, scope: !761)
!763 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!764 = !DILocation(line: 203, column: 15, scope: !763)
!765 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!766 = !DILocation(line: 204, column: 15, scope: !765)
!767 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!768 = !DILocation(line: 205, column: 15, scope: !767)
!769 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!770 = !DILocation(line: 206, column: 15, scope: !769)
