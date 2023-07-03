; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"15\00", align 1
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
@.str.4.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.12 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_32_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %data13 = alloca i8*, align 8
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
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !81, metadata !DIExpression()), !dbg !137
  %4 = load i64, i64* %dataLen, align 8, !dbg !138
  %sub = sub i64 100, %4, !dbg !140
  %cmp = icmp ugt i64 %sub, 1, !dbg !141
  br i1 %cmp, label %if.then, label %if.end12, !dbg !142

if.then:                                          ; preds = %entry
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !143
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !145
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !146
  %cmp3 = icmp ne %struct._IO_FILE* %5, null, !dbg !148
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !149

if.then4:                                         ; preds = %if.then
  %6 = load i8*, i8** %data1, align 8, !dbg !150
  %7 = load i64, i64* %dataLen, align 8, !dbg !153
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !154
  %8 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub5 = sub i64 100, %8, !dbg !156
  %conv = trunc i64 %sub5 to i32, !dbg !157
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !158
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %9), !dbg !159
  %cmp7 = icmp eq i8* %call6, null, !dbg !160
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !161

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !162
  %10 = load i8*, i8** %data1, align 8, !dbg !164
  %11 = load i64, i64* %dataLen, align 8, !dbg !165
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !164
  store i8 0, i8* %arrayidx, align 1, !dbg !166
  br label %if.end, !dbg !167

if.end:                                           ; preds = %if.then9, %if.then4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !168
  %call10 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !169
  br label %if.end11, !dbg !170

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !171

if.end12:                                         ; preds = %if.end11, %entry
  %13 = load i8*, i8** %data1, align 8, !dbg !172
  %14 = load i8**, i8*** %dataPtr1, align 8, !dbg !173
  store i8* %13, i8** %14, align 8, !dbg !174
  call void @llvm.dbg.declare(metadata i8** %data13, metadata !175, metadata !DIExpression()), !dbg !177
  %15 = load i8**, i8*** %dataPtr2, align 8, !dbg !178
  %16 = load i8*, i8** %15, align 8, !dbg !179
  store i8* %16, i8** %data13, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata i32* %i, metadata !180, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %n, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !185, metadata !DIExpression()), !dbg !186
  %17 = load i8*, i8** %data13, align 8, !dbg !187
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !189
  %cmp15 = icmp eq i32 %call14, 1, !dbg !190
  br i1 %cmp15, label %if.then17, label %if.end21, !dbg !191

if.then17:                                        ; preds = %if.end12
  store i32 0, i32* %intVariable, align 4, !dbg !192
  store i32 0, i32* %i, align 4, !dbg !194
  br label %for.cond, !dbg !196

for.cond:                                         ; preds = %for.inc, %if.then17
  %18 = load i32, i32* %i, align 4, !dbg !197
  %19 = load i32, i32* %n, align 4, !dbg !199
  %cmp18 = icmp slt i32 %18, %19, !dbg !200
  br i1 %cmp18, label %for.body, label %for.end, !dbg !201

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !202
  %inc = add nsw i32 %20, 1, !dbg !202
  store i32 %inc, i32* %intVariable, align 4, !dbg !202
  br label %for.inc, !dbg !204

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !205
  %inc20 = add nsw i32 %21, 1, !dbg !205
  store i32 %inc20, i32* %i, align 4, !dbg !205
  br label %for.cond, !dbg !206, !llvm.loop !207

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !210
  call void @printIntLine(i32 %22), !dbg !211
  br label %if.end21, !dbg !212

if.end21:                                         ; preds = %for.end, %if.end12
  ret void, !dbg !213
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !214 {
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
  call void @llvm.dbg.declare(metadata i8** %data, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !217, metadata !DIExpression()), !dbg !218
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !219, metadata !DIExpression()), !dbg !220
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !222
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !222
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !223
  store i8* %arraydecay, i8** %data, align 8, !dbg !224
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !225, metadata !DIExpression()), !dbg !227
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !228
  %2 = load i8*, i8** %1, align 8, !dbg !229
  store i8* %2, i8** %data1, align 8, !dbg !227
  %3 = load i8*, i8** %data1, align 8, !dbg !230
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !231
  %4 = load i8*, i8** %data1, align 8, !dbg !232
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !233
  store i8* %4, i8** %5, align 8, !dbg !234
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !235, metadata !DIExpression()), !dbg !237
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !238
  %7 = load i8*, i8** %6, align 8, !dbg !239
  store i8* %7, i8** %data2, align 8, !dbg !237
  call void @llvm.dbg.declare(metadata i32* %i, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i32* %n, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !245, metadata !DIExpression()), !dbg !246
  %8 = load i8*, i8** %data2, align 8, !dbg !247
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !249
  %cmp = icmp eq i32 %call3, 1, !dbg !250
  br i1 %cmp, label %if.then, label %if.end, !dbg !251

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !252
  store i32 0, i32* %i, align 4, !dbg !254
  br label %for.cond, !dbg !256

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !dbg !257
  %10 = load i32, i32* %n, align 4, !dbg !259
  %cmp4 = icmp slt i32 %9, %10, !dbg !260
  br i1 %cmp4, label %for.body, label %for.end, !dbg !261

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !262
  %inc = add nsw i32 %11, 1, !dbg !262
  store i32 %inc, i32* %intVariable, align 4, !dbg !262
  br label %for.inc, !dbg !264

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !265
  %inc5 = add nsw i32 %12, 1, !dbg !265
  store i32 %inc5, i32* %i, align 4, !dbg !265
  br label %for.cond, !dbg !266, !llvm.loop !267

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !269
  call void @printIntLine(i32 %13), !dbg !270
  br label %if.end, !dbg !271

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !272
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !273 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %data13 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !276, metadata !DIExpression()), !dbg !277
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !277
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !278, metadata !DIExpression()), !dbg !279
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !279
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !281
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !281
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !282
  store i8* %arraydecay, i8** %data, align 8, !dbg !283
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !284, metadata !DIExpression()), !dbg !286
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !287
  %2 = load i8*, i8** %1, align 8, !dbg !288
  store i8* %2, i8** %data1, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !289, metadata !DIExpression()), !dbg !291
  %3 = load i8*, i8** %data1, align 8, !dbg !292
  %call = call i64 @strlen(i8* %3) #7, !dbg !293
  store i64 %call, i64* %dataLen, align 8, !dbg !291
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !294, metadata !DIExpression()), !dbg !295
  %4 = load i64, i64* %dataLen, align 8, !dbg !296
  %sub = sub i64 100, %4, !dbg !298
  %cmp = icmp ugt i64 %sub, 1, !dbg !299
  br i1 %cmp, label %if.then, label %if.end12, !dbg !300

if.then:                                          ; preds = %entry
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !301
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !303
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !304
  %cmp3 = icmp ne %struct._IO_FILE* %5, null, !dbg !306
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !307

