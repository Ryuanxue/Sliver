; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData = dso_local global i32* null, align 8, !dbg !0
@CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodG2BData = dso_local global i32* null, align 8, !dbg !9
@CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData = dso_local global i32* null, align 8, !dbg !14
@.str = private unnamed_addr constant [3 x i32] [i32 37, i32 100, i32 0], align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.4 = private unnamed_addr constant [3 x i32] [i32 49, i32 53, i32 0], align 4
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !16
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !41
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !43
@globalTrue = dso_local global i32 1, align 4, !dbg !45
@globalFalse = dso_local global i32 0, align 4, !dbg !47
@globalFive = dso_local global i32 5, align 4, !dbg !49
@globalArgc = dso_local global i32 0, align 4, !dbg !51
@globalArgv = dso_local global i8** null, align 8, !dbg !53
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
define dso_local void @badSink() #0 !dbg !62 {
entry:
  %data = alloca i32*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32** %data, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = load i32*, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData, align 8, !dbg !67
  store i32* %0, i32** %data, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %i, metadata !68, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %n, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !73, metadata !DIExpression()), !dbg !74
  %1 = load i32*, i32** %data, align 8, !dbg !75
  %call = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %1, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !77
  %cmp = icmp eq i32 %call, 1, !dbg !78
  br i1 %cmp, label %if.then, label %if.end, !dbg !79

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !80
  store i32 0, i32* %i, align 4, !dbg !82
  br label %for.cond, !dbg !84

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !85
  %3 = load i32, i32* %n, align 4, !dbg !87
  %cmp1 = icmp slt i32 %2, %3, !dbg !88
  br i1 %cmp1, label %for.body, label %for.end, !dbg !89

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !90
  %inc = add nsw i32 %4, 1, !dbg !90
  store i32 %inc, i32* %intVariable, align 4, !dbg !90
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !93
  %inc2 = add nsw i32 %5, 1, !dbg !93
  store i32 %inc2, i32* %i, align 4, !dbg !93
  br label %for.cond, !dbg !94, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !98
  call void @printIntLine(i32 %6), !dbg !99
  br label %if.end, !dbg !100

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !101
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad() #0 !dbg !102 {
entry:
  %data = alloca i32*, align 8
  %dataBuffer = alloca [100 x i32], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i32** %data, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [100 x i32]* %dataBuffer, metadata !105, metadata !DIExpression()), !dbg !109
  %0 = bitcast [100 x i32]* %dataBuffer to i8*, !dbg !109
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 400, i1 false), !dbg !109
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %dataBuffer, i64 0, i64 0, !dbg !110
  store i32* %arraydecay, i32** %data, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !112, metadata !DIExpression()), !dbg !116
  %1 = load i32*, i32** %data, align 8, !dbg !117
  %call = call i64 @wcslen(i32* %1) #8, !dbg !118
  store i64 %call, i64* %dataLen, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !119, metadata !DIExpression()), !dbg !175
  %2 = load i64, i64* %dataLen, align 8, !dbg !176
  %sub = sub i64 100, %2, !dbg !178
  %cmp = icmp ugt i64 %sub, 1, !dbg !179
  br i1 %cmp, label %if.then, label %if.end11, !dbg !180

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !181
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !183
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !184
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !186
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !187

if.then3:                                         ; preds = %if.then
  %4 = load i32*, i32** %data, align 8, !dbg !188
  %5 = load i64, i64* %dataLen, align 8, !dbg !191
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %5, !dbg !192
  %6 = load i64, i64* %dataLen, align 8, !dbg !193
  %sub4 = sub i64 100, %6, !dbg !194
  %conv = trunc i64 %sub4 to i32, !dbg !195
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !196
  %call5 = call i32* @fgetws(i32* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !197
  %cmp6 = icmp eq i32* %call5, null, !dbg !198
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !199

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)), !dbg !200
  %8 = load i32*, i32** %data, align 8, !dbg !202
  %9 = load i64, i64* %dataLen, align 8, !dbg !203
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %9, !dbg !202
  store i32 0, i32* %arrayidx, align 4, !dbg !204
  br label %if.end, !dbg !205

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !206
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !207
  br label %if.end10, !dbg !208

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !209

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i32*, i32** %data, align 8, !dbg !210
  store i32* %11, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData, align 8, !dbg !211
  call void @badSink(), !dbg !212
  ret void, !dbg !213
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @wcslen(i32*) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #5

declare dso_local i32* @fgetws(i32*, i32, %struct._IO_FILE*) #5

declare dso_local i32 @fclose(%struct._IO_FILE*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink() #0 !dbg !214 {
entry:
  %data = alloca i32*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32** %data, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = load i32*, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodG2BData, align 8, !dbg !217
  store i32* %0, i32** %data, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata i32* %i, metadata !218, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i32* %n, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !223, metadata !DIExpression()), !dbg !224
  %1 = load i32*, i32** %data, align 8, !dbg !225
  %call = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %1, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !227
  %cmp = icmp eq i32 %call, 1, !dbg !228
  br i1 %cmp, label %if.then, label %if.end, !dbg !229

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !230
  store i32 0, i32* %i, align 4, !dbg !232
  br label %for.cond, !dbg !234

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !235
  %3 = load i32, i32* %n, align 4, !dbg !237
  %cmp1 = icmp slt i32 %2, %3, !dbg !238
  br i1 %cmp1, label %for.body, label %for.end, !dbg !239

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !240
  %inc = add nsw i32 %4, 1, !dbg !240
  store i32 %inc, i32* %intVariable, align 4, !dbg !240
  br label %for.inc, !dbg !242

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !243
  %inc2 = add nsw i32 %5, 1, !dbg !243
  store i32 %inc2, i32* %i, align 4, !dbg !243
  br label %for.cond, !dbg !244, !llvm.loop !245

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !247
  call void @printIntLine(i32 %6), !dbg !248
  br label %if.end, !dbg !249

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !251 {
entry:
  %data = alloca i32*, align 8
  %dataBuffer = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata i32** %data, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata [100 x i32]* %dataBuffer, metadata !254, metadata !DIExpression()), !dbg !255
  %0 = bitcast [100 x i32]* %dataBuffer to i8*, !dbg !255
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 400, i1 false), !dbg !255
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %dataBuffer, i64 0, i64 0, !dbg !256
  store i32* %arraydecay, i32** %data, align 8, !dbg !257
  %1 = load i32*, i32** %data, align 8, !dbg !258
  %call = call i32* @wcscpy(i32* %1, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.4, i64 0, i64 0)) #7, !dbg !259
  %2 = load i32*, i32** %data, align 8, !dbg !260
  store i32* %2, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodG2BData, align 8, !dbg !261
  call void @goodG2BSink(), !dbg !262
  ret void, !dbg !263
}

