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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_15_bad() #0 !dbg !52 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !69
  %1 = load i8*, i8** %data, align 8, !dbg !70
  %call = call i64 @strlen(i8* %1) #7, !dbg !71
  store i64 %call, i64* %dataLen, align 8, !dbg !69
  %2 = load i64, i64* %dataLen, align 8, !dbg !72
  %sub = sub i64 100, %2, !dbg !74
  %cmp = icmp ugt i64 %sub, 1, !dbg !75
  br i1 %cmp, label %if.then, label %if.end18, !dbg !76

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !77
  %4 = load i64, i64* %dataLen, align 8, !dbg !80
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !81
  %5 = load i64, i64* %dataLen, align 8, !dbg !82
  %sub1 = sub i64 100, %5, !dbg !83
  %conv = trunc i64 %sub1 to i32, !dbg !84
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !85
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !86
  %cmp3 = icmp ne i8* %call2, null, !dbg !87
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !88

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !89
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !91
  store i64 %call6, i64* %dataLen, align 8, !dbg !92
  %8 = load i64, i64* %dataLen, align 8, !dbg !93
  %cmp7 = icmp ugt i64 %8, 0, !dbg !95
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !96

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !97
  %10 = load i64, i64* %dataLen, align 8, !dbg !98
  %sub9 = sub i64 %10, 1, !dbg !99
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !97
  %11 = load i8, i8* %arrayidx, align 1, !dbg !97
  %conv10 = sext i8 %11 to i32, !dbg !97
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !100
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !101

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !102
  %13 = load i64, i64* %dataLen, align 8, !dbg !104
  %sub14 = sub i64 %13, 1, !dbg !105
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !102
  store i8 0, i8* %arrayidx15, align 1, !dbg !106
  br label %if.end, !dbg !107

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !108

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !109
  %14 = load i8*, i8** %data, align 8, !dbg !111
  %15 = load i64, i64* %dataLen, align 8, !dbg !112
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !111
  store i8 0, i8* %arrayidx16, align 1, !dbg !113
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !114

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !115, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %n, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !120, metadata !DIExpression()), !dbg !121
  %16 = load i8*, i8** %data, align 8, !dbg !122
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !124
  %cmp20 = icmp eq i32 %call19, 1, !dbg !125
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !126

if.then22:                                        ; preds = %if.end18
  store i32 0, i32* %intVariable, align 4, !dbg !127
  store i32 0, i32* %i, align 4, !dbg !129
  br label %for.cond, !dbg !131

for.cond:                                         ; preds = %for.inc, %if.then22
  %17 = load i32, i32* %i, align 4, !dbg !132
  %18 = load i32, i32* %n, align 4, !dbg !134
  %cmp23 = icmp slt i32 %17, %18, !dbg !135
  br i1 %cmp23, label %for.body, label %for.end, !dbg !136

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !137
  %inc = add nsw i32 %19, 1, !dbg !137
  store i32 %inc, i32* %intVariable, align 4, !dbg !137
  br label %for.inc, !dbg !139

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !140
  %inc25 = add nsw i32 %20, 1, !dbg !140
  store i32 %inc25, i32* %i, align 4, !dbg !140
  br label %for.cond, !dbg !141, !llvm.loop !142

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !145
  call void @printIntLine(i32 %21), !dbg !146
  br label %if.end26, !dbg !147

if.end26:                                         ; preds = %for.end, %if.end18
  ret void, !dbg !148
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
define dso_local void @goodB2G1() #0 !dbg !149 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !153
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !153
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !154
  store i8* %arraydecay, i8** %data, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !156, metadata !DIExpression()), !dbg !158
  %1 = load i8*, i8** %data, align 8, !dbg !159
  %call = call i64 @strlen(i8* %1) #7, !dbg !160
  store i64 %call, i64* %dataLen, align 8, !dbg !158
  %2 = load i64, i64* %dataLen, align 8, !dbg !161
  %sub = sub i64 100, %2, !dbg !163
  %cmp = icmp ugt i64 %sub, 1, !dbg !164
  br i1 %cmp, label %if.then, label %if.end18, !dbg !165

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !166
  %4 = load i64, i64* %dataLen, align 8, !dbg !169
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !170
  %5 = load i64, i64* %dataLen, align 8, !dbg !171
  %sub1 = sub i64 100, %5, !dbg !172
  %conv = trunc i64 %sub1 to i32, !dbg !173
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !174
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !175
  %cmp3 = icmp ne i8* %call2, null, !dbg !176
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !177

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !178
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !180
  store i64 %call6, i64* %dataLen, align 8, !dbg !181
  %8 = load i64, i64* %dataLen, align 8, !dbg !182
  %cmp7 = icmp ugt i64 %8, 0, !dbg !184
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !185

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !186
  %10 = load i64, i64* %dataLen, align 8, !dbg !187
  %sub9 = sub i64 %10, 1, !dbg !188
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !186
  %11 = load i8, i8* %arrayidx, align 1, !dbg !186
  %conv10 = sext i8 %11 to i32, !dbg !186
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !189
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !190

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !191
  %13 = load i64, i64* %dataLen, align 8, !dbg !193
  %sub14 = sub i64 %13, 1, !dbg !194
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !191
  store i8 0, i8* %arrayidx15, align 1, !dbg !195
  br label %if.end, !dbg !196

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !197

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !198
  %14 = load i8*, i8** %data, align 8, !dbg !200
  %15 = load i64, i64* %dataLen, align 8, !dbg !201
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !200
  store i8 0, i8* %arrayidx16, align 1, !dbg !202
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !203

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !204, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %n, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !209, metadata !DIExpression()), !dbg !210
  %16 = load i8*, i8** %data, align 8, !dbg !211
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !213
  %cmp20 = icmp eq i32 %call19, 1, !dbg !214
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !215

if.then22:                                        ; preds = %if.end18
  %17 = load i32, i32* %n, align 4, !dbg !216
  %cmp23 = icmp slt i32 %17, 10000, !dbg !219
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !220

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !221
  store i32 0, i32* %i, align 4, !dbg !223
  br label %for.cond, !dbg !225

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %i, align 4, !dbg !226
  %19 = load i32, i32* %n, align 4, !dbg !228
  %cmp26 = icmp slt i32 %18, %19, !dbg !229
  br i1 %cmp26, label %for.body, label %for.end, !dbg !230

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !231
  %inc = add nsw i32 %20, 1, !dbg !231
  store i32 %inc, i32* %intVariable, align 4, !dbg !231
  br label %for.inc, !dbg !233

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !234
  %inc28 = add nsw i32 %21, 1, !dbg !234
  store i32 %inc28, i32* %i, align 4, !dbg !234
  br label %for.cond, !dbg !235, !llvm.loop !236

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !238
  call void @printIntLine(i32 %22), !dbg !239
  br label %if.end29, !dbg !240

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !241

if.end30:                                         ; preds = %if.end29, %if.end18
  ret void, !dbg !242
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !243 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !247
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !247
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !248
  store i8* %arraydecay, i8** %data, align 8, !dbg !249
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !250, metadata !DIExpression()), !dbg !252
  %1 = load i8*, i8** %data, align 8, !dbg !253
  %call = call i64 @strlen(i8* %1) #7, !dbg !254
  store i64 %call, i64* %dataLen, align 8, !dbg !252
  %2 = load i64, i64* %dataLen, align 8, !dbg !255
  %sub = sub i64 100, %2, !dbg !257
  %cmp = icmp ugt i64 %sub, 1, !dbg !258
  br i1 %cmp, label %if.then, label %if.end18, !dbg !259

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !260
  %4 = load i64, i64* %dataLen, align 8, !dbg !263
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !264
  %5 = load i64, i64* %dataLen, align 8, !dbg !265
  %sub1 = sub i64 100, %5, !dbg !266
  %conv = trunc i64 %sub1 to i32, !dbg !267
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !268
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !269
  %cmp3 = icmp ne i8* %call2, null, !dbg !270
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !271

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !272
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !274
  store i64 %call6, i64* %dataLen, align 8, !dbg !275
  %8 = load i64, i64* %dataLen, align 8, !dbg !276
  %cmp7 = icmp ugt i64 %8, 0, !dbg !278
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !279

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !280
  %10 = load i64, i64* %dataLen, align 8, !dbg !281
  %sub9 = sub i64 %10, 1, !dbg !282
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !280
  %11 = load i8, i8* %arrayidx, align 1, !dbg !280
  %conv10 = sext i8 %11 to i32, !dbg !280
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !283
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !284

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !285
  %13 = load i64, i64* %dataLen, align 8, !dbg !287
  %sub14 = sub i64 %13, 1, !dbg !288
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !285
  store i8 0, i8* %arrayidx15, align 1, !dbg !289
  br label %if.end, !dbg !290

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !291

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !292
  %14 = load i8*, i8** %data, align 8, !dbg !294
  %15 = load i64, i64* %dataLen, align 8, !dbg !295
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !294
  store i8 0, i8* %arrayidx16, align 1, !dbg !296
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !297

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !298, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %n, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !303, metadata !DIExpression()), !dbg !304
  %16 = load i8*, i8** %data, align 8, !dbg !305
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !307
  %cmp20 = icmp eq i32 %call19, 1, !dbg !308
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !309