if.then4:                                         ; preds = %if.then
  %6 = load i8*, i8** %data1, align 8, !dbg !308
  %7 = load i64, i64* %dataLen, align 8, !dbg !311
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !312
  %8 = load i64, i64* %dataLen, align 8, !dbg !313
  %sub5 = sub i64 100, %8, !dbg !314
  %conv = trunc i64 %sub5 to i32, !dbg !315
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !316
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %9), !dbg !317
  %cmp7 = icmp eq i8* %call6, null, !dbg !318
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !319

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !320
  %10 = load i8*, i8** %data1, align 8, !dbg !322
  %11 = load i64, i64* %dataLen, align 8, !dbg !323
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !322
  store i8 0, i8* %arrayidx, align 1, !dbg !324
  br label %if.end, !dbg !325

if.end:                                           ; preds = %if.then9, %if.then4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !326
  %call10 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !327
  br label %if.end11, !dbg !328

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !329

if.end12:                                         ; preds = %if.end11, %entry
  %13 = load i8*, i8** %data1, align 8, !dbg !330
  %14 = load i8**, i8*** %dataPtr1, align 8, !dbg !331
  store i8* %13, i8** %14, align 8, !dbg !332
  call void @llvm.dbg.declare(metadata i8** %data13, metadata !333, metadata !DIExpression()), !dbg !335
  %15 = load i8**, i8*** %dataPtr2, align 8, !dbg !336
  %16 = load i8*, i8** %15, align 8, !dbg !337
  store i8* %16, i8** %data13, align 8, !dbg !335
  call void @llvm.dbg.declare(metadata i32* %i, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata i32* %n, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !343, metadata !DIExpression()), !dbg !344
  %17 = load i8*, i8** %data13, align 8, !dbg !345
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !347
  %cmp15 = icmp eq i32 %call14, 1, !dbg !348
  br i1 %cmp15, label %if.then17, label %if.end25, !dbg !349

if.then17:                                        ; preds = %if.end12
  %18 = load i32, i32* %n, align 4, !dbg !350
  %cmp18 = icmp slt i32 %18, 10000, !dbg !353
  br i1 %cmp18, label %if.then20, label %if.end24, !dbg !354

if.then20:                                        ; preds = %if.then17
  store i32 0, i32* %intVariable, align 4, !dbg !355
  store i32 0, i32* %i, align 4, !dbg !357
  br label %for.cond, !dbg !359

for.cond:                                         ; preds = %for.inc, %if.then20
  %19 = load i32, i32* %i, align 4, !dbg !360
  %20 = load i32, i32* %n, align 4, !dbg !362
  %cmp21 = icmp slt i32 %19, %20, !dbg !363
  br i1 %cmp21, label %for.body, label %for.end, !dbg !364

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !365
  %inc = add nsw i32 %21, 1, !dbg !365
  store i32 %inc, i32* %intVariable, align 4, !dbg !365
  br label %for.inc, !dbg !367

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !368
  %inc23 = add nsw i32 %22, 1, !dbg !368
  store i32 %inc23, i32* %i, align 4, !dbg !368
  br label %for.cond, !dbg !369, !llvm.loop !370

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !372
  call void @printIntLine(i32 %23), !dbg !373
  br label %if.end24, !dbg !374

if.end24:                                         ; preds = %for.end, %if.then17
  br label %if.end25, !dbg !375