; Function Attrs: nounwind
declare dso_local i32* @wcscpy(i32*, i32*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink() #0 !dbg !264 {
entry:
  %data = alloca i32*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32** %data, metadata !265, metadata !DIExpression()), !dbg !266
  %0 = load i32*, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData, align 8, !dbg !267
  store i32* %0, i32** %data, align 8, !dbg !266
  call void @llvm.dbg.declare(metadata i32* %i, metadata !268, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata i32* %n, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !273, metadata !DIExpression()), !dbg !274
  %1 = load i32*, i32** %data, align 8, !dbg !275
  %call = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %1, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !277
  %cmp = icmp eq i32 %call, 1, !dbg !278
  br i1 %cmp, label %if.then, label %if.end5, !dbg !279

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !280
  %cmp1 = icmp slt i32 %2, 10000, !dbg !283
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !284

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !285
  store i32 0, i32* %i, align 4, !dbg !287
  br label %for.cond, !dbg !289

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !290
  %4 = load i32, i32* %n, align 4, !dbg !292
  %cmp3 = icmp slt i32 %3, %4, !dbg !293
  br i1 %cmp3, label %for.body, label %for.end, !dbg !294

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !295
  %inc = add nsw i32 %5, 1, !dbg !295
  store i32 %inc, i32* %intVariable, align 4, !dbg !295
  br label %for.inc, !dbg !297

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !298
  %inc4 = add nsw i32 %6, 1, !dbg !298
  store i32 %inc4, i32* %i, align 4, !dbg !298
  br label %for.cond, !dbg !299, !llvm.loop !300

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !302
  call void @printIntLine(i32 %7), !dbg !303
  br label %if.end, !dbg !304

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !305

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !307 {
entry:
  %data = alloca i32*, align 8
  %dataBuffer = alloca [100 x i32], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i32** %data, metadata !308, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.declare(metadata [100 x i32]* %dataBuffer, metadata !310, metadata !DIExpression()), !dbg !311
  %0 = bitcast [100 x i32]* %dataBuffer to i8*, !dbg !311
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 400, i1 false), !dbg !311
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %dataBuffer, i64 0, i64 0, !dbg !312
  store i32* %arraydecay, i32** %data, align 8, !dbg !313
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !314, metadata !DIExpression()), !dbg !316
  %1 = load i32*, i32** %data, align 8, !dbg !317
  %call = call i64 @wcslen(i32* %1) #8, !dbg !318
  store i64 %call, i64* %dataLen, align 8, !dbg !316
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !319, metadata !DIExpression()), !dbg !320
  %2 = load i64, i64* %dataLen, align 8, !dbg !321
  %sub = sub i64 100, %2, !dbg !323
  %cmp = icmp ugt i64 %sub, 1, !dbg !324
  br i1 %cmp, label %if.then, label %if.end11, !dbg !325

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !326
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !328
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !329
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !331
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !332