if.then22:                                        ; preds = %if.end18
  %17 = load i32, i32* %n, align 4, !dbg !310
  %cmp23 = icmp slt i32 %17, 10000, !dbg !313
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !314

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !315
  store i32 0, i32* %i, align 4, !dbg !317
  br label %for.cond, !dbg !319

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %i, align 4, !dbg !320
  %19 = load i32, i32* %n, align 4, !dbg !322
  %cmp26 = icmp slt i32 %18, %19, !dbg !323
  br i1 %cmp26, label %for.body, label %for.end, !dbg !324

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !325
  %inc = add nsw i32 %20, 1, !dbg !325
  store i32 %inc, i32* %intVariable, align 4, !dbg !325
  br label %for.inc, !dbg !327

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !328
  %inc28 = add nsw i32 %21, 1, !dbg !328
  store i32 %inc28, i32* %i, align 4, !dbg !328
  br label %for.cond, !dbg !329, !llvm.loop !330

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !332
  call void @printIntLine(i32 %22), !dbg !333
  br label %if.end29, !dbg !334

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !335

if.end30:                                         ; preds = %if.end29, %if.end18
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !337 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !341
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !341
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !342
  store i8* %arraydecay, i8** %data, align 8, !dbg !343
  %1 = load i8*, i8** %data, align 8, !dbg !344
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !345
  call void @llvm.dbg.declare(metadata i32* %i, metadata !346, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata i32* %n, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !351, metadata !DIExpression()), !dbg !352
  %2 = load i8*, i8** %data, align 8, !dbg !353
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !355
  %cmp = icmp eq i32 %call1, 1, !dbg !356
  br i1 %cmp, label %if.then, label %if.end, !dbg !357

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !358
  store i32 0, i32* %i, align 4, !dbg !360
  br label %for.cond, !dbg !362

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !363
  %4 = load i32, i32* %n, align 4, !dbg !365
  %cmp2 = icmp slt i32 %3, %4, !dbg !366
  br i1 %cmp2, label %for.body, label %for.end, !dbg !367

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !368
  %inc = add nsw i32 %5, 1, !dbg !368
  store i32 %inc, i32* %intVariable, align 4, !dbg !368
  br label %for.inc, !dbg !370

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !371
  %inc3 = add nsw i32 %6, 1, !dbg !371
  store i32 %inc3, i32* %i, align 4, !dbg !371
  br label %for.cond, !dbg !372, !llvm.loop !373

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !375
  call void @printIntLine(i32 %7), !dbg !376
  br label %if.end, !dbg !377

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !378
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !379 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !383
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !383
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !384
  store i8* %arraydecay, i8** %data, align 8, !dbg !385
  %1 = load i8*, i8** %data, align 8, !dbg !386
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !387
  call void @llvm.dbg.declare(metadata i32* %i, metadata !388, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata i32* %n, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !393, metadata !DIExpression()), !dbg !394
  %2 = load i8*, i8** %data, align 8, !dbg !395
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #8, !dbg !397
  %cmp = icmp eq i32 %call1, 1, !dbg !398
  br i1 %cmp, label %if.then, label %if.end, !dbg !399

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !400
  store i32 0, i32* %i, align 4, !dbg !402
  br label %for.cond, !dbg !404

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !405
  %4 = load i32, i32* %n, align 4, !dbg !407
  %cmp2 = icmp slt i32 %3, %4, !dbg !408
  br i1 %cmp2, label %for.body, label %for.end, !dbg !409

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !410
  %inc = add nsw i32 %5, 1, !dbg !410
  store i32 %inc, i32* %intVariable, align 4, !dbg !410
  br label %for.inc, !dbg !412

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !413
  %inc3 = add nsw i32 %6, 1, !dbg !413
  store i32 %inc3, i32* %i, align 4, !dbg !413
  br label %for.cond, !dbg !414, !llvm.loop !415

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !417
  call void @printIntLine(i32 %7), !dbg !418
  br label %if.end, !dbg !419

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_15_good() #0 !dbg !421 {
entry:
  call void @goodB2G1(), !dbg !422
  call void @goodB2G2(), !dbg !423
  call void @goodG2B1(), !dbg !424
  call void @goodG2B2(), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !427 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !432
  %0 = load i8*, i8** %line.addr, align 8, !dbg !433
  %cmp = icmp ne i8* %0, null, !dbg !435
  br i1 %cmp, label %if.then, label %if.end, !dbg !436

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !437
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !439
  br label %if.end, !dbg !440

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.5, i64 0, i64 0)), !dbg !441
  ret void, !dbg !442
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !443 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !444, metadata !DIExpression()), !dbg !445
  %0 = load i8*, i8** %line.addr, align 8, !dbg !446
  %cmp = icmp ne i8* %0, null, !dbg !448
  br i1 %cmp, label %if.then, label %if.end, !dbg !449

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !450
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i8* %1), !dbg !452
  br label %if.end, !dbg !453

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !455 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !460, metadata !DIExpression()), !dbg !461
  %0 = load i32*, i32** %line.addr, align 8, !dbg !462
  %cmp = icmp ne i32* %0, null, !dbg !464
  br i1 %cmp, label %if.then, label %if.end, !dbg !465

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !466
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.6, i64 0, i64 0), i32* %1), !dbg !468
  br label %if.end, !dbg !469

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !470
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !471 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !476
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !477
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !479 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !483, metadata !DIExpression()), !dbg !484
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !485
  %conv = sext i16 %0 to i32, !dbg !485
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !486
  ret void, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !488 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !492, metadata !DIExpression()), !dbg !493
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !494
  %conv = fpext float %0 to double, !dbg !494
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !495
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !497 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !501, metadata !DIExpression()), !dbg !502
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !503
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !504
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !506 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !513, metadata !DIExpression()), !dbg !514
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !515
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !516
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !518 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !523
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !524
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !526 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !529, metadata !DIExpression()), !dbg !530
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !531
  %conv = sext i8 %0 to i32, !dbg !531
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !532
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !534 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !539, metadata !DIExpression()), !dbg !543
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !544
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !545
  store i32 %0, i32* %arrayidx, align 4, !dbg !546
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !547
  store i32 0, i32* %arrayidx1, align 4, !dbg !548
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !549
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !550
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !552 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !555, metadata !DIExpression()), !dbg !556
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !557
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !558
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !560 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !563, metadata !DIExpression()), !dbg !564
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !565
  %conv = zext i8 %0 to i32, !dbg !565
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !566
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !568 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !572, metadata !DIExpression()), !dbg !573
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !574
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !575
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !577 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !587, metadata !DIExpression()), !dbg !588
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !589
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !590
  %1 = load i32, i32* %intOne, align 4, !dbg !590
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !591
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !592
  %3 = load i32, i32* %intTwo, align 4, !dbg !592
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !593
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !595 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !599, metadata !DIExpression()), !dbg !600
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !601, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.declare(metadata i64* %i, metadata !603, metadata !DIExpression()), !dbg !604
  store i64 0, i64* %i, align 8, !dbg !605
  br label %for.cond, !dbg !607

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !608
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !610
  %cmp = icmp ult i64 %0, %1, !dbg !611
  br i1 %cmp, label %for.body, label %for.end, !dbg !612

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !613
  %3 = load i64, i64* %i, align 8, !dbg !615
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !613
  %4 = load i8, i8* %arrayidx, align 1, !dbg !613
  %conv = zext i8 %4 to i32, !dbg !613
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !616
  br label %for.inc, !dbg !617

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !618
  %inc = add i64 %5, 1, !dbg !618
  store i64 %inc, i64* %i, align 8, !dbg !618
  br label %for.cond, !dbg !619, !llvm.loop !620

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !622
  ret void, !dbg !623
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !624 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !627, metadata !DIExpression()), !dbg !628
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !629, metadata !DIExpression()), !dbg !630
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !631, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !633, metadata !DIExpression()), !dbg !634
  store i64 0, i64* %numWritten, align 8, !dbg !634
  br label %while.cond, !dbg !635

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !636
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !637
  %cmp = icmp ult i64 %0, %1, !dbg !638
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !639

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !640
  %2 = load i16*, i16** %call, align 8, !dbg !640
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !640
  %4 = load i64, i64* %numWritten, align 8, !dbg !640
  %mul = mul i64 2, %4, !dbg !640
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !640
  %5 = load i8, i8* %arrayidx, align 1, !dbg !640
  %conv = sext i8 %5 to i32, !dbg !640
  %idxprom = sext i32 %conv to i64, !dbg !640
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !640
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !640
  %conv2 = zext i16 %6 to i32, !dbg !640
  %and = and i32 %conv2, 4096, !dbg !640
  %tobool = icmp ne i32 %and, 0, !dbg !640
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !641

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !642
  %7 = load i16*, i16** %call3, align 8, !dbg !642
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !642
  %9 = load i64, i64* %numWritten, align 8, !dbg !642
  %mul4 = mul i64 2, %9, !dbg !642
  %add = add i64 %mul4, 1, !dbg !642
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !642
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !642
  %conv6 = sext i8 %10 to i32, !dbg !642
  %idxprom7 = sext i32 %conv6 to i64, !dbg !642
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !642
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !642
  %conv9 = zext i16 %11 to i32, !dbg !642
  %and10 = and i32 %conv9, 4096, !dbg !642
  %tobool11 = icmp ne i32 %and10, 0, !dbg !641
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !643
  br i1 %12, label %while.body, label %while.end, !dbg !635

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !644, metadata !DIExpression()), !dbg !646
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !647
  %14 = load i64, i64* %numWritten, align 8, !dbg !648
  %mul12 = mul i64 2, %14, !dbg !649
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !647
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !650
  %15 = load i32, i32* %byte, align 4, !dbg !651
  %conv15 = trunc i32 %15 to i8, !dbg !652
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !653
  %17 = load i64, i64* %numWritten, align 8, !dbg !654
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !653
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !655
  %18 = load i64, i64* %numWritten, align 8, !dbg !656
  %inc = add i64 %18, 1, !dbg !656
  store i64 %inc, i64* %numWritten, align 8, !dbg !656
  br label %while.cond, !dbg !635, !llvm.loop !657

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !659
  ret i64 %19, !dbg !660
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !661 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !664, metadata !DIExpression()), !dbg !665
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !666, metadata !DIExpression()), !dbg !667
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !670, metadata !DIExpression()), !dbg !671
  store i64 0, i64* %numWritten, align 8, !dbg !671
  br label %while.cond, !dbg !672

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !673
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !674
  %cmp = icmp ult i64 %0, %1, !dbg !675
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !676

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !677
  %3 = load i64, i64* %numWritten, align 8, !dbg !678
  %mul = mul i64 2, %3, !dbg !679
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !677
  %4 = load i32, i32* %arrayidx, align 4, !dbg !677
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !680
  %tobool = icmp ne i32 %call, 0, !dbg !680
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !681

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !682
  %6 = load i64, i64* %numWritten, align 8, !dbg !683
  %mul1 = mul i64 2, %6, !dbg !684
  %add = add i64 %mul1, 1, !dbg !685
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !682
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !682
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !686
  %tobool4 = icmp ne i32 %call3, 0, !dbg !681
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !687
  br i1 %8, label %while.body, label %while.end, !dbg !672

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !688, metadata !DIExpression()), !dbg !690
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !691
  %10 = load i64, i64* %numWritten, align 8, !dbg !692
  %mul5 = mul i64 2, %10, !dbg !693
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !691
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !694
  %11 = load i32, i32* %byte, align 4, !dbg !695
  %conv = trunc i32 %11 to i8, !dbg !696
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !697
  %13 = load i64, i64* %numWritten, align 8, !dbg !698
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !697
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !699
  %14 = load i64, i64* %numWritten, align 8, !dbg !700
  %inc = add i64 %14, 1, !dbg !700
  store i64 %inc, i64* %numWritten, align 8, !dbg !700
  br label %while.cond, !dbg !672, !llvm.loop !701

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !703
  ret i64 %15, !dbg !704
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !705 {
entry:
  ret i32 1, !dbg !708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !709 {
entry:
  ret i32 0, !dbg !710
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !711 {
entry:
  %call = call i32 @rand() #8, !dbg !712
  %rem = srem i32 %call, 2, !dbg !713
  ret i32 %rem, !dbg !714
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !715 {
entry:
  ret void, !dbg !716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !717 {
entry:
  ret void, !dbg !718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !719 {
entry:
  ret void, !dbg !720
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !721 {
entry:
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !723 {
entry:
  ret void, !dbg !724
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !725 {
entry:
  ret void, !dbg !726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !727 {
entry:
  ret void, !dbg !728
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !729 {
entry:
  ret void, !dbg !730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !731 {
entry:
  ret void, !dbg !732
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !733 {
entry:
  ret void, !dbg !734
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !735 {
entry:
  ret void, !dbg !736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !737 {
entry:
  ret void, !dbg !738
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !739 {
entry:
  ret void, !dbg !740
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !741 {
entry:
  ret void, !dbg !742
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !743 {
entry:
  ret void, !dbg !744
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !745 {
entry:
  ret void, !dbg !746
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !747 {
entry:
  ret void, !dbg !748
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !749 {
entry:
  ret void, !dbg !750
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_992/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_992/source_code")
!46 = !{}
!47 = !{!23, !22}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_15_bad", scope: !45, file: !45, line: 29, type: !53, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 39, type: !66)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 37, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 39, column: 16, scope: !65)
!70 = !DILocation(line: 39, column: 33, scope: !65)
!71 = !DILocation(line: 39, column: 26, scope: !65)
!72 = !DILocation(line: 41, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !65, file: !45, line: 41, column: 13)
!74 = !DILocation(line: 41, column: 16, scope: !73)
!75 = !DILocation(line: 41, column: 25, scope: !73)
!76 = !DILocation(line: 41, column: 13, scope: !65)
!77 = !DILocation(line: 44, column: 23, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !45, line: 44, column: 17)
!79 = distinct !DILexicalBlock(scope: !73, file: !45, line: 42, column: 9)
!80 = !DILocation(line: 44, column: 28, scope: !78)
!81 = !DILocation(line: 44, column: 27, scope: !78)
!82 = !DILocation(line: 44, column: 47, scope: !78)
!83 = !DILocation(line: 44, column: 46, scope: !78)
!84 = !DILocation(line: 44, column: 37, scope: !78)
!85 = !DILocation(line: 44, column: 57, scope: !78)
!86 = !DILocation(line: 44, column: 17, scope: !78)
!87 = !DILocation(line: 44, column: 64, scope: !78)
!88 = !DILocation(line: 44, column: 17, scope: !79)
!89 = !DILocation(line: 48, column: 34, scope: !90)
!90 = distinct !DILexicalBlock(scope: !78, file: !45, line: 45, column: 13)
!91 = !DILocation(line: 48, column: 27, scope: !90)
!92 = !DILocation(line: 48, column: 25, scope: !90)
!93 = !DILocation(line: 49, column: 21, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !45, line: 49, column: 21)
!95 = !DILocation(line: 49, column: 29, scope: !94)
!96 = !DILocation(line: 49, column: 33, scope: !94)
!97 = !DILocation(line: 49, column: 36, scope: !94)
!98 = !DILocation(line: 49, column: 41, scope: !94)
!99 = !DILocation(line: 49, column: 48, scope: !94)
!100 = !DILocation(line: 49, column: 52, scope: !94)
!101 = !DILocation(line: 49, column: 21, scope: !90)
!102 = !DILocation(line: 51, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !94, file: !45, line: 50, column: 17)
!104 = !DILocation(line: 51, column: 26, scope: !103)
!105 = !DILocation(line: 51, column: 33, scope: !103)
!106 = !DILocation(line: 51, column: 37, scope: !103)
!107 = !DILocation(line: 52, column: 17, scope: !103)
!108 = !DILocation(line: 53, column: 13, scope: !90)
!109 = !DILocation(line: 56, column: 17, scope: !110)
!110 = distinct !DILexicalBlock(scope: !78, file: !45, line: 55, column: 13)
!111 = !DILocation(line: 58, column: 17, scope: !110)
!112 = !DILocation(line: 58, column: 22, scope: !110)
!113 = !DILocation(line: 58, column: 31, scope: !110)
!114 = !DILocation(line: 60, column: 9, scope: !79)
!115 = !DILocalVariable(name: "i", scope: !116, file: !45, line: 72, type: !23)
!116 = distinct !DILexicalBlock(scope: !52, file: !45, line: 71, column: 5)
!117 = !DILocation(line: 72, column: 13, scope: !116)
!118 = !DILocalVariable(name: "n", scope: !116, file: !45, line: 72, type: !23)
!119 = !DILocation(line: 72, column: 16, scope: !116)
!120 = !DILocalVariable(name: "intVariable", scope: !116, file: !45, line: 72, type: !23)
!121 = !DILocation(line: 72, column: 19, scope: !116)
!122 = !DILocation(line: 73, column: 20, scope: !123)
!123 = distinct !DILexicalBlock(scope: !116, file: !45, line: 73, column: 13)
!124 = !DILocation(line: 73, column: 13, scope: !123)
!125 = !DILocation(line: 73, column: 36, scope: !123)
!126 = !DILocation(line: 73, column: 13, scope: !116)
!127 = !DILocation(line: 76, column: 25, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !45, line: 74, column: 9)
!129 = !DILocation(line: 77, column: 20, scope: !130)
!130 = distinct !DILexicalBlock(scope: !128, file: !45, line: 77, column: 13)
!131 = !DILocation(line: 77, column: 18, scope: !130)
!132 = !DILocation(line: 77, column: 25, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !45, line: 77, column: 13)
!134 = !DILocation(line: 77, column: 29, scope: !133)
!135 = !DILocation(line: 77, column: 27, scope: !133)
!136 = !DILocation(line: 77, column: 13, scope: !130)
!137 = !DILocation(line: 80, column: 28, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !45, line: 78, column: 13)
!139 = !DILocation(line: 81, column: 13, scope: !138)
!140 = !DILocation(line: 77, column: 33, scope: !133)
!141 = !DILocation(line: 77, column: 13, scope: !133)
!142 = distinct !{!142, !136, !143, !144}
!143 = !DILocation(line: 81, column: 13, scope: !130)
!144 = !{!"llvm.loop.mustprogress"}
!145 = !DILocation(line: 82, column: 26, scope: !128)
!146 = !DILocation(line: 82, column: 13, scope: !128)
!147 = !DILocation(line: 83, column: 9, scope: !128)
!148 = !DILocation(line: 91, column: 1, scope: !52)
!149 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 98, type: !53, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!150 = !DILocalVariable(name: "data", scope: !149, file: !45, line: 100, type: !42)
!151 = !DILocation(line: 100, column: 12, scope: !149)
!152 = !DILocalVariable(name: "dataBuffer", scope: !149, file: !45, line: 101, type: !58)
!153 = !DILocation(line: 101, column: 10, scope: !149)
!154 = !DILocation(line: 102, column: 12, scope: !149)
!155 = !DILocation(line: 102, column: 10, scope: !149)
!156 = !DILocalVariable(name: "dataLen", scope: !157, file: !45, line: 108, type: !66)
!157 = distinct !DILexicalBlock(scope: !149, file: !45, line: 106, column: 5)
!158 = !DILocation(line: 108, column: 16, scope: !157)
!159 = !DILocation(line: 108, column: 33, scope: !157)
!160 = !DILocation(line: 108, column: 26, scope: !157)
!161 = !DILocation(line: 110, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !45, line: 110, column: 13)
!163 = !DILocation(line: 110, column: 16, scope: !162)
!164 = !DILocation(line: 110, column: 25, scope: !162)
!165 = !DILocation(line: 110, column: 13, scope: !157)
!166 = !DILocation(line: 113, column: 23, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !45, line: 113, column: 17)
!168 = distinct !DILexicalBlock(scope: !162, file: !45, line: 111, column: 9)
!169 = !DILocation(line: 113, column: 28, scope: !167)
!170 = !DILocation(line: 113, column: 27, scope: !167)
!171 = !DILocation(line: 113, column: 47, scope: !167)
!172 = !DILocation(line: 113, column: 46, scope: !167)
!173 = !DILocation(line: 113, column: 37, scope: !167)
!174 = !DILocation(line: 113, column: 57, scope: !167)
!175 = !DILocation(line: 113, column: 17, scope: !167)
!176 = !DILocation(line: 113, column: 64, scope: !167)
!177 = !DILocation(line: 113, column: 17, scope: !168)
!178 = !DILocation(line: 117, column: 34, scope: !179)
!179 = distinct !DILexicalBlock(scope: !167, file: !45, line: 114, column: 13)
!180 = !DILocation(line: 117, column: 27, scope: !179)
!181 = !DILocation(line: 117, column: 25, scope: !179)
!182 = !DILocation(line: 118, column: 21, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !45, line: 118, column: 21)
!184 = !DILocation(line: 118, column: 29, scope: !183)
!185 = !DILocation(line: 118, column: 33, scope: !183)
!186 = !DILocation(line: 118, column: 36, scope: !183)
!187 = !DILocation(line: 118, column: 41, scope: !183)
!188 = !DILocation(line: 118, column: 48, scope: !183)
!189 = !DILocation(line: 118, column: 52, scope: !183)
!190 = !DILocation(line: 118, column: 21, scope: !179)
!191 = !DILocation(line: 120, column: 21, scope: !192)
!192 = distinct !DILexicalBlock(scope: !183, file: !45, line: 119, column: 17)
!193 = !DILocation(line: 120, column: 26, scope: !192)
!194 = !DILocation(line: 120, column: 33, scope: !192)
!195 = !DILocation(line: 120, column: 37, scope: !192)
!196 = !DILocation(line: 121, column: 17, scope: !192)
!197 = !DILocation(line: 122, column: 13, scope: !179)
!198 = !DILocation(line: 125, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !167, file: !45, line: 124, column: 13)
!200 = !DILocation(line: 127, column: 17, scope: !199)
!201 = !DILocation(line: 127, column: 22, scope: !199)
!202 = !DILocation(line: 127, column: 31, scope: !199)
!203 = !DILocation(line: 129, column: 9, scope: !168)
!204 = !DILocalVariable(name: "i", scope: !205, file: !45, line: 145, type: !23)
!205 = distinct !DILexicalBlock(scope: !149, file: !45, line: 144, column: 5)
!206 = !DILocation(line: 145, column: 13, scope: !205)
!207 = !DILocalVariable(name: "n", scope: !205, file: !45, line: 145, type: !23)
!208 = !DILocation(line: 145, column: 16, scope: !205)
!209 = !DILocalVariable(name: "intVariable", scope: !205, file: !45, line: 145, type: !23)
!210 = !DILocation(line: 145, column: 19, scope: !205)
!211 = !DILocation(line: 146, column: 20, scope: !212)
!212 = distinct !DILexicalBlock(scope: !205, file: !45, line: 146, column: 13)
!213 = !DILocation(line: 146, column: 13, scope: !212)
!214 = !DILocation(line: 146, column: 36, scope: !212)
!215 = !DILocation(line: 146, column: 13, scope: !205)
!216 = !DILocation(line: 149, column: 17, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !45, line: 149, column: 17)
!218 = distinct !DILexicalBlock(scope: !212, file: !45, line: 147, column: 9)
!219 = !DILocation(line: 149, column: 19, scope: !217)
!220 = !DILocation(line: 149, column: 17, scope: !218)
!221 = !DILocation(line: 151, column: 29, scope: !222)
!222 = distinct !DILexicalBlock(scope: !217, file: !45, line: 150, column: 13)
!223 = !DILocation(line: 152, column: 24, scope: !224)
!224 = distinct !DILexicalBlock(scope: !222, file: !45, line: 152, column: 17)
!225 = !DILocation(line: 152, column: 22, scope: !224)
!226 = !DILocation(line: 152, column: 29, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !45, line: 152, column: 17)
!228 = !DILocation(line: 152, column: 33, scope: !227)
!229 = !DILocation(line: 152, column: 31, scope: !227)
!230 = !DILocation(line: 152, column: 17, scope: !224)
!231 = !DILocation(line: 155, column: 32, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !45, line: 153, column: 17)
!233 = !DILocation(line: 156, column: 17, scope: !232)
!234 = !DILocation(line: 152, column: 37, scope: !227)
!235 = !DILocation(line: 152, column: 17, scope: !227)
!236 = distinct !{!236, !230, !237, !144}
!237 = !DILocation(line: 156, column: 17, scope: !224)
!238 = !DILocation(line: 157, column: 30, scope: !222)
!239 = !DILocation(line: 157, column: 17, scope: !222)
!240 = !DILocation(line: 158, column: 13, scope: !222)
!241 = !DILocation(line: 159, column: 9, scope: !218)
!242 = !DILocation(line: 163, column: 1, scope: !149)
!243 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 166, type: !53, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!244 = !DILocalVariable(name: "data", scope: !243, file: !45, line: 168, type: !42)
!245 = !DILocation(line: 168, column: 12, scope: !243)
!246 = !DILocalVariable(name: "dataBuffer", scope: !243, file: !45, line: 169, type: !58)
!247 = !DILocation(line: 169, column: 10, scope: !243)
!248 = !DILocation(line: 170, column: 12, scope: !243)
!249 = !DILocation(line: 170, column: 10, scope: !243)
!250 = !DILocalVariable(name: "dataLen", scope: !251, file: !45, line: 176, type: !66)
!251 = distinct !DILexicalBlock(scope: !243, file: !45, line: 174, column: 5)
!252 = !DILocation(line: 176, column: 16, scope: !251)
!253 = !DILocation(line: 176, column: 33, scope: !251)
!254 = !DILocation(line: 176, column: 26, scope: !251)
!255 = !DILocation(line: 178, column: 17, scope: !256)
!256 = distinct !DILexicalBlock(scope: !251, file: !45, line: 178, column: 13)
!257 = !DILocation(line: 178, column: 16, scope: !256)
!258 = !DILocation(line: 178, column: 25, scope: !256)
!259 = !DILocation(line: 178, column: 13, scope: !251)
!260 = !DILocation(line: 181, column: 23, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !45, line: 181, column: 17)
!262 = distinct !DILexicalBlock(scope: !256, file: !45, line: 179, column: 9)
!263 = !DILocation(line: 181, column: 28, scope: !261)
!264 = !DILocation(line: 181, column: 27, scope: !261)
!265 = !DILocation(line: 181, column: 47, scope: !261)
!266 = !DILocation(line: 181, column: 46, scope: !261)
!267 = !DILocation(line: 181, column: 37, scope: !261)
!268 = !DILocation(line: 181, column: 57, scope: !261)
!269 = !DILocation(line: 181, column: 17, scope: !261)
!270 = !DILocation(line: 181, column: 64, scope: !261)
!271 = !DILocation(line: 181, column: 17, scope: !262)
!272 = !DILocation(line: 185, column: 34, scope: !273)
!273 = distinct !DILexicalBlock(scope: !261, file: !45, line: 182, column: 13)
!274 = !DILocation(line: 185, column: 27, scope: !273)
!275 = !DILocation(line: 185, column: 25, scope: !273)
!276 = !DILocation(line: 186, column: 21, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !45, line: 186, column: 21)
!278 = !DILocation(line: 186, column: 29, scope: !277)
!279 = !DILocation(line: 186, column: 33, scope: !277)
!280 = !DILocation(line: 186, column: 36, scope: !277)
!281 = !DILocation(line: 186, column: 41, scope: !277)
!282 = !DILocation(line: 186, column: 48, scope: !277)
!283 = !DILocation(line: 186, column: 52, scope: !277)
!284 = !DILocation(line: 186, column: 21, scope: !273)
!285 = !DILocation(line: 188, column: 21, scope: !286)
!286 = distinct !DILexicalBlock(scope: !277, file: !45, line: 187, column: 17)
!287 = !DILocation(line: 188, column: 26, scope: !286)
!288 = !DILocation(line: 188, column: 33, scope: !286)
!289 = !DILocation(line: 188, column: 37, scope: !286)
!290 = !DILocation(line: 189, column: 17, scope: !286)
!291 = !DILocation(line: 190, column: 13, scope: !273)
!292 = !DILocation(line: 193, column: 17, scope: !293)
!293 = distinct !DILexicalBlock(scope: !261, file: !45, line: 192, column: 13)
!294 = !DILocation(line: 195, column: 17, scope: !293)
!295 = !DILocation(line: 195, column: 22, scope: !293)
!296 = !DILocation(line: 195, column: 31, scope: !293)
!297 = !DILocation(line: 197, column: 9, scope: !262)
!298 = !DILocalVariable(name: "i", scope: !299, file: !45, line: 209, type: !23)
!299 = distinct !DILexicalBlock(scope: !243, file: !45, line: 208, column: 5)
!300 = !DILocation(line: 209, column: 13, scope: !299)
!301 = !DILocalVariable(name: "n", scope: !299, file: !45, line: 209, type: !23)
!302 = !DILocation(line: 209, column: 16, scope: !299)
!303 = !DILocalVariable(name: "intVariable", scope: !299, file: !45, line: 209, type: !23)
!304 = !DILocation(line: 209, column: 19, scope: !299)
!305 = !DILocation(line: 210, column: 20, scope: !306)
!306 = distinct !DILexicalBlock(scope: !299, file: !45, line: 210, column: 13)
!307 = !DILocation(line: 210, column: 13, scope: !306)
!308 = !DILocation(line: 210, column: 36, scope: !306)
!309 = !DILocation(line: 210, column: 13, scope: !299)
!310 = !DILocation(line: 213, column: 17, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !45, line: 213, column: 17)
!312 = distinct !DILexicalBlock(scope: !306, file: !45, line: 211, column: 9)
!313 = !DILocation(line: 213, column: 19, scope: !311)
!314 = !DILocation(line: 213, column: 17, scope: !312)
!315 = !DILocation(line: 215, column: 29, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !45, line: 214, column: 13)
!317 = !DILocation(line: 216, column: 24, scope: !318)
!318 = distinct !DILexicalBlock(scope: !316, file: !45, line: 216, column: 17)
!319 = !DILocation(line: 216, column: 22, scope: !318)
!320 = !DILocation(line: 216, column: 29, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !45, line: 216, column: 17)
!322 = !DILocation(line: 216, column: 33, scope: !321)
!323 = !DILocation(line: 216, column: 31, scope: !321)
!324 = !DILocation(line: 216, column: 17, scope: !318)
!325 = !DILocation(line: 219, column: 32, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !45, line: 217, column: 17)
!327 = !DILocation(line: 220, column: 17, scope: !326)
!328 = !DILocation(line: 216, column: 37, scope: !321)
!329 = !DILocation(line: 216, column: 17, scope: !321)
!330 = distinct !{!330, !324, !331, !144}
!331 = !DILocation(line: 220, column: 17, scope: !318)
!332 = !DILocation(line: 221, column: 30, scope: !316)
!333 = !DILocation(line: 221, column: 17, scope: !316)
!334 = !DILocation(line: 222, column: 13, scope: !316)
!335 = !DILocation(line: 223, column: 9, scope: !312)
!336 = !DILocation(line: 231, column: 1, scope: !243)
!337 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 234, type: !53, scopeLine: 235, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!338 = !DILocalVariable(name: "data", scope: !337, file: !45, line: 236, type: !42)
!339 = !DILocation(line: 236, column: 12, scope: !337)
!340 = !DILocalVariable(name: "dataBuffer", scope: !337, file: !45, line: 237, type: !58)
!341 = !DILocation(line: 237, column: 10, scope: !337)
!342 = !DILocation(line: 238, column: 12, scope: !337)
!343 = !DILocation(line: 238, column: 10, scope: !337)
!344 = !DILocation(line: 247, column: 16, scope: !337)
!345 = !DILocation(line: 247, column: 9, scope: !337)
!346 = !DILocalVariable(name: "i", scope: !347, file: !45, line: 254, type: !23)
!347 = distinct !DILexicalBlock(scope: !337, file: !45, line: 253, column: 5)
!348 = !DILocation(line: 254, column: 13, scope: !347)
!349 = !DILocalVariable(name: "n", scope: !347, file: !45, line: 254, type: !23)
!350 = !DILocation(line: 254, column: 16, scope: !347)
!351 = !DILocalVariable(name: "intVariable", scope: !347, file: !45, line: 254, type: !23)
!352 = !DILocation(line: 254, column: 19, scope: !347)
!353 = !DILocation(line: 255, column: 20, scope: !354)
!354 = distinct !DILexicalBlock(scope: !347, file: !45, line: 255, column: 13)
!355 = !DILocation(line: 255, column: 13, scope: !354)
!356 = !DILocation(line: 255, column: 36, scope: !354)
!357 = !DILocation(line: 255, column: 13, scope: !347)
!358 = !DILocation(line: 258, column: 25, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !45, line: 256, column: 9)
!360 = !DILocation(line: 259, column: 20, scope: !361)
!361 = distinct !DILexicalBlock(scope: !359, file: !45, line: 259, column: 13)
!362 = !DILocation(line: 259, column: 18, scope: !361)
!363 = !DILocation(line: 259, column: 25, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !45, line: 259, column: 13)
!365 = !DILocation(line: 259, column: 29, scope: !364)
!366 = !DILocation(line: 259, column: 27, scope: !364)
!367 = !DILocation(line: 259, column: 13, scope: !361)
!368 = !DILocation(line: 262, column: 28, scope: !369)
!369 = distinct !DILexicalBlock(scope: !364, file: !45, line: 260, column: 13)
!370 = !DILocation(line: 263, column: 13, scope: !369)
!371 = !DILocation(line: 259, column: 33, scope: !364)
!372 = !DILocation(line: 259, column: 13, scope: !364)
!373 = distinct !{!373, !367, !374, !144}
!374 = !DILocation(line: 263, column: 13, scope: !361)
!375 = !DILocation(line: 264, column: 26, scope: !359)
!376 = !DILocation(line: 264, column: 13, scope: !359)
!377 = !DILocation(line: 265, column: 9, scope: !359)
!378 = !DILocation(line: 273, column: 1, scope: !337)
!379 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 276, type: !53, scopeLine: 277, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!380 = !DILocalVariable(name: "data", scope: !379, file: !45, line: 278, type: !42)
!381 = !DILocation(line: 278, column: 12, scope: !379)
!382 = !DILocalVariable(name: "dataBuffer", scope: !379, file: !45, line: 279, type: !58)
!383 = !DILocation(line: 279, column: 10, scope: !379)
!384 = !DILocation(line: 280, column: 12, scope: !379)
!385 = !DILocation(line: 280, column: 10, scope: !379)
!386 = !DILocation(line: 285, column: 16, scope: !379)
!387 = !DILocation(line: 285, column: 9, scope: !379)
!388 = !DILocalVariable(name: "i", scope: !389, file: !45, line: 296, type: !23)
!389 = distinct !DILexicalBlock(scope: !379, file: !45, line: 295, column: 5)
!390 = !DILocation(line: 296, column: 13, scope: !389)
!391 = !DILocalVariable(name: "n", scope: !389, file: !45, line: 296, type: !23)
!392 = !DILocation(line: 296, column: 16, scope: !389)
!393 = !DILocalVariable(name: "intVariable", scope: !389, file: !45, line: 296, type: !23)
!394 = !DILocation(line: 296, column: 19, scope: !389)
!395 = !DILocation(line: 297, column: 20, scope: !396)
!396 = distinct !DILexicalBlock(scope: !389, file: !45, line: 297, column: 13)
!397 = !DILocation(line: 297, column: 13, scope: !396)
!398 = !DILocation(line: 297, column: 36, scope: !396)
!399 = !DILocation(line: 297, column: 13, scope: !389)
!400 = !DILocation(line: 300, column: 25, scope: !401)
!401 = distinct !DILexicalBlock(scope: !396, file: !45, line: 298, column: 9)
!402 = !DILocation(line: 301, column: 20, scope: !403)
!403 = distinct !DILexicalBlock(scope: !401, file: !45, line: 301, column: 13)
!404 = !DILocation(line: 301, column: 18, scope: !403)
!405 = !DILocation(line: 301, column: 25, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !45, line: 301, column: 13)
!407 = !DILocation(line: 301, column: 29, scope: !406)
!408 = !DILocation(line: 301, column: 27, scope: !406)
!409 = !DILocation(line: 301, column: 13, scope: !403)
!410 = !DILocation(line: 304, column: 28, scope: !411)
!411 = distinct !DILexicalBlock(scope: !406, file: !45, line: 302, column: 13)
!412 = !DILocation(line: 305, column: 13, scope: !411)
!413 = !DILocation(line: 301, column: 33, scope: !406)
!414 = !DILocation(line: 301, column: 13, scope: !406)
!415 = distinct !{!415, !409, !416, !144}
!416 = !DILocation(line: 305, column: 13, scope: !403)
!417 = !DILocation(line: 306, column: 26, scope: !401)
!418 = !DILocation(line: 306, column: 13, scope: !401)
!419 = !DILocation(line: 307, column: 9, scope: !401)
!420 = !DILocation(line: 315, column: 1, scope: !379)
!421 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_15_good", scope: !45, file: !45, line: 317, type: !53, scopeLine: 318, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!422 = !DILocation(line: 319, column: 5, scope: !421)
!423 = !DILocation(line: 320, column: 5, scope: !421)
!424 = !DILocation(line: 321, column: 5, scope: !421)
!425 = !DILocation(line: 322, column: 5, scope: !421)
!426 = !DILocation(line: 323, column: 1, scope: !421)
!427 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !428, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !42}
!430 = !DILocalVariable(name: "line", arg: 1, scope: !427, file: !3, line: 11, type: !42)
!431 = !DILocation(line: 11, column: 25, scope: !427)
!432 = !DILocation(line: 13, column: 1, scope: !427)
!433 = !DILocation(line: 14, column: 8, scope: !434)
!434 = distinct !DILexicalBlock(scope: !427, file: !3, line: 14, column: 8)
!435 = !DILocation(line: 14, column: 13, scope: !434)
!436 = !DILocation(line: 14, column: 8, scope: !427)
!437 = !DILocation(line: 16, column: 24, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !3, line: 15, column: 5)
!439 = !DILocation(line: 16, column: 9, scope: !438)
!440 = !DILocation(line: 17, column: 5, scope: !438)
!441 = !DILocation(line: 18, column: 5, scope: !427)
!442 = !DILocation(line: 19, column: 1, scope: !427)
!443 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !428, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!444 = !DILocalVariable(name: "line", arg: 1, scope: !443, file: !3, line: 20, type: !42)
!445 = !DILocation(line: 20, column: 29, scope: !443)
!446 = !DILocation(line: 22, column: 8, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !3, line: 22, column: 8)
!448 = !DILocation(line: 22, column: 13, scope: !447)
!449 = !DILocation(line: 22, column: 8, scope: !443)
!450 = !DILocation(line: 24, column: 24, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !3, line: 23, column: 5)
!452 = !DILocation(line: 24, column: 9, scope: !451)
!453 = !DILocation(line: 25, column: 5, scope: !451)
!454 = !DILocation(line: 26, column: 1, scope: !443)
!455 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !456, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !67, line: 74, baseType: !23)
!460 = !DILocalVariable(name: "line", arg: 1, scope: !455, file: !3, line: 27, type: !458)
!461 = !DILocation(line: 27, column: 29, scope: !455)
!462 = !DILocation(line: 29, column: 8, scope: !463)
!463 = distinct !DILexicalBlock(scope: !455, file: !3, line: 29, column: 8)
!464 = !DILocation(line: 29, column: 13, scope: !463)
!465 = !DILocation(line: 29, column: 8, scope: !455)
!466 = !DILocation(line: 31, column: 27, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !3, line: 30, column: 5)
!468 = !DILocation(line: 31, column: 9, scope: !467)
!469 = !DILocation(line: 32, column: 5, scope: !467)
!470 = !DILocation(line: 33, column: 1, scope: !455)
!471 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !472, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !23}
!474 = !DILocalVariable(name: "intNumber", arg: 1, scope: !471, file: !3, line: 35, type: !23)
!475 = !DILocation(line: 35, column: 24, scope: !471)
!476 = !DILocation(line: 37, column: 20, scope: !471)
!477 = !DILocation(line: 37, column: 5, scope: !471)
!478 = !DILocation(line: 38, column: 1, scope: !471)
!479 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !480, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !482}
!482 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!483 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !479, file: !3, line: 40, type: !482)
!484 = !DILocation(line: 40, column: 28, scope: !479)
!485 = !DILocation(line: 42, column: 21, scope: !479)
!486 = !DILocation(line: 42, column: 5, scope: !479)
!487 = !DILocation(line: 43, column: 1, scope: !479)
!488 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !489, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !491}
!491 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!492 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !488, file: !3, line: 45, type: !491)
!493 = !DILocation(line: 45, column: 28, scope: !488)
!494 = !DILocation(line: 47, column: 20, scope: !488)
!495 = !DILocation(line: 47, column: 5, scope: !488)
!496 = !DILocation(line: 48, column: 1, scope: !488)
!497 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !498, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !500}
!500 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!501 = !DILocalVariable(name: "longNumber", arg: 1, scope: !497, file: !3, line: 50, type: !500)
!502 = !DILocation(line: 50, column: 26, scope: !497)
!503 = !DILocation(line: 52, column: 21, scope: !497)
!504 = !DILocation(line: 52, column: 5, scope: !497)
!505 = !DILocation(line: 53, column: 1, scope: !497)
!506 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !507, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509}
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !510, line: 27, baseType: !511)
!510 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !512, line: 44, baseType: !500)
!512 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!513 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !506, file: !3, line: 55, type: !509)
!514 = !DILocation(line: 55, column: 33, scope: !506)
!515 = !DILocation(line: 57, column: 29, scope: !506)
!516 = !DILocation(line: 57, column: 5, scope: !506)
!517 = !DILocation(line: 58, column: 1, scope: !506)
!518 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !519, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !66}
!521 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !518, file: !3, line: 60, type: !66)
!522 = !DILocation(line: 60, column: 29, scope: !518)
!523 = !DILocation(line: 62, column: 21, scope: !518)
!524 = !DILocation(line: 62, column: 5, scope: !518)
!525 = !DILocation(line: 63, column: 1, scope: !518)
!526 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !527, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !43}
!529 = !DILocalVariable(name: "charHex", arg: 1, scope: !526, file: !3, line: 65, type: !43)
!530 = !DILocation(line: 65, column: 29, scope: !526)
!531 = !DILocation(line: 67, column: 22, scope: !526)
!532 = !DILocation(line: 67, column: 5, scope: !526)
!533 = !DILocation(line: 68, column: 1, scope: !526)
!534 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !535, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !459}
!537 = !DILocalVariable(name: "wideChar", arg: 1, scope: !534, file: !3, line: 70, type: !459)
!538 = !DILocation(line: 70, column: 29, scope: !534)
!539 = !DILocalVariable(name: "s", scope: !534, file: !3, line: 74, type: !540)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 64, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 2)
!543 = !DILocation(line: 74, column: 13, scope: !534)
!544 = !DILocation(line: 75, column: 16, scope: !534)
!545 = !DILocation(line: 75, column: 9, scope: !534)
!546 = !DILocation(line: 75, column: 14, scope: !534)
!547 = !DILocation(line: 76, column: 9, scope: !534)
!548 = !DILocation(line: 76, column: 14, scope: !534)
!549 = !DILocation(line: 77, column: 21, scope: !534)
!550 = !DILocation(line: 77, column: 5, scope: !534)
!551 = !DILocation(line: 78, column: 1, scope: !534)
!552 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !553, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !7}
!555 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !552, file: !3, line: 80, type: !7)
!556 = !DILocation(line: 80, column: 33, scope: !552)
!557 = !DILocation(line: 82, column: 20, scope: !552)
!558 = !DILocation(line: 82, column: 5, scope: !552)
!559 = !DILocation(line: 83, column: 1, scope: !552)
!560 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !561, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !25}
!563 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !560, file: !3, line: 85, type: !25)
!564 = !DILocation(line: 85, column: 45, scope: !560)
!565 = !DILocation(line: 87, column: 22, scope: !560)
!566 = !DILocation(line: 87, column: 5, scope: !560)
!567 = !DILocation(line: 88, column: 1, scope: !560)
!568 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !569, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !571}
!571 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!572 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !568, file: !3, line: 90, type: !571)
!573 = !DILocation(line: 90, column: 29, scope: !568)
!574 = !DILocation(line: 92, column: 20, scope: !568)
!575 = !DILocation(line: 92, column: 5, scope: !568)
!576 = !DILocation(line: 93, column: 1, scope: !568)
!577 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !578, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !582, line: 100, baseType: !583)
!582 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_992/source_code")
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !582, line: 96, size: 64, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !583, file: !582, line: 98, baseType: !23, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !583, file: !582, line: 99, baseType: !23, size: 32, offset: 32)
!587 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !577, file: !3, line: 95, type: !580)
!588 = !DILocation(line: 95, column: 40, scope: !577)
!589 = !DILocation(line: 97, column: 26, scope: !577)
!590 = !DILocation(line: 97, column: 47, scope: !577)
!591 = !DILocation(line: 97, column: 55, scope: !577)
!592 = !DILocation(line: 97, column: 76, scope: !577)
!593 = !DILocation(line: 97, column: 5, scope: !577)
!594 = !DILocation(line: 98, column: 1, scope: !577)
!595 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !596, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !598, !66}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!599 = !DILocalVariable(name: "bytes", arg: 1, scope: !595, file: !3, line: 100, type: !598)
!600 = !DILocation(line: 100, column: 38, scope: !595)
!601 = !DILocalVariable(name: "numBytes", arg: 2, scope: !595, file: !3, line: 100, type: !66)
!602 = !DILocation(line: 100, column: 52, scope: !595)
!603 = !DILocalVariable(name: "i", scope: !595, file: !3, line: 102, type: !66)
!604 = !DILocation(line: 102, column: 12, scope: !595)
!605 = !DILocation(line: 103, column: 12, scope: !606)
!606 = distinct !DILexicalBlock(scope: !595, file: !3, line: 103, column: 5)
!607 = !DILocation(line: 103, column: 10, scope: !606)
!608 = !DILocation(line: 103, column: 17, scope: !609)
!609 = distinct !DILexicalBlock(scope: !606, file: !3, line: 103, column: 5)
!610 = !DILocation(line: 103, column: 21, scope: !609)
!611 = !DILocation(line: 103, column: 19, scope: !609)
!612 = !DILocation(line: 103, column: 5, scope: !606)
!613 = !DILocation(line: 105, column: 24, scope: !614)
!614 = distinct !DILexicalBlock(scope: !609, file: !3, line: 104, column: 5)
!615 = !DILocation(line: 105, column: 30, scope: !614)
!616 = !DILocation(line: 105, column: 9, scope: !614)
!617 = !DILocation(line: 106, column: 5, scope: !614)
!618 = !DILocation(line: 103, column: 31, scope: !609)
!619 = !DILocation(line: 103, column: 5, scope: !609)
!620 = distinct !{!620, !612, !621, !144}
!621 = !DILocation(line: 106, column: 5, scope: !606)
!622 = !DILocation(line: 107, column: 5, scope: !595)
!623 = !DILocation(line: 108, column: 1, scope: !595)
!624 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !625, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DISubroutineType(types: !626)
!626 = !{!66, !598, !66, !42}
!627 = !DILocalVariable(name: "bytes", arg: 1, scope: !624, file: !3, line: 113, type: !598)
!628 = !DILocation(line: 113, column: 39, scope: !624)
!629 = !DILocalVariable(name: "numBytes", arg: 2, scope: !624, file: !3, line: 113, type: !66)
!630 = !DILocation(line: 113, column: 53, scope: !624)
!631 = !DILocalVariable(name: "hex", arg: 3, scope: !624, file: !3, line: 113, type: !42)
!632 = !DILocation(line: 113, column: 71, scope: !624)
!633 = !DILocalVariable(name: "numWritten", scope: !624, file: !3, line: 115, type: !66)
!634 = !DILocation(line: 115, column: 12, scope: !624)
!635 = !DILocation(line: 121, column: 5, scope: !624)
!636 = !DILocation(line: 121, column: 12, scope: !624)
!637 = !DILocation(line: 121, column: 25, scope: !624)
!638 = !DILocation(line: 121, column: 23, scope: !624)
!639 = !DILocation(line: 121, column: 34, scope: !624)
!640 = !DILocation(line: 121, column: 37, scope: !624)
!641 = !DILocation(line: 121, column: 67, scope: !624)
!642 = !DILocation(line: 121, column: 70, scope: !624)
!643 = !DILocation(line: 0, scope: !624)
!644 = !DILocalVariable(name: "byte", scope: !645, file: !3, line: 123, type: !23)
!645 = distinct !DILexicalBlock(scope: !624, file: !3, line: 122, column: 5)
!646 = !DILocation(line: 123, column: 13, scope: !645)
!647 = !DILocation(line: 124, column: 17, scope: !645)
!648 = !DILocation(line: 124, column: 25, scope: !645)
!649 = !DILocation(line: 124, column: 23, scope: !645)
!650 = !DILocation(line: 124, column: 9, scope: !645)
!651 = !DILocation(line: 125, column: 45, scope: !645)
!652 = !DILocation(line: 125, column: 29, scope: !645)
!653 = !DILocation(line: 125, column: 9, scope: !645)
!654 = !DILocation(line: 125, column: 15, scope: !645)
!655 = !DILocation(line: 125, column: 27, scope: !645)
!656 = !DILocation(line: 126, column: 9, scope: !645)
!657 = distinct !{!657, !635, !658, !144}
!658 = !DILocation(line: 127, column: 5, scope: !624)
!659 = !DILocation(line: 129, column: 12, scope: !624)
!660 = !DILocation(line: 129, column: 5, scope: !624)
!661 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !662, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DISubroutineType(types: !663)
!663 = !{!66, !598, !66, !458}
!664 = !DILocalVariable(name: "bytes", arg: 1, scope: !661, file: !3, line: 135, type: !598)
!665 = !DILocation(line: 135, column: 41, scope: !661)
!666 = !DILocalVariable(name: "numBytes", arg: 2, scope: !661, file: !3, line: 135, type: !66)
!667 = !DILocation(line: 135, column: 55, scope: !661)
!668 = !DILocalVariable(name: "hex", arg: 3, scope: !661, file: !3, line: 135, type: !458)
!669 = !DILocation(line: 135, column: 76, scope: !661)
!670 = !DILocalVariable(name: "numWritten", scope: !661, file: !3, line: 137, type: !66)
!671 = !DILocation(line: 137, column: 12, scope: !661)
!672 = !DILocation(line: 143, column: 5, scope: !661)
!673 = !DILocation(line: 143, column: 12, scope: !661)
!674 = !DILocation(line: 143, column: 25, scope: !661)
!675 = !DILocation(line: 143, column: 23, scope: !661)
!676 = !DILocation(line: 143, column: 34, scope: !661)
!677 = !DILocation(line: 143, column: 47, scope: !661)
!678 = !DILocation(line: 143, column: 55, scope: !661)
!679 = !DILocation(line: 143, column: 53, scope: !661)
!680 = !DILocation(line: 143, column: 37, scope: !661)
!681 = !DILocation(line: 143, column: 68, scope: !661)
!682 = !DILocation(line: 143, column: 81, scope: !661)
!683 = !DILocation(line: 143, column: 89, scope: !661)
!684 = !DILocation(line: 143, column: 87, scope: !661)
!685 = !DILocation(line: 143, column: 100, scope: !661)
!686 = !DILocation(line: 143, column: 71, scope: !661)
!687 = !DILocation(line: 0, scope: !661)
!688 = !DILocalVariable(name: "byte", scope: !689, file: !3, line: 145, type: !23)
!689 = distinct !DILexicalBlock(scope: !661, file: !3, line: 144, column: 5)
!690 = !DILocation(line: 145, column: 13, scope: !689)
!691 = !DILocation(line: 146, column: 18, scope: !689)
!692 = !DILocation(line: 146, column: 26, scope: !689)
!693 = !DILocation(line: 146, column: 24, scope: !689)
!694 = !DILocation(line: 146, column: 9, scope: !689)
!695 = !DILocation(line: 147, column: 45, scope: !689)
!696 = !DILocation(line: 147, column: 29, scope: !689)
!697 = !DILocation(line: 147, column: 9, scope: !689)
!698 = !DILocation(line: 147, column: 15, scope: !689)
!699 = !DILocation(line: 147, column: 27, scope: !689)
!700 = !DILocation(line: 148, column: 9, scope: !689)
!701 = distinct !{!701, !672, !702, !144}
!702 = !DILocation(line: 149, column: 5, scope: !661)
!703 = !DILocation(line: 151, column: 12, scope: !661)
!704 = !DILocation(line: 151, column: 5, scope: !661)
!705 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !706, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!706 = !DISubroutineType(types: !707)
!707 = !{!23}
!708 = !DILocation(line: 158, column: 5, scope: !705)
!709 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !706, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!710 = !DILocation(line: 163, column: 5, scope: !709)
!711 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !706, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!712 = !DILocation(line: 168, column: 13, scope: !711)
!713 = !DILocation(line: 168, column: 20, scope: !711)
!714 = !DILocation(line: 168, column: 5, scope: !711)
!715 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!716 = !DILocation(line: 187, column: 16, scope: !715)
!717 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!718 = !DILocation(line: 188, column: 16, scope: !717)
!719 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!720 = !DILocation(line: 189, column: 16, scope: !719)
!721 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!722 = !DILocation(line: 190, column: 16, scope: !721)
!723 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!724 = !DILocation(line: 191, column: 16, scope: !723)
!725 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!726 = !DILocation(line: 192, column: 16, scope: !725)
!727 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!728 = !DILocation(line: 193, column: 16, scope: !727)
!729 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!730 = !DILocation(line: 194, column: 16, scope: !729)
!731 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!732 = !DILocation(line: 195, column: 16, scope: !731)
!733 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!734 = !DILocation(line: 198, column: 15, scope: !733)
!735 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!736 = !DILocation(line: 199, column: 15, scope: !735)
!737 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!738 = !DILocation(line: 200, column: 15, scope: !737)
!739 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!740 = !DILocation(line: 201, column: 15, scope: !739)
!741 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!742 = !DILocation(line: 202, column: 15, scope: !741)
!743 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!744 = !DILocation(line: 203, column: 15, scope: !743)
!745 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!746 = !DILocation(line: 204, column: 15, scope: !745)
!747 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!748 = !DILocation(line: 205, column: 15, scope: !747)
!749 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!750 = !DILocation(line: 206, column: 15, scope: !749)