if.end25:                                         ; preds = %if.end24, %if.end12
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_32_good() #0 !dbg !377 {
entry:
  call void @goodG2B(), !dbg !378
  call void @goodB2G(), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !381 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !384, metadata !DIExpression()), !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !386
  %0 = load i8*, i8** %line.addr, align 8, !dbg !387
  %cmp = icmp ne i8* %0, null, !dbg !389
  br i1 %cmp, label %if.then, label %if.end, !dbg !390

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !391
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !393
  br label %if.end, !dbg !394

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !395
  ret void, !dbg !396
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !397 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i8*, i8** %line.addr, align 8, !dbg !400
  %cmp = icmp ne i8* %0, null, !dbg !402
  br i1 %cmp, label %if.then, label %if.end, !dbg !403

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !404
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !406
  br label %if.end, !dbg !407

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !409 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load i32*, i32** %line.addr, align 8, !dbg !416
  %cmp = icmp ne i32* %0, null, !dbg !418
  br i1 %cmp, label %if.then, label %if.end, !dbg !419

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !420
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !422
  br label %if.end, !dbg !423

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !424
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !425 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.11, i64 0, i64 0), i32 %0), !dbg !431
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !433 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !437, metadata !DIExpression()), !dbg !438
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !439
  %conv = sext i16 %0 to i32, !dbg !439
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.12, i64 0, i64 0), i32 %conv), !dbg !440
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !442 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !448
  %conv = fpext float %0 to double, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !449
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !451 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !457
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !459 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !467
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !468
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !470 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !475
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !476
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !478 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !481, metadata !DIExpression()), !dbg !482
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !483
  %conv = sext i8 %0 to i32, !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !486 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !489, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !491, metadata !DIExpression()), !dbg !495
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !496
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !497
  store i32 %0, i32* %arrayidx, align 4, !dbg !498
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !499
  store i32 0, i32* %arrayidx1, align 4, !dbg !500
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !501
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !502
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !504 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !507, metadata !DIExpression()), !dbg !508
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !509
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !510
  ret void, !dbg !511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !512 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !515, metadata !DIExpression()), !dbg !516
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !517
  %conv = zext i8 %0 to i32, !dbg !517
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !518
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !520 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !524, metadata !DIExpression()), !dbg !525
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !526
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !527
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !529 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !539, metadata !DIExpression()), !dbg !540
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !541
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !542
  %1 = load i32, i32* %intOne, align 4, !dbg !542
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !543
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !544
  %3 = load i32, i32* %intTwo, align 4, !dbg !544
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !545
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !547 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !551, metadata !DIExpression()), !dbg !552
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata i64* %i, metadata !555, metadata !DIExpression()), !dbg !556
  store i64 0, i64* %i, align 8, !dbg !557
  br label %for.cond, !dbg !559

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !560
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !562
  %cmp = icmp ult i64 %0, %1, !dbg !563
  br i1 %cmp, label %for.body, label %for.end, !dbg !564

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !565
  %3 = load i64, i64* %i, align 8, !dbg !567
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !565
  %4 = load i8, i8* %arrayidx, align 1, !dbg !565
  %conv = zext i8 %4 to i32, !dbg !565
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !568
  br label %for.inc, !dbg !569

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !570
  %inc = add i64 %5, 1, !dbg !570
  store i64 %inc, i64* %i, align 8, !dbg !570
  br label %for.cond, !dbg !571, !llvm.loop !572

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !574
  ret void, !dbg !575
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !576 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !579, metadata !DIExpression()), !dbg !580
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !581, metadata !DIExpression()), !dbg !582
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !583, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !585, metadata !DIExpression()), !dbg !586
  store i64 0, i64* %numWritten, align 8, !dbg !586
  br label %while.cond, !dbg !587

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !588
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !589
  %cmp = icmp ult i64 %0, %1, !dbg !590
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !591

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !592
  %2 = load i16*, i16** %call, align 8, !dbg !592
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !592
  %4 = load i64, i64* %numWritten, align 8, !dbg !592
  %mul = mul i64 2, %4, !dbg !592
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !592
  %5 = load i8, i8* %arrayidx, align 1, !dbg !592
  %conv = sext i8 %5 to i32, !dbg !592
  %idxprom = sext i32 %conv to i64, !dbg !592
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !592
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !592
  %conv2 = zext i16 %6 to i32, !dbg !592
  %and = and i32 %conv2, 4096, !dbg !592
  %tobool = icmp ne i32 %and, 0, !dbg !592
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !593

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !594
  %7 = load i16*, i16** %call3, align 8, !dbg !594
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !594
  %9 = load i64, i64* %numWritten, align 8, !dbg !594
  %mul4 = mul i64 2, %9, !dbg !594
  %add = add i64 %mul4, 1, !dbg !594
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !594
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !594
  %conv6 = sext i8 %10 to i32, !dbg !594
  %idxprom7 = sext i32 %conv6 to i64, !dbg !594
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !594
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !594
  %conv9 = zext i16 %11 to i32, !dbg !594
  %and10 = and i32 %conv9, 4096, !dbg !594
  %tobool11 = icmp ne i32 %and10, 0, !dbg !593
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !595
  br i1 %12, label %while.body, label %while.end, !dbg !587

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !596, metadata !DIExpression()), !dbg !598
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !599
  %14 = load i64, i64* %numWritten, align 8, !dbg !600
  %mul12 = mul i64 2, %14, !dbg !601
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !599
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !602
  %15 = load i32, i32* %byte, align 4, !dbg !603
  %conv15 = trunc i32 %15 to i8, !dbg !604
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !605
  %17 = load i64, i64* %numWritten, align 8, !dbg !606
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !605
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !607
  %18 = load i64, i64* %numWritten, align 8, !dbg !608
  %inc = add i64 %18, 1, !dbg !608
  store i64 %inc, i64* %numWritten, align 8, !dbg !608
  br label %while.cond, !dbg !587, !llvm.loop !609

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !611
  ret i64 %19, !dbg !612
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !613 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !616, metadata !DIExpression()), !dbg !617
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !618, metadata !DIExpression()), !dbg !619
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !620, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !622, metadata !DIExpression()), !dbg !623
  store i64 0, i64* %numWritten, align 8, !dbg !623
  br label %while.cond, !dbg !624

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !625
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !626
  %cmp = icmp ult i64 %0, %1, !dbg !627
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !628

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !629
  %3 = load i64, i64* %numWritten, align 8, !dbg !630
  %mul = mul i64 2, %3, !dbg !631
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !629
  %4 = load i32, i32* %arrayidx, align 4, !dbg !629
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !632
  %tobool = icmp ne i32 %call, 0, !dbg !632
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !633

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !634
  %6 = load i64, i64* %numWritten, align 8, !dbg !635
  %mul1 = mul i64 2, %6, !dbg !636
  %add = add i64 %mul1, 1, !dbg !637
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !634
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !634
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !638
  %tobool4 = icmp ne i32 %call3, 0, !dbg !633
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !639
  br i1 %8, label %while.body, label %while.end, !dbg !624

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !640, metadata !DIExpression()), !dbg !642
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !643
  %10 = load i64, i64* %numWritten, align 8, !dbg !644
  %mul5 = mul i64 2, %10, !dbg !645
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !643
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !646
  %11 = load i32, i32* %byte, align 4, !dbg !647
  %conv = trunc i32 %11 to i8, !dbg !648
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !649
  %13 = load i64, i64* %numWritten, align 8, !dbg !650
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !649
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !651
  %14 = load i64, i64* %numWritten, align 8, !dbg !652
  %inc = add i64 %14, 1, !dbg !652
  store i64 %inc, i64* %numWritten, align 8, !dbg !652
  br label %while.cond, !dbg !624, !llvm.loop !653

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !655
  ret i64 %15, !dbg !656
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !657 {
entry:
  ret i32 1, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !661 {
entry:
  ret i32 0, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !663 {
entry:
  %call = call i32 @rand() #8, !dbg !664
  %rem = srem i32 %call, 2, !dbg !665
  ret i32 %rem, !dbg !666
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !683 {
entry:
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !685 {
entry:
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !687 {
entry:
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !689 {
entry:
  ret void, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !691 {
entry:
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !693 {
entry:
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !695 {
entry:
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !697 {
entry:
  ret void, !dbg !698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !699 {
entry:
  ret void, !dbg !700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !701 {
entry:
  ret void, !dbg !702
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_095/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_095/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_32_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 37, type: !42)
!56 = !DILocation(line: 37, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataPtr1", scope: !52, file: !45, line: 38, type: !41)
!58 = !DILocation(line: 38, column: 13, scope: !52)
!59 = !DILocalVariable(name: "dataPtr2", scope: !52, file: !45, line: 39, type: !41)
!60 = !DILocation(line: 39, column: 13, scope: !52)
!61 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 40, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 40, column: 10, scope: !52)
!66 = !DILocation(line: 41, column: 12, scope: !52)
!67 = !DILocation(line: 41, column: 10, scope: !52)
!68 = !DILocalVariable(name: "data", scope: !69, file: !45, line: 43, type: !42)
!69 = distinct !DILexicalBlock(scope: !52, file: !45, line: 42, column: 5)
!70 = !DILocation(line: 43, column: 16, scope: !69)
!71 = !DILocation(line: 43, column: 24, scope: !69)
!72 = !DILocation(line: 43, column: 23, scope: !69)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 46, type: !75)
!74 = distinct !DILexicalBlock(scope: !69, file: !45, line: 44, column: 9)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 46, column: 20, scope: !74)
!79 = !DILocation(line: 46, column: 37, scope: !74)
!80 = !DILocation(line: 46, column: 30, scope: !74)
!81 = !DILocalVariable(name: "pFile", scope: !74, file: !45, line: 47, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !84, line: 7, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !86, line: 49, size: 1728, elements: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !103, !105, !106, !107, !111, !112, !114, !118, !121, !123, !126, !129, !130, !131, !132, !133}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !85, file: !86, line: 51, baseType: !23, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !85, file: !86, line: 54, baseType: !42, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !85, file: !86, line: 55, baseType: !42, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !85, file: !86, line: 56, baseType: !42, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !85, file: !86, line: 57, baseType: !42, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !85, file: !86, line: 58, baseType: !42, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !85, file: !86, line: 59, baseType: !42, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !85, file: !86, line: 60, baseType: !42, size: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !85, file: !86, line: 61, baseType: !42, size: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !85, file: !86, line: 64, baseType: !42, size: 64, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !85, file: !86, line: 65, baseType: !42, size: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !85, file: !86, line: 66, baseType: !42, size: 64, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !85, file: !86, line: 68, baseType: !101, size: 64, offset: 768)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !86, line: 36, flags: DIFlagFwdDecl)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !85, file: !86, line: 70, baseType: !104, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !85, file: !86, line: 72, baseType: !23, size: 32, offset: 896)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !85, file: !86, line: 73, baseType: !23, size: 32, offset: 928)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !85, file: !86, line: 74, baseType: !108, size: 64, offset: 960)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !109, line: 152, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!110 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !85, file: !86, line: 77, baseType: !24, size: 16, offset: 1024)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !85, file: !86, line: 78, baseType: !113, size: 8, offset: 1040)
!113 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !85, file: !86, line: 79, baseType: !115, size: 8, offset: 1048)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 1)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !85, file: !86, line: 81, baseType: !119, size: 64, offset: 1088)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !86, line: 43, baseType: null)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !85, file: !86, line: 89, baseType: !122, size: 64, offset: 1152)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !109, line: 153, baseType: !110)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !85, file: !86, line: 91, baseType: !124, size: 64, offset: 1216)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !86, line: 37, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !85, file: !86, line: 92, baseType: !127, size: 64, offset: 1280)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !86, line: 38, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !85, file: !86, line: 93, baseType: !104, size: 64, offset: 1344)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !85, file: !86, line: 94, baseType: !22, size: 64, offset: 1408)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !85, file: !86, line: 95, baseType: !75, size: 64, offset: 1472)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !85, file: !86, line: 96, baseType: !23, size: 32, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !85, file: !86, line: 98, baseType: !134, size: 160, offset: 1568)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 20)
!137 = !DILocation(line: 47, column: 20, scope: !74)
!138 = !DILocation(line: 49, column: 21, scope: !139)
!139 = distinct !DILexicalBlock(scope: !74, file: !45, line: 49, column: 17)
!140 = !DILocation(line: 49, column: 20, scope: !139)
!141 = !DILocation(line: 49, column: 29, scope: !139)
!142 = !DILocation(line: 49, column: 17, scope: !74)
!143 = !DILocation(line: 51, column: 25, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !45, line: 50, column: 13)
!145 = !DILocation(line: 51, column: 23, scope: !144)
!146 = !DILocation(line: 52, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !45, line: 52, column: 21)
!148 = !DILocation(line: 52, column: 27, scope: !147)
!149 = !DILocation(line: 52, column: 21, scope: !144)
!150 = !DILocation(line: 55, column: 31, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !45, line: 55, column: 25)
!152 = distinct !DILexicalBlock(scope: !147, file: !45, line: 53, column: 17)
!153 = !DILocation(line: 55, column: 36, scope: !151)
!154 = !DILocation(line: 55, column: 35, scope: !151)
!155 = !DILocation(line: 55, column: 55, scope: !151)
!156 = !DILocation(line: 55, column: 54, scope: !151)
!157 = !DILocation(line: 55, column: 45, scope: !151)
!158 = !DILocation(line: 55, column: 65, scope: !151)
!159 = !DILocation(line: 55, column: 25, scope: !151)
!160 = !DILocation(line: 55, column: 72, scope: !151)
!161 = !DILocation(line: 55, column: 25, scope: !152)
!162 = !DILocation(line: 57, column: 25, scope: !163)
!163 = distinct !DILexicalBlock(scope: !151, file: !45, line: 56, column: 21)
!164 = !DILocation(line: 59, column: 25, scope: !163)
!165 = !DILocation(line: 59, column: 30, scope: !163)
!166 = !DILocation(line: 59, column: 39, scope: !163)
!167 = !DILocation(line: 60, column: 21, scope: !163)
!168 = !DILocation(line: 61, column: 28, scope: !152)
!169 = !DILocation(line: 61, column: 21, scope: !152)
!170 = !DILocation(line: 62, column: 17, scope: !152)
!171 = !DILocation(line: 63, column: 13, scope: !144)
!172 = !DILocation(line: 65, column: 21, scope: !69)
!173 = !DILocation(line: 65, column: 10, scope: !69)
!174 = !DILocation(line: 65, column: 19, scope: !69)
!175 = !DILocalVariable(name: "data", scope: !176, file: !45, line: 68, type: !42)
!176 = distinct !DILexicalBlock(scope: !52, file: !45, line: 67, column: 5)
!177 = !DILocation(line: 68, column: 16, scope: !176)
!178 = !DILocation(line: 68, column: 24, scope: !176)
!179 = !DILocation(line: 68, column: 23, scope: !176)
!180 = !DILocalVariable(name: "i", scope: !181, file: !45, line: 70, type: !23)
!181 = distinct !DILexicalBlock(scope: !176, file: !45, line: 69, column: 9)
!182 = !DILocation(line: 70, column: 17, scope: !181)
!183 = !DILocalVariable(name: "n", scope: !181, file: !45, line: 70, type: !23)
!184 = !DILocation(line: 70, column: 20, scope: !181)
!185 = !DILocalVariable(name: "intVariable", scope: !181, file: !45, line: 70, type: !23)
!186 = !DILocation(line: 70, column: 23, scope: !181)
!187 = !DILocation(line: 71, column: 24, scope: !188)
!188 = distinct !DILexicalBlock(scope: !181, file: !45, line: 71, column: 17)
!189 = !DILocation(line: 71, column: 17, scope: !188)
!190 = !DILocation(line: 71, column: 40, scope: !188)
!191 = !DILocation(line: 71, column: 17, scope: !181)
!192 = !DILocation(line: 74, column: 29, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !45, line: 72, column: 13)
!194 = !DILocation(line: 75, column: 24, scope: !195)
!195 = distinct !DILexicalBlock(scope: !193, file: !45, line: 75, column: 17)
!196 = !DILocation(line: 75, column: 22, scope: !195)
!197 = !DILocation(line: 75, column: 29, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !45, line: 75, column: 17)
!199 = !DILocation(line: 75, column: 33, scope: !198)
!200 = !DILocation(line: 75, column: 31, scope: !198)
!201 = !DILocation(line: 75, column: 17, scope: !195)
!202 = !DILocation(line: 78, column: 32, scope: !203)
!203 = distinct !DILexicalBlock(scope: !198, file: !45, line: 76, column: 17)
!204 = !DILocation(line: 79, column: 17, scope: !203)
!205 = !DILocation(line: 75, column: 37, scope: !198)
!206 = !DILocation(line: 75, column: 17, scope: !198)
!207 = distinct !{!207, !201, !208, !209}
!208 = !DILocation(line: 79, column: 17, scope: !195)
!209 = !{!"llvm.loop.mustprogress"}
!210 = !DILocation(line: 80, column: 30, scope: !193)
!211 = !DILocation(line: 80, column: 17, scope: !193)
!212 = !DILocation(line: 81, column: 13, scope: !193)
!213 = !DILocation(line: 84, column: 1, scope: !52)
!214 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 91, type: !53, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!215 = !DILocalVariable(name: "data", scope: !214, file: !45, line: 93, type: !42)
!216 = !DILocation(line: 93, column: 12, scope: !214)
!217 = !DILocalVariable(name: "dataPtr1", scope: !214, file: !45, line: 94, type: !41)
!218 = !DILocation(line: 94, column: 13, scope: !214)
!219 = !DILocalVariable(name: "dataPtr2", scope: !214, file: !45, line: 95, type: !41)
!220 = !DILocation(line: 95, column: 13, scope: !214)
!221 = !DILocalVariable(name: "dataBuffer", scope: !214, file: !45, line: 96, type: !62)
!222 = !DILocation(line: 96, column: 10, scope: !214)
!223 = !DILocation(line: 97, column: 12, scope: !214)
!224 = !DILocation(line: 97, column: 10, scope: !214)
!225 = !DILocalVariable(name: "data", scope: !226, file: !45, line: 99, type: !42)
!226 = distinct !DILexicalBlock(scope: !214, file: !45, line: 98, column: 5)
!227 = !DILocation(line: 99, column: 16, scope: !226)
!228 = !DILocation(line: 99, column: 24, scope: !226)
!229 = !DILocation(line: 99, column: 23, scope: !226)
!230 = !DILocation(line: 101, column: 16, scope: !226)
!231 = !DILocation(line: 101, column: 9, scope: !226)
!232 = !DILocation(line: 102, column: 21, scope: !226)
!233 = !DILocation(line: 102, column: 10, scope: !226)
!234 = !DILocation(line: 102, column: 19, scope: !226)
!235 = !DILocalVariable(name: "data", scope: !236, file: !45, line: 105, type: !42)
!236 = distinct !DILexicalBlock(scope: !214, file: !45, line: 104, column: 5)
!237 = !DILocation(line: 105, column: 16, scope: !236)
!238 = !DILocation(line: 105, column: 24, scope: !236)
!239 = !DILocation(line: 105, column: 23, scope: !236)
!240 = !DILocalVariable(name: "i", scope: !241, file: !45, line: 107, type: !23)
!241 = distinct !DILexicalBlock(scope: !236, file: !45, line: 106, column: 9)
!242 = !DILocation(line: 107, column: 17, scope: !241)
!243 = !DILocalVariable(name: "n", scope: !241, file: !45, line: 107, type: !23)
!244 = !DILocation(line: 107, column: 20, scope: !241)
!245 = !DILocalVariable(name: "intVariable", scope: !241, file: !45, line: 107, type: !23)
!246 = !DILocation(line: 107, column: 23, scope: !241)
!247 = !DILocation(line: 108, column: 24, scope: !248)
!248 = distinct !DILexicalBlock(scope: !241, file: !45, line: 108, column: 17)
!249 = !DILocation(line: 108, column: 17, scope: !248)
!250 = !DILocation(line: 108, column: 40, scope: !248)
!251 = !DILocation(line: 108, column: 17, scope: !241)
!252 = !DILocation(line: 111, column: 29, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !45, line: 109, column: 13)
!254 = !DILocation(line: 112, column: 24, scope: !255)
!255 = distinct !DILexicalBlock(scope: !253, file: !45, line: 112, column: 17)
!256 = !DILocation(line: 112, column: 22, scope: !255)
!257 = !DILocation(line: 112, column: 29, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !45, line: 112, column: 17)
!259 = !DILocation(line: 112, column: 33, scope: !258)
!260 = !DILocation(line: 112, column: 31, scope: !258)
!261 = !DILocation(line: 112, column: 17, scope: !255)
!262 = !DILocation(line: 115, column: 32, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !45, line: 113, column: 17)
!264 = !DILocation(line: 116, column: 17, scope: !263)
!265 = !DILocation(line: 112, column: 37, scope: !258)
!266 = !DILocation(line: 112, column: 17, scope: !258)
!267 = distinct !{!267, !261, !268, !209}
!268 = !DILocation(line: 116, column: 17, scope: !255)
!269 = !DILocation(line: 117, column: 30, scope: !253)
!270 = !DILocation(line: 117, column: 17, scope: !253)
!271 = !DILocation(line: 118, column: 13, scope: !253)
!272 = !DILocation(line: 121, column: 1, scope: !214)
!273 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 124, type: !53, scopeLine: 125, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!274 = !DILocalVariable(name: "data", scope: !273, file: !45, line: 126, type: !42)
!275 = !DILocation(line: 126, column: 12, scope: !273)
!276 = !DILocalVariable(name: "dataPtr1", scope: !273, file: !45, line: 127, type: !41)
!277 = !DILocation(line: 127, column: 13, scope: !273)
!278 = !DILocalVariable(name: "dataPtr2", scope: !273, file: !45, line: 128, type: !41)
!279 = !DILocation(line: 128, column: 13, scope: !273)
!280 = !DILocalVariable(name: "dataBuffer", scope: !273, file: !45, line: 129, type: !62)
!281 = !DILocation(line: 129, column: 10, scope: !273)
!282 = !DILocation(line: 130, column: 12, scope: !273)
!283 = !DILocation(line: 130, column: 10, scope: !273)
!284 = !DILocalVariable(name: "data", scope: !285, file: !45, line: 132, type: !42)
!285 = distinct !DILexicalBlock(scope: !273, file: !45, line: 131, column: 5)
!286 = !DILocation(line: 132, column: 16, scope: !285)
!287 = !DILocation(line: 132, column: 24, scope: !285)
!288 = !DILocation(line: 132, column: 23, scope: !285)
!289 = !DILocalVariable(name: "dataLen", scope: !290, file: !45, line: 135, type: !75)
!290 = distinct !DILexicalBlock(scope: !285, file: !45, line: 133, column: 9)
!291 = !DILocation(line: 135, column: 20, scope: !290)
!292 = !DILocation(line: 135, column: 37, scope: !290)
!293 = !DILocation(line: 135, column: 30, scope: !290)
!294 = !DILocalVariable(name: "pFile", scope: !290, file: !45, line: 136, type: !82)
!295 = !DILocation(line: 136, column: 20, scope: !290)
!296 = !DILocation(line: 138, column: 21, scope: !297)
!297 = distinct !DILexicalBlock(scope: !290, file: !45, line: 138, column: 17)
!298 = !DILocation(line: 138, column: 20, scope: !297)
!299 = !DILocation(line: 138, column: 29, scope: !297)
!300 = !DILocation(line: 138, column: 17, scope: !290)
!301 = !DILocation(line: 140, column: 25, scope: !302)
!302 = distinct !DILexicalBlock(scope: !297, file: !45, line: 139, column: 13)
!303 = !DILocation(line: 140, column: 23, scope: !302)
!304 = !DILocation(line: 141, column: 21, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !45, line: 141, column: 21)
!306 = !DILocation(line: 141, column: 27, scope: !305)
!307 = !DILocation(line: 141, column: 21, scope: !302)
!308 = !DILocation(line: 144, column: 31, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !45, line: 144, column: 25)
!310 = distinct !DILexicalBlock(scope: !305, file: !45, line: 142, column: 17)
!311 = !DILocation(line: 144, column: 36, scope: !309)
!312 = !DILocation(line: 144, column: 35, scope: !309)
!313 = !DILocation(line: 144, column: 55, scope: !309)
!314 = !DILocation(line: 144, column: 54, scope: !309)
!315 = !DILocation(line: 144, column: 45, scope: !309)
!316 = !DILocation(line: 144, column: 65, scope: !309)
!317 = !DILocation(line: 144, column: 25, scope: !309)
!318 = !DILocation(line: 144, column: 72, scope: !309)
!319 = !DILocation(line: 144, column: 25, scope: !310)
!320 = !DILocation(line: 146, column: 25, scope: !321)
!321 = distinct !DILexicalBlock(scope: !309, file: !45, line: 145, column: 21)
!322 = !DILocation(line: 148, column: 25, scope: !321)
!323 = !DILocation(line: 148, column: 30, scope: !321)
!324 = !DILocation(line: 148, column: 39, scope: !321)
!325 = !DILocation(line: 149, column: 21, scope: !321)
!326 = !DILocation(line: 150, column: 28, scope: !310)
!327 = !DILocation(line: 150, column: 21, scope: !310)
!328 = !DILocation(line: 151, column: 17, scope: !310)
!329 = !DILocation(line: 152, column: 13, scope: !302)
!330 = !DILocation(line: 154, column: 21, scope: !285)
!331 = !DILocation(line: 154, column: 10, scope: !285)
!332 = !DILocation(line: 154, column: 19, scope: !285)
!333 = !DILocalVariable(name: "data", scope: !334, file: !45, line: 157, type: !42)
!334 = distinct !DILexicalBlock(scope: !273, file: !45, line: 156, column: 5)
!335 = !DILocation(line: 157, column: 16, scope: !334)
!336 = !DILocation(line: 157, column: 24, scope: !334)
!337 = !DILocation(line: 157, column: 23, scope: !334)
!338 = !DILocalVariable(name: "i", scope: !339, file: !45, line: 159, type: !23)
!339 = distinct !DILexicalBlock(scope: !334, file: !45, line: 158, column: 9)
!340 = !DILocation(line: 159, column: 17, scope: !339)
!341 = !DILocalVariable(name: "n", scope: !339, file: !45, line: 159, type: !23)
!342 = !DILocation(line: 159, column: 20, scope: !339)
!343 = !DILocalVariable(name: "intVariable", scope: !339, file: !45, line: 159, type: !23)
!344 = !DILocation(line: 159, column: 23, scope: !339)
!345 = !DILocation(line: 160, column: 24, scope: !346)
!346 = distinct !DILexicalBlock(scope: !339, file: !45, line: 160, column: 17)
!347 = !DILocation(line: 160, column: 17, scope: !346)
!348 = !DILocation(line: 160, column: 40, scope: !346)
!349 = !DILocation(line: 160, column: 17, scope: !339)
!350 = !DILocation(line: 163, column: 21, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !45, line: 163, column: 21)
!352 = distinct !DILexicalBlock(scope: !346, file: !45, line: 161, column: 13)
!353 = !DILocation(line: 163, column: 23, scope: !351)
!354 = !DILocation(line: 163, column: 21, scope: !352)
!355 = !DILocation(line: 165, column: 33, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !45, line: 164, column: 17)
!357 = !DILocation(line: 166, column: 28, scope: !358)
!358 = distinct !DILexicalBlock(scope: !356, file: !45, line: 166, column: 21)
!359 = !DILocation(line: 166, column: 26, scope: !358)
!360 = !DILocation(line: 166, column: 33, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !45, line: 166, column: 21)
!362 = !DILocation(line: 166, column: 37, scope: !361)
!363 = !DILocation(line: 166, column: 35, scope: !361)
!364 = !DILocation(line: 166, column: 21, scope: !358)
!365 = !DILocation(line: 169, column: 36, scope: !366)
!366 = distinct !DILexicalBlock(scope: !361, file: !45, line: 167, column: 21)
!367 = !DILocation(line: 170, column: 21, scope: !366)
!368 = !DILocation(line: 166, column: 41, scope: !361)
!369 = !DILocation(line: 166, column: 21, scope: !361)
!370 = distinct !{!370, !364, !371, !209}
!371 = !DILocation(line: 170, column: 21, scope: !358)
!372 = !DILocation(line: 171, column: 34, scope: !356)
!373 = !DILocation(line: 171, column: 21, scope: !356)
!374 = !DILocation(line: 172, column: 17, scope: !356)
!375 = !DILocation(line: 173, column: 13, scope: !352)
!376 = !DILocation(line: 176, column: 1, scope: !273)
!377 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_32_good", scope: !45, file: !45, line: 178, type: !53, scopeLine: 179, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!378 = !DILocation(line: 180, column: 5, scope: !377)
!379 = !DILocation(line: 181, column: 5, scope: !377)
!380 = !DILocation(line: 182, column: 1, scope: !377)
!381 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !382, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !42}
!384 = !DILocalVariable(name: "line", arg: 1, scope: !381, file: !3, line: 11, type: !42)
!385 = !DILocation(line: 11, column: 25, scope: !381)
!386 = !DILocation(line: 13, column: 1, scope: !381)
!387 = !DILocation(line: 14, column: 8, scope: !388)
!388 = distinct !DILexicalBlock(scope: !381, file: !3, line: 14, column: 8)
!389 = !DILocation(line: 14, column: 13, scope: !388)
!390 = !DILocation(line: 14, column: 8, scope: !381)
!391 = !DILocation(line: 16, column: 24, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !3, line: 15, column: 5)
!393 = !DILocation(line: 16, column: 9, scope: !392)
!394 = !DILocation(line: 17, column: 5, scope: !392)
!395 = !DILocation(line: 18, column: 5, scope: !381)
!396 = !DILocation(line: 19, column: 1, scope: !381)
!397 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !382, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!398 = !DILocalVariable(name: "line", arg: 1, scope: !397, file: !3, line: 20, type: !42)
!399 = !DILocation(line: 20, column: 29, scope: !397)
!400 = !DILocation(line: 22, column: 8, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !3, line: 22, column: 8)
!402 = !DILocation(line: 22, column: 13, scope: !401)
!403 = !DILocation(line: 22, column: 8, scope: !397)
!404 = !DILocation(line: 24, column: 24, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !3, line: 23, column: 5)
!406 = !DILocation(line: 24, column: 9, scope: !405)
!407 = !DILocation(line: 25, column: 5, scope: !405)
!408 = !DILocation(line: 26, column: 1, scope: !397)
!409 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !410, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !23)
!414 = !DILocalVariable(name: "line", arg: 1, scope: !409, file: !3, line: 27, type: !412)
!415 = !DILocation(line: 27, column: 29, scope: !409)
!416 = !DILocation(line: 29, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !409, file: !3, line: 29, column: 8)
!418 = !DILocation(line: 29, column: 13, scope: !417)
!419 = !DILocation(line: 29, column: 8, scope: !409)
!420 = !DILocation(line: 31, column: 27, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !3, line: 30, column: 5)
!422 = !DILocation(line: 31, column: 9, scope: !421)
!423 = !DILocation(line: 32, column: 5, scope: !421)
!424 = !DILocation(line: 33, column: 1, scope: !409)
!425 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !426, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !23}
!428 = !DILocalVariable(name: "intNumber", arg: 1, scope: !425, file: !3, line: 35, type: !23)
!429 = !DILocation(line: 35, column: 24, scope: !425)
!430 = !DILocation(line: 37, column: 20, scope: !425)
!431 = !DILocation(line: 37, column: 5, scope: !425)
!432 = !DILocation(line: 38, column: 1, scope: !425)
!433 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !434, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436}
!436 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!437 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !433, file: !3, line: 40, type: !436)
!438 = !DILocation(line: 40, column: 28, scope: !433)
!439 = !DILocation(line: 42, column: 21, scope: !433)
!440 = !DILocation(line: 42, column: 5, scope: !433)
!441 = !DILocation(line: 43, column: 1, scope: !433)
!442 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !443, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !445}
!445 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!446 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !442, file: !3, line: 45, type: !445)
!447 = !DILocation(line: 45, column: 28, scope: !442)
!448 = !DILocation(line: 47, column: 20, scope: !442)
!449 = !DILocation(line: 47, column: 5, scope: !442)
!450 = !DILocation(line: 48, column: 1, scope: !442)
!451 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !452, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !110}
!454 = !DILocalVariable(name: "longNumber", arg: 1, scope: !451, file: !3, line: 50, type: !110)
!455 = !DILocation(line: 50, column: 26, scope: !451)
!456 = !DILocation(line: 52, column: 21, scope: !451)
!457 = !DILocation(line: 52, column: 5, scope: !451)
!458 = !DILocation(line: 53, column: 1, scope: !451)
!459 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !460, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !462}
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !463, line: 27, baseType: !464)
!463 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !109, line: 44, baseType: !110)
!465 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !459, file: !3, line: 55, type: !462)
!466 = !DILocation(line: 55, column: 33, scope: !459)
!467 = !DILocation(line: 57, column: 29, scope: !459)
!468 = !DILocation(line: 57, column: 5, scope: !459)
!469 = !DILocation(line: 58, column: 1, scope: !459)
!470 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !471, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !75}
!473 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !470, file: !3, line: 60, type: !75)
!474 = !DILocation(line: 60, column: 29, scope: !470)
!475 = !DILocation(line: 62, column: 21, scope: !470)
!476 = !DILocation(line: 62, column: 5, scope: !470)
!477 = !DILocation(line: 63, column: 1, scope: !470)
!478 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !479, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !43}
!481 = !DILocalVariable(name: "charHex", arg: 1, scope: !478, file: !3, line: 65, type: !43)
!482 = !DILocation(line: 65, column: 29, scope: !478)
!483 = !DILocation(line: 67, column: 22, scope: !478)
!484 = !DILocation(line: 67, column: 5, scope: !478)
!485 = !DILocation(line: 68, column: 1, scope: !478)
!486 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !487, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !413}
!489 = !DILocalVariable(name: "wideChar", arg: 1, scope: !486, file: !3, line: 70, type: !413)
!490 = !DILocation(line: 70, column: 29, scope: !486)
!491 = !DILocalVariable(name: "s", scope: !486, file: !3, line: 74, type: !492)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 64, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 2)
!495 = !DILocation(line: 74, column: 13, scope: !486)
!496 = !DILocation(line: 75, column: 16, scope: !486)
!497 = !DILocation(line: 75, column: 9, scope: !486)
!498 = !DILocation(line: 75, column: 14, scope: !486)
!499 = !DILocation(line: 76, column: 9, scope: !486)
!500 = !DILocation(line: 76, column: 14, scope: !486)
!501 = !DILocation(line: 77, column: 21, scope: !486)
!502 = !DILocation(line: 77, column: 5, scope: !486)
!503 = !DILocation(line: 78, column: 1, scope: !486)
!504 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !505, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !7}
!507 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !504, file: !3, line: 80, type: !7)
!508 = !DILocation(line: 80, column: 33, scope: !504)
!509 = !DILocation(line: 82, column: 20, scope: !504)
!510 = !DILocation(line: 82, column: 5, scope: !504)
!511 = !DILocation(line: 83, column: 1, scope: !504)
!512 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !513, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !25}
!515 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !512, file: !3, line: 85, type: !25)
!516 = !DILocation(line: 85, column: 45, scope: !512)
!517 = !DILocation(line: 87, column: 22, scope: !512)
!518 = !DILocation(line: 87, column: 5, scope: !512)
!519 = !DILocation(line: 88, column: 1, scope: !512)
!520 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !521, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !523}
!523 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!524 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !520, file: !3, line: 90, type: !523)
!525 = !DILocation(line: 90, column: 29, scope: !520)
!526 = !DILocation(line: 92, column: 20, scope: !520)
!527 = !DILocation(line: 92, column: 5, scope: !520)
!528 = !DILocation(line: 93, column: 1, scope: !520)
!529 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !530, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !534, line: 100, baseType: !535)
!534 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_095/source_code")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !534, line: 96, size: 64, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !535, file: !534, line: 98, baseType: !23, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !535, file: !534, line: 99, baseType: !23, size: 32, offset: 32)
!539 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !529, file: !3, line: 95, type: !532)
!540 = !DILocation(line: 95, column: 40, scope: !529)
!541 = !DILocation(line: 97, column: 26, scope: !529)
!542 = !DILocation(line: 97, column: 47, scope: !529)
!543 = !DILocation(line: 97, column: 55, scope: !529)
!544 = !DILocation(line: 97, column: 76, scope: !529)
!545 = !DILocation(line: 97, column: 5, scope: !529)
!546 = !DILocation(line: 98, column: 1, scope: !529)
!547 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !548, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !550, !75}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!551 = !DILocalVariable(name: "bytes", arg: 1, scope: !547, file: !3, line: 100, type: !550)
!552 = !DILocation(line: 100, column: 38, scope: !547)
!553 = !DILocalVariable(name: "numBytes", arg: 2, scope: !547, file: !3, line: 100, type: !75)
!554 = !DILocation(line: 100, column: 52, scope: !547)
!555 = !DILocalVariable(name: "i", scope: !547, file: !3, line: 102, type: !75)
!556 = !DILocation(line: 102, column: 12, scope: !547)
!557 = !DILocation(line: 103, column: 12, scope: !558)
!558 = distinct !DILexicalBlock(scope: !547, file: !3, line: 103, column: 5)
!559 = !DILocation(line: 103, column: 10, scope: !558)
!560 = !DILocation(line: 103, column: 17, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !3, line: 103, column: 5)
!562 = !DILocation(line: 103, column: 21, scope: !561)
!563 = !DILocation(line: 103, column: 19, scope: !561)
!564 = !DILocation(line: 103, column: 5, scope: !558)
!565 = !DILocation(line: 105, column: 24, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !3, line: 104, column: 5)
!567 = !DILocation(line: 105, column: 30, scope: !566)
!568 = !DILocation(line: 105, column: 9, scope: !566)
!569 = !DILocation(line: 106, column: 5, scope: !566)
!570 = !DILocation(line: 103, column: 31, scope: !561)
!571 = !DILocation(line: 103, column: 5, scope: !561)
!572 = distinct !{!572, !564, !573, !209}
!573 = !DILocation(line: 106, column: 5, scope: !558)
!574 = !DILocation(line: 107, column: 5, scope: !547)
!575 = !DILocation(line: 108, column: 1, scope: !547)
!576 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !577, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DISubroutineType(types: !578)
!578 = !{!75, !550, !75, !42}
!579 = !DILocalVariable(name: "bytes", arg: 1, scope: !576, file: !3, line: 113, type: !550)
!580 = !DILocation(line: 113, column: 39, scope: !576)
!581 = !DILocalVariable(name: "numBytes", arg: 2, scope: !576, file: !3, line: 113, type: !75)
!582 = !DILocation(line: 113, column: 53, scope: !576)
!583 = !DILocalVariable(name: "hex", arg: 3, scope: !576, file: !3, line: 113, type: !42)
!584 = !DILocation(line: 113, column: 71, scope: !576)
!585 = !DILocalVariable(name: "numWritten", scope: !576, file: !3, line: 115, type: !75)
!586 = !DILocation(line: 115, column: 12, scope: !576)
!587 = !DILocation(line: 121, column: 5, scope: !576)
!588 = !DILocation(line: 121, column: 12, scope: !576)
!589 = !DILocation(line: 121, column: 25, scope: !576)
!590 = !DILocation(line: 121, column: 23, scope: !576)
!591 = !DILocation(line: 121, column: 34, scope: !576)
!592 = !DILocation(line: 121, column: 37, scope: !576)
!593 = !DILocation(line: 121, column: 67, scope: !576)
!594 = !DILocation(line: 121, column: 70, scope: !576)
!595 = !DILocation(line: 0, scope: !576)
!596 = !DILocalVariable(name: "byte", scope: !597, file: !3, line: 123, type: !23)
!597 = distinct !DILexicalBlock(scope: !576, file: !3, line: 122, column: 5)
!598 = !DILocation(line: 123, column: 13, scope: !597)
!599 = !DILocation(line: 124, column: 17, scope: !597)
!600 = !DILocation(line: 124, column: 25, scope: !597)
!601 = !DILocation(line: 124, column: 23, scope: !597)
!602 = !DILocation(line: 124, column: 9, scope: !597)
!603 = !DILocation(line: 125, column: 45, scope: !597)
!604 = !DILocation(line: 125, column: 29, scope: !597)
!605 = !DILocation(line: 125, column: 9, scope: !597)
!606 = !DILocation(line: 125, column: 15, scope: !597)
!607 = !DILocation(line: 125, column: 27, scope: !597)
!608 = !DILocation(line: 126, column: 9, scope: !597)
!609 = distinct !{!609, !587, !610, !209}
!610 = !DILocation(line: 127, column: 5, scope: !576)
!611 = !DILocation(line: 129, column: 12, scope: !576)
!612 = !DILocation(line: 129, column: 5, scope: !576)
!613 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !614, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DISubroutineType(types: !615)
!615 = !{!75, !550, !75, !412}
!616 = !DILocalVariable(name: "bytes", arg: 1, scope: !613, file: !3, line: 135, type: !550)
!617 = !DILocation(line: 135, column: 41, scope: !613)
!618 = !DILocalVariable(name: "numBytes", arg: 2, scope: !613, file: !3, line: 135, type: !75)
!619 = !DILocation(line: 135, column: 55, scope: !613)
!620 = !DILocalVariable(name: "hex", arg: 3, scope: !613, file: !3, line: 135, type: !412)
!621 = !DILocation(line: 135, column: 76, scope: !613)
!622 = !DILocalVariable(name: "numWritten", scope: !613, file: !3, line: 137, type: !75)
!623 = !DILocation(line: 137, column: 12, scope: !613)
!624 = !DILocation(line: 143, column: 5, scope: !613)
!625 = !DILocation(line: 143, column: 12, scope: !613)
!626 = !DILocation(line: 143, column: 25, scope: !613)
!627 = !DILocation(line: 143, column: 23, scope: !613)
!628 = !DILocation(line: 143, column: 34, scope: !613)
!629 = !DILocation(line: 143, column: 47, scope: !613)
!630 = !DILocation(line: 143, column: 55, scope: !613)
!631 = !DILocation(line: 143, column: 53, scope: !613)
!632 = !DILocation(line: 143, column: 37, scope: !613)
!633 = !DILocation(line: 143, column: 68, scope: !613)
!634 = !DILocation(line: 143, column: 81, scope: !613)
!635 = !DILocation(line: 143, column: 89, scope: !613)
!636 = !DILocation(line: 143, column: 87, scope: !613)
!637 = !DILocation(line: 143, column: 100, scope: !613)
!638 = !DILocation(line: 143, column: 71, scope: !613)
!639 = !DILocation(line: 0, scope: !613)
!640 = !DILocalVariable(name: "byte", scope: !641, file: !3, line: 145, type: !23)
!641 = distinct !DILexicalBlock(scope: !613, file: !3, line: 144, column: 5)
!642 = !DILocation(line: 145, column: 13, scope: !641)
!643 = !DILocation(line: 146, column: 18, scope: !641)
!644 = !DILocation(line: 146, column: 26, scope: !641)
!645 = !DILocation(line: 146, column: 24, scope: !641)
!646 = !DILocation(line: 146, column: 9, scope: !641)
!647 = !DILocation(line: 147, column: 45, scope: !641)
!648 = !DILocation(line: 147, column: 29, scope: !641)
!649 = !DILocation(line: 147, column: 9, scope: !641)
!650 = !DILocation(line: 147, column: 15, scope: !641)
!651 = !DILocation(line: 147, column: 27, scope: !641)
!652 = !DILocation(line: 148, column: 9, scope: !641)
!653 = distinct !{!653, !624, !654, !209}
!654 = !DILocation(line: 149, column: 5, scope: !613)
!655 = !DILocation(line: 151, column: 12, scope: !613)
!656 = !DILocation(line: 151, column: 5, scope: !613)
!657 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !658, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DISubroutineType(types: !659)
!659 = !{!23}
!660 = !DILocation(line: 158, column: 5, scope: !657)
!661 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !658, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 163, column: 5, scope: !661)
!663 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !658, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 168, column: 13, scope: !663)
!665 = !DILocation(line: 168, column: 20, scope: !663)
!666 = !DILocation(line: 168, column: 5, scope: !663)
!667 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 187, column: 16, scope: !667)
!669 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 188, column: 16, scope: !669)
!671 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 189, column: 16, scope: !671)
!673 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 190, column: 16, scope: !673)
!675 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 191, column: 16, scope: !675)
!677 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 192, column: 16, scope: !677)
!679 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!680 = !DILocation(line: 193, column: 16, scope: !679)
!681 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DILocation(line: 194, column: 16, scope: !681)
!683 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!684 = !DILocation(line: 195, column: 16, scope: !683)
!685 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!686 = !DILocation(line: 198, column: 15, scope: !685)
!687 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!688 = !DILocation(line: 199, column: 15, scope: !687)
!689 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!690 = !DILocation(line: 200, column: 15, scope: !689)
!691 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DILocation(line: 201, column: 15, scope: !691)
!693 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!694 = !DILocation(line: 202, column: 15, scope: !693)
!695 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!696 = !DILocation(line: 203, column: 15, scope: !695)
!697 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!698 = !DILocation(line: 204, column: 15, scope: !697)
!699 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!700 = !DILocation(line: 205, column: 15, scope: !699)
!701 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!702 = !DILocation(line: 206, column: 15, scope: !701)