if.then3:                                         ; preds = %if.then
  %4 = load i32*, i32** %data, align 8, !dbg !333
  %5 = load i64, i64* %dataLen, align 8, !dbg !336
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %5, !dbg !337
  %6 = load i64, i64* %dataLen, align 8, !dbg !338
  %sub4 = sub i64 100, %6, !dbg !339
  %conv = trunc i64 %sub4 to i32, !dbg !340
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !341
  %call5 = call i32* @fgetws(i32* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !342
  %cmp6 = icmp eq i32* %call5, null, !dbg !343
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !344

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)), !dbg !345
  %8 = load i32*, i32** %data, align 8, !dbg !347
  %9 = load i64, i64* %dataLen, align 8, !dbg !348
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %9, !dbg !347
  store i32 0, i32* %arrayidx, align 4, !dbg !349
  br label %if.end, !dbg !350

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !351
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !352
  br label %if.end10, !dbg !353

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !354

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i32*, i32** %data, align 8, !dbg !355
  store i32* %11, i32** @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData, align 8, !dbg !356
  call void @goodB2GSink(), !dbg !357
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__wchar_t_file_45_good() #0 !dbg !359 {
entry:
  call void @goodG2B(), !dbg !360
  call void @goodB2G(), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !363 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !368
  %0 = load i8*, i8** %line.addr, align 8, !dbg !369
  %cmp = icmp ne i8* %0, null, !dbg !371
  br i1 %cmp, label %if.then, label %if.end, !dbg !372

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !373
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !375
  br label %if.end, !dbg !376

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !377
  ret void, !dbg !378
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !379 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load i8*, i8** %line.addr, align 8, !dbg !382
  %cmp = icmp ne i8* %0, null, !dbg !384
  br i1 %cmp, label %if.then, label %if.end, !dbg !385

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !386
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !388
  br label %if.end, !dbg !389

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !390
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !391 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load i32*, i32** %line.addr, align 8, !dbg !396
  %cmp = icmp ne i32* %0, null, !dbg !398
  br i1 %cmp, label %if.then, label %if.end, !dbg !399

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !400
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !402
  br label %if.end, !dbg !403

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !404
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !405 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.11, i64 0, i64 0), i32 %0), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !413 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !419
  %conv = sext i16 %0 to i32, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.12, i64 0, i64 0), i32 %conv), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !422 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !428
  %conv = fpext float %0 to double, !dbg !428
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !429
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !431 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !439 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !445, metadata !DIExpression()), !dbg !446
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !447
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !448
  ret void, !dbg !449
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !450 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !453, metadata !DIExpression()), !dbg !454
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !455
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !456
  ret void, !dbg !457
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !458 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !463
  %conv = sext i8 %0 to i32, !dbg !463
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !464
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !466 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !471, metadata !DIExpression()), !dbg !475
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !476
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !477
  store i32 %0, i32* %arrayidx, align 4, !dbg !478
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !479
  store i32 0, i32* %arrayidx1, align 4, !dbg !480
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !481
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !482
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !484 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !487, metadata !DIExpression()), !dbg !488
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !489
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !490
  ret void, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !492 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !495, metadata !DIExpression()), !dbg !496
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !497
  %conv = zext i8 %0 to i32, !dbg !497
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !498
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !500 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !504, metadata !DIExpression()), !dbg !505
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !506
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !507
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !509 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !519, metadata !DIExpression()), !dbg !520
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !521
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !522
  %1 = load i32, i32* %intOne, align 4, !dbg !522
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !523
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !524
  %3 = load i32, i32* %intTwo, align 4, !dbg !524
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !525
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !527 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !531, metadata !DIExpression()), !dbg !532
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata i64* %i, metadata !535, metadata !DIExpression()), !dbg !536
  store i64 0, i64* %i, align 8, !dbg !537
  br label %for.cond, !dbg !539

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !540
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !542
  %cmp = icmp ult i64 %0, %1, !dbg !543
  br i1 %cmp, label %for.body, label %for.end, !dbg !544

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !545
  %3 = load i64, i64* %i, align 8, !dbg !547
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !545
  %4 = load i8, i8* %arrayidx, align 1, !dbg !545
  %conv = zext i8 %4 to i32, !dbg !545
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !548
  br label %for.inc, !dbg !549

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !550
  %inc = add i64 %5, 1, !dbg !550
  store i64 %inc, i64* %i, align 8, !dbg !550
  br label %for.cond, !dbg !551, !llvm.loop !552

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !554
  ret void, !dbg !555
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !556 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !559, metadata !DIExpression()), !dbg !560
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !561, metadata !DIExpression()), !dbg !562
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !563, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !565, metadata !DIExpression()), !dbg !566
  store i64 0, i64* %numWritten, align 8, !dbg !566
  br label %while.cond, !dbg !567

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !568
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !569
  %cmp = icmp ult i64 %0, %1, !dbg !570
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !571

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !572
  %2 = load i16*, i16** %call, align 8, !dbg !572
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !572
  %4 = load i64, i64* %numWritten, align 8, !dbg !572
  %mul = mul i64 2, %4, !dbg !572
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !572
  %5 = load i8, i8* %arrayidx, align 1, !dbg !572
  %conv = sext i8 %5 to i32, !dbg !572
  %idxprom = sext i32 %conv to i64, !dbg !572
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !572
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !572
  %conv2 = zext i16 %6 to i32, !dbg !572
  %and = and i32 %conv2, 4096, !dbg !572
  %tobool = icmp ne i32 %and, 0, !dbg !572
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !573

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !574
  %7 = load i16*, i16** %call3, align 8, !dbg !574
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !574
  %9 = load i64, i64* %numWritten, align 8, !dbg !574
  %mul4 = mul i64 2, %9, !dbg !574
  %add = add i64 %mul4, 1, !dbg !574
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !574
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !574
  %conv6 = sext i8 %10 to i32, !dbg !574
  %idxprom7 = sext i32 %conv6 to i64, !dbg !574
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !574
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !574
  %conv9 = zext i16 %11 to i32, !dbg !574
  %and10 = and i32 %conv9, 4096, !dbg !574
  %tobool11 = icmp ne i32 %and10, 0, !dbg !573
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !575
  br i1 %12, label %while.body, label %while.end, !dbg !567

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !576, metadata !DIExpression()), !dbg !578
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !579
  %14 = load i64, i64* %numWritten, align 8, !dbg !580
  %mul12 = mul i64 2, %14, !dbg !581
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !579
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !582
  %15 = load i32, i32* %byte, align 4, !dbg !583
  %conv15 = trunc i32 %15 to i8, !dbg !584
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !585
  %17 = load i64, i64* %numWritten, align 8, !dbg !586
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !585
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !587
  %18 = load i64, i64* %numWritten, align 8, !dbg !588
  %inc = add i64 %18, 1, !dbg !588
  store i64 %inc, i64* %numWritten, align 8, !dbg !588
  br label %while.cond, !dbg !567, !llvm.loop !589

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !591
  ret i64 %19, !dbg !592
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !593 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !596, metadata !DIExpression()), !dbg !597
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !598, metadata !DIExpression()), !dbg !599
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !600, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !602, metadata !DIExpression()), !dbg !603
  store i64 0, i64* %numWritten, align 8, !dbg !603
  br label %while.cond, !dbg !604

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !605
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !606
  %cmp = icmp ult i64 %0, %1, !dbg !607
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !608

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !609
  %3 = load i64, i64* %numWritten, align 8, !dbg !610
  %mul = mul i64 2, %3, !dbg !611
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !609
  %4 = load i32, i32* %arrayidx, align 4, !dbg !609
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !612
  %tobool = icmp ne i32 %call, 0, !dbg !612
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !613

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !614
  %6 = load i64, i64* %numWritten, align 8, !dbg !615
  %mul1 = mul i64 2, %6, !dbg !616
  %add = add i64 %mul1, 1, !dbg !617
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !614
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !614
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !618
  %tobool4 = icmp ne i32 %call3, 0, !dbg !613
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !619
  br i1 %8, label %while.body, label %while.end, !dbg !604

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !620, metadata !DIExpression()), !dbg !622
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !623
  %10 = load i64, i64* %numWritten, align 8, !dbg !624
  %mul5 = mul i64 2, %10, !dbg !625
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !623
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !626
  %11 = load i32, i32* %byte, align 4, !dbg !627
  %conv = trunc i32 %11 to i8, !dbg !628
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !629
  %13 = load i64, i64* %numWritten, align 8, !dbg !630
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !629
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !631
  %14 = load i64, i64* %numWritten, align 8, !dbg !632
  %inc = add i64 %14, 1, !dbg !632
  store i64 %inc, i64* %numWritten, align 8, !dbg !632
  br label %while.cond, !dbg !604, !llvm.loop !633

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !635
  ret i64 %15, !dbg !636
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !637 {
entry:
  ret i32 1, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !641 {
entry:
  ret i32 0, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !643 {
entry:
  %call = call i32 @rand() #7, !dbg !644
  %rem = srem i32 %call, 2, !dbg !645
  ret i32 %rem, !dbg !646
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2, !18}
!llvm.ident = !{!58, !58}
!llvm.module.flags = !{!59, !60, !61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData", scope: !2, file: !3, line: 33, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_342/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !14}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodG2BData", scope: !2, file: !3, line: 34, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !13, line: 74, baseType: !7)
!13 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData", scope: !2, file: !3, line: 35, type: !11, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !18, file: !19, line: 174, type: !7, isLocal: false, isDefinition: true)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !37, globals: !40, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_342/source_code")
!20 = !{!21}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 46, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!25 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!33 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!36 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!37 = !{!6, !7, !38, !39}
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !{!16, !41, !43, !45, !47, !49, !51, !53}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !18, file: !19, line: 175, type: !7, isLocal: false, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !18, file: !19, line: 176, type: !7, isLocal: false, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "globalTrue", scope: !18, file: !19, line: 181, type: !7, isLocal: false, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "globalFalse", scope: !18, file: !19, line: 182, type: !7, isLocal: false, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "globalFive", scope: !18, file: !19, line: 183, type: !7, isLocal: false, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "globalArgc", scope: !18, file: !19, line: 214, type: !7, isLocal: false, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "globalArgv", scope: !18, file: !19, line: 215, type: !55, isLocal: false, isDefinition: true)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!58 = !{!"clang version 12.0.0"}
!59 = !{i32 7, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 39, type: !63, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!63 = !DISubroutineType(types: !64)
!64 = !{null}
!65 = !DILocalVariable(name: "data", scope: !62, file: !3, line: 41, type: !11)
!66 = !DILocation(line: 41, column: 15, scope: !62)
!67 = !DILocation(line: 41, column: 22, scope: !62)
!68 = !DILocalVariable(name: "i", scope: !69, file: !3, line: 43, type: !7)
!69 = distinct !DILexicalBlock(scope: !62, file: !3, line: 42, column: 5)
!70 = !DILocation(line: 43, column: 13, scope: !69)
!71 = !DILocalVariable(name: "n", scope: !69, file: !3, line: 43, type: !7)
!72 = !DILocation(line: 43, column: 16, scope: !69)
!73 = !DILocalVariable(name: "intVariable", scope: !69, file: !3, line: 43, type: !7)
!74 = !DILocation(line: 43, column: 19, scope: !69)
!75 = !DILocation(line: 44, column: 21, scope: !76)
!76 = distinct !DILexicalBlock(scope: !69, file: !3, line: 44, column: 13)
!77 = !DILocation(line: 44, column: 13, scope: !76)
!78 = !DILocation(line: 44, column: 38, scope: !76)
!79 = !DILocation(line: 44, column: 13, scope: !69)
!80 = !DILocation(line: 47, column: 25, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !3, line: 45, column: 9)
!82 = !DILocation(line: 48, column: 20, scope: !83)
!83 = distinct !DILexicalBlock(scope: !81, file: !3, line: 48, column: 13)
!84 = !DILocation(line: 48, column: 18, scope: !83)
!85 = !DILocation(line: 48, column: 25, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !3, line: 48, column: 13)
!87 = !DILocation(line: 48, column: 29, scope: !86)
!88 = !DILocation(line: 48, column: 27, scope: !86)
!89 = !DILocation(line: 48, column: 13, scope: !83)
!90 = !DILocation(line: 51, column: 28, scope: !91)
!91 = distinct !DILexicalBlock(scope: !86, file: !3, line: 49, column: 13)
!92 = !DILocation(line: 52, column: 13, scope: !91)
!93 = !DILocation(line: 48, column: 33, scope: !86)
!94 = !DILocation(line: 48, column: 13, scope: !86)
!95 = distinct !{!95, !89, !96, !97}
!96 = !DILocation(line: 52, column: 13, scope: !83)
!97 = !{!"llvm.loop.mustprogress"}
!98 = !DILocation(line: 53, column: 26, scope: !81)
!99 = !DILocation(line: 53, column: 13, scope: !81)
!100 = !DILocation(line: 54, column: 9, scope: !81)
!101 = !DILocation(line: 56, column: 1, scope: !62)
!102 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad", scope: !3, file: !3, line: 58, type: !63, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!103 = !DILocalVariable(name: "data", scope: !102, file: !3, line: 60, type: !11)
!104 = !DILocation(line: 60, column: 15, scope: !102)
!105 = !DILocalVariable(name: "dataBuffer", scope: !102, file: !3, line: 61, type: !106)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 100)
!109 = !DILocation(line: 61, column: 13, scope: !102)
!110 = !DILocation(line: 62, column: 12, scope: !102)
!111 = !DILocation(line: 62, column: 10, scope: !102)
!112 = !DILocalVariable(name: "dataLen", scope: !113, file: !3, line: 65, type: !114)
!113 = distinct !DILexicalBlock(scope: !102, file: !3, line: 63, column: 5)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 46, baseType: !115)
!115 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!116 = !DILocation(line: 65, column: 16, scope: !113)
!117 = !DILocation(line: 65, column: 33, scope: !113)
!118 = !DILocation(line: 65, column: 26, scope: !113)
!119 = !DILocalVariable(name: "pFile", scope: !113, file: !3, line: 66, type: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !122, line: 7, baseType: !123)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !124, line: 49, size: 1728, elements: !125)
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !141, !143, !144, !145, !149, !150, !152, !156, !159, !161, !164, !167, !168, !169, !170, !171}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !123, file: !124, line: 51, baseType: !7, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !123, file: !124, line: 54, baseType: !56, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !123, file: !124, line: 55, baseType: !56, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !123, file: !124, line: 56, baseType: !56, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !123, file: !124, line: 57, baseType: !56, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !123, file: !124, line: 58, baseType: !56, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !123, file: !124, line: 59, baseType: !56, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !123, file: !124, line: 60, baseType: !56, size: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !123, file: !124, line: 61, baseType: !56, size: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !123, file: !124, line: 64, baseType: !56, size: 64, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !123, file: !124, line: 65, baseType: !56, size: 64, offset: 640)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !123, file: !124, line: 66, baseType: !56, size: 64, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !123, file: !124, line: 68, baseType: !139, size: 64, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !124, line: 36, flags: DIFlagFwdDecl)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !123, file: !124, line: 70, baseType: !142, size: 64, offset: 832)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !123, file: !124, line: 72, baseType: !7, size: 32, offset: 896)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !123, file: !124, line: 73, baseType: !7, size: 32, offset: 928)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !123, file: !124, line: 74, baseType: !146, size: 64, offset: 960)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !147, line: 152, baseType: !148)
!147 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!148 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !123, file: !124, line: 77, baseType: !38, size: 16, offset: 1024)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !123, file: !124, line: 78, baseType: !151, size: 8, offset: 1040)
!151 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !123, file: !124, line: 79, baseType: !153, size: 8, offset: 1048)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 8, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 1)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !123, file: !124, line: 81, baseType: !157, size: 64, offset: 1088)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !124, line: 43, baseType: null)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !123, file: !124, line: 89, baseType: !160, size: 64, offset: 1152)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !147, line: 153, baseType: !148)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !123, file: !124, line: 91, baseType: !162, size: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !124, line: 37, flags: DIFlagFwdDecl)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !123, file: !124, line: 92, baseType: !165, size: 64, offset: 1280)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !124, line: 38, flags: DIFlagFwdDecl)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !123, file: !124, line: 93, baseType: !142, size: 64, offset: 1344)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !123, file: !124, line: 94, baseType: !6, size: 64, offset: 1408)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !123, file: !124, line: 95, baseType: !114, size: 64, offset: 1472)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !123, file: !124, line: 96, baseType: !7, size: 32, offset: 1536)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !123, file: !124, line: 98, baseType: !172, size: 160, offset: 1568)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 160, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 20)
!175 = !DILocation(line: 66, column: 16, scope: !113)
!176 = !DILocation(line: 68, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !113, file: !3, line: 68, column: 13)
!178 = !DILocation(line: 68, column: 16, scope: !177)
!179 = !DILocation(line: 68, column: 25, scope: !177)
!180 = !DILocation(line: 68, column: 13, scope: !113)
!181 = !DILocation(line: 70, column: 21, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !3, line: 69, column: 9)
!183 = !DILocation(line: 70, column: 19, scope: !182)
!184 = !DILocation(line: 71, column: 17, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !3, line: 71, column: 17)
!186 = !DILocation(line: 71, column: 23, scope: !185)
!187 = !DILocation(line: 71, column: 17, scope: !182)
!188 = !DILocation(line: 74, column: 28, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 74, column: 21)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 72, column: 13)
!191 = !DILocation(line: 74, column: 33, scope: !189)
!192 = !DILocation(line: 74, column: 32, scope: !189)
!193 = !DILocation(line: 74, column: 52, scope: !189)
!194 = !DILocation(line: 74, column: 51, scope: !189)
!195 = !DILocation(line: 74, column: 42, scope: !189)
!196 = !DILocation(line: 74, column: 62, scope: !189)
!197 = !DILocation(line: 74, column: 21, scope: !189)
!198 = !DILocation(line: 74, column: 69, scope: !189)
!199 = !DILocation(line: 74, column: 21, scope: !190)
!200 = !DILocation(line: 76, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !189, file: !3, line: 75, column: 17)
!202 = !DILocation(line: 78, column: 21, scope: !201)
!203 = !DILocation(line: 78, column: 26, scope: !201)
!204 = !DILocation(line: 78, column: 35, scope: !201)
!205 = !DILocation(line: 79, column: 17, scope: !201)
!206 = !DILocation(line: 80, column: 24, scope: !190)
!207 = !DILocation(line: 80, column: 17, scope: !190)
!208 = !DILocation(line: 81, column: 13, scope: !190)
!209 = !DILocation(line: 82, column: 9, scope: !182)
!210 = !DILocation(line: 84, column: 64, scope: !102)
!211 = !DILocation(line: 84, column: 62, scope: !102)
!212 = !DILocation(line: 85, column: 5, scope: !102)
!213 = !DILocation(line: 86, column: 1, scope: !102)
!214 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 93, type: !63, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!215 = !DILocalVariable(name: "data", scope: !214, file: !3, line: 95, type: !11)
!216 = !DILocation(line: 95, column: 15, scope: !214)
!217 = !DILocation(line: 95, column: 22, scope: !214)
!218 = !DILocalVariable(name: "i", scope: !219, file: !3, line: 97, type: !7)
!219 = distinct !DILexicalBlock(scope: !214, file: !3, line: 96, column: 5)
!220 = !DILocation(line: 97, column: 13, scope: !219)
!221 = !DILocalVariable(name: "n", scope: !219, file: !3, line: 97, type: !7)
!222 = !DILocation(line: 97, column: 16, scope: !219)
!223 = !DILocalVariable(name: "intVariable", scope: !219, file: !3, line: 97, type: !7)
!224 = !DILocation(line: 97, column: 19, scope: !219)
!225 = !DILocation(line: 98, column: 21, scope: !226)
!226 = distinct !DILexicalBlock(scope: !219, file: !3, line: 98, column: 13)
!227 = !DILocation(line: 98, column: 13, scope: !226)
!228 = !DILocation(line: 98, column: 38, scope: !226)
!229 = !DILocation(line: 98, column: 13, scope: !219)
!230 = !DILocation(line: 101, column: 25, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !3, line: 99, column: 9)
!232 = !DILocation(line: 102, column: 20, scope: !233)
!233 = distinct !DILexicalBlock(scope: !231, file: !3, line: 102, column: 13)
!234 = !DILocation(line: 102, column: 18, scope: !233)
!235 = !DILocation(line: 102, column: 25, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !3, line: 102, column: 13)
!237 = !DILocation(line: 102, column: 29, scope: !236)
!238 = !DILocation(line: 102, column: 27, scope: !236)
!239 = !DILocation(line: 102, column: 13, scope: !233)
!240 = !DILocation(line: 105, column: 28, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !3, line: 103, column: 13)
!242 = !DILocation(line: 106, column: 13, scope: !241)
!243 = !DILocation(line: 102, column: 33, scope: !236)
!244 = !DILocation(line: 102, column: 13, scope: !236)
!245 = distinct !{!245, !239, !246, !97}
!246 = !DILocation(line: 106, column: 13, scope: !233)
!247 = !DILocation(line: 107, column: 26, scope: !231)
!248 = !DILocation(line: 107, column: 13, scope: !231)
!249 = !DILocation(line: 108, column: 9, scope: !231)
!250 = !DILocation(line: 110, column: 1, scope: !214)
!251 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 112, type: !63, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!252 = !DILocalVariable(name: "data", scope: !251, file: !3, line: 114, type: !11)
!253 = !DILocation(line: 114, column: 15, scope: !251)
!254 = !DILocalVariable(name: "dataBuffer", scope: !251, file: !3, line: 115, type: !106)
!255 = !DILocation(line: 115, column: 13, scope: !251)
!256 = !DILocation(line: 116, column: 12, scope: !251)
!257 = !DILocation(line: 116, column: 10, scope: !251)
!258 = !DILocation(line: 118, column: 12, scope: !251)
!259 = !DILocation(line: 118, column: 5, scope: !251)
!260 = !DILocation(line: 119, column: 68, scope: !251)
!261 = !DILocation(line: 119, column: 66, scope: !251)
!262 = !DILocation(line: 120, column: 5, scope: !251)
!263 = !DILocation(line: 121, column: 1, scope: !251)
!264 = distinct !DISubprogram(name: "goodB2GSink", scope: !3, file: !3, line: 124, type: !63, scopeLine: 125, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!265 = !DILocalVariable(name: "data", scope: !264, file: !3, line: 126, type: !11)
!266 = !DILocation(line: 126, column: 15, scope: !264)
!267 = !DILocation(line: 126, column: 22, scope: !264)
!268 = !DILocalVariable(name: "i", scope: !269, file: !3, line: 128, type: !7)
!269 = distinct !DILexicalBlock(scope: !264, file: !3, line: 127, column: 5)
!270 = !DILocation(line: 128, column: 13, scope: !269)
!271 = !DILocalVariable(name: "n", scope: !269, file: !3, line: 128, type: !7)
!272 = !DILocation(line: 128, column: 16, scope: !269)
!273 = !DILocalVariable(name: "intVariable", scope: !269, file: !3, line: 128, type: !7)
!274 = !DILocation(line: 128, column: 19, scope: !269)
!275 = !DILocation(line: 129, column: 21, scope: !276)
!276 = distinct !DILexicalBlock(scope: !269, file: !3, line: 129, column: 13)
!277 = !DILocation(line: 129, column: 13, scope: !276)
!278 = !DILocation(line: 129, column: 38, scope: !276)
!279 = !DILocation(line: 129, column: 13, scope: !269)
!280 = !DILocation(line: 132, column: 17, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !3, line: 132, column: 17)
!282 = distinct !DILexicalBlock(scope: !276, file: !3, line: 130, column: 9)
!283 = !DILocation(line: 132, column: 19, scope: !281)
!284 = !DILocation(line: 132, column: 17, scope: !282)
!285 = !DILocation(line: 134, column: 29, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !3, line: 133, column: 13)
!287 = !DILocation(line: 135, column: 24, scope: !288)
!288 = distinct !DILexicalBlock(scope: !286, file: !3, line: 135, column: 17)
!289 = !DILocation(line: 135, column: 22, scope: !288)
!290 = !DILocation(line: 135, column: 29, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !3, line: 135, column: 17)
!292 = !DILocation(line: 135, column: 33, scope: !291)
!293 = !DILocation(line: 135, column: 31, scope: !291)
!294 = !DILocation(line: 135, column: 17, scope: !288)
!295 = !DILocation(line: 138, column: 32, scope: !296)
!296 = distinct !DILexicalBlock(scope: !291, file: !3, line: 136, column: 17)
!297 = !DILocation(line: 139, column: 17, scope: !296)
!298 = !DILocation(line: 135, column: 37, scope: !291)
!299 = !DILocation(line: 135, column: 17, scope: !291)
!300 = distinct !{!300, !294, !301, !97}
!301 = !DILocation(line: 139, column: 17, scope: !288)
!302 = !DILocation(line: 140, column: 30, scope: !286)
!303 = !DILocation(line: 140, column: 17, scope: !286)
!304 = !DILocation(line: 141, column: 13, scope: !286)
!305 = !DILocation(line: 142, column: 9, scope: !282)
!306 = !DILocation(line: 144, column: 1, scope: !264)
!307 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 146, type: !63, scopeLine: 147, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!308 = !DILocalVariable(name: "data", scope: !307, file: !3, line: 148, type: !11)
!309 = !DILocation(line: 148, column: 15, scope: !307)
!310 = !DILocalVariable(name: "dataBuffer", scope: !307, file: !3, line: 149, type: !106)
!311 = !DILocation(line: 149, column: 13, scope: !307)
!312 = !DILocation(line: 150, column: 12, scope: !307)
!313 = !DILocation(line: 150, column: 10, scope: !307)
!314 = !DILocalVariable(name: "dataLen", scope: !315, file: !3, line: 153, type: !114)
!315 = distinct !DILexicalBlock(scope: !307, file: !3, line: 151, column: 5)
!316 = !DILocation(line: 153, column: 16, scope: !315)
!317 = !DILocation(line: 153, column: 33, scope: !315)
!318 = !DILocation(line: 153, column: 26, scope: !315)
!319 = !DILocalVariable(name: "pFile", scope: !315, file: !3, line: 154, type: !120)
!320 = !DILocation(line: 154, column: 16, scope: !315)
!321 = !DILocation(line: 156, column: 17, scope: !322)
!322 = distinct !DILexicalBlock(scope: !315, file: !3, line: 156, column: 13)
!323 = !DILocation(line: 156, column: 16, scope: !322)
!324 = !DILocation(line: 156, column: 25, scope: !322)
!325 = !DILocation(line: 156, column: 13, scope: !315)
!326 = !DILocation(line: 158, column: 21, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !3, line: 157, column: 9)
!328 = !DILocation(line: 158, column: 19, scope: !327)
!329 = !DILocation(line: 159, column: 17, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !3, line: 159, column: 17)
!331 = !DILocation(line: 159, column: 23, scope: !330)
!332 = !DILocation(line: 159, column: 17, scope: !327)
!333 = !DILocation(line: 162, column: 28, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 162, column: 21)
!335 = distinct !DILexicalBlock(scope: !330, file: !3, line: 160, column: 13)
!336 = !DILocation(line: 162, column: 33, scope: !334)
!337 = !DILocation(line: 162, column: 32, scope: !334)
!338 = !DILocation(line: 162, column: 52, scope: !334)
!339 = !DILocation(line: 162, column: 51, scope: !334)
!340 = !DILocation(line: 162, column: 42, scope: !334)
!341 = !DILocation(line: 162, column: 62, scope: !334)
!342 = !DILocation(line: 162, column: 21, scope: !334)
!343 = !DILocation(line: 162, column: 69, scope: !334)
!344 = !DILocation(line: 162, column: 21, scope: !335)
!345 = !DILocation(line: 164, column: 21, scope: !346)
!346 = distinct !DILexicalBlock(scope: !334, file: !3, line: 163, column: 17)
!347 = !DILocation(line: 166, column: 21, scope: !346)
!348 = !DILocation(line: 166, column: 26, scope: !346)
!349 = !DILocation(line: 166, column: 35, scope: !346)
!350 = !DILocation(line: 167, column: 17, scope: !346)
!351 = !DILocation(line: 168, column: 24, scope: !335)
!352 = !DILocation(line: 168, column: 17, scope: !335)
!353 = !DILocation(line: 169, column: 13, scope: !335)
!354 = !DILocation(line: 170, column: 9, scope: !327)
!355 = !DILocation(line: 172, column: 68, scope: !307)
!356 = !DILocation(line: 172, column: 66, scope: !307)
!357 = !DILocation(line: 173, column: 5, scope: !307)
!358 = !DILocation(line: 174, column: 1, scope: !307)
!359 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__wchar_t_file_45_good", scope: !3, file: !3, line: 176, type: !63, scopeLine: 177, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!360 = !DILocation(line: 178, column: 5, scope: !359)
!361 = !DILocation(line: 179, column: 5, scope: !359)
!362 = !DILocation(line: 180, column: 1, scope: !359)
!363 = distinct !DISubprogram(name: "printLine", scope: !19, file: !19, line: 11, type: !364, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !56}
!366 = !DILocalVariable(name: "line", arg: 1, scope: !363, file: !19, line: 11, type: !56)
!367 = !DILocation(line: 11, column: 25, scope: !363)
!368 = !DILocation(line: 13, column: 1, scope: !363)
!369 = !DILocation(line: 14, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !363, file: !19, line: 14, column: 8)
!371 = !DILocation(line: 14, column: 13, scope: !370)
!372 = !DILocation(line: 14, column: 8, scope: !363)
!373 = !DILocation(line: 16, column: 24, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !19, line: 15, column: 5)
!375 = !DILocation(line: 16, column: 9, scope: !374)
!376 = !DILocation(line: 17, column: 5, scope: !374)
!377 = !DILocation(line: 18, column: 5, scope: !363)
!378 = !DILocation(line: 19, column: 1, scope: !363)
!379 = distinct !DISubprogram(name: "printSinkLine", scope: !19, file: !19, line: 20, type: !364, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!380 = !DILocalVariable(name: "line", arg: 1, scope: !379, file: !19, line: 20, type: !56)
!381 = !DILocation(line: 20, column: 29, scope: !379)
!382 = !DILocation(line: 22, column: 8, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !19, line: 22, column: 8)
!384 = !DILocation(line: 22, column: 13, scope: !383)
!385 = !DILocation(line: 22, column: 8, scope: !379)
!386 = !DILocation(line: 24, column: 24, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !19, line: 23, column: 5)
!388 = !DILocation(line: 24, column: 9, scope: !387)
!389 = !DILocation(line: 25, column: 5, scope: !387)
!390 = !DILocation(line: 26, column: 1, scope: !379)
!391 = distinct !DISubprogram(name: "printWLine", scope: !19, file: !19, line: 27, type: !392, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !11}
!394 = !DILocalVariable(name: "line", arg: 1, scope: !391, file: !19, line: 27, type: !11)
!395 = !DILocation(line: 27, column: 29, scope: !391)
!396 = !DILocation(line: 29, column: 8, scope: !397)
!397 = distinct !DILexicalBlock(scope: !391, file: !19, line: 29, column: 8)
!398 = !DILocation(line: 29, column: 13, scope: !397)
!399 = !DILocation(line: 29, column: 8, scope: !391)
!400 = !DILocation(line: 31, column: 27, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !19, line: 30, column: 5)
!402 = !DILocation(line: 31, column: 9, scope: !401)
!403 = !DILocation(line: 32, column: 5, scope: !401)
!404 = !DILocation(line: 33, column: 1, scope: !391)
!405 = distinct !DISubprogram(name: "printIntLine", scope: !19, file: !19, line: 35, type: !406, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !7}
!408 = !DILocalVariable(name: "intNumber", arg: 1, scope: !405, file: !19, line: 35, type: !7)
!409 = !DILocation(line: 35, column: 24, scope: !405)
!410 = !DILocation(line: 37, column: 20, scope: !405)
!411 = !DILocation(line: 37, column: 5, scope: !405)
!412 = !DILocation(line: 38, column: 1, scope: !405)
!413 = distinct !DISubprogram(name: "printShortLine", scope: !19, file: !19, line: 40, type: !414, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !416}
!416 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!417 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !413, file: !19, line: 40, type: !416)
!418 = !DILocation(line: 40, column: 28, scope: !413)
!419 = !DILocation(line: 42, column: 21, scope: !413)
!420 = !DILocation(line: 42, column: 5, scope: !413)
!421 = !DILocation(line: 43, column: 1, scope: !413)
!422 = distinct !DISubprogram(name: "printFloatLine", scope: !19, file: !19, line: 45, type: !423, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !425}
!425 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!426 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !422, file: !19, line: 45, type: !425)
!427 = !DILocation(line: 45, column: 28, scope: !422)
!428 = !DILocation(line: 47, column: 20, scope: !422)
!429 = !DILocation(line: 47, column: 5, scope: !422)
!430 = !DILocation(line: 48, column: 1, scope: !422)
!431 = distinct !DISubprogram(name: "printLongLine", scope: !19, file: !19, line: 50, type: !432, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !148}
!434 = !DILocalVariable(name: "longNumber", arg: 1, scope: !431, file: !19, line: 50, type: !148)
!435 = !DILocation(line: 50, column: 26, scope: !431)
!436 = !DILocation(line: 52, column: 21, scope: !431)
!437 = !DILocation(line: 52, column: 5, scope: !431)
!438 = !DILocation(line: 53, column: 1, scope: !431)
!439 = distinct !DISubprogram(name: "printLongLongLine", scope: !19, file: !19, line: 55, type: !440, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !442}
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !443, line: 27, baseType: !444)
!443 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !147, line: 44, baseType: !148)
!445 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !439, file: !19, line: 55, type: !442)
!446 = !DILocation(line: 55, column: 33, scope: !439)
!447 = !DILocation(line: 57, column: 29, scope: !439)
!448 = !DILocation(line: 57, column: 5, scope: !439)
!449 = !DILocation(line: 58, column: 1, scope: !439)
!450 = distinct !DISubprogram(name: "printSizeTLine", scope: !19, file: !19, line: 60, type: !451, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !114}
!453 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !450, file: !19, line: 60, type: !114)
!454 = !DILocation(line: 60, column: 29, scope: !450)
!455 = !DILocation(line: 62, column: 21, scope: !450)
!456 = !DILocation(line: 62, column: 5, scope: !450)
!457 = !DILocation(line: 63, column: 1, scope: !450)
!458 = distinct !DISubprogram(name: "printHexCharLine", scope: !19, file: !19, line: 65, type: !459, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !57}
!461 = !DILocalVariable(name: "charHex", arg: 1, scope: !458, file: !19, line: 65, type: !57)
!462 = !DILocation(line: 65, column: 29, scope: !458)
!463 = !DILocation(line: 67, column: 22, scope: !458)
!464 = !DILocation(line: 67, column: 5, scope: !458)
!465 = !DILocation(line: 68, column: 1, scope: !458)
!466 = distinct !DISubprogram(name: "printWcharLine", scope: !19, file: !19, line: 70, type: !467, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !12}
!469 = !DILocalVariable(name: "wideChar", arg: 1, scope: !466, file: !19, line: 70, type: !12)
!470 = !DILocation(line: 70, column: 29, scope: !466)
!471 = !DILocalVariable(name: "s", scope: !466, file: !19, line: 74, type: !472)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 2)
!475 = !DILocation(line: 74, column: 13, scope: !466)
!476 = !DILocation(line: 75, column: 16, scope: !466)
!477 = !DILocation(line: 75, column: 9, scope: !466)
!478 = !DILocation(line: 75, column: 14, scope: !466)
!479 = !DILocation(line: 76, column: 9, scope: !466)
!480 = !DILocation(line: 76, column: 14, scope: !466)
!481 = !DILocation(line: 77, column: 21, scope: !466)
!482 = !DILocation(line: 77, column: 5, scope: !466)
!483 = !DILocation(line: 78, column: 1, scope: !466)
!484 = distinct !DISubprogram(name: "printUnsignedLine", scope: !19, file: !19, line: 80, type: !485, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !23}
!487 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !484, file: !19, line: 80, type: !23)
!488 = !DILocation(line: 80, column: 33, scope: !484)
!489 = !DILocation(line: 82, column: 20, scope: !484)
!490 = !DILocation(line: 82, column: 5, scope: !484)
!491 = !DILocation(line: 83, column: 1, scope: !484)
!492 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !19, file: !19, line: 85, type: !493, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !39}
!495 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !492, file: !19, line: 85, type: !39)
!496 = !DILocation(line: 85, column: 45, scope: !492)
!497 = !DILocation(line: 87, column: 22, scope: !492)
!498 = !DILocation(line: 87, column: 5, scope: !492)
!499 = !DILocation(line: 88, column: 1, scope: !492)
!500 = distinct !DISubprogram(name: "printDoubleLine", scope: !19, file: !19, line: 90, type: !501, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !503}
!503 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!504 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !500, file: !19, line: 90, type: !503)
!505 = !DILocation(line: 90, column: 29, scope: !500)
!506 = !DILocation(line: 92, column: 20, scope: !500)
!507 = !DILocation(line: 92, column: 5, scope: !500)
!508 = !DILocation(line: 93, column: 1, scope: !500)
!509 = distinct !DISubprogram(name: "printStructLine", scope: !19, file: !19, line: 95, type: !510, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !514, line: 100, baseType: !515)
!514 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_342/source_code")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !514, line: 96, size: 64, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !515, file: !514, line: 98, baseType: !7, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !515, file: !514, line: 99, baseType: !7, size: 32, offset: 32)
!519 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !509, file: !19, line: 95, type: !512)
!520 = !DILocation(line: 95, column: 40, scope: !509)
!521 = !DILocation(line: 97, column: 26, scope: !509)
!522 = !DILocation(line: 97, column: 47, scope: !509)
!523 = !DILocation(line: 97, column: 55, scope: !509)
!524 = !DILocation(line: 97, column: 76, scope: !509)
!525 = !DILocation(line: 97, column: 5, scope: !509)
!526 = !DILocation(line: 98, column: 1, scope: !509)
!527 = distinct !DISubprogram(name: "printBytesLine", scope: !19, file: !19, line: 100, type: !528, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !530, !114}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!531 = !DILocalVariable(name: "bytes", arg: 1, scope: !527, file: !19, line: 100, type: !530)
!532 = !DILocation(line: 100, column: 38, scope: !527)
!533 = !DILocalVariable(name: "numBytes", arg: 2, scope: !527, file: !19, line: 100, type: !114)
!534 = !DILocation(line: 100, column: 52, scope: !527)
!535 = !DILocalVariable(name: "i", scope: !527, file: !19, line: 102, type: !114)
!536 = !DILocation(line: 102, column: 12, scope: !527)
!537 = !DILocation(line: 103, column: 12, scope: !538)
!538 = distinct !DILexicalBlock(scope: !527, file: !19, line: 103, column: 5)
!539 = !DILocation(line: 103, column: 10, scope: !538)
!540 = !DILocation(line: 103, column: 17, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !19, line: 103, column: 5)
!542 = !DILocation(line: 103, column: 21, scope: !541)
!543 = !DILocation(line: 103, column: 19, scope: !541)
!544 = !DILocation(line: 103, column: 5, scope: !538)
!545 = !DILocation(line: 105, column: 24, scope: !546)
!546 = distinct !DILexicalBlock(scope: !541, file: !19, line: 104, column: 5)
!547 = !DILocation(line: 105, column: 30, scope: !546)
!548 = !DILocation(line: 105, column: 9, scope: !546)
!549 = !DILocation(line: 106, column: 5, scope: !546)
!550 = !DILocation(line: 103, column: 31, scope: !541)
!551 = !DILocation(line: 103, column: 5, scope: !541)
!552 = distinct !{!552, !544, !553, !97}
!553 = !DILocation(line: 106, column: 5, scope: !538)
!554 = !DILocation(line: 107, column: 5, scope: !527)
!555 = !DILocation(line: 108, column: 1, scope: !527)
!556 = distinct !DISubprogram(name: "decodeHexChars", scope: !19, file: !19, line: 113, type: !557, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!557 = !DISubroutineType(types: !558)
!558 = !{!114, !530, !114, !56}
!559 = !DILocalVariable(name: "bytes", arg: 1, scope: !556, file: !19, line: 113, type: !530)
!560 = !DILocation(line: 113, column: 39, scope: !556)
!561 = !DILocalVariable(name: "numBytes", arg: 2, scope: !556, file: !19, line: 113, type: !114)
!562 = !DILocation(line: 113, column: 53, scope: !556)
!563 = !DILocalVariable(name: "hex", arg: 3, scope: !556, file: !19, line: 113, type: !56)
!564 = !DILocation(line: 113, column: 71, scope: !556)
!565 = !DILocalVariable(name: "numWritten", scope: !556, file: !19, line: 115, type: !114)
!566 = !DILocation(line: 115, column: 12, scope: !556)
!567 = !DILocation(line: 121, column: 5, scope: !556)
!568 = !DILocation(line: 121, column: 12, scope: !556)
!569 = !DILocation(line: 121, column: 25, scope: !556)
!570 = !DILocation(line: 121, column: 23, scope: !556)
!571 = !DILocation(line: 121, column: 34, scope: !556)
!572 = !DILocation(line: 121, column: 37, scope: !556)
!573 = !DILocation(line: 121, column: 67, scope: !556)
!574 = !DILocation(line: 121, column: 70, scope: !556)
!575 = !DILocation(line: 0, scope: !556)
!576 = !DILocalVariable(name: "byte", scope: !577, file: !19, line: 123, type: !7)
!577 = distinct !DILexicalBlock(scope: !556, file: !19, line: 122, column: 5)
!578 = !DILocation(line: 123, column: 13, scope: !577)
!579 = !DILocation(line: 124, column: 17, scope: !577)
!580 = !DILocation(line: 124, column: 25, scope: !577)
!581 = !DILocation(line: 124, column: 23, scope: !577)
!582 = !DILocation(line: 124, column: 9, scope: !577)
!583 = !DILocation(line: 125, column: 45, scope: !577)
!584 = !DILocation(line: 125, column: 29, scope: !577)
!585 = !DILocation(line: 125, column: 9, scope: !577)
!586 = !DILocation(line: 125, column: 15, scope: !577)
!587 = !DILocation(line: 125, column: 27, scope: !577)
!588 = !DILocation(line: 126, column: 9, scope: !577)
!589 = distinct !{!589, !567, !590, !97}
!590 = !DILocation(line: 127, column: 5, scope: !556)
!591 = !DILocation(line: 129, column: 12, scope: !556)
!592 = !DILocation(line: 129, column: 5, scope: !556)
!593 = distinct !DISubprogram(name: "decodeHexWChars", scope: !19, file: !19, line: 135, type: !594, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!594 = !DISubroutineType(types: !595)
!595 = !{!114, !530, !114, !11}
!596 = !DILocalVariable(name: "bytes", arg: 1, scope: !593, file: !19, line: 135, type: !530)
!597 = !DILocation(line: 135, column: 41, scope: !593)
!598 = !DILocalVariable(name: "numBytes", arg: 2, scope: !593, file: !19, line: 135, type: !114)
!599 = !DILocation(line: 135, column: 55, scope: !593)
!600 = !DILocalVariable(name: "hex", arg: 3, scope: !593, file: !19, line: 135, type: !11)
!601 = !DILocation(line: 135, column: 76, scope: !593)
!602 = !DILocalVariable(name: "numWritten", scope: !593, file: !19, line: 137, type: !114)
!603 = !DILocation(line: 137, column: 12, scope: !593)
!604 = !DILocation(line: 143, column: 5, scope: !593)
!605 = !DILocation(line: 143, column: 12, scope: !593)
!606 = !DILocation(line: 143, column: 25, scope: !593)
!607 = !DILocation(line: 143, column: 23, scope: !593)
!608 = !DILocation(line: 143, column: 34, scope: !593)
!609 = !DILocation(line: 143, column: 47, scope: !593)
!610 = !DILocation(line: 143, column: 55, scope: !593)
!611 = !DILocation(line: 143, column: 53, scope: !593)
!612 = !DILocation(line: 143, column: 37, scope: !593)
!613 = !DILocation(line: 143, column: 68, scope: !593)
!614 = !DILocation(line: 143, column: 81, scope: !593)
!615 = !DILocation(line: 143, column: 89, scope: !593)
!616 = !DILocation(line: 143, column: 87, scope: !593)
!617 = !DILocation(line: 143, column: 100, scope: !593)
!618 = !DILocation(line: 143, column: 71, scope: !593)
!619 = !DILocation(line: 0, scope: !593)
!620 = !DILocalVariable(name: "byte", scope: !621, file: !19, line: 145, type: !7)
!621 = distinct !DILexicalBlock(scope: !593, file: !19, line: 144, column: 5)
!622 = !DILocation(line: 145, column: 13, scope: !621)
!623 = !DILocation(line: 146, column: 18, scope: !621)
!624 = !DILocation(line: 146, column: 26, scope: !621)
!625 = !DILocation(line: 146, column: 24, scope: !621)
!626 = !DILocation(line: 146, column: 9, scope: !621)
!627 = !DILocation(line: 147, column: 45, scope: !621)
!628 = !DILocation(line: 147, column: 29, scope: !621)
!629 = !DILocation(line: 147, column: 9, scope: !621)
!630 = !DILocation(line: 147, column: 15, scope: !621)
!631 = !DILocation(line: 147, column: 27, scope: !621)
!632 = !DILocation(line: 148, column: 9, scope: !621)
!633 = distinct !{!633, !604, !634, !97}
!634 = !DILocation(line: 149, column: 5, scope: !593)
!635 = !DILocation(line: 151, column: 12, scope: !593)
!636 = !DILocation(line: 151, column: 5, scope: !593)
!637 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !19, file: !19, line: 156, type: !638, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!638 = !DISubroutineType(types: !639)
!639 = !{!7}
!640 = !DILocation(line: 158, column: 5, scope: !637)
!641 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !19, file: !19, line: 161, type: !638, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!642 = !DILocation(line: 163, column: 5, scope: !641)
!643 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !19, file: !19, line: 166, type: !638, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!644 = !DILocation(line: 168, column: 13, scope: !643)
!645 = !DILocation(line: 168, column: 20, scope: !643)
!646 = !DILocation(line: 168, column: 5, scope: !643)
!647 = distinct !DISubprogram(name: "good1", scope: !19, file: !19, line: 187, type: !63, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!648 = !DILocation(line: 187, column: 16, scope: !647)
!649 = distinct !DISubprogram(name: "good2", scope: !19, file: !19, line: 188, type: !63, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!650 = !DILocation(line: 188, column: 16, scope: !649)
!651 = distinct !DISubprogram(name: "good3", scope: !19, file: !19, line: 189, type: !63, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!652 = !DILocation(line: 189, column: 16, scope: !651)
!653 = distinct !DISubprogram(name: "good4", scope: !19, file: !19, line: 190, type: !63, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!654 = !DILocation(line: 190, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "good5", scope: !19, file: !19, line: 191, type: !63, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!656 = !DILocation(line: 191, column: 16, scope: !655)
!657 = distinct !DISubprogram(name: "good6", scope: !19, file: !19, line: 192, type: !63, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!658 = !DILocation(line: 192, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "good7", scope: !19, file: !19, line: 193, type: !63, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!660 = !DILocation(line: 193, column: 16, scope: !659)
!661 = distinct !DISubprogram(name: "good8", scope: !19, file: !19, line: 194, type: !63, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!662 = !DILocation(line: 194, column: 16, scope: !661)
!663 = distinct !DISubprogram(name: "good9", scope: !19, file: !19, line: 195, type: !63, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!664 = !DILocation(line: 195, column: 16, scope: !663)
!665 = distinct !DISubprogram(name: "bad1", scope: !19, file: !19, line: 198, type: !63, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!666 = !DILocation(line: 198, column: 15, scope: !665)
!667 = distinct !DISubprogram(name: "bad2", scope: !19, file: !19, line: 199, type: !63, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!668 = !DILocation(line: 199, column: 15, scope: !667)
!669 = distinct !DISubprogram(name: "bad3", scope: !19, file: !19, line: 200, type: !63, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!670 = !DILocation(line: 200, column: 15, scope: !669)
!671 = distinct !DISubprogram(name: "bad4", scope: !19, file: !19, line: 201, type: !63, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!672 = !DILocation(line: 201, column: 15, scope: !671)
!673 = distinct !DISubprogram(name: "bad5", scope: !19, file: !19, line: 202, type: !63, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!674 = !DILocation(line: 202, column: 15, scope: !673)
!675 = distinct !DISubprogram(name: "bad6", scope: !19, file: !19, line: 203, type: !63, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!676 = !DILocation(line: 203, column: 15, scope: !675)
!677 = distinct !DISubprogram(name: "bad7", scope: !19, file: !19, line: 204, type: !63, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!678 = !DILocation(line: 204, column: 15, scope: !677)
!679 = distinct !DISubprogram(name: "bad8", scope: !19, file: !19, line: 205, type: !63, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!680 = !DILocation(line: 205, column: 15, scope: !679)
!681 = distinct !DISubprogram(name: "bad9", scope: !19, file: !19, line: 206, type: !63, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!682 = !DILocation(line: 206, column: 15, scope: !681)
